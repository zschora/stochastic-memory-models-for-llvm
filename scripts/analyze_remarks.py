#!/usr/bin/env python3
"""Summarize loop-fusion remarks and per-function loop counts from artifacts."""
import json
import re
import sys
from collections import Counter, defaultdict
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent

BLOCK = re.compile(
    r"--- !(?P<kind>Passed|Missed|Analysis)\n"
    r"Pass:\s+(?P<pass>[^\n]+)\n"
    r"Name:\s+(?P<name>[^\n]+)\n"
    r"Function:\s+(?P<func>[^\n]+)\n",
    re.MULTILINE,
)
LOOP_HDR = re.compile(r"Loop info for function '([^']+)'")
LOOP_LINE = re.compile(r"^Loop at depth (\d+) containing:")


def analyze(case_dir: Path):
    out = {}
    for cfg in ("A", "B", "C"):
        yaml = case_dir / f"remarks-{cfg}.yaml"
        events = Counter()
        per_func = defaultdict(Counter)
        if yaml.exists():
            text = yaml.read_text(encoding="utf-8", errors="replace")
            for m in BLOCK.finditer(text):
                if m.group("pass").strip() != "loop-fusion":
                    continue
                name = m.group("name").strip()
                func = m.group("func").strip().strip("'")
                events[name] += 1
                per_func[func][name] += 1
        loops = {}
        ltxt = case_dir / f"loops-{cfg}.txt"
        if ltxt.exists():
            cur = None
            for line in ltxt.read_text(encoding="utf-8", errors="replace").splitlines():
                h = LOOP_HDR.search(line)
                if h:
                    cur = h.group(1)
                    loops.setdefault(cur, 0)
                    continue
                if cur and LOOP_LINE.search(line):
                    loops[cur] += 1
        out[cfg] = {"events": dict(events),
                    "per_function": {k: dict(v) for k, v in per_func.items()},
                    "loops_per_function": loops}
    return out


def main():
    cases = sys.argv[1:] or [p.name for p in
                             (ROOT / "results" / "artifacts").iterdir()
                             if p.is_dir()]
    all_out = {}
    for case in cases:
        d = ROOT / "results" / "artifacts" / case
        if not d.is_dir():
            continue
        all_out[case] = analyze(d)
    print(json.dumps(all_out, indent=2))
    (ROOT / "results" / "fusion_summary.json").write_text(
        json.dumps(all_out, indent=2), encoding="utf-8")


if __name__ == "__main__":
    main()
