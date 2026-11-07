#!/usr/bin/env python3
"""R1.2 held-out case study on the two TSVC legal opportunities.

This is deliberately small: TSVC s233 (B/C fuse, profitable) and s2233
(B fuses, C rejects, unrestricted fusion harmful).  It is not a broad held-out
family evaluation and is labelled accordingly.
"""
from __future__ import annotations

import argparse
import json
import statistics
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "scripts"))
sys.path.insert(0, str(ROOT / "scripts" / "research"))

import r1_features  # noqa: E402
import r1_predictor  # noqa: E402
import r1_stats  # noqa: E402


def load(path: Path):
    return json.loads(path.read_text(encoding="utf-8-sig"))


def median_times(summary: dict) -> dict:
    obs = summary["process_observations"]
    return {cfg: statistics.median(float(obs[b][cfg]) for b in obs)
            for cfg in summary["configs"]}


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--campaign", default="EXP-20261107-R12-tsvc-pinned")
    args = ap.parse_args()
    base = ROOT / "results" / "r1" / args.campaign
    summary_path = base / "campaign_summary.json"
    if not summary_path.is_file():
        raise SystemExit(f"missing {summary_path}")
    campaign = load(summary_path)
    points = []
    for result in campaign["results"]:
        case = result["case"]
        kernel = case.replace("tsvc_", "")
        features = r1_features.extract(
            base / case, ROOT / ".tools" / "llvm-build" / "bin" / "opt.exe",
            256, r1_features.cache_sizes(), "", base / "features" / f"{case}.early.ll",
            kernel)
        static = features["static"]
        static["metadata_conflict"] = False
        if kernel == "s233":
            static["reuse_kind"] = "exact"
        else:
            static["reuse_kind"] = "unknown"
        static["feature_confidence"] = "manual-source-audited"
        scenario = dict(features["scenario"])
        scenario["n"] = 256
        scenario["bytes_per_stream"] = 256 * static["element_bytes"]
        scenario["streams"] = static["memory"]["streams"]
        scenario["footprint_proxy_bytes"] = (scenario["bytes_per_stream"]
                                             * scenario["streams"])
        scenario["bytes_allocated"] = "unknown"
        scenario["working_set_estimate"] = "unknown"
        features = dict(features, scenario=scenario, static=static)
        times = median_times(result)
        b_class = result["classifications"]["B"]["classification"]
        legal_class = ("legal_and_fused" if kernel == "s233"
                       else "legal_but_rejected")
        points.append({
            "key": case,
            "case": case,
            "legal": True,
            "legal_class": legal_class,
            "label": b_class,
            "ta": times["A"],
            "tb": times["B"],
            "tc": times["C"],
            "features": features,
            "diagnostic": {"b_fused": True,
                           "c_fused": legal_class == "legal_and_fused"},
        })
    decisions = {
        "current_model": {p["key"]: p["diagnostic"]["c_fused"] for p in points},
        "no_fusion": {p["key"]: False for p in points},
        "always_fuse": {p["key"]: True for p in points},
        "metadata_guard": {p["key"]: p["diagnostic"]["c_fused"]
                           and p["features"]["static"]["metadata_conflict"] is not True
                           for p in points},
        "footprint_256k": {p["key"]: bool(
            p["features"]["scenario"]["footprint_proxy_bytes"]
            and p["features"]["scenario"]["footprint_proxy_bytes"] > 256 * 1024)
            for p in points},
    }
    policies = {}
    for name, values in decisions.items():
        policies[name] = {
            "all_points": r1_predictor.aggregate(points, values),
            "confirmed_only": r1_predictor.aggregate(
                points, values,
                label_filter={"confirmed_profitable", "confirmed_harmful", "neutral"}),
        }
    result = {
        "schema_version": "1.1",
        "campaign": args.campaign,
        "dataset": "two TSVC legal opportunities; not a broad held-out family set",
        "points": [{k: p[k] for k in ("key", "case", "legal_class", "label",
                                      "ta", "tb", "tc")} for p in points],
        "policies": policies,
        "notes": [
            "s233: current model accepts and is profitable.",
            "s2233: current model rejects; unrestricted fusion is harmful.",
            "Only two legal real-workload candidates were found in TSVC/PolyBench discovery.",
            "This is a case study, not evidence of broad generalization.",
        ],
    }
    r1_stats.atomic_write_json(base / "heldout_eval.json", result)
    lines = [
        "# R1.2 held-out TSVC case study",
        "",
        "Two legal opportunities found by discovery; not a broad held-out family set.",
        "",
        "| case | classification | B vs A | C vs A | label (B) |",
        "| --- | --- | ---: | ---: | --- |",
    ]
    for p in points:
        lines.append(
            f"| {p['case']} | {p['legal_class']} | "
            f"{100*(p['tb']/p['ta']-1):+.1f}% | {100*(p['tc']/p['ta']-1):+.1f}% | "
            f"{p['label']} |")
    lines += ["", "| policy | FP | missed profitable | regret (ms) | geomean speedup | worst regression |",
              "| --- | ---: | ---: | ---: | ---: | ---: |"]
    for name, data in policies.items():
        a = data["confirmed_only"]
        lines.append(
            f"| {name} | {a['false_positives']} | {a['missed_confirmed_profitable']} | "
            f"{(a['absolute_regret_ns'] or 0)/1e6:.6f} | "
            f"{a['geometric_mean_speedup_vs_A'] or 0:.4f} | "
            f"{a['worst_regression_pct_vs_A']:.1f}% |")
    lines += ["", "Limits: two cases, one machine, no independent review.", ""]
    (base / "heldout_eval.md").write_text("\n".join(lines), encoding="utf-8",
                                          newline="\n")
    print(f"wrote {base / 'heldout_eval.json'}")
    print("\n".join(lines))
    return 0


if __name__ == "__main__":
    sys.exit(main())
