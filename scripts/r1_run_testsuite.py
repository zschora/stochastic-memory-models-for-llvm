#!/usr/bin/env python3
"""Run the exact llvm-test-suite VW16 benchmark for an R1 campaign."""
from __future__ import annotations

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


def run_one(exe: Path, min_time: str, reps: int, tmp: Path):
    fd, out = tempfile.mkstemp(suffix=".json", dir=str(tmp))
    import os
    os.close(fd)
    cmd = ["cmd", "/c", "start", "/affinity", "4", "/b", "/wait", str(exe),
           f"--benchmark_filter={FILTER}", f"--benchmark_min_time={min_time}",
           f"--benchmark_repetitions={reps}", "--benchmark_format=json",
           f"--benchmark_out={out}"]
    proc = subprocess.run(cmd, capture_output=True, text=True)
    if proc.returncode != 0:
        sys.exit(f"benchmark failed: {proc.returncode}\n{proc.stdout}\n{proc.stderr}")
    data = json.loads(Path(out).read_text(encoding="utf-8"))
    Path(out).unlink(missing_ok=True)
    values = [b["real_time"] for b in data["benchmarks"]
              if b.get("run_type") == "iteration"]
    if not values:
        values = [data["benchmarks"][0]["real_time"]]
    return values


def bootstrap_ci(values, n=5000, seed=1):
    rnd = random.Random(seed)
    meds = sorted(statistics.median(rnd.choices(values, k=len(values)))
                  for _ in range(n))
    return meds[int(0.025 * n)], meds[int(0.975 * n) - 1]


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--campaign", default="EXP-20261107-R1A")
    ap.add_argument("--rounds", type=int, default=7)
    ap.add_argument("--reps", type=int, default=5)
    ap.add_argument("--min-time", default="0.2s")
    ap.add_argument("--tag", default="r1a")
    args = ap.parse_args()

    out_dir = ROOT / "results" / "r1" / args.campaign / "ts_known"
    exes = {c: out_dir / f"ts_known.{c}.exe" for c in "ABC"}
    for c, exe in exes.items():
        if not exe.is_file():
            sys.exit(f"missing {exe}")
    tmp = ROOT / ".tmp"
    tmp.mkdir(exist_ok=True)

    rows = []
    for r in range(args.rounds):
        order = list("ABC")
        random.shuffle(order)
        for c in order:
            values = run_one(exes[c], args.min_time, args.reps, tmp)
            for i, value in enumerate(values):
                rows.append({"round": r, "config": c, "rep": i,
                             "real_time_ns": value})
            print(f"round {r} {c}: {['%.1f' % v for v in values]}", flush=True)

    raw = out_dir / f"ts_known_{args.tag}.csv"
    with open(raw, "w", newline="", encoding="utf-8") as f:
        writer = csv.DictWriter(f, fieldnames=["round", "config", "rep",
                                               "real_time_ns"])
        writer.writeheader()
        writer.writerows(rows)

    summary = {}
    for c in "ABC":
        values = [r["real_time_ns"] for r in rows if r["config"] == c]
        med = statistics.median(values)
        lo, hi = bootstrap_ci(values)
        summary[c] = {"n": len(values), "median_ns": med,
                      "min_ns": min(values),
                      "mad_ns": statistics.median([abs(v - med) for v in values]),
                      "ci95_lo": lo, "ci95_hi": hi}
    base = summary["A"]["median_ns"]
    for c in "ABC":
        summary[c]["speedup_vs_A"] = base / summary[c]["median_ns"]
        summary[c]["delta_pct_vs_A"] = 100.0 * (
            summary[c]["median_ns"] / base - 1.0)
    summary["C"]["delta_pct_vs_B"] = 100.0 * (
        summary["C"]["median_ns"] / summary["B"]["median_ns"] - 1.0)
    result = {
        "case": "ts_known", "campaign": args.campaign, "filter": FILTER,
        "rounds": args.rounds, "reps": args.reps, "min_time": args.min_time,
        "raw_csv": str(raw.relative_to(ROOT)).replace("\\", "/"),
        "summary": summary,
    }
    path = out_dir / f"summary_ts_known_{args.tag}.json"
    path.write_text(json.dumps(result, indent=2) + "\n",
                    encoding="utf-8", newline="\n")
    print(json.dumps(result, indent=2))
    return 0


if __name__ == "__main__":
    sys.exit(main())
