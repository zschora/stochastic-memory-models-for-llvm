#!/usr/bin/env python3
"""R1.2 candidate discovery over TSVC and PolyBench.

Compiles each source to front-end IR, runs unrestricted (B) and current-model (C)
LoopFusion with structured remarks, and records per-function decisions.  This is
a static/pass-decision inventory, not a performance measurement.
"""
from __future__ import annotations

import argparse
import json
import re
import subprocess
import sys
from collections import Counter, defaultdict
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
CLANG = ROOT / ".tools" / "llvm-build" / "bin" / "clang.exe"
OPT = ROOT / ".tools" / "llvm-build" / "bin" / "opt.exe"
COMPAT = ROOT / "benchmarks" / "r1_2" / "compat"
POLY = ROOT / ".tools" / "corpus" / "PolyBench"
TSVC = ROOT / ".tools" / "corpus" / "TSVC" / "TSVC"
OUT = ROOT / "results" / "r1" / "EXP-20261107-R12-discovery"

BLOCK = re.compile(
    r"--- !(?P<kind>Passed|Missed|Analysis)\n"
    r"Pass:\s+(?P<pass>[^\n]+)\n"
    r"Name:\s+(?P<name>[^\n]+)\n"
    r"Function:\s+(?P<func>[^\n]+)\n",
    re.MULTILINE,
)


def run(cmd: list[str], timeout: int = 300):
    return subprocess.run(cmd, capture_output=True, text=True, timeout=timeout)


def parse_events(path: Path) -> dict[str, dict[str, int]]:
    events = defaultdict(Counter)
    if path.is_file():
        text = path.read_text(encoding="utf-8", errors="replace")
        for match in BLOCK.finditer(text):
            if match.group("pass").strip() != "loop-fusion":
                continue
            func = match.group("func").strip().strip("'")
            events[func][match.group("name").strip()] += 1
    return {func: dict(values) for func, values in events.items()}


def polybench_cases():
    for path in sorted(POLY.rglob("*.c")):
        if "utilities" in path.parts or path.name.endswith(".orig.c"):
            continue
        yield path


def compile_polybench(path: Path, out: Path) -> str:
    cmd = [str(CLANG), "-O0", "-Xclang", "-disable-O0-optnone",
           "-DMINI_DATASET", "-DPOLYBENCH_USE_SCALAR_LB",
           "-I", str(COMPAT), "-I", str(POLY / "utilities"),
           "-I", str(path.parent), "-emit-llvm", "-S", str(path), "-o", str(out)]
    proc = run(cmd)
    return proc.stderr if proc.returncode != 0 else ""


def tsvc_transform() -> Path:
    import re as _re
    source = TSVC / "tsc.c"
    text = source.read_text(encoding="utf-8", errors="replace")
    text = _re.sub(r"\bmax\s*\(", "tsvc_max(", text)
    text = _re.sub(r"\bmin\s*\(", "tsvc_min(", text)
    text = text.replace("memalign(", "tsvc_memalign(")
    text = ("#include <stddef.h>\n#include <malloc.h>\n"
            "static void *tsvc_memalign(size_t a, size_t b)"
            "{ return _aligned_malloc(b, a); }\n") + text
    out = OUT / "sources" / "tsvc_discovery.c"
    out.parent.mkdir(parents=True, exist_ok=True)
    out.write_text(text, encoding="utf-8", newline="\n")
    return out


def analyze_ir(ir: Path, case_out: Path, label: str) -> dict:
    case_out.mkdir(parents=True, exist_ok=True)
    results = {}
    for config, min_reused in (("B", 0), ("C", 1)):
        opt_ir = case_out / f"{label}.{config}.ll"
        remarks = case_out / f"remarks-{config}.yaml"
        cmd = [str(OPT), "-passes=default<O3>", "-enable-loopfusion",
               f"-loop-fusion-min-reused-values={min_reused}", "-S", str(ir),
               "-o", str(opt_ir), "-pass-remarks=loop-fusion",
               "-pass-remarks-missed=loop-fusion",
               "-pass-remarks-analysis=loop-fusion",
               f"--pass-remarks-output={remarks}"]
        proc = run(cmd)
        results[config] = {
            "returncode": proc.returncode,
            "stderr": proc.stderr[-1000:] if proc.returncode else "",
            "events": parse_events(remarks),
        }
    return results


def classify_kernel(events_b: dict, events_c: dict) -> dict:
    b = events_b or {}
    c = events_c or {}
    b_fused = b.get("FuseCounter", 0)
    c_fused = c.get("FuseCounter", 0)
    rejection = sorted(k for k in c if k != "FuseCounter")
    legality = sorted(k for k in b if k in {
        "InvalidDependencies", "InvalidCandidate", "NonEqualTripCount",
        "UnknownTripCount", "UncomputableTripCount", "NotRotated",
        "NotSimplifiedForm", "ContainsAtomicAccess", "ContainsVolatileAccess",
        "MayThrowException", "NonIdenticalGuards", "NonEmptyPreheader",
        "NonEmptyExitBlock", "NonEmptyGuardBlock", "AddressTakenBB"})
    if b_fused and c_fused:
        cls = "legal_and_fused"
    elif b_fused and not c_fused:
        cls = "legal_but_rejected"
    elif legality:
        cls = "illegal"
    else:
        cls = "unknown_or_not_evaluated"
    return {"b_fused": b_fused, "c_fused": c_fused,
            "classification": cls, "b_events": b, "c_events": c,
            "c_rejections": rejection, "b_legality": legality}


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--json", action="store_true")
    args = ap.parse_args()
    OUT.mkdir(parents=True, exist_ok=True)
    (OUT / "sources").mkdir(exist_ok=True)
    inventory = {
        "schema_version": "1.0",
        "record_type": "r1.2-discovery",
        "sources": {
            "polybench": {
                "path": ".tools/corpus/PolyBench",
                "revision": run(["git", "-C", str(POLY), "rev-parse", "HEAD"]).stdout.strip(),
                "dataset": "MINI_DATASET",
            },
            "tsvc": {
                "path": ".tools/corpus/TSVC/TSVC",
                "revision": run(["git", "-C", str(TSVC.parent), "rev-parse", "HEAD"]).stdout.strip(),
                "license": "TSVC license retained",
            },
        },
        "cases": [],
        "summary": Counter(),
    }

    for path in polybench_cases():
        rel = path.relative_to(POLY)
        family = rel.parts[0]
        case = path.stem
        case_out = OUT / "polybench" / case
        ir = case_out / "frontend.ll"
        case_out.mkdir(parents=True, exist_ok=True)
        err = compile_polybench(path, ir)
        if err:
            inventory["cases"].append({
                "source": "polybench", "family": family, "case": case,
                "path": str(rel).replace("\\", "/"), "error": err[-1000:],
            })
            inventory["summary"]["compile_errors"] += 1
            continue
        results = analyze_ir(ir, case_out, case)
        kernels = {}
        for func in sorted(set(results["B"]["events"]) | set(results["C"]["events"])):
            if func.startswith("kernel_") or func in {"init_array", "main"}:
                kernels[func] = classify_kernel(
                    results["B"]["events"].get(func, {}),
                    results["C"]["events"].get(func, {}))
        inventory["cases"].append({
            "source": "polybench", "family": family, "case": case,
            "path": str(rel).replace("\\", "/"), "ir": str(ir.relative_to(ROOT)),
            "functions": kernels,
        })
        inventory["summary"]["polybench_cases"] += 1
        if any(k.get("classification") == "legal_and_fused"
               for k in kernels.values() if k["b_fused"] or k["c_fused"]):
            inventory["summary"]["polybench_cases_with_fusion"] += 1

    # TSVC discovery.
    if (TSVC / "tsc.c").is_file():
        transformed = tsvc_transform()
        ir = OUT / "tsvc" / "frontend.ll"
        ir.parent.mkdir(parents=True, exist_ok=True)
        proc = run([str(CLANG), "-O0", "-Xclang", "-disable-O0-optnone",
                    "-I", str(COMPAT), "-emit-llvm", "-S",
                    str(transformed), "-o", str(ir)])
        if proc.returncode != 0:
            inventory["cases"].append({"source": "tsvc", "error": proc.stderr[-2000:]})
            inventory["summary"]["tsvc_compile_errors"] += 1
        else:
            results = analyze_ir(ir, OUT / "tsvc", "tsvc")
            functions = {}
            for func in sorted(set(results["B"]["events"]) | set(results["C"]["events"])):
                if re.fullmatch(r"s\d{3,4}", func):
                    functions[func] = classify_kernel(
                        results["B"]["events"].get(func, {}),
                        results["C"]["events"].get(func, {}))
            inventory["cases"].append({
                "source": "tsvc", "family": "tsvc", "case": "tsvc",
                "path": "TSVC/TSVC/tsc.c", "ir": str(ir.relative_to(ROOT)),
                "functions": functions,
            })
            inventory["summary"]["tsvc_cases"] += 1

    # Aggregate function-level counts, without double-counting sizes.
    classes = Counter()
    for case in inventory["cases"]:
        for func, info in case.get("functions", {}).items():
            classes[info["classification"]] += 1
    inventory["summary"]["function_classes"] = dict(classes)
    inventory["summary"]["total_functions_examined"] = sum(
        1 for case in inventory["cases"] for _ in case.get("functions", {}))
    inventory["summary"] = dict(inventory["summary"])
    (OUT / "discovery.json").write_text(json.dumps(inventory, indent=2) + "\n",
                                        encoding="utf-8", newline="\n")
    lines = [
        "# R1.2 discovery inventory",
        "",
        f"PolyBench revision: `{inventory['sources']['polybench']['revision']}`",
        f"TSVC revision: `{inventory['sources']['tsvc']['revision']}`",
        "",
        "| source | cases | functions examined | fused | rejected | illegal | unknown |",
        "| --- | ---: | ---: | ---: | ---: | ---: | ---: |",
    ]
    for source in ("polybench", "tsvc"):
        cases = [c for c in inventory["cases"] if c["source"] == source]
        funcs = [f for c in cases for f in c.get("functions", {}).values()]
        lines.append(
            f"| {source} | {len(cases)} | {len(funcs)} | "
            f"{sum(1 for f in funcs if f['classification']=='legal_and_fused')} | "
            f"{sum(1 for f in funcs if f['classification']=='legal_but_rejected')} | "
            f"{sum(1 for f in funcs if f['classification']=='illegal')} | "
            f"{sum(1 for f in funcs if f['classification']=='unknown_or_not_evaluated')} |")
    lines += ["", "Cases with at least one fused kernel:", ""]
    for case in inventory["cases"]:
        fused = [name for name, info in case.get("functions", {}).items()
                 if info["classification"] == "legal_and_fused"]
        if fused:
            lines.append(f"- `{case['source']}/{case['case']}`: {', '.join(fused)}")
    (OUT / "discovery.md").write_text("\n".join(lines) + "\n", encoding="utf-8",
                                      newline="\n")
    print(f"wrote {OUT / 'discovery.json'}")
    print("\n".join(lines[:12]))
    return 0


if __name__ == "__main__":
    sys.exit(main())
