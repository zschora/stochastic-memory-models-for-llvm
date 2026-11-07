---
name: research-synthesis
description: Assemble reviewed evidence into a decision and the next experiment. Use at the end of a hypothesis, before a stage gate, or when a report must separate supported conclusions, negative results and open questions.
license: Apache-2.0 WITH LLVM-exception
---

# Research synthesis

Use this file manually if the host does not implement Agent Skills.

## Inputs

- hypothesis ID and current status;
- run/claim IDs and evidence links;
- review verdicts and unresolved objections;
- known limitations and toolchain caveats.

## Procedure

1. **State the question and decision.** What would change if the answer is yes?
2. **List only reviewed evidence.** Separate measured facts, mathematical
   results and engineering hypotheses.
3. **State what was refuted or not reproduced.** Negative results are first-class
   outcomes.
4. **List unresolved questions and blockers.** Do not hide a mixed toolchain,
   missing counters or a broken reference.
5. **Assess practical impact.** Distinguish a compiler improvement from a
   mathematical curiosity and from an LLVM feature.
6. **Make a Go/No-Go decision** for the next small step. Justify cost versus
   expected information.
7. **Write one next task** with role, inputs, required output, evidence standard
   and stop condition.
8. **Update state** only under the protocol: hypothesis status, decision log,
   short index, next action.

## Output template

```text
Question:
Hypothesis / claim:
Evidence (reviewed):
What was reproduced:
What failed / was refuted:
Uncertainties and blockers:
Decision:
Next task:
```

Never mark a hypothesis `supported` in synthesis alone; the review gate must
already be satisfied.
