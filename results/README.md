# Results

Empirical evidence for the Stage 0 LoopFusion study. Raw measurements are
preserved as recorded; summaries and derived tables are reproducible from them.

| Path | Contents |
| --- | --- |
| `environment.json` | LLVM/clang/test-suite revisions, flags, CPU, caches and OS. |
| `raw/` | Per-trial CSVs for the `r2b` campaigns, the earlier `r2` pass and the exact `ts_known` campaigns. |
| `summary_*.csv` | Medians, MAD and 95% bootstrap CIs per case/size/config. |
| `tables.md` | Compact Markdown tables used by the report. |
| `fusion_summary.json` | Full per-function LoopFusion remark dump. |
| `fusion_summary_key.json` | Filtered remarks for the experiment kernels. |
| `artifacts/<case>/` | Optimized IR, assembly, remarks YAML and loop dumps for A/B/C. |

## Reading conventions

- `A` = fusion off, `B` = unrestricted fusion (`-loop-fusion-min-reused-values=0`),
  `C` = current model (`-loop-fusion-min-reused-values=1`).
- Negative deltas are improvements.
- Where B and C produce identical IR/assembly, their difference estimates
  measurement noise; do not interpret small differences as an effect.
- `r2b` is the final higher-sample campaign used in the report. The earlier `r2`
  rows remain for comparison and are not silently discarded.
- Do not edit or selectively trim raw campaigns to strengthen a claim. Add a new
  reproducible run with a new tag instead.

The exact test-suite artifacts under `artifacts/ts_known/` are derived from the
patched upstream file; attribution is in `../THIRD_PARTY_NOTICES.md`. The
baseline toolchain caveat and the required consistent-toolchain rerun are in
[`../reports/stage0_report.md`](../reports/stage0_report.md) Section 3.4.
