#!/usr/bin/env python3
"""Validate experiment, mathematical and simulation records.

Usage:
  python scripts/research/validate_run.py research/runs/SIM-0001-handoff-smoke
  python scripts/research/validate_run.py --all --json
"""
from __future__ import annotations

import argparse
import json
import sys
from pathlib import Path

import common


def validate_paths(paths: list[Path], root: Path, hypothesis_ids: set[str]) -> dict:
    records = []
    errors = []
    warnings = []
    for path in paths:
        try:
            errs, warns, data = common.validate_record(path, root, hypothesis_ids)
        except Exception as exc:
            errs, warns, data = [{"code": "E-READ", "message": str(exc)}], [], {}
        ident = common.record_identifier(data)
        records.append({
            "id": ident,
            "path": str(path.relative_to(root)) if path.is_relative_to(root) else str(path),
            "status": "ok" if not errs else "error",
            "errors": errs,
            "warnings": warns,
        })
        errors.extend(errs)
        warnings.extend(warns)
    for issue in common.check_duplicate_ids(root):
        errors.append(issue)
    return {
        "status": "error" if errors else "ok",
        "checked": len(records),
        "records": records,
        "errors": errors,
        "warnings": warnings,
    }


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("path", nargs="?", type=Path,
                        help="run/claim directory or manifest JSON")
    parser.add_argument("--all", action="store_true", help="validate all records")
    parser.add_argument("--json", action="store_true")
    parser.add_argument("--root", type=Path, default=Path(__file__).resolve().parents[2],
                        help=argparse.SUPPRESS)
    args = parser.parse_args()
    root = args.root.resolve()
    hypothesis_ids = common.load_hypothesis_ids(root)

    if args.all:
        paths = common.iter_records(root)
    elif args.path:
        try:
            paths = [common.find_record_file(args.path.resolve())]
        except FileNotFoundError as exc:
            print(f"E-READ: {exc}")
            return 1
    else:
        parser.error("provide a path or --all")
        return 2

    result = validate_paths(paths, root, hypothesis_ids)
    if args.json:
        print(json.dumps(result, indent=2, ensure_ascii=True))
    else:
        print(f"status={result['status']} checked={result['checked']}")
        for record in result["records"]:
            print(f"{record['status']:5s} {record['id'] or '(no id)'} {record['path']}")
            for issue in record["errors"]:
                print("  " + common.format_issue(issue))
            for issue in record["warnings"]:
                print("  warning " + common.format_issue(issue))
        for issue in result["errors"]:
            if not any(issue in r["errors"] for r in result["records"]):
                print("error " + common.format_issue(issue))
    return 0 if result["status"] == "ok" else 1


if __name__ == "__main__":
    sys.exit(main())
