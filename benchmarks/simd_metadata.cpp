// SIMD metadata conflict: loop 1 carries an explicit wide-vector pragma, loop 2
// is explicitly scalar.  LoopFusion rewires the fused loop to end at FC1's
// latch, so the fused loop inherits FC1's `llvm.loop` metadata (scalar).
// The exact RAR reuse on A[i] makes the current cost model accept the fusion,
// silently discarding loop 1's vectorisation pragma.
#include "harness.hpp"

extern "C" __declspec(noinline) void
simd_meta_kernel(const double *__restrict A, double *__restrict B,
                 double *__restrict C, size_t n) {
#pragma clang loop vectorize_width(8) interleave_count(4)
  for (size_t i = 0; i < n; ++i)
    B[i] = (A[i] * 2.0 + 1.0) * 0.5 + A[i] * 0.25;

#pragma clang loop vectorize(disable)
  for (size_t i = 0; i < n; ++i)
    C[i] = A[i] * 3.0 - 1.0;
}

using Fn = void (*)(const double *, double *, double *, size_t);
static Fn volatile g_fn = simd_meta_kernel;

int main(int argc, char **argv) {
  bench::Args args = bench::parse_args(argc, argv, 1u << 16, 64, 9);
  const size_t n = args.n;
  double *A = (double *)bench::aligned_alloc64(n * sizeof(double));
  double *B = (double *)bench::aligned_alloc64(n * sizeof(double));
  double *C = (double *)bench::aligned_alloc64(n * sizeof(double));
  bench::init_f64(A, n, 12345);
  bench::init_f64(B, n, 7);
  bench::init_f64(C, n, 11);

  Fn fn = g_fn;
  fn(A, B, C, n);

  bool ok = true;
  for (size_t i = 0; i < n; ++i) {
    if (!bench::close_enough(B[i], (A[i] * 2.0 + 1.0) * 0.5 + A[i] * 0.25) ||
        !bench::close_enough(C[i], A[i] * 3.0 - 1.0)) {
      ok = false;
      break;
    }
  }
  std::printf("VERIFY %s\n", ok ? "OK" : "FAIL");
  if (!ok)
    return 1;
  uint64_t h = bench::hash_bytes(B, n * sizeof(double));
  h ^= bench::hash_bytes(C, n * sizeof(double));
  std::printf("CHECK %016llx\n", (unsigned long long)h);

  bench::pin_environment();
  for (int w = 0; w < 16; ++w)
    fn(A, B, C, n);
  bench::run_trials("simd_metadata", args.config.c_str(), n, args.reps,
                    args.trials, [&] { fn(A, B, C, n); });

  bench::aligned_free(A);
  bench::aligned_free(B);
  bench::aligned_free(C);
  return 0;
}
