#!/usr/bin/env python3
"""Report repository, documentation and toolchain readiness.

Modes:
  default      report everything; documentation problems are errors
  --docs-only  require only the documentation/state files (no LLVM needed)
  --experiment require a matched clang/opt/llc toolchain for a new campaign
"""
from __future__ import annotations

import argparse
import json
import os
import platform
import sys
from pathlib import Path

import common


def build_report(root: Path, mode: str) -> dict:
    docs_missing = [p for p in common.REQUIRED_DOCS if not (root / p).is_file()]
    tools = common.discover_tools(root)
    consistency = common.toolchain_consistency(tools)
    errors = []
    warnings = []

    for path in docs_missing:
        errors.append({"code": "E-DOC", "message": f"missing required document: {path}"})

    if mode == "experiment":
        for name in ("clang", "opt", "llc", "llvm-config", "git"):
            if not tools.get(name, {}).get("available"):
                errors.append({"code": "E-TOOL", "message": f"required tool not found: {name}"})
        if consistency.get("consistency") == "mixed":
            errors.append({
                "code": "E-TOOLCHAIN",
                "message": "clang/opt/llc major.minor versions are mixed: "
                           + json.dumps(consistency.get("major_minor"), sort_keys=True),
            })
        elif consistency.get("consistency") != "matched":
            errors.append({
                "code": "E-TOOLCHAIN",
                "message": "cannot establish a matched clang/opt/llc toolchain",
            })
        python_version = tuple(int(x) for x in sys.version.split()[0].split(".")[:2])
        if python_version < (3, 10):
            errors.append({"code": "E-PYTHON", "message": "Python 3.10+ is required"})
    elif mode == "docs-only":
        # LLVM is intentionally optional in documentation mode.
        pass
    else:
        for name in ("clang", "opt", "llc"):
            if not tools.get(name, {}).get("available"):
                warnings.append({"code": "W-TOOL", "message": f"LLVM tool not found: {name}"})
        if consistency.get("consistency") == "mixed":
            warnings.append({"code": "W-TOOLCHAIN",
                             "message": "clang/opt/llc versions are mixed"})

    status = "error" if errors else ("warning" if warnings else "ok")
    return {
        "harness": "1.0",
        "mode": mode,
        "generated_utc": common.now_utc(),
        "repo": {
            "root": str(root),
            "git": common.git_info(root),
        },
        "host": {
            "os": f"{platform.system()} {platform.release()} ({platform.version()})",
            "machine": platform.machine(),
            "processor": platform.processor(),
            "logical_cpus": os.cpu_count() or 0,
            "python_executable": sys.executable,
            "python_version": platform.python_version(),
        },
        "tools": tools,
        "toolchain": consistency,
        "docs": {
            "checked": len(common.REQUIRED_DOCS),
            "missing": docs_missing,
        },
        "warnings": warnings,
        "errors": errors,
        "status": status,
    }


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    group = parser.add_mutually_exclusive_group()
    group.add_argument("--docs-only", action="store_true",
                       help="check documentation only; LLVM is optional")
    group.add_argument("--experiment", action="store_true",
                       help="strict readiness check for a new benchmark campaign")
    parser.add_argument("--root", type=Path, default=Path(__file__).resolve().parents[2],
                        help=argparse.SUPPRESS)
    parser.add_argument("--json", action="store_true", help="emit JSON only")
    args = parser.parse_args()
    root = args.root.resolve()
    mode = "docs-only" if args.docs_only else ("experiment" if args.experiment else "default")
    report = build_report(root, mode)

    if args.json:
        print(json.dumps(report, indent=2, ensure_ascii=True))
    else:
        print(f"harness {report['harness']} | mode={mode} | status={report['status']}")
        print(f"repo: {root}")
        git = report["repo"]["git"]
        print(f"git: {git.get('branch')} {git.get('base_commit')} "
              f"dirty={git.get('working_tree_dirty')}")
        print(f"python: {report['host']['python_version']}")
        for name in ("clang", "opt", "llc", "llvm-config", "cmake", "ninja", "git",
                     "powershell"):
            tool = report["tools"].get(name, {})
            state = "ok" if tool.get("available") else "missing"
            print(f"  {name:12s} {state:7s} {tool.get('version', '')}")
        print("toolchain:", report["toolchain"].get("consistency"),
              report["toolchain"].get("major_minor", {}))
        print(f"docs: {report['docs']['checked']} checked, "
              f"{len(report['docs']['missing'])} missing")
        for issue in report["warnings"]:
            print(f"warning {issue['code']}: {issue['message']}")
        for issue in report["errors"]:
            print(f"error {issue['code']}: {issue['message']}")
    return 0 if report["status"] != "error" else 1


if __name__ == "__main__":
    sys.exit(main())
