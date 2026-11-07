#!/usr/bin/env python3
"""Summarize R1 LoopFusion decisions, loop metadata and assembly shape."""
from __future__ import annotations

import argparse
import json
import re
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
DEFINE = re.compile(r"^define\b.*?@(?P<name>[A-Za-z0-9_.$]+)\(", re.MULTILINE)
LOOP_ATTACH = re.compile(r"!llvm\.loop\s+!(?P<id>\d+)")
META_LINE = re.compile(r"^!(?P<id>\d+)\s*=\s*(?:distinct\s+)?!\{", re.MULTILINE)
ASM_COUNTS = {
    "ymm": re.compile(r"%ymm\d+"),
    "zmm": re.compile(r"%zmm\d+"),
    "xmm": re.compile(r"%xmm\d+"),
    "vp": re.compile(r"\tvp[a-z0-9]+"),
}


def parse_metadata(text: str) -> dict[str, dict]:
    nodes: dict[str, dict] = {}
    for match in META_LINE.finditer(text):
        start = match.start()
        line_end = text.find("\n", start)
        if line_end < 0:
            continue
        line = text[start:line_end]
        node_id = match.group("id")
        values = {}
        for key in ("llvm.loop.vectorize.enable", "llvm.loop.vectorize.width",
                    "llvm.loop.vectorize.disable",
                    "llvm.loop.vectorize.predicate.enable",
                    "llvm.loop.vectorize.predicate.disable",
                    "llvm.loop.vectorize.scalable.enable",
                    "llvm.loop.vectorize.scalable.disable",
                    "llvm.loop.interleave.count",
                    "llvm.loop.unroll.disable", "llvm.loop.unroll.count"):
            pattern = re.compile(r'!"' + re.escape(key) + r'",\s*i(?:1|32)\s+([^,}]+)')
            found = pattern.search(line)
            if found:
                values[key] = found.group(1).strip()
            elif f'!"{key}"' in line:
                values[key] = "present"
        refs = [int(x) for x in re.findall(r"!(\d+)", line.split("=", 1)[1])]
        nodes[node_id] = {"values": values, "refs": refs}
    return nodes


def function_blocks(text: str) -> dict[str, str]:
    matches = list(DEFINE.finditer(text))
    blocks = {}
    for i, match in enumerate(matches):
        end = matches[i + 1].start() if i + 1 < len(matches) else len(text)
        blocks[match.group("name")] = text[match.start():end]
    return blocks


def parse_remarks(path: Path) -> dict:
    events = Counter()
    per_function = defaultdict(Counter)
    if path.is_file():
        text = path.read_text(encoding="utf-8", errors="replace")
        for match in BLOCK.finditer(text):
            if match.group("pass").strip() != "loop-fusion":
                continue
            name = match.group("name").strip()
            func = match.group("func").strip().strip("'")
            events[name] += 1
            per_function[func][name] += 1
    return {"events": dict(events),
            "per_function": {k: dict(v) for k, v in per_function.items()}}


def analyze_case(directory: Path) -> dict:
    meta = {}
    if (directory / "meta.json").is_file():
        meta = json.loads((directory / "meta.json").read_text(encoding="utf-8-sig"))
    result = {"meta": meta, "configs": {}}
    for cfg in ("A", "B", "C"):
        ll = directory / f"{directory.name}.{cfg}.ll"
        if not ll.is_file():
            ll = next(directory.glob(f"*.{cfg}.ll"), None)
        ir_text = ll.read_text(encoding="utf-8", errors="replace") if ll and ll.is_file() else ""
        metadata = parse_metadata(ir_text)
        blocks = function_blocks(ir_text)
        functions = {}
        for name, block in blocks.items():
            loops = []
            for attach in LOOP_ATTACH.finditer(block):
                node_id = attach.group("id")
                node = metadata.get(node_id, {})
                values = dict(node.get("values", {}))
                for ref in node.get("refs", []):
                    values.update(metadata.get(str(ref), {}).get("values", {}))
                loops.append({"metadata_id": node_id, "values": values})
            if loops:
                functions[name] = loops
        asm = directory / f"{directory.name}.{cfg}.s"
        if not asm.is_file():
            asm = next(directory.glob(f"*.{cfg}.s"), None)
        asm_text = asm.read_text(encoding="utf-8", errors="replace") if asm and asm.is_file() else ""
        counts = {key: len(pattern.findall(asm_text))
                  for key, pattern in ASM_COUNTS.items()}
        result["configs"][cfg] = {
            "remarks": parse_remarks(directory / f"remarks-{cfg}.yaml"),
            "loop_metadata": functions,
            "asm_counts": counts,
            "ir_sha256": meta.get("configs", {}).get(cfg, {}).get("ll_sha256", ""),
            "asm_sha256": meta.get("configs", {}).get(cfg, {}).get("asm_sha256", ""),
        }
    return result


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--campaign", default="EXP-20261107-R1A")
    ap.add_argument("--cases", default="")
    ap.add_argument("--json", action="store_true")
    args = ap.parse_args()
    base = ROOT / "results" / "r1" / args.campaign
    cases = ([c.strip() for c in args.cases.split(",") if c.strip()]
             if args.cases else [p.name for p in sorted(base.iterdir())
                                 if p.is_dir()])
    result = {}
    for case in cases:
        directory = base / case
        if directory.is_dir() and any(directory.glob("*.A.ll")):
            result[case] = analyze_case(directory)
    text = json.dumps(result, indent=2)
    if args.json:
        print(text)
    out = base / "analysis.json"
    out.write_text(text + "\n", encoding="utf-8", newline="\n")
    print(f"wrote {out}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
