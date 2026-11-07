#!/usr/bin/env python3
"""Create a new, non-overwriting research record.

Examples:
  python scripts/research/new_run.py --hypothesis H-R1-001 --dry-run
  python scripts/research/new_run.py --hypothesis H-R1-001 --title "R1-A matched toolchain"
  python scripts/research/new_run.py --kind math --title "Capacity-one LRU expectation" --dry-run
"""
from __future__ import annotations

import argparse
import json
import os
import platform
import sys
from datetime import datetime, timezone
from pathlib import Path

import common


def next_id(root: Path, prefix: str) -> str:
    base = root / ("research/claims" if prefix == "CLM" else "research/runs")
    date = datetime.now(timezone.utc).strftime("%Y%m%d")
    stem = f"{prefix}-{date}-"
    used = set()
    if base.is_dir():
        for child in base.iterdir():
            if child.is_dir() and child.name.startswith(stem):
                suffix = child.name[len(stem):]
                if suffix.isdigit():
                    used.add(int(suffix))
    number = 1
    while number in used:
        number += 1
    return f"{stem}{number:03d}"


def load_hypotheses(root: Path) -> set[str]:
    path = root / "research/state/hypotheses.json"
    if not path.is_file():
        raise SystemExit(f"missing hypothesis ledger: {path}")
    data = common.load_json(path)
    ids = {str(h.get("id")) for h in data.get("hypotheses", []) if isinstance(h, dict)}
    if not ids:
        raise SystemExit("hypothesis ledger is empty")
    return ids


def default_toolchain(root: Path, manifest_path: str = "") -> dict:
    selected = manifest_path.strip() or os.environ.get("RESEARCH_TOOLCHAIN_MANIFEST", "")
    if selected:
        path = Path(selected)
        if not path.is_absolute():
            path = root / path
        manifest = common.load_json(path)
        schema_errors = common.validate_schema_data(manifest, root, "toolchain")
        if schema_errors:
            raise SystemExit("invalid toolchain manifest: " +
                             "; ".join(common.format_issue(x) for x in schema_errors))
        revision = str(manifest.get("llvm_revision", ""))
        tools = manifest.get("tools", {})
        return {
            "consistency": manifest.get("consistency", "unverified"),
            "llvm_revision": revision,
            "manifest_path": common.rel_to(root, path),
            "clang": {
                "version": tools.get("clang", {}).get("version", ""),
                "path": tools.get("clang", {}).get("path", ""),
                "revision": tools.get("clang", {}).get("source_revision", ""),
                "sha256": tools.get("clang", {}).get("sha256", ""),
            },
            "opt": {
                "version": tools.get("opt", {}).get("version", ""),
                "path": tools.get("opt", {}).get("path", ""),
                "revision": tools.get("opt", {}).get("source_revision", ""),
                "sha256": tools.get("opt", {}).get("sha256", ""),
            },
            "llc": {
                "version": tools.get("llc", {}).get("version", ""),
                "path": tools.get("llc", {}).get("path", ""),
                "revision": tools.get("llc", {}).get("source_revision", ""),
                "sha256": tools.get("llc", {}).get("sha256", ""),
            },
            "llvm_config": {
                "version": tools.get("llvm-config", {}).get("version", ""),
                "path": tools.get("llvm-config", {}).get("path", ""),
                "revision": tools.get("llvm-config", {}).get("source_revision", ""),
                "sha256": tools.get("llvm-config", {}).get("sha256", ""),
            },
            "compatibility_notes": (
                "Provenance supplied by an explicit toolchain manifest."
                if manifest.get("consistency") == "verified"
                else "Toolchain manifest is not verified; strict mode must fail."
            ),
            "baseline_caveat": manifest.get("consistency") != "verified",
        }
    tools = common.discover_tools(root, probe=False)
    cons = common.toolchain_consistency(tools)
    def rec(name):
        return {"version": tools[name]["version"], "path": tools[name]["path"]}
    return {
        "consistency": cons["consistency"],
        "llvm_revision": "",
        "manifest_path": "",
        "clang": rec("clang"),
        "opt": rec("opt"),
        "llc": rec("llc"),
        "llvm_config": rec("llvm-config"),
        "compatibility_notes": (
            "" if cons["consistency"] == "matched"
            else "Toolchain is mixed or unverified; strict experiment mode will fail."
        ),
        "baseline_caveat": cons["consistency"] != "matched",
    }


def host_info() -> dict:
    return {
        "os": f"{platform.system()} {platform.release()} ({platform.version()})",
        "cpu": platform.processor() or platform.machine(),
        "logical_cpus": os.cpu_count() or 0,
        "caches": "not recorded",
        "python": platform.python_version(),
    }


def experiment_manifest(root: Path, ident: str, title: str, hypothesis: str,
                        toolchain_manifest: str = "") -> dict:
    now = common.now_utc()
    return {
        "schema_version": "1.0",
        "record_type": "experiment",
        "run_id": ident,
        "hypothesis_id": hypothesis,
        "title": title,
        "status": "planned",
        "created_utc": now,
        "git": common.git_info(root),
        "toolchain": default_toolchain(root, toolchain_manifest),
        "build": {
            "configuration": "not configured",
            "cmake_args": [],
            "compiler_flags": [],
            "link_flags": [],
        },
        "host": host_info(),
        "pipeline": {
            "frontend_ir": "",
            "frontend_flags": [],
            "opt_passes": [],
            "llc_args": [],
        },
        "case": {
            "name": title,
            "source": "",
            "input_sizes": [],
            "seeds": [],
        },
        "procedure": {
            "configurations": ["A", "B", "C"],
            "repetitions": 0,
            "trials_per_process": 0,
            "order": "randomized interleaved",
            "timing_unit": "ns",
            "timing_method": "TBD",
            "correctness_oracle": "TBD",
        },
        "artifacts": {
            "raw_timings": [],
            "ir": [],
            "assembly": [],
            "remarks": [],
            "analysis_script": "",
            "analysis_script_revision": "",
            "checksums": [],
        },
        "commands": [],
        "results": {
            "summary": "not run",
            "limitations": ["planned run; no evidence yet"],
        },
        "review": {
            "status": "not-reviewed",
            "reviewer": "",
            "reviewer_type": "unknown",
            "decision": "not-reviewed",
            "artifact": "",
            "notes": "",
        },
        "evidence": {
            "quality": "none",
            "notes": "planned run; no evidence yet",
            "validation_artifacts": [],
        },
        "status_history": [
            {"status": "planned", "utc": now, "reason": "record created", "evidence": []}
        ],
        "next_action": "fill build, pipeline and case; execute; attach raw evidence; then validate and review",
    }


def math_manifest(root: Path, ident: str, title: str, hypothesis: str | None) -> dict:
    now = common.now_utc()
    data = {
        "schema_version": "1.0",
        "record_type": "math-claim",
        "claim_id": ident,
        "title": title,
        "status": "proposed",
        "created_utc": now,
        "author": "research-lead",
        "model_assumptions": [],
        "claim": "TBD: state the exact model, quantifiers and claim.",
        "proof_status": "conjecture",
        "proof_notes": "Draft; no proof or numerical check has been recorded yet.",
        "proof_artifact": "",
        "numerical_checks": [],
        "check_artifacts": [],
        "counterexamples": [],
        "counterexample_artifacts": [],
        "prior_art": [],
        "unresolved_obligations": ["Write the model and claim before attempting a proof."],
        "review": {
            "status": "not-reviewed",
            "reviewer": "",
            "reviewer_type": "unknown",
            "decision": "not-reviewed",
            "artifact": "",
            "notes": "",
        },
        "artifacts": [],
        "status_history": [
            {"status": "proposed", "utc": now, "reason": "record created", "evidence": []}
        ],
        "limitations": ["Draft record; no evidence yet."],
        "next_action": "write exact assumptions and claim, then check small cases and prior art",
    }
    if hypothesis:
        data["hypothesis_id"] = hypothesis
    return data


def simulation_manifest(root: Path, ident: str, title: str, hypothesis: str | None) -> dict:
    data = {
        "schema_version": "1.0",
        "record_type": "simulation",
        "simulation_id": ident,
        "title": title,
        "status": "planned",
        "created_utc": common.now_utc(),
        "git": common.git_info(root),
        "roles": ["research-lead", "critical-reviewer"],
        "question": "TBD: what documentation-only handoff or review is being tested?",
        "protocol_steps": ["TBD: describe the handoff and review steps"],
        "review": {
            "status": "not-reviewed",
            "reviewer": "",
            "reviewer_type": "unknown",
            "decision": "not-reviewed",
            "artifact": "",
            "notes": "",
        },
        "outcome": "not run",
        "limitations": ["Documentation-only simulation; no performance evidence."],
        "artifacts": [],
        "next_action": "fill the question and protocol steps; record the handoff and review",
    }
    if hypothesis:
        data["hypothesis_id"] = hypothesis
    return data


def write_record(root: Path, kind: str, ident: str, manifest: dict, dry_run: bool) -> Path:
    base = root / "research/claims" if kind == "math" else root / "research/runs"
    directory = base / ident
    if directory.exists():
        raise SystemExit(f"refusing to overwrite existing record: {directory}")
    if dry_run:
        return directory
    directory.mkdir(parents=True)
    if kind == "math":
        common.write_json(directory / "claim.json", manifest)
        (directory / "notes.md").write_text(
            f"# {manifest['title']}\n\nClaim ID: `{ident}`\n\n"
            "Fill with exact assumptions, derivation, checks, counterexamples and proof gaps.\n",
            encoding="utf-8", newline="\n")
    else:
        common.write_json(directory / "manifest.json", manifest)
        title = "Experiment" if kind == "experiment" else "Simulation"
        (directory / "README.md").write_text(
            f"# {manifest['title']}\n\n{title} record `{ident}`.\n\n"
            "Fill the manifest, attach evidence, run `scripts/research/validate_run.py` "
            "and record an independent review before promoting any claim.\n",
            encoding="utf-8", newline="\n")
    return directory


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--kind", choices=["experiment", "math", "simulation"],
                        default="experiment")
    parser.add_argument("--hypothesis", default="",
                        help="hypothesis ID from research/state/hypotheses.json")
    parser.add_argument("--title", default="")
    parser.add_argument("--run-id", default="")
    parser.add_argument("--toolchain-manifest", default="",
                        help="verified toolchain provenance manifest to embed")
    parser.add_argument("--dry-run", action="store_true")
    parser.add_argument("--json", action="store_true")
    parser.add_argument("--root", type=Path, default=Path(__file__).resolve().parents[2],
                        help=argparse.SUPPRESS)
    args = parser.parse_args()
    root = args.root.resolve()

    ids = load_hypotheses(root)
    if args.kind == "experiment" and not args.hypothesis:
        raise SystemExit("--hypothesis is required for an experiment")
    if args.hypothesis and args.hypothesis not in ids:
        raise SystemExit(f"unknown hypothesis: {args.hypothesis}")

    prefix = {"experiment": "EXP", "math": "CLM", "simulation": "SIM"}[args.kind]
    ident = args.run_id.strip() or next_id(root, prefix)
    if not common.RUN_ID_RE.match(ident):
        raise SystemExit("--run-id has an invalid format")
    target = (root / ("research/claims" if args.kind == "math" else "research/runs") / ident)
    if target.exists():
        raise SystemExit(f"refusing to overwrite existing record: {target}")

    title = args.title.strip() or f"Untitled {args.kind} record"
    if args.kind == "experiment":
        manifest = experiment_manifest(root, ident, title, args.hypothesis,
                                       args.toolchain_manifest)
    elif args.kind == "math":
        manifest = math_manifest(root, ident, title, args.hypothesis or None)
    else:
        manifest = simulation_manifest(root, ident, title, args.hypothesis or None)

    directory = write_record(root, args.kind, ident, manifest, args.dry_run)
    result = {
        "ok": True,
        "dry_run": bool(args.dry_run),
        "record_type": manifest["record_type"],
        "id": ident,
        "path": str(directory),
        "manifest": manifest,
    }
    if args.json:
        print(json.dumps(result, indent=2, ensure_ascii=True))
    else:
        verb = "would create" if args.dry_run else "created"
        print(f"{verb}: {directory}")
        print(f"record: {manifest['record_type']} {ident}")
        print("next: fill the manifest, attach evidence, validate and review")
    return 0


if __name__ == "__main__":
    sys.exit(main())
