#!/usr/bin/env python3
"""Make clang-23 textual IR consumable by the LLVM-24 main verifier.

LLVM 24 removed the two-operand boolean loop tags
(!{!"llvm.loop.vectorize.enable", i1 X}); the auto-upgrade normally rewrites
them while parsing, but nested loop metadata produced by clang 23.1.5 is left
in the old form and the verifier rejects it.  This script applies exactly the
same rewrite the auto-upgrade documents:

    ...enable", i1 true   ->  ...enable"
    ...enable", i1 false  ->  ...disable"

It also drops experimental noalias.scope.decl calls and alias-scope
attachments, which trigger a separate verifier mismatch when combined with
old-form loop metadata.  Function-level `noalias` parameter attributes remain,
so the alias information needed by DependenceAnalysis is preserved for these
kernels.
"""
import re
import sys
from pathlib import Path

BOOL = re.compile(
    r'!\{!"(llvm\.loop\.(?:distribute|vectorize|vectorize\.predicate|'
    r'vectorize\.scalable))\.enable", i1 (true|false)\}'
)


def convert(text: str, strip_noinline: bool = False) -> str:
    def repl(m):
        base, value = m.group(1), m.group(2)
        return '!{!"%s%s"}' % (base, ".enable" if value == "true" else ".disable")

    text = BOOL.sub(repl, text)
    if strip_noinline:
        # clang -O0 adds noinline together with optnone; -disable-O0-optnone
        # removes optnone but leaves noinline, blocking the O3 inliner.
        text = re.sub(r'\bnoinline\s*', '', text)
    # Drop the declaration calls and the alias-scope attachments.
    text = re.sub(r'(?m)^\s*(?:tail )?call void @llvm\.experimental\.noalias\.'
                  r'scope\.decl\([^\r\n]*\)\r?\n', '', text)
    text = re.sub(r', !alias\.scope ![0-9]+', '', text)
    text = re.sub(r', !noalias ![0-9]+', '', text)
    return text


def main():
    args = [a for a in sys.argv[1:] if not a.startswith("--")]
    strip_noinline = "--strip-noinline" in sys.argv
    if len(args) != 2:
        sys.exit("usage: ir_compat.py [--strip-noinline] input.ll output.ll")
    src, dst = Path(args[0]), Path(args[1])
    text = convert(src.read_text(encoding="utf-8", errors="replace"),
                   strip_noinline=strip_noinline)
    dst.write_text(text, encoding="utf-8", newline="\n")


if __name__ == "__main__":
    main()
