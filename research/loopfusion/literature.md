# Literature and novelty notes

Search scope: OpenAlex/Crossref metadata queries (2026-11-07) plus the LLVM RFC,
PR, tracking issue and source. This is a targeted review, not an exhaustive
systematic review; abstracts/full texts were not all read.

## Cache-aware loop fusion and profitability (classic)

- S. Carr, K. S. McKinley, C.-W. Tseng, *Compiler optimizations for improving
  data locality*, ASPLOS 1994, doi:10.1145/195473.195557.
- K. S. McKinley, S. Carr, C.-W. Tseng, *Improving data locality with loop
  transformations*, ACM TOPLAS 18(4), 1996, doi:10.1145/233561.233564.
  Establishes fusion/distribution/interchange as locality transformations and
  the importance of reuse distance and cache capacity.
- K. Kennedy, K. S. McKinley, *Fast greedy weighted fusion*, ICS 2000,
  doi:10.1145/335231.335244. Weighted fusion with profitability priorities.
- A. Darte, *On the complexity of loop fusion*, 1998. Fusion legality and
  complexity; fusion is not a purely local decision.
- S. Verdoolaege et al., *Multi-dimensional incremental loop fusion for data
  locality*, ASAP 2003, doi:10.1109/ASAP.2003.1212826.

**Implication:** "reuse exists" is not the same as "reuse is valuable". Cache
residency/reuse distance and the cost of the fused body are classical inputs to
fusion profitability. Our read_read size sweep (~0% at L1, ~15% at L3,
~30% at DRAM) is a reproduction of this known effect in LLVM 24, not a new
principle.

## Cache-conscious cost models and empirical tuning

- A. Qasem, K. Kennedy, *A cache-conscious profitability model for empirical
  tuning of loop fusion*, LCPC/LNCS 2006,
  doi:10.1007/978-3-540-69330-7_8.
- A. Qasem, K. Kennedy, *Profitable loop fusion and tiling using model-driven
  empirical search*, ICS 2006, doi:10.1145/1183401.1183437.
- X. Vera et al., *An accurate cost model for guiding data locality
  transformations*, ACM TOPLAS 2005, doi:10.1145/1086642.1086646.
- J. Zhao et al., *Modeling the interplay between loop tiling and fusion in
  optimizing compilers using affine relations*, ACM TOCS 2023,
  doi:10.1145/3635305.

These works already combine a locality/reuse model with a cost model and, in
Qasem's case, empirical calibration. A modern LLVM implementation would be an
engineering contribution; the high-level idea is not new.

## Fusion and vectorization

- J. Sewall et al., *High-performance code generation through fusion and
  vectorization*, arXiv:1710.08774, 2017. Fusion is used to enable/improve
  vectorization, so fusion and vectorization are not independent decisions.
- LLVM `LoopDistribute` exists precisely because fusing/keeping dependences can
  prevent vectorization; its source notes that it has no cost model
  (`llvm/lib/Transforms/Scalar/LoopDistribute.cpp`).
- M. Meinersbur's issue comment (LLVM #189117, 2026-04-01) explicitly raises
  "do not fuse loops where one can be vectorized, but not the other" and notes
  that a cost model weighting fusion speedup vs missed vectorization would be
  hard to get right.
- The LoopFusion RFC (2026-09) lists "vectorization compatibility" as future
  work and uses the `uint64_t -> uint8_t` regression as motivation.

**Implication:** vectorization-aware fusion is an anticipated direction. Our
contribution is a concrete, cheap detection of one mechanism: the fused loop
inherits the *second* loop's `llvm.loop` metadata (because LoopFusion ends the
fused loop at FC1's latch), so a `vectorize(disable)` or narrower width on FC1
silently overrides FC1's vectorization. That is an engineering bug/limitation in
the current implementation, not a new fusion principle.

## Polyhedral fusion / conflict graphs

- A. Acharya, U. Bondhugula, A. Cohen, *Effective loop fusion in polyhedral
  compilation using fusion conflict graphs*, ACM TACO 2020,
  doi:10.1145/3416510.
- A. Darte, *On the complexity of loop fusion*, 1998.
- LLVM Polly implements polyhedral scheduling/fusion with an isl-based cost
  model, but it is a separate infrastructure and not the Scalar LoopFusion
  pass studied here.

## Register pressure / code size

- I. Anthimopoulos et al., *Register blocking: an analytical modelling approach
  for affine loop kernels*, ACM CF 2024, doi:10.1145/3649153.3649194.
- Research on register-pressure-aware unrolling/scheduling (e.g., MATEC Web of
  Conferences 2018, doi:10.1051/matecconf/201822803008; CC 2022
  doi:10.1145/3497776.3517771).
- LLVM issue #189117 comments: M. Meinersbur argues that most unavoidable
  pressure from fusion is loop-carried/loop-invariant values and that
  instruction scheduling can choose not to interleave; A. Ehsan notes reused
  values themselves add pressure.

Our experiments did not produce a clean register-pressure case. The scalar
fusion slowdown observed in `read_read` (55-77% at L2-resident sizes) was not
caused by the unroll factor (forcing 8 did not help) and was not removed by a
one-cache-line offset; its mechanism remains open. We therefore do not claim a
register-pressure explanation.

## LLVM-specific upstream state

- RFC: https://discourse.llvm.org/t/loopfusion-initiating-a-cost-model-for-loopfusion/91859
- PR #224626 (merged 2026-10-14): binary reuse filter; 8342 -> 81 fusions on the
  full C/C++ test suite (99.03% reduction), 58 -> 13 benchmark directories.
- Tracking issue #189117: follow-ups on vectorization compatibility, register
  pressure, cache analysis, pipeline placement, and phase ordering.
- PR #226289 (2026-09-25): loop-fusion CFG cleanup before fusion; not a
  profitability change.
- `LoopInterchange` uses `LoopCacheAnalysis`, but issue comments report that its
  cache-line-dependent defaults and DependenceAnalysis cost are problematic;
  this makes a lightweight SCEV/TTI footprint estimate attractive.
- No newer LoopFusion profitability PR/commit exists at the pinned revision
  (only mechanical option/API refactors after 2026-10-14).

## Novelty classification

| Claim | Classification | Evidence |
|---|---|---|
| Fusion benefit grows with working set; cache-resident reuse is weak | **Known effect**, reproduced | McKinley 1996; Qasem 2006; our size sweep |
| Fusing a vectorized loop with a non-vectorized/scalar loop can lose SIMD and regress | **Known effect**, reproduced | LoopDistribute rationale; RFC/issue; our `simd_metadata` |
| Current LLVM gate accepts `simd_metadata` and rejects shifted RAR | **New engineering observation** (specific to this implementation/revision) | remarks + IR/asm; not found in RFC/tests |
| Canonical clang rotated loops are rejected for RAW reuse because DA does not produce the fused-level direction; upstream test IR has a separate latch | **New engineering observation** (likely a real bug/limitation) | `print<da>`, hand-written split IR, source line 1339/1347 |
| Fused loop inherits FC1's `llvm.loop` metadata | **New engineering observation** (implementation detail) | LoopFuse source `simplifyLatchBranch(FC0)` + asm |
| Combined cache-residency x vectorization-metadata gate | **New combination**, not a new algorithm | classic ideas + LLVM-specific signals |
| A new general theory/algorithm for fusion profitability | **Not established** | no broad corpus; flagship RFC regression not reproduced |

## Verdict on scientific value

The evidence supports an **engineering cost-model improvement** and possibly a
workshop/industry paper with a broad evaluation. It does **not** support a claim
of a new scientific principle: the locality/cache and vectorization tradeoffs
are well known, and the RFC/issue already anticipate them. The genuinely novel
pieces are LLVM-specific mechanisms (metadata inheritance, DA/CFG false
negative, lack of post-fusion CSE), which are better framed as compiler
engineering than as a new profitability theory.
