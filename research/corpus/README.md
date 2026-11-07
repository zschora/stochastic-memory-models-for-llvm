# R1.2 corpus

The corpus manifest is [`r1_2/corpus_manifest.json`](r1_2/corpus_manifest.json).
External sources are cached under `.tools/corpus/` and are not vendored:

- PolyBench/C 4.2.1 at `3e872547cef7e5c9909422ef1e6af03cf4e56072`;
- TSVC mirror at `f2d53d51d9cd60c5612cf34c1e70215c6907f787`.

Licenses are copied to [`../../benchmarks/r1_2/licenses/`](../../benchmarks/r1_2/licenses/).
The TSVC wrappers, portability shims and reduced-iteration generation are under
`benchmarks/r1_2/` and `scripts/r1_2_*.py`.

Discovery found only two legal LoopFusion opportunities (TSVC `s233` and
`s2233`); PolyBench produced none. See
[`../../reports/r1_2_corpus.md`](../../reports/r1_2_corpus.md).
