# R1.2 - Critical Review (model-assisted)

Review type: **model-assisted self-review**, not independent human verification.

## Verdict

`accept-with-limits` for the empirical claim that legal LoopFusion opportunities
are rare in the selected TSVC/PolyBench pipeline and that the current policy
handled the two measured TSVC candidates. `reject` for any broader claim that
the current model generalizes to real workloads or that a new predictor is
validated.

## Challenges examined

1. **Selection bias by source.** PolyBench and TSVC were chosen because they are
   standard affine/vectorization suites, not because they were known to contain
   fusions. Still, two positive cases cannot represent real C++ applications.
2. **Pipeline artifact.** PolyBench's zero yield may depend on
   `-O0 -disable-O0-optnone` and `default<O3>` ordering. Loop distribution,
   interchange or whole-program inlining could create different candidates.
3. **TSVC adaptation.** `ntimes=256`, renamed `main`, portability shims and a
   custom wrapper alter the executable. The measured kernel body is the original
   `s233`/`s2233` source, but the surrounding runtime is not upstream TSVC.
4. **Weak oracle.** The wrapper uses an `aa/bb/cc` checksum and TSVC's own
   `check`; it is a consistency oracle, not an independent numerical proof.
5. **A/A drift.** The first TSVC campaign had large A/A drift because the
   wrappers lacked affinity control. The final pinned 15-block campaign has
   A/A +0.2%/0.0%, but the earlier campaign is a reminder that process
   scheduling can dominate.
6. **Two-case policy result.** The current model and metadata guard score
   perfectly on two cases. This is not generalization evidence; a single
   unmeasured family could reverse it.
7. **Feature coverage.** `s2233`'s transposed reuse is not recovered by the
   static extractor. The footprint proxy is ~6 KiB and is not a cache working
   set. The scenario-aware footprint rule abstains and misses `s233`.
8. **Metric weighting.** Two cases do not justify aggregate speedup or
   workload-weighted claims. Equal-case results are descriptive only.
9. **No counters.** Cache/vectorization explanations remain hypotheses.
10. **Novelty.** No new scientific result is claimed. The useful outcome is a
    negative prevalence result and a concrete counterexample to "rejected fusion
    is always a missed opportunity."

## Required fixes before a stronger claim

- Add whole-program or additional real families that actually reach LoopFusion.
- Test alternative pass orders and loop-distribution/interchange configurations.
- Obtain an independent reviewer.
- Add counters or controlled code-generation evidence for the `s233`/`s2233`
  mechanisms.
- Extend the feature extractor to transposed/permuted reuse and explicit
  vectorization metadata in real loops.

## Unresolved issues

- Why 126 TSVC functions never reached an examinable candidate was not manually
  audited.
- PolyBench whole-program timing was not performed.
- The TSVC measurement adaptation may change code layout and absolute times,
  though A/B/C share the same surrounding harness.
- No claim is made about LLVM upstream behavior beyond the pinned revision.
