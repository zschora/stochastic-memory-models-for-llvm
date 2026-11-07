// Replica of llvm-test-suite MicroBenchmarks/LoopVectorization/VectorOperations
// (uint64_t -> uint8_t, vectorize_width(16), interleave_count(4)).
//
// The original Google Benchmark body contains, after inlining:
//   1. a vectorize(disable) reference copy  A -> C
//   2. a VW16 copy                          A -> B
//   3. a compare loop
//   4. the timed `for (auto _ : state)` loop containing another VW16 copy
//
// Only loops 1 and 2 are adjacent and share the exact affine read A[i], so only
// they are a fusion candidate. This program isolates:
//   "setup" : loops 1+2 only
//   "hot"   : one VW16 loop only (control; must be identical in A/B/C)
//   "body"  : setup + `iters` executions of the hot loop (RFC-like total)
#include "harness.hpp"

#define ITERS_DEFAULT 1000

static inline __attribute__((always_inline)) void
copy_novec(const uint64_t *__restrict A, uint8_t *__restrict C, int n) {
#pragma clang loop vectorize(disable)
  for (int i = 0; i < n; ++i)
    C[i] = (uint8_t)A[i];
}

static inline __attribute__((always_inline)) void
copy_vw16(const uint64_t *__restrict A, uint8_t *__restrict B, int n) {
#pragma clang loop vectorize_width(16) interleave_count(4)
  for (int i = 0; i < n; ++i)
    B[i] = (uint8_t)A[i];
}

extern "C" __declspec(noinline) void
known_setup(const uint64_t *__restrict A, uint8_t *__restrict B,
            uint8_t *__restrict C, int n) {
  copy_novec(A, C, n);
  copy_vw16(A, B, n);
}

extern "C" __declspec(noinline) void
known_hot(const uint64_t *__restrict A, uint8_t *__restrict B, int n) {
  copy_vw16(A, B, n);
}

extern "C" __declspec(noinline) void
known_body(const uint64_t *__restrict A, uint8_t *__restrict B,
           uint8_t *__restrict C, int n, long iters) {
  copy_novec(A, C, n);
  copy_vw16(A, B, n);
  for (long r = 0; r < iters; ++r)
    copy_vw16(A, B, n);
}

using SetupFn = void (*)(const uint64_t *, uint8_t *, uint8_t *, int);
using HotFn = void (*)(const uint64_t *, uint8_t *, int);
using BodyFn = void (*)(const uint64_t *, uint8_t *, uint8_t *, int, long);
static SetupFn volatile g_setup = known_setup;
static HotFn volatile g_hot = known_hot;
static BodyFn volatile g_body = known_body;

int main(int argc, char **argv) {
  // argv[5] selects the measured function: body (default), setup, or hot.
  const char *mode = argc > 5 ? argv[5] : "body";
  bench::Args args = bench::parse_args(argc, argv, 10000, 32, 9);
  const size_t n = args.n;
  const int iters = ITERS_DEFAULT;

  uint64_t *A = (uint64_t *)bench::aligned_alloc64(n * sizeof(uint64_t));
  uint8_t *B = (uint8_t *)bench::aligned_alloc64(n * sizeof(uint8_t));
  uint8_t *C = (uint8_t *)bench::aligned_alloc64(n * sizeof(uint8_t));
  bench::init_u64(A, n, 12345);

  bench::pin_environment();

  SetupFn setup = g_setup;
  HotFn hot = g_hot;
  BodyFn body = g_body;

  setup(A, B, C, (int)n);
  bool ok = true;
  for (size_t i = 0; i < n; ++i)
    if (B[i] != (uint8_t)A[i] || C[i] != (uint8_t)A[i]) {
      ok = false;
      break;
    }
  std::printf("VERIFY %s\n", ok ? "OK" : "FAIL");
  if (!ok)
    return 1;
  uint64_t h = bench::hash_bytes(B, n);
  h ^= bench::hash_bytes(C, n);
  std::printf("CHECK %016llx\n", (unsigned long long)h);

  if (!std::strcmp(mode, "setup")) {
    for (int w = 0; w < 16; ++w)
      setup(A, B, C, (int)n);
    bench::run_trials("known_vec_setup", args.config.c_str(), n, args.reps,
                      args.trials,
                      [&] { setup(A, B, C, (int)n); });
  } else if (!std::strcmp(mode, "hot")) {
    for (int w = 0; w < 16; ++w)
      hot(A, B, (int)n);
    bench::run_trials("known_vec_hot", args.config.c_str(), n, args.reps,
                      args.trials, [&] { hot(A, B, (int)n); });
  } else {
    for (int w = 0; w < 4; ++w)
      body(A, B, C, (int)n, iters);
    bench::run_trials("known_vec_body", args.config.c_str(), n, args.reps,
                      args.trials,
                      [&] { body(A, B, C, (int)n, iters); });
  }

  bench::aligned_free(A);
  bench::aligned_free(B);
  bench::aligned_free(C);
  return 0;
}
