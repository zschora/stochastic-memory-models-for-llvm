# R1.2 - Profitability Policies and Held-Out Case Study

- R1.2 corpus: [`r1_2_corpus.md`](r1_2_corpus.md)
- Held-out TSVC evaluation: [`../results/r1/EXP-20261107-R12-tsvc-pinned/heldout_eval.md`](../results/r1/EXP-20261107-R12-tsvc-pinned/heldout_eval.md)
- Development predictor v3: [`../results/r1/EXP-20261107-R11-audit/predictor_v3.md`](../results/r1/EXP-20261107-R11-audit/predictor_v3.md)

## 1. Development corpus (not validation)

The controlled R1/R1.1 kernels remain the **development corpus**. Predictor v3
selection is documented in
[`../results/r1/EXP-20261107-R11-audit/predictor_v3_selection.json`](../results/r1/EXP-20261107-R11-audit/predictor_v3_selection.json):
53 baseline-eligible points from verified unpatched campaigns; R1-F is excluded.

Development v3 metrics (in-sample):

| Policy | FP | Missed profitable | Absolute regret | Relative to baseline | Worst regression |
| --- | ---: | ---: | ---: | ---: | ---: |
| current exact-reuse | 3 | 10 | 11.613 ms | 8.79% | 126.4% |
| metadata guard | 2 | 11 | 15.090 ms | 11.42% | 28.1% |
| metadata guard + L3 | 2 | 10 | 11.597 ms | 8.78% | 28.1% |
| footprint proxy > 256 KiB | 3 | 2 | 0.048 ms | 0.04% | 126.4% |
| two-signal | 2 | 2 | 0.033 ms | 0.02% | 28.1% |

These are development results. They are not validation and the footprint rules
are scenario-aware only.

## 2. Held-out real case study

Discovery found only two legal real-workload opportunities. They were not used
to tune the development policies.

| Case | Discovery class | B vs A | C vs A | Label (B) |
| --- | --- | ---: | ---: | --- |
| `tsvc_s233` | legal_and_fused | -9.3% | -9.4% | confirmed profitable |
| `tsvc_s2233` | legal_but_rejected | +135.9% | -0.1% | confirmed harmful |

Policy outcomes on these two cases (equal-case weighting):

| Policy | FP | Missed profitable | Regret | Geomean speedup | Worst regression |
| --- | ---: | ---: | ---: | ---: | ---: |
| current model | 0 | 0 | 0.000 ms | 1.0502 | 0.0% |
| no fusion | 0 | 1 | 4.258 ms | 1.0000 | 0.0% |
| always fuse | 1 | 0 | 31.137 ms | 0.6838 | +135.9% |
| metadata guard | 0 | 0 | 0.000 ms | 1.0502 | 0.0% |
| footprint proxy > 256 KiB | 0 | 1 | 4.258 ms | 1.0000 | 0.0% |

The current model and the metadata guard happen to do the right thing on both
cases: they fuse `s233` and reject `s2233`. The footprint rule abstains because
the static proxy is only ~6 KiB and misses the profitable `s233` fusion.

This is **two cases**, not a held-out family set. It supports no broad claim that
the current policy generalizes. It does show that "all rejected fusions are
missed opportunities" is false: `s2233` is a legal fusion that should be
rejected, and the current reuse gate rejects it correctly.

## 3. Feature availability

| Feature | `s233` | `s2233` |
| --- | --- | --- |
| explicit vectorization metadata | none | none |
| metadata conflict | no | no |
| exact/shifted reuse | exact (source-audited) | transposed/unknown |
| element size | 4 bytes | 4 bytes |
| streams (static) | 6 base pointers | 6 |
| footprint proxy | ~6 KiB | ~6 KiB |
| runtime/bounds | fixed TSVC dimensions | fixed |

The extractor does not recover the transposed reuse relation reliably, so
`s2233` remains `unknown` for reuse kind. That is a feature-coverage limitation,
not a fabricated signal.

## 4. R1.2 answer to the central question

> Can we reliably identify profitable/harmful legal LoopFusion transformations
> across diverse unseen numerical workloads using pre-decision information?

**Not established.** The real corpus produced only two legal opportunities.
The current model handled both, but two cases cannot establish generalization.
The broader result is that legal LoopFusion opportunities are rare in the
selected TSVC/PolyBench pipelines.

## 5. Negative and inconclusive results

- PolyBench: 28 analysed functions, 0 legal opportunities, 28 legality/form
  rejections.
- TSVC: 126 of 136 functions did not reach an examinable fusion candidate.
- Development footprint rules still have false positives on controlled scalar
  and metadata cases; their apparent low equal-point regret is a large-point
  weighting artifact.
- No evidence supports a deployable two-signal model.

## 6. Recommendation

Do not build a new LLVM cost model from R1.2. Before any R1.3 cost-model work,
investigate whether a different but defensible pipeline (loop distribution,
loop interchange, whole-program inlining/phase ordering) creates more real
opportunities, and broaden the corpus beyond TSVC/PolyBench.
