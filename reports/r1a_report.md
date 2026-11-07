# R1-A report - Stage 0 validation on a matched LLVM toolchain

> **R1.1 erratum (2026-11-07):** this report is retained as historical evidence.
> R1.1 found that the old runner's confidence intervals were not paired-block
> intervals, that the historical `known_vec` setup/hot raw files were overwritten,
> and that the toolchain manifest mislabelled clang provenance. Corrected
> estimates and new measurements are in
> [`r1_1_measurement_audit.md`](r1_1_measurement_audit.md). The compiler facts
> (fusion remarks, IR metadata, legality) are unchanged.

- Date: 2026-11-07
- Campaign: `EXP-20261107-R1A`
- LLVM revision: `6f4196219399a3502cea3beb2d0c8c28b2241649` (LLVM 24.0.0git)
- Toolchain manifest: [`../research/harness/toolchains/llvm-24.0.0git-6f41962.json`](../research/harness/toolchains/llvm-24.0.0git-6f41962.json)
- Clang: locally built from the same revision (Release, X86, assertions off)
- Front end: native clang 24 IR; **no `ir_compat.py` and no alias-scope or loop-metadata rewriting**
- Host: Intel i5-12500H, 16 GB RAM, Windows 11 build 26200; L1d 48 KiB/P-core, L2 1.25 MiB/P-core, L3 18 MiB (from the Stage 0 environment record)
- Raw data: [`../results/r1/EXP-20261107-R1A/`](../results/r1/EXP-20261107-R1A/)
- Run record: [`../research/runs/EXP-20261107-R1A/manifest.json`](../research/runs/EXP-20261107-R1A/manifest.json)

## 1. Scope and method

The campaign rebuilds every microbenchmark from source with the matched clang,
verifies the front-end IR, and runs the same `default<O3>` pipeline three times:

```text
A: opt -passes=default<O3> -mcpu=alderlake
B: ... -enable-loopfusion -loop-fusion-min-reused-values=0
C: ... -enable-loopfusion -loop-fusion-min-reused-values=1
```

Each case gets an identical-binary A/A control. A/B/C/AA processes are launched
in randomized round-robin order, pinned to logical CPU 2, with 5 rounds and 4
internal trials per process. Times are medians of per-call QPC measurements;
uncertainty is a 95% bootstrap interval over trials. Every binary verifies its
output against an independent scalar reference and the driver rejects a
checksum mismatch across configurations.

This is the first campaign in which clang and `opt`/`llc` come from the same
source revision and no front-end compatibility rewrite is used.

## 2. Fusion decisions

Decisions come from structured `loop-fusion` remarks, not from stderr text.
Kernel functions only:

| Case | B (unrestricted) | C (current model) |
| --- | --- | --- |
| `read_read` | `FuseCounter` | `FuseCounter` |
| `read_read_offset` | `FuseCounter` | `FuseCounter` |
| `shifted_reuse` | `FuseCounter` | `InsufficientReuse` |
| `simd_metadata` | `FuseCounter` | `FuseCounter` |
| `simd_metadata_scalar` | `FuseCounter` | `FuseCounter` |
| `simd_reduction` | `FuseCounter` | `FuseCounter` |
| `producer_consumer` | `InvalidDependencies` | `InvalidDependencies` |
| `producer_consumer_split` | `FuseCounter` | `FuseCounter` |
| `known_vec` setup/body | `FuseCounter` | `FuseCounter` |
| exact VW16 test-suite | no kernel candidate | no kernel candidate |

## 3. Results

Selected medians (negative is faster). The full 41-row table, raw CSVs, IR,
assembly and remarks are under the campaign directory.

| case | n | A ns | B vs A | C vs A | AA vs A |
| --- | ---: | ---: | ---: | ---: | ---: |
| `read_read` | 1,024 | 277 | +4.1% | +1.8% | +6.8% |
| `read_read` | 131,072 | 180,031 | -19.2% | **-17.6%** | +0.2% |
| `read_read` | 1,048,576 | 2,011,375 | -18.7% | **-20.7%** | +1.6% |
| `read_read` | 8,388,608 | 21,546,400 | -28.5% | **-27.0%** | +1.6% |
| `shifted_reuse` | 131,072 | 244,112 | **-16.8%** | -4.2% | -3.2% |
| `shifted_reuse` | 1,048,576 | 2,590,133 | **-22.7%** | -6.8% | -8.0% |
| `shifted_reuse` | 8,388,608 | 22,209,200 | **-27.8%** | -1.2% | +11.0% |
| `simd_metadata` | 1,024 | 545 | **+90.5%** | **+93.6%** | -5.2% |
| `simd_metadata` | 16,384 | 12,395 | **+128.3%** | **+130.9%** | +2.5% |
| `simd_metadata` | 131,072 | 212,698 | **+23.6%** | **+19.4%** | +4.1% |
| `simd_metadata` | 8,388,608 | 21,473,000 | -13.0% | -4.6% | +2.5% |
| `simd_metadata_scalar` | 16,384 | 28,143 | +28.8% | +20.1% | -4.2% |
| `simd_metadata_scalar` | 1,048,576 | 2,750,883 | +0.6% | -8.3% | -1.6% |
| `simd_reduction` | 16,384 | 37,995 | -8.9% | **-13.4%** | -1.0% |
| `simd_reduction` | 1,048,576 | 3,456,833 | -31.3% | **-27.9%** | -1.6% |
| `simd_reduction` | 8,388,608 | 28,335,700 | -29.8% | **-33.2%** | +1.4% |
| `producer_consumer_split` | 131,072 | 196,925 | -16.7% | **-17.5%** | +3.9% |
| `producer_consumer_split` | 1,048,576 | 2,284,133 | -29.3% | **-24.6%** | +3.4% |
| `producer_consumer_split` | 8,388,608 | 21,048,700 | -28.4% | **-26.6%** | +0.9% |
| `known_vec` setup | 10,000 | 6,842 | -19.3% | -11.2% | +7.2% |
| `known_vec` hot | 10,000 | 2,995 | -0.5% | +0.7% | +0.5% |
| `known_vec` body | 10,000 | 3,413,229 | +2.4% | -1.9% | -6.9% |

The A/A control is not always small: `read_read_offset` at 1,024 elements shows
+44.9%, `producer_consumer` at 131,072 shows -16.8%, and `producer_consumer_split`
at 16,384 shows +11.0%. The 15-130% treatment effects above are far larger, but
differences below roughly 10% are not treated as established.

## 4. Classification against Stage 0

| Stage 0 finding | R1-A classification | Basis |
| --- | --- | --- |
| Metadata/vectorization false positive | **reproduced** | C accepts; fused loop inherits the scalar metadata; assembly loses all 108 `ymm` uses; +93.6%/+130.9% at L1/L2. |
| Shifted reuse false negative | **reproduced** | C reports `InsufficientReuse`, B fuses and is 16.8-27.8% faster at 128 KiB-8 MiB. |
| Fusion benefit grows with footprint | **reproduced** | `read_read`: ~0 at 1 KiB, -17.6% at 128 KiB, -20.7% at 1 MiB, -27.0% at 8 MiB. |
| Canonical-loop DA/latch legality failure | **reproduced** | `producer_consumer` gets `InvalidDependencies`; the separate-latch pair fuses and is 17.5-26.6% faster at large sizes. |
| A blanket SIMD-difference rejection would be wrong | **reproduced** | `simd_reduction` fuses and is 13.4-33.2% faster despite losing SIMD. |
| RFC VW16 6.52% regression | **not-testable / still inconclusive** | The native matched pipeline exposes no kernel fusion candidate in the exact test suite benchmark; A/B/C are neutral (+0.3%/+1.5%, overlapping CIs). `known_vec` hot loop is +0.7% with identical hot-loop assembly. This does not refute the RFC. |
| DRAM-fusion magnitude | **changed** | `simd_metadata` at 8 MiB is -4.6% (C) instead of Stage 0's -17/-18%; CI [-9.6,+0.6] overlaps the A/A range. |
| `known_vec` setup benefit | **changed magnitude, same direction** | -11.2% (C) vs Stage 0 -23.9%; hot loop and body remain within noise. |

## 5. Mechanism evidence

### 5.1 Metadata inheritance

The fused loop's backedge in `simd_metadata` carries the second loop's
`llvm.loop` node (`vectorize.width = 1`). A hand-written minimal reproducer
(`results/r1/EXP-20261107-R1B-min/`) shows the same behaviour with
`llvm.loop.vectorize.disable`: `FuseCounter` fires, the fused latch keeps loop
2's metadata, and `loop-vectorize` reports `MissedExplicitlyDisabled`. Assembly
counts for the kernel: A has 108 `ymm` uses, B/C have zero. This is direct
mechanism evidence; the runtime magnitude is separate.

`simd_metadata_scalar` (both loops scalar) is +20.1% at 16,384 and +9.2% at
131,072, so fused-body/scalar overhead exists. It cannot explain the +130.9%
metadata conflict, which also removes all SIMD.

### 5.2 Shifted reuse

At 8 MiB, B is -27.8% and C -1.2% (A/A +11.0%). The gap C vs B is +36.9%. C's
`InsufficientReuse` remark and B's `FuseCounter` confirm that the exact affine
key, not legality, rejects the transformation. This is a profitability false
negative, not a legality failure.

### 5.3 Canonical producer-consumer

`producer_consumer` receives `InvalidDependencies` in both B and C, while the
hand-written separate-latch IR fuses in both and is 17.5-26.6% faster at
128 KiB-8 MiB. This reproduces a legality/CFG interaction, independent of the
reuse threshold. The canonical and split forms are not performance-identical at
small sizes, so the comparison is about legality and large-size locality.

### 5.4 SIMD-looking but profitable

`simd_reduction` loses vectorization but is 13.4-33.2% faster: the fused scalar
loop overlaps the reduction latency and halves the memory pass. Any predictor
that rejects on "vectorization differs" alone is contradicted by this case.

### 5.5 Post-fusion duplicate loads (observation only)

The fused `read_read.C.ll` vector body contains two copies of the `A` loads:
`%wide.load`/`%wide.load20` for the first loop and `%wide.load21`/`%wide.load22`
for the second, both from the same pointer. The vectorizer did not merge them.
This is direct evidence that fusion can expose redundant loads at the vector
level. It is **not** evidence that a post-fusion CSE would improve runtime: no
controlled pass-order experiment was completed, and the load may be served from
the same cache line anyway. The observation motivates a separate R1-B/CSE study;
it does not enter the cost-model claim.

## 6. Exact VW16 test-suite benchmark

The matched native build (`-O0 -disable-O0-optnone`, no compatibility rewrite)
produces **zero** `loop-fusion` kernel candidates: the candidate loops are
hidden behind non-inlined benchmark/setup functions. A/B/C are therefore
effectively the same treatment. Five rounds x five Google Benchmark repetitions
gave B +0.27% and C +1.54% versus A, with overlapping bootstrap intervals.

This is not a reproduction of the RFC's 6.52% regression, nor a refutation: the
required transformation did not occur. Reproducing the exact Stage 0 test would
require an extra inlining-preparation rewrite that is outside the native R1-A
protocol. The `known_vec` replica is the controlled substitute: its setup fusion
is beneficial, and its timed hot loop is neutral with identical hot-loop
assembly.

## 7. Limitations

- One laptop, one CPU, no hardware performance counters. Cache and SIMD
  explanations are supported by IR/assembly, not by counter measurements.
- Five rounds x four trials is sufficient for the large effects but not for
  small ones; several A/A controls exceed 10%.
- The front end emits `-O0 -disable-O0-optnone` IR to keep LoopFusion before the
  vectorizers, matching the Stage 0 design. This is not a normal user `-O3`
  front-end pipeline.
- Shared libraries, allocator layout and process placement can confound
  small-size results.
- The campaign is a model-assisted self-review. No independent reviewer or
  human has checked the raw data.
- No stochastic memory model is used by any tool or claimed as an LLVM feature.

## 8. Decision

**Go for R1-B mechanism work and a broader corpus.** The central Stage 0
failures reproduce qualitatively on a matched toolchain: the metadata false
positive, the shifted-reuse false negative, the cache-residency trend, the
canonical-loop legality rejection, and the counterexample to a blanket
SIMD-difference rule. Exact percentages and the DRAM metadata magnitude changed,
so Stage 0 numbers remain baseline-specific.

**No-Go for claiming the RFC regression or scientific novelty.** The exact VW16
case is not testable without an extra rewrite, and the study is a single-machine,
self-reviewed engineering result. Independent review remains required before any
claim is promoted to `supported` or used to justify an upstream patch.
