#!/usr/bin/env python3
"""Build compact Markdown tables from the summary CSVs / ts_known JSON."""
import csv
import json
import statistics
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
RESULTS = ROOT / "results"


def load(case):
    p = RESULTS / f"summary_{case}.csv"
    return list(csv.DictReader(open(p, newline=""))) if p.exists() else []


def rows_for(case, tag, n=None):
    rows = [r for r in load(case) if r["tag"] == tag]
    if n is not None:
        rows = [r for r in rows if int(r["n"]) == n]
    return rows


def table(case, tag, title, ns=None, mode=""):
    rows = rows_for(case, tag)
    if mode:
        rows = [r for r in rows if r["mode"] == mode]
    if not rows:
        return f"### {title}\n\n(no data)\n"
    ns = ns or sorted({int(r["n"]) for r in rows})
    by = {(int(r["n"]), r["config"]): r for r in rows}
    out = [f"### {title}", "",
           "| N | A median (ns) | B | C | B vs A | C vs A | C vs B |",
           "|---:|---:|---:|---:|---:|---:|---:|"]
    for n in ns:
        a = by.get((n, "A"))
        b = by.get((n, "B"))
        c = by.get((n, "C"))
        if not a:
            continue
        def med(x):
            return f"{float(x['median_ns']):,.0f}" if x else "-"
        def d(x):
            return f"{float(x['delta_pct_vs_A']):+.1f}%" if x else "-"
        cb = "-"
        if b and c:
            cb = f"{100*(float(c['median_ns'])/float(b['median_ns'])-1):+.1f}%"
        out.append(f"| {n:,} | {med(a)} | {med(b)} | {med(c)} | {d(b)} | {d(c)} | {cb} |")
    out.append("")
    return "\n".join(out)


def min_table(case, tag, title, ns=None, mode=""):
    rows = rows_for(case, tag)
    if mode:
        rows = [r for r in rows if r["mode"] == mode]
    if not rows:
        return ""
    ns = ns or sorted({int(r["n"]) for r in rows})
    by = {(int(r["n"]), r["config"]): r for r in rows}
    out = [f"#### Minimum-based deltas: {title}", "",
           "| N | A min (ns) | B min | C min | B vs A | C vs A |",
           "|---:|---:|---:|---:|---:|---:|"]
    for n in ns:
        a = by.get((n, "A"))
        b = by.get((n, "B"))
        c = by.get((n, "C"))
        if not a:
            continue
        amin = float(a["min_ns"])
        def m(x):
            return f"{float(x['min_ns']):,.0f}" if x else "-"
        def d(x):
            return f"{100*(float(x['min_ns'])/amin-1):+.1f}%" if x else "-"
        out.append(f"| {n:,} | {m(a)} | {m(b)} | {m(c)} | {d(b)} | {d(c)} |")
    out.append("")
    return "\n".join(out)


def main():
    parts = []
    parts.append(table("read_read", "r2b", "read_read (B and C both fuse; C accepts exact RAR)"))
    parts.append(table("shifted_reuse", "r2b", "shifted_reuse (B forced fusion; C rejects shifted RAR)"))
    parts.append(table("simd_metadata", "r2b", "simd_metadata (B and C both fuse; C accepts exact RAR)"))
    parts.append(table("simd_reduction", "r2b", "simd_reduction (B and C both fuse)"))
    parts.append(table("producer_consumer_split", "r2b", "producer_consumer_split (hand-written separate-latch IR; C accepts RAW)"))
    parts.append(table("known_vec", "r2b", "known_vec (setup fusion)", mode="setup"))
    parts.append(table("known_vec", "r2b", "known_vec (hot-loop control)", mode="hot"))
    parts.append(table("known_vec", "r2b", "known_vec (RFC-like body)", mode="body"))

    # causal controls
    parts.append(table("simd_metadata_scalar", "scalar", "Control: both loops forced scalar (no vectorisation)"))
    parts.append(table("read_read", "novec", "Control: read_read with automatic vectorisation disabled"))
    parts.append(table("read_read", "unroll", "Control: read_read scalar with forced unroll 8"))
    parts.append(table("read_read", "odd", "Control: read_read scalar, non-power-of-two sizes"))

    text = "# Result tables\n\n" + "\n".join(parts)
    (RESULTS / "tables.md").write_text(text, encoding="utf-8")
    print(text)


if __name__ == "__main__":
    main()

