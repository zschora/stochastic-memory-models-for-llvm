# Git and research workflow

This is a research repository, so **reproducibility, attribution and clear claims** matter more than elaborate branch policy.

## Branches and pull requests

- `main` is the published baseline of reproducible results and reviewed documentation. Do not rewrite its history or force-push.
- Use short-lived branches: `research/<topic>`, `experiment/<topic>`, `fix/<topic>`, `docs/<topic>`.
- A tiny documentation fix may be committed directly; use a PR for benchmark methodology, code changes, new mathematical claims and major analyses.
- Keep PRs focused on one experiment, claim or engineering change. Link raw measurements, source revisions and related prior work.

## Commit messages: Conventional Commits

```text
type(scope): concise imperative summary

Why this change was necessary and what it changes.
Validation: commands or links to the evidence, as applicable.
```

Use English, lowercase `type` and `scope`, no final period in the title, and a short subject (about 72 characters or fewer). Types: `research`, `experiment`, `feat`, `fix`, `test`, `docs`, `refactor`, `build`, `chore`. Scopes: `loopfusion`, `bench`, `results`, `theory`, `llvm`, `workflow` or another stable component name.

Examples:

```text
docs(research): explain origins of the LLVM experiments
research(theory): derive capacity-one LRU miss expectation
experiment(loopfusion): benchmark shifted reuse across sizes
fix(bench): preserve the measured hot loop
feat(loopfusion): retain compatible vectorization metadata
```

Do not rewrite existing history to retroactively adopt this style. Keep real author attribution; an assistant must not invent or silently impersonate an author.

## Pull request description

Every substantive PR should state: **question/hypothesis**, **changes**, **method and controls**, **reproduction steps and evidence**, **limitations/negative results**, and **next decision**. Review comments should reference a precise file or claim, explain why it matters and, when possible, give a checkable counterexample.

## Experimental evidence

- Pin LLVM and test-suite revisions, compiler versions, flags, IR transformation pipeline and CPU/OS.
- Verify that compared programs actually differ in the intended optimization, and preserve output correctness.
- Keep raw timings, settings, summaries and the IR/assembly/remarks needed for causal analysis.
- Never modify or selectively discard raw campaigns to make an outcome look stronger; add a new reproducible run instead.
- Differentiate measured runtime from conjectures about cache, SIMD, register pressure or scheduling.
- Report known noise, unavailable performance counters and negative results.

## Mathematical evidence

Store formulas and proof notes in `research/theory/` and article-length manuscripts under `research/papers/`. Label each claim **Proved**, **Working proof**, **Numerically checked**, **Conjecture** or **Known prior art**. Numerical agreement does not establish a theorem or scientific novelty.

## Before a push

Check changed files and links, `git diff --check`, relevant tests, third-party attribution, and absence of secrets or restricted corporate/customer materials. Avoid committing LLVM build trees and unnecessary generated binaries. Report the commit SHA and actual validation performed.

## History note

The initial Stage 0 commit (`f0c0949`) and the license/third-party-notice commit (`7905950`) predate this workflow. They are published and intentionally preserved: do not rewrite or force-push them. New work should use the Conventional Commits format above.
