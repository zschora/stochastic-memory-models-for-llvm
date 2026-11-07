// SIMD compatibility: loop 1 is trivially vectorisable, loop 2 carries an
// FP reduction chain and is not vectorisable without fast-math. Both read the
// same exact affine stream, so the current cost model accepts the fusion.
// The fused loop cannot be vectorised, so loop 1 loses its SIMD execution.
#include "harness.hpp"

extern "C" __declspec(noinline) void
simd_kernel(const double *__restrict A, double *__restrict B,
            double *__restrict S, size_t n) {
  for (size_t i = 0; i < n; ++i)
    B[i] = A[i] * 2.0 + 1.0;

  double s = 0.0;
  for (size_t i = 0; i < n; ++i)
    s = s * 0.999999 + A[i];
  S[0] = s;
}

using Fn = void (*)(const double *, double *, double *, size_t);
static Fn volatile g_fn = simd_kernel;

int main(int argc, char **argv) {
  bench::Args args = bench::parse_args(argc, argv, 1u << 16, 64, 9);
  const size_t n = args.n;
  double *A = (double *)bench::aligned_alloc64(n * sizeof(double));
  double *B = (double *)bench::aligned_alloc64(n * sizeof(double));
  double *S = (double *)bench::aligned_alloc64(64);
  bench::init_f64(A, n, 12345);
  bench::init_f64(B, n, 7);

  Fn fn = g_fn;
  fn(A, B, S, n);

  bool ok = true;
  for (size_t i = 0; i < n; ++i)
    if (!bench::close_enough(B[i], A[i] * 2.0 + 1.0)) {
      ok = false;
      break;
    }
  double s = 0.0;
  for (size_t i = 0; i < n; ++i)
    s = s * 0.999999 + A[i];
  if (!bench::close_enough(S[0], s))
    ok = false;

  std::printf("VERIFY %s\n", ok ? "OK" : "FAIL");
  if (!ok)
    return 1;
  std::printf("CHECK %016llx\n",
              (unsigned long long)bench::hash_bytes(B, n * sizeof(double)));

  bench::pin_environment();
  for (int w = 0; w < 16; ++w)
    fn(A, B, S, n);
  bench::run_trials("simd_reduction", args.config.c_str(), n, args.reps,
                    args.trials, [&] { fn(A, B, S, n); });

  bench::aligned_free(A);
  bench::aligned_free(B);
  bench::aligned_free(S);
  return 0;
}
