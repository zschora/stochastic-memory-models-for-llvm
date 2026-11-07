# Benchmarks

Minimal, controlled kernels for the LoopFusion A/B/C experiments. Every program
uses the same `harness.hpp` (QPC timing, CPU pinning, warmup, independent
verification, checksum) and is built from the same front-end IR; only the
LoopFusion profitability switch differs.

| File | Purpose |
| --- | --- |
| `producer_consumer.cpp` | Canonical clang producer-consumer loops. The current pass rejects them via DependenceAnalysis; retained as the legality control. |
| `producer_consumer_split.cpp` + `producer_consumer_split.ll` | Same computation with a hand-written separate latch block. The cost model accepts the RAW reuse; measures the missed opportunity. |
| `read_read.cpp` | Exact aligned read-read reuse (`A[i]` in both loops). Size sweep from L1 to DRAM. |
| `read_read_offset.cpp` | Diagnostic variant with B/C offset by one cache line; used only for the unexplained scalar slowdown control. |
| `shifted_reuse.cpp` | Legal shifted read-read reuse (`A[i]` vs `A[i+1]`); a false negative of the exact-affine key. |
| `shifted_reuse_k2/k4/k8.cpp` | Offset variants used to separate alignment/offset from cache-capacity effects. |
| `simd_metadata.cpp` | Loop 1 has a wide-vector pragma, loop 2 is scalar; measures the metadata/vectorization false positive. |
| `simd_metadata_scalar.cpp` | Both loops explicitly scalar; isolates vectorization loss from fusion overhead. |
| `simd_reduction.cpp` | Vectorizable loop plus an FP-reduction loop; a negative result where fusion is still profitable. |
| `known_vec.cpp` | Replica of the RFC's `uint64_t -> uint8_t` VW16 benchmark. |
| `testsuite/VectorOperations.cpp` | Local copy of the llvm-test-suite microbenchmark with an MSVC-only `init_data` patch; see `THIRD_PARTY_NOTICES.md`. |

`harness.hpp` is shared infrastructure, not a benchmark. Build and run commands
are in the [repository README](../README.md); result artifacts are under
[`../results/`](../results/). The Stage 0 interpretation is in the
[report](../reports/stage0_report.md).
