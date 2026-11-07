#!/usr/bin/env python3
"""Build and run an R1 measurement campaign from a pre-registered spec.

The spec fixes points, block counts, trial counts, seed and toolchain before
measurements are observed.  Each point is handled by r1_run_case.py and is
immutable.  Safe resume only skips a point after its summary, manifest and raw
rows validate; incomplete attempts stay on disk and a new attempt is created.
"""
from __future__ import annotations

import argparse
import hashlib
import json
import subprocess
import sys
from datetime import datetime, timezone
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "scripts"))

import r1_stats  # noqa: E402

BUILD = ROOT / "scripts" / "r1_build_case.ps1"
RUN = ROOT / "scripts" / "r1_run_case.py"
KERNELS = {
    "producer_consumer_split": "benchmarks/producer_consumer_split.ll",
    "tsvc_s233": ".work/r1_2/tsvc_measure.ll",
    "tsvc_s2233": ".work/r1_2/tsvc_measure.ll",
}


def now_utc() -> str:
    return datetime.now(timezone.utc).replace(microsecond=0).isoformat().replace("+00:00", "Z")


def sha256_file(path: Path) -> str:
    digest = hashlib.sha256()
    with open(path, "rb") as f:
        for chunk in iter(lambda: f.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def load_spec(path: Path) -> dict:
    spec = json.loads(path.read_text(encoding="utf-8"))
    for field in ("campaign", "seed", "toolchain_manifest", "points"):
        if field not in spec:
            raise SystemExit(f"spec missing field: {field}")
    points = spec["points"]
    if not isinstance(points, list) or not points:
        raise SystemExit("spec points must be a non-empty list")
    keys = set()
    for point in points:
        for field in ("case", "n", "reps", "blocks"):
            if field not in point:
                raise SystemExit(f"point missing {field}: {point}")
        key = (point["case"], point.get("mode", ""), int(point["n"]))
        if key in keys:
            raise SystemExit(f"duplicate point in spec: {key}")
        keys.add(key)
    return spec


def build_campaign(summary_path: Path, data: dict) -> None:
    data["updated_utc"] = now_utc()
    r1_stats.atomic_write_json(summary_path, data)


def run_command(cmd: list[str]) -> subprocess.CompletedProcess:
    return subprocess.run(cmd, capture_output=True, text=True)


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--spec", type=Path, required=True)
    ap.add_argument("--resume", action="store_true")
    ap.add_argument("--dry-run", action="store_true")
    ap.add_argument("--json", action="store_true")
    ap.add_argument("--root", type=Path, default=ROOT)
    args = ap.parse_args()
    root = args.root.resolve()
    spec_path = args.spec if args.spec.is_absolute() else root / args.spec
    spec = load_spec(spec_path)
    campaign = spec["campaign"]
    campaign_dir = root / "results" / "r1" / campaign
    summary_path = campaign_dir / "campaign_summary.json"
    defaults = spec.get("defaults", {})
    configs = defaults.get("configs", ["A", "B", "C", "AA"])
    trials = int(defaults.get("trials", 5))
    toolchain = spec["toolchain_manifest"]
    seed = int(spec["seed"])

    data = {
        "schema_version": "1.1",
        "campaign": campaign,
        "status": "running",
        "spec_path": str(spec_path.relative_to(root)).replace("\\", "/"),
        "spec_sha256": sha256_file(spec_path),
        "rationale": spec.get("rationale", ""),
        "seed": seed,
        "toolchain_manifest": toolchain,
        "started_utc": now_utc(),
        "updated_utc": now_utc(),
        "results": [],
        "failures": [],
        "commands": [],
    }
    if summary_path.exists():
        if not args.resume:
            raise SystemExit(f"campaign exists; use --resume: {summary_path}")
        previous = json.loads(summary_path.read_text(encoding="utf-8"))
        if previous.get("spec_sha256") != data["spec_sha256"]:
            raise SystemExit("existing campaign summary has a different spec hash")
        data = previous
        data["status"] = "running"
        data["failures"] = []
    elif not args.dry_run:
        campaign_dir.mkdir(parents=True, exist_ok=True)

    by_case = {}
    for point in spec["points"]:
        by_case.setdefault(point["case"], []).append(point)

    for case, points in by_case.items():
        build_dir = campaign_dir / case
        exe_ok = all((build_dir / f"{case}.{cfg}.exe").is_file()
                     for cfg in configs)
        if not args.dry_run and not exe_ok:
            build_configs = [c for c in configs if c != "AA"]
            cmd = ["powershell", "-NoProfile", "-ExecutionPolicy", "Bypass",
                   "-File", str(BUILD), "-Case", case, "-Campaign", campaign,
                   "-OutRoot", "results/r1", "-Configs", ",".join(build_configs),
                   "-Force"]
            if case in KERNELS:
                cmd += ["-KernelLl", str(root / KERNELS[case])]
            data["commands"].append(" ".join(cmd))
            print("+", " ".join(cmd), flush=True)
            proc = run_command(cmd)
            if proc.returncode != 0:
                data["failures"].append({"case": case, "stage": "build",
                                         "stderr": proc.stderr[-4000:],
                                         "stdout": proc.stdout[-4000:]})
                build_campaign(summary_path, data)
                continue

        for point in points:
            case_name = point["case"]
            mode = point.get("mode", "")
            n = int(point["n"])
            reps = int(point["reps"])
            blocks = int(point["blocks"])
            point_trials = int(point.get("trials", trials))
            point_seed = int(point.get("seed", seed))
            cmd = [
                sys.executable, str(RUN), "--campaign", campaign,
                "--case", case_name, "--n", str(n), "--reps", str(reps),
                "--blocks", str(blocks), "--trials", str(point_trials),
                "--configs", ",".join(configs), "--seed", str(point_seed),
                "--exe-dir", str(build_dir), "--toolchain-manifest", str(toolchain),
                "--campaign-dir", str(campaign_dir), "--json", "--resume",
            ]
            if mode:
                cmd += ["--mode", mode]
            if args.dry_run:
                print("would run:", " ".join(cmd))
                continue
            completed = False
            for attempt in (1, 2, 3):
                attempt_cmd = cmd + ["--attempt", str(attempt)]
                data["commands"].append(" ".join(attempt_cmd))
                print("+", " ".join(attempt_cmd), flush=True)
                proc = run_command(attempt_cmd)
                if proc.returncode == 0:
                    try:
                        result = json.loads(proc.stdout)
                    except json.JSONDecodeError:
                        data["failures"].append({
                            "case": case_name, "mode": mode, "n": n,
                            "stage": "parse", "stdout": proc.stdout[-4000:],
                            "stderr": proc.stderr[-4000:]})
                        break
                    key = (case_name, mode, n)
                    data["results"] = [r for r in data["results"]
                                       if (r.get("case"), r.get("mode", ""), r.get("n")) != key]
                    data["results"].append(result)
                    completed = True
                    break
                if "refusing to overwrite" not in (proc.stderr or ""):
                    data["failures"].append({
                        "case": case_name, "mode": mode, "n": n,
                        "stage": "measure", "attempt": attempt,
                        "stderr": proc.stderr[-4000:], "stdout": proc.stdout[-4000:]})
                    break
            if not completed and not any(
                    f.get("case") == case_name and f.get("mode") == mode
                    and f.get("n") == n for f in data["failures"]):
                data["failures"].append({
                    "case": case_name, "mode": mode, "n": n,
                    "stage": "measure", "error": "no complete attempt"})
            build_campaign(summary_path, data)

    data["status"] = "complete" if not data["failures"] else "incomplete"
    data["finished_utc"] = now_utc()
    if not args.dry_run:
        build_campaign(summary_path, data)
    if args.json:
        print(json.dumps(data, indent=2))
    else:
        print(f"campaign {campaign}: {data['status']}")
        print(f"results: {len(data['results'])}; failures: {len(data['failures'])}")
        print(f"summary: {summary_path}")
    return 0 if not data["failures"] else 1


if __name__ == "__main__":
    sys.exit(main())
