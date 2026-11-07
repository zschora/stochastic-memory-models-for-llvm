# R1.1 - Measurement Integrity and Statistical Audit

> **R1.1.1 erratum (2026-11-07):** the `n` values below are element counts, not
> MiB. The R1.1 predictor used a one-stream footprint proxy and the R1.1
> predictor selection could be contaminated by R1-F. The corrected dataset,
> memory accounting and predictor v3 are in
> [`r1_1_1_evidence_integrity.md`](r1_1_1_evidence_integrity.md). Original
> measurements and this report are retained as historical evidence.

- Date: 2026-11-07
- Branch: `fix/r1-measurement-integrity`
- Baseline `main` reviewed: `d48d090b723e080fe35360a9622c87cc7a461a43`
- New campaigns: `EXP-20261107-R11-audit` (13 points) and
  `EXP-20261107-R11-followup` (8 points)
- Toolchain: LLVM `6f4196219399a3502cea3beb2d0c8c28b2241649`, corrected
  manifest [`../research/harness/toolchains/llvm-24.0.0git-6f41962-v2.json`](../research/harness/toolchains/llvm-24.0.0git-6f41962-v2.json)
- Corrected statistics: [`../results/r1/EXP-20261107-R11-audit/reanalysis/audit_stats.md`](../results/r1/EXP-20261107-R11-audit/reanalysis/audit_stats.md)
- Predictor v2: [`../results/r1/EXP-20261107-R11-audit/predictor_v2.md`](../results/r1/EXP-20261107-R11-audit/predictor_v2.md)

## 1. Executive summary

The independent review's main concerns are confirmed.

- The historical `known_vec` runner wrote all three modes to the same raw CSV and
  summary path. The surviving file is the body-mode measurement; setup and hot
  raw data are permanently lost.
- The old "round" column is an execution index, not a statistical block, and the
  random seed and complete schedule were not preserved.
- The old intervals were separate bootstrap intervals for A and each treatment,
  then divided by a fixed A median. This is not the uncertainty of the relative
  effect and does not use the randomized-block structure.
- The old predictor used post-treatment YMM counts as a "feature" and summed
  absolute percentage changes as "runtime-weighted regret". It was not a
  deployable predictor and its regret number was not runtime-weighted.
- The historical toolchain manifest mislabelled locally built clang as
  `official-release-binary`.

All are fixed in code and documented. A new randomized-complete-block campaign
preserves every raw file separately, including `known_vec` setup/hot/body. A
second pre-registered follow-up covers the canonical producer-consumer,
`simd_reduction`, intermediate sizes and a scalar-fusion control.

The corrected evidence supports the **large** effects but weakens several small
ones:

- Metadata conflict remains a confirmed harmful fusion at 16 KiB (corrected
  historical C +143.4%; new scalar control at 16 KiB +36.8%) and at 128 KiB.
- At 1 MiB and 8 MiB the same metadata conflict is now **confirmed profitable**
  under C (−9.3% and −21.1%). The sign still depends on footprint.
- Shifted reuse remains a confirmed missed opportunity: B is −17.1%/−20.5% at
  128 KiB/1 MiB, while C is neutral (+3.0%/−2.5%).
- Large read-read benefits remain confirmed, but the 1 KiB and 16 KiB effects are
  **inconclusive**, not negative.
- The scalar-only control is confirmed harmful at 16 KiB (+36.8%) and 128 KiB
  (+15.6%), so fused-body/scalar overhead is a separate real cost, not just
  SIMD loss.
- `simd_reduction` is confirmed profitable (−33.5% at 1 MiB, −41.9% at 8 MiB).
- Canonical `producer_consumer` remains `InvalidDependencies`; its new runtime
  comparison is neutral, as expected when no kernel fusion occurs.
- The new predictor screen has no post-treatment decision inputs, but it is
  **in-sample only**. The best-looking rule (two-signal) misses three profitable
  points and has one false positive; its near-zero absolute regret is a
  large-point weighting artifact, not validation.

**Decision:** the repository is ready for R1.2 **provided** R1.2 uses the new
runner/statistics, the v2 toolchain manifest, and a held-out corpus. No rule in
this report is a deployable LLVM cost model.

## 2. Confirmed defects

### 2.1 `known_vec` raw-data collision

`r1_run_case.py` built the output stem as `case + tag + n`, excluding `mode`.
The three modes therefore wrote:

```text
results/r1/EXP-20261107-R1A/known_vec/raw_known_vec_r1a_n10000.csv
results/r1/EXP-20261107-R1A/known_vec/summary_known_vec_r1a_n10000.json
```

The campaign summary references that same raw path for setup, hot and body. The
surviving CSV is body mode (about 3.4 ms/call and 81 rows = 5 blocks x 4 configs
x 4 trials), not setup or hot. The original measurements for setup and hot are
not recoverable. This is recorded as a historical evidence gap, not repaired by
the new campaign.

### 2.2 Scheduling and provenance

- `random.shuffle` used an unrecorded process RNG state.
- The saved `round` field was `execution_index` (0..blocks*configs-1), not a
  block id.
- The complete order, seed, process-level identity and executable hashes were
  not stored.
- Internal trials were treated as if they increased the independent sample size.

The old data can be reconstructed into blocks (`block = round // n_configs`) only
because each old block happened to contain every configuration once. The audit
does this for historical files and records the assumption.

### 2.3 Statistical comparison

The old code computed a bootstrap interval for B and a separate bootstrap
interval for A, then compared B's interval to A's fixed median. It did not
compute paired block ratios and did not propagate block-level correlation. The
reported `delta_pct_vs_A` was therefore a descriptive ratio, not a confidence
statement about the relative effect.

### 2.4 Predictor leakage and metric

- `vectorization_compatible` used YMM counts from configuration A and C. C is
  post-fusion, so this cannot be a decision-time feature.
- Case categories and concrete `n` were hard-coded or benchmark-supplied.
- `runtime_weighted_regret_pct` summed absolute percentage changes, not runtime.
- Thresholds were chosen and evaluated on the same small set of repeated sizes.

### 2.5 Toolchain provenance

The historical manifest says clang is
`"provenance": "official-release-binary"`. In fact clang was built locally from
the pinned `.tools/llvm-project` source. The service record and build log show
`Linking CXX executable bin\clang.exe` and `clang project is enabled`.

The historical manifest is retained unchanged. The corrected manifest
`llvm-24.0.0git-6f41962-v2.json` marks clang `local-build`. R1-A remains tied to
the historical v1 manifest; new campaigns use v2.

## 3. Fixes implemented

### 3.1 Immutable measurement identity

`scripts/r1_run_case.py` now writes:

```text
results/r1/<campaign>/measurements/<case>/mode-<mode>/n-<n>/m-<hash>/attempt-NN/
  measurement.json
  schedule.json
  raw.csv
  summary.json
  failure.json        # only on failure
```

The point hash includes campaign, case, mode, n, configs, reps, trials, blocks,
seed, executable SHA-256 and toolchain-manifest SHA-256. Directories are created
exclusively; a completed measurement is never overwritten. JSON/CSV files use
temporary files plus `os.replace`. `--resume` validates parameters, status,
point id, raw rows and a complete balanced block before skipping.

### 3.2 Randomized complete blocks

- Every block runs A, B, C and AA exactly once.
- Order within each block is randomized from a recorded seed.
- `block_id`, `execution_index`, `position`, `trial_id`, `process_id`,
  executable hash and wall time are stored.
- `schedule.json` stores the planned and actual schedule, including failures.
- A and AA must be byte-identical; the runner refuses otherwise.
- Environment warnings (affinity/priority failures) are preserved.

### 3.3 Paired statistics

`scripts/r1_stats.py` defines:

- **Experimental unit:** process-level median for one configuration in one block.
- **Effect:** paired ratio `T_config / T_A` within the same block.
- **Estimate:** median block ratio; geometric mean as sensitivity.
- **Uncertainty:** percentile bootstrap over whole blocks (10,000 resamples).
- **A/A:** identical-binary ratio used as a noise gate.
- **Evidence labels:** `confirmed_profitable`, `confirmed_harmful`, `neutral`,
  `inconclusive`, `high_noise`, `requires_remeasurement`.

The default practical threshold is 5%. A/A drift above 5% or an A/A median CI
wider than 50 percentage points marks the point high-noise. Fewer than five
complete blocks yields `requires_remeasurement`. No multiple-comparison
adjustment is applied to the exploratory sweep.

### 3.4 Campaign pre-registration and resume

`scripts/r1_campaign.py` reads a JSON spec, builds cases once, executes each
point through the immutable runner, records commands and validates spec hashes.
The campaign summary is atomic and de-duplicated. Incomplete attempts are kept
as diagnostics; a new attempt gets a new `attempt-NN` directory. The complete
R1.1 plans are:

- [`../research/harness/plans/r1_1_measurement_plan.json`](../research/harness/plans/r1_1_measurement_plan.json)
- [`../research/harness/plans/r1_1_measurement_followup.json`](../research/harness/plans/r1_1_measurement_followup.json)

Both were written before their results were observed.

### 3.5 Predictor v2 and feature schema

`scripts/r1_features.py` extracts only pre-treatment IR facts from a small
scalar pipeline (`mem2reg`, loop-simplify, LCSSA, loop-rotate). Post-fusion
assembly and YMM counts are diagnostic-only. The category contract is:

- static: metadata hints, loop count, conservative reuse kind, element size,
  trip-count hint;
- scenario: benchmark `n`, footprint, L3 size;
- baseline: current compiler decision (available at decision time);
- diagnostic: post-fusion/measured facts, never a policy input.

The extractor marks unsupported properties `unknown`; it does not fabricate
them. The schema is
[`../research/harness/schemas/predictor-feature.schema.json`](../research/harness/schemas/predictor-feature.schema.json).

## 4. Corrected methodology

For a point with blocks `b = 1..B`, configuration `c` and baseline A:

```text
x_{b,c} = median over internal trials of ns_per_call
r_{b,c} = x_{b,c} / x_{b,A}
effect_c = median_b(r_{b,c})
CI_c = percentile bootstrap over resampled blocks
```

A point is `confirmed_profitable` only if the 95% CI upper bound is below
`1 - 0.05`, A/A is stable, and at least five blocks exist. `confirmed_harmful`
is symmetric. `neutral` means the entire CI is inside `[0.95, 1.05]`.
Everything else is `inconclusive` or `high_noise`. This deliberately does not
turn a small effect with five blocks into a confirmed claim.

The old summaries are retained. Corrected analyses are new files under
`results/r1/EXP-20261107-R11-audit/reanalysis/`; no original raw CSV was edited.

## 5. Original versus corrected results

Historical rows use reconstructed old blocks. New rows are independent
randomized-block measurements, not replacements for lost raw data.

| Finding | Original R1 | Corrected historical | New R1.1 measurement | Final classification |
| --- | --- | --- | --- | --- |
| `simd_metadata` 1 KiB C vs A | +93.6% | +111.6%, high-noise | not repeated | large harmful point estimate, but high-noise |
| `simd_metadata` 16 KiB C vs A | +130.9% | +143.4%, confirmed harmful | not repeated | **confirmed harmful** |
| `simd_metadata` 128 KiB C vs A | +19.4% | +23.6%, high-noise | not repeated | harmful point estimate, interval not clean |
| `simd_metadata` 1 MiB C vs A | -6.4% | -7.3%, inconclusive | -9.3%, **confirmed profitable** | **confirmed profitable at 1 MiB** |
| `simd_metadata` 8 MiB C vs A | -4.6% | -10.1%, inconclusive | -21.1%, **confirmed profitable** | **confirmed profitable at 8 MiB** |
| `simd_metadata_scalar` 16 KiB C vs A | +20.1% | +21.8%, high-noise | +36.8%, **confirmed harmful** | **confirmed harmful** |
| `simd_metadata_scalar` 128 KiB C vs A | +9.2% | +4.1%, high-noise | +15.6%, **confirmed harmful** | **confirmed harmful** |
| `shifted_reuse` 128 KiB B vs A | -16.8% | -19.2%, high-noise | -17.1%, **confirmed profitable** | **confirmed missed opportunity** |
| `shifted_reuse` 128 KiB C vs A | -4.2% | +0.1%, high-noise | +3.0%, inconclusive | C gives no confirmed benefit |
| `shifted_reuse` 1 MiB B vs A | -22.7% | -22.3%, high-noise | -20.5%, **confirmed profitable** | **confirmed missed opportunity** |
| `shifted_reuse` 1 MiB C vs A | -6.8% | -4.7%, high-noise | -2.5%, inconclusive | C gives no confirmed benefit |
| `read_read` 1 KiB C vs A | +1.8% | +5.1%, high-noise | -0.1%, inconclusive | **inconclusive** |
| `read_read` 16 KiB C vs A | -8.4% | -8.6%, inconclusive | +5.3%, inconclusive | **inconclusive / sign unstable** |
| `read_read` 128 KiB C vs A | -17.6% | -19.5%, inconclusive | not repeated | large point estimate; interval not clean |
| `read_read` 1 MiB C vs A | -20.7% | -17.6%, confirmed profitable | not repeated | **confirmed profitable** |
| `read_read` 8 MiB C vs A | -27.0% | -26.5%, confirmed profitable | not repeated | **confirmed profitable** |
| `read_read_offset` 1 KiB C vs A | -15.5% | -15.5%, high-noise | -5.6%, inconclusive | **no confirmed 1 KiB benefit** |
| `read_read_offset` 128 KiB C vs A | -23.9% | -27.0%, high-noise | -14.7%, **confirmed profitable** | **confirmed profitable at 128 KiB** |
| `read_read_offset` 1 MiB C vs A | -12.8% | -16.9%, high-noise | -18.3%, **confirmed profitable** | **confirmed profitable at 1 MiB** |
| `simd_reduction` 1 MiB C vs A | -27.9% | -31.0%, confirmed profitable | -33.5%, **confirmed profitable** | **confirmed profitable** |
| `simd_reduction` 8 MiB C vs A | -33.2% | -35.0%, high-noise | -41.9%, **confirmed profitable** | **confirmed profitable** |
| `producer_consumer` runtime | no kernel fusion | `InvalidDependencies` | B +1.2%, C +1.0% at 128 KiB (neutral) | **legality fact; no runtime treatment** |
| `producer_consumer_split` 1 MiB C vs A | -24.6% | -24.2%, inconclusive | -26.2%, **confirmed profitable** | **confirmed profitable** |
| `producer_consumer_split` 16 KiB C vs A | +0.3% | +0.7%, high-noise | +24.4%, inconclusive | **not established** |
| `known_vec` setup C vs A | -11.2% | raw lost | -23.3%, **confirmed profitable** | **confirmed benefit; historical raw unavailable** |
| `known_vec` hot C vs A | +0.7% | raw lost | +1.1%, neutral | **neutral** |
| `known_vec` body C vs A | -1.9% | +0.1%, neutral | -0.1%, neutral | **neutral** |

The full corrected table, including all offset variants and R1-F, is in
`audit_stats.md`. R1-F has only four blocks and a patched, unverified `opt`; it
is retained as `requires_remeasurement`, not as baseline evidence.

## 6. New measurements

Main campaign `EXP-20261107-R11-audit` (9 blocks for small/noisy points, 7 for
large points; 5 trials/process):

| Case | Mode | n | B vs A | C vs A | AA vs A | C class |
| --- | --- | ---: | ---: | ---: | ---: | --- |
| `known_vec` | setup | 10,000 | -24.9% | -23.3% | -0.4% | confirmed profitable |
| `known_vec` | hot | 10,000 | +1.2% | +1.1% | +0.5% | neutral |
| `known_vec` | body | 10,000 | -0.1% | -0.1% | +0.2% | neutral |
| `read_read` | - | 1,024 | -4.8% | -0.1% | -0.2% | inconclusive |
| `read_read` | - | 16,384 | +3.5% | +5.3% | -0.9% | inconclusive |
| `read_read_offset` | - | 1,024 | -8.0% | -5.6% | -0.6% | inconclusive |
| `simd_metadata_scalar` | - | 16,384 | +29.7% | +36.8% | +1.0% | confirmed harmful |
| `producer_consumer_split` | - | 16,384 | +0.1% | +24.4% | -1.4% | inconclusive |
| `producer_consumer_split` | - | 131,072 | -16.3% | -9.9% | +0.7% | confirmed profitable |
| `simd_metadata` | - | 1,048,576 | -9.0% | -9.3% | -2.5% | confirmed profitable |
| `simd_metadata` | - | 8,388,608 | -20.9% | -21.1% | -0.2% | confirmed profitable |
| `shifted_reuse` | - | 131,072 | -17.1% | +3.0% | -0.8% | inconclusive |
| `shifted_reuse` | - | 1,048,576 | -20.5% | -2.5% | +0.4% | inconclusive |

Follow-up campaign `EXP-20261107-R11-followup` (7 blocks):

| Case | n | B vs A | C vs A | AA vs A | C class |
| --- | ---: | ---: | ---: | ---: | --- |
| `producer_consumer` | 131,072 | +1.2% | +1.0% | +1.3% | neutral |
| `producer_consumer` | 1,048,576 | +0.9% | +2.7% | -2.4% | inconclusive |
| `simd_reduction` | 1,048,576 | -32.1% | -33.5% | -4.5% | confirmed profitable |
| `simd_reduction` | 8,388,608 | -41.1% | -41.9% | +0.7% | confirmed profitable |
| `read_read_offset` | 131,072 | -12.1% | -14.7% | +2.6% | confirmed profitable |
| `read_read_offset` | 1,048,576 | -24.5% | -18.3% | -1.7% | confirmed profitable |
| `producer_consumer_split` | 1,048,576 | -26.6% | -26.2% | +1.0% | confirmed profitable |
| `simd_metadata_scalar` | 131,072 | +19.3% | +15.6% | +0.2% | confirmed harmful |

Every point has its own `raw.csv`, `summary.json`, `schedule.json` and
`measurement.json`; `known_vec` setup/hot/body are separate.

## 7. Predictor evaluation corrections

### 7.1 Feature leakage removed

The old predictor used C's post-fusion YMM counts to decide
"vectorization_compatible". That is impossible before the transformation. The
v2 extractor uses only pre-treatment IR facts (metadata, loops, conservative
affine reuse, element size) and labels benchmark context as scenario. YMM,
assembly and measured runtimes are diagnostic-only. Tests assert that the
decision allowlist contains no diagnostic key.

### 7.2 Regret metric

For each legal point:

```text
T_policy = T_B if policy fuses else T_A
oracle    = min(T_A, T_B)
R_i       = T_policy - oracle
```

Reported metrics are absolute regret in ns/ms, relative to total baseline and
total oracle, equal-point weighted, plus geometric-mean speedup and worst
regression. No "sum of percentages" is called runtime-weighted.

### 7.3 In-sample screen (not validation)

| Policy | FP | missed profitable | regret (ms) | rel. baseline | geomean speedup | worst regression |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| current exact-reuse model | 2 | 12 | 22.675 | 13.16% | 1.1188 | 28.1% |
| metadata guard (static) | 2 | 13 | 26.167 | 15.19% | 1.1097 | 28.1% |
| metadata guard + L3 exception (scenario) | 2 | 12 | 22.675 | 13.16% | 1.1188 | 28.1% |
| footprint > 256 KiB (scenario) | 1 | 3 | 0.029 | 0.02% | 1.2260 | 17.6% |
| two-signal (scenario) | 1 | 3 | 0.029 | 0.02% | 1.2260 | 17.6% |

The current model still accepts harmful scalar/metadata fusions while rejecting
profitable shifted cases. The metadata guard fixes only explicit metadata
conflicts; it does not address scalar fused-body overhead. The footprint/two-
signal rows look strong **only because the threshold and evaluation use the same
small set of repeated sizes**. The near-zero absolute regret is dominated by
large-footprint points and ignores equal-family/workload weighting. This is an
exploratory screen, not a deployable model.

## 8. High-noise and inconclusive cases

- Historical five-block points often have wide block-bootstrap intervals. The
  audit marks them `high_noise` or `inconclusive` instead of treating a fixed-A
  interval as a treatment effect.
- `read_read` 1 KiB and 16 KiB changed sign across campaigns; both are
  inconclusive.
- `read_read_offset` 1 KiB's old -15.5% is not confirmed; the new estimate is
  -5.6% with a CI crossing the practical threshold.
- `producer_consumer_split` 16 KiB has a large but unstable point estimate
  (+24.4%) and is inconclusive; its 128 KiB/1 MiB/8 MiB benefits are confirmed.
- `simd_metadata_scalar` 16 KiB and 128 KiB are confirmed harmful; this is
  independent of SIMD metadata and shows a second cost mechanism.
- R1-F's patched `opt` has four blocks and no verified provenance; all R1-F
  classifications are `requires_remeasurement`.
- Exact VW16 test-suite benchmark was not retested in R1.1; its R1 status
  remains **not-testable for fusion** under the native pipeline.

## 9. Toolchain provenance correction

- Historical manifest:
  `llvm-24.0.0git-6f41962.json`, clang marked
  `official-release-binary`.
- Corrected manifest:
  `llvm-24.0.0git-6f41962-v2.json`, all four tools marked `local-build`.
- Source and build hashes are unchanged; `doctor --experiment` with v2 passes.
- The historical manifest is not edited. R1-A remains tied to it; new campaigns
  reference v2. The erratum is recorded in
  `research/harness/toolchains/README.md`.

## 10. Remaining threats to validity

- Single laptop, no hardware performance counters.
- Seven to nine blocks are still small; intervals are coarse and not
  multiple-comparison adjusted.
- Internal trials are not independent blocks; the analysis now respects this,
  but process-level frequency drift remains.
- The feature extractor uses early scalar IR, not the exact LoopFusion decision
  point; earlier passes could still change metadata.
- Scenario footprint is benchmark-provided, not a compiler feature.
- The corpus is controlled microbenchmarks, not a held-out real-workload family.
- Historical `known_vec` setup/hot raw data are lost.
- R1-F is a patched, unverified prototype, not baseline evidence.
- No independent or human review of this audit yet.

## 11. Readiness for R1.2

**Ready with constraints.**

Use:

- `scripts/r1_run_case.py` with randomized complete blocks and immutable
  per-point directories;
- `scripts/r1_stats.py` paired ratios and block bootstrap;
- the v2 toolchain manifest;
- the pre-registered campaign spec pattern.

Do not use:

- the old `r1_run_case.py` output naming;
- the old predictor results or its regret metric;
- the scenario thresholds as a deployable rule;
- R1-F as verified baseline evidence.

R1.2 must add held-out benchmark families, keep merge/legality facts separate
from runtime claims, and obtain independent review before promoting any
hypothesis to `supported`.
