# LLVM upstream policy and local rules

Source: [LLVM AI Tool Use Policy](https://llvm.org/docs/AIToolPolicy.html)
(`llvm/docs/AIToolPolicy.md`), accessed 2026-11-07. This is a summary; the
official policy and the contributor's human judgement prevail.

## Policy points that affect this project

- A human must be in the loop. The contributor must read, understand and review
  all LLM-generated code or text before asking LLVM maintainers to review it.
- The contributor remains the author and is accountable for correctness.
- Substantial tool-generated content must be disclosed, for example with an
  `Assisted-by: <assistant>` commit trailer or in the pull-request description.
- Agents must not act in LLVM spaces without human approval. This includes
  posting PRs, issues or review comments.
- AI tools must not be used to automate fixes for issues labelled
  `good first issue`.
- Contributions must be non-extractive: small, understandable and worth the
  maintainer review time. Start with small changes.
- Copyright and source provenance remain the contributor's responsibility.

## Local rules for this harness

1. R1 and Stage 0 are internal research. No agent may open, comment on, or
   update an LLVM PR/issue automatically.
2. Before any upstream proposal, a human must review the exact diff, evidence,
   tests and claim. Record that approval in the decision log.
3. Upstream patches must be one mechanism per patch, with regression tests and
   a broad benchmark comparison; no combined opaque changes.
4. Any LLM-assisted upstream text or code must carry transparent disclosure and
   must be understood by the submitting human.
5. `good first issue` automation is forbidden; do not create tooling that
   targets those issues.
6. Do not paste large generated text into LLVM discussions. Link to a focused
   artifact or write a short human-reviewed summary.
7. A local experiment, prototype patch or benchmark is allowed; upstream
   submission is a separate, human-approved action.

## Relationship to this repository

The stochastic-bridge and ideal-LRU notes are research motivation. No stochastic
memory model has been integrated into LLVM. The Stage 0 reports are internal
measurements and engineering hypotheses, not an LLVM feature or an endorsement
by LLVM maintainers.
