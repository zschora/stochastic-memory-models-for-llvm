"""Shared utilities for the portable research harness.

Standard library only. The validator is deliberately narrower than full JSON
Schema: it enforces the repository-specific provenance, status and review rules
in research/harness/protocol.md.
"""
from __future__ import annotations

import json
import os
import re
import shutil
import subprocess
import sys
from datetime import datetime, timezone
from pathlib import Path

EXPERIMENT_STATUSES = {
    "proposed", "planned", "running", "analyzed", "under-review",
    "supported", "refuted", "inconclusive", "archived",
}
REVIEW_STATUSES = {
    "not-reviewed", "model-assisted-self-review", "independent-review",
    "human-review",
}
EVIDENCE_QUALITIES = {"none", "preliminary", "measured", "validated"}
MATH_STATUSES = {
    "proposed", "working-proof", "numerically-checked", "proved",
    "conjecture", "known-prior-art", "refuted", "archived",
}
PROOF_STATUSES = {
    "proved", "working-proof", "numerically-checked", "conjecture",
    "known-prior-art", "refuted",
}
SIMULATION_STATUSES = {"planned", "completed", "inconclusive"}
TOOL_NAMES = ["clang", "opt", "llc", "llvm-config", "cmake", "ninja", "git"]
REQUIRED_DOCS = [
    "README.md",
    "AGENTS.md",
    "CONTRIBUTING.md",
    "benchmarks/README.md",
    "scripts/README.md",
    "results/README.md",
    "reports/README.md",
    "reports/stage0_report.md",
    "research/README.md",
    "research/origins.md",
    "research/state/index.md",
    "research/state/hypotheses.json",
    "research/state/decisions.md",
    "research/runs/README.md",
    "research/claims/README.md",
    "research/harness/README.md",
    "research/harness/protocol.md",
    "research/harness/upstream-policy.md",
    "research/harness/plans/r1-research-program.md",
    "research/harness/roles/README.md",
    "research/harness/skills/README.md",
    "research/harness/schemas/experiment-run.schema.json",
    "research/harness/schemas/math-claim.schema.json",
    "research/harness/schemas/simulation.schema.json",
    "research/harness/schemas/hypotheses.schema.json",
]
REQUIRED_ROLES = [
    "research-lead", "llvm-engineer", "performance-scientist",
    "applied-mathematician", "critical-reviewer", "literature-researcher",
]
REQUIRED_SKILLS = [
    "llvm-reproduction-audit", "performance-experiment-audit",
    "mathematical-claim-audit", "research-synthesis",
]
RUN_ID_RE = re.compile(r"^[A-Za-z0-9][A-Za-z0-9._-]{2,63}$")
HYPOTHESIS_ID_RE = re.compile(r"^H-[A-Z0-9-]+$")
HEX_RE = re.compile(r"^[0-9a-fA-F]{7,40}$")
SKILL_NAME_RE = re.compile(r"^[a-z0-9][a-z0-9-]{0,62}[a-z0-9]$")


def now_utc() -> str:
    return datetime.now(timezone.utc).replace(microsecond=0).isoformat().replace("+00:00", "Z")


def as_iso(value: str) -> datetime | None:
    try:
        return datetime.fromisoformat(value.replace("Z", "+00:00"))
    except (ValueError, TypeError):
        return None


def load_json(path: Path):
    with open(path, "r", encoding="utf-8") as f:
        return json.load(f)


def write_json(path: Path, data) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    with open(path, "w", encoding="utf-8", newline="\n") as f:
        json.dump(data, f, indent=2, ensure_ascii=True)
        f.write("\n")


def _run(cmd: list[str], cwd: Path | None = None, timeout: int = 20) -> subprocess.CompletedProcess:
    return subprocess.run(cmd, cwd=cwd, capture_output=True, text=True,
                          timeout=timeout, errors="replace")


def git_info(root: Path) -> dict:
    try:
        commit = _run(["git", "-C", str(root), "rev-parse", "HEAD"]).stdout.strip()
        branch = _run(["git", "-C", str(root), "rev-parse", "--abbrev-ref", "HEAD"]).stdout.strip()
        status = _run(["git", "-C", str(root), "status", "--porcelain"]).stdout
        if not commit or not branch:
            raise ValueError("empty git output")
        return {
            "base_commit": commit,
            "branch": branch,
            "working_tree_dirty": bool(status.strip()),
            "available": True,
        }
    except Exception:
        return {
            "base_commit": "0000000",
            "branch": "no-git",
            "working_tree_dirty": True,
            "available": False,
        }


def _candidate_dirs(root: Path) -> list[Path]:
    dirs = []
    for env in ("LLVM_BIN", "CLANG_BIN"):
        value = os.environ.get(env)
        if value:
            dirs.append(Path(value))
    dirs.extend([
        root / ".tools" / "llvm-build" / "bin",
        root / ".tools" / "llvm-install" / "bin",
        root / ".tools" / "ninja",
    ])
    clang_root = root / ".tools" / "clang"
    if clang_root.is_dir():
        dirs.extend(p / "bin" for p in clang_root.iterdir() if p.is_dir())
    return dirs


def find_tool(name: str, root: Path) -> str | None:
    exe = name + (".exe" if os.name == "nt" and not name.endswith(".exe") else "")
    found = shutil.which(name)
    if found:
        return found
    for d in _candidate_dirs(root):
        candidate = d / exe
        if candidate.is_file():
            return str(candidate)
    return None


def tool_version(path: str | None, name: str) -> str:
    if not path:
        return "unavailable"
    if name == "python":
        return sys.version.split()[0]
    try:
        if name == "powershell":
            p = _run([path, "-NoProfile", "-Command",
                      "$PSVersionTable.PSVersion.ToString()"], timeout=15)
        else:
            p = _run([path, "--version"], timeout=15)
        text = [line.strip() for line in (p.stdout or p.stderr).splitlines()
                if line.strip()]
        for line in text:
            if re.search(r"(?i)version", line) and re.search(r"\d", line):
                return line
        return text[0] if text else "unknown"
    except Exception:
        return "unknown"


def discover_tools(root: Path) -> dict:
    tools = {}
    for name in TOOL_NAMES:
        path = find_tool(name, root)
        tools[name] = {
            "path": path or "",
            "available": bool(path),
            "version": tool_version(path, name),
        }
    tools["python"] = {
        "path": sys.executable,
        "available": True,
        "version": platform_version(),
    }
    powershell = find_tool("powershell", root)
    tools["powershell"] = {
        "path": powershell or "",
        "available": bool(powershell),
        "version": tool_version(powershell, "powershell") if powershell else "unavailable",
    }
    return tools


def platform_version() -> str:
    import platform
    return platform.python_version()


def major_minor(version: str) -> tuple[int, int] | None:
    m = re.search(r"(\d+)\.(\d+)", version or "")
    return (int(m.group(1)), int(m.group(2))) if m else None


def toolchain_consistency(tools: dict) -> dict:
    required = ["clang", "opt", "llc"]
    versions = {}
    missing = []
    for name in required:
        info = tools.get(name, {})
        if not info.get("available"):
            missing.append(name)
        versions[name] = info.get("version", "unavailable")
    parsed = {k: major_minor(v) for k, v in versions.items()}
    if missing:
        return {"consistency": "unknown", "missing": missing,
                "versions": versions, "major_minor": {}}
    if any(v is None for v in parsed.values()):
        return {"consistency": "unknown", "missing": [],
                "versions": versions,
                "major_minor": {k: list(v) if v else None for k, v in parsed.items()}}
    unique = set(parsed.values())
    return {
        "consistency": "matched" if len(unique) == 1 else "mixed",
        "missing": [],
        "versions": versions,
        "major_minor": {k: list(v) for k, v in parsed.items()},
    }


def _err(errors: list[dict], code: str, message: str, field: str = "") -> None:
    item = {"code": code, "message": message}
    if field:
        item["field"] = field
    errors.append(item)


def _warn(warnings: list[dict], code: str, message: str, field: str = "") -> None:
    item = {"code": code, "message": message}
    if field:
        item["field"] = field
    warnings.append(item)


def _require(obj, fields: list[str], prefix: str, errors: list[dict]) -> None:
    if not isinstance(obj, dict):
        _err(errors, "E-TYPE", f"{prefix or 'record'} must be an object")
        return
    for field in fields:
        if field not in obj:
            _err(errors, "E-MISSING", f"missing required field: {prefix + field}", prefix + field)


def _nonempty_str(obj, field: str, errors: list[dict], prefix: str = "") -> None:
    value = obj.get(field) if isinstance(obj, dict) else None
    if not isinstance(value, str) or not value.strip():
        _err(errors, "E-VALUE", f"{prefix + field} must be a non-empty string", prefix + field)


def _check_path(root: Path, ref: str, errors: list[dict], field: str) -> None:
    if not isinstance(ref, str) or not ref.strip():
        return
    raw = ref.split("#", 1)[0]
    if not raw:
        return
    if re.match(r"^[a-zA-Z][a-zA-Z0-9+.-]*://", raw):
        return
    target = (root / raw).resolve()
    try:
        target.relative_to(root.resolve())
    except ValueError:
        _err(errors, "E-PATH", f"path escapes repository: {ref}", field)
        return
    if not target.exists():
        _err(errors, "E-PATH", f"referenced path does not exist: {ref}", field)


def _check_refs(root: Path, refs, errors: list[dict], field: str) -> None:
    if refs is None:
        return
    if not isinstance(refs, list):
        _err(errors, "E-TYPE", f"{field} must be a list", field)
        return
    for i, ref in enumerate(refs):
        if not isinstance(ref, str):
            _err(errors, "E-TYPE", f"{field}[{i}] must be a string", field)
        else:
            _check_path(root, ref, errors, f"{field}[{i}]")


def _check_datetime(value: str, field: str, errors: list[dict]) -> None:
    if not isinstance(value, str) or as_iso(value) is None:
        _err(errors, "E-TIME", f"{field} must be an ISO-8601 date-time", field)


def _check_review(review, errors: list[dict]) -> None:
    _require(review, ["status", "reviewer", "notes"], "review.", errors)
    if isinstance(review, dict):
        if review.get("status") not in REVIEW_STATUSES:
            _err(errors, "E-STATUS", f"invalid review.status: {review.get('status')}", "review.status")


def _check_git(git, errors: list[dict], warnings: list[dict]) -> None:
    _require(git, ["base_commit", "branch", "working_tree_dirty"], "git.", errors)
    if not isinstance(git, dict):
        return
    if not HEX_RE.match(str(git.get("base_commit", ""))):
        _err(errors, "E-GIT", "git.base_commit must be a 7-40 character hex SHA", "git.base_commit")
    _nonempty_str(git, "branch", errors, "git.")
    if not isinstance(git.get("working_tree_dirty"), bool):
        _err(errors, "E-GIT", "git.working_tree_dirty must be boolean", "git.working_tree_dirty")
    if git.get("available") is False:
        _warn(warnings, "W-GIT", "record was created outside a Git worktree", "git")


def _check_toolchain(toolchain, errors: list[dict], warnings: list[dict]) -> None:
    _require(toolchain, ["consistency", "llvm_revision", "clang", "opt", "llc",
                         "llvm_config"], "toolchain.", errors)
    if not isinstance(toolchain, dict):
        return
    consistency = toolchain.get("consistency")
    if consistency not in {"matched", "mixed", "unknown"}:
        _err(errors, "E-TOOLCHAIN", "toolchain.consistency must be matched, mixed or unknown",
             "toolchain.consistency")
    for name in ("clang", "opt", "llc", "llvm_config"):
        tool = toolchain.get(name)
        _require(tool, ["version", "path"], f"toolchain.{name}.", errors)
    if consistency == "mixed":
        if not str(toolchain.get("compatibility_notes", "")).strip():
            _err(errors, "E-TOOLCHAIN", "mixed toolchain requires compatibility_notes",
                 "toolchain.compatibility_notes")
        if toolchain.get("baseline_caveat") is not True:
            _err(errors, "E-TOOLCHAIN", "mixed toolchain requires baseline_caveat=true",
                 "toolchain.baseline_caveat")
    elif consistency == "unknown":
        _warn(warnings, "W-TOOLCHAIN", "toolchain consistency is unknown",
              "toolchain.consistency")
    if consistency == "matched":
        versions = []
        for name in ("clang", "opt", "llc"):
            tool = toolchain.get(name, {})
            mm = major_minor(str(tool.get("version", "")))
            if mm is None:
                _err(errors, "E-TOOLCHAIN",
                     f"cannot parse {name} version for matched toolchain: {tool.get('version')}",
                     f"toolchain.{name}.version")
            else:
                versions.append(mm)
        if len(versions) == 3 and len(set(versions)) != 1:
            _err(errors, "E-TOOLCHAIN",
                 "matched toolchain has inconsistent clang/opt/llc major.minor versions",
                 "toolchain.consistency")


def _check_artifacts(root: Path, artifacts, errors: list[dict]) -> None:
    _require(artifacts, ["raw_timings", "ir", "assembly", "remarks",
                         "analysis_script", "analysis_script_revision"],
             "artifacts.", errors)
    if not isinstance(artifacts, dict):
        return
    for field in ("raw_timings", "ir", "assembly", "remarks"):
        _check_refs(root, artifacts.get(field), errors, f"artifacts.{field}")
    script = artifacts.get("analysis_script", "")
    if isinstance(script, str) and script.strip():
        _check_path(root, script, errors, "artifacts.analysis_script")


def validate_experiment(data: dict, root: Path, record_path: Path,
                        hypothesis_ids: set[str] | None = None) -> tuple[list[dict], list[dict]]:
    errors: list[dict] = []
    warnings: list[dict] = []
    _require(data, [
        "schema_version", "record_type", "run_id", "hypothesis_id", "title",
        "status", "created_utc", "git", "toolchain", "build", "host", "pipeline",
        "case", "procedure", "artifacts", "commands", "results", "review",
        "evidence", "next_action",
    ], "", errors)
    if data.get("schema_version") != "1.0":
        _err(errors, "E-SCHEMA", "schema_version must be 1.0", "schema_version")
    if data.get("record_type") != "experiment":
        _err(errors, "E-TYPE", "record_type must be experiment", "record_type")
    run_id = str(data.get("run_id", ""))
    if not RUN_ID_RE.match(run_id):
        _err(errors, "E-ID", "run_id has an invalid format", "run_id")
    if record_path.parent.name != run_id:
        _err(errors, "E-ID", "run directory name must equal run_id", "run_id")
    if not HYPOTHESIS_ID_RE.match(str(data.get("hypothesis_id", ""))):
        _err(errors, "E-ID", "hypothesis_id has an invalid format", "hypothesis_id")
    if hypothesis_ids is not None and data.get("hypothesis_id") not in hypothesis_ids:
        _err(errors, "E-HYP", f"unknown hypothesis_id: {data.get('hypothesis_id')}",
             "hypothesis_id")
    _nonempty_str(data, "title", errors)
    if data.get("status") not in EXPERIMENT_STATUSES:
        _err(errors, "E-STATUS", f"invalid experiment status: {data.get('status')}", "status")
    _check_datetime(data.get("created_utc", ""), "created_utc", errors)
    _check_git(data.get("git"), errors, warnings)
    _check_toolchain(data.get("toolchain"), errors, warnings)
    _check_review(data.get("review"), errors)
    _check_artifacts(root, data.get("artifacts"), errors)

    build = data.get("build", {})
    _require(build, ["configuration", "cmake_args", "compiler_flags", "link_flags"],
             "build.", errors)
    _require(data.get("host"), ["os", "cpu", "logical_cpus", "caches", "python"],
             "host.", errors)
    pipeline = data.get("pipeline", {})
    _require(pipeline, ["frontend_ir", "frontend_flags", "opt_passes", "llc_args"],
             "pipeline.", errors)
    if isinstance(pipeline, dict):
        _check_path(root, pipeline.get("frontend_ir", ""), errors, "pipeline.frontend_ir")
    case = data.get("case", {})
    _require(case, ["name", "source", "input_sizes", "seeds"], "case.", errors)
    if isinstance(case, dict):
        _check_path(root, case.get("source", ""), errors, "case.source")
    procedure = data.get("procedure", {})
    _require(procedure, ["configurations", "repetitions", "trials_per_process",
                         "order", "timing_unit", "timing_method",
                         "correctness_oracle"], "procedure.", errors)
    if isinstance(procedure, dict):
        for field in ("repetitions", "trials_per_process"):
            value = procedure.get(field)
            if not isinstance(value, int) or value < 0:
                _err(errors, "E-VALUE", f"procedure.{field} must be a non-negative integer",
                     f"procedure.{field}")
            if data.get("status") != "planned" and value == 0:
                _err(errors, "E-VALUE", f"procedure.{field} must be >0 after planned",
                     f"procedure.{field}")
    commands = data.get("commands")
    if not isinstance(commands, list) or any(not isinstance(x, str) for x in commands):
        _err(errors, "E-TYPE", "commands must be a list of strings", "commands")
    results = data.get("results", {})
    _require(results, ["summary", "limitations"], "results.", errors)
    if isinstance(results, dict) and not isinstance(results.get("limitations"), list):
        _err(errors, "E-TYPE", "results.limitations must be a list", "results.limitations")
    evidence = data.get("evidence", {})
    _require(evidence, ["quality", "notes"], "evidence.", errors)
    if isinstance(evidence, dict) and evidence.get("quality") not in EVIDENCE_QUALITIES:
        _err(errors, "E-EVIDENCE", "invalid evidence.quality", "evidence.quality")
    _nonempty_str(data, "next_action", errors, "")

    status = data.get("status")
    artifacts = data.get("artifacts", {}) if isinstance(data.get("artifacts"), dict) else {}
    raw = artifacts.get("raw_timings", []) if isinstance(artifacts, dict) else []
    if status in {"analyzed", "under-review", "supported", "refuted"}:
        if not commands:
            _err(errors, "E-EVIDENCE", "analyzed/under-review/supported/refuted run requires commands", "commands")
        if not isinstance(raw, list) or not raw:
            _err(errors, "E-EVIDENCE", "analyzed/under-review/supported/refuted run requires raw_timings", "artifacts.raw_timings")
        if not str(data.get("toolchain", {}).get("llvm_revision", "")).strip():
            _err(errors, "E-EVIDENCE", "analyzed run requires toolchain.llvm_revision",
                 "toolchain.llvm_revision")
        if not str(case.get("source", "")).strip():
            _err(errors, "E-EVIDENCE", "analyzed run requires case.source", "case.source")
        if not str(pipeline.get("frontend_ir", "")).strip():
            _err(errors, "E-EVIDENCE", "analyzed run requires pipeline.frontend_ir",
                 "pipeline.frontend_ir")
        if str(build.get("configuration", "")).strip() in {"", "not configured"}:
            _err(errors, "E-EVIDENCE", "analyzed run requires a real build.configuration",
                 "build.configuration")
        if artifacts.get("analysis_script") and not str(
                artifacts.get("analysis_script_revision", "")).strip():
            _err(errors, "E-EVIDENCE",
                 "analysis_script_revision is required when analysis_script is used",
                 "artifacts.analysis_script_revision")
    if status == "supported":
        review = data.get("review", {})
        if isinstance(review, dict) and review.get("status") not in {"independent-review", "human-review"}:
            _err(errors, "E-GATE", "supported requires independent-review or human-review", "review.status")
        if evidence.get("quality") != "validated":
            _err(errors, "E-GATE", "supported requires evidence.quality=validated", "evidence.quality")
        if isinstance(results, dict) and str(results.get("summary", "")).strip().lower() in {"", "not run"}:
            _err(errors, "E-GATE", "supported requires a non-placeholder results.summary", "results.summary")
    if isinstance(evidence, dict) and evidence.get("quality") == "validated" and status not in {"under-review", "supported"}:
        _warn(warnings, "W-EVIDENCE", "validated evidence on a run not yet under review", "evidence.quality")
    return errors, warnings


def validate_math(data: dict, root: Path, record_path: Path) -> tuple[list[dict], list[dict]]:
    errors: list[dict] = []
    warnings: list[dict] = []
    _require(data, [
        "schema_version", "record_type", "claim_id", "title", "status",
        "created_utc", "model_assumptions", "claim", "proof_status",
        "proof_notes", "numerical_checks", "counterexamples", "prior_art",
        "unresolved_obligations", "review", "limitations", "next_action",
    ], "", errors)
    if data.get("schema_version") != "1.0":
        _err(errors, "E-SCHEMA", "schema_version must be 1.0", "schema_version")
    if data.get("record_type") != "math-claim":
        _err(errors, "E-TYPE", "record_type must be math-claim", "record_type")
    claim_id = str(data.get("claim_id", ""))
    if not RUN_ID_RE.match(claim_id):
        _err(errors, "E-ID", "claim_id has an invalid format", "claim_id")
    if record_path.parent.name != claim_id:
        _err(errors, "E-ID", "claim directory name must equal claim_id", "claim_id")
    if data.get("status") not in MATH_STATUSES:
        _err(errors, "E-STATUS", f"invalid math status: {data.get('status')}", "status")
    if data.get("proof_status") not in PROOF_STATUSES:
        _err(errors, "E-STATUS", f"invalid proof_status: {data.get('proof_status')}",
             "proof_status")
    _check_datetime(data.get("created_utc", ""), "created_utc", errors)
    _check_review(data.get("review"), errors)
    _check_refs(root, data.get("artifacts"), errors, "artifacts")
    for field in ("model_assumptions", "numerical_checks", "counterexamples",
                  "prior_art", "unresolved_obligations", "limitations"):
        if not isinstance(data.get(field), list):
            _err(errors, "E-TYPE", f"{field} must be a list", field)
    for field in ("claim", "proof_notes", "next_action"):
        _nonempty_str(data, field, errors)

    status = data.get("status")
    proof = data.get("proof_status")
    checks = data.get("numerical_checks") or []
    counters = data.get("counterexamples") or []
    prior = data.get("prior_art") or []
    obligations = data.get("unresolved_obligations") or []
    review = data.get("review", {}) if isinstance(data.get("review"), dict) else {}
    if status == "proved":
        if proof != "proved":
            _err(errors, "E-GATE", "status proved requires proof_status proved", "proof_status")
        if review.get("status") not in {"independent-review", "human-review"}:
            _err(errors, "E-GATE", "proved requires independent-review or human-review", "review.status")
        if obligations:
            _err(errors, "E-GATE", "proved cannot have unresolved obligations", "unresolved_obligations")
    if status == "numerically-checked":
        if proof != "numerically-checked" or not checks:
            _err(errors, "E-GATE", "numerically-checked requires proof_status and numerical_checks",
                 "status")
    if status == "known-prior-art" and not prior:
        _err(errors, "E-GATE", "known-prior-art requires prior_art", "prior_art")
    if status == "refuted" and not counters:
        _err(errors, "E-GATE", "refuted requires counterexamples", "counterexamples")
    if status == "working-proof" and proof != "working-proof":
        _err(errors, "E-GATE", "working-proof status requires proof_status working-proof",
             "proof_status")
    return errors, warnings


def validate_simulation(data: dict, root: Path, record_path: Path) -> tuple[list[dict], list[dict]]:
    errors: list[dict] = []
    warnings: list[dict] = []
    _require(data, [
        "schema_version", "record_type", "simulation_id", "title", "status",
        "created_utc", "git", "roles", "question", "protocol_steps", "review",
        "outcome", "limitations", "artifacts", "next_action",
    ], "", errors)
    if data.get("schema_version") != "1.0":
        _err(errors, "E-SCHEMA", "schema_version must be 1.0", "schema_version")
    if data.get("record_type") != "simulation":
        _err(errors, "E-TYPE", "record_type must be simulation", "record_type")
    simulation_id = str(data.get("simulation_id", ""))
    if not RUN_ID_RE.match(simulation_id):
        _err(errors, "E-ID", "simulation_id has an invalid format", "simulation_id")
    if record_path.parent.name != simulation_id:
        _err(errors, "E-ID", "simulation directory name must equal simulation_id", "simulation_id")
    if data.get("status") not in SIMULATION_STATUSES:
        _err(errors, "E-STATUS", f"invalid simulation status: {data.get('status')}", "status")
    _check_datetime(data.get("created_utc", ""), "created_utc", errors)
    _check_git(data.get("git"), errors, warnings)
    _check_review(data.get("review"), errors)
    _check_refs(root, data.get("artifacts"), errors, "artifacts")
    for field in ("roles", "protocol_steps", "limitations"):
        if not isinstance(data.get(field), list) or not data.get(field):
            _err(errors, "E-VALUE", f"{field} must be a non-empty list", field)
    for field in ("question", "outcome", "next_action"):
        _nonempty_str(data, field, errors)
    if data.get("status") == "completed":
        review = data.get("review", {}) if isinstance(data.get("review"), dict) else {}
        if review.get("status") == "not-reviewed":
            _err(errors, "E-GATE", "completed simulation requires a review status", "review.status")
    return errors, warnings


def load_hypothesis_ids(root: Path) -> set[str]:
    path = root / "research" / "state" / "hypotheses.json"
    try:
        data = load_json(path)
        return {str(h.get("id")) for h in data.get("hypotheses", []) if isinstance(h, dict)}
    except Exception:
        return set()


def record_kind(path: Path) -> str:
    name = path.name
    if name == "claim.json":
        return "math-claim"
    if name == "manifest.json":
        return "unknown"
    return "unknown"


def find_record_file(path: Path) -> Path:
    if path.is_dir():
        for name in ("manifest.json", "claim.json"):
            candidate = path / name
            if candidate.is_file():
                return candidate
        raise FileNotFoundError(f"no manifest.json or claim.json under {path}")
    return path


def validate_record(path: Path, root: Path, hypothesis_ids: set[str] | None = None) -> tuple[list[dict], list[dict], dict]:
    file = find_record_file(path)
    data = load_json(file)
    kind = data.get("record_type")
    if kind == "experiment":
        errors, warnings = validate_experiment(data, root, file, hypothesis_ids)
    elif kind == "math-claim":
        errors, warnings = validate_math(data, root, file)
    elif kind == "simulation":
        errors, warnings = validate_simulation(data, root, file)
    else:
        errors = [{"code": "E-TYPE", "message": f"unknown record_type: {kind}"}]
        warnings = []
    return errors, warnings, data


def record_identifier(data: dict) -> str:
    return str(data.get("run_id") or data.get("claim_id") or data.get("simulation_id") or "")


def iter_records(root: Path) -> list[Path]:
    paths = []
    for base in (root / "research" / "runs", root / "research" / "claims"):
        if not base.is_dir():
            continue
        for child in sorted(base.iterdir()):
            if child.is_dir():
                for name in ("manifest.json", "claim.json"):
                    if (child / name).is_file():
                        paths.append(child / name)
                        break
    return paths


def check_duplicate_ids(root: Path) -> list[dict]:
    seen = {}
    errors = []
    for path in iter_records(root):
        try:
            data = load_json(path)
        except Exception:
            continue
        ident = record_identifier(data)
        if ident:
            seen.setdefault(ident, []).append(path)
    for ident, paths in seen.items():
        if len(paths) > 1:
            for path in paths:
                errors.append({
                    "code": "E-DUP",
                    "message": f"duplicate record id {ident}",
                    "field": str(path.relative_to(root)),
                })
    return errors


def format_issue(issue: dict) -> str:
    where = f" [{issue['field']}]" if issue.get("field") else ""
    return f"{issue['code']}: {issue['message']}{where}"
