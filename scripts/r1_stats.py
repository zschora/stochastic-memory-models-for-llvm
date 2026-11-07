"""Paired randomized-block statistics for R1 performance measurements.

Experimental unit: one process-level observation for a configuration in a
randomized complete block.  Within-process trials are technical replicates and
are aggregated by their median before any across-block inference.

Effect: ratio T_config / T_A in the same block.  The primary estimate is the
median block ratio; a geometric-mean ratio is reported as a sensitivity check.
Uncertainty is a percentile bootstrap over whole blocks, not over internal
trials.  With few blocks the interval is necessarily coarse; this module never
turns a small effect into a confirmed claim by itself.
"""
from __future__ import annotations

import csv
import json
import math
import os
import random
import statistics
import tempfile
from pathlib import Path
from typing import Iterable

PRACTICAL_THRESHOLD = 0.05
NOISE_THRESHOLD = 0.05
MIN_BLOCKS = 5


class StatsError(ValueError):
    pass


def _finite_positive(value, what: str = "ns_per_call") -> float:
    try:
        number = float(value)
    except (TypeError, ValueError) as exc:
        raise StatsError(f"{what} is not numeric: {value!r}") from exc
    if not math.isfinite(number) or number <= 0:
        raise StatsError(f"{what} must be finite and positive: {value!r}")
    return number


def read_raw_csv(path: Path) -> list[dict]:
    with open(path, "r", encoding="utf-8", newline="") as f:
        reader = csv.DictReader(f)
        if not reader.fieldnames:
            raise StatsError("raw CSV has no header")
        required = {"config", "ns_per_call"}
        if not required.issubset(reader.fieldnames):
            raise StatsError(f"raw CSV missing columns: {required - set(reader.fieldnames)}")
        rows = []
        for line_no, row in enumerate(reader, start=2):
            if not row.get("config"):
                raise StatsError(f"raw CSV line {line_no}: empty config")
            row["ns_per_call"] = _finite_positive(row["ns_per_call"])
            if "trial" in row and row["trial"] != "":
                try:
                    row["trial"] = int(row["trial"])
                except ValueError as exc:
                    raise StatsError(f"raw CSV line {line_no}: invalid trial") from exc
            if "block_id" in row and row["block_id"] != "":
                row["block_id"] = int(row["block_id"])
            if "round" in row and row["round"] != "":
                row["round"] = int(row["round"])
            rows.append(row)
        if not rows:
            raise StatsError("raw CSV contains no data rows")
        return rows


def infer_legacy_blocks(rows: list[dict], configs: list[str] | None = None) -> list[dict]:
    """Convert the old execution-index column ('round') into complete blocks.

    The old runner shuffled one copy of every configuration per block and then
    stored a single increasing execution index in 'round'.  Block identity is
    therefore round // number_of_configs.  This is only accepted when every
    inferred block contains each configuration exactly once.
    """
    configs = configs or sorted({row["config"] for row in rows})
    if len(configs) < 2:
        raise StatsError("legacy block inference needs at least two configurations")
    by_block: dict[int, list[dict]] = {}
    for row in rows:
        if "round" not in row:
            raise StatsError("legacy row has no 'round' execution index")
        block = int(row["round"]) // len(configs)
        by_block.setdefault(block, []).append(row)
    converted = []
    for block in sorted(by_block):
        present = sorted({row["config"] for row in by_block[block]})
        if present != sorted(configs):
            raise StatsError(
                f"legacy block {block} has configurations {present}, expected {sorted(configs)}")
        converted.extend(by_block[block])
    for row in converted:
        row["block_id"] = int(row["round"]) // len(configs)
    return converted


def process_observations(rows: Iterable[dict], configs: list[str],
                         require_balanced: bool = True) -> dict[int, dict[str, float]]:
    """Aggregate internal trials to one median observation per block/config."""
    configs = list(configs)
    if len(set(configs)) != len(configs) or not configs:
        raise StatsError("configs must be a non-empty unique list")
    grouped: dict[tuple[int, str], list[float]] = {}
    for row in rows:
        if "block_id" not in row:
            raise StatsError("row lacks block_id; call infer_legacy_blocks first")
        config = row["config"]
        if config not in configs:
            raise StatsError(f"unexpected configuration: {config}")
        key = (int(row["block_id"]), config)
        grouped.setdefault(key, []).append(_finite_positive(row["ns_per_call"]))
    blocks = sorted({block for block, _ in grouped})
    if not blocks:
        raise StatsError("no observations")
    observations: dict[int, dict[str, float]] = {}
    for block in blocks:
        values = {}
        for config in configs:
            trials = grouped.get((block, config), [])
            if not trials:
                if require_balanced:
                    raise StatsError(f"block {block} is missing configuration {config}")
                continue
            values[config] = statistics.median(trials)
        observations[block] = values
    if require_balanced:
        expected = set(configs)
        for block, values in observations.items():
            if set(values) != expected:
                raise StatsError(f"block {block} is incomplete: {sorted(values)}")
    return observations


def _percentile(sorted_values: list[float], q: float) -> float:
    if not sorted_values:
        raise StatsError("empty bootstrap distribution")
    index = int(q * (len(sorted_values) - 1))
    return sorted_values[index]


def bootstrap_ci(values: list[float], statistic=statistics.median, *,
                  n_boot: int = 10000, seed: int = 1,
                  alpha: float = 0.05) -> tuple[float, float]:
    if not values:
        raise StatsError("cannot bootstrap an empty sample")
    if n_boot < 100:
        raise StatsError("n_boot must be at least 100")
    rnd = random.Random(seed)
    stats = []
    for _ in range(n_boot):
        sample = [values[rnd.randrange(len(values))] for _ in values]
        stats.append(statistic(sample))
    stats.sort()
    return _percentile(stats, alpha / 2), _percentile(stats, 1 - alpha / 2)


def paired_effect(observations: dict[int, dict[str, float]], config: str,
                  baseline: str = "A", n_boot: int = 10000,
                  seed: int = 1) -> dict:
    if config not in {cfg for values in observations.values() for cfg in values}:
        raise StatsError(f"configuration not observed: {config}")
    if baseline not in {cfg for values in observations.values() for cfg in values}:
        raise StatsError(f"baseline not observed: {baseline}")
    ratios = []
    blocks = []
    for block in sorted(observations):
        values = observations[block]
        if baseline not in values or config not in values:
            raise StatsError(f"block {block} lacks {baseline} or {config}")
        base = values[baseline]
        ratios.append(values[config] / base)
        blocks.append(block)
    if not ratios:
        raise StatsError("no paired ratios")
    median_ratio = statistics.median(ratios)
    geo_ratio = math.exp(sum(math.log(r) for r in ratios) / len(ratios))
    med_lo, med_hi = bootstrap_ci(ratios, statistics.median, n_boot=n_boot, seed=seed)
    geo_lo, geo_hi = bootstrap_ci(
        ratios, lambda sample: math.exp(sum(math.log(r) for r in sample) / len(sample)),
        n_boot=n_boot, seed=seed)
    improvements = sum(1 for r in ratios if r < 1)
    degradations = sum(1 for r in ratios if r > 1)
    return {
        "config": config,
        "baseline": baseline,
        "n_blocks": len(ratios),
        "block_ids": blocks,
        "block_ratios": ratios,
        "median_ratio": median_ratio,
        "geometric_mean_ratio": geo_ratio,
        "ci95_median_ratio": [med_lo, med_hi],
        "ci95_geometric_mean_ratio": [geo_lo, geo_hi],
        "median_delta_pct": 100.0 * (median_ratio - 1.0),
        "geometric_mean_delta_pct": 100.0 * (geo_ratio - 1.0),
        "ci95_median_delta_pct": [100.0 * (med_lo - 1.0), 100.0 * (med_hi - 1.0)],
        "improvement_blocks": improvements,
        "degradation_blocks": degradations,
        "tie_blocks": len(ratios) - improvements - degradations,
        "sign_consistency": max(improvements, degradations) / len(ratios),
    }


def classify_effect(effect: dict, aa_effect: dict | None = None, *,
                    practical_threshold: float = PRACTICAL_THRESHOLD,
                    noise_threshold: float = NOISE_THRESHOLD,
                    aa_max_ci_width: float = 0.50,
                    min_blocks: int = MIN_BLOCKS) -> dict:
    """Classify one paired effect with explicit evidence labels.

    A/A is an identical-binary control.  It is used as a noise gate, not as a
    second treatment.  Labels are deliberately conservative with few blocks.
    """
    reasons = []
    if effect["n_blocks"] < min_blocks:
        return {"classification": "requires_remeasurement",
                "reasons": [f"only {effect['n_blocks']} complete blocks"]}
    if aa_effect is not None:
        aa_median = aa_effect["median_ratio"]
        aa_lo, aa_hi = aa_effect["ci95_median_ratio"]
        if abs(aa_median - 1.0) > noise_threshold:
            reasons.append(
                f"A/A median drift {100*(aa_median-1):+.1f}% exceeds "
                f"{100*noise_threshold:.1f}%")
        if aa_hi - aa_lo > aa_max_ci_width:
            reasons.append(
                f"A/A CI width {100*(aa_hi-aa_lo):.1f}% exceeds "
                f"{100*aa_max_ci_width:.1f}%")
        if reasons:
            return {"classification": "high_noise", "reasons": reasons}

    lo, hi = effect["ci95_median_ratio"]
    median = effect["median_ratio"]
    if hi < 1.0 - practical_threshold:
        classification = "confirmed_profitable"
    elif lo > 1.0 + practical_threshold:
        classification = "confirmed_harmful"
    elif lo >= 1.0 - practical_threshold and hi <= 1.0 + practical_threshold:
        classification = "neutral"
    else:
        classification = "inconclusive"
    if classification == "confirmed_profitable" and effect["sign_consistency"] < 0.8:
        classification = "inconclusive"
        reasons.append("sign consistency below 80%")
    if classification == "confirmed_harmful" and effect["sign_consistency"] < 0.8:
        classification = "inconclusive"
        reasons.append("sign consistency below 80%")
    if not reasons:
        reasons.append(
            f"median ratio {median:.4f}, 95% CI [{lo:.4f}, {hi:.4f}], "
            f"practical threshold +/-{100*practical_threshold:.0f}%")
    return {"classification": classification, "reasons": reasons}


def summarize_measurement(rows: list[dict], configs: list[str], *,
                          n_boot: int = 10000, seed: int = 1,
                          practical_threshold: float = PRACTICAL_THRESHOLD,
                          noise_threshold: float = NOISE_THRESHOLD) -> dict:
    observations = process_observations(rows, configs)
    effects = {}
    for config in configs:
        if config == "A":
            continue
        effects[config] = paired_effect(observations, config, "A",
                                        n_boot=n_boot, seed=seed)
    aa = effects.get("AA")
    classifications = {}
    for config, effect in effects.items():
        classifications[config] = classify_effect(
            effect, aa, practical_threshold=practical_threshold,
            noise_threshold=noise_threshold)
    return {
        "observations": {str(block): values for block, values in observations.items()},
        "effects": effects,
        "classifications": classifications,
        "thresholds": {
            "practical_relative": practical_threshold,
            "aa_noise_relative": noise_threshold,
            "aa_max_ci_width": 0.50,
            "min_blocks": MIN_BLOCKS,
        },
    }


def atomic_write_json(path: Path, data) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    fd, temp_name = tempfile.mkstemp(prefix=f".{path.name}.", suffix=".tmp",
                                     dir=str(path.parent))
    try:
        with os.fdopen(fd, "w", encoding="utf-8", newline="\n") as f:
            json.dump(data, f, indent=2, ensure_ascii=True)
            f.write("\n")
            f.flush()
            os.fsync(f.fileno())
        os.replace(temp_name, path)
    finally:
        if os.path.exists(temp_name):
            os.unlink(temp_name)


def atomic_write_csv(path: Path, fieldnames: list[str], rows: list[dict]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    fd, temp_name = tempfile.mkstemp(prefix=f".{path.name}.", suffix=".tmp",
                                     dir=str(path.parent))
    try:
        with os.fdopen(fd, "w", encoding="utf-8", newline="") as f:
            writer = csv.DictWriter(f, fieldnames=fieldnames)
            writer.writeheader()
            writer.writerows(rows)
            f.flush()
            os.fsync(f.fileno())
        os.replace(temp_name, path)
    finally:
        if os.path.exists(temp_name):
            os.unlink(temp_name)


def measurement_parameters(campaign: str, case: str, mode: str, n: int,
                           configs: list[str], reps: int, trials: int,
                           blocks: int, seed: int, exe_sha256: dict[str, str],
                           toolchain_manifest_sha256: str = "") -> dict:
    return {
        "campaign": campaign,
        "case": case,
        "mode": mode,
        "n": int(n),
        "configs": list(configs),
        "reps": int(reps),
        "trials": int(trials),
        "blocks": int(blocks),
        "seed": int(seed),
        "exe_sha256": dict(sorted(exe_sha256.items())),
        "toolchain_manifest_sha256": toolchain_manifest_sha256,
    }


def point_id(parameters: dict) -> str:
    import hashlib
    canonical = json.dumps(parameters, sort_keys=True, separators=(",", ":"))
    return "m-" + hashlib.sha256(canonical.encode("utf-8")).hexdigest()[:16]


def sha256_text_file(path: Path) -> str:
    """Hash text artifacts with CRLF normalized to LF for cross-checkout stability."""
    import hashlib
    digest = hashlib.sha256()
    digest.update(path.read_bytes().replace(b"\r\n", b"\n"))
    return digest.hexdigest()


def validate_completed_measurement(directory: Path, expected_parameters: dict) -> bool:
    summary_path = directory / "summary.json"
    meta_path = directory / "measurement.json"
    raw_path = directory / "raw.csv"
    if not (summary_path.is_file() and meta_path.is_file() and raw_path.is_file()):
        return False
    try:
        summary = json.loads(summary_path.read_text(encoding="utf-8"))
        meta = json.loads(meta_path.read_text(encoding="utf-8"))
    except (OSError, json.JSONDecodeError):
        return False
    if summary.get("status") != "complete":
        return False
    if meta.get("parameters") != expected_parameters:
        return False
    if summary.get("point_id") != point_id(expected_parameters):
        return False
    return True


def validate_measurement_artifacts(directory: Path, expected_parameters: dict,
                                   *, root: Path | None = None,
                                   legacy: bool = False) -> tuple[bool, list[str]]:
    """Validate a completed attempt against its raw evidence and schedule.

    This is intentionally stricter than reading summary.json['status'].
    Legacy attempts may omit newer hash fields, but still have to pass the
    structural/raw/schedule checks.
    """
    errors: list[str] = []
    if not validate_completed_measurement(directory, expected_parameters):
        return False, ["summary/manifest/point identity validation failed"]
    raw_path = directory / "raw.csv"
    summary_path = directory / "summary.json"
    meta_path = directory / "measurement.json"
    schedule_path = directory / "schedule.json"
    try:
        meta = json.loads(meta_path.read_text(encoding="utf-8"))
        summary = json.loads(summary_path.read_text(encoding="utf-8"))
        schedule = json.loads(schedule_path.read_text(encoding="utf-8"))
        rows = read_raw_csv(raw_path)
    except Exception as exc:
        return False, [f"cannot read artifacts: {exc}"]
    if meta.get("status") != "complete" or summary.get("status") != "complete":
        errors.append("status is not complete")
    configs = list(expected_parameters["configs"])
    blocks = int(expected_parameters["blocks"])
    trials = int(expected_parameters["trials"])
    if schedule.get("seed") != expected_parameters["seed"]:
        errors.append("schedule seed differs from parameters")
    if int(schedule.get("blocks", -1)) != blocks:
        errors.append("schedule block count differs from parameters")
    if sorted(schedule.get("configs", [])) != sorted(configs):
        errors.append("schedule configuration set differs from parameters")
    entries = schedule.get("schedule", [])
    if len(entries) != blocks * len(configs):
        errors.append("schedule does not contain blocks x configurations entries")
    for block in range(blocks):
        block_entries = [e for e in entries if int(e.get("block_id", -1)) == block]
        if sorted(str(e.get("config")) for e in block_entries) != sorted(configs):
            errors.append(f"block {block} does not contain each configuration once")
    try:
        observations = process_observations(rows, configs)
    except StatsError as exc:
        return False, errors + [str(exc)]
    if len(observations) != blocks:
        errors.append("raw data does not contain exactly the expected blocks")
    for block, values in observations.items():
        for config in configs:
            key = (block, config)
            trials_for_key = [r for r in rows
                              if int(r["block_id"]) == block and r["config"] == config]
            ids = sorted(int(r.get("trial", r.get("trial_id", -1)))
                         for r in trials_for_key)
            if len(ids) != trials or ids != list(range(trials)):
                errors.append(f"block {block} config {config} has invalid trial ids/count")
    stored = summary.get("process_observations", {})
    for block, values in observations.items():
        stored_block = stored.get(str(block), {})
        for config in configs:
            if config not in stored_block:
                errors.append(f"summary lacks block {block} config {config}")
            elif abs(float(stored_block[config]) - values[config]) > 1e-9:
                errors.append(f"summary observation mismatch at block {block} config {config}")
    for field in ("checksum", "verify"):
        if field not in summary:
            errors.append(f"summary lacks {field}")
    if not legacy:
        for key, file in (("raw_sha256", raw_path),
                          ("summary_sha256", summary_path),
                          ("schedule_sha256", schedule_path)):
            recorded = meta.get(key)
            if recorded:
                if recorded != sha256_text_file(file):
                    errors.append(f"{key} mismatch")
        manifest_path = meta.get("toolchain", {}).get("manifest_path")
        manifest_sha = meta.get("toolchain", {}).get("manifest_sha256")
        if manifest_path and manifest_sha and root is not None:
            mpath = Path(manifest_path)
            mpath = mpath if mpath.is_absolute() else root / mpath
            if not mpath.is_file():
                errors.append("toolchain manifest is missing")
            else:
                if sha256_text_file(mpath) != manifest_sha:
                    errors.append("toolchain manifest hash mismatch")
    return not errors, errors
