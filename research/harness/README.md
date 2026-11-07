# Portable research harness

Status: infrastructure, version 1.0, created 2026-11-07. This directory does not
contain R1 research results. Stage 0 is the published baseline; R1 has not
started.

This harness lets one lead researcher (human or AI) run a long, reproducible
investigation with on-demand specialists. It is deliberately repository-native:
Markdown instructions, JSON records, Python standard-library tools and ordinary
Git. It does not require a model, agent SDK, orchestration service, database or
network access.

## Architecture decision

Use a **single lead researcher with on-demand specialists**, implemented as
portable Markdown role files. Use the open Agent Skills `SKILL.md` convention
for reusable procedures, but keep every procedure readable manually.

| Alternative | Why not the primary architecture |
| --- | --- |
| One large `AGENTS.md` only | Lowest setup cost, but long tasks cause context bloat and no explicit review/handoff contract. |
| Role-specific Markdown (chosen) | Portable, cheap, auditable and reusable by any agent host. Weakness: the lead must schedule roles. |
| Orchestrator-worker agents | Useful when a host supports independent contexts, but not required; this harness defines the handoff without an API. |
| Independent evaluator workflow | Adopted as the Critical Reviewer role and review gates; a separate runtime is optional. |
| Agent Skills only | Good progressive disclosure, but skills are procedures, not roles, state or provenance. Used as a complement. |
| LangGraph / AutoGen / similar | Adds dependencies, hidden state and vendor coupling for capabilities that Markdown + JSON + Git already provide here. |
| Repository-native harness (chosen) | Works with terminal agents, DeepSeek, Claude, GPT, Gemini, OpenCode and future hosts; survives context resets and is testable offline. |

The tradeoff is deliberate: there is no automatic scheduler, graph runtime or
agent-to-agent transport. The Research Lead records assignments and accepts
handoffs as files. A multi-agent host may parallelize the same contract.

## Execution modes

### Mode A - one agent

The agent reads the state index, selects one hypothesis, loads the relevant
role file and skill on demand, executes, writes a run record, and asks for or
performs a critical review. No subagent API is needed.

### Mode B - multiple agents

A host with independent agents assigns one role and one bounded task per agent.
Each task uses the handoff contract in [protocol.md](protocol.md). Agents do not
share hidden transcripts; they exchange the task brief, evidence links and
artifacts. The lead merges the results and remains accountable.

## Context protocol

A new session should load, in order:

1. `AGENTS.md` and `CONTRIBUTING.md`;
2. [../state/index.md](../state/index.md) (short);
3. [../origins.md](../origins.md) only when project framing is needed;
4. one hypothesis from [../state/hypotheses.json](../state/hypotheses.json);
5. the relevant section of [../../reports/stage0_report.md](../../reports/stage0_report.md)
   or the R1 plan, not the whole archive;
6. one role file and one skill, not all of them.

Large raw results, IR, assembly and literature stay behind links until needed.

## Directory map

```
research/harness/README.md              this file
research/harness/protocol.md            lifecycle, statuses, gates, handoff
research/harness/upstream-policy.md     LLVM AI policy and local rules
research/harness/roles/                 six portable specialist roles
research/harness/skills/                four on-demand SKILL.md procedures
research/harness/schemas/               JSON Schemas for run/claim/toolchain records
research/harness/toolchains/            verified toolchain provenance manifests
research/harness/plans/                 R1 research programme (not executed)
research/state/index.md                 short cross-session index
research/state/hypotheses.json          machine-readable hypothesis ledger
research/state/decisions.md             architecture and evidence decisions
research/runs/                          experiment and simulation records
research/claims/                        mathematical claim records
scripts/research/                       doctor, new_run, validate_run, check_docs
```

## Quick start

```powershell
python scripts/research/doctor.py --docs-only --json
python scripts/research/doctor.py --experiment --json --toolchain-manifest research/harness/toolchains/<verified>.json
python scripts/research/new_run.py --hypothesis H-R1-001 --dry-run
python scripts/research/validate_run.py research/runs/SIM-0001-handoff-smoke
python scripts/research/check_docs.py
python -m unittest discover -s scripts/research/tests -v
```

`doctor.py --docs-only` must work without LLVM. `--experiment` is the strict
readiness check: it requires an explicit verified toolchain manifest and reports
missing binaries, source-revision disagreement, hash mismatch, build-cache
mismatch or PATH shadowing as errors. Equal version strings alone are
`matched`, not `verified`, and are not sufficient for R1-A.

## Validation contract

Records are validated against the JSON Schemas in
[`schemas/`](schemas/) using a small, explicit Draft 2020-12 subset implemented
in `scripts/research/schema_lite.py`. The subset is documented in that module
and `check_docs.py` rejects unsupported schema keywords. Repository-specific
semantic checks then enforce provenance, status transitions, review gates and
artifact existence. Structural validation proves that the evidence package is
complete and consistent; it cannot prove a theorem or the scientific validity of
a measurement.

## What the harness enforces

- A hypothesis must exist before an experiment run is created.
- Every run has a stable ID, Git base, toolchain provenance, commands, procedure,
  raw-artifact references and a review status.
- `analyzed` and later runs require verified toolchain provenance; equal version
  numbers alone are insufficient.
- A claim cannot move to `supported` without validated evidence, an explicit
  review decision and independent or human review.
- Mathematical `proved` requires a proof artifact, a review artifact and no
  unresolved obligations; `numerically-checked` requires real check artifacts.
- A model that reviews its own work records `model-assisted-self-review`, not
  independent verification.
- Existing raw Stage 0 evidence is not rewritten; new campaigns get new run
  directories.
- Upstream LLVM actions require explicit human approval and disclosure.

## Repository differences and assumptions

- The repository already had `AGENTS.md`, `CONTRIBUTING.md`, research notes and
  a Stage 0 report. This harness extends those conventions rather than replacing
  them.
- Stage 0 used clang 23.1.5 with LLVM 24.0.0git and `ir_compat.py`; it is not a
  matched toolchain and is not independently validated. R1-A must address this.
- LLVM is not required on `PATH`; tools are discovered under `.tools/` as a
  convenience. The harness itself only needs Python 3.10+.
- `ninja` may exist only as `.tools/ninja/ninja.exe`; `doctor.py` reports it but
  does not require it for documentation work.
- No stochastic memory model is integrated into LLVM or used by these tools.

## Non-goals

No agent scheduler, database, hosted service, vector store, automatic PR
posting, benchmark execution during documentation work, or replacement of the
existing LLVM benchmark scripts. R1 experiments are documented in
[plans/r1-research-program.md](plans/r1-research-program.md) and are intentionally
not started here.

## References

- Agent Skills specification: https://agentskills.io/specification (accessed
  2026-11-07). Frontmatter follows the `name` + `description` contract.
- LLVM AI Tool Use Policy: https://llvm.org/docs/AIToolPolicy.html (accessed
  2026-11-07). Local enforcement is summarized in
  [upstream-policy.md](upstream-policy.md).
- Evidence conventions: [protocol.md](protocol.md) and
  [../../CONTRIBUTING.md](../../CONTRIBUTING.md).
