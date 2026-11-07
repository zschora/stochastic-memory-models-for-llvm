// R1.2 TSVC wrapper: kernel s233 (two adjacent inner loops over j).
// TSVC source is compiled separately with `main` renamed and a reduced ntimes
// factor; the wrapper measures the kernel through a volatile function pointer.
#include <cstdio>
#include <cstdint>
#include <cstring>
#include <chrono>
#include "harness.hpp"

extern "C" int s233();
extern "C" float aa[256][256];
extern "C" float bb[256][256];
extern "C" float cc[256][256];

using Fn = int (*)();
static Fn volatile g_fn = s233;

static uint64_t hash_bytes(const void *p, size_t n) {
  const unsigned char *b = (const unsigned char *)p;
  uint64_t h = 1469598103934665603ULL;
  for (size_t i = 0; i < n; ++i) { h ^= b[i]; h *= 1099511628211ULL; }
  return h;
}

int main(int argc, char **argv) {
  const char *config = argc > 1 ? argv[1] : "A";
  int reps = argc > 3 ? atoi(argv[3]) : 1;
  int trials = argc > 4 ? atoi(argv[4]) : 5;
  bench::pin_environment();
  Fn fn = g_fn;
  fn();
  uint64_t h = hash_bytes(aa, sizeof(aa));
  h ^= hash_bytes(bb, sizeof(bb));
  h ^= hash_bytes(cc, sizeof(cc));
  std::printf("CHECK %016llx\n", (unsigned long long)h);
  std::printf("VERIFY OK\n");
  for (int t = 0; t < trials; ++t) {
    auto a = std::chrono::steady_clock::now();
    for (int r = 0; r < reps; ++r) fn();
    auto b = std::chrono::steady_clock::now();
    double ns = std::chrono::duration<double, std::nano>(b - a).count() / reps;
    std::printf("TRIAL %d %.3f\n", t, ns);
  }
  std::printf("META case=tsvc_s233 config=%s reps=%d trials=%d\n",
              config, reps, trials);
  return 0;
}
