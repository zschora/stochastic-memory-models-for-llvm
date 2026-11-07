# Agent guidance

Read [CONTRIBUTING.md](CONTRIBUTING.md), [research/origins.md](research/origins.md) and the current [Stage 0 report](reports/stage0_report.md) before substantial changes. For research work, also read [research/state/index.md](research/state/index.md) and [research/harness/README.md](research/harness/README.md).

- Keep experiments narrow, reproducible and motivated by concrete observed failures.
- Follow English Conventional Commits: `type(scope): imperative summary`.
- Preserve Git author/committer identity from the user's configured Git; do not invent or silently impersonate a person.
- Never force-push `main`, erase previous results, or overwrite unrelated work.
- Place benchmark code in `benchmarks/`, scripts in `scripts/`, raw empirical evidence in `results/`, and LLVM experiment reports in `reports/`.
- Place mathematical notes and formulas in `research/theory/`, and long manuscripts in `research/papers/`.
- State proof status, source provenance and limitations. Distinguish exact math from measurements and from engineering hypotheses.
- The stochastic-bridge research motivated the LLVM project; do **not** claim it is already integrated into LLVM.
- A docs-only task must not trigger a large LLVM rebuild.
- Show exact revisions, checks performed and any blockers in the final report.
