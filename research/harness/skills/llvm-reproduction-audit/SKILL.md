---
name: llvm-reproduction-audit
description: Audit or reproduce an LLVM transformation claim. Use when checking whether LoopFusion or another pass actually fired, comparing A/B/C pipelines, inspecting IR or assembly, or distinguishing legality from profitability.
license: Apache-2.0 WITH LLVM-exception
---

# LLVM reproduction audit

Use this file manually if the host does not implement Agent Skills.

## Inputs

- Claim/hypothesis ID and one-paragraph claim.
- LLVM commit, clang version, test-suite revision, target CPU.
- Intended pass switch and the configurations being compared.

## Procedure

1. **Pin revisions.** Record `git rev-parse HEAD` for the project, LLVM source
   and test-suite. Record clang, opt and llc versions. Do not proceed with an
   unexplained mixed toolchain.
2. **Build matched inputs.** Emit the same front-end IR for every configuration.
   If a compatibility rewrite is needed, record exactly what it changes.
3. **Verify the transform fired.** Use `-pass-remarks`, YAML remarks or
   statistics; inspect the IR before/after. Count actual fusions, not only
   candidate remarks.
4. **Separate legality from profitability.** Check whether the pair was
   rejected by dependencies/trip counts/guards or by the cost model.
5. **Inspect code generation.** Diff optimized IR and assembly; identify the
   changed loop, metadata, vector width, memory operations and spills.
6. **Check correctness.** Compare against an independent scalar oracle; compare
   outputs/checksums across configurations.
7. **Reduce.** Remove harness code and unrelated loops until the mechanism is
   minimal. Record what was ruled out.
8. **Write the run record.** Link raw IR, assembly, remarks, commands and the
   exact revisions. State remaining uncertainty.

## Stop conditions

Stop and report `inconclusive` if the transform did not fire, the configurations
differ by more than the intended switch, the toolchain is mixed without a
declared caveat, or correctness cannot be checked.

## Output

A validated run record or a focused report section. Do not edit existing raw
evidence; create a new run directory.
