#!/usr/bin/env python3
"""Build human-readable R1-A tables from campaign_summary.json."""
from __future__ import annotations

import argparse
import csv
import json
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--campaign", default="EXP-20261107-R1A")
    args = ap.parse_args()
    base = ROOT / "results" / "r1" / args.campaign
    summary_path = base / "campaign_summary.json"
    if not summary_path.is_file():
        raise SystemExit(f"missing {summary_path}")
    data = json.loads(summary_path.read_text(encoding="utf-8"))
    rows = []
    for result in data.get("results", []):
        s = result["summary"]
        rows.append({
            "case": result["case"],
            "mode": result.get("mode", ""),
            "n": result["n"],
            "A_ns": s["A"]["median_ns"],
            "B_ns": s["B"]["median_ns"],
            "C_ns": s["C"]["median_ns"],
            "AA_ns": s.get("AA", {}).get("median_ns", ""),
            "B_vs_A_pct": s["B"].get("delta_pct_vs_A", ""),
            "C_vs_A_pct": s["C"].get("delta_pct_vs_A", ""),
            "C_vs_B_pct": s["C"].get("delta_pct_vs_B", ""),
            "AA_vs_A_pct": s.get("AA", {}).get("delta_pct_vs_A", ""),
            "A_ci_lo": s["A"]["ci95_lo"], "A_ci_hi": s["A"]["ci95_hi"],
            "C_ci_lo": s["C"]["ci95_lo"], "C_ci_hi": s["C"]["ci95_hi"],
        })
    csv_path = base / "table.csv"
    with open(csv_path, "w", newline="", encoding="utf-8") as f:
        writer = csv.DictWriter(f, fieldnames=list(rows[0].keys()) if rows else [])
        writer.writeheader()
        writer.writerows(rows)

    lines = [
        f"# R1-A campaign table: {args.campaign}",
        "",
        "Medians are per kernel call. Negative deltas are improvements. "
        "The AA column is an identical-binary noise control.",
        "",
        "| case | mode | n | A ns | B ns | C ns | B vs A | C vs A | C vs B | AA vs A |",
        "| --- | --- | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: |",
    ]
    for r in rows:
        def pct(value):
            return f"{value:+.1f}%" if isinstance(value, (int, float)) else ""
        lines.append(
            f"| {r['case']} | {r['mode']} | {r['n']} | {r['A_ns']:.0f} | "
            f"{r['B_ns']:.0f} | {r['C_ns']:.0f} | {pct(r['B_vs_A_pct'])} | "
            f"{pct(r['C_vs_A_pct'])} | {pct(r['C_vs_B_pct'])} | "
            f"{pct(r['AA_vs_A_pct'])} |")
    lines += ["", "Failures:", ""]
    for failure in data.get("failures", []):
        lines.append(f"- `{failure}`")
    if not data.get("failures"):
        lines.append("- none")
    lines += ["", "Commands:", "", "```text"]
    lines.extend(data.get("commands", []))
    lines += ["```", ""]
    path = base / "table.md"
    path.write_text("\n".join(lines) + "\n", encoding="utf-8", newline="\n")
    print(f"wrote {csv_path}")
    print(f"wrote {path}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
