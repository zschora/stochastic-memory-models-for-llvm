#!/usr/bin/env python3
"""Extract conservative pre-treatment features from benchmark front-end IR.

The feature schema separates:
  static    - hints visible in source IR before LoopFusion;
  scenario  - benchmark/runtime context (n, footprint, cache size);
  diagnostic- post-optimisation or measured facts, never decision inputs.

This extractor does not use assembly, post-fusion IR, measured runtimes or
YYM counts.  If a property cannot be established reliably it is 'unknown'.
"""
from __future__ import annotations

import argparse
import hashlib
import json
import os
import re
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
DEFINE = re.compile(r"^define\b.*?@([A-Za-z0-9_.$?]+)\(", re.MULTILINE)
LOOP_HDR = re.compile(r"Loop info for function '([^']+)'")
LOOP_LINE = re.compile(r"^\s*Loop at depth 1 containing:")
META_LINE = re.compile(r"^!(?P<id>\d+)\s*=\s*(?:distinct\s+)?!\{", re.MULTILINE)
LOAD = re.compile(r"\bload\s+(?:volatile\s+)?(<[^>]+>|[A-Za-z0-9_.]+)\s*,\s*ptr\s+(%[^,\s]+)")
STORE = re.compile(r"\bstore\s+[^,]+,\s*ptr\s+(%[^,\s]+)")
GEP = re.compile(
    r"^(?P<res>%[A-Za-z0-9_.]+)\s*=\s*getelementptr\b.*?ptr\s+(?P<base>%[A-Za-z0-9_.]+),\s*i\d+\s+(?P<index>%[A-Za-z0-9_.]+|[-]?\d+)")
PHI = re.compile(r"^(?P<res>%[A-Za-z0-9_.]+)\s*=\s*phi\b")
ADD_CONST = re.compile(
    r"^(?P<res>%[A-Za-z0-9_.]+)\s*=\s*add\b[^%]*?(?P<lhs>%[A-Za-z0-9_.]+|[-]?\d+),\s*(?P<rhs>[-]?\d+|%[A-Za-z0-9_.]+)")
CALL = re.compile(r"\b(call|invoke)\b")


def sha256_file(path: Path) -> str:
    digest = hashlib.sha256()
    with open(path, "rb") as f:
        for chunk in iter(lambda: f.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def function_blocks(text: str) -> dict[str, str]:
    matches = list(DEFINE.finditer(text))
    blocks = {}
    for index, match in enumerate(matches):
        end = matches[index + 1].start() if index + 1 < len(matches) else len(text)
        blocks[match.group(1)] = text[match.start():end]
    return blocks


def loop_counts(opt: Path | None, ir: Path) -> dict[str, int]:
    if opt is None or not opt.is_file():
        return {}
    proc = subprocess.run([str(opt), "-passes=print<loops>", "-disable-output", str(ir)],
                          capture_output=True, text=True)
    counts: dict[str, int] = {}
    current = None
    for line in (proc.stdout + proc.stderr).splitlines():
        header = LOOP_HDR.search(line)
        if header:
            current = header.group(1)
            counts.setdefault(current, 0)
        elif current and LOOP_LINE.search(line):
            counts[current] += 1
    return counts


def metadata_nodes(text: str) -> dict[str, dict]:
    nodes = {}
    for match in META_LINE.finditer(text):
        start = match.start()
        end = text.find("\n", start)
        line = text[start:end if end >= 0 else len(text)]
        node_id = match.group("id")
        values = {}
        for key in ("llvm.loop.vectorize.enable", "llvm.loop.vectorize.disable",
                    "llvm.loop.vectorize.width", "llvm.loop.interleave.count"):
            found = re.search(r'!"' + re.escape(key) + r'",\s*i(?:1|32)\s+([^,}]+)',
                              line)
            if found:
                values[key] = found.group(1).strip()
            elif f'!"{key}"' in line:
                values[key] = "present"
        refs = [int(x) for x in re.findall(r"!(\d+)", line.split("=", 1)[1])]
        nodes[node_id] = {"values": values, "refs": refs}
    return nodes


def loop_hints(block: str, nodes: dict[str, dict]) -> list[dict]:
    hints = []
    for match in re.finditer(r"!llvm\.loop\s+!(?P<id>\d+)", block):
        node = nodes.get(match.group("id"), {})
        values = dict(node.get("values", {}))
        for ref in node.get("refs", []):
            values.update(nodes.get(str(ref), {}).get("values", {}))
        enable = "llvm.loop.vectorize.enable" in values
        disable = "llvm.loop.vectorize.disable" in values
        width = None
        if "llvm.loop.vectorize.width" in values:
            try:
                width = int(values["llvm.loop.vectorize.width"])
            except ValueError:
                width = None
        if width == 1:
            disable = True
        hints.append({
            "metadata_id": match.group("id"),
            "vectorize_enable": enable,
            "vectorize_disable": disable,
            "vectorize_width": width,
            "requested": enable or (width is not None and width > 1),
            "blocked": disable or width == 1,
        })
    return hints


def metadata_conflict(hints: list[dict]) -> tuple[bool, list[dict]]:
    evidence = []
    for first, second in zip(hints, hints[1:]):
        conflict = False
        if first["requested"] and second["blocked"]:
            conflict = True
        if (first["vectorize_width"] is not None
                and second["vectorize_width"] is not None
                and second["vectorize_width"] < first["vectorize_width"]):
            conflict = True
        if conflict:
            evidence.append({"first": first, "second": second})
    return bool(evidence), evidence


def element_bytes(block: str) -> tuple[int | None, list[str]]:
    types = []
    for match in LOAD.finditer(block):
        types.append(match.group(1))
    scalar_sizes = {"double": 8, "float": 4, "half": 2, "i64": 8, "i32": 4,
                    "i16": 2, "i8": 1, "ptr": 8}
    sizes = []
    for value in types:
        scalar = value
        if value.startswith("<") and " x " in value:
            scalar = value[1:-1].split(" x ", 1)[1].strip()
        if scalar in scalar_sizes:
            sizes.append(scalar_sizes[scalar])
    return (max(sizes) if sizes else None), types


def normalize_indices(block: str) -> dict[str, str]:
    """Map simple loop IV/add-constant SSA names to IV or IV+C."""
    mapping = {}
    for line in block.splitlines():
        stripped = line.strip()
        phi = PHI.match(stripped)
        if phi:
            mapping[phi.group("res")] = "IV"
        add = ADD_CONST.match(stripped)
        if add:
            lhs, rhs = add.group("lhs"), add.group("rhs")
            left = mapping.get(lhs, lhs)
            if rhs.lstrip("-").isdigit() and left == "IV":
                mapping[add.group("res")] = f"IV{int(rhs):+d}"
    return mapping


def load_accesses(block: str) -> list[dict]:
    geps = {}
    for line in block.splitlines():
        stripped = line.strip()
        match = GEP.match(stripped)
        if match:
            geps[match.group("res")] = (match.group("base"), match.group("index"))
    mapping = normalize_indices(block)
    accesses = []
    for match in LOAD.finditer(block):
        pointer = match.group(2)
        base, index = geps.get(pointer, (None, None))
        if index is None:
            continue
        normalized = mapping.get(index, index)
        accesses.append({
            "base": base,
            "index_raw": index,
            "index_normalized": normalized,
            "load_type": match.group(1),
        })
    return accesses


def reuse_kind(block: str) -> dict:
    accesses = load_accesses(block)
    if not accesses:
        return {"kind": "unknown", "reason": "no affine load/GEP pattern",
                "accesses": []}
    for first in accesses:
        for second in accesses:
            if first is second or first["base"] != second["base"]:
                continue
            a, b = first["index_normalized"], second["index_normalized"]
            if a == "IV" and b == "IV":
                return {"kind": "exact", "reason": "same base and normalized index",
                        "accesses": accesses}
            if a.startswith("IV") and b.startswith("IV") and a != b:
                return {"kind": "shifted", "reason": "same base, constant index offset",
                        "accesses": accesses}
    return {"kind": "unknown", "reason": "no matching read-read stream",
            "accesses": accesses}


def memory_summary(block: str, n: int | None, element_bytes: int | None,
                   reuse: dict, trip_count: str) -> dict:
    """Conservative memory-size account from static IR.

    This counts distinct base pointers, not arrays that may alias.  It does not
    claim bytes allocated, unique bytes touched, or a cache working set.
    """
    geps = {}
    for line in block.splitlines():
        match = GEP.match(line.strip())
        if match:
            geps[match.group("res")] = match.group("base")
    bases = set()
    for match in LOAD.finditer(block):
        base = geps.get(match.group(2))
        if base:
            bases.add(base)
    for match in STORE.finditer(block):
        base = geps.get(match.group(1))
        if base:
            bases.add(base)
    streams = len(bases) if bases else None
    per_stream = (n * element_bytes) if (n and element_bytes) else None
    proxy = (per_stream * streams) if (per_stream and streams) else None
    reused = None
    if per_stream and reuse.get("kind") in {"exact", "shifted"}:
        reused = per_stream
    return {
        "n_elements": n,
        "element_bytes": element_bytes,
        "streams": streams,
        "bytes_per_stream": per_stream,
        "footprint_proxy_bytes": proxy,
        "reused_bytes": reused,
        "bytes_allocated": "unknown",
        "unique_bytes_touched": "unknown",
        "working_set_estimate": "unknown",
        "footprint_definition": (
            "n_elements * element_bytes * distinct GEP base pointers; a proxy, "
            "not allocation or guaranteed timed working set"
        ),
        "aliasing": "unknown",
        "bounds": trip_count,
    }


def trip_count_hint(block: str) -> str:
    if re.search(r"icmp\s+(?:eq|slt|ult)\s+i\d+\s+%[^,]+,\s*[-]?\d+", block):
        return "constant-or-mixed"
    if re.search(r"icmp\s+(?:eq|slt|ult)\s+i\d+\s+%[^,]+,\s*%", block):
        return "runtime-dependent"
    return "unknown"


def choose_kernel(blocks: dict[str, str], counts: dict[str, int],
                  mode: str = "", kernel_override: str = "") -> tuple[str | None, dict]:
    candidates = []
    for name, block in blocks.items():
        n_loops = counts.get(name, 0)
        n_calls = sum(1 for line in block.splitlines()
                      if CALL.search(line) and "@llvm." not in line)
        n_loads = len(LOAD.findall(block))
        if kernel_override and name == kernel_override:
            candidates.append((True, n_loads, -n_calls, name, block, n_loops))
        elif mode and mode.lower() in name.lower() and n_loads > 0:
            candidates.append((True, n_loads, -n_calls, name, block, n_loops))
        elif not mode and not kernel_override and n_loops >= 2 and n_loads > 0:
            candidates.append((n_calls == 0, n_loads, -n_calls, name, block, n_loops))
    if not candidates:
        return None, {}
    candidates.sort(reverse=True)
    _, _, _, name, block, n_loops = candidates[0]
    return name, {"block": block, "loop_count": n_loops}


def prepare_early_ir(source: Path, opt: Path | None, out_path: Path | None) -> tuple[str, str]:
    """Run a small pre-LoopFusion scalar pipeline; never vectorize or fuse."""
    if opt is None or not opt.is_file():
        return source.read_text(encoding="utf-8", errors="replace"), "front-end IR only"
    proc = subprocess.run(
        [str(opt), "-passes=function(mem2reg),function(loop-simplify),"
                   "function(lcssa),function(loop-rotate)", "-S", str(source)],
        capture_output=True, text=True)
    if proc.returncode != 0 or not proc.stdout.strip():
        return source.read_text(encoding="utf-8", errors="replace"), "front-end IR only"
    if out_path is not None:
        out_path.parent.mkdir(parents=True, exist_ok=True)
        out_path.write_text(proc.stdout, encoding="utf-8", newline="\n")
    return proc.stdout, "early scalar pipeline (mem2reg, loop-simplify, lcssa, loop-rotate); before LoopFusion"


def early_loop_counts(text: str, opt: Path | None) -> dict[str, int]:
    if opt is None or not opt.is_file():
        return {}
    import tempfile
    fd, name = tempfile.mkstemp(suffix=".ll")
    try:
        with os.fdopen(fd, "w", encoding="utf-8", newline="\n") as f:
            f.write(text)
        return loop_counts(opt, Path(name))
    finally:
        os.unlink(name)


def extract(case_dir: Path, opt: Path | None, n: int | None,
            cache_sizes: dict, mode: str = "", early_out: Path | None = None,
            kernel_override: str = "") -> dict:
    source = None
    for pattern in ("*.linked.ll", "*.frontend.ll"):
        found = sorted(case_dir.glob(pattern))
        if found:
            source = found[0]
            break
    if source is None:
        raise SystemExit(f"no linked/front-end IR in {case_dir}")
    text, stage = prepare_early_ir(source, opt, early_out)
    blocks = function_blocks(text)
    counts = early_loop_counts(text, opt)
    kernel, info = choose_kernel(blocks, counts, mode, kernel_override)
    static = {
        "kernel_function": kernel,
        "loop_count": info.get("loop_count", 0),
        "selection_reason": "function with >=2 loops, loads and no calls",
        "metadata_conflict": None,
        "loop_hints": [],
        "metadata_conflict_evidence": [],
        "element_bytes": None,
        "element_types": [],
        "trip_count": "unknown",
        "reuse_kind": "unknown",
        "reuse_evidence": None,
        "memory": {},
        "loop_body_instruction_count": None,
        "feature_confidence": "partial",
        "unknowns": [],
    }
    if kernel:
        block = info["block"]
        nodes = metadata_nodes(text)
        hints = loop_hints(block, nodes)
        conflict, evidence = metadata_conflict(hints)
        size, types = element_bytes(block)
        reuse = reuse_kind(block)
        trip = trip_count_hint(block)
        memory = memory_summary(block, n, size, reuse, trip)
        static.update({
            "loop_hints": hints,
            "metadata_conflict": conflict,
            "metadata_conflict_evidence": evidence,
            "element_bytes": size,
            "element_types": types,
            "trip_count": trip,
            "reuse_kind": reuse["kind"],
            "reuse_evidence": reuse,
            "memory": memory,
            "loop_body_instruction_count": sum(
                1 for line in block.splitlines()
                if line.strip() and not line.strip().startswith((";", "}", "define",
                                                                 "declare", "attributes"))),
        })
        if size is None:
            static["unknowns"].append("element_bytes")
        if reuse["kind"] == "unknown":
            static["unknowns"].append("reuse_kind")
        if trip == "unknown":
            static["unknowns"].append("trip_count")
        if memory["streams"] is None:
            static["unknowns"].append("streams")
    else:
        static["unknowns"].append("kernel_function")
        static["feature_confidence"] = "unknown"
        memory = memory_summary("", n, None, {"kind": "unknown"}, "unknown")
        static["memory"] = memory
    scenario = {
        "n": n,
        "n_elements": n,
        "element_bytes": static["element_bytes"],
        "bytes_per_stream": memory["bytes_per_stream"],
        "streams": memory["streams"],
        "footprint_proxy_bytes": memory["footprint_proxy_bytes"],
        "reused_bytes": memory["reused_bytes"],
        "bytes_allocated": "unknown",
        "working_set_estimate": "unknown",
        "l3_bytes": cache_sizes.get("l3_bytes"),
        "fits_l3_proxy": (memory["footprint_proxy_bytes"] is not None
                          and cache_sizes.get("l3_bytes") is not None
                          and memory["footprint_proxy_bytes"] <= cache_sizes["l3_bytes"]),
        "source": "benchmark driver input size; footprint is a distinct-stream proxy, not allocation",
    }
    return {
        "schema_version": "1.1",
        "record_type": "predictor-features",
        "feature_version": "r1.1.1-memory",
        "case": case_dir.name,
        "sources": {
            "source_ir": str(source.relative_to(ROOT)).replace("\\", "/")
            if source.is_relative_to(ROOT) else str(source),
            "source_sha256": sha256_file(source),
            "early_ir": str(early_out.relative_to(ROOT)).replace("\\", "/")
            if early_out is not None and early_out.is_relative_to(ROOT)
            else (str(early_out) if early_out is not None else ""),
            "pipeline_stage": stage,
        },
        "static": static,
        "scenario": scenario,
        "diagnostic": {
            "note": "not populated by this extractor; predictor evaluation keeps "
                    "post-optimisation facts separate",
        },
    }


def cache_sizes() -> dict:
    env = ROOT / "results" / "environment.json"
    l3 = None
    if env.is_file():
        try:
            data = json.loads(env.read_text(encoding="utf-8-sig"))
            caches = data.get("caches", {})
            if "L3_mb" in caches:
                l3 = int(caches["L3_mb"] * 1024 * 1024)
        except Exception:
            pass
    return {"l3_bytes": l3}


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--case-dir", type=Path, required=True)
    ap.add_argument("--n", type=int, default=None)
    ap.add_argument("--mode", default="")
    ap.add_argument("--kernel", default="")
    ap.add_argument("--opt", type=Path, default=ROOT / ".tools" / "llvm-build" / "bin" / "opt.exe")
    ap.add_argument("--early-out", type=Path, default=None)
    ap.add_argument("--out", type=Path, default=None)
    ap.add_argument("--json", action="store_true")
    args = ap.parse_args()
    case_dir = args.case_dir if args.case_dir.is_absolute() else ROOT / args.case_dir
    early_out = args.early_out
    if early_out is not None and not early_out.is_absolute():
        early_out = ROOT / early_out
    data = extract(case_dir, args.opt, args.n, cache_sizes(), args.mode, early_out,
                   args.kernel)
    text = json.dumps(data, indent=2)
    if args.out:
        out = args.out if args.out.is_absolute() else ROOT / args.out
        out.parent.mkdir(parents=True, exist_ok=True)
        out.write_text(text + "\n", encoding="utf-8", newline="\n")
    if args.json or not args.out:
        print(text)
    return 0


if __name__ == "__main__":
    sys.exit(main())
