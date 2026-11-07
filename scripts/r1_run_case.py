#!/usr/bin/env python3
"""Run one immutable randomized-block R1 measurement.

Design:
  * complete blocks: each block runs every configuration exactly once;
  * randomized order inside each block, with the seed and schedule preserved;
  * one process-level observation per configuration and block;
  * internal trials are technical replicates, aggregated by median;
  * paired block ratios and a block bootstrap are computed in r1_stats.py;
  * output identity includes campaign, case, mode, n, configs, reps, trials,
    blocks, seed, executable hashes and toolchain-manifest hash.

A completed measurement is never overwritten.  Interrupted attempts are kept
with diagnostics; use --attempt N to make a new attempt.
"""
from __future__ import annotations

import argparse
import csv
import hashlib
import json
import os
import platform
import random
import shutil
import statistics
import subprocess
import sys
import tempfile
import time
from datetime import datetime, timezone
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "scripts"))

import r1_stats  # noqa: E402


def now_utc() -> str:
    return datetime.now(timezone.utc).replace(microsecond=0).isoformat().replace("+00:00", "Z")


def sha256_file(path: Path) -> str:
    digest = hashlib.sha256()
    with open(path, "rb") as f:
        for chunk in iter(lambda: f.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def parse_output(text: str) -> tuple[list[tuple[int, float]], list[str], str | None, dict]:
    trials, checks, verify, meta = [], [], None, {}
    for line in text.splitlines():
        if line.startswith("TRIAL "):
            _, idx, ns = line.split()
            trials.append((int(idx), float(ns)))
        elif line.startswith("CHECK "):
            checks.append(line.split()[1])
        elif line.startswith("VERIFY "):
            verify = line.split()[1]
        elif line.startswith("META "):
            for token in line[5:].split():
                key, value = token.split("=", 1)
                meta[key] = value
    return trials, checks, verify, meta


def build_schedule(configs: list[str], blocks: int, seed: int) -> list[dict]:
    rnd = random.Random(seed)
    schedule = []
    for block in range(blocks):
        order = list(configs)
        rnd.shuffle(order)
        for position, config in enumerate(order):
            schedule.append({
                "block_id": block,
                "execution_index": block * len(configs) + position,
                "position": position,
                "config": config,
                "status": "planned",
            })
    return schedule


def host_info() -> dict:
    caches = "not recorded"
    environment = ROOT / "results" / "environment.json"
    if environment.is_file():
        try:
            data = json.loads(environment.read_text(encoding="utf-8-sig"))
            caches = data.get("caches", caches)
        except Exception:
            pass
    return {
        "os": f"{platform.system()} {platform.release()} ({platform.version()})",
        "machine": platform.machine(),
        "processor": platform.processor(),
        "logical_cpus": os.cpu_count() or 0,
        "python": platform.python_version(),
        "caches": caches,
    }


def load_toolchain(path: Path) -> dict:
    if not path.is_file():
        raise SystemExit(f"toolchain manifest not found: {path}")
    manifest = json.loads(path.read_text(encoding="utf-8"))
    if manifest.get("consistency") != "verified":
        raise SystemExit("toolchain manifest is not verified; refusing a baseline measurement")
    return manifest


def measurement_directory(campaign_dir: Path, case: str, mode: str, n: int,
                          point_id: str, attempt: int) -> Path:
    return (campaign_dir / "measurements" / case / f"mode-{mode or 'default'}"
            / f"n-{n}" / point_id / f"attempt-{attempt:02d}")


def validate_existing(directory: Path, parameters: dict) -> bool:
    if not r1_stats.validate_completed_measurement(directory, parameters):
        return False
    try:
        summary = json.loads((directory / "summary.json").read_text(encoding="utf-8"))
        rows = r1_stats.read_raw_csv(directory / "raw.csv")
        observations = r1_stats.process_observations(rows, parameters["configs"])
        if len(observations) != parameters["blocks"]:
            return False
        if summary.get("parameters") != parameters:
            return False
        if summary.get("point_id") != r1_stats.point_id(parameters):
            return False
    except Exception:
        return False
    return summary.get("status") == "complete"


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--campaign", required=True)
    ap.add_argument("--case", required=True)
    ap.add_argument("--n", type=int, required=True)
    ap.add_argument("--reps", type=int, required=True)
    ap.add_argument("--blocks", type=int, default=7)
    ap.add_argument("--trials", type=int, default=5)
    ap.add_argument("--configs", default="A,B,C,AA")
    ap.add_argument("--mode", default="")
    ap.add_argument("--seed", type=int, default=20261107)
    ap.add_argument("--exe-dir", default="")
    ap.add_argument("--campaign-dir", default="")
    ap.add_argument("--toolchain-manifest", default="")
    ap.add_argument("--attempt", type=int, default=1)
    ap.add_argument("--resume", action="store_true")
    ap.add_argument("--timeout", type=int, default=600)
    ap.add_argument("--json", action="store_true")
    ap.add_argument("--root", type=Path, default=ROOT)
    args = ap.parse_args()

    root = args.root.resolve()
    campaign_dir = Path(args.campaign_dir) if args.campaign_dir else (
        root / "results" / "r1" / args.campaign)
    campaign_dir = campaign_dir if campaign_dir.is_absolute() else root / campaign_dir
    exe_dir = Path(args.exe_dir) if args.exe_dir else campaign_dir / args.case
    exe_dir = exe_dir if exe_dir.is_absolute() else root / exe_dir
    configs = [c.strip() for c in args.configs.split(",") if c.strip()]
    if "A" not in configs or "AA" not in configs:
        raise SystemExit("configs must include A and AA for the identical-binary control")
    if len(set(configs)) != len(configs):
        raise SystemExit("duplicate configuration label")
    if args.blocks < 2 or args.trials < 1:
        raise SystemExit("blocks >= 2 and trials >= 1 are required")
    if args.attempt < 1:
        raise SystemExit("attempt must be >= 1")

    exes = {cfg: exe_dir / f"{args.case}.{cfg}.exe" for cfg in configs}
    for cfg, path in exes.items():
        if not path.is_file():
            raise SystemExit(f"missing binary for {cfg}: {path}")
    exe_sha = {cfg: sha256_file(path) for cfg, path in exes.items()}
    if exe_sha["A"] != exe_sha["AA"]:
        raise SystemExit("A and AA binaries are not byte-identical")

    manifest_path = Path(args.toolchain_manifest) if args.toolchain_manifest else (
        root / "research" / "harness" / "toolchains"
        / "llvm-24.0.0git-6f41962-v2.json")
    manifest_path = manifest_path if manifest_path.is_absolute() else root / manifest_path
    toolchain = load_toolchain(manifest_path)
    toolchain_sha = sha256_file(manifest_path)

    parameters = r1_stats.measurement_parameters(
        args.campaign, args.case, args.mode, args.n, configs, args.reps,
        args.trials, args.blocks, args.seed, exe_sha, toolchain_sha)
    point = r1_stats.point_id(parameters)
    directory = measurement_directory(campaign_dir, args.case, args.mode,
                                      args.n, point, args.attempt)

    if directory.exists():
        if args.resume and validate_existing(directory, parameters):
            summary = json.loads((directory / "summary.json").read_text(encoding="utf-8"))
            print(json.dumps(summary, indent=2) if args.json else
                  f"already complete: {directory}")
            return 0
        raise SystemExit(
            f"refusing to overwrite existing measurement: {directory}\n"
            "Use --attempt N for a new attempt; completed attempts are immutable.")

    directory.mkdir(parents=True, exist_ok=False)
    schedule = build_schedule(configs, args.blocks, args.seed)
    commands = []
    host = host_info()
    measurement = {
        "schema_version": "1.1",
        "record_type": "r1-measurement",
        "campaign": args.campaign,
        "case": args.case,
        "mode": args.mode,
        "n": args.n,
        "point_id": point,
        "attempt": args.attempt,
        "status": "running",
        "created_utc": now_utc(),
        "parameters": parameters,
        "toolchain": {
            "manifest_path": str(manifest_path.relative_to(root)).replace("\\", "/")
            if manifest_path.is_relative_to(root) else str(manifest_path),
            "manifest_sha256": toolchain_sha,
            "llvm_revision": toolchain.get("llvm_revision"),
            "toolchain_id": toolchain.get("toolchain_id"),
            "consistency": toolchain.get("consistency"),
        },
        "host": host,
        "timing_unit": "ns per kernel call",
        "warmup_policy": "benchmark-specific warmup in benchmarks/harness.hpp before trials",
        "affinity": "requested logical CPU 2 and HIGH_PRIORITY_CLASS; harness reports failures on stderr",
        "environment": {"warnings": []},
        "schedule_seed": args.seed,
        "schedule_json": "schedule.json",
        "exe_sha256": exe_sha,
        "configs": configs,
    }
    r1_stats.atomic_write_json(directory / "measurement.json", measurement)
    r1_stats.atomic_write_json(directory / "schedule.json", {
        "seed": args.seed, "blocks": args.blocks, "configs": configs,
        "schedule": schedule, "status": "planned",
    })

    raw_rows = []
    checks: dict[str, set[str]] = {cfg: set() for cfg in configs}
    verifies: dict[str, set[str]] = {cfg: set() for cfg in configs}
    commands = []
    try:
        for entry in schedule:
            cfg = entry["config"]
            cmd = [str(exes[cfg]), cfg, str(args.n), str(args.reps), str(args.trials)]
            if args.mode:
                cmd.append(args.mode)
            commands.append(" ".join(cmd))
            started = time.time()
            try:
                proc = subprocess.run(cmd, capture_output=True, text=True,
                                      timeout=args.timeout)
            except subprocess.TimeoutExpired as exc:
                entry["status"] = "failed"
                entry["error"] = f"timeout after {args.timeout}s"
                r1_stats.atomic_write_json(directory / "failure.json", {
                    "block": entry, "command": cmd,
                    "stdout": (exc.stdout or "")[-4000:],
                    "stderr": (exc.stderr or "")[-4000:],
                })
                r1_stats.atomic_write_json(directory / "schedule.json", {
                    "seed": args.seed, "blocks": args.blocks, "configs": configs,
                    "schedule": schedule, "status": "failed",
                })
                measurement["status"] = "failed"
                measurement["error"] = entry["error"]
                r1_stats.atomic_write_json(directory / "measurement.json", measurement)
                raise SystemExit(f"{cfg} timed out after {args.timeout}s")
            wall = time.time() - started
            entry["returncode"] = proc.returncode
            entry["wall_s"] = wall
            entry["stdout_sha256"] = hashlib.sha256(
                proc.stdout.encode("utf-8", errors="replace")).hexdigest()
            if proc.stderr.strip():
                measurement["environment"]["warnings"].append(
                    {"block_id": entry["block_id"], "config": cfg,
                     "stderr": proc.stderr.strip()})
            if proc.returncode != 0:
                entry["status"] = "failed"
                r1_stats.atomic_write_json(directory / "failure.json", {
                    "block": entry, "stdout": proc.stdout, "stderr": proc.stderr,
                    "command": cmd,
                })
                r1_stats.atomic_write_json(directory / "schedule.json", {
                    "seed": args.seed, "blocks": args.blocks, "configs": configs,
                    "schedule": schedule, "status": "failed",
                })
                measurement["status"] = "failed"
                r1_stats.atomic_write_json(directory / "measurement.json", measurement)
                raise SystemExit(f"{cfg} failed rc={proc.returncode}\n{proc.stderr}")
            trials, chk, ver, meta = parse_output(proc.stdout)
            checks[cfg].update(chk)
            if ver:
                verifies[cfg].add(ver)
            if len(trials) != args.trials:
                raise SystemExit(
                    f"{cfg} block {entry['block_id']} produced {len(trials)} trials, "
                    f"expected {args.trials}")
            if sorted(idx for idx, _ in trials) != list(range(args.trials)):
                raise SystemExit(f"{cfg} block {entry['block_id']} has duplicate/missing trial ids")
            entry["status"] = "complete"
            entry["trials_seen"] = len(trials)
            for trial_id, ns in trials:
                raw_rows.append({
                    "campaign": args.campaign, "case": args.case,
                    "mode": args.mode, "n": args.n,
                    "block_id": entry["block_id"],
                    "execution_index": entry["execution_index"],
                    "config": cfg, "trial_id": trial_id,
                    "ns_per_call": ns, "wall_s": wall,
                    "process_id": f"b{entry['block_id']:02d}-{cfg}",
                    "exe_sha256": exe_sha[cfg],
                })
    except Exception as exc:
        measurement["status"] = "failed"
        measurement["error"] = str(exc)
        r1_stats.atomic_write_json(directory / "measurement.json", measurement)
        print(f"measurement failed; diagnostics preserved in {directory}", file=sys.stderr)
        raise

    all_checks = set().union(*checks.values()) if checks else set()
    if len(all_checks) != 1:
        measurement["status"] = "failed"
        measurement["error"] = f"checksum mismatch: {checks}"
        r1_stats.atomic_write_json(directory / "measurement.json", measurement)
        raise SystemExit(f"CHECKSUM MISMATCH across configurations: {checks}")
    if any(values != {"OK"} for values in verifies.values()):
        measurement["status"] = "failed"
        measurement["error"] = f"verify failure: {verifies}"
        r1_stats.atomic_write_json(directory / "measurement.json", measurement)
        raise SystemExit(f"VERIFY failure: {verifies}")

    fieldnames = ["campaign", "case", "mode", "n", "block_id", "execution_index",
                  "config", "trial_id", "ns_per_call", "wall_s", "process_id",
                  "exe_sha256"]
    r1_stats.atomic_write_csv(directory / "raw.csv", fieldnames, raw_rows)
    result = r1_stats.summarize_measurement(
        raw_rows, configs, n_boot=10000, seed=args.seed)
    summary = {
        "schema_version": "1.1",
        "status": "complete",
        "campaign": args.campaign,
        "case": args.case,
        "mode": args.mode,
        "n": args.n,
        "point_id": point,
        "attempt": args.attempt,
        "raw_csv": str((directory / "raw.csv").relative_to(root)).replace("\\", "/"),
        "measurement_json": str((directory / "measurement.json").relative_to(root)).replace("\\", "/"),
        "schedule_json": str((directory / "schedule.json").relative_to(root)).replace("\\", "/"),
        "configs": configs,
        "checksum": next(iter(all_checks)),
        "verify": {cfg: sorted(values) for cfg, values in verifies.items()},
        "process_observations": result["observations"],
        "effects": result["effects"],
        "classifications": result["classifications"],
        "thresholds": result["thresholds"],
        "parameters": parameters,
        "commands": commands,
    }
    r1_stats.atomic_write_json(directory / "summary.json", summary)
    r1_stats.atomic_write_json(directory / "schedule.json", {
        "seed": args.seed, "blocks": args.blocks, "configs": configs,
        "schedule": schedule, "status": "complete",
    })
    measurement["status"] = "complete"
    measurement["completed_utc"] = now_utc()
    measurement["raw_csv"] = summary["raw_csv"]
    r1_stats.atomic_write_json(directory / "measurement.json", measurement)
    print(json.dumps(summary, indent=2) if args.json else
          f"measurement complete: {directory}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
