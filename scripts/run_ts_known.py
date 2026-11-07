#!/usr/bin/env python3
"""Run the exact llvm-test-suite VectorOperations benchmark for A/B/C.

Google Benchmark reports one real_time per repetition; processes are
interleaved to reduce frequency drift. Uses `start /affinity 4` so the whole
benchmark process runs on logical CPU 2 (a P-core).
"""
import argparse
import csv
import json
import random
import statistics
import subprocess
import sys
import tempfile
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
FILTER = "benchForTruncOrZextVecInLoopWithVW16From_uint64_t_To_uint8_t_"


def run_one(exe, min_time, reps):
    fd, out = tempfile.mkstemp(suffix=".json", dir=str(ROOT / ".tmp"))
    import os
    os.close(fd)
    cmd = ["cmd", "/c", "start", "/affinity", "4", "/b", "/wait", str(exe),
           f"--benchmark_filter={FILTER}", f"--benchmark_min_time={min_time}",
           f"--benchmark_repetitions={reps}", "--benchmark_format=json",
           f"--benchmark_out={out}"]
    p = subprocess.run(cmd, capture_output=True, text=True)
    if p.returncode != 0:
        sys.exit(f"benchmark failed: {p.returncode}\n{p.stdout}\n{p.stderr}")
    data = json.loads(Path(out).read_text())
    Path(out).unlink(missing_ok=True)
    vals = [b["real_time"] for b in data["benchmarks"]
            if b.get("run_type") == "iteration"]
    if not vals:
        vals = [data["benchmarks"][0]["real_time"]]
    return vals


def bootstrap_ci(values, n=5000, seed=1):
    rnd = random.Random(seed)
    meds = sorted(statistics.median(rnd.choices(values, k=len(values)))
                  for _ in range(n))
    return meds[int(0.025 * n)], meds[int(0.975 * n) - 1]


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--rounds", type=int, default=7)
    ap.add_argument("--reps", type=int, default=5)
    ap.add_argument("--min-time", default="0.2s")
    ap.add_argument("--tag", default="main")
    args = ap.parse_args()

    exes = {c: ROOT / ".work" / "ts_known" / f"ts_known.{c}.exe"
            for c in "ABC"}
    for c, e in exes.items():
        if not e.exists():
            sys.exit(f"missing {e}")

    rows = []
    for r in range(args.rounds):
        order = list("ABC")
        random.shuffle(order)
        for c in order:
            vals = run_one(exes[c], args.min_time, args.reps)
            for i, v in enumerate(vals):
                rows.append({"round": r, "config": c, "rep": i, "real_time_ns": v})
            print(f"round {r} {c}: {['%.1f' % v for v in vals]}", flush=True)

    raw = ROOT / "results" / "raw" / f"ts_known_{args.tag}.csv"
    raw.parent.mkdir(parents=True, exist_ok=True)
    with open(raw, "w", newline="") as f:
        w = csv.DictWriter(f, fieldnames=["round", "config", "rep", "real_time_ns"])
        w.writeheader()
        w.writerows(rows)

    summary = {}
    for c in "ABC":
        vals = [r["real_time_ns"] for r in rows if r["config"] == c]
        med = statistics.median(vals)
        lo, hi = bootstrap_ci(vals)
        summary[c] = {"n": len(vals), "median_ns": med, "min_ns": min(vals),
                      "mad_ns": statistics.median([abs(v - med) for v in vals]),
                      "ci95_lo": lo, "ci95_hi": hi}
    base = summary["A"]["median_ns"]
    for c in "ABC":
        summary[c]["speedup_vs_A"] = base / summary[c]["median_ns"]
        summary[c]["delta_pct_vs_A"] = 100.0 * (summary[c]["median_ns"] / base - 1.0)
    summary["C"]["delta_pct_vs_B"] = 100.0 * (
        summary["C"]["median_ns"] / summary["B"]["median_ns"] - 1.0)
    result = {"case": "ts_known", "filter": FILTER, "rounds": args.rounds,
              "reps": args.reps, "min_time": args.min_time, "raw_csv": str(raw),
              "summary": summary}
    print(json.dumps(result, indent=2))
    with open(ROOT / "results" / f"summary_ts_known_{args.tag}.json", "w") as f:
        json.dump(result, f, indent=2)


if __name__ == "__main__":
    main()
