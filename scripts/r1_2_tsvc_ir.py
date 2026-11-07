#!/usr/bin/env python3
"""Generate the reduced-iteration TSVC IR used by the R1.2 wrappers.

The upstream TSVC source is not modified.  A local copy is produced with:
  * max/min/memalign portability shims for MSVC/clang-cl headers;
  * `main` renamed through the compiler command line;
  * ntimes reduced to 256 so one kernel call is practical for repeated timing.

The reduction is a controlled measurement adaptation, not a claim that upstream
TSVC behavior is unchanged.
"""
from __future__ import annotations

import re
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
SOURCE = ROOT / ".tools" / "corpus" / "TSVC" / "TSVC" / "tsc.c"
COMPAT = ROOT / "benchmarks" / "r1_2" / "compat"
OUT = ROOT / ".work" / "r1_2"


def main() -> int:
    if not SOURCE.is_file():
        raise SystemExit(f"missing TSVC source: {SOURCE}")
    OUT.mkdir(parents=True, exist_ok=True)
    text = SOURCE.read_text(encoding="utf-8", errors="replace")
    text = re.sub(r"\bmax\s*\(", "tsvc_max(", text)
    text = re.sub(r"\bmin\s*\(", "tsvc_min(", text)
    text = text.replace("memalign(", "tsvc_memalign(")
    text = text.replace("#define ntimes 200000", "#define ntimes 256")
    text = ("#include <stddef.h>\n#include <malloc.h>\n"
            "static void *tsvc_memalign(size_t a, size_t b)"
            "{ return _aligned_malloc(b, a); }\n") + text
    local = OUT / "tsvc_measure.c"
    local.write_text(text, encoding="utf-8", newline="\n")
    clang = ROOT / ".tools" / "llvm-build" / "bin" / "clang.exe"
    out = OUT / "tsvc_measure.ll"
    tsvc_ir = OUT / "tsvc_only.ll"
    dummy_ir = OUT / "dummy.ll"
    for src, target in ((local, tsvc_ir), (SOURCE.parent / "dummy.c", dummy_ir)):
        proc = subprocess.run([
            str(clang), "-O0", "-Xclang", "-disable-O0-optnone",
            "-I", str(COMPAT), "-Dmain=tsvc_original_main",
            "-emit-llvm", "-S", str(src), "-o", str(target),
        ], capture_output=True, text=True)
        if proc.returncode != 0:
            print(proc.stderr[-4000:], file=sys.stderr)
            return 1
    link = subprocess.run([
        str(ROOT / ".tools" / "llvm-build" / "bin" / "llvm-link.exe"),
        str(tsvc_ir), str(dummy_ir), "-S", "-o", str(out),
    ], capture_output=True, text=True)
    if link.returncode != 0:
        print(link.stderr[-4000:], file=sys.stderr)
        return 1
    print(out)
    return 0


if __name__ == "__main__":
    sys.exit(main())
