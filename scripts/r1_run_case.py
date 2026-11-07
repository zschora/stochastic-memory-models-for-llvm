#!/usr/bin/env python3
"""Interleaved A/B/C/A-A runner for one R1 case and size.

Writes immutable raw CSV and summary JSON under ``results/r1/<campaign>/``.
The binaries are built by ``scripts/r1_build_case.ps1``.
"""
from __future__ import annotations

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
    trials, checks, verify = [], [], None
    for line in text.splitlines():
        if line.startswith("TRIAL "):
            _, idx, ns = line.split()
            trials.append((int(idx), float(ns)))
        elif line.startswith("CHECK "):
            checks.append(line.split()[1])
        elif line.startswith("VERIFY "):
            verify = line.split()[1]
    return trials, checks, verify


def bootstrap_ci(values, n=5000, alpha=0.05, seed=1):
    rnd = random.Random(seed)
    meds = sorted(statistics.median(rnd.choices(values, k=len(values)))
                  for _ in range(n))
    return meds[int((alpha / 2) * n)], meds[int((1 - alpha / 2) * n) - 1]


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--case", required=True)
    ap.add_argument("--campaign", default="EXP-20261107-R1A")
    ap.add_argument("--n", type=int, required=True)
    ap.add_argument("--reps", type=int, required=True)
    ap.add_argument("--trials", type=int, default=5)
    ap.add_argument("--rounds", type=int, default=7)
    ap.add_argument("--configs", default="A,B,C,AA")
    ap.add_argument("--mode", default="")
    ap.add_argument("--tag", default="r1")
    ap.add_argument("--exe-dir", default="")
    ap.add_argument("--out-dir", default="")
    ap.add_argument("--root", type=Path, default=ROOT)
    args = ap.parse_args()

    root = args.root.resolve()
    campaign_dir = root / "results" / "r1" / args.campaign
    exe_dir = Path(args.exe_dir) if args.exe_dir else campaign_dir / args.case
    out_dir = Path(args.out_dir) if args.out_dir else campaign_dir / args.case
    exe_dir = exe_dir if exe_dir.is_absolute() else root / exe_dir
    out_dir = out_dir if out_dir.is_absolute() else root / out_dir
    out_dir.mkdir(parents=True, exist_ok=True)

    configs = [c.strip() for c in args.configs.split(",") if c.strip()]
    exes = {c: exe_dir / f"{args.case}.{c}.exe" for c in configs}
    for c, path in exes.items():
        if not path.is_file():
            sys.exit(f"missing binary: {path}")

    order = []
    for _ in range(args.rounds):
        round_configs = configs[:]
        random.shuffle(round_configs)
        order.extend(round_configs)

    raw_rows = []
    checks = {c: set() for c in configs}
    verify = {c: set() for c in configs}
    for round_idx, cfg in enumerate(order):
        cmd = [str(exes[cfg]), cfg, str(args.n), str(args.reps), str(args.trials)]
        if args.mode:
            cmd.append(args.mode)
        started = time.time()
        proc = subprocess.run(cmd, capture_output=True, text=True)
        if proc.returncode != 0:
            sys.exit(f"{cfg} failed rc={proc.returncode}\n{proc.stdout}\n{proc.stderr}")
        trials, chk, ver = parse_output(proc.stdout)
        checks[cfg].update(chk)
        if ver:
            verify[cfg].add(ver)
        for idx, ns in trials:
            raw_rows.append({"config": cfg, "round": round_idx, "trial": idx,
                             "ns_per_call": ns, "wall_s": time.time() - started})

    all_checks = set().union(*checks.values()) if checks else set()
    if len(all_checks) != 1:
        sys.exit(f"CHECKSUM MISMATCH across configs: {checks}")
    if any(v != {"OK"} for v in verify.values()):
        sys.exit(f"VERIFY failure: {verify}")

    stem = f"{args.case}_{args.tag}_n{args.n}"
    raw_path = out_dir / f"raw_{stem}.csv"
    with open(raw_path, "w", newline="", encoding="utf-8") as f:
        writer = csv.DictWriter(f, fieldnames=["config", "round", "trial",
                                               "ns_per_call", "wall_s"])
        writer.writeheader()
        writer.writerows(raw_rows)

    summary = {}
    for cfg in configs:
        vals = sorted(r["ns_per_call"] for r in raw_rows if r["config"] == cfg)
        med = statistics.median(vals)
        mad = statistics.median([abs(v - med) for v in vals])
        lo, hi = bootstrap_ci(vals)
        summary[cfg] = {"n": len(vals), "median_ns": med, "mad_ns": mad,
                        "ci95_lo": lo, "ci95_hi": hi, "min_ns": min(vals),
                        "max_ns": max(vals)}
    base = summary.get("A", {}).get("median_ns")
    if base:
        for cfg in configs:
            summary[cfg]["delta_pct_vs_A"] = 100.0 * (
                summary[cfg]["median_ns"] / base - 1.0)
            summary[cfg]["speedup_vs_A"] = base / summary[cfg]["median_ns"]
    if "AA" in summary and base:
        summary["AA"]["delta_pct_vs_A_control"] = summary["AA"]["delta_pct_vs_A"]
    if "C" in summary and "B" in summary:
        summary["C"]["delta_pct_vs_B"] = 100.0 * (
            summary["C"]["median_ns"] / summary["B"]["median_ns"] - 1.0)

    result = {
        "case": args.case,
        "campaign": args.campaign,
        "n": args.n,
        "reps": args.reps,
        "trials_per_process": args.trials,
        "rounds": args.rounds,
        "mode": args.mode,
        "tag": args.tag,
        "checksum": next(iter(all_checks)),
        "raw_csv": str(raw_path.relative_to(root)).replace("\\", "/"),
        "configs": configs,
        "summary": summary,
    }
    summary_path = out_dir / f"summary_{stem}.json"
    with open(summary_path, "w", encoding="utf-8", newline="\n") as f:
        json.dump(result, f, indent=2)
        f.write("\n")
    print(json.dumps(result, indent=2))
    return 0


if __name__ == "__main__":
    sys.exit(main())
