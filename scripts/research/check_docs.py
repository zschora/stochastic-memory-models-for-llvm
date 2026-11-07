#!/usr/bin/env python3
"""Check documentation links, required harness files, skills and state JSON.

This tool is offline and uses only the Python standard library.
"""
from __future__ import annotations

import argparse
import json
import re
import sys
from pathlib import Path

import common

LINK_RE = re.compile(r"(?<!!)\[[^\]]*\]\(([^)]+)\)")
FENCE_RE = re.compile(r"```.*?```", re.DOTALL)
FRONTMATTER_RE = re.compile(r"^---\s*\n(.*?)\n---\s*\n", re.DOTALL)


def markdown_files(root: Path):
    for path in root.rglob("*.md"):
        if any(part in {".git", ".tools", ".work", ".tmp"} for part in path.parts):
            continue
        yield path


def check_links(root: Path) -> list[dict]:
    errors = []
    for path in markdown_files(root):
        text = path.read_text(encoding="utf-8", errors="replace")
        text = FENCE_RE.sub("", text)
        for match in LINK_RE.finditer(text):
            link = match.group(1).strip()
            if link.startswith(("http://", "https://", "mailto:", "#")):
                continue
            target_text = link.split("#", 1)[0]
            if not target_text:
                continue
            target = (path.parent / target_text).resolve()
            try:
                target.relative_to(root.resolve())
            except ValueError:
                errors.append({"code": "E-LINK", "message": f"link escapes repository: {link}",
                               "field": str(path.relative_to(root))})
                continue
            if not target.exists():
                errors.append({"code": "E-LINK", "message": f"broken link: {link}",
                               "field": str(path.relative_to(root))})
    return errors


def check_skills(root: Path) -> list[dict]:
    errors = []
    for name in common.REQUIRED_SKILLS:
        path = root / "research/harness/skills" / name / "SKILL.md"
        if not path.is_file():
            errors.append({"code": "E-SKILL", "message": f"missing skill: {name}"})
            continue
        text = path.read_text(encoding="utf-8", errors="replace")
        match = FRONTMATTER_RE.match(text)
        if not match:
            errors.append({"code": "E-SKILL", "message": f"missing YAML frontmatter: {name}"})
            continue
        meta = {}
        for line in match.group(1).splitlines():
            if ":" in line:
                key, value = line.split(":", 1)
                meta[key.strip()] = value.strip().strip('"').strip("'")
        if meta.get("name") != name:
            errors.append({"code": "E-SKILL", "message": f"skill name does not match directory: {name}"})
        if not common.SKILL_NAME_RE.match(name):
            errors.append({"code": "E-SKILL", "message": f"invalid skill name: {name}"})
        desc = meta.get("description", "")
        if not 1 <= len(desc) <= 1024:
            errors.append({"code": "E-SKILL", "message": f"invalid/missing skill description: {name}"})
        body_lines = text[match.end():].count("\n")
        if body_lines > 500:
            errors.append({"code": "E-SKILL", "message": f"skill body exceeds 500 lines: {name}"})
    for name in common.REQUIRED_ROLES:
        path = root / "research/harness/roles" / f"{name}.md"
        if not path.is_file():
            errors.append({"code": "E-ROLE", "message": f"missing role: {name}"})
    return errors


def check_state(root: Path) -> list[dict]:
    errors = []
    path = root / "research/state/hypotheses.json"
    if not path.is_file():
        return [{"code": "E-STATE", "message": "missing hypotheses.json"}]
    try:
        data = common.load_json(path)
    except Exception as exc:
        return [{"code": "E-STATE", "message": f"invalid hypotheses.json: {exc}"}]
    if data.get("schema_version") != "1.0":
        errors.append({"code": "E-STATE", "message": "hypotheses schema_version must be 1.0"})
    seen = set()
    for h in data.get("hypotheses", []):
        if not isinstance(h, dict):
            errors.append({"code": "E-STATE", "message": "hypothesis entry is not an object"})
            continue
        ident = h.get("id")
        if not ident or not common.HYPOTHESIS_ID_RE.match(ident):
            errors.append({"code": "E-STATE", "message": f"invalid hypothesis id: {ident}"})
            continue
        if ident in seen:
            errors.append({"code": "E-STATE", "message": f"duplicate hypothesis id: {ident}"})
        seen.add(ident)
        if h.get("status") not in common.EXPERIMENT_STATUSES:
            errors.append({"code": "E-STATE", "message": f"invalid hypothesis status: {ident}"})
        if h.get("review_status") not in common.REVIEW_STATUSES:
            errors.append({"code": "E-STATE", "message": f"invalid review_status: {ident}"})
        if h.get("status") == "supported" and h.get("review_status") not in {"independent-review", "human-review"}:
            errors.append({"code": "E-STATE", "message": f"supported hypothesis lacks independent review: {ident}"})
        for ref in h.get("evidence_links", []):
            if not isinstance(ref, str):
                errors.append({"code": "E-STATE", "message": f"non-string evidence link: {ident}"})
                continue
            target = (root / ref.split("#", 1)[0]).resolve()
            if not target.exists():
                errors.append({"code": "E-STATE", "message": f"missing evidence link: {ref}", "field": ident})
    for schema in ("experiment-run", "math-claim", "simulation", "hypotheses"):
        path = root / "research/harness/schemas" / f"{schema}.schema.json"
        try:
            common.load_json(path)
        except Exception as exc:
            errors.append({"code": "E-SCHEMA", "message": f"invalid {schema} schema: {exc}"})
    return errors


def check_plan(root: Path) -> list[dict]:
    path = root / "research/harness/plans/r1-research-program.md"
    if not path.is_file():
        return [{"code": "E-PLAN", "message": "missing R1 plan"}]
    text = path.read_text(encoding="utf-8", errors="replace")
    errors = []
    for workstream in "ABCDEFG":
        if f"R1-{workstream}" not in text:
            errors.append({"code": "E-PLAN", "message": f"plan is missing R1-{workstream}"})
    return errors


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--json", action="store_true")
    parser.add_argument("--root", type=Path, default=Path(__file__).resolve().parents[2],
                        help=argparse.SUPPRESS)
    args = parser.parse_args()
    root = args.root.resolve()
    missing = [p for p in common.REQUIRED_DOCS if not (root / p).is_file()]
    errors = [{"code": "E-DOC", "message": f"missing required document: {p}"} for p in missing]
    errors.extend(check_links(root))
    errors.extend(check_skills(root))
    errors.extend(check_state(root))
    errors.extend(check_plan(root))
    result = {"status": "ok" if not errors else "error", "errors": errors,
              "checked_docs": len(common.REQUIRED_DOCS)}
    if args.json:
        print(json.dumps(result, indent=2, ensure_ascii=True))
    else:
        print(f"status={result['status']} docs={len(common.REQUIRED_DOCS)} errors={len(errors)}")
        for issue in errors:
            print("error " + common.format_issue(issue))
    return 0 if not errors else 1


if __name__ == "__main__":
    sys.exit(main())
