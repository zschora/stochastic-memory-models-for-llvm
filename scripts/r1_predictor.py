#!/usr/bin/env python3
"""R1.1 policy screen with strict feature-availability categories.

Decision inputs are either:
  static    - available before the LoopFusion profitability decision;
  scenario  - benchmark/runtime context, clearly labelled and not deployable by
              itself;
  baseline  - the current compiler's own decision, available at decision time.

Post-fusion assembly, measured runtimes and YMM counts are used only to score
policies after the decision.  They never enter a policy input.
"""
from __future__ import annotations

import argparse
import json
import math
import statistics
import sys
from collections import defaultdict
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "scripts"))

import r1_features  # noqa: E402
import r1_experiments  # noqa: E402
import r1_stats  # noqa: E402

AUDIT_CAMPAIGN = "EXP-20261107-R11-audit"
FEATURE_DIR = "features_v3"
POLICY_KEYS = {
    "static.metadata_conflict",
    "static.reuse_kind",
    "scenario.footprint_proxy_bytes",
    "scenario.l3_bytes",
    "scenario.n",
    "baseline.current_model_fuses",
}


def load_json(path: Path):
    return json.loads(path.read_text(encoding="utf-8-sig"))


def closed_interval(point):
    ci = point.get("ci95_median_ratio", [None, None])
    return ci[0], ci[1]


def case_dir_for(point: dict) -> Path:
    campaign = point["campaign"]
    return ROOT / "results" / "r1" / campaign / point["case"]


def feature_record(audit_dir: Path, campaign: str, case: str, mode: str, n: int) -> dict:
    cache_dir = audit_dir / FEATURE_DIR / case / f"mode-{mode or 'default'}" / f"n-{n}"
    path = cache_dir / "features.json"
    if path.is_file():
        return load_json(path)
    case_dir = ROOT / "results" / "r1" / campaign / case
    if not case_dir.is_dir():
        case_dir = audit_dir / case
    early = audit_dir / FEATURE_DIR / "ir" / f"{case}-{mode or 'default'}.early.ll"
    data = r1_features.extract(case_dir, ROOT / ".tools" / "llvm-build" / "bin" / "opt.exe",
                              n, r1_features.cache_sizes(), mode, early)
    r1_stats.atomic_write_json(path, data)
    return data


def fusion_lookup() -> dict:
    lookup = {}
    for campaign in r1_experiments.CAMPAIGN_ROLES:
        path = ROOT / "results" / "r1" / campaign / "analysis.json"
        if path.is_file():
            lookup[campaign] = load_json(path)
    return lookup


LEGALITY_EVENTS = {
    "InvalidDependencies", "InvalidCandidate", "NonEqualTripCount",
    "UnknownTripCount", "UncomputableTripCount", "NotRotated",
    "NotSimplifiedForm", "ContainsAtomicAccess", "ContainsVolatileAccess",
    "MayThrowException", "NonIdenticalGuards", "NonEmptyPreheader",
    "NonEmptyExitBlock", "NonEmptyGuardBlock", "AddressTakenBB",
}


def classify_legality(lookup: dict, point: dict, kernel: str | None) -> dict:
    """Classify legality/fusion from remarks; never infer illegality from silence."""
    if not kernel:
        return {"class": "unknown_or_not_evaluated",
                "reason": "no kernel function resolved", "b_events": {},
                "c_events": {}}
    data = lookup.get(point["campaign"], {}).get(point["case"], {})
    configs = data.get("configs", {})
    def events(config):
        cfg = configs.get(config, {})
        return cfg.get("remarks", {}).get("per_function", {}).get(kernel, {})
    b_events = events("B")
    c_events = events("C")
    b_fused = b_events.get("FuseCounter", 0) > 0
    c_fused = c_events.get("FuseCounter", 0) > 0
    if b_fused and c_fused:
        return {"class": "legal_and_fused", "reason": "B and C both emit FuseCounter",
                "b_events": b_events, "c_events": c_events}
    if b_fused and not c_fused:
        return {"class": "legal_but_rejected",
                "reason": "B fuses; C rejects (profitability)",
                "b_events": b_events, "c_events": c_events}
    if any(name in b_events for name in LEGALITY_EVENTS):
        return {"class": "illegal", "reason": "legality/eligibility remark",
                "b_events": b_events, "c_events": c_events}
    return {"class": "unknown_or_not_evaluated",
            "reason": "no fusion and no explicit legality remark",
            "b_events": b_events, "c_events": c_events}


def policy_decisions(features: dict, baseline_fuses: bool, legal: bool) -> dict:
    static = features["static"]
    scenario = features["scenario"]
    conflict = static.get("metadata_conflict")
    footprint = scenario.get("footprint_proxy_bytes")
    if footprint is None:
        footprint = scenario.get("footprint_bytes")
    l3 = scenario.get("l3_bytes")
    large = footprint is not None and l3 is not None and footprint > l3
    # Decision functions receive only static/scenario/baseline facts.
    decisions = {
        "current_model": baseline_fuses,
        "metadata_guard": baseline_fuses and conflict is not True,
        "metadata_guard_or_large": baseline_fuses and (conflict is not True or large),
        "footprint_256k": legal and footprint is not None and footprint > 256 * 1024,
        "two_signal": legal and (
            (conflict is not True and footprint is not None and footprint > 256 * 1024)
            or (conflict is True and large)),
    }
    return decisions


def aggregate(points: list[dict], decisions: dict, label_filter: set[str] | None = None) -> dict:
    total_regret = 0.0
    total_baseline = 0.0
    total_oracle = 0.0
    log_speedups = []
    worst = 0.0
    fp = fn = neutral = inconclusive = 0
    considered = 0
    family = defaultdict(lambda: {"regret": 0.0, "baseline": 0.0,
                                  "points": 0, "fp": 0, "fn": 0})
    for point in points:
        if not point.get("legal", True):
            continue
        label = point.get("label", "inconclusive")
        if label_filter is not None and label not in label_filter:
            inconclusive += 1
            continue
        considered += 1
        ta, tb = point["ta"], point["tb"]
        fuse = bool(decisions.get(point["key"], False))
        policy = tb if fuse else ta
        oracle = min(ta, tb)
        regret = policy - oracle
        total_regret += regret
        total_baseline += ta
        total_oracle += oracle
        log_speedups.append(math.log(ta / policy))
        worst = max(worst, 100.0 * (policy / ta - 1.0))
        fam = family[point["case"]]
        fam["regret"] += regret
        fam["baseline"] += ta
        fam["points"] += 1
        if label == "confirmed_harmful" and fuse:
            fp += 1
            fam["fp"] += 1
        elif label == "confirmed_profitable" and not fuse:
            fn += 1
            fam["fn"] += 1
        elif label == "neutral":
            neutral += 1
        elif label in {"inconclusive", "high_noise", "requires_remeasurement"}:
            inconclusive += 1
    return {
        "points_considered": considered,
        "false_positives": fp,
        "missed_confirmed_profitable": fn,
        "neutral_points": neutral,
        "inconclusive_or_noisy_points": inconclusive,
        "absolute_regret_ns": total_regret,
        "mean_regret_ns_per_point": total_regret / considered if considered else None,
        "relative_regret_to_baseline_total": (total_regret / total_baseline
                                              if total_baseline else None),
        "relative_regret_to_oracle_total": (total_regret / total_oracle
                                            if total_oracle else None),
        "geometric_mean_speedup_vs_A": (math.exp(sum(log_speedups) / len(log_speedups))
                                        if log_speedups else None),
        "worst_regression_pct_vs_A": worst,
        "family": {name: dict(values) for name, values in family.items()},
    }


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--audit-dir", default=f"results/r1/{AUDIT_CAMPAIGN}")
    ap.add_argument("--out", default="")
    ap.add_argument("--markdown-out", default="")
    args = ap.parse_args()
    audit_dir = ROOT / args.audit_dir
    stats_path = audit_dir / "reanalysis" / "audit_stats.json"
    if not stats_path.is_file():
        raise SystemExit(f"missing audit stats: {stats_path}")
    audit = load_json(stats_path)
    lookup = fusion_lookup()
    selected, excluded, selection_manifest = r1_experiments.select_baseline_points(
        audit["points"])

    feature_cache = {}
    prepared = []
    for point in selected:
        features = feature_cache.get((point["case"], point.get("mode", "")))
        if features is None:
            features = feature_record(audit_dir, point["campaign"], point["case"],
                                      point.get("mode", ""), point["n"])
            feature_cache[(point["case"], point.get("mode", ""))] = features
        scenario = dict(features["scenario"])
        static = features["static"]
        scenario["n"] = point["n"]
        memory = static.get("memory", {})
        element_bytes = static.get("element_bytes")
        streams = memory.get("streams")
        per_stream = (point["n"] * element_bytes
                      if point["n"] and element_bytes else None)
        proxy = per_stream * streams if (per_stream and streams) else None
        scenario["n_elements"] = point["n"]
        scenario["element_bytes"] = element_bytes
        scenario["bytes_per_stream"] = per_stream
        scenario["streams"] = streams
        scenario["footprint_proxy_bytes"] = proxy
        scenario["reused_bytes"] = (per_stream if static.get("reuse_kind") in
                                    {"exact", "shifted"} else None)
        scenario["bytes_allocated"] = "unknown"
        scenario["working_set_estimate"] = "unknown"
        features = dict(features, scenario=scenario)
        kernel = static.get("kernel_function")
        legality = classify_legality(lookup, point, kernel)
        legal_class = legality["class"]
        legal_ok = legal_class in {"legal_and_fused", "legal_but_rejected"}
        b_class = point.get("classifications", {}).get("B", {}).get(
            "classification", "inconclusive")
        allowed_labels = {"confirmed_profitable", "confirmed_harmful", "neutral",
                          "inconclusive", "high_noise", "requires_remeasurement"}
        if legal_class == "illegal":
            label = "illegal"
        elif legal_class == "unknown_or_not_evaluated":
            label = "unknown_or_not_evaluated"
        elif b_class in allowed_labels:
            label = b_class
        else:
            label = "inconclusive"
        point = dict(point)
        point["features"] = features
        point["legal"] = legal_ok
        point["legal_class"] = legal_class
        point["legality_evidence"] = legality
        point["label"] = label
        point["ta"] = point["times_ns"]["A"]
        point["tb"] = point["times_ns"]["B"] if legal_ok else point["times_ns"]["A"]
        point["key"] = f"{point['campaign']}:{point['case']}:{point.get('mode','')}:{point['n']}"
        point["diagnostic"] = {
            "b_fused": legality["b_events"].get("FuseCounter", 0) > 0,
            "c_fused": legality["c_events"].get("FuseCounter", 0) > 0,
            "b_events": legality["b_events"], "c_events": legality["c_events"],
        }
        prepared.append(point)

    decisions = {}
    for point in prepared:
        d = policy_decisions(point["features"], point["legal_class"] == "legal_and_fused",
                             point["legal"])
        for name, value in d.items():
            decisions.setdefault(name, {})[point["key"]] = value
    policies = {}
    for name, values in decisions.items():
        policies[name] = {
            "description": {
                "current_model": "baseline current exact-reuse decision (available at decision time)",
                "metadata_guard": "current decision plus static explicit metadata compatibility",
                "metadata_guard_or_large": "metadata guard with scenario footprint > L3 exception",
                "footprint_256k": "legal candidate and scenario footprint proxy > 256 KiB",
                "two_signal": "metadata conflict + footprint-proxy/L3 two-signal rule",
            }[name],
            "all_points": aggregate(prepared, values),
            "confirmed_only": aggregate(
                prepared, values,
                label_filter={"confirmed_profitable", "confirmed_harmful", "neutral"}),
        }

    result = {
        "schema_version": "1.1",
        "audit_dir": args.audit_dir,
        "dataset_selection": selection_manifest,
        "feature_categories": {
            "static": "pre-treatment IR; available before the profitability decision",
            "scenario": "benchmark/runtime context; not deployable by itself",
            "baseline": "current compiler decision; available at decision time",
            "diagnostic": "post-fusion assembly/measurements; scoring only",
        },
        "decision_feature_allowlist": sorted(POLICY_KEYS),
        "points": prepared,
        "policies": policies,
        "notes": [
            "In-sample exploratory screen; no held-out benchmark family.",
            "Only baseline-eligible, verified unpatched campaigns are selected; R1-F is excluded.",
            "No policy uses post-fusion YMM counts, measured runtimes or final assembly.",
            "Evidence labels come directly from r1_stats; high_noise is not promoted.",
            "Regret is absolute ns above the per-point oracle min(A,B), equal-case weighted.",
            "Confirmed-only metrics exclude high-noise/inconclusive labels from FP/FN and regret.",
            "A 256 KiB or L3 threshold is a scenario rule, not a deployable cost model.",
        ],
    }
    out = Path(args.out) if args.out else audit_dir / "predictor_v3.json"
    out = out if out.is_absolute() else ROOT / out
    r1_stats.atomic_write_json(out, result)
    selection_path = audit_dir / "predictor_v3_selection.json"
    r1_stats.atomic_write_json(selection_path, selection_manifest)
    md_out = (Path(args.markdown_out) if args.markdown_out
              else audit_dir / "predictor_v3.md")
    md_out = md_out if md_out.is_absolute() else ROOT / md_out

    lines = [
        "# R1.1.1 predictor screen v3",
        "",
        "Decision features are static or scenario-labelled; diagnostic facts are "
        "used only for scoring. Baseline selection excludes the R1-F patched "
        "toolchain. This is in-sample and exploratory.",
        "",
        "| policy | FP | missed profitable | regret (ms) | rel. regret | geomean speedup | worst regression |",
        "| --- | ---: | ---: | ---: | ---: | ---: | ---: |",
    ]
    for name, data in policies.items():
        a = data["confirmed_only"]
        lines.append(
            f"| {name} | {a['false_positives']} | {a['missed_confirmed_profitable']} | "
            f"{(a['absolute_regret_ns'] or 0)/1e6:.3f} | "
            f"{100*(a['relative_regret_to_baseline_total'] or 0):.2f}% | "
            f"{a['geometric_mean_speedup_vs_A'] or 0:.4f} | "
            f"{a['worst_regression_pct_vs_A']:.1f}% |")
    lines += ["", "Feature availability:", ""]
    for category, text in result["feature_categories"].items():
        lines.append(f"- **{category}**: {text}")
    lines += ["", "Limits: no held-out families, no workload-frequency weighting, "
              "and no deployable claim.", ""]
    md_out.write_text("\n".join(lines), encoding="utf-8", newline="\n")
    print(f"wrote {out}")
    print("\n".join(lines))
    return 0


if __name__ == "__main__":
    sys.exit(main())
