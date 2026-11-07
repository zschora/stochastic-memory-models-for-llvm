# R1.2 - Final Synthesis and Go/No-Go for R1.3

- Date: 2026-11-07
- Corpus: [`r1_2_corpus.md`](r1_2_corpus.md)
- Profitability study: [`r1_2_profitability.md`](r1_2_profitability.md)
- Critical review: [`r1_2_review.md`](r1_2_review.md)
- Discovery: [`../results/r1/EXP-20261107-R12-discovery/discovery.json`](../results/r1/EXP-20261107-R12-discovery/discovery.json)
- Final TSVC campaign: [`../results/r1/EXP-20261107-R12-tsvc-pinned/campaign_summary.json`](../results/r1/EXP-20261107-R12-tsvc-pinned/campaign_summary.json)

## 1. What was actually done

- R1.1.1 repaired baseline/patched selection, statistical-label preservation,
  failure diagnostics, memory accounting and attempt validation.
- PolyBench/C 4.2.1 (30 cases, 28 analysed functions) and TSVC (136 functions)
  were compiled to front-end IR and screened with structured LoopFusion remarks.
- Two real TSVC legal opportunities were measured with 15 randomized complete
  blocks and the verified v2 toolchain.
- The development predictor v3 was compared with a small held-out TSVC case
  study. No new LLVM patch was created in R1.2.

## 2. Answers

### How often does LLVM meet interesting LoopFusion opportunities?

Rarely in this corpus. PolyBench produced **0 legal opportunities** among 28
analysed kernel/init/main functions. TSVC produced **2 legal opportunities**
among 136 functions; the other candidate-reaching functions were rejected by
legality/form or trip-count mismatch. This is a discovery-yield result, not a
universal prevalence estimate.

### Does the current cost model decide well?

On the two real TSVC cases, yes:

- `s233`: current model accepts; **-9.4%** (A/A +0.2%).
- `s2233`: current model rejects; unrestricted fusion is **+136.0%** harmful,
  current is **-0.1%** neutral (A/A 0.0%).

This is two cases. It contradicts a blanket "rejected fusion is a missed
opportunity" story and supports keeping the existing reuse gate where it fires.

### Can a better predictor be validated?

No. The development v3 screen still has false positives and misses; the
two-case held-out result is not a family-level validation. The footprint proxy
rule abstains on the 6 KiB TSVC cases and misses the profitable `s233` fusion.
No deployable new model is supported.

### Which mechanisms generalize?

- Metadata/SIMD conflict is real on controlled kernels, but no explicit metadata
  conflict appeared in the two real TSVC candidates.
- Shifted/transposed reuse appears in `s2233` as a **harmful** legal fusion that
  the exact-reuse gate correctly rejects; this is not a missed opportunity.
- Cache-footprint intuition is not directly usable: the static multi-stream
  proxy is tiny for TSVC, while the real timing difference is dominated by the
  transformed loop structure.
- The controlled-kernel findings remain development evidence, not real-workload
  validation.

### Potential compiler improvements?

None justified by R1.2 alone. A shifted-reuse extension might help controlled
stencils, but R1.2 found a transposed case where rejecting was correct. A
metadata guard remains plausible for explicit metadata conflicts; R1.2 found no
real instance. A new cost model is not justified.

## 3. Negative results

- PolyBench: 28 analysed functions, 0 legal candidates, 28 legality/form
  rejections.
- TSVC: 126/136 functions did not reach an examinable candidate.
- The first 9-block TSVC campaign was high-noise because affinity control was
  missing; retained as a historical pilot, not used as final evidence.
- The two-signal development rule's low equal-point regret remains an in-sample,
  large-point-weighted artifact.

## 4. Go/No-Go

**No-Go for R1.3 cost-model implementation.** The real corpus is too small and
the current model is not shown to be deficient on it.

**Go for a targeted R1.3 discovery study**, with these priorities:

1. Whole-program or additionally real families that actually reach LoopFusion.
2. Alternative defensible pipelines (loop distribution/interchange, phase
   ordering) to test whether the low yield is pipeline-specific.
3. Independent audit of the TSVC wrapper adaptation and measurement.
4. Only then, a narrow metadata guard or shifted-reuse prototype if a real
   opportunity is found.

## 5. Remaining threats

- Two real cases, one machine, no counters.
- Mini PolyBench dataset and custom TSVC wrapper; absolute times are not
  upstream TSVC times.
- No independent review.
- Feature extractor does not recover transposed reuse.
- No whole-program measurement; no workload-frequency weighting.
- R1.1/R1.2 conclusions remain `analyzed`, not `supported`.
