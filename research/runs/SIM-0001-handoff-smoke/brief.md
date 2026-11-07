# Handoff brief: documentation-only smoke test

**Simulation:** `SIM-0001-handoff-smoke`
**Hypothesis:** `H-HARNESS-001`
**Mode:** one agent, no subagent API, no compiler execution.

## Question

Can a fresh session select a hypothesis, activate the right roles, make a
bounded handoff and record a review using only repository files?

## Task given to the Research Lead

Using only `research/state/index.md`, `research/harness/README.md` and
`research/harness/protocol.md`, identify the next action and write a one-task
brief for a specialist. Do not load the Stage 0 report or raw results.

## Task given to the Critical Reviewer

Review only the claim and limitations of this simulation. Check whether the
record overstates what a documentation-only test proves. Return one verdict:
`accept`, `accept-with-limits`, `needs-work` or `reject`.

## Evidence boundary

This record contains no timings, IR, assembly or mathematical proof. It
demonstrates workflow only. It cannot support a compiler or performance claim.

## Handoff result

The lead produced the state update below; the reviewer returned
`accept-with-limits`. See [review.md](review.md).

```text
Status: completed
Summary: harness files are sufficient to choose H-R1-001 as the next research
         task and to describe a bounded R1-A handoff.
Artifacts written: this brief and review.md
Evidence and checks: documentation link/validator checks only
Uncertainties: no independent reviewer, no real campaign
Recommended next action: run R1-A with a matched toolchain and record friction
```
