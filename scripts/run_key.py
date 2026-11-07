#!/usr/bin/env python3
"""Second, higher-sample campaign for the cases used in the report."""
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
PY = sys.executable


def run(case, n, reps, mode="", tag="r2b", rounds=11, trials=7):
    cmd = [PY, str(ROOT / "scripts" / "run_case.py"), "--case", case,
           "--n", str(n), "--reps", str(reps), "--trials", str(trials),
           "--rounds", str(rounds), "--tag", tag]
    if mode:
        cmd += ["--mode", mode]
    print("+", " ".join(cmd), flush=True)
    p = subprocess.run(cmd)
    if p.returncode != 0:
        sys.exit(f"failed: {cmd}")


def main():
    for n, reps in [(1024, 10000), (16384, 300), (131072, 40),
                    (1048576, 6), (8388608, 1)]:
        run("read_read", n, reps)

    for n, reps in [(1024, 10000), (16384, 300), (131072, 40),
                    (1048576, 6), (8388608, 1)]:
        run("shifted_reuse", n, reps)

    for n, reps in [(1024, 3000), (16384, 200), (131072, 20),
                    (1048576, 3), (8388608, 1)]:
        run("simd_metadata", n, reps)

    for n, reps in [(16384, 100), (1048576, 3), (8388608, 1)]:
        run("simd_reduction", n, reps)

    for mode, reps in (("setup", 200), ("hot", 4000), ("body", 12)):
        run("known_vec", 10000, reps, mode=mode)


if __name__ == "__main__":
    main()
