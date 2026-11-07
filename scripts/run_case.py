#!/usr/bin/env python3
"""Run A/B/C binaries for one case and one size, with process-level interleaving.

Each process runs a short batch of internal trials; A/B/C processes are launched
round-robin so that CPU frequency drift affects all configurations similarly.
Raw per-trial timings and a summary with bootstrap CIs are written to results/.
"""
import argparse
import csv
import json
import random
import statistics
import subprocess
import sys
import time
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent


def parse_output(text):
    trials, meta, checks = [], {}, []
    verify = None
    for line in text.splitlines():
        if line.startswith("TRIAL "):
            _, idx, ns = line.split()
            trials.append((int(idx), float(ns)))
        elif line.startswith("META "):
            for tok in line[5:].split():
                k, v = tok.split("=", 1)
                meta[k] = v
        elif line.startswith("CHECK "):
            checks.append(line.split()[1])
        elif line.startswith("VERIFY "):
            verify = line.split()[1]
    return trials, meta, checks, verify


def bootstrap_ci(values, n=5000, alpha=0.05, seed=1):
    rnd = random.Random(seed)
    meds = []
    for _ in range(n):
        meds.append(statistics.median(rnd.choices(values, k=len(values))))
    meds.sort()
    lo = meds[int((alpha / 2) * n)]
    hi = meds[int((1 - alpha / 2) * n) - 1]
    return lo, hi


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--case", required=True)
    ap.add_argument("--n", type=int, required=True)
    ap.add_argument("--reps", type=int, required=True)
    ap.add_argument("--trials", type=int, default=5)
    ap.add_argument("--rounds", type=int, default=7)
    ap.add_argument("--configs", default="A,B,C")
    ap.add_argument("--mode", default="")
    ap.add_argument("--tag", default="")
    ap.add_argument("--bin-dir", default=str(ROOT / ".work"))
    args = ap.parse_args()

    configs = [c.strip() for c in args.configs.split(",") if c.strip()]
    bdir = Path(args.bin_dir) / args.case
    exes = {c: bdir / f"{args.case}.{c}.exe" for c in configs}
    for c, p in exes.items():
        if not p.exists():
            sys.exit(f"missing binary: {p}")

    raw_rows = []
    checks = {c: set() for c in configs}
    verify = {c: set() for c in configs}
    order = []
    for _ in range(args.rounds):
        r = configs[:]
        random.shuffle(r)
        order.extend(r)

    for round_idx, cfg in enumerate(order):
        cmd = [str(exes[cfg]), cfg, str(args.n), str(args.reps), str(args.trials)]
        if args.mode:
            cmd.append(args.mode)
        t0 = time.time()
        p = subprocess.run(cmd, capture_output=True, text=True)
        if p.returncode != 0:
            sys.exit(f"{cfg} failed rc={p.returncode}\n{p.stdout}\n{p.stderr}")
        trials, meta, chk, ver = parse_output(p.stdout)
        checks[cfg].update(chk)
        if ver:
            verify[cfg].add(ver)
        for idx, ns in trials:
            raw_rows.append({"config": cfg, "round": round_idx, "trial": idx,
                             "ns_per_call": ns, "wall_s": time.time() - t0})
    # correctness cross-check
    all_checks = set().union(*checks.values()) if checks else set()
    if len(all_checks) != 1:
        sys.exit(f"CHECKSUM MISMATCH across configs: { {k: v for k, v in checks.items()} }")
    if any(v != {"OK"} for v in verify.values()):
        sys.exit(f"VERIFY failure: {verify}")

    tag = args.tag or f"n{args.n}"
    outdir = ROOT / "results" / "raw"
    outdir.mkdir(parents=True, exist_ok=True)
    raw_path = outdir / f"{args.case}_{tag}_n{args.n}.csv"
    with open(raw_path, "w", newline="") as f:
        w = csv.DictWriter(f, fieldnames=["config", "round", "trial", "ns_per_call", "wall_s"])
        w.writeheader()
        w.writerows(raw_rows)

    summary = {}
    for c in configs:
        vals = [r["ns_per_call"] for r in raw_rows if r["config"] == c]
        vals.sort()
        med = statistics.median(vals)
        mad = statistics.median([abs(v - med) for v in vals])
        lo, hi = bootstrap_ci(vals)
        summary[c] = {"n": len(vals), "median_ns": med, "mad_ns": mad,
                      "ci95_lo": lo, "ci95_hi": hi, "min_ns": min(vals),
                      "max_ns": max(vals)}
    base = summary.get("A", {}).get("median_ns")
    base_min = summary.get("A", {}).get("min_ns")
    for c in configs:
        if base:
            summary[c]["speedup_vs_A"] = base / summary[c]["median_ns"]
            summary[c]["delta_pct_vs_A"] = 100.0 * (summary[c]["median_ns"] / base - 1.0)
        if base_min:
            summary[c]["speedup_min_vs_A"] = base_min / summary[c]["min_ns"]
            summary[c]["delta_min_pct_vs_A"] = 100.0 * (summary[c]["min_ns"] / base_min - 1.0)
    if "B" in summary and "C" in summary:
        summary["C"]["delta_pct_vs_B"] = 100.0 * (summary["C"]["median_ns"] / summary["B"]["median_ns"] - 1.0)

    result = {"case": args.case, "n": args.n, "reps": args.reps,
              "trials_per_process": args.trials, "rounds": args.rounds,
              "mode": args.mode, "tag": tag, "checksum": next(iter(all_checks)),
              "raw_csv": str(raw_path), "summary": summary}
    print(json.dumps(result, indent=2))

    sfile = ROOT / "results" / f"summary_{args.case}.csv"
    new = not sfile.exists()
    with open(sfile, "a", newline="") as f:
        w = csv.writer(f)
        if new:
            w.writerow(["case", "n", "mode", "tag", "config", "median_ns", "mad_ns",
                        "ci95_lo", "ci95_hi", "speedup_vs_A", "delta_pct_vs_A"])
        for c in configs:
            s = summary[c]
            w.writerow([args.case, args.n, args.mode, tag, c, f"{s['median_ns']:.4f}",
                        f"{s['mad_ns']:.4f}", f"{s['ci95_lo']:.4f}", f"{s['ci95_hi']:.4f}",
                        f"{s.get('speedup_vs_A', 0):.6f}", f"{s.get('delta_pct_vs_A', 0):.3f}"])


if __name__ == "__main__":
    main()
