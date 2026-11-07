# Record schemas

The JSON files in this directory are the field contract for experiment runs,
mathematical claims, simulations, the hypothesis ledger, toolchain provenance,
immutable R1 measurements and predictor feature records.

They use a deliberately small JSON Schema Draft 2020-12 subset implemented by
[`../../../scripts/research/schema_lite.py`](../../../scripts/research/schema_lite.py):

- `$ref` to local `#/$defs/...`;
- `type`, `required`, `properties`, `additionalProperties`, `items`;
- `enum`, `const`, `pattern`, `minLength`, `maxLength`;
- `minimum`, `maximum`, `exclusiveMinimum`, `exclusiveMaximum`;
- `minItems`, `maxItems`, `uniqueItems`;
- `allOf`, `anyOf`, `oneOf`, `not`.

Unsupported assertion keywords are rejected by `check_docs.py`; they are never
silently ignored. The harness does **not** claim full Draft 2020-12 support and
does not require the `jsonschema` package.

On top of schema validation, `common.py` enforces repository rules that JSON
Schema cannot express: hypothesis references, status-history transitions,
toolchain provenance, artifact existence, review independence labels and
evidence gates. See [../protocol.md](../protocol.md).

Structural validation proves only that the evidence package is present, linked
and internally consistent. It cannot prove a theorem, validate a measurement or
certify that a review was independent in reality.
