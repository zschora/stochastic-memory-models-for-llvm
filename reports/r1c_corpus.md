# R1-C corpus status

- Campaign: `EXP-20261107-R1A`
- Scope: controlled C++ microbenchmarks plus the exact llvm-test-suite VW16
  benchmark and the `known_vec` replica.
- Measurements: [`../results/r1/EXP-20261107-R1A/`](../results/r1/EXP-20261107-R1A/)

## 1. What was measured

Ten kernels, 41 measured size/mode points, all on the matched LLVM 24 revision
`6f41962` with native clang IR:

| kernel | legal fusion? | policy outcome | measured result |
| --- | --- | --- | --- |
| `read_read` | yes | B/C fuse | ~0 at 1K; -8% at 16K; -18 to -27% at 128K-8M |
| `read_read_offset` | yes | B/C fuse | -16% at 1K; neutral at 16K; -13 to -27% at 128K-8M |
| `shifted_reuse` | yes | B fuses, C rejects | B -17 to -28% at 128K-8M; C ~0; false negative |
| `simd_metadata` | yes | B/C fuse | +94/+131% at 1K/16K; +19% at 128K; -6%/-5% at 1M/8M; false positive |
| `simd_metadata_scalar` | yes | B/C fuse | +20% at 16K; +9% at 128K; neutral elsewhere; scalar control |
| `simd_reduction` | yes | B/C fuse | -13 to -33%; vectorization loss but profitable |
| `producer_consumer` | no | `InvalidDependencies` | no treatment; legality failure |
| `producer_consumer_split` | yes | B/C fuse | -18% at 1K; neutral at 16K; -18 to -27% at 128K-8M |
| `known_vec` setup | yes | B/C fuse | -11% (C), direction agrees with Stage 0 |
| `known_vec` hot/body | yes (setup) | B/C fuse | hot +0.7%, body -1.9%, within noise |
| exact VW16 test-suite | no kernel candidate | none | not-testable for fusion; A/B/C neutral |

Across the microbenchmark points, the offline oracle labels 20 profitable, 6
harmful and 7 neutral legal outcomes, plus 5 illegal points. These counts are
not independent benchmark families: they are mostly the same kernels at
different working-set sizes.

## 2. Classification

- **Legal, accepted, profitable:** `read_read`, `read_read_offset`,
  `simd_reduction`, `producer_consumer_split`, `known_vec` setup.
- **Legal, accepted, harmful:** `simd_metadata` at L1/L2, and the scalar control
  at 16K/128K. The metadata case is the large failure.
- **Legal, rejected, profitable:** `shifted_reuse` at 128K-8M.
- **Illegal:** canonical `producer_consumer`.
- **Neutral within noise:** `known_vec` hot/body, several small-size points.
- **Not-testable:** exact VW16 test-suite benchmark under the native pipeline.

## 3. Coverage limitations

This is not the requested 20-30 diverse real workloads. The repository contains
the llvm-test-suite MicroBenchmarks subtree but not TSVC or PolyBench, and no
whole-program run was attempted. The corpus is deliberately controlled: it
isolates legality, profitability, vectorization metadata, shifted reuse, cache
residency and a SIMD-looking counterexample. It cannot estimate how often these
failure classes occur in real C++ programs.

## 4. Reproduction

```powershell
python scripts/research/doctor.py --experiment --toolchain-manifest research/harness/toolchains/llvm-24.0.0git-6f41962.json
python scripts/r1_campaign.py --campaign EXP-20261107-R1A --cases read_read,read_read_offset,shifted_reuse,simd_metadata,simd_metadata_scalar,simd_reduction,producer_consumer,producer_consumer_split,known_vec --rounds 5 --trials 4
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/r1_build_testsuite.ps1 -Campaign EXP-20261107-R1A
python scripts/r1_run_testsuite.py --campaign EXP-20261107-R1A --rounds 5 --reps 5
python scripts/r1_analyze.py --campaign EXP-20261107-R1A
```

The campaign directory is immutable; use a new campaign ID for new measurements.

## 5. Next step

Add independent kernels from TSVC/PolyBench or small real numerical programs,
record legality/vectorization/fusion decisions before timing, and evaluate the
predictor on entire held-out families. Do not treat the current size sweep as a
representative corpus.
