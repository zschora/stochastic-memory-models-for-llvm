# Stage 0 report - LLVM LoopFusion profitability

- Date: 2026-11-07
- LLVM: `6f4196219399a3502cea3beb2d0c8c28b2241649` (`main`, LLVM 24.0.0git)
- Cost-model merge: `a244d7762eecc19c327ce1e65a995e466962ab05` (PR #224626)
- Environment: [`../results/environment.json`](../results/environment.json)
- License: Apache-2.0 WITH LLVM-exception ([`../LICENSE`](../LICENSE))
- Third-party notices: [`../THIRD_PARTY_NOTICES.md`](../THIRD_PARTY_NOTICES.md)
- Research origins: [`../research/origins.md`](../research/origins.md)

## 1. Executive summary

**Yes, there is a promising direction - but it is an engineering cost-model
improvement, not (yet) a new scientific principle.**

The current LoopFusion profitability model is a binary gate: fuse if at least
one exact cross-loop reuse exists (`-loop-fusion-min-reused-values=1`). On a
controlled A/B/C setup (fusion off / unrestricted / current model) with the same
IR and the same downstream pipeline, this gate makes two systematic errors:

1. **False positive (2x regression).** When the second loop carries a
   `vectorize(disable)`/narrower `llvm.loop` pragma, the fused loop inherits the
   second loop's metadata and silently loses the first loop's vectorization.
   At L1/L2-resident sizes the exact-reuse model accepts a **+96% to +118%**
   regression. At DRAM-resident sizes the same fusion becomes **-17 to -18%**
   (beneficial), so the decision is not a property of reuse alone.
2. **False negative (17-32% missed).** A legal, correct read-read reuse with a
   constant offset (`A[i]` vs `A[i+1]`) is rejected because the exact affine RAR
   key differs by one element. Forcing fusion gives **-17% at 1 MiB, -32% at
   64 MiB**, while the current model is indistinguishable from no fusion.

The benefit of fusion scales with working-set size (~0% at L1, ~17-18% at L3,
~31% at DRAM for aligned read-read), while the cost scales with lost
vectorization and fused-body quality. The current model considers neither. Both
missing signals are cheap: SCEV trip count x element size vs TTI cache size, and
a comparison of the two loops' vectorization metadata/decisions.

The RFC's motivating `trunc/zext VW16 uint64_t -> uint8_t` 6.52% regression
**did not reproduce**. A faithful build of the exact llvm-test-suite microbenchmark
shows the target function fuses one setup-loop pair and is neutral to slightly
faster (campaign medians: -2.6%/+2.7% for unrestricted fusion across two
campaigns, within noise; the current model -1.0%/+0.7%). Our replica shows the
setup fusion is 23.5-23.9% faster and the timed hot-loop assembly is byte-identical
across A/B/C. The RFC number is likely specific to a different CPU/codegen
(ours lacks AVX-512) or measurement noise; it should not be the sole motivation
for the next cost-model step.

A separate **legality false negative** was found: canonical clang rotated loops
put the body in the header/latch block, and DependenceAnalysis then fails to
produce the "assuming 1 loop level fused" direction. The cost model's RAW path
therefore rejects a normal C++ producer-consumer pair (`InvalidDependencies`).
A hand-written equivalent with a separate latch block is accepted and is
**15-32% faster** when fused. This is independent of the reuse threshold.

**Decision:** Go for a focused Stage 1 *engineering* prototype of a two-signal
cost model (reuse strength x vectorization/code-quality cost), with a broader
corpus evaluation. No-Go for claiming a new scientific result from the present
evidence: cache-aware fusion profitability and vectorization/fusion tradeoffs
are classic (McKinley 1996; Qasem 2006; LoopDistribute), and the RFC/issue
already anticipate them.

### 1.1 Research provenance

This Stage 0 study is the first empirical branch of a broader project on random
balanced sequences, stochastic bridges, random memory-access orderings and
ideal-LRU models. That history motivates the compiler-profitability question,
but **no stochastic memory cost model is implemented in LLVM or used in the
experiments here**. The A/B/C comparison evaluates LLVM's existing reuse gate
only. See [`../research/origins.md`](../research/origins.md) for the trajectory
and [`../research/loopfusion/README.md`](../research/loopfusion/README.md) for
the LoopFusion evidence map.

## 2. LLVM baseline

### 2.1 Revision and tools

| item | value |
|---|---|
| LLVM `main` | `6f4196219399a3502cea3beb2d0c8c28b2241649` |
| Initial cost model | `a244d7762eecc19c327ce1e65a995e466962ab05`, merged 2026-10-14 |
| Commits touching `LoopFuse.cpp` after it | only option/API refactors (`06d62fc244`, `372a4c3599`, `afe76c5beb`) |
| `opt` | LLVM 24.0.0git, Release, X86, MSVC 19.51 |
| C++ front end | clang 23.1.5, `392dfff97d29...` |
| CPU | Intel i5-12500H, 4 P-cores + 8 E-cores, 16 threads |
| caches | L1d 48 KiB/P-core, L2 1.25 MiB/P-core, L3 18 MiB |
| OS | Windows 11 build 26200, 16 GiB RAM |

### 2.2 What the pass already decides

`LoopFusePass` (`llvm/lib/Transforms/Scalar/LoopFuse.cpp`) is a function pass.
It simplifies loops/guards, walks loop nests outermost-to-innermost, groups
strictly adjacent control-flow-equivalent loops, and fuses pairs left-to-right.

Legality already requires: loop-simplify + rotated form, computable
loop-invariant backedge-taken count, single exit, no address-taken blocks, no
throwing/volatile/atomic instructions; identical trip counts (or peelable first
loop); identical guards; safe exit/guard block motion; a DependenceAnalysis
check over all memory pairs; and a movable second preheader.

The new profitability model then requires at least
`loop_fusion_min_reused_values` distinct reused values (default 1):

- **same-iteration RAW**: a non-confused flow dependence at the candidate loop
  level with direction `EQ` (producer instruction counted once);
- **exact affine RAR**: both loads have affine `SCEVAddRecExpr` pointer
  recurrences with identical `(start, step)`; the load type is not part of the
  key; an AA check rejects intervening writes.

`-loop-fusion-min-reused-values=0` restores unrestricted behavior;
`-loop-fusion-disable-cost-model` bypasses collection entirely.

### 2.3 What it ignores

- No vectorization-compatibility check. The fused loop keeps the **second**
  loop's latch branch and therefore its `llvm.loop` metadata
  (`simplifyLatchBranch(FC0)` in `rewireFusedHeaderPHIsAndLatches`). A
  `vectorize(disable)`/narrower width on the second loop silently overrides the
  first loop's vectorization metadata.
- No register-pressure or code-size estimate.
- No reuse-strength/cache-residency estimate; one exact reuse in a 4 KiB array
  and one in a 64 MiB stream are treated identically.
- No target cost from TTI beyond peeling preferences; LoopCacheAnalysis is not
  used.
- **No register-pressure or vectorization-compatibility check is implemented
  at the pinned revision**; the only profitability input is the reuse count.
- Exact same start/step only: shifted stencil reuse (`A[i]` vs `A[i+1]`),
  non-affine indices and different SCEV forms are missed.
- No post-fusion CSE/GVN is scheduled before the vectorizer, so fusion can
  expose duplicate loads that remain in the vectorized loop.

### 2.4 Placement and control

LoopFusion is inserted in `buildModuleOptimizationPipeline`
(`PassBuilderPipelines.cpp:1533`) after LoopRotate/LoopDeletion/LoopInterchange
and **before** LoopDistribute and all vectorizers. The source itself says
`FIXME: This may not be the right place in the pipeline.` It is not in any
default `-O` pipeline.

Verified control mechanisms:

- `opt -enable-loopfusion` (hidden; spelling has no hyphen between loop/fusion)
  inserts the pass into `default<O3>`;
- `clang -fexperimental-loop-fusion` sets the same pipeline option;
- `-loop-fusion-min-reused-values=<N>` (default 1);
- `-loop-fusion-disable-cost-model`;
- `-loop-fusion-peel-max-count=<N>` (default 0);
- remarks: `-pass-remarks=loop-fusion`, `-pass-remarks-missed=loop-fusion`,
  `-pass-remarks-analysis=loop-fusion`; successful fusions are `FuseCounter`.

### 2.5 Upstream status

The RFC (2026-09) lists vectorization compatibility, register pressure and
"strength of locality benefits" as future work, and reports the `VW16
uint64_t -> uint8_t` regression. Issue #189117 comments discuss cache analysis,
the fusion-vs-vectorization tradeoff, LICM/unswitching phase ordering, and real
kernels (`leslie3d`, `mvt`, `gemver`, `fdtd-2d`, CrystalMk). No newer
profitability PR/commit exists at the pinned revision. Full details:
[`../research/loopfusion/llvm_baseline.md`](../research/loopfusion/llvm_baseline.md).

## 3. Experimental methodology

### 3.1 Configurations

Exactly the requested A/B/C comparison. All three use the **same front-end
IR** and the same `opt`/`llc` flags; only LoopFusion's profitability switch
differs:

```
A: opt -passes=default<O3> -mcpu=alderlake
B: opt -passes=default<O3> -mcpu=alderlake -enable-loopfusion -loop-fusion-min-reused-values=0
C: opt -passes=default<O3> -mcpu=alderlake -enable-loopfusion -loop-fusion-min-reused-values=1
llc -O3 -mtriple=x86_64-pc-windows-msvc -mcpu=alderlake
```

Front end: `clang++ -O0 -Xclang -disable-O0-optnone -march=alderlake
-std=c++17 -emit-llvm -S`. The IR is then normalized with
`scripts/ir_compat.py`: clang 23.1.5's old two-operand boolean loop tags are
rewritten to LLVM 24's single-operand form, and alias-scope attachments that
trigger a verifier mismatch are removed. Function-level `noalias` parameter
attributes are retained. This shim is applied identically to A/B/C; it is a
front-end/IR-version compatibility measure, not part of the experiment.

For the exact test-suite benchmark, clang 23.1.5's `-O0` `noinline` attributes
are additionally stripped so the O3 inliner can reproduce the normal `-O3`
inlining that brings the two setup loops into one function. The benchmark's copy
loops are unchanged; only initialization was patched for MSVC's
`uniform_int_distribution<uint8_t>` rejection.

### 3.2 Measurement harness

- Kernels are `noinline` and called through a `volatile` function pointer, so
  the harness cannot inline, hoist or delete the measured work.
- Each process pins to logical CPU 2 (a P-core), raises priority, warms up, and
  times batches with `QueryPerformanceCounter` (`timeBeginPeriod(1)`).
- A/B/C processes are launched in randomized order; the report uses medians and
  95% bootstrap CIs over 7-11 rounds x 5-7 internal trials.
- Every run verifies the output against an independent scalar reference and
  cross-checks a checksum across A/B/C.
- Where B and C produce identical IR/assembly, their spread is a direct noise
  control. On this laptop that spread can reach ~10% at some sizes; effects
  below ~10% are treated as weak. Large effects (15-120%) were reproduced in
  multiple campaigns.

### 3.3 Fusion verification

Fusion decisions were verified from structured optimization remarks (YAML) and
counted per function, not just from stderr text. Per-function counts for the
kernel functions are in
[`../results/fusion_summary_key.json`](../results/fusion_summary_key.json);
optimized IR/assembly/remarks are kept under `results/artifacts/<case>/`.

| case | B (unrestricted) | C (current model) |
|---|---|---|
| `read_read` (`rr_kernel`) | 1 FuseCounter | 1 FuseCounter |
| `shifted_reuse` (`shift_kernel`) | 1 FuseCounter | 1 InsufficientReuse, 0 fusions |
| `simd_metadata` (`simd_meta_kernel`) | 1 FuseCounter | 1 FuseCounter |
| `simd_reduction` (`simd_kernel`) | 1 FuseCounter | 1 FuseCounter |
| `producer_consumer` (`pc_kernel`) | 0, InvalidDependencies | 0, InvalidDependencies |
| `producer_consumer_split` (`pc_split_kernel`) | 1 FuseCounter | 1 FuseCounter |
| `known_vec` (`known_setup` / `known_body`) | 1 / 1 (+ NonEqualTripCount) | 1 / 1 (+ NonEqualTripCount) |
| exact test-suite `VW16 uint64->uint8` | 1 FuseCounter (`init_data` + `noVec`) | 1 FuseCounter (`init_data` + `noVec`) |

### 3.4 Baseline limitation: mixed Clang 23 / LLVM 24 and `ir_compat.py`

The current baseline is **not a single-version toolchain**. The C++ front end is
clang 23.1.5, while `opt`/`llc` are LLVM 24.0.0git from
`6f4196219399a3502cea3beb2d0c8c28b2241649`. Because clang 23.1.5 emits old
two-operand boolean loop metadata and alias-scope constructs that the LLVM 24
verifier rejects, `scripts/ir_compat.py` rewrites the metadata and removes
`llvm.experimental.noalias.scope.decl` calls plus `!alias.scope`/`!noalias`
attachments. Function-level `noalias` parameter attributes are retained, and
A/B/C all use the identical rewritten IR, so the A/B/C comparison is internally
consistent. However, this shim can change alias analysis, vectorization and
other loop decisions relative to a native clang 24 build.

The exact test-suite benchmark additionally required `-strip-noinline` (an
artifact of clang 23's `-O0` IR) to emulate normal `-O3` inlining. This is
acceptable for the baseline but is another deviation from a native build.

**Consequence:** the directions and mechanisms reported here are supported by
IR/assembly and repeated measurements, but the exact percentages and individual
fusion decisions must be treated as baseline-specific until reproduced on a
consistent toolchain.

**Requirement for Stage 1 (must be done first):** build clang and LLVM from the
same commit (or use a matching clang 24/LLVM 24 release), regenerate the
benchmark IR with that front end, and rerun the key findings **without
`ir_compat.py` and without modifying alias-scope metadata**. At minimum rerun:
`simd_metadata` (2x false positive), `shifted_reuse` (false negative),
`read_read` (cache-residency trend), `producer_consumer` (canonical-loop
legality) and the exact `VW16 uint64_t -> uint8_t` benchmark. Only after that
should the magnitudes be treated as final or used to tune thresholds.

## 4. Results

All times are per kernel call (ns), medians of the higher-sample `r2b`
campaign; negative deltas are improvements. Full tables and raw data:
[`../results/tables.md`](../results/tables.md), `results/raw/`.

### 4.1 Aligned read-read (current model accepts)

| N | A | B | C | B vs A | C vs A |
|---:|---:|---:|---:|---:|---:|
| 1,024 | 169 | 169 | 171 | +0.0% | +0.9% |
| 16,384 | 7,322 | 7,468 | 7,357 | +2.0% | +0.5% |
| 131,072 | 122,822 | 100,502 | 101,582 | -18.2% | -17.3% |
| 1,048,576 | 1,583,000 | 1,258,517 | 1,277,683 | -20.5% | -19.3% |
| 8,388,608 | 16,209,300 | 11,250,400 | 11,224,100 | -30.6% | -30.8% |

The benefit is ~0 when the reused array fits L1/L2 and grows to ~31% at DRAM.
Exact RAR is present at every size, but only valuable when the second pass
would not have found the data in cache.

### 4.2 Shifted read-read (current model rejects)

| N | A | B (forced) | C (model) | B vs A | C vs A |
|---:|---:|---:|---:|---:|---:|
| 1,024 | 179 | 179 | 179 | -0.3% | -0.2% |
| 16,384 | 8,247 | 8,412 | 8,181 | +2.0% | -0.8% |
| 131,072 | 126,220 | 104,675 | 125,868 | **-17.1%** | -0.3% |
| 1,048,576 | 1,336,500 | 1,152,533 | 1,370,617 | **-13.8%** | +2.6% |
| 8,388,608 | 16,347,600 | 11,078,800 | 16,212,900 | **-32.2%** | -0.8% |

C reports `InsufficientReuse` and is indistinguishable from A. B's fusion is
legal (verification passes, same checksum). This is a clear false negative.

### 4.3 SIMD metadata conflict (current model accepts)

| N | A (vectorized loop1) | B | C | B vs A | C vs A |
|---:|---:|---:|---:|---:|---:|
| 1,024 | 406 | 797 | 797 | **+96.3%** | **+96.4%** |
| 16,384 | 9,023 | 19,691 | 19,250 | **+118.2%** | **+113.3%** |
| 131,072 | 134,820 | 166,380 | 167,340 | +23.4% | +24.1% |
| 1,048,576 | 1,545,900 | 1,605,367 | 1,624,833 | +3.8% | +5.1% |
| 8,388,608 | 17,225,000 | 14,349,200 | 14,107,300 | **-16.7%** | **-18.1%** |

Same fusion, opposite sign depending on working-set size. At L1/L2 the SIMD
loss dominates; at DRAM the one-pass locality dominates.

### 4.4 SIMD-looking but profitable (negative result)

| N | A | B | C | C vs A |
|---:|---:|---:|---:|---:|
| 16,384 | 26,835 | 23,555 | 24,303 | -9.4% |
| 1,048,576 | 2,119,733 | 1,546,667 | 1,577,200 | -25.6% |
| 8,388,608 | 19,938,100 | 12,808,600 | 12,923,900 | -35.2% |

Fusing a vectorizable loop with an FP-reduction loop is not automatically bad:
the fused scalar loop overlaps loop1's work with the latency-bound reduction
chain and halves the memory pass. A "vectorization differs -> reject" rule would
be wrong here. The cost model must be two-sided.

### 4.5 Producer-consumer: canonical C++ vs separate-latch IR

Canonical C++ (`pc_kernel`) is rejected by **legality** in both B and C
(`InvalidDependencies`), so A/B/C are effectively identical. A hand-written
equivalent with a separate latch block (`pc_split_kernel`) is accepted by C and
fuses:

| N | A | B | C | C vs A |
|---:|---:|---:|---:|---:|
| 1,024 | 203 | 176 | 179 | -12.0% |
| 16,384 | 8,881 | 8,323 | 8,314 | -6.4% |
| 131,072 | 135,542 | 112,370 | 111,412 | -17.8% |
| 1,048,576 | 1,640,133 | 1,201,667 | 1,227,050 | -25.2% |
| 8,388,608 | 17,338,500 | 11,840,600 | 11,850,800 | -31.6% |

This is a ~15-32% missed opportunity caused by a DA/CFG interaction, not by the
reuse threshold.

### 4.6 The RFC's known case

Replica (`known_vec`, same `uint64_t -> uint8_t`, VW16, interleave 4):

| mode | A | B | C | B vs A | C vs A |
|---|---:|---:|---:|---:|---:|
| setup loops only | 4,451 | 3,403 | 3,386 | -23.5% | -23.9% |
| hot loop only (control) | 1,861 | 1,873 | 1,864 | +0.6% | +0.2% |
| body (setup + 1000 hot iters) | 1,867,183 | 1,895,550 | 1,912,142 | +1.5% | +2.4% |

The setup fusion is beneficial, and the hot-loop assembly is **byte-identical**
in A/B/C (same normalized SHA-256 over the function text, 89 `ymm` mentions
each). The hot-loop and body differences are within the noise floor.

Exact llvm-test-suite benchmark (`MicroBenchmarks/LoopVectorization/
VectorOperations.cpp`, filter
`benchForTruncOrZextVecInLoopWithVW16From_uint64_t_To_uint8_t_`):

| campaign | A (ns) | B (ns) | C (ns) | B vs A | C vs A |
|---|---:|---:|---:|---:|---:|
| v1 (7x5 reps) | 1,799 | 1,753 | 1,782 | -2.6% | -1.0% |
| v2 (10x5 reps, 0.3 s) | 1,895 | 1,945 | 1,909 | +2.7% | +0.7% |

The target function does fuse in B and C (verified by a `FuseCounter` remark on
the mangled function). The remark's candidates are `init_data` and
`truncOrZextWithNoVec` (the first two setup loops); the VW16 setup copy remains
separate. The hot timed copy is also separate: Google Benchmark calls
`StartKeepRunning()` after the setup and compare loops. The reported 6.52%
regression is **not reproduced**; the sign changes between campaigns and is
within our noise. Our absolute time is ~1.8x the RFC's 997 ns, consistent with a
different/faster machine (ours has no AVX-512).

### 4.7 Measurement noise

B and C often have **identical IR and assembly** (e.g. read_read, simd_metadata,
simd_reduction B/C: `Compare-Object` reports zero IR differences; assembly
differs only in the object-file name). Their measured differences are therefore
pure noise/layout: up to ~10% at 16K elements, ~1-2% for the large cases. We use
this as an honest noise floor. The 15-120% effects in the tables are far outside
it and reproduce across campaigns; small effects (-2% etc.) are not claimed as
significant.

## 5. Case studies

### 5.1 `simd_metadata`: a confirmed 2x false positive

Source: loop 1 has `#pragma clang loop vectorize_width(8) interleave_count(4)`;
loop 2 has `#pragma clang loop vectorize(disable)`. Both read exactly `A[i]`, so
the RAR key matches and C fuses.

Mechanism, confirmed at three levels:

- **Source/IR**: `simplifyLatchBranch(FC0)` makes FC0's latch unconditional;
  the fused backedge is FC1's latch, whose `!llvm.loop` metadata says
  `vectorize.disable`. The fused loop in `simd_metadata.C.ll` is scalar and
  unrolled by 4.
- **Assembly**: A has 176 `ymm` references in `simd_meta_kernel`; B and C have
  **zero**. Loop 1's AVX2 vector body disappears entirely.
- **Performance decomposition**: with both loops forced scalar (no pragmas),
  A=768 ns, C=771 ns at N=1024 - fusion itself is neutral. The vectorized A is
  406 ns. Thus the +96% regression at N=1024 is almost entirely lost SIMD, not
  fusion overhead. At N=16K the scalar control still shows +30% from fusion
  itself, and vectorization loss adds the rest (+113% total).

At N=8M the fused scalar loop is 17-18% faster because it traverses A once
instead of twice. The correct decision therefore depends on both the
vectorization loss and the cache/DRAM regime.

### 5.2 `shifted_reuse`: a clear false negative

Loop 1 reads `A[i]`; loop 2 reads `A[i+1]`; both write independent outputs.
Fusion is legal and preserves results (verified). The RAR key is `(A,8)` vs
`(A+8,8)`, so `collectReadReadReuse` finds 0 and C emits `InsufficientReuse`.
Unrestricted fusion (B) wins 17% at 1 MiB and 32% at 64 MiB. This is a
stencil/sliding-window pattern, not a synthetic corner. A constant-offset
extension of the affine key (same step, small constant difference, bounds and
alias checks) would capture it cheaply.

### 5.3 `read_read`: exact reuse is necessary but not sufficient

Same exact `A[i]` in both loops. C accepts at all sizes; benefit grows from ~0
(L1/L2) to 31% (DRAM). The classical explanation is reuse distance: at small N
the second loop would hit cache anyway; at large N fusion removes a full DRAM
pass. A cheap estimate is available: SCEV trip count x element size vs
`TTI.getCacheSize(...)`.

An additional pipeline gap: in the vectorized fused loop, GVN does not run
between LoopFusion and the vectorizer, so the fused loop still contains **two
vector loads of A** (`%wide.load` and `%wide.load21` in `read_read.C.ll`). In
the scalar build, later unrolling/CSE reduces it to one load per element. The
upstream issue comment (2026-09-30) reports the same missed-CSE opportunity in
`leslie3d`; a CSE pass immediately after fusion was worth ~5% there. This is a
known upstream limitation, not our discovery.

### 5.4 `producer_consumer`: canonical clang loops are rejected by DA

`pc_kernel` (clang `-O3`-style rotated loops) is rejected with
`InvalidDependencies` even with `min-reused-values=0`, so the **legality** check
is the blocker, not the profitability filter. `print<da>` shows:

- clang's single-block header/latch loops: `flow [|<]` (no fused-level mapping);
  `CurDir` is `LT`, `isScalar` returns true, and the code's
  `!(CurDir & GT) && !(CurDir & LT)` test fails;
- the upstream test shape with a separate latch: `flow [|<] / assuming 1 loop
  level(s) fused: [0|<]`, which maps to same-iteration reuse and is accepted.

A hand-written equivalent with a separate latch (`producer_consumer_split.ll`)
is accepted by C and gains 15-32%. Real clang output uses the first shape, so
the RAW reuse path - the primary motivation for the new cost model - is much
weaker in practice than the upstream tests suggest. This is an engineering
finding with a clear fix direction (normalize/query the fused direction
correctly for header/latch loops, or treat cross-loop forward flow as safe).

### 5.5 The RFC regression: not reproduced

See Section 4.6. In the exact benchmark the fused pair is `init_data` +
`truncOrZextWithNoVec`; the VW16 setup copy and the timed loop are untouched.
The benchmark is neutral across two campaigns. Our replica fuses the
`noVec`+VW16 pair instead (because it has no preceding init loop) and that
fusion makes the setup 23.5-23.9% faster and the body neutral. We cannot confirm the
original 6.52%; plausible reasons are a different CPU (AVX-512 capable),
different fusion order/codegen/layout, or noise in the five-run medians. The RFC
itself reports only five-run medians and no confidence intervals. This does not
invalidate the general vectorization-compatibility concern, but the specific
6.52% should not be treated as a fixed target.

### 5.6 `simd_reduction`: a negative result for a simple rule

Loop 1 is trivially vectorizable; loop 2 carries an FP reduction and is not
vectorizable without fast-math. A naive "one vectorizable + one not -> reject"
rule would reject this fusion, but it is **9.4-35.2% faster** to fuse. The
reduction chain is latency-bound; loop 1's scalar work hides under it, and the
memory pass is halved. Cost models must compare the actual benefit and loss, not
classify loop kinds.

## 6. Explanation of failures

| observation | status | evidence / uncertainty |
|---|---|---|
| Fused loop inherits FC1's `llvm.loop` metadata, losing FC0 vectorization | **confirmed** | source `simplifyLatchBranch`/rewire, IR metadata, 176->0 `ymm`, scalar control |
| Exact RAR start/step gate rejects shifted reuse | **confirmed** | `InsufficientReuse` remark; B legal and correct; 17-32% win |
| Canonical clang loops rejected for RAW reuse | **confirmed** | `print<da>` `[|<]` vs `[0|<]`; separate-latch IR accepted |
| Benefit grows with working set (cache residency) | **strongly supported** | monotonic size sweep; classic literature; no hardware counters |
| No post-fusion CSE leaves duplicate vector loads | **confirmed** | `read_read.C.ll` two `%wide.load`s; upstream issue comment confirms the pipeline gap |
| Scalar fused loop is 55-77% slower at L2-resident sizes | **unexplained** | unroll 8 did not help; one-cache-line offset did not help; not a power-of-two artifact; candidate stream/scheduling effects; no counters |
| RFC 6.52% regression | **not reproduced** | exact benchmark neutral; our CPU lacks AVX-512; five-run RFC medians |
| Register pressure causes a regression | **not demonstrated** | no clean case; do not claim |

Hardware performance counters were unavailable. We deliberately avoid
attributing the unexplained scalar slowdown to "cache conflicts" or "register
pressure" without counters; it remains an open question.

## 7. Existing research

A focused review is in
[`../research/loopfusion/literature.md`](../research/loopfusion/literature.md).
Summary:

- Cache-aware loop fusion/profitability is classical: Carr/McKinley/Tseng 1994;
  McKinley/Carr/Tseng 1996; Kennedy/McKinley 2000; Qasem/Kennedy 2006 (a
  cache-conscious profitability model for empirical tuning); Vera et al. 2005
  (locality cost model).
- Vectorization and fusion interact: Sewall et al. 2017; LLVM's LoopDistribute
  exists for the opposite transformation and has no cost model; the LoopFusion
  RFC and issue #189117 explicitly list vectorization compatibility and reuse
  strength as future work.
- Polyhedral fusion has its own cost models/conflict graphs (Acharya et al.
  2020; Polly/isl), but that is separate infrastructure.
- Register pressure-aware loop transformations are studied (e.g. register
  blocking 2024; pressure-aware scheduling), but we did not produce a clean
  case.

**Novelty assessment:** the *effects* we measured are known; the *specific
LLVM failures* (metadata inheritance, shifted-RAR false negative, DA/latch
legality false negative, post-fusion CSE gap) are new engineering observations
at this revision. A combined cache-residency x vectorization-metadata gate is a
new combination of known ideas, not a new algorithm or scientific law.

## 8. Potential contribution

### Hypothesis 1 - reuse-strength gate (cache residency)

- **Mechanism:** estimate the footprint of each reused affine stream
  (`trip count x element size`, plus stride/stream count) and compare with
  `TTI.getCacheSize(L2/LLC)`. If the reused data is already cache-resident,
  locality adds little; the decision should weigh loop-overhead/code-quality
  costs instead of assuming reuse is valuable.
- **Expected gain:** avoid neutral/weak fusions and, more importantly, avoid
  harmful fusions with weak reuse; rank candidates when several are possible.
- **Cost:** SCEV trip counts and TTI cache sizes are already available; O(1)-ish
  per candidate, no new dependence queries.
- **Limits:** shared LLC, strided/irregular access, prefetching, non-affine
  indices; the threshold is target- and layout-dependent.
- **Novelty:** low (classic cache-conscious fusion), but not present in LLVM's
  LoopFusion.
- **Validation:** size sweep + A/B on a broader corpus; compare against a fixed
  L1/L2/LLC threshold and a learned rule.

### Hypothesis 2 - vectorization-metadata/decision compatibility

- **Mechanism:** when the fused loop would inherit FC1's `llvm.loop` metadata
  (or the vectorizer's post-fusion decision), compare the effective vector
  width/enable state with both input loops. If FC0 is vectorized and the fused
  loop would be scalar/narrower, penalize or reject unless reuse is strong.
  Cheapest form: compare `llvm.loop.vectorize.*` metadata and
  `LoopVectorize` legality/width on both loops; more accurate but costlier:
  pre-query the vectorizer's VF for each loop.
- **Expected gain:** eliminate the +96-118% false positive; avoid other
  metadata-conflict cases.
- **Cost:** metadata comparison is negligible; a full vectorization-legality
  query is more expensive and may duplicate vectorizer work.
- **Limits:** missing metadata (auto-vectorization), target-dependent widths,
  and cases like `simd_reduction` where SIMD loss is still profitable.
- **Novelty:** low/medium; the RFC anticipates the general idea, but the
  metadata-inheritance mechanism is a concrete LLVM bug.
- **Validation:** controlled metadata variants (as in Section 4.3/Section 5.1) plus
  test-suite loops.

### Hypothesis 3 - shifted-RAR matching + post-fusion CSE

- **Mechanism:** extend the RAR key to `(base, step, constant offset)` with a
  small offset bound, or compare `SCEVAddRecExpr` starts modulo the step; keep
  the AA intervening-write check and add bounds/offset legality. Separately,
  schedule an EarlyCSE/GVN immediately after LoopFusion so fused loops reuse
  loads before the vectorizer.
- **Expected gain:** 17-32% on shifted stencil patterns; duplicate-load removal
  in read-read/producer-consumer; the upstream comment suggests ~5% on
  `leslie3d`.
- **Cost:** O(number of loads) map lookup; CSE is a standard pass, but adds
  compile time.
- **Limits:** shifted accesses may be unaligned, cross cache lines, or have
  negative offsets; correctness requires bounds reasoning.
- **Novelty:** engineering (exact-affine matching is an intentional initial
  restriction).
- **Validation:** our shifted case, stencil kernels, TSVC `s233`, and the
  test suite.

### Recommended combined rule

Fuse only if

```
benefit(reuse distance, footprint, number of reused streams)
  > cost(vectorization width loss, fused-body growth, unroll loss)
```

with a cheap veto: if the second loop's metadata would disable/narrow FC0's
vectorization **and** the reused footprint is below the L2/LLC threshold,
reject or downgrade. This explains all our data: `simd_metadata` is rejected at
small sizes (weak reuse + SIMD loss) but accepted at DRAM (strong reuse);
`read_read` is accepted when the footprint is large; `shifted_reuse` is accepted
by the extended key when the offset is legal; `simd_reduction` is still accepted
because its benefit is real.

## 9. Go / No-Go

**Go (engineering), with a narrow scope.** The errors are systematic, the
signals are cheap, and the expected practical payoff is large relative to a
small patch: eliminate a 2x regression and recover 15-32% missed wins. A Stage 1
prototype should implement the two cheapest pieces (metadata compatibility +
cache-residency strength) plus the shifted-RAR extension, then evaluate on the
full llvm-test-suite/TSVC and a small real C++ corpus. Success criteria:
- no new regression >2% on the chosen corpus;
- the `simd_metadata`-style 2x regression is rejected;
- shifted/stencil wins are recovered;
- compile-time overhead <1-2%;
- fusion count remains selective enough to avoid code bloat.

**No-Go (science as currently framed).** Cache-aware fusion profitability,
reuse-distance effects and vectorization/fusion tradeoffs are well established.
The RFC/issue already anticipate vectorization compatibility and reuse strength.
Our sample is small and partly synthetic; the RFC's flagship regression did not
reproduce; and the most novel findings are LLVM engineering bugs/limitations.
A publishable scientific result would need a broad, real-application corpus and
a new predictive theory, not just a cost model patch. The honest framing is:
*"a measurement-driven LLVM cost-model improvement"*, with the metadata and
DA/CFG findings as its most distinctive content.

**Practical caveat:** LoopFusion is not in any default pipeline. The immediate
value is for users who opt in (`-fexperimental-loop-fusion`) and for the
long-term goal of enabling it by default. That limits near-term impact but does
not invalidate the engineering work.

## 10. Next experiment

**Offline feature-based predictor on a broader corpus (no LLVM patch).**

Goal: test whether the two signals generalize beyond the six hand-built cases
before investing in Stage 1.

0. **Prerequisite - consistent toolchain.** Build clang and LLVM from the same
   commit and rerun the key findings without `ir_compat.py` and without
   modifying alias-scope metadata (report Section 3.4). If the effects do not
   survive this step, stop and report the baseline-specific result.
1. Take the llvm-test-suite `MicroBenchmarks/LoopVectorization`, TSVC
   (`LoopRestructuring`, `Packing`), and a small PolyBench subset.
2. Compile each benchmark with clang 23.1.5 to the same IR, run A/B/C with our
   exact pipeline, and record per-function fusion decisions and runtime.
3. Extract cheap features from the pre-fusion IR and TTI: reused-stream
   footprint (SCEV trip count x element size), number of reused values, loop
   vectorization metadata/widths, body instruction count, and whether the
   second loop has a separate latch.
4. Fit a simple decision tree/rule predicting `sign(runtime_B - runtime_A)` and
   cross-validate by benchmark family. Report false-positive/false-negative
   rates and the runtime cost of each error.
5. Success criterion: the rule predicts the sign with high accuracy on held-out
   families, and the metadata/DA patterns occur in at least a few real
   benchmarks. If not, the practical value of Stage 1 is limited and the line
   should stop.

This is the highest-information/lowest-cost next step: it directly tests
generalization, requires no compiler changes, and reuses the existing harness.
If it succeeds, Stage 1 should implement the two-signal gate and the
shifted-RAR extension; if it fails, the conclusion is that the synthetic errors
are too specific for a general LLVM cost model.

## Appendix A - reproduction commands

Build tools and cases as in [`../README.md`](../README.md). Core commands:

```powershell
# A/B/C build for one C++ case
powershell -File scripts/build_case.ps1 -Case read_read
python scripts/run_case.py --case read_read --n 8388608 --reps 1 --trials 7 --rounds 11 --tag r2b

# shifted reuse, current model rejects while forced fusion wins
powershell -File scripts/build_case.ps1 -Case shifted_reuse
python scripts/run_case.py --case shifted_reuse --n 8388608 --reps 1 --trials 7 --rounds 11 --tag r2b

# SIMD metadata conflict
powershell -File scripts/build_case.ps1 -Case simd_metadata
python scripts/run_case.py --case simd_metadata --n 1024 --reps 3000 --trials 7 --rounds 11 --tag r2b

# producer-consumer with separate-latch kernel IR
powershell -File scripts/build_case.ps1 -Case producer_consumer_split `
  -KernelLl benchmarks/producer_consumer_split.ll
python scripts/run_case.py --case producer_consumer_split --n 8388608 --reps 1 --trials 7 --rounds 11 --tag r2b

# exact llvm-test-suite benchmark
powershell -File scripts/build_testsuite_bench.ps1
python scripts/run_ts_known.py --rounds 10 --reps 5 --min-time 0.3s --tag v2

# summaries/tables
python scripts/analyze_remarks.py read_read shifted_reuse simd_metadata simd_reduction `
  simd_metadata_scalar known_vec producer_consumer producer_consumer_split ts_known
python scripts/make_tables.py
```

## Appendix B - raw data

- `results/raw/` - per-trial CSV (A/B/C, round, trial, ns).
- `results/summary_*.csv` - medians, MAD, bootstrap CIs.
- `results/tables.md` - compact Markdown tables.
- `results/fusion_summary.json` - per-function fusion/remark counts.
- `results/artifacts/<case>/<case>.<config>.ll` / `.s` - optimized IR and
  assembly; `remarks-<config>.yaml` / `loops-<config>.txt`.
- `results/raw/ts_known_v1.csv`, `ts_known_v2.csv` - exact benchmark runs.
- `results/environment.json` - tool/CPU/cache metadata.

## Appendix C - limitations

- Single CPU (i5-12500H, no AVX-512); results are not portable numbers, only
  effect directions and mechanisms.
- Windows laptop, no hardware performance counters; thermal/frequency noise
  controlled by interleaving but not eliminated (B/C identical-code spread up to
  ~10% at some sizes).
- Front end is clang 23.1.5 with an IR compatibility shim, not a native clang 24
  build; absolute codegen may differ slightly from LLVM `main`'s clang.
- The test-suite benchmark required a small MSVC portability patch to
  initialization and `noinline` stripping to emulate normal `-O3` inlining; the
  copy loops under test are unchanged.
- The producer-consumer performance result uses hand-written kernel IR to expose
  a legality gap; it is not a claim about standard clang-produced code.
- Literature review is targeted, not exhaustive; full texts were not all read.
