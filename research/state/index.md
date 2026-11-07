# Research state index

Updated: 2026-11-07. Short cross-session index; load before large reports.

## Current stage

- Stage 0 published; R1-A completed on matched LLVM `6f41962`.
- **R1.1/R1.1.1 audits completed**: output collisions, paired-block statistics,
  baseline/patched isolation, failure diagnostics and predictor v3.
- **R1.2 real-workload study completed**: 30 PolyBench cases and TSVC discovery;
  only two legal TSVC opportunities measured. The current gate handled both,
  but two cases do not establish generalization.
- R1-B mechanism evidence and a local metadata-guard prototype exist.
- R1-C is partial: controlled kernels plus a small real TSVC corpus.
- R1-D is an in-sample screen only; R1-E has finite checks, no independently
  proved theorem.
- **No stochastic memory model is integrated into LLVM.**

## Session start checklist

1. Read `AGENTS.md` and `CONTRIBUTING.md`.
2. Read this file.
3. Read one hypothesis from [hypotheses.json](hypotheses.json).
4. Load one report section: [R1.2 final](../../reports/r1_2_final.md),
   [R1.1.1](../../reports/r1_1_1_evidence_integrity.md),
   [R1.1 audit](../../reports/r1_1_measurement_audit.md), or
   [R1-A](../../reports/r1a_report.md).
5. Load one role and one skill only.
6. Check `git status`, branch and latest run.

## Active focus

**Next action:** a targeted R1.3 discovery study, not a cost-model
implementation: broaden whole-program/real families, test loop-distribution and
phase-order alternatives, and independently audit the TSVC wrapper. The R1.2
corpus is too small to justify a new LLVM profitability model.

```powershell
python scripts/r1_2_discover.py
python scripts/r1_2_evaluate.py
python scripts/research/validate_run.py --all --json
python scripts/research/check_docs.py --json
python -m unittest discover -s scripts/research/tests -v
```

## Hypothesis ledger

| ID | Short claim | Status | Review |
| --- | --- | --- | --- |
| H-LF-001 | Metadata inheritance can destroy vectorization | analyzed | self-review |
| H-LF-002 | Shifted RAR is a profitable false negative | analyzed | self-review |
| H-LF-003 | Fusion benefit depends on cache residency | analyzed | self-review |
| H-LF-004 | Canonical rotated loops fail DA/latch mapping | analyzed | self-review |
| H-LF-005 | RFC 6.52% regression is not reproduced here | inconclusive | self-review |
| H-R1-001 | Stage 0 findings survive matched tools | analyzed | self-review |
| H-R1-B1 | Fused loop inherits second-loop metadata | analyzed | self-review |
| H-R1-C1 | Failure classes recur in the controlled corpus | analyzed | self-review |
| H-R1-D1 | A cheap two-signal rule can beat exact reuse | inconclusive | self-review |
| H-R1-E1 | Exact LRU DP and capacity-one formula | analyzed | self-review |
| H-R1-E2 | Partial orders change achievable LRU statistics | analyzed | self-review |
| H-R1-F1 | Metadata guard removes the L1/L2 false positive | inconclusive | self-review |
| H-R1-AUDIT | R1 evidence is reproducible under paired-block analysis | analyzed | self-review |
| H-R12-001 | Real LoopFusion opportunities are rare; current gate handles two TSVC cases | analyzed | self-review |
| H-R12-002 | PolyBench kernel loops expose no legal LoopFusion opportunity | analyzed | self-review |
| H-HARNESS-001 | Protocol works without the transcript | analyzed | self-review |

Full statements and evidence: [hypotheses.json](hypotheses.json). Self-review is
not independent verification.

## Blockers and limitations

- No independent or human review of R1-A, R1.1 or mathematical claims.
- One laptop, no hardware counters; 7-9 blocks are still coarse.
- Several old A/A controls exceed 10%; small effects stay inconclusive.
- Historical `known_vec` setup/hot raw files were overwritten; new measurements
  are separate observations, not reconstructions.
- Exact VW16 test-suite benchmark remains not-testable for fusion under the
  native pipeline.
- R1-F patched `opt` is unverified and has only four blocks.
- R1.2 real corpus is small: 2 measured TSVC cases, no whole-program timing,
  and no independent audit of the TSVC wrapper.
- 126/136 TSVC functions and all 28 PolyBench functions did not become legal
  LoopFusion candidates; the reason set was not manually audited in full.

## Key evidence

- [R1.1 audit](../../reports/r1_1_measurement_audit.md) and
  [corrected stats](../../results/r1/EXP-20261107-R11-audit/reanalysis/audit_stats.md).
- [R1.1 predictor v3](../../results/r1/EXP-20261107-R11-audit/predictor_v3.md).
- [R1.1 campaign plan](../harness/plans/r1_1_measurement_plan.json).
- [R1.2 corpus](../../reports/r1_2_corpus.md),
  [profitability](../../reports/r1_2_profitability.md),
  [final](../../reports/r1_2_final.md).
- [R1.2 discovery](../../results/r1/EXP-20261107-R12-discovery/discovery.json),
  [TSVC campaign](../../results/r1/EXP-20261107-R12-tsvc-pinned/campaign_summary.json).
- [R1 synthesis](../../reports/r1_report.md), [R1-A](../../reports/r1a_report.md),
  [R1-F](../../reports/r1f_patch.md).
- [Toolchain v2](../harness/toolchains/llvm-24.0.0git-6f41962-v2.json).
- [Mathematical claims](../claims/), [theory note](../theory/lru-multiset-exact.md).
- [Decisions](decisions.md), [harness guide](../harness/README.md).

## State update rules

- Update a hypothesis status only under `research/harness/protocol.md`.
- Record decisions in [decisions.md](decisions.md).
- Keep this index short; link to detail.
- Never edit historical raw measurements; use new campaigns or audit outputs.
- End every session with next action, blockers, evidence and review needed.
