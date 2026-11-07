#!/usr/bin/env python3
"""Offline comparison of simple LoopFusion profitability rules on R1-A data.

The oracle is the measured unrestricted-fusion outcome (B) for a legal
candidate.  This is an in-sample engineering comparison, not a trained model and
not a substitute for held-out benchmark families.
"""
from __future__ import annotations

import argparse
import json
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
KERNELS = {
    "read_read": "rr_kernel",
    "read_read_offset": "rr_offset_kernel",
    "shifted_reuse": "shift_kernel",
    "shifted_reuse_k2": "shift_k2_kernel",
    "shifted_reuse_k4": "shift_k4_kernel",
    "shifted_reuse_k8": "shift_k8_kernel",
    "simd_metadata": "simd_meta_kernel",
    "simd_metadata_scalar": "simd_meta_scalar_kernel",
    "simd_reduction": "simd_kernel",
    "producer_consumer": "pc_kernel",
    "producer_consumer_split": "pc_split_kernel",
}
REUSE = {
    "read_read": "exact",
    "read_read_offset": "exact",
    "shifted_reuse": "shifted",
    "shifted_reuse_k2": "shifted",
    "shifted_reuse_k4": "shifted",
    "shifted_reuse_k8": "shifted",
    "simd_metadata": "exact",
    "simd_metadata_scalar": "exact",
    "simd_reduction": "exact",
    "producer_consumer": "raw",
    "producer_consumer_split": "raw",
}
ELEMENT_BYTES = 8


def label(delta: float, lo: float, hi: float) -> str:
    if delta < -3.0 and hi < 0.0:
        return "profitable"
    if delta > 3.0 and lo > 0.0:
        return "harmful"
    return "neutral"


def ci_pct(summary, key, base):
    c = summary[key]
    return (c["ci95_lo"] / base * 100.0 - 100.0,
            c["ci95_hi"] / base * 100.0 - 100.0)


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--campaign", default="EXP-20261107-R1A")
    args = ap.parse_args()
    base = ROOT / "results" / "r1" / args.campaign
    campaign_dirs = [base]
    offset_dir = ROOT / "results" / "r1" / "EXP-20261107-R1C-offsets"
    if offset_dir.is_dir() and offset_dir != base:
        campaign_dirs.append(offset_dir)
    results = []
    analysis = {}
    for directory in campaign_dirs:
        summary_path = directory / "campaign_summary.json"
        if summary_path.is_file():
            results.extend(json.loads(summary_path.read_text(encoding="utf-8"))["results"])
        analysis_path = directory / "analysis.json"
        if analysis_path.is_file():
            analysis.update(json.loads(analysis_path.read_text(encoding="utf-8")))

    points = []
    for result in results:
        case = result["case"]
        if case not in KERNELS or result.get("mode"):
            continue
        kernel = KERNELS[case]
        cfg = analysis.get(case, {}).get("configs", {})
        if not cfg:
            continue
        a = cfg["A"]["remarks"]["per_function"].get(kernel, {})
        b = cfg["B"]["remarks"]["per_function"].get(kernel, {})
        c = cfg["C"]["remarks"]["per_function"].get(kernel, {})
        legal = b.get("FuseCounter", 0) > 0
        current = c.get("FuseCounter", 0) > 0
        a_ymm = cfg["A"]["asm_counts"]["ymm"]
        c_ymm = cfg["C"]["asm_counts"]["ymm"]
        compatible = not (a_ymm > 0 and c_ymm == 0)
        s = result["summary"]
        base_ns = s["A"]["median_ns"]
        b_delta = s["B"]["delta_pct_vs_A"]
        b_lo, b_hi = ci_pct(s, "B", base_ns)
        points.append({
            "case": case,
            "n": result["n"],
            "footprint_bytes": result["n"] * ELEMENT_BYTES,
            "reuse": REUSE[case],
            "legal": legal,
            "current_fuses": current,
            "vectorization_compatible": compatible,
            "b_delta": b_delta,
            "b_ci": [b_lo, b_hi],
            "label": ("illegal" if not legal else label(b_delta, b_lo, b_hi)),
        })

    rules = {
        "always_legal": lambda p: p["legal"],
        "current_model": lambda p: p["current_fuses"],
        "footprint_gt_256KiB": lambda p: p["legal"] and p["footprint_bytes"] > 256 * 1024,
        "footprint_gt_1MiB": lambda p: p["legal"] and p["footprint_bytes"] > 1024 * 1024,
        "footprint_gt_8MiB": lambda p: p["legal"] and p["footprint_bytes"] > 8 * 1024 * 1024,
        "vectorization_compatible": lambda p: p["legal"] and p["vectorization_compatible"],
        "compatible_or_gt_8MiB": lambda p: p["legal"] and (
            p["vectorization_compatible"] or p["footprint_bytes"] > 8 * 1024 * 1024),
        "current_plus_shifted": lambda p: p["current_fuses"] or (
            p["legal"] and p["reuse"] == "shifted"),
        "shifted_and_compatible_or_large": lambda p: p["legal"] and (
            p["reuse"] in {"exact", "shifted"}) and (
            p["vectorization_compatible"] or p["footprint_bytes"] > 8 * 1024 * 1024),
        "two_signal_256KiB": lambda p: p["legal"] and (
            (p["vectorization_compatible"] and p["footprint_bytes"] > 256 * 1024)
            or ((not p["vectorization_compatible"])
                and p["footprint_bytes"] > 8 * 1024 * 1024)),
        "two_signal_1MiB": lambda p: p["legal"] and (
            (p["vectorization_compatible"] and p["footprint_bytes"] > 1024 * 1024)
            or ((not p["vectorization_compatible"])
                and p["footprint_bytes"] > 8 * 1024 * 1024)),
    }
    rows = []
    for name, rule in rules.items():
        fp = fn = tp = tn = 0
        regret = 0.0
        for p in points:
            if p["label"] == "illegal":
                continue
            fuse = bool(rule(p))
            if fuse and p["label"] == "harmful":
                fp += 1
                regret += abs(p["b_delta"])
            elif not fuse and p["label"] == "profitable":
                fn += 1
                regret += abs(p["b_delta"])
            elif fuse and p["label"] == "profitable":
                tp += 1
            elif not fuse and p["label"] == "harmful":
                tn += 1
        rows.append({"rule": name, "false_positive": fp, "false_negative": fn,
                     "profitable_accepted": tp, "harmful_rejected": tn,
                     "runtime_weighted_regret_pct": round(regret, 1)})

    # Per-case outcomes for the most plausible extension: current model plus
    # shifted affine reuse. This is the only rule that directly addresses a
    # confirmed Stage 0 false negative without changing vectorization policy.
    per_case = {}
    for p in points:
        if p["label"] == "illegal":
            continue
        fuse = rules["current_plus_shifted"](p)
        per_case.setdefault(p["case"], []).append({
            "n": p["n"], "label": p["label"], "fuse": fuse,
            "b_delta": round(p["b_delta"], 1),
        })

    out = {
        "campaign": args.campaign,
        "points": len(points),
        "legal_points": sum(1 for p in points if p["label"] != "illegal"),
        "label_counts": {
            name: sum(1 for p in points if p["label"] == name)
            for name in ("profitable", "harmful", "neutral", "illegal")
        },
        "rules": rows,
        "current_plus_shifted_per_case": per_case,
        "notes": [
            "The oracle is measured B vs A; neutral labels include effects within the A/A noise scale.",
            "This is in-sample; no held-out benchmark family is available in this campaign.",
            "A deployable rule also needs a static estimate of footprint and vectorization compatibility.",
            "No rule here is proposed for upstream adoption.",
        ],
    }
    path = base / "predictor.json"
    path.write_text(json.dumps(out, indent=2) + "\n", encoding="utf-8", newline="\n")
    lines = [
        f"# R1-D simple-rule comparison ({args.campaign})",
        "",
        f"Legal measured points: {out['legal_points']} (profitable "
        f"{out['label_counts']['profitable']}, harmful "
        f"{out['label_counts']['harmful']}, neutral "
        f"{out['label_counts']['neutral']}; illegal "
        f"{out['label_counts']['illegal']}).",
        "",
        "| rule | false positives | false negatives | profitable accepted | harmful rejected | regret (%) |",
        "| --- | ---: | ---: | ---: | ---: | ---: |",
    ]
    for row in rows:
        lines.append(f"| {row['rule']} | {row['false_positive']} | "
                     f"{row['false_negative']} | {row['profitable_accepted']} | "
                     f"{row['harmful_rejected']} | "
                     f"{row['runtime_weighted_regret_pct']} |")
    lines += ["", "In-sample only; no held-out family and no upstream proposal.", ""]
    (base / "predictor.md").write_text("\n".join(lines), encoding="utf-8", newline="\n")
    print(f"wrote {path}")
    print((base / "predictor.md").read_text(encoding="utf-8"))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
