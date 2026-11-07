#!/usr/bin/env python3
"""Independently reanalyze historical R1 raw measurements with paired blocks.

Historical raw files are read-only.  Corrected analyses are written to a new
audit campaign directory.  The old summaries are never overwritten.
"""
from __future__ import annotations

import argparse
import json
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "scripts"))

import r1_stats  # noqa: E402


def load_json(path: Path):
    return json.loads(path.read_text(encoding="utf-8-sig"))


def median(values):
    import statistics
    return statistics.median(values)


def block_medians(observations: dict[int, dict[str, float]], config: str) -> list[float]:
    return [observations[b][config] for b in sorted(observations)]


def analyze_raw(raw_csv: Path, configs: list[str], case: str, mode: str,
                n: int, original_summary: dict | None, provenance: str) -> dict:
    rows = r1_stats.read_raw_csv(raw_csv)
    if "block_id" not in rows[0]:
        rows = r1_stats.infer_legacy_blocks(rows, configs)
    observations = r1_stats.process_observations(rows, configs)
    effects = {}
    for config in configs:
        if config == "A":
            continue
        effects[config] = r1_stats.paired_effect(observations, config, "A",
                                                 n_boot=10000, seed=20261107)
    aa = effects.get("AA")
    classifications = {
        config: r1_stats.classify_effect(effect, aa)
        for config, effect in effects.items()
    }
    times = {
        config: median(block_medians(observations, config)) for config in configs
    }
    original = {}
    if original_summary:
        for config, data in original_summary.get("summary", {}).items():
            if isinstance(data, dict) and "delta_pct_vs_A" in data:
                original[config] = data["delta_pct_vs_A"]
    return {
        "case": case,
        "mode": mode,
        "n": n,
        "raw_csv": str(raw_csv.relative_to(ROOT)).replace("\\", "/"),
        "configs": configs,
        "n_blocks": len(observations),
        "times_ns": times,
        "effects": effects,
        "classifications": classifications,
        "original_delta_pct_vs_A": original,
        "provenance": provenance,
        "corrected_delta_pct_vs_A": {
            config: effects[config]["median_delta_pct"]
            for config in effects
        },
    }


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--out-dir", default="results/r1/EXP-20261107-R11-audit/reanalysis")
    ap.add_argument("--json", action="store_true")
    args = ap.parse_args()
    out_dir = ROOT / args.out_dir
    out_dir.mkdir(parents=True, exist_ok=True)

    sources = [
        ("EXP-20261107-R1A", "verified base toolchain; original campaign"),
        ("EXP-20261107-R1C-offsets", "verified base toolchain; shifted-offset campaign"),
        ("EXP-20261107-R1F-patch", "local patched opt; provenance unverified"),
    ]
    points = []
    gaps = []
    for campaign, provenance in sources:
        base = ROOT / "results" / "r1" / campaign
        summary_path = base / "campaign_summary.json"
        if summary_path.is_file():
            campaign_summary = load_json(summary_path)
        else:
            fallback = []
            for path in sorted(base.glob("*/summary_*.json")):
                try:
                    fallback.append(load_json(path))
                except Exception:
                    continue
            if not fallback:
                gaps.append({"campaign": campaign,
                             "reason": "missing campaign summary and no per-point summaries"})
                continue
            campaign_summary = {"results": fallback}
        groups = {}
        for result in campaign_summary.get("results", []):
            groups.setdefault(result["raw_csv"], []).append(result)
        for result in campaign_summary.get("results", []):
            case = result["case"]
            mode = result.get("mode", "")
            n = result["n"]
            raw = ROOT / result["raw_csv"]
            if case == "known_vec":
                group = groups[result["raw_csv"]]
                if result is not group[-1]:
                    gaps.append({
                        "campaign": campaign, "case": case, "mode": mode, "n": n,
                        "raw_csv": result["raw_csv"],
                        "reason": "historical runner overwrote mode-specific raw CSV; "
                                  "only the last mode (body) survives",
                    })
                    continue
                mode = result.get("mode", "body")
            if not raw.is_file():
                gaps.append({"campaign": campaign, "case": case, "mode": mode,
                             "n": n, "reason": f"missing raw file: {raw}"})
                continue
            configs = result.get("configs") or ["A", "B", "C", "AA"]
            try:
                analyzed = analyze_raw(raw, configs, case, mode, n, result, provenance)
            except r1_stats.StatsError as exc:
                gaps.append({"campaign": campaign, "case": case, "mode": mode,
                             "n": n, "reason": f"reanalysis failed: {exc}"})
                continue
            analyzed["campaign"] = campaign
            points.append(analyzed)

    # New R1.1 measurements, if present.
    new_bases = [
        ROOT / "results" / "r1" / "EXP-20261107-R11-audit",
        ROOT / "results" / "r1" / "EXP-20261107-R11-followup",
    ]
    for new_base in new_bases:
        if not new_base.is_dir():
            continue
        for summary_path in sorted(new_base.glob("measurements/**/summary.json")):
            data = load_json(summary_path)
            raw = ROOT / data["raw_csv"]
            configs = data["configs"]
            analyzed = analyze_raw(raw, configs, data["case"], data.get("mode", ""),
                                   data["n"], data, "R1.1 corrected runner; verified toolchain")
            analyzed["campaign"] = new_base.name
            analyzed["point_id"] = data["point_id"]
            points.append(analyzed)

    result = {
        "schema_version": "1.1",
        "campaigns": [s[0] for s in sources] + [
            "EXP-20261107-R11-audit", "EXP-20261107-R11-followup"],
        "statistical_method": {
            "unit": "process-level median per configuration per randomized block",
            "effect": "paired ratio T_config/T_A within block",
            "estimate": "median block ratio; geometric mean as sensitivity",
            "uncertainty": "percentile bootstrap over whole blocks (10000 resamples)",
            "practical_threshold": r1_stats.PRACTICAL_THRESHOLD,
            "aa_noise_threshold": r1_stats.NOISE_THRESHOLD,
            "min_blocks": r1_stats.MIN_BLOCKS,
        },
        "points": points,
        "historical_gaps": gaps,
        "notes": [
            "Historical raw CSVs were read, not modified.",
            "The original summaries are retained for comparison only.",
            "Percentages are paired median deltas, not independently bootstrapped intervals.",
            "No hardware counters are used.",
        ],
    }
    r1_stats.atomic_write_json(out_dir / "audit_stats.json", result)

    lines = [
        "# R1.1 corrected paired statistics",
        "",
        "Effect is the median paired block ratio; negative is faster. "
        "Confidence intervals are block-bootstrap intervals, not separately "
        "bootstrapped A and treatment intervals.",
        "",
        "| campaign | case | mode | n | blocks | B vs A | C vs A | AA vs A | B class | C class |",
        "| --- | --- | --- | ---: | ---: | ---: | ---: | ---: | --- | --- |",
    ]
    for point in points:
        b = point["effects"].get("B", {})
        c = point["effects"].get("C", {})
        aa = point["effects"].get("AA", {})
        lines.append(
            "| {campaign} | {case} | {mode} | {n} | {blocks} | {b:+.1f}% | "
            "{c:+.1f}% | {aa:+.1f}% | {bc} | {cc} |".format(
                campaign=point["campaign"], case=point["case"],
                mode=point["mode"] or "-", n=point["n"],
                blocks=point["n_blocks"],
                b=b.get("median_delta_pct", float("nan")),
                c=c.get("median_delta_pct", float("nan")),
                aa=aa.get("median_delta_pct", float("nan")),
                bc=point["classifications"].get("B", {}).get("classification", "-"),
                cc=point["classifications"].get("C", {}).get("classification", "-")))
    if gaps:
        lines += ["", "## Historical gaps", ""]
        for gap in gaps:
            lines.append(f"- `{gap}`")
    lines += ["", "## Interpretation limits", "",
              "- Five to nine blocks give coarse intervals; small effects remain provisional.",
              "- The sweep is exploratory; intervals are not multiple-comparison adjusted.",
              "- A/A is a noise gate, not a second treatment.",
              "- Ideal-cache or hardware explanations are not tested here.", ""]
    (out_dir / "audit_stats.md").write_text("\n".join(lines), encoding="utf-8",
                                            newline="\n")
    print(f"wrote {out_dir / 'audit_stats.json'}")
    print(f"points: {len(points)}; gaps: {len(gaps)}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
