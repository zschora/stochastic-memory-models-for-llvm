from pathlib import Path

root = Path(__file__).resolve().parent.parent
files = [root / "reports" / "stage0_report.md", root / "README.md",
         root / "research" / "llvm_baseline.md",
         root / "research" / "literature.md"]
trans = {
    0x2212: "-", 0x2013: "-", 0x2014: "-", 0x2248: "~", 0x00d7: "x",
    0x2192: "->", 0x00a0: " ", 0x2018: "'", 0x2019: "'", 0x201c: '"',
    0x201d: '"', 0x2264: "<=", 0x2265: ">=", 0x00b1: "+/-", 0x2026: "...",
}
for p in files:
    t = p.read_text(encoding="utf-8")
    t = t.translate(trans)
    p.write_text(t, encoding="utf-8", newline="\n")
    bad = [(i, hex(ord(c))) for i, c in enumerate(t) if ord(c) > 127]
    print(p.name, "remaining non-ascii", len(bad), bad[:5])
