---
name: mathematical-claim-audit
description: Audit a combinatorial, probabilistic, stochastic-bridge, random-permutation or ideal-LRU claim. Use when checking proof status, boundary cases, exhaustive small instances, counterexamples, or whether a mathematical model adds predictive value.
license: Apache-2.0 WITH LLVM-exception
---

# Mathematical claim audit

Use this file manually if the host does not implement Agent Skills.

## Procedure

1. **Write the model.** State the sample space, frequencies, tie rules, cache
   model, independence assumptions and all parameters.
2. **Write the claim.** Include quantifiers, boundary cases and the exact
   quantity being computed.
3. **Label the proof status** using the protocol: `proved`, `working-proof`,
   `numerically-checked`, `conjecture`, `known-prior-art`, `refuted`.
4. **Check small cases independently.** Prefer exhaustive enumeration or a
   separately written brute-force program over reusing the derivation code.
5. **Look for counterexamples and limiting cases.** Change one assumption at a
   time; test empty, one-element and tied cases.
6. **Check prior art.** Use primary sources. If the search is incomplete, say so;
   do not claim novelty.
7. **Separate model from measurement.** A theorem about an ideal cache is not a
   hardware result; a numerical match is not a proof.
8. **Record obligations.** List every gap, unproved lemma or unchecked asymptotic.

## Stop conditions

Stop at `working-proof` or `conjecture` if a gap remains. Stop and record a
negative outcome if the model cannot be connected to a measurable quantity; do
not force it into a compiler cost model.

## Output

A `claim.json` and notes file with assumptions, claim, proof status, checks,
counterexamples, prior art, unresolved obligations, limitations and next action.
