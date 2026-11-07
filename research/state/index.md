# Research state index

Updated: 2026-11-07. This is the short cross-session index. Load it before any
large report or raw artifact.

## Current stage

- Stage 0 is published and **not independently validated**.
- The portable research harness (v1.0) exists; **R1 has not started**.
- No stochastic memory model is integrated into LLVM.

## Session start checklist

1. Read `AGENTS.md` and `CONTRIBUTING.md`.
2. Read this file.
3. Read one hypothesis from [hypotheses.json](hypotheses.json); do not load all.
4. Load the relevant report section or R1 workstream.
5. Read one role from [../harness/roles/](../harness/roles/) and, if needed, one
   skill from [../harness/skills/](../harness/skills/).
6. Check `git status`, the current branch and the latest run.

## Active focus

**Next action:** R1-A, build clang and LLVM from one pinned revision, rerun the
Stage 0 examples without `scripts/ir_compat.py`, and record the outcome.

Do not start R1-B/C/D until R1-A has a reviewed conclusion.

Create the record with:

```powershell
python scripts/research/new_run.py --hypothesis H-R1-001 --dry-run
python scripts/research/new_run.py --hypothesis H-R1-001 --title "R1-A matched toolchain"
python scripts/research/validate_run.py research/runs/<ID>
```

## Hypothesis ledger

| ID | Short claim | Status | Review |
| --- | --- | --- | --- |
| H-LF-001 | Metadata inheritance can destroy vectorization | analyzed | self-review |
| H-LF-002 | Shifted RAR is a profitable false negative | analyzed | self-review |
| H-LF-003 | Fusion benefit depends on cache residency | analyzed | self-review |
| H-LF-004 | Canonical rotated loops fail DA/latch mapping | analyzed | self-review |
| H-LF-005 | RFC 6.52% regression is not reproduced here | inconclusive | self-review |
| H-R1-001 | Stage 0 findings survive matched tools | planned | not-reviewed |
| H-HARNESS-001 | Protocol works without the transcript | analyzed | self-review |

Full statements, evidence and next actions: [hypotheses.json](hypotheses.json).
A self-review is not independent verification.

## Blockers and limitations

- Stage 0 mixed clang 23.1.5 with LLVM 24.0.0git and modified alias-scope
  metadata; see report Section 3.4.
- No hardware performance counters were available; cache/SIMD causes are
  inferred from IR/assembly and controls.
- The exact RFC regression did not reproduce on this machine; it remains
  inconclusive, not refuted.
- R1-A has no run record yet.

## Key evidence and documents

- [Stage 0 report](../../reports/stage0_report.md) - read the executive summary
  and the relevant case study, not the whole document by default.
- [LoopFusion evidence map](../loopfusion/README.md).
- [R1 plan](../harness/plans/r1-research-program.md).
- [Harness guide](../harness/README.md) and [protocol](../harness/protocol.md).
- [Decisions](decisions.md).
- [Experiment records](../runs/) and [mathematical claims](../claims/).

## State update rules

- Update a hypothesis status only under `research/harness/protocol.md`.
- Record a decision in [decisions.md](decisions.md) when priorities, gates or
  architecture change.
- Keep this index short; link to details instead of copying them.
- Do not edit Stage 0 raw measurements. Add a new run.
- End every session with: next action, blockers, evidence links and any review
  still needed.
