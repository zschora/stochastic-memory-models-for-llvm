# Mathematical claim records

Mathematical work uses `research/claims/<ID>/claim.json` with the schema in
[`../harness/schemas/math-claim.schema.json`](../harness/schemas/math-claim.schema.json).
Derivations, counterexamples and enumeration scripts live beside the manifest.

```powershell
python scripts/research/new_run.py --kind math --title "Capacity-one LRU expectation" --dry-run
python scripts/research/validate_run.py research/claims/<ID>
```

Every record states the exact model assumptions, claim, proof status, proof gaps,
numerical checks, counterexamples, prior art and unresolved obligations. Allowed
labels are `proved`, `working-proof`, `numerically-checked`, `conjecture`,
`known-prior-art` and `refuted`.

A theorem about an ideal cache is not a hardware measurement. A numerical match
is not a proof. A mathematical result that does not add predictive value to the
compiler work should be recorded as a negative outcome, not forced into a cost
model.
