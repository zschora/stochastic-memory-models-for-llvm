# LLVM LoopFusion Profitability - Stage 0 to R1

Reproducible investigation of LLVM's initial LoopFusion cost model
(`-loop-fusion-min-reused-values`, merged 2026-10-14 in LLVM commit
`a244d7762eecc19c327ce1e65a995e466962ab05`).

**Stage 0 result:** the current binary "at least one exact reuse" gate accepts a
2x regression caused by loop-metadata/vectorization incompatibility and rejects
a legal shifted-reuse pattern worth 17-32%. The benefit of fusion scales with
working-set size, while the cost scales with lost vectorization / loop-level
code quality; the model considers neither.

**R1-A result:** on clang/opt/llc from one revision (`6f41962`) with native IR
and no `ir_compat.py`, the metadata false positive, shifted-reuse false
negative, cache-residency trend, canonical-loop legality failure and the
SIMD-difference counterexample all reproduce qualitatively. Exact magnitudes
changed. The RFC's 6.52% `uint64_t -> uint8_t` regression remains **inconclusive
/ not-testable** in the native pipeline; it was neither reproduced nor refuted.

Full analysis: [`reports/stage0_report.md`](reports/stage0_report.md) and
[`reports/r1_report.md`](reports/r1_report.md).

## Research scope and navigation

The LLVM LoopFusion experiments are one practical branch of a broader research
trajectory: random balanced sequences and leader changes, stochastic bridges,
random orderings of memory accesses, and exact ideal-LRU models. This history
motivates the work; **no stochastic cost model is yet integrated into LLVM**.

- [Research notes index](research/README.md)
- [R1 synthesis](reports/r1_report.md)
- [R1.1 measurement audit](reports/r1_1_measurement_audit.md)
- [R1.1.1 evidence integrity](reports/r1_1_1_evidence_integrity.md)
- [R1.2 final synthesis](reports/r1_2_final.md)
- [R1-A matched validation](reports/r1a_report.md)
- [R1-C corpus status](reports/r1c_corpus.md)
- [R1-F local prototype](reports/r1f_patch.md)
- [Portable research harness](research/harness/README.md)
- [Research state index](research/state/index.md)
- [Research origins and trajectory](research/origins.md)
- [LLVM LoopFusion notes](research/loopfusion/README.md)
- [Mathematical notes and formulas](research/theory/README.md)
- [Paper drafts and manuscripts](research/papers/README.md)
- [Git workflow and contribution guide](CONTRIBUTING.md)

## Research workflow

A new session starts at [research/state/index.md](research/state/index.md), picks
one hypothesis, loads one role and one skill on demand, and records work under
`research/runs/` or `research/claims/`. The harness protocol, handoff format and
review gates are documented in [research/harness/README.md](research/harness/README.md)
and [research/harness/protocol.md](research/harness/protocol.md).

```powershell
python scripts/research/doctor.py --docs-only --json
python scripts/research/doctor.py --experiment --json --toolchain-manifest research/harness/toolchains/llvm-24.0.0git-6f41962.json
python scripts/research/new_run.py --hypothesis H-R1-001 --dry-run
python scripts/research/validate_run.py research/runs/EXP-20261107-R1A
python scripts/research/check_docs.py
```

R1-A is complete but self-reviewed; R1-B has mechanism evidence, R1-C is partial,
R1-D is an in-sample rule screen, R1-E has finite mathematical checks, and R1-F
is a local prototype. R1.1 corrected the measurement infrastructure and
statistics; see [reports/r1_1_measurement_audit.md](reports/r1_1_measurement_audit.md).
Nothing is `supported` without independent review.

## Baseline

| item | value |
|---|---|
| LLVM `main` | `6f4196219399a3502cea3beb2d0c8c28b2241649` (2026-11-07) |
| cost-model merge | `a244d7762eecc19c327ce1e65a995e466962ab05` (PR #224626) |
| Stage 0 LLVM tool build | `LLVM 24.0.0git`, Release, X86, MSVC 19.51 |
| Stage 0 C++ front end | clang 23.1.5 (`392dfff97d29...`) |
| R1 matched toolchain | clang/opt/llc from `6f41962`, Release, X86, assertions OFF |
| llvm-test-suite | `d3f64b96fe6176716771a2e172f799caf1239b5b` |
| CPU | Intel i5-12500H, 4 P-cores + 8 E-cores, 16 threads |
| caches | L1d 48 KiB/P-core, L2 1.25 MiB/P-core, L3 18 MiB |
| OS | Windows 11 build 26200 |

Hardware/software metadata: [`results/environment.json`](results/environment.json).

### Baseline caveat: mixed versions

The baseline uses clang 23.1.5 as the C++ front end and LLVM 24.0.0git
`opt`/`llc`. `scripts/ir_compat.py` rewrites clang 23's old loop metadata and
removes alias-scope declarations/attachments so the IR passes the LLVM 24
verifier; function-level `noalias` attributes remain. A/B/C use the same
rewritten IR, so the comparison is internally consistent, but the exact results
are baseline-specific.

For Stage 1 the key findings were re-verified on a consistent toolchain
(clang and LLVM from `6f41962`) **without `ir_compat.py` and without changing
alias-scope metadata**; see [`reports/r1a_report.md`](reports/r1a_report.md).
The Stage 0 numbers remain baseline-specific.

## Layout

```
benchmarks/   minimal kernels + harness + patched upstream test-suite file
scripts/      build/run/analyze scripts
results/      raw measurements, summaries, IR/asm/remarks artifacts
research/     origins, LoopFusion notes, theory/ and papers/
  harness/    portable roles, skills, protocol, schemas and R1 plan
  state/      short session index and hypothesis ledger
  runs/       experiment and simulation records
  claims/     mathematical claim records
  loopfusion/ LLVM baseline, literature and Stage 0 navigation
  theory/     mathematical notes and proof-status labels
  papers/     article-length manuscripts and templates
reports/      Stage 0 report
LICENSE       Apache-2.0 WITH LLVM-exception
THIRD_PARTY_NOTICES.md  third-party attribution and modifications
.tools/       locally built LLVM and downloaded clang (not committed)
.work/        binaries and intermediate IR (not committed)
```

## Three configurations

A, B and C use the **same front-end IR** and the same `opt`/`llc` pipeline.
Only LoopFusion's profitability switch differs:

```
A: opt -passes=default<O3> -mcpu=alderlake
B: opt -passes=default<O3> -mcpu=alderlake -enable-loopfusion -loop-fusion-min-reused-values=0
C: opt -passes=default<O3> -mcpu=alderlake -enable-loopfusion -loop-fusion-min-reused-values=1
llc -O3 -mtriple=x86_64-pc-windows-msvc -mcpu=alderlake
```

`-enable-loopfusion` (no hyphen between "loop" and "fusion") is the hidden
`opt` switch that inserts `LoopFusePass` into the default pipeline. The clang
driver equivalent is `-fexperimental-loop-fusion`.

The front end is:

```
clang++ -O0 -Xclang -disable-O0-optnone -march=alderlake -std=c++17 -emit-llvm -S
```

`-disable-O0-optnone` keeps the IR optimizable. `scripts/ir_compat.py` then
rewrites old two-operand boolean loop tags emitted by clang 23.1.5 into the
single-operand form required by LLVM 24, and removes alias-scope attachments
that trigger a verifier mismatch. This is a front-end/IR-version compatibility
shim; the same rewrite is applied to A, B and C.

## Quick start

Build `opt`/`llc` from LLVM `main` (one-time; ~25 min on this machine):

```powershell
git clone --depth 1 --filter=blob:none --sparse https://github.com/llvm/llvm-project.git .tools/llvm-project
git -C .tools/llvm-project sparse-checkout set llvm cmake libc third-party
cmake -G Ninja -S .tools/llvm-project/llvm -B .tools/llvm-build `
  -DCMAKE_BUILD_TYPE=Release -DLLVM_TARGETS_TO_BUILD=X86 `
  -DLLVM_INCLUDE_TESTS=OFF -DLLVM_INCLUDE_EXAMPLES=OFF -DLLVM_INCLUDE_BENCHMARKS=OFF `
  -DLLVM_ENABLE_ASSERTIONS=OFF -DLLVM_ENABLE_ZLIB=OFF -DLLVM_ENABLE_ZSTD=OFF `
  -DLLVM_PARALLEL_LINK_JOBS=1 -DCMAKE_INSTALL_PREFIX=.tools/llvm-install
ninja -C .tools/llvm-build -j 6 opt llc llvm-as llvm-dis llvm-mca llvm-objdump
```

Put a matching C++ front end next to it (the scripts default to
`.tools/clang/clang+llvm-23.1.5-x86_64-pc-windows-msvc`). Any clang 23.x works
with `scripts/ir_compat.py`.

Build and run one case:

```powershell
powershell -File scripts/build_case.ps1 -Case read_read
python scripts/run_case.py --case read_read --n 8388608 --reps 1 --trials 7 --rounds 11 --tag r2b
```

Full matrix (Stage 0C):

```powershell
python scripts/run_matrix.py       # first pass
python scripts/run_key.py          # higher-sample second pass
```

Exact llvm-test-suite `VectorOperations` benchmark:

```powershell
# Google Benchmark static library (vendored in llvm-test-suite), MSVC:
cmake -G Ninja -S .tools/llvm-test-suite/MicroBenchmarks/libs/benchmark -B .tools/benchmark-build `
  -DCMAKE_BUILD_TYPE=Release -DBENCHMARK_ENABLE_TESTING=OFF -DBENCHMARK_ENABLE_GTEST_TESTS=OFF
ninja -C .tools/benchmark-build -j 2 benchmark

powershell -File scripts/build_testsuite_bench.ps1
python scripts/run_ts_known.py --rounds 10 --reps 5 --min-time 0.3s --tag v2
```

`build_testsuite_bench.ps1` uses `benchmarks/testsuite/VectorOperations.cpp`, a
local copy of the upstream file with a single portability patch: MSVC's STL
rejects `uniform_int_distribution<uint8_t>`, so the patched initializer uses a
wider distribution and casts. The copy loops under test are unchanged. The
script also expects the sparse llvm-test-suite clone under
`.tools/llvm-test-suite` for `main.cpp` and the vendored Google Benchmark.

## Measurement notes

- Kernels are called through a `volatile` function pointer, so the harness
  cannot inline, hoist or delete the measured work.
- Each process pins itself to logical CPU 2 (a P-core), raises priority, warms
  up, then reports per-call QPC timings.
- A/B/C processes are interleaved in randomized order; the report uses medians
  and 95% bootstrap CIs. Where B and C produce identical IR/asm, their spread is
  a direct estimate of measurement noise (up to ~10% at some sizes).
- Every run verifies results against an independent scalar reference and
  cross-checks the checksum across A/B/C.
- Hardware performance counters were not available in this environment; causal
  claims are supported by IR/asm and controlled variations (forced scalar,
  forced unroll, non-power-of-two sizes), not by cache counters.

## License

Original code and documentation in this repository are licensed under the
Apache License v2.0 with LLVM Exceptions; see [`LICENSE`](LICENSE). The
`benchmarks/testsuite/VectorOperations.cpp` file is an upstream llvm-test-suite
file with a local portability patch; its attribution, exact upstream commit and
modification are documented in [`THIRD_PARTY_NOTICES.md`](THIRD_PARTY_NOTICES.md).

## Key artifacts

- `benchmarks/README.md` - benchmark inventory and hypotheses.
- `scripts/README.md` - build/run/analysis script reference.
- `results/README.md` - evidence map and reading conventions.
- `reports/README.md` - report index and status.
- `results/tables.md` - compact result tables.
- `results/fusion_summary_key.json` - per-function LoopFusion remarks for the
  experiment kernels (`fusion_summary.json` has the full unfiltered dump).
- `results/raw/` - per-trial measurements.
- `results/artifacts/<case>/` - optimized IR, assembly, remarks YAML and loop
  dumps for A/B/C.
- `research/loopfusion/llvm_baseline.md` - pass implementation and upstream
  status.
- `research/loopfusion/literature.md` - literature/novelty notes.
