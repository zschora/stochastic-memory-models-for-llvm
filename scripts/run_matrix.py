#!/usr/bin/env python3
"""Run the Stage 0 measurement matrix.

Sizes are chosen to cross L1 (48 KiB), L2 (1.25 MiB on a P-core) and L3
(18 MiB shared) boundaries. reps are chosen to keep one internal trial in the
few-milliseconds range.
"""
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
PY = sys.executable

SIZES = [1024, 16384, 131072, 1048576, 8388608]
REPS = {1024: 4000, 16384: 300, 131072: 40, 1048576: 6, 8388608: 1}

CASES = ["producer_consumer", "read_read", "simd_reduction", "simd_metadata",
         "shifted_reuse"]


def run(args):
    print("+", " ".join(str(a) for a in args), flush=True)
    p = subprocess.run(args)
    if p.returncode != 0:
        sys.exit(f"failed: {args}")


def main():
    for case in CASES:
        for n in SIZES:
            run([PY, str(ROOT / "scripts" / "run_case.py"), "--case", case,
                 "--n", str(n), "--reps", str(REPS[n]), "--trials", "5",
                 "--rounds", "7", "--tag", f"n{n}"])

    # Known test-suite case: separate setup / hot / body measurements.
    for mode, reps in (("setup", 100), ("hot", 2000), ("body", 12)):
        run([PY, str(ROOT / "scripts" / "run_case.py"), "--case", "known_vec",
             "--n", "10000", "--reps", str(reps), "--trials", "5",
             "--rounds", "9", "--mode", mode, "--tag", mode])


if __name__ == "__main__":
    main()
