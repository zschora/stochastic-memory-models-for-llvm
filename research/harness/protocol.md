# Research protocol

This protocol is intentionally small. It defines how a question becomes a
traceable experiment or mathematical claim, and when a result may be believed.

## Lifecycle

```
Question -> Hypothesis -> Experimental design -> Execution -> Analysis
         -> Critical review -> Decision -> Next question
```

The Research Lead owns the lifecycle. Specialists produce bounded evidence; they
do not unilaterally promote claims.

## Hypothesis statuses

| Status | Meaning | Minimum requirement |
| --- | --- | --- |
| `proposed` | Interesting but not yet actionable. | Statement and motivation. |
| `planned` | Has a concrete experiment or proof plan. | Falsification and planned run/claim ID. |
| `running` | Data collection or derivation is in progress. | Run/claim record exists. |
| `analyzed` | Primary analysis is complete. | Raw evidence or proof notes linked. |
| `under-review` | A reviewer is checking the claim and evidence. | Reviewer assignment recorded. |
| `supported` | Survives review on the current evidence. | Validated evidence + independent or human review. |
| `refuted` | Credible evidence contradicts it. | Counterexample or reviewed analysis. |
| `inconclusive` | Evidence is insufficient or conflicting. | Documented limitations. |
| `archived` | No longer active; retained for history. | Reason and links. |

A status may move forward only when its minimum requirement is met. In
particular, `supported` requires all of:

- a run or claim record with resolvable evidence;
- evidence quality `validated` for experiments, or `proved` with an audited
  proof artifact for mathematics;
- review status `independent-review` or `human-review`;
- reviewer identity and `reviewer_type` (`separate-agent` or `human`);
- an explicit review decision `accept` or `accept-with-limits`;
- a review artifact path that exists;
- no unresolved correctness or provenance error.

`model-assisted-self-review` is useful but never counts as independent
verification. A second context from the same model is still self-review unless a
human or a genuinely separate agent performed it; the record must state which.

## Status history

Every experiment record carries `status_history` with `status`, `utc`, `reason`
and optional evidence links. The validator rejects unknown statuses, a last
entry that disagrees with `status`, and illegal transitions such as
`planned -> supported`. Reopening a claim (`supported -> under-review`) is
allowed; silently promoting one is not.

## Mathematical labels

Mathematical records use one of:

- `proved` - complete proof, assumptions explicit, independently checked;
- `working-proof` - plausible derivation with named gaps;
- `numerically-checked` - finite cases verified, no general proof;
- `conjecture` - precise statement without proof;
- `known-prior-art` - established result with a primary source;
- `refuted` - counterexample or invalid proof.

A numerical check does not establish a theorem. A theorem does not establish a
compiler improvement.

## Evidence labels

- **Measured**: produced by pinned tools and commands, with raw artifacts.
- **Preliminary**: measured but low-sample, noisy, or not independently checked.
- **Engineering hypothesis**: a proposed mechanism not yet validated.
- **Proved / working proof / numerically checked / conjecture**: mathematical
  status only.
- **Known prior art**: attributed to a primary source.

Never describe a cache, SIMD or register-pressure explanation as measured unless
the corresponding counters or controlled code-generation evidence exist. State
when hardware counters are unavailable.

## Structural validation versus truth

`validate_run.py` checks that required fields, paths, hashes, statuses and
review records are present and internally consistent. This is **structural
verification only**. No script can certify that a theorem is true, that a
measurement is unbiased, or that a review was competent. A passing validation
means "the evidence package is complete enough to review", not "the claim is
true".

## Toolchain provenance

Equal `clang`/`opt`/`llc` version strings are insufficient. Strict experiment
readiness requires an explicit toolchain manifest that records the full LLVM
source revision, source/build directories, CMake settings, exact binary paths,
SHA-256 hashes and version outputs. The states are:

| State | Meaning |
| --- | --- |
| `verified` | Manifest present; hashes, source revision, build cache and explicit paths agree. |
| `matched` | Version numbers agree, but provenance is not established. Not sufficient for R1 evidence. |
| `mixed` | Known inconsistent versions or revisions. |
| `unverified` | Missing manifest, missing tools or ambiguous discovery. |

`analyzed` and later experiment statuses require `verified`. See
[`toolchains/README.md`](toolchains/README.md).

## R1 measurement and predictor rules

- New timing campaigns use `scripts/r1_run_case.py`: randomized complete blocks,
  saved seed/schedule, process-level medians, exclusive per-point directories and
  no silent overwrites.
- Inference uses `scripts/r1_stats.py`: paired block ratios and a block
  bootstrap. Internal trials are not independent blocks. A/A is a noise gate.
- Small effects remain `inconclusive` unless the paired interval, sign stability
  and practical threshold support a stronger label.
- Predictor features are classified as `static`, `scenario`, `baseline` or
  `diagnostic`; post-fusion assembly and measured runtimes never enter a policy.
  See [`features/README.md`](features/README.md).
- Regret is absolute runtime above the per-point A/B oracle, with explicit
  weighting; it is not a sum of percentages.

## Experiment record requirements

Every physical campaign has a run directory with a `manifest.json` that records:

- stable experiment ID and hypothesis ID;
- Git base commit and branch, and whether the tree was dirty;
- clang, opt, llc and llvm-config versions and paths;
- toolchain consistency (`matched`, `mixed` or `unknown`) and caveats;
- build configuration, compiler flags and pass pipeline;
- host OS, CPU and cache information;
- test case, inputs and random seeds/order;
- repetitions, timing unit and measurement procedure;
- correctness oracle;
- commands actually run;
- relative paths to raw timings, IR, assembly and remarks;
- analysis script revision/path;
- result status, limitations and next action;
- review status.

Use `scripts/research/new_run.py` and `validate_run.py`; do not hand-wave fields.
A planned run may have empty artifacts, but `analyzed` and later statuses need
real evidence.

## Mathematical record requirements

A `claim.json` records exact model assumptions, the precise claim, proof status,
`proof_notes`, `proof_artifact`, numerical checks, `check_artifacts`,
counterexamples, `counterexample_artifacts`, prior art, unresolved obligations,
review status, reviewer identity and type, review decision, review artifact,
limitations and next action. Store derivations in the same directory. Do not put
CPU timings into a mathematical claim.

`proved` requires a real proof artifact, independent/human review with an accept
decision, a review artifact and zero unresolved obligations. `numerically-checked`
requires references to actual checks or generated artifacts. A file existing is
not a proof; the label means that a human or separate reviewer must still judge
the mathematics.

## Review protocol

The reviewer receives:

1. the claim in one paragraph;
2. the exact run or claim ID;
3. the evidence links;
4. known limitations.

The reviewer does not need the author's full transcript. The reviewer must try
to falsify the claim, check units/controls, inspect raw evidence, and choose:
`accept`, `accept-with-limits`, `needs-work`, or `reject`. If the same model
performs authoring and review, the record must say
`model-assisted-self-review`.

## Handoff contract

For Mode B, every task contains:

```text
Role:
Task:
Hypothesis / claim ID:
Inputs (paths or exact questions):
Required output (path or format):
Evidence standard:
Deadline or budget:
Do-not-do:
```

The receiving agent returns:

```text
Status: completed | blocked | needs-decision
Summary:
Artifacts written:
Evidence and checks:
Uncertainties:
Recommended next action:
```

The lead records the handoff and outcome in the run/claim record or state log.

## Gates

- **G0 - infrastructure**: doctor, docs check and harness tests pass.
- **G1 - toolchain**: matched compiler revisions and unaffected IR.
- **G2 - mechanism**: a minimal reproduction and a controlled alternative
  explanation.
- **G3 - corpus**: representative cases classified by legality and outcome.
- **G4 - prediction**: held-out evaluation of a simple rule.
- **G5 - patch**: one isolated mechanism, regression tests and broad comparison.
- **G6 - outcome**: reproducibility, review and Go/No-Go.

Do not skip a gate because a previous stage produced a plausible story.

## Session start and end

Start: read `AGENTS.md`, `CONTRIBUTING.md`, `research/state/index.md`, then one
hypothesis and the relevant report section. Check `git status` and the current
run.

End: update the hypothesis status only by the rules above; add artifacts; write
the next action and blockers; update `research/state/index.md` if priorities
changed; run `validate_run.py` and `check_docs.py`.
