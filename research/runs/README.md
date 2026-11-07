# Experiment and simulation records

Each physical campaign gets a new directory `research/runs/<ID>/` with a
`manifest.json`. Existing records are never overwritten or edited to improve a
result; start a new run with a new tag/ID.

```powershell
python scripts/research/new_run.py --hypothesis H-R1-001 --dry-run
python scripts/research/new_run.py --hypothesis H-R1-001 --title "R1-A matched toolchain"
python scripts/research/validate_run.py research/runs/<ID>
```

The manifest records the hypothesis, Git base, toolchain versions, build and
pass pipeline, host, inputs, repetitions, timing procedure, correctness oracle,
commands, artifact paths, review status and limitations. See
[`../harness/schemas/experiment-run.schema.json`](../harness/schemas/experiment-run.schema.json)
and [`../harness/protocol.md`](../harness/protocol.md).

A **simulation** record (`record_type: simulation`) is documentation-only. It
exercises handoff, review and checkpoint mechanics without claiming measurements;
it cannot support a performance conclusion. The committed
[SIM-0001-handoff-smoke](SIM-0001-handoff-smoke/manifest.json) is such a record.

Do not edit Stage 0 raw files under `results/` to make a new campaign look
consistent. Create a new run and link the old evidence explicitly.
