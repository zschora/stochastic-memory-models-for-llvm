# R1.1.1 - Evidence Integrity Fix

- Date: 2026-11-07
- Reviewed baseline: `a54d6cda5ed4c8b25bd2e391b93ec6fe6e9166f7`
- Branch: `fix/r1-evidence-integrity`
- Corrected predictor: [`../results/r1/EXP-20261107-R11-audit/predictor_v3.md`](../results/r1/EXP-20261107-R11-audit/predictor_v3.md)
- Dataset selection: [`../results/r1/EXP-20261107-R11-audit/predictor_v3_selection.json`](../results/r1/EXP-20261107-R11-audit/predictor_v3_selection.json)
- Historical v2 output is retained unchanged.

## 1. Confirmed defects fixed

### 1.1 R1-F patched points contaminated baseline selection

`r1_predictor.py` assigned the same priority (`0`) to R1-F and historical
baseline campaigns and used `>=`, so R1-F points could replace R1-A points.
The predictor then failed to find fusion remarks in the baseline analysis and
classified `simd_metadata` 1 KiB/16 KiB/128 KiB as illegal.

This was a selection defect, not a compiler result. The three points are restored
from R1-A, where `FuseCounter` exists in both B and C. `simd_metadata`, n=16,384,
is now correctly `legal_and_fused` and `confirmed_harmful`.

### 1.2 Statistical labels were recomputed

The predictor recalculated labels from separate intervals instead of using the
authoritative `r1_stats.classify_effect` result. Some `high_noise` points could
be presented as confirmed. Predictor v3 uses the stored classification
verbatim and keeps `high_noise`/`requires_remeasurement` out of the confirmed
confusion matrix.

### 1.3 Failure diagnostics could fail to serialize

Checksum and verification failure paths passed Python sets to `json.dump`.
The error path could raise `TypeError` instead of writing diagnostics. Sets are
now converted to sorted lists. Timeout, process-return, checksum, verify,
parse and unexpected-exception paths all preserve a failure record and the
schedule.

### 1.4 Memory sizes were mislabelled

`n` is an element count, not a byte count. For a double-precision kernel with
three arrays:

| n | per stream | three-stream proxy |
| ---: | ---: | ---: |
| 1,048,576 | 8 MiB | 24 MiB |
| 8,388,608 | 64 MiB | 192 MiB |

The old predictor used `n * element_bytes`, which is at most one stream. It is
now `footprint_proxy_bytes = n * element_bytes * distinct_streams`. This is a
proxy, not allocation and not guaranteed timed working set. `bytes_allocated`
and `unique_bytes_touched` remain `unknown`; aliasing/bounds limitations are
explicit.

### 1.5 Completed-attempt validation was too shallow

Resume previously trusted `summary.json["status"]`. It now validates point
identity, parameter equality, schedule seed/blocks/configurations, one entry per
configuration per block, raw trial counts/IDs, finite positive timings, summary
observations vs raw medians, checksum/verify fields, and optional artifact
hashes. Text hashes normalize CRLF to LF for cross-checkout stability.

## 2. Experiment roles and deterministic selection

`scripts/r1_experiments.py` defines explicit campaign roles:

| Campaign | Role | Baseline eligible |
| --- | --- | --- |
| `EXP-20261107-R1A` | baseline_historical | yes |
| `EXP-20261107-R1C-offsets` | baseline_historical | yes |
| `EXP-20261107-R11-audit` | baseline_remeasurement | yes, priority 30 |
| `EXP-20261107-R11-followup` | baseline_remeasurement | yes, priority 25 |
| `EXP-20261107-R1F-patch` | patched_experimental | **no** |
| `EXP-20261107-R1B-min` | diagnostic_only | no |

Selection requires a baseline role, `toolchain.consistency == verified`, and a
fixed priority; ties use a stable campaign/point key. File/directory enumeration
order cannot change the result.

Result: **53 selected points**, **26 excluded**:

- 7 R1-F patched points: `patched_experimental`;
- 11 R1-A points superseded by R1.1 audit;
- 8 R1-A points superseded by R1.1 follow-up.

Selected by campaign: R1-A 20, R1-C offsets 12, R1.1 audit 13, R1.1 follow-up 8.

Legality classes are:

- `legal_and_fused` (B and C FuseCounter);
- `legal_but_rejected` (B fuses, C rejects);
- `illegal` (B shows an explicit legality/eligibility remark);
- `unknown_or_not_evaluated` (no remark evidence).

Absence of a `FuseCounter` is never treated as proof of illegality.

## 3. Corrected baseline policy screen (v3)

Still in-sample and exploratory. Only confirmed labels enter FP/FN/regret.

| Policy | FP | Missed profitable | Absolute regret | Relative to baseline | Geomean speedup | Worst regression |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| current exact-reuse model | 3 | 10 | 11.613 ms | 8.79% | 1.0882 | 126.4% |
| metadata guard (static) | 2 | 11 | 15.090 ms | 11.42% | 1.1119 | 28.1% |
| metadata guard + L3 exception | 2 | 10 | 11.597 ms | 8.78% | 1.1217 | 28.1% |
| footprint proxy > 256 KiB (scenario) | 3 | 2 | 0.048 ms | 0.04% | 1.1678 | 126.4% |
| two-signal (scenario) | 2 | 2 | 0.033 ms | 0.02% | 1.2037 | 28.1% |

Changes from v2:

- the three SIMD points are restored as legal, fused baseline cases;
- high-noise labels are preserved instead of recomputed;
- footprint is a multi-stream proxy, not one array;
- the `footprint_256k` rule now shows **3 false positives**, including the
  harmful scalar/metadata cases; its near-zero equal-point regret is driven by
  large absolute times, not by general safety;
- no policy is a deployable cost model.

## 4. Tests

- 36 focused tests in `test_r1_measurement.py`, `test_r1_failures.py`,
  `test_r1_predictor.py` pass.
- New failure tests actually exercise the runner with mocked processes for
  checksum mismatch, `VERIFY FAIL`, timeout and nonzero exit; resulting
  `failure.json` files are valid and contain diagnostics.
- Selection tests exclude R1-F and assert that source ordering cannot change the
  selected campaign.
- `simd_metadata` n=16,384 is asserted `legal_and_fused` and
  `confirmed_harmful`.
- `shifted_reuse` n=8,388,608 remains `high_noise`.
- Corruption tests alter raw timings, duplicate trial IDs, truncate schedules and
  change summary status; all are rejected.
- Memory tests cover one/multiple streams, repeated reads, shifted reuse,
  element sizes and unknown bounds.

## 5. Remaining limitations

- No independent review.
- The v3 screen is still in-sample; R1.2 must use held-out families.
- Scenario footprint is not a deployable compiler feature.
- The feature extractor uses early scalar IR, not the exact LoopFusion point.
- R1-F remains a four-block, patched-opt prototype and is excluded from baseline.
- Historical reports retain their original element-count wording; this report
  is the errata for memory-size claims.
