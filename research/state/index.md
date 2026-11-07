# Research state index

Updated: 2026-11-07. This is the short cross-session index. Load it before any
large report or raw artifact.

## Current stage

- Stage 0 published; R1-A completed on matched LLVM `6f41962`.
- R1-B mechanism evidence and a local metadata-guard prototype exist.
- R1-C is partial: 10 controlled kernels, 41 size points; no real-workload corpus.
- R1-D is an in-sample rule screen only; R1-E has exact finite checks, no
  independently proved theorem.
- **No stochastic memory model is integrated into LLVM.**

## Session start checklist

1. Read `AGENTS.md` and `CONTRIBUTING.md`.
2. Read this file.
3. Read one hypothesis from [hypotheses.json](hypotheses.json); do not load all.
4. Load the relevant report section: [R1-A](../../reports/r1a_report.md),
   [R1-C](../../reports/r1c_corpus.md), [R1-F](../../reports/r1f_patch.md), or the
   [R1 synthesis](../../reports/r1_report.md).
5. Read one role from [../harness/roles/](../harness/roles/) and one skill only.
6. Check `git status`, the current branch and the latest run.

## Active focus

**Next action:** independent review of R1-A, then a held-out corpus and a static
two-signal (vectorization-compatibility + footprint) rule. Do not promote any R1
finding to `supported` without independent or human review.

Useful commands:

```powershell
python scripts/research/doctor.py --experiment --json --toolchain-manifest research/harness/toolchains/llvm-24.0.0git-6f41962.json
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
| H-R1-F1 | Metadata guard removes the L1/L2 false positive | analyzed | self-review |
| H-HARNESS-001 | Protocol works without the transcript | analyzed | self-review |

Full statements, evidence and next actions: [hypotheses.json](hypotheses.json).
Self-review is not independent verification.

## Blockers and limitations

- No independent or human review of R1-A or the mathematical claims.
- One laptop, no hardware performance counters; small effects are not claimed.
- Several A/A controls exceed 10%; only large effects are treated as established.
- The exact VW16 test-suite benchmark is not-testable for fusion under the native
  pipeline without an extra inlining rewrite.
- The local metadata-guard patch is not upstream-ready and misses DRAM cases.
- The corpus lacks TSVC, PolyBench and whole-program workloads.

## Key evidence and documents

- [R1 synthesis](../../reports/r1_report.md) - start here for outcomes.
- [R1-A matched validation](../../reports/r1a_report.md) and
  [campaign data](../../results/r1/EXP-20261107-R1A/table.md).
- [R1-C corpus status](../../reports/r1c_corpus.md).
- [R1-F prototype patch report](../../reports/r1f_patch.md).
- [R1 plan](../harness/plans/r1-research-program.md).
- [Toolchain manifest](../harness/toolchains/llvm-24.0.0git-6f41962.json).
- [Mathematical claims](../claims/) and [theory notes](../theory/lru-multiset-exact.md).
- [Decisions](decisions.md), [harness guide](../harness/README.md).

## State update rules

- Update a hypothesis status only under `research/harness/protocol.md`.
- Record a decision in [decisions.md](decisions.md) when priorities or gates change.
- Keep this index short; link to details instead of copying them.
- Do not edit Stage 0 raw measurements. Add a new run.
- End every session with: next action, blockers, evidence links and review needed.
