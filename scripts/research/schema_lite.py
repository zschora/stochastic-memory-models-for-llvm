"""Minimal, explicit JSON Schema subset validator.

The harness intentionally does not depend on ``jsonschema``.  This module
implements only the assertion keywords used by the schemas in
``research/harness/schemas`` and rejects unknown assertion keywords so the
contract cannot silently drift.  It is *not* a general Draft 2020-12
implementation; see ``SUPPORTED_KEYWORDS`` and the harness documentation.

Error codes:
  E-MISSING   required property absent
  E-TYPE      wrong JSON type
  E-VALUE     enum/const/length/count violation
  E-PATTERN   string does not match a pattern
  E-BOUNDS    numeric bound violation
  E-SCHEMA    invalid schema, unresolved $ref, or unsupported keyword
"""
from __future__ import annotations

import re
from typing import Any

SUPPORTED_KEYWORDS = {
    "$schema", "$id", "$defs", "$ref", "title", "description", "default",
    "examples", "type", "required", "properties", "additionalProperties",
    "items", "enum", "const", "pattern", "minLength", "maxLength",
    "minimum", "maximum", "exclusiveMinimum", "exclusiveMaximum",
    "minItems", "maxItems", "uniqueItems", "allOf", "anyOf", "oneOf", "not",
}
ANNOTATION_KEYWORDS = {
    "$schema", "$id", "title", "description", "default", "examples", "$defs",
}

_TYPE_CHECKS = {
    "object": lambda v: isinstance(v, dict),
    "array": lambda v: isinstance(v, list),
    "string": lambda v: isinstance(v, str),
    "integer": lambda v: isinstance(v, int) and not isinstance(v, bool),
    "number": lambda v: isinstance(v, (int, float)) and not isinstance(v, bool),
    "boolean": lambda v: isinstance(v, bool),
    "null": lambda v: v is None,
}


def _join(path: str, key) -> str:
    if isinstance(key, int):
        return f"{path}[{key}]"
    return f"{path}.{key}" if path else str(key)


def _issue(code: str, path: str, message: str) -> dict:
    return {"code": code, "message": message, "field": path}


def _resolve_ref(ref: str, root_schema: dict) -> dict | None:
    if not isinstance(ref, str) or not ref.startswith("#/"):
        return None
    node: Any = root_schema
    for raw in ref[2:].split("/"):
        key = raw.replace("~1", "/").replace("~0", "~")
        if not isinstance(node, dict) or key not in node:
            return None
        node = node[key]
    return node if isinstance(node, dict) else None


def check_schema_supported(schema: Any, path: str = "$",
                           root_schema: dict | None = None) -> list[dict]:
    """Return schema errors for unresolved refs or unsupported keywords."""
    root = root_schema if root_schema is not None else schema
    errors: list[dict] = []
    if isinstance(schema, bool):
        return errors
    if not isinstance(schema, dict):
        return [_issue("E-SCHEMA", path, "schema node must be an object or boolean")]
    for key, value in schema.items():
        if key not in SUPPORTED_KEYWORDS:
            errors.append(_issue("E-SCHEMA", path,
                                 f"unsupported JSON Schema keyword: {key}"))
            continue
        if key in {"properties", "$defs"} and isinstance(value, dict):
            for name, subschema in value.items():
                errors.extend(check_schema_supported(subschema, f"{path}.{key}.{name}", root))
        elif key in {"items", "additionalProperties", "not"}:
            if isinstance(value, (dict, bool)):
                errors.extend(check_schema_supported(value, f"{path}.{key}", root))
        elif key in {"allOf", "anyOf", "oneOf"}:
            if isinstance(value, list):
                for i, subschema in enumerate(value):
                    errors.extend(check_schema_supported(subschema, f"{path}.{key}[{i}]", root))
            else:
                errors.append(_issue("E-SCHEMA", f"{path}.{key}",
                                     f"{key} must be an array"))
        elif key == "$ref":
            if _resolve_ref(value, root) is None:
                errors.append(_issue("E-SCHEMA", path, f"cannot resolve $ref: {value}"))
    return errors


def validate_instance(instance: Any, schema: dict, *, root_schema: dict | None = None,
                      path: str = "") -> list[dict]:
    """Validate one instance against the supported schema subset."""
    root = root_schema if root_schema is not None else schema
    return _validate(instance, schema, root, path)


def _validate(instance: Any, schema: Any, root: dict, path: str) -> list[dict]:
    if isinstance(schema, bool):
        return [] if schema else [_issue("E-VALUE", path, "value is not allowed")]
    if not isinstance(schema, dict):
        return [_issue("E-SCHEMA", path, "invalid schema node")]

    errors: list[dict] = []
    if "$ref" in schema:
        target = _resolve_ref(schema["$ref"], root)
        if target is None:
            return [_issue("E-SCHEMA", path, f"cannot resolve $ref: {schema['$ref']}")]
        errors.extend(_validate(instance, target, root, path))

    expected = schema.get("type")
    if expected is not None:
        allowed = expected if isinstance(expected, list) else [expected]
        if not any(_TYPE_CHECKS.get(t, lambda _v: False)(instance) for t in allowed):
            errors.append(_issue("E-TYPE", path,
                                 f"expected {' or '.join(allowed)}, got {type(instance).__name__}"))
            return errors

    if "const" in schema and instance != schema["const"]:
        errors.append(_issue("E-VALUE", path, f"must equal {schema['const']!r}"))
    if "enum" in schema and instance not in schema["enum"]:
        errors.append(_issue("E-VALUE", path,
                             f"must be one of {schema['enum']!r}, got {instance!r}"))

    if isinstance(instance, str):
        if "minLength" in schema and len(instance) < schema["minLength"]:
            errors.append(_issue("E-VALUE", path,
                                 f"shorter than minLength {schema['minLength']}"))
        if "maxLength" in schema and len(instance) > schema["maxLength"]:
            errors.append(_issue("E-VALUE", path,
                                 f"longer than maxLength {schema['maxLength']}"))
        if "pattern" in schema:
            try:
                if re.search(schema["pattern"], instance) is None:
                    errors.append(_issue("E-PATTERN", path,
                                         f"does not match pattern {schema['pattern']!r}"))
            except re.error as exc:
                errors.append(_issue("E-SCHEMA", path, f"invalid regex: {exc}"))

    if isinstance(instance, (int, float)) and not isinstance(instance, bool):
        if "minimum" in schema and instance < schema["minimum"]:
            errors.append(_issue("E-BOUNDS", path, f"less than minimum {schema['minimum']}"))
        if "maximum" in schema and instance > schema["maximum"]:
            errors.append(_issue("E-BOUNDS", path, f"greater than maximum {schema['maximum']}"))
        if "exclusiveMinimum" in schema and instance <= schema["exclusiveMinimum"]:
            errors.append(_issue("E-BOUNDS", path,
                                 f"not greater than {schema['exclusiveMinimum']}"))
        if "exclusiveMaximum" in schema and instance >= schema["exclusiveMaximum"]:
            errors.append(_issue("E-BOUNDS", path,
                                 f"not less than {schema['exclusiveMaximum']}"))

    if isinstance(instance, list):
        if "minItems" in schema and len(instance) < schema["minItems"]:
            errors.append(_issue("E-VALUE", path, f"fewer than minItems {schema['minItems']}"))
        if "maxItems" in schema and len(instance) > schema["maxItems"]:
            errors.append(_issue("E-VALUE", path, f"more than maxItems {schema['maxItems']}"))
        if schema.get("uniqueItems"):
            seen = set()
            for item in instance:
                key = repr(item)
                if key in seen:
                    errors.append(_issue("E-VALUE", path, "array items are not unique"))
                    break
                seen.add(key)
        item_schema = schema.get("items")
        if isinstance(item_schema, dict) or isinstance(item_schema, bool):
            for i, item in enumerate(instance):
                errors.extend(_validate(item, item_schema, root, _join(path, i)))

    if isinstance(instance, dict):
        required = schema.get("required", [])
        for name in required:
            if name not in instance:
                errors.append(_issue("E-MISSING", _join(path, name),
                                     f"missing required property: {name}"))
        properties = schema.get("properties", {})
        for name, value in instance.items():
            if name in properties:
                errors.extend(_validate(value, properties[name], root, _join(path, name)))
            else:
                extra = schema.get("additionalProperties", True)
                if extra is False:
                    errors.append(_issue("E-VALUE", _join(path, name),
                                         f"unexpected property: {name}"))
                elif isinstance(extra, dict):
                    errors.extend(_validate(value, extra, root, _join(path, name)))

    if "allOf" in schema:
        for subschema in schema["allOf"]:
            errors.extend(_validate(instance, subschema, root, path))
    if "anyOf" in schema:
        if not any(not _validate(instance, sub, root, path) for sub in schema["anyOf"]):
            errors.append(_issue("E-VALUE", path, "does not satisfy anyOf"))
    if "oneOf" in schema:
        matches = sum(1 for sub in schema["oneOf"]
                      if not _validate(instance, sub, root, path))
        if matches != 1:
            errors.append(_issue("E-VALUE", path, f"satisfies oneOf {matches} times (need 1)"))
    if "not" in schema:
        if not _validate(instance, schema["not"], root, path):
            errors.append(_issue("E-VALUE", path, "matches a forbidden schema"))
    return errors
