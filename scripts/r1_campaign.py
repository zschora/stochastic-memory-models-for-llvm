#!/usr/bin/env python3
"""Build and run the R1-A microbenchmark matrix with a matched toolchain.

The campaign directory is immutable: a second run needs a new campaign ID.
All measurements are interleaved A/B/C/A-A and are written under
``results/r1/<campaign>/<case>/``.
"""
from __future__ import annotations

import argparse
import json
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
BUILD = ROOT / "scripts" / "r1_build_case.ps1"
RUN = ROOT / "scripts" / "r1_run_case.py"

REPS = {
    "read_read": {1024: 10000, 16384: 300, 131072: 40, 1048576: 6, 8388608: 1},
    "read_read_offset": {1024: 10000, 16384: 300, 131072: 40, 1048576: 6, 8388608: 1},
    "shifted_reuse": {1024: 10000, 16384: 300, 131072: 40, 1048576: 6, 8388608: 1},
    "simd_metadata": {1024: 3000, 16384: 200, 131072: 20, 1048576: 3, 8388608: 1},
    "simd_metadata_scalar": {1024: 3000, 16384: 200, 131072: 20, 1048576: 3, 8388608: 1},
    "simd_reduction": {16384: 100, 1048576: 3, 8388608: 1},
    "producer_consumer": {1024: 3000, 16384: 200, 131072: 20, 1048576: 3, 8388608: 1},
    "producer_consumer_split": {1024: 3000, 16384: 200, 131072: 20, 1048576: 3, 8388608: 1},
    "known_vec": {10000: 0},
}
KERNELS = {
    "producer_consumer_split": "benchmarks/producer_consumer_split.ll",
}
KNOWN_VEC_MODES = {"setup": 200, "hot": 4000, "body": 12}


def run(cmd, log):
    print("+", " ".join(str(c) for c in cmd), flush=True)
    log.append(" ".join(str(c) for c in cmd))
    proc = subprocess.run(cmd)
    if proc.returncode != 0:
        raise SystemExit(f"command failed: {cmd}")


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--campaign", default="EXP-20261107-R1A")
    ap.add_argument("--cases", default=",".join(REPS))
    ap.add_argument("--sizes", default="")
    ap.add_argument("--rounds", type=int, default=7)
    ap.add_argument("--trials", type=int, default=5)
    ap.add_argument("--skip-build", action="store_true")
    ap.add_argument("--append", action="store_true")
    ap.add_argument("--dry-run", action="store_true")
    args = ap.parse_args()

    cases = [c.strip() for c in args.cases.split(",") if c.strip()]
    for case in cases:
        if case not in REPS:
            raise SystemExit(f"unknown case: {case}")
    selected_sizes = ([int(s) for s in args.sizes.split(",") if s.strip()]
                      if args.sizes else None)

    campaign_dir = ROOT / "results" / "r1" / args.campaign
    summary_path = campaign_dir / "campaign_summary.json"
    log: list[str] = []
    results = []
    failures = []
    if args.append and summary_path.is_file():
        previous = json.loads(summary_path.read_text(encoding="utf-8"))
        results = list(previous.get("results", []))
        log = list(previous.get("commands", []))
        failures = [f for f in previous.get("failures", [])
                    if f.get("case") not in cases]
    elif summary_path.exists() and not args.dry_run:
        raise SystemExit(f"campaign already complete: {campaign_dir}")
    campaign_dir.mkdir(parents=True, exist_ok=True)

    for case in cases:
        sizes = selected_sizes or list(REPS[case])
        if case == "known_vec":
            sizes = [10000]
        build_cmd = [
            "powershell", "-NoProfile", "-ExecutionPolicy", "Bypass",
            "-File", str(BUILD), "-Case", case, "-Campaign", args.campaign,
        ]
        if case in KERNELS:
            build_cmd += ["-KernelLl", str(ROOT / KERNELS[case])]
        if not args.skip_build and not (campaign_dir / case / "meta.json").is_file():
            if args.dry_run:
                print("would run:", " ".join(build_cmd))
            else:
                try:
                    run(build_cmd, log)
                except SystemExit as exc:
                    failures.append({"case": case, "stage": "build", "error": str(exc)})
                    continue

        modes = list(KNOWN_VEC_MODES.items()) if case == "known_vec" else [("", 0)]
        for mode, mode_reps in modes:
            for n in sizes:
                if n not in REPS[case]:
                    continue
                reps = mode_reps if case == "known_vec" else REPS[case][n]
                cmd = [
                    sys.executable, str(RUN), "--case", case,
                    "--campaign", args.campaign, "--n", str(n),
                    "--reps", str(reps), "--trials", str(args.trials),
                    "--rounds", str(args.rounds),
                    "--configs", "A,B,C,AA", "--tag", "r1a",
                ]
                if mode:
                    cmd += ["--mode", mode]
                if args.dry_run:
                    print("would run:", " ".join(cmd))
                    continue
                try:
                    run(cmd, log)
                    summary = campaign_dir / case / f"summary_{case}_r1a_n{n}.json"
                    if summary.is_file():
                        data = json.loads(summary.read_text(encoding="utf-8"))
                        data["mode"] = mode
                        results.append(data)
                except SystemExit as exc:
                    failures.append({"case": case, "n": n, "mode": mode,
                                     "stage": "run", "error": str(exc)})

    if not args.dry_run:
        dedup = {}
        for result in results:
            key = (result.get("case"), result.get("n"), result.get("mode", ""))
            dedup[key] = result
        results = list(dedup.values())
        summary = {
            "campaign": args.campaign,
            "cases": cases,
            "rounds": args.rounds,
            "trials_per_process": args.trials,
            "commands": log,
            "results": results,
            "failures": failures,
        }
        summary_path.write_text(json.dumps(summary, indent=2) + "\n",
                                encoding="utf-8", newline="\n")
        print(f"campaign summary: {summary_path}")
    return 0 if not failures else 1


if __name__ == "__main__":
    sys.exit(main())
