// Harness for the hand-written producer_consumer_split.ll kernel.  The kernel
// is linked as IR by build_case.ps1 -KernelLl; it is opaque here, so fusion
// inside it is not disturbed by harness inlining.
#include "harness.hpp"

extern "C" void pc_split_kernel(const double *__restrict A,
                                double *__restrict B,
                                double *__restrict T, size_t n);

using Fn = void (*)(const double *, double *, double *, size_t);
static Fn volatile g_fn = pc_split_kernel;

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
  bench::run_trials("producer_consumer_split", args.config.c_str(), n,
                    args.reps, args.trials, [&] { fn(A, B, T, n); });

  bench::aligned_free(A);
  bench::aligned_free(B);
  bench::aligned_free(T);
  return 0;
}
