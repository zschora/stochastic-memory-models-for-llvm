#!/usr/bin/env python3
"""Report repository, documentation and toolchain readiness.

Modes:
  default      report everything; documentation problems are errors
  --docs-only  require only the documentation/state files (no LLVM needed)
  --experiment strict readiness check for a new benchmark campaign; requires an
               explicit verified toolchain manifest (no PATH-based guessing)

The strict mode does not treat equal version strings as provenance.  It verifies
recorded source revision, build configuration, binary hashes and explicit paths.
"""
from __future__ import annotations

import argparse
import json
import os
import platform
import sys
from pathlib import Path

import common


def build_report(root: Path, mode: str,
                 manifest_path: Path | None = None) -> dict:
    docs_missing = [p for p in common.REQUIRED_DOCS if not (root / p).is_file()]
    tools = {} if mode == "docs-only" else common.discover_tools(root)
    consistency = ({"consistency": "not-checked", "missing": [], "versions": {},
                    "major_minor": {}}
                   if mode == "docs-only" else common.toolchain_consistency(tools))
    errors = []
    warnings = []
    manifest_report = {}

    for path in docs_missing:
        errors.append({"code": "E-DOC", "message": f"missing required document: {path}"})

    if mode == "experiment":
        python_version = tuple(int(x) for x in sys.version.split()[0].split(".")[:2])
        if python_version < (3, 10):
            errors.append({"code": "E-PYTHON", "message": "Python 3.10+ is required"})
        selected = manifest_path or os.environ.get("RESEARCH_TOOLCHAIN_MANIFEST", "")
        if not str(selected).strip():
            errors.append({
                "code": "E-PROVENANCE",
                "message": "strict mode requires --toolchain-manifest "
                           "(or RESEARCH_TOOLCHAIN_MANIFEST); PATH discovery is not proof",
            })
        else:
            selected_path = Path(selected)
            if not selected_path.is_absolute():
                selected_path = root / selected_path
            verrs, vwarns, manifest = common.verify_toolchain_manifest(
                selected_path, root, require_local=True)
            errors.extend(verrs)
            warnings.extend(vwarns)
            manifest_report = {
                "path": common.rel_to(root, selected_path),
                "toolchain_id": manifest.get("toolchain_id", ""),
                "llvm_revision": manifest.get("llvm_revision", ""),
                "consistency": manifest.get("consistency", ""),
                "tools": {
                    name: {"version": info.get("version", ""),
                           "path": info.get("path", "")}
                    for name, info in manifest.get("tools", {}).items()
                },
            }
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
        elif consistency.get("consistency") == "matched":
            warnings.append({"code": "W-TOOLCHAIN",
                             "message": "matched version strings are not provenance; "
                                        "use --experiment with a manifest for R1"})

    status = "error" if errors else ("warning" if warnings else "ok")
    return {
        "harness": "1.1",
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
        "toolchain": (manifest_report if manifest_report
                      else consistency),
        "toolchain_manifest": manifest_report,
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
    parser.add_argument("--toolchain-manifest", type=Path, default=None,
                        help="verified toolchain provenance manifest (strict mode)")
    parser.add_argument("--root", type=Path, default=Path(__file__).resolve().parents[2],
                        help=argparse.SUPPRESS)
    parser.add_argument("--json", action="store_true", help="emit JSON only")
    args = parser.parse_args()
    root = args.root.resolve()
    mode = "docs-only" if args.docs_only else ("experiment" if args.experiment else "default")
    report = build_report(root, mode, args.toolchain_manifest)

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
        tc = report["toolchain"]
        if report.get("toolchain_manifest"):
            print("toolchain:", tc.get("consistency"), tc.get("llvm_revision"),
                  tc.get("toolchain_id"))
        else:
            print("toolchain:", tc.get("consistency"), tc.get("major_minor", {}))
        print(f"docs: {report['docs']['checked']} checked, "
              f"{len(report['docs']['missing'])} missing")
        for issue in report["warnings"]:
            print(f"warning {issue['code']}: {issue['message']}")
        for issue in report["errors"]:
            print(f"error {issue['code']}: {issue['message']}")
    return 0 if report["status"] != "error" else 1


if __name__ == "__main__":
    sys.exit(main())
