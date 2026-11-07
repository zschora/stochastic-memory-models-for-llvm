# LLVM LoopFusion baseline (checked 2026-11-07)

## Pinned revision

- LLVM `main` HEAD at clone time: `6f4196219399a3502cea3beb2d0c8c28b2241649`
  (2026-11-06/07).
- Initial LoopFusion cost model merged in
  `a244d7762eecc19c327ce1e65a995e466962ab05` (PR #224626, 2026-10-14).
- Commits touching `llvm/lib/Transforms/Scalar/LoopFuse.cpp` after the cost model
  are mechanical option/API refactors (`06d62fc244`, `372a4c3599`, `afe76c5beb`);
  no new profitability logic was added.

Key files:

- `llvm/lib/Transforms/Scalar/LoopFuse.cpp` (implementation, ~2070 lines)
- `llvm/lib/Transforms/Scalar/ScalarOptions.td` (command-line options)
- `llvm/lib/Passes/PassBuilderPipelines.cpp` (pipeline placement)
- `llvm/lib/Passes/PassRegistry.def` (`loop-fusion` pass name)
- `llvm/tools/opt/NewPMDriver.cpp` (`-enable-loopfusion`)
- `llvm/test/Transforms/LoopFusion/` (48 tests, including
  `cost_model_reuse.ll`, `cost_model_rar.ll`, `diagnostics_{analysis,missed}.ll`)

## What the pass does today

`LoopFusePass` is a function pass (`LoopFusePass::run`). It first puts every loop
into simplified form (`simplifyLoop`) and normalizes loop guards
(`simplifyLoopGuard`), then walks loop nests from outermost to innermost.
Adjacent, control-flow-equivalent loops are collected into candidate lists and
fused pairwise left-to-right.

### Legality (already present before the cost model)

A loop is a candidate only if it is in loop-simplify + rotated form, has a
computable loop-invariant backedge-taken count, has a single exit, no
address-taken blocks, and contains no throwing, volatile, or atomic
instructions.

Two candidates can be fused only if:

- trip counts are identical (or the first can be peeled by at most
  `-loop-fusion-peel-max-count` iterations);
- both are unguarded or have identical guards;
- exit/guard blocks can be moved safely;
- **DependenceAnalysis** reports no dependence that would be violated by
  placing the two bodies in the same iteration. The legality query is
  `DI.depends(I0, I1)` over all write/write, write/read and read/write pairs.
  Same-value stores are allowed as idempotent.
- the second loop's preheader can be emptied by hoisting/sinking.

The dependence legality code has a same-iteration scalar-flow exception:
accumulation chains such as `A[i] = ...; A[i] += ...;` are legal because placing
the first body before the second preserves the order within an iteration.

### Profitability (the new part, PR #224626)

After legality, fusion requires at least `loop_fusion_min_reused_values`
distinct cross-loop reused **values** (default 1). Two reuse sources are
recognized:

1. **Same-iteration RAW.** During the existing dependence queries, a
   non-confused flow dependence at the candidate loop level with direction
   `EQ` inserts the *first-loop producer instruction* into a
   `SmallPtrSet<const Instruction*, 4>`. A producer with several consumers
   counts once.
2. **Exact affine RAR.** For loads, `getAffineLoadKey` requires the pointer
   operand to be an affine `SCEVAddRecExpr` of the candidate loop. The key is
   `(start, step)`; the load type is deliberately *not* part of the key
   (review feedback removed it). The first loop's loads are inserted into a
   `SmallDenseMap`; the second loop's loads look up the same key. An
   AA-based `hasInterveningWrite` check rejects matches where a store between
   the two loads may overwrite either location. Each matched first-loop load
   counts once.

Collection short-circuits as soon as the threshold is met. The threshold is
binary in practice: default 1. `-loop-fusion-min-reused-values=0` restores
unrestricted fusion; `-loop-fusion-disable-cost-model` bypasses collection
entirely and is also equivalent to always-beneficial.

### What is *not* modelled

- No vectorization-compatibility check. A vectorizable loop fused with a
  non-vectorizable one can lose SIMD execution; LoopDistribute is the pass
  designed for the opposite transformation, but there is no cost model here.
- No register-pressure estimate or code-size limit. Only loop-carried values
  and loop-invariant values are mentioned as theoretical concerns in issue
  #189117; the implemented filter does not look at them.
- No strength/quality of reuse: one exact RAR match in a tiny L1-resident array
  is treated the same as one match in a multi-megabyte streaming array.
- No cost for lost loop-level optimizations, no target cost from TTI beyond
  peeling preferences, no cache model (LoopCacheAnalysis is not used).
- Reuse must be exact same start/step. Shifted stencil accesses (`A[i+1]`),
  non-affine indices, and loads through different SCEV forms are missed.
- Same-iteration RAW is the only dependence-derived reuse; no reuse is counted
  for read-write/anti dependences or for reuse at a different distance.

### Pipeline placement

In the new pass manager, when enabled, LoopFusion is added in
`buildModuleOptimizationPipeline` (`PassBuilderPipelines.cpp:1533`) **after**
LoopRotate/LoopDeletion/LoopInterchange and **before** LoopDistribute and all
vectorization passes (`addVectorPasses`). The source has an explicit
`FIXME: This may not be the right place in the pipeline.` LoopFusion is not in
any default `-O` pipeline; it must be explicitly enabled.

### Control mechanisms (verified in sources)

- `clang -fexperimental-loop-fusion` sets `CodeGenOpts.FuseLoops`, which sets
  `PipelineTuningOptions::LoopFusion` (`clang/lib/CodeGen/BackendUtil.cpp`).
  Default: off.
- `opt -enable-loopfusion` is the corresponding hidden option in
  `llvm/tools/opt/NewPMDriver.cpp`. Note the spelling: no hyphen between
  "loop" and "fusion".
- `opt -passes=...loop-fusion...` runs the pass explicitly.
- `-loop-fusion-min-reused-values=<N>` (default 1).
- `-loop-fusion-disable-cost-model` (default false).
- `-loop-fusion-peel-max-count=<N>` (default 0).
- Remarks: `-pass-remarks=loop-fusion`, `-pass-remarks-missed=loop-fusion`,
  `-pass-remarks-analysis=loop-fusion`; successful fusions are named
  `FuseCounter` ("Loops fused"), insufficient reuse is `InsufficientReuse`.
  Structured YAML is available via `-pass-remarks-output`.
- Statistics: `FuseCounter`, `InsufficientReuse`, `NumFusionCandidates`,
  `InvalidDependencies`, etc. (`-stats`).

## Upstream discussions / known limitations

- RFC: https://discourse.llvm.org/t/loopfusion-initiating-a-cost-model-for-loopfusion/91859
  The RFC explicitly lists vectorization compatibility, register pressure and
  "strength of locality benefits" as future work, and reports the
  `trunc/zext VW16 uint64_t to uint8_t` regression (6.52%) that the reuse
  filter does not catch.
- Tracking issue #189117: comments from A. Ehsan, M. Meinersbur and others
  discuss cache analysis (LoopCacheAnalysis has known issues), the need for a
  vectorization-vs-fusion tradeoff, phase-ordering with LICM/unswitching,
  and several real kernels (`leslie3d`, `mvt`, `gemmer`, `fdtd-2d`,
  CrystalMk). No newer profitability PR exists as of the pinned revision.
- The RFC's own full-suite numbers: 8342 unrestricted fusions -> 81 with the
  cost model (99.03% reduction), 58 -> 13 benchmark directories. This is a very
  aggressive filter, and the RFC notes that the excluded set contains neutral
  and some beneficial fusions.

## Consequences for experiments

The model is effectively a binary "is there at least one exact reuse" gate.
The experiments below therefore target three distinct error classes:

1. **False positive from missing vectorization compatibility** (accepted reuse,
   but the fused loop cannot be vectorized).
2. **False positive from reuse strength** (accepted reuse, but the reused data
   is already cache-resident, so locality adds nothing; any secondary harm is
   uncompensated).
3. **False negative from exact-affine matching** (legal, locality-creating
   shifted reuse is rejected).

The RFC's known `uint64_t -> uint8_t` case is treated as a case study: first
reproduce the fusion, then decompose setup vs hot loop to test whether the
reported 6.52% can be causally attributed to the fused loops.

## Toolchain consistency caveat

The Stage 0 measurements use clang 23.1.5 as the front end and LLVM 24.0.0git (`6f4196219399a3502cea3beb2d0c8c28b2241649`) for `opt`/`llc`. `scripts/ir_compat.py` rewrites old two-operand boolean loop tags and removes `llvm.experimental.noalias.scope.decl` calls plus `!alias.scope`/`!noalias` attachments to satisfy the LLVM 24 verifier. Function-level `noalias` parameter attributes are kept, and A/B/C use the same IR, so the comparison is internally consistent. However, this is not a native single-version toolchain: alias analysis and loop/vectorization decisions can differ.

Stage 1 must first rebuild clang and LLVM from the same commit, regenerate the IR, and rerun the key findings without `ir_compat.py` and without modifying alias-scope metadata. The exact percentages and individual fusion decisions are baseline-specific until then.
