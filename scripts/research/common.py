"""Shared utilities for the portable research harness.

Standard library only. Records are checked against an explicit JSON Schema
subset (``schema_lite``) plus repository-specific provenance, status and review
rules from research/harness/protocol.md. Structural checks cannot certify that
a proof is true or that a measurement is scientifically valid; they only prove
that the required evidence is present, linked and internally consistent.
"""
from __future__ import annotations

import hashlib
import json
import os
import re
import shutil
import subprocess
import sys
from datetime import datetime, timezone
from pathlib import Path

import schema_lite

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
TOOLCHAIN_CONSISTENCIES = {"verified", "matched", "mixed", "unverified"}
REVIEW_TYPES = {"unknown", "same-model", "separate-agent", "human"}
REVIEW_DECISIONS = {"not-reviewed", "accept", "accept-with-limits",
                    "needs-work", "reject"}
TOOLCHAIN_REQUIRED_TOOLS = ("clang", "opt", "llc", "llvm-config")
EXPERIMENT_TRANSITIONS = {
    "proposed": {"planned", "archived"},
    "planned": {"running", "archived"},
    "running": {"analyzed", "inconclusive", "archived"},
    "analyzed": {"under-review", "inconclusive", "archived"},
    "under-review": {"supported", "refuted", "inconclusive", "analyzed", "archived"},
    "supported": {"under-review", "archived"},
    "refuted": {"under-review", "archived"},
    "inconclusive": {"planned", "running", "under-review", "archived"},
    "archived": set(),
}
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
    "research/harness/schemas/toolchain.schema.json",
    "research/harness/schemas/predictor-feature.schema.json",
    "research/harness/schemas/r1-measurement.schema.json",
    "research/harness/toolchains/README.md",
    "research/harness/features/README.md",
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


def sha256_file(path: Path) -> str:
    digest = hashlib.sha256()
    with open(path, "rb") as f:
        for chunk in iter(lambda: f.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def repo_path(root: Path, value: str) -> Path:
    path = Path(value)
    return path if path.is_absolute() else root / path


def rel_to(root: Path, path: Path) -> str:
    try:
        return str(path.resolve().relative_to(root.resolve())).replace("\\", "/")
    except ValueError:
        return str(path.resolve())


def load_schema(root: Path, name: str) -> dict:
    candidate = root / "research" / "harness" / "schemas" / f"{name}.schema.json"
    if not candidate.is_file():
        candidate = (Path(__file__).resolve().parents[2] / "research" / "harness"
                     / "schemas" / f"{name}.schema.json")
    return load_json(candidate)


def validate_schema_data(data, root: Path, schema_name: str) -> list[dict]:
    schema = load_schema(root, schema_name)
    issues = schema_lite.check_schema_supported(schema)
    if issues:
        return issues
    return schema_lite.validate_instance(data, schema)


def parse_cmake_cache(path: Path) -> dict[str, str]:
    result: dict[str, str] = {}
    if not path.is_file():
        return result
    for line in path.read_text(encoding="utf-8", errors="replace").splitlines():
        if not line or line.startswith(("//", "#")) or ":" not in line:
            continue
        key, rest = line.split(":", 1)
        if "=" not in rest:
            continue
        _, value = rest.split("=", 1)
        result[key] = value
    return result


def _manifest_major_minor(manifest: dict) -> tuple[int, int] | None:
    for key in ("LLVM_VERSION_MAJOR", "LLVM_VERSION_MINOR"):
        if key not in manifest:
            return None
    try:
        return int(manifest["LLVM_VERSION_MAJOR"]), int(manifest["LLVM_VERSION_MINOR"])
    except ValueError:
        return None



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


def discover_tools(root: Path, probe: bool = True) -> dict:
    tools = {}
    for name in TOOL_NAMES:
        path = find_tool(name, root)
        tools[name] = {
            "path": path or "",
            "available": bool(path),
            "version": (tool_version(path, name) if probe
                        else ("not-probed" if path else "unavailable")),
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
        "version": (tool_version(powershell, "powershell")
                    if powershell and probe else
                    ("not-probed" if powershell else "unavailable")),
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
        return {"consistency": "unverified", "missing": missing,
                "versions": versions, "major_minor": {}}
    if any(v is None for v in parsed.values()):
        return {"consistency": "unverified", "missing": [],
                "versions": versions,
                "major_minor": {k: list(v) if v else None for k, v in parsed.items()}}
    unique = set(parsed.values())
    return {
        "consistency": "matched" if len(unique) == 1 else "mixed",
        "missing": [],
        "versions": versions,
        "major_minor": {k: list(v) for k, v in parsed.items()},
        "note": "version numbers only; matched is not provenance verification",
    }


def verify_toolchain_manifest(manifest_path: Path, root: Path,
                              *, require_local: bool = True) -> tuple[list[dict], list[dict], dict]:
    """Verify a toolchain manifest and bind it to local binaries.

    Structural verification only: hashes, recorded version strings, source Git
    revision, CMake cache and explicit paths.  It cannot prove how an external
    binary was produced; provenance fields and limitations must say so.
    """
    errors: list[dict] = []
    warnings: list[dict] = []
    path = manifest_path if manifest_path.is_absolute() else root / manifest_path
    if not path.is_file():
        _err(errors, "E-PROVENANCE", f"toolchain manifest not found: {manifest_path}",
             "toolchain.manifest_path")
        return errors, warnings, {}
    try:
        manifest = load_json(path)
    except Exception as exc:
        _err(errors, "E-PROVENANCE", f"cannot read toolchain manifest: {exc}",
             "toolchain.manifest_path")
        return errors, warnings, {}
    schema_errors = validate_schema_data(manifest, root, "toolchain")
    if schema_errors:
        return schema_errors, warnings, manifest

    consistency = manifest.get("consistency")
    if consistency != "verified":
        _err(errors, "E-PROVENANCE",
             f"toolchain consistency is {consistency!r}, not 'verified'",
             "toolchain.consistency")

    revision = str(manifest.get("llvm_revision", ""))
    if not re.fullmatch(r"[0-9a-fA-F]{40}", revision):
        _err(errors, "E-PROVENANCE", "llvm_revision must be a full 40-character SHA",
             "llvm_revision")

    source = manifest.get("source", {})
    source_dir = repo_path(root, str(source.get("dir", "")))
    if source.get("dirty") is not False:
        _err(errors, "E-PROVENANCE", "source worktree must be recorded as clean",
             "source.dirty")
    if str(source.get("commit", "")).lower() != revision.lower():
        _err(errors, "E-PROVENANCE", "source.commit differs from llvm_revision",
             "source.commit")
    if source_dir.is_dir() and (source_dir / ".git").exists():
        head = _run(["git", "-C", str(source_dir), "rev-parse", "HEAD"]).stdout.strip()
        if head.lower() != revision.lower():
            _err(errors, "E-PROVENANCE",
                 f"source Git HEAD {head or '(unknown)'} differs from manifest revision",
                 "source.commit")
        dirty = _run(["git", "-C", str(source_dir), "status", "--porcelain"]).stdout
        if dirty.strip():
            _err(errors, "E-PROVENANCE", "source Git worktree is dirty", "source.dirty")
    elif require_local:
        _err(errors, "E-PROVENANCE",
             f"source directory is missing or not a Git checkout: {source.get('dir')}",
             "source.dir")

    build = manifest.get("build", {})
    build_dir = repo_path(root, str(build.get("dir", "")))
    cache_path = build_dir / "CMakeCache.txt"
    if cache_path.is_file():
        cache = parse_cmake_cache(cache_path)
        if cache.get("CMAKE_BUILD_TYPE") and cache["CMAKE_BUILD_TYPE"] != build.get("configuration"):
            _err(errors, "E-PROVENANCE",
                 "build.configuration differs from CMakeCache CMAKE_BUILD_TYPE",
                 "build.configuration")
        assertions = cache.get("LLVM_ENABLE_ASSERTIONS")
        if assertions is not None and (assertions.upper() == "ON") != bool(build.get("assertions")):
            _err(errors, "E-PROVENANCE",
                 "build.assertions differs from CMakeCache LLVM_ENABLE_ASSERTIONS",
                 "build.assertions")
        targets = cache.get("LLVM_TARGETS_TO_BUILD")
        if targets and targets.split(";") != list(build.get("targets", [])):
            _err(errors, "E-PROVENANCE",
                 "build.targets differs from CMakeCache LLVM_TARGETS_TO_BUILD",
                 "build.targets")
        if build.get("cmake_cache_sha256") and sha256_file(cache_path) != build["cmake_cache_sha256"]:
            _err(errors, "E-PROVENANCE",
                 "CMakeCache.txt hash differs from the recorded build provenance",
                 "build.cmake_cache_sha256")
    elif require_local:
        _err(errors, "E-PROVENANCE",
             f"build directory has no CMakeCache.txt: {build.get('dir')}", "build.dir")

    tool_versions: dict[str, tuple[int, int]] = {}
    for name in TOOLCHAIN_REQUIRED_TOOLS:
        info = manifest.get("tools", {}).get(name, {})
        tool_path = repo_path(root, str(info.get("path", "")))
        if not tool_path.is_file():
            _err(errors, "E-PROVENANCE", f"{name} not found: {info.get('path')}",
                 f"tools.{name}.path")
            continue
        if sha256_file(tool_path) != str(info.get("sha256", "")).lower():
            _err(errors, "E-PROVENANCE",
                 f"{name} sha256 does not match the recorded binary",
                 f"tools.{name}.sha256")
        if str(info.get("source_revision", "")).lower() != revision.lower():
            _err(errors, "E-PROVENANCE",
                 f"{name} source_revision differs from llvm_revision",
                 f"tools.{name}.source_revision")
        mm = major_minor(str(info.get("version", "")))
        if mm is None:
            _err(errors, "E-PROVENANCE", f"{name} version is not parseable",
                 f"tools.{name}.version")
        else:
            tool_versions[name] = mm
        version_output = str(info.get("version_output", ""))
        if re.search(r"\b[0-9a-f]{40}\b", version_output):
            embedded = re.search(r"\b([0-9a-f]{40})\b", version_output).group(1)
            if embedded.lower() != revision.lower():
                _err(errors, "E-PROVENANCE",
                     f"{name} version output embeds revision {embedded}, not {revision}",
                     f"tools.{name}.version_output")
        resolved = shutil.which(name)
        if resolved:
            resolved_path = Path(resolved).resolve()
            if resolved_path != tool_path.resolve():
                if sha256_file(resolved_path) != sha256_file(tool_path):
                    if manifest.get("verification", {}).get("reject_path_shadowing", True):
                        _err(errors, "E-PATH-CONFLICT",
                             f"PATH resolves {name} to a different binary: {resolved}",
                             f"tools.{name}.path")
                    else:
                        _warn(warnings, "W-PATH-SHADOW",
                              f"PATH resolves {name} to a different binary: {resolved}",
                              f"tools.{name}.path")

    if len(tool_versions) == len(TOOLCHAIN_REQUIRED_TOOLS) and len(set(tool_versions.values())) != 1:
        _err(errors, "E-PROVENANCE",
             "tool major.minor versions disagree inside a verified toolchain",
             "tools")
    return errors, warnings, manifest



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


def _check_review(review, errors: list[dict]) -> None:
    _require(review, ["status", "reviewer", "reviewer_type", "decision",
                      "artifact", "notes"], "review.", errors)
    if not isinstance(review, dict):
        return
    status = review.get("status")
    if status not in REVIEW_STATUSES:
        _err(errors, "E-STATUS", f"invalid review.status: {status}", "review.status")
    if review.get("reviewer_type") not in REVIEW_TYPES:
        _err(errors, "E-REVIEW", "invalid review.reviewer_type",
             "review.reviewer_type")
    if review.get("decision") not in REVIEW_DECISIONS:
        _err(errors, "E-REVIEW", "invalid review.decision", "review.decision")
    if status in {"independent-review", "human-review"}:
        if not str(review.get("reviewer", "")).strip():
            _err(errors, "E-REVIEW", "independent/human review requires a reviewer identity",
                 "review.reviewer")
        if review.get("reviewer_type") not in {"separate-agent", "human"}:
            _err(errors, "E-REVIEW",
                 "independent/human review requires reviewer_type separate-agent or human",
                 "review.reviewer_type")
        if review.get("decision") in {None, "", "not-reviewed"}:
            _err(errors, "E-REVIEW",
                 "independent/human review requires a recorded decision",
                 "review.decision")
        if status == "human-review" and review.get("reviewer_type") != "human":
            _err(errors, "E-REVIEW", "human-review requires reviewer_type=human",
                 "review.reviewer_type")
    if status == "model-assisted-self-review":
        if review.get("reviewer_type") not in {"same-model", "unknown"}:
            _err(errors, "E-REVIEW",
                 "model-assisted-self-review must be marked same-model or unknown",
                 "review.reviewer_type")
    if review.get("reviewed_utc") and as_iso(str(review["reviewed_utc"])) is None:
        _err(errors, "E-TIME", "review.reviewed_utc must be an ISO-8601 date-time",
             "review.reviewed_utc")


def _check_status_history(history, current: str, errors: list[dict],
                          transitions: dict[str, set[str]] | None = None) -> None:
    graph = transitions or EXPERIMENT_TRANSITIONS
    if not isinstance(history, list) or not history:
        _err(errors, "E-TRANSITION", "status_history must be a non-empty list",
             "status_history")
        return
    previous = None
    for i, entry in enumerate(history):
        field = f"status_history[{i}]"
        if not isinstance(entry, dict):
            _err(errors, "E-TYPE", "status_history entry must be an object", field)
            return
        status = entry.get("status")
        if status not in graph:
            _err(errors, "E-STATUS", f"invalid history status: {status}", f"{field}.status")
            return
        _check_datetime(entry.get("utc", ""), f"{field}.utc", errors)
        if not str(entry.get("reason", "")).strip():
            _err(errors, "E-VALUE", "status change requires a reason", f"{field}.reason")
        if previous is not None and status not in graph[previous]:
            _err(errors, "E-TRANSITION",
                 f"invalid status transition {previous} -> {status}", f"{field}.status")
        previous = status
    if str(history[-1].get("status")) != str(current):
        _err(errors, "E-TRANSITION",
             f"last status_history entry ({history[-1].get('status')}) "
             f"does not equal record status ({current})", "status_history")


def _check_toolchain(toolchain, root: Path, errors: list[dict],
                     warnings: list[dict]) -> None:
    _require(toolchain, ["consistency", "llvm_revision", "manifest_path", "clang",
                         "opt", "llc", "llvm_config"], "toolchain.", errors)
    if not isinstance(toolchain, dict):
        return
    consistency = toolchain.get("consistency")
    if consistency not in TOOLCHAIN_CONSISTENCIES:
        _err(errors, "E-TOOLCHAIN",
             "toolchain.consistency must be verified, matched, mixed or unverified",
             "toolchain.consistency")
    for name in ("clang", "opt", "llc", "llvm_config"):
        tool = toolchain.get(name)
        _require(tool, ["version", "path"], f"toolchain.{name}.", errors)
    revision = str(toolchain.get("llvm_revision", ""))
    if revision and not re.fullmatch(r"[0-9a-fA-F]{40}", revision):
        _err(errors, "E-TOOLCHAIN", "toolchain.llvm_revision must be a full 40-character SHA",
             "toolchain.llvm_revision")
    manifest_path = str(toolchain.get("manifest_path", ""))
    if consistency == "verified":
        if not manifest_path.strip():
            _err(errors, "E-TOOLCHAIN",
                 "verified toolchain requires toolchain.manifest_path",
                 "toolchain.manifest_path")
        else:
            _check_path(root, manifest_path, errors, "toolchain.manifest_path")
            manifest_file = repo_path(root, manifest_path)
            if manifest_file.is_file():
                try:
                    manifest = load_json(manifest_file)
                except Exception as exc:
                    _err(errors, "E-TOOLCHAIN", f"cannot read toolchain manifest: {exc}",
                         "toolchain.manifest_path")
                    manifest = {}
                schema_errors = validate_schema_data(manifest, root, "toolchain")
                errors.extend(schema_errors)
                if manifest.get("consistency") != "verified":
                    _err(errors, "E-TOOLCHAIN",
                         "toolchain.manifest_path does not record verified provenance",
                         "toolchain.manifest_path")
                if str(manifest.get("llvm_revision", "")).lower() != revision.lower():
                    _err(errors, "E-TOOLCHAIN",
                         "run llvm_revision differs from the toolchain manifest",
                         "toolchain.llvm_revision")
                for name in TOOLCHAIN_REQUIRED_TOOLS:
                    recorded = manifest.get("tools", {}).get(name, {})
                    run_tool = toolchain.get(name.replace("-", "_"), {})
                    if str(recorded.get("source_revision", "")).lower() != revision.lower():
                        _err(errors, "E-TOOLCHAIN",
                             f"manifest {name} revision differs from run llvm_revision",
                             f"toolchain.{name}.revision")
                    if run_tool and recorded.get("path") and run_tool.get("path") and \
                            str(recorded["path"]).replace("\\", "/") != str(run_tool["path"]).replace("\\", "/"):
                        _err(errors, "E-TOOLCHAIN",
                             f"run {name} path differs from the toolchain manifest",
                             f"toolchain.{name}.path")
    elif consistency == "matched":
        _warn(warnings, "W-TOOLCHAIN",
              "matched means equal version numbers only; it is not provenance verification",
              "toolchain.consistency")
    elif consistency == "mixed":
        if not str(toolchain.get("compatibility_notes", "")).strip():
            _err(errors, "E-TOOLCHAIN", "mixed toolchain requires compatibility_notes",
                 "toolchain.compatibility_notes")
        if toolchain.get("baseline_caveat") is not True:
            _err(errors, "E-TOOLCHAIN", "mixed toolchain requires baseline_caveat=true",
                 "toolchain.baseline_caveat")
    elif consistency == "unverified":
        _warn(warnings, "W-TOOLCHAIN", "toolchain provenance is unverified",
              "toolchain.consistency")
    if consistency in {"verified", "matched"}:
        versions = []
        for name in ("clang", "opt", "llc"):
            tool = toolchain.get(name, {})
            mm = major_minor(str(tool.get("version", "")))
            if mm is None:
                _err(errors, "E-TOOLCHAIN",
                     f"cannot parse {name} version: {tool.get('version')}",
                     f"toolchain.{name}.version")
            else:
                versions.append(mm)
        if len(versions) == 3 and len(set(versions)) != 1:
            _err(errors, "E-TOOLCHAIN",
                 "clang/opt/llc major.minor versions disagree",
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
    _check_toolchain(data.get("toolchain"), root, errors, warnings)
    _check_review(data.get("review"), errors)
    _check_status_history(data.get("status_history"), data.get("status", ""), errors)
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
    _require(evidence, ["quality", "notes", "validation_artifacts"], "evidence.", errors)
    if isinstance(evidence, dict):
        if evidence.get("quality") not in EVIDENCE_QUALITIES:
            _err(errors, "E-EVIDENCE", "invalid evidence.quality", "evidence.quality")
        _check_refs(root, evidence.get("validation_artifacts"), errors,
                     "evidence.validation_artifacts")
    review = data.get("review", {}) if isinstance(data.get("review"), dict) else {}
    review_artifact = str(review.get("artifact", ""))
    if review_artifact.strip():
        _check_path(root, review_artifact, errors, "review.artifact")
    _nonempty_str(data, "next_action", errors, "")

    status = data.get("status")
    toolchain = data.get("toolchain", {}) if isinstance(data.get("toolchain"), dict) else {}
    artifacts = data.get("artifacts", {}) if isinstance(data.get("artifacts"), dict) else {}
    raw = artifacts.get("raw_timings", []) if isinstance(artifacts, dict) else []
    if status in {"analyzed", "under-review", "supported", "refuted"}:
        if not commands:
            _err(errors, "E-EVIDENCE", "analyzed/under-review/supported/refuted run requires commands", "commands")
        if not isinstance(raw, list) or not raw:
            _err(errors, "E-EVIDENCE", "analyzed/under-review/supported/refuted run requires raw_timings", "artifacts.raw_timings")
        if not str(toolchain.get("llvm_revision", "")).strip():
            _err(errors, "E-EVIDENCE", "analyzed run requires toolchain.llvm_revision",
                 "toolchain.llvm_revision")
        if toolchain.get("consistency") != "verified":
            _err(errors, "E-PROVENANCE",
                 "analyzed/under-review/supported/refuted run requires verified toolchain provenance",
                 "toolchain.consistency")
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
        oracle = str(procedure.get("correctness_oracle", "")).strip().lower()
        if oracle in {"", "tbd", "none"}:
            _err(errors, "E-EVIDENCE", "analyzed run requires a real correctness_oracle",
                 "procedure.correctness_oracle")
    if isinstance(evidence, dict) and evidence.get("quality") == "validated":
        validations = evidence.get("validation_artifacts")
        if not isinstance(validations, list) or not validations:
            _err(errors, "E-GATE",
                 "validated evidence requires at least one validation artifact",
                 "evidence.validation_artifacts")
        if toolchain.get("consistency") != "verified":
            _err(errors, "E-GATE",
                 "validated evidence requires verified toolchain provenance",
                 "toolchain.consistency")
    if status == "supported":
        if review.get("status") not in {"independent-review", "human-review"}:
            _err(errors, "E-GATE", "supported requires independent-review or human-review", "review.status")
        if review.get("reviewer_type") not in {"separate-agent", "human"}:
            _err(errors, "E-GATE",
                 "supported requires reviewer_type separate-agent or human",
                 "review.reviewer_type")
        if not str(review.get("reviewer", "")).strip():
            _err(errors, "E-GATE", "supported requires a reviewer identity",
                 "review.reviewer")
        if review.get("decision") not in {"accept", "accept-with-limits"}:
            _err(errors, "E-GATE", "supported requires an accept/accept-with-limits decision",
                 "review.decision")
        if not review_artifact.strip():
            _err(errors, "E-GATE", "supported requires a review artifact", "review.artifact")
        if evidence.get("quality") != "validated":
            _err(errors, "E-GATE", "supported requires evidence.quality=validated", "evidence.quality")
        if isinstance(results, dict) and str(results.get("summary", "")).strip().lower() in {"", "not run"}:
            _err(errors, "E-GATE", "supported requires a non-placeholder results.summary", "results.summary")
        if not isinstance(raw, list) or not raw:
            _err(errors, "E-GATE", "supported requires raw evidence", "artifacts.raw_timings")
    if isinstance(evidence, dict) and evidence.get("quality") == "validated" and status not in {"under-review", "supported"}:
        _warn(warnings, "W-EVIDENCE", "validated evidence on a run not yet under review", "evidence.quality")
    return errors, warnings


def validate_math(data: dict, root: Path, record_path: Path) -> tuple[list[dict], list[dict]]:
    errors: list[dict] = []
    warnings: list[dict] = []
    _require(data, [
        "schema_version", "record_type", "claim_id", "title", "status",
        "created_utc", "model_assumptions", "claim", "proof_status",
        "proof_notes", "proof_artifact", "numerical_checks", "check_artifacts",
        "counterexamples", "counterexample_artifacts", "prior_art",
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
    _check_refs(root, data.get("check_artifacts"), errors, "check_artifacts")
    _check_refs(root, data.get("counterexample_artifacts"), errors,
                "counterexample_artifacts")
    proof_artifact = str(data.get("proof_artifact", "")).strip()
    if proof_artifact:
        _check_path(root, proof_artifact, errors, "proof_artifact")
    for field in ("model_assumptions", "numerical_checks", "counterexamples",
                  "prior_art", "unresolved_obligations", "limitations"):
        if not isinstance(data.get(field), list):
            _err(errors, "E-TYPE", f"{field} must be a list", field)
    for field in ("claim", "proof_notes", "next_action"):
        _nonempty_str(data, field, errors)

    status = data.get("status")
    if not data.get("model_assumptions") and status != "proposed":
        _err(errors, "E-EVIDENCE", "a mathematical claim requires explicit model assumptions",
             "model_assumptions")
    proof = data.get("proof_status")
    checks = data.get("numerical_checks") or []
    check_artifacts = data.get("check_artifacts") or []
    counters = data.get("counterexamples") or []
    counter_artifacts = data.get("counterexample_artifacts") or []
    prior = data.get("prior_art") or []
    obligations = data.get("unresolved_obligations") or []
    review = data.get("review", {}) if isinstance(data.get("review"), dict) else {}
    review_artifact = str(review.get("artifact", "")).strip()
    independently_reviewed = (
        review.get("status") in {"independent-review", "human-review"}
        and review.get("reviewer_type") in {"separate-agent", "human"}
        and bool(str(review.get("reviewer", "")).strip())
        and review.get("decision") in {"accept", "accept-with-limits"}
    )
    if status == "proved":
        if proof != "proved":
            _err(errors, "E-GATE", "status proved requires proof_status proved", "proof_status")
        if not proof_artifact:
            _err(errors, "E-GATE", "proved requires a proof artifact", "proof_artifact")
        if not independently_reviewed:
            _err(errors, "E-GATE",
                 "proved requires independent/human review with an explicit accept decision",
                 "review")
        if not review_artifact:
            _err(errors, "E-GATE", "proved requires a review artifact", "review.artifact")
        if obligations:
            _err(errors, "E-GATE", "proved cannot have unresolved obligations", "unresolved_obligations")
    if status == "numerically-checked":
        if proof != "numerically-checked" or not checks:
            _err(errors, "E-GATE", "numerically-checked requires proof_status and numerical_checks",
                 "status")
        if not check_artifacts:
            _err(errors, "E-GATE",
                 "numerically-checked requires references to actual checks or generated artifacts",
                 "check_artifacts")
    if status == "known-prior-art" and not prior:
        _err(errors, "E-GATE", "known-prior-art requires prior_art", "prior_art")
    if status == "refuted":
        if not counters:
            _err(errors, "E-GATE", "refuted requires counterexamples", "counterexamples")
        if not counter_artifacts:
            _err(errors, "E-GATE", "refuted requires counterexample artifacts",
                 "counterexample_artifacts")
    if status == "working-proof" and proof != "working-proof":
        _err(errors, "E-GATE", "working-proof status requires proof_status working-proof",
             "proof_status")
    if status in {"proved", "working-proof"} and not str(data.get("proof_notes", "")).strip():
        _err(errors, "E-GATE", "proof work requires proof notes", "proof_notes")
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
    review = data.get("review", {}) if isinstance(data.get("review"), dict) else {}
    review_artifact = str(review.get("artifact", ""))
    if review_artifact.strip():
        _check_path(root, review_artifact, errors, "review.artifact")
    if data.get("status") == "completed":
        if review.get("status") == "not-reviewed":
            _err(errors, "E-GATE", "completed simulation requires a review status", "review.status")
        if review.get("decision") in {None, "", "not-reviewed"}:
            _err(errors, "E-GATE", "completed simulation requires a review decision",
                 "review.decision")
        if not str(review.get("reviewer", "")).strip():
            _err(errors, "E-GATE", "completed simulation requires reviewer identity",
                 "review.reviewer")
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


def _dedupe_issues(issues: list[dict]) -> list[dict]:
    seen = set()
    result = []
    for issue in issues:
        key = (issue.get("code"), issue.get("field", ""), issue.get("message"))
        if key not in seen:
            seen.add(key)
            result.append(issue)
    return result


def validate_record(path: Path, root: Path, hypothesis_ids: set[str] | None = None) -> tuple[list[dict], list[dict], dict]:
    file = find_record_file(path)
    data = load_json(file)
    kind = data.get("record_type")
    schema_errors: list[dict] = []
    if kind == "experiment":
        schema_errors = validate_schema_data(data, root, "experiment-run")
        errors, warnings = validate_experiment(data, root, file, hypothesis_ids)
    elif kind == "math-claim":
        schema_errors = validate_schema_data(data, root, "math-claim")
        errors, warnings = validate_math(data, root, file)
    elif kind == "simulation":
        schema_errors = validate_schema_data(data, root, "simulation")
        errors, warnings = validate_simulation(data, root, file)
    else:
        errors = [{"code": "E-TYPE", "message": f"unknown record_type: {kind}"}]
        warnings = []
    return _dedupe_issues(schema_errors + errors), warnings, data


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
