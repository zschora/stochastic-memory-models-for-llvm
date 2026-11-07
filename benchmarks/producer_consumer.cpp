// Producer-consumer: loop 1 writes a temporary array, loop 2 reads it at the
// corresponding iteration. The current LoopFusion cost model sees a
// same-iteration RAW dependence and accepts the fusion.
#include "harness.hpp"

extern "C" __declspec(noinline) void
pc_kernel(const double *__restrict A, double *__restrict B,
          double *__restrict T, size_t n) {
  for (size_t i = 0; i < n; ++i)
    T[i] = A[i] * 1.5 + 2.0;
  for (size_t i = 0; i < n; ++i)
    B[i] = T[i] * 0.5 - 1.0;
}

using Fn = void (*)(const double *, double *, double *, size_t);
static Fn volatile g_fn = pc_kernel;

int main(int argc, char **argv) {
  bench::Args args = bench::parse_args(argc, argv, 1u << 16, 64, 9);
  const size_t n = args.n;
  double *A = (double *)bench::aligned_alloc64(n * sizeof(double));
  double *B = (double *)bench::aligned_alloc64(n * sizeof(double));
  double *T = (double *)bench::aligned_alloc64(n * sizeof(double));
  bench::init_f64(A, n, 12345);
  bench::init_f64(T, n, 999);

  Fn fn = g_fn;
  fn(A, B, T, n);

  // Independent scalar reference (B = (A*1.5+2)*0.5-1).
  bool ok = true;
  for (size_t i = 0; i < n; ++i) {
    double e = (A[i] * 1.5 + 2.0) * 0.5 - 1.0;
    if (!bench::close_enough(B[i], e)) {
      ok = false;
      break;
    }
  }
  std::printf("VERIFY %s\n", ok ? "OK" : "FAIL");
  if (!ok)
    return 1;
  std::printf("CHECK %016llx\n",
              (unsigned long long)bench::hash_bytes(B, n * sizeof(double)));

  bench::pin_environment();
  for (int w = 0; w < 16; ++w)
    fn(A, B, T, n);
  bench::run_trials("producer_consumer", args.config.c_str(), n, args.reps,
                    args.trials, [&] { fn(A, B, T, n); });

  bench::aligned_free(A);
  bench::aligned_free(B);
  bench::aligned_free(T);
  return 0;
}
