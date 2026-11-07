# Scripts

Thin, inspectable scripts for the Stage 0 workflow. All paths are relative to the
repository root; heavy toolchains and build products live in ignored `.tools/`
and `.work/` directories.

| Script | Purpose |
| --- | --- |
| `build_case.ps1` | Compile one benchmark to front-end IR, apply the compatibility shim, run A/B/C `opt`+`llc`, link, and record IR/asm/remarks. Optional `-KernelLl` links a hand-written kernel. |
| `build_testsuite_bench.ps1` | Build the exact llvm-test-suite `VectorOperations` benchmark against the vendored Google Benchmark library. |
| `ir_compat.py` | LLVM 24 verifier compatibility: rewrites old boolean loop tags and removes alias-scope constructs emitted by clang 23.1.5. Baseline-only; see the report caveat. |
| `run_case.py` | Interleaved A/B/C runner for one case/size; writes raw trials and summary statistics. |
| `run_matrix.py` | First, lower-sample matrix over all cases and sizes. |
| `run_key.py` | Higher-sample `r2b` campaign for the cases used in the report. |
| `run_ts_known.py` | Interleaved A/B/C runs of the exact test-suite benchmark with Google Benchmark JSON output. |
| `analyze_remarks.py` | Extract per-function `FuseCounter`/`InsufficientReuse` events from remarks YAML. |
| `make_tables.py` | Build `results/tables.md` from the summary CSVs. |
| `ascii_normalize.py` | Utility that normalizes the documentation files to ASCII. |
| `research/doctor.py` | Environment and documentation readiness; `--docs-only` works without LLVM, `--experiment` requires an explicit verified toolchain manifest. |
| `research/new_run.py` | Create a non-overwriting experiment, mathematical or simulation record. |
| `research/validate_run.py` | Validate JSON Schema subset, provenance, artifact paths, status transitions, review gates and duplicate IDs. |
| `research/check_docs.py` | Offline Markdown link, role, skill, schema and state-index checks. |
| `research/record_toolchain.py` | Record explicit LLVM source revision, build cache, binary paths, hashes and versions as a toolchain provenance manifest. |
| `research/schema_lite.py` | Explicit JSON Schema subset validator used by the harness. |
| `research/tests/test_harness.py` | Fast offline unittest suite for the harness tools, provenance checks and invalid records. |

## Order

```powershell
powershell -File scripts/build_case.ps1 -Case read_read
python scripts/run_case.py --case read_read --n 8388608 --reps 1 --trials 7 --rounds 11 --tag r2b
python scripts/analyze_remarks.py
python scripts/make_tables.py
```

The full reproduction commands, including the LLVM build and the exact
test-suite benchmark, are in [`../README.md`](../README.md). The measurement
interpretation and limitations are in
[`../reports/stage0_report.md`](../reports/stage0_report.md). `ir_compat.py` is
a mixed-version workaround, not part of the proposed cost model; Stage 1 must
rerun without it on a consistent toolchain.
