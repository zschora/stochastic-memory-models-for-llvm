# R1 synthesis - LoopFusion failures, matched validation and predictive rules

- Date: 2026-11-07
- Stage 0 baseline: mixed clang 23.1.5 / LLVM 24.0.0git, `ir_compat.py`
- R1 matched toolchain: LLVM `6f4196219399a3502cea3beb2d0c8c28b2241649`
  (clang, opt, llc built/recorded from the same revision)
- Main campaign: `EXP-20261107-R1A` (41 measured points)
- Patch campaign: `EXP-20261107-R1F-patch`
- Mathematical claims: `CLM-20261107-LRU1`, `CLM-20261107-LRUK`,
  `CLM-20261107-DAG1`

## 1. Infrastructure outcome

The research harness was hardened and merged into `main` before R1 began:

- explicit toolchain provenance manifests with full source SHA, build cache,
  binary hashes and version outputs; version-string matching alone is no longer
  accepted for R1 evidence;
- JSON Schema subset validation plus semantic gates for status transitions,
  proof/check artifacts, reviewer identity/type, review decisions and validation
  artifacts;
- offline Windows/Linux CI, 24 tests including invalid manifests and false
  promotion attempts;
- completed R1-A mandatory case matrix.

Defects found during R1 use were fixed: PowerShell BOM handling, `llvm-link`
target not built, linker selection for the Google Benchmark archive, and a
resumable campaign driver.

## 2. What reproduced

On the matched toolchain, with native clang IR and no alias-scope or loop
metadata rewriting:

1. **Metadata/vectorization false positive.** `simd_metadata` fuses under the
   current reuse gate; the fused loop inherits the second loop's
   `width = 1` metadata; kernel `ymm` uses drop from 108 to zero. Measured
   **+93.6% at 1 KiB, +130.9% at 16 KiB, +19.4% at 128 KiB**. At 1 MiB/8 MiB the
   sign changes (-6.4%/-4.6% with CIs crossing or near the A/A range). This is a
   confirmed engineering false positive, not a universal rule.
2. **Shifted-reuse false negative.** `shifted_reuse` is legal and B fuses; C
   reports `InsufficientReuse`. B is **-16.8% at 128 KiB, -22.7% at 1 MiB,
   -27.8% at 8 MiB**; C is within noise of A. Confirmed profitability false
   negative.
3. **Cache-residency trend.** `read_read` is neutral at 1 KiB, -8.4% at 16 KiB,
   **-17.6% at 128 KiB, -20.7% at 1 MiB, -27.0% at 8 MiB**. The direction and
   approximate magnitude agree with Stage 0.
4. **Canonical-loop legality failure.** `producer_consumer` receives
   `InvalidDependencies` in both B and C. The separate-latch form fuses and is
   **-17.5% at 128 KiB, -24.6% at 1 MiB, -26.6% at 8 MiB**. This is a
   legality/CFG problem, distinct from the reuse gate.
5. **The blanket SIMD-difference rule is wrong.** `simd_reduction` loses SIMD
   but fuses profitably: **-13.4% at 16 KiB, -27.9% at 1 MiB, -33.2% at 8 MiB**.
   Any rule that rejects whenever vectorization differs is contradicted.

## 3. What changed, failed or is inconclusive

- **Exact VW16 test-suite regression:** not-testable with the native matched
  pipeline. The benchmark exposes no kernel fusion candidate without an
  additional inlining rewrite; A/B/C were neutral (+0.27%/+1.54%, overlapping
  intervals). This neither reproduces nor refutes the RFC's 6.52%.
- **DRAM metadata magnitude:** Stage 0 reported -17/-18% at 8 MiB; R1 measured
  -4.6% (C) and -13.0% (B), with an A/A control of +2.5%. The benefit is smaller
  and less certain on this host.
- **`known_vec` setup:** direction reproduced, magnitude smaller (-11.2% C vs
  -23.9% in Stage 0). Hot-loop assembly remained byte-identical in the Stage 0
  sense; hot/body timings were within noise.
- **Scalar metadata control:** `simd_metadata_scalar` showed +20.1% at 16 KiB and
  +9.2% at 128 KiB without any SIMD loss. Fused-body/scalar overhead is real and
  not fully explained; it is much smaller than the +130.9% metadata regression.
- **Noise:** several A/A controls exceeded 10% (`read_read_offset` 1 KiB +44.9%,
  `producer_consumer` 128 KiB -16.8%, `producer_consumer_split` 16 KiB +11.0%).
  Small effects are not claimed. The 15-130% effects are far outside this range.
- **No hardware counters.** Cache and SIMD attribution is inferred from
  IR/assembly and controls, not measured with PMUs.

## 4. Predictive rules (in-sample only)

Using the measured unrestricted-fusion outcome as the oracle on 33 legal points
(20 profitable, 6 harmful, 7 neutral):

| rule | false positives | false negatives | runtime-weighted regret |
| --- | ---: | ---: | ---: |
| current model (exact reuse only) | 6 | 3 | 359.7% |
| always fuse legal candidates | 6 | 0 | 292.4% |
| footprint > 256 KiB | 2 | 4 | **74.2%** |
| footprint > 1 MiB | 0 | 8 | 111.2% |
| vectorization compatible only | 3 | 5 | 138.0% |
| compatible or footprint > 8 MiB | 3 | 3 | 95.2% |
| two-signal 256 KiB / 8 MiB | 1 | 6 | 86.9% |

The current model is **worse than unrestricted fusion** on this corpus because it
still accepts the metadata false positive while rejecting profitable shifted
reuse. A simple footprint threshold has the lowest in-sample regret but misses
small profitable cases. No rule is validated on held-out benchmark families;
these numbers are an engineering screen, not a deployable predictor.

## 5. Local prototype patch

`research/patches/0001-loop-fusion-vectorization-metadata-check.patch` adds an
opt-in metadata compatibility guard. On `simd_metadata` it removes the
L1/L2/128 KiB regressions (C +120.5%/+120.7%/+24.8% -> D +5.6%/-5.3%/-4.2%) and
does not reject the profitable `simd_reduction` (-36.6% under D). It rejects the
8 MiB metadata case where fusion was -12.9% profitable: the metadata-only rule
needs a footprint exception. It does not address shifted reuse. Local prototype
only; **no upstream submission**.

## 6. Mathematical results

- `CLM-20261107-LRU1` (capacity-one expected misses): elementary derivation
  `E[M] = 1 + N - sum(n_i^2)/N`, checked against exact enumeration on 45 count
  vectors. Status: `working-proof`; no independent review; classical runs
  statistic, no novelty claimed.
- `CLM-20261107-LRUK` (exact DP for capacity k): finite-state recurrence checked
  against a separately written brute-force enumerator with exact rational
  arithmetic for all count vectors with at most 3 labels and 7 accesses,
  capacities 1-3. Status: `numerically-checked`.
- `CLM-20261107-DAG1` (partial orders): exact min/max/mean/histogram over all
  linear extensions for four toy posets. Status: `numerically-checked`; uniform
  random topological order is an assumption, not a fact about compilers.

**Does any stochastic memory model add predictive value?** Not established. The
ideal-LRU results are exact baselines, but no model was connected to the
measured runtime better than a simple footprint threshold. This is a negative
result, not a failure to hide.

## 7. Scientific novelty

No new scientific contribution is established. Cache-aware fusion profitability
and the fusion/vectorization tradeoff are classic topics; Stage 0 already
identified prior art (McKinley 1996; Qasem 2006; LoopDistribute). The shifted
affine key and the metadata inheritance are concrete LLVM engineering failures,
not new theory. The mathematical results are classical or finite checks. A
targeted prior-art audit remains incomplete, especially for partial-order
locality.

## 8. Answers

- **Which findings are mathematically established?**
  Absolute certainty belongs only to the capacity-one derivation if independently
  checked; currently it is `working-proof`. The DP is `numerically-checked` on
  finite instances. No claim is `proved` under the harness rules.
- **Which LLVM performance problems are reproducible?**
  The metadata false positive, shifted-reuse false negative, cache-residency
  trend, canonical-loop legality failure, and the SIMD-difference counterexample
  all reproduce qualitatively on a matched revision.
- **Which compiler improvements are practically worthwhile?**
  A metadata compatibility guard plus a cheap footprint/locality signal is the
  most promising narrow direction. The in-sample predictor comparison supports a
  footprint signal but does not validate a deployable rule. Shifted affine reuse
  is a separate, clearly motivated extension.
- **Does any stochastic memory model add predictive value?**
  No evidence yet. Exact LRU is a baseline for reasoning, not a predictor.
- **Which results might justify an upstream patch?**
  Potentially the metadata guard, after a broader corpus, compile-time data,
  negative tests and human review. Not in its current local form.
- **Which results might justify a publication?**
  None as a new scientific result. A systems/measurement paper on
  fusion/vectorization failure modes is possible, but prior art must be audited
  and the corpus broadened.
- **What next?**
  R1-C held-out corpus, then a two-signal prototype evaluated on held-out
  families; independent review of R1-A; separate shifted-affine patch; mathematical
  work only if it produces a testable predictor.

## 9. Limitations

- One laptop, one CPU, no hardware counters, 5 rounds x 4 trials per point.
- Model-assisted self-review only; no independent reviewer or human sign-off.
- The matched clang build is local and Release-only; assertions builds were not
  used for timing.
- The corpus is controlled microbenchmarks, not representative real workloads.
- The exact RFC benchmark is not-testable without an extra inlining rewrite.
- No stochastic memory model is integrated into LLVM or used by any tool.

## 10. Decision

**Go** for a focused, reviewable engineering continuation: broaden the corpus,
combine metadata compatibility with a footprint signal, and evaluate held-out
families. **No-Go** for claiming a new scientific principle, a general LLVM cost
model, or the RFC regression from the present evidence.
