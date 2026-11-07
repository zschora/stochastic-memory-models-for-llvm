# Third-party notices

This repository contains original research code, scripts, measurements and
artifacts. The original code is licensed under the Apache License v2.0 with LLVM
Exceptions (see `LICENSE`). Third-party components remain under their upstream
licenses, as summarized below.

## 1. `benchmarks/testsuite/VectorOperations.cpp`

- **Upstream project:** `llvm/llvm-test-suite`
- **Upstream path:** `MicroBenchmarks/LoopVectorization/VectorOperations.cpp`
- **Exact upstream commit:**
  [`d3f64b96fe6176716771a2e172f799caf1239b5b`](https://github.com/llvm/llvm-test-suite/commit/d3f64b96fe6176716771a2e172f799caf1239b5b)
- **Original file:**
  https://github.com/llvm/llvm-test-suite/blob/d3f64b96fe6176716771a2e172f799caf1239b5b/MicroBenchmarks/LoopVectorization/VectorOperations.cpp
- **Upstream license:** Apache License v2.0 with LLVM Exceptions
  (`llvm-test-suite/LICENSE.TXT` at the commit above):
  https://github.com/llvm/llvm-test-suite/blob/d3f64b96fe6176716771a2e172f799caf1239b5b/LICENSE.TXT
- **Local modification:** only the `init_data` helper was changed.
  MSVC's STL rejects `std::uniform_int_distribution<uint8_t>` because
  `uint8_t` is not one of the standard integer types accepted by the C++
  standard. The local copy widens the distribution to
  `unsigned long long` and casts back to `Ty`. A short attribution header was
  added at the top of the file. The copy loops under test
  (`truncOrZextWithNoVec`, `truncOrZextVecInLoopWithVW8/VW16/auto`,
  `truncOrZextVecWithAddInLoopWithVW8/VW16/auto`) are unchanged.
- **Verification:** the exact diff for the adaptation is in the commit history
  and in `git diff` against the upstream file at the pinned commit. The only
  functional change is the distribution/cast inside `init_data`.

The file is redistributed here under its upstream license. The Apache-2.0 with
LLVM Exceptions terms in `LICENSE` apply to this repository's original code;
the upstream file remains attributable to the LLVM Project. Generated IR,
assembly and remarks under `results/artifacts/ts_known/` are derived from this
file and the LLVM tools and are included only as reproducibility artifacts.

## 2. LLVM / Clang (not redistributed)

- **Projects:** `llvm/llvm-project`
- **Pinned LLVM commit:** `6f4196219399a3502cea3beb2d0c8c28b2241649`
- **Pinned cost-model merge:** `a244d7762eecc19c327ce1e65a995e466962ab05`
- **Front end used for the baseline:** clang 23.1.5,
  [`392dfff97d29b59d77e5cac6d4b6ef2585fe7117`](https://github.com/llvm/llvm-project/commit/392dfff97d29b59d77e5cac6d4b6ef2585fe7117)
- **License:** Apache License v2.0 with LLVM Exceptions
  (https://github.com/llvm/llvm-project/blob/main/LICENSE.TXT)

LLVM/Clang are built locally under `.tools/` and are **not** redistributed in
this repository. Generated IR/assembly/remarks under `results/artifacts/` were
produced by those tools from the benchmark sources; they are research artifacts,
not a redistribution of the LLVM compiler.

## 3. Google Benchmark (not redistributed)

- **Component:** Google Benchmark, vendored in llvm-test-suite at
  `MicroBenchmarks/libs/benchmark`
- **Version reported by the built library:** v1.9.5
- **License:** Apache License v2.0 (see the vendored `LICENSE` at the pinned
  llvm-test-suite commit):
  https://github.com/llvm/llvm-test-suite/blob/d3f64b96fe6176716771a2e172f799caf1239b5b/MicroBenchmarks/libs/benchmark/LICENSE
- **Use:** built locally as a static library to run the exact
  `VectorOperations.cpp` microbenchmark. No Google Benchmark source is committed
  to this repository.

## 4. llvm-test-suite `main.cpp` (not redistributed)

`scripts/build_testsuite_bench.ps1` reads
`MicroBenchmarks/LoopVectorization/main.cpp` from the local llvm-test-suite
checkout (`d3f64b96fe6176716771a2e172f799caf1239b5b`). It is not committed here;
it is subject to the same llvm-test-suite Apache-2.0 with LLVM Exceptions
license.

## 5. Everything else

All other source files, scripts, markdown, raw measurements and generated
artifacts in this repository were created for this research project. They do not
contain copied third-party source code. The benchmark kernels use only the C++
standard library, the Windows API (`windows.h`, `mmsystem.h`) and LLVM IR.

If you believe a third-party component is missing from this notice, please open
an issue with the file path and upstream source; we will correct the attribution.
