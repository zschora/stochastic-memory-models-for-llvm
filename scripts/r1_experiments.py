"""Campaign roles and deterministic baseline-evidence selection for R1.1.1.

The predictor must never mix unpatched baseline measurements with the local
R1-F patched-opt prototype.  Role metadata is explicit and selection is
deterministic: no directory enumeration order can change the chosen point.
"""
from __future__ import annotations

import json
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent

CAMPAIGN_ROLES = {
    "EXP-20261107-R1A": {
        "role": "baseline_historical",
        "baseline_eligible": True,
        "priority": 10,
        "toolchain": "v1 historical manifest",
        "notes": "unpatched LLVM 6f41962; native clang IR; historical five-block campaign",
    },
    "EXP-20261107-R1C-offsets": {
        "role": "baseline_historical",
        "baseline_eligible": True,
        "priority": 11,
        "toolchain": "v1 historical manifest",
        "notes": "unpatched LLVM 6f41962; shifted-offset family",
    },
    "EXP-20261107-R11-audit": {
        "role": "baseline_remeasurement",
        "baseline_eligible": True,
        "priority": 30,
        "toolchain": "v2 verified manifest",
        "notes": "randomized complete blocks; seven/nine blocks; corrected runner",
    },
    "EXP-20261107-R11-followup": {
        "role": "baseline_remeasurement",
        "baseline_eligible": True,
        "priority": 25,
        "toolchain": "v2 verified manifest",
        "notes": "randomized complete blocks; seven blocks; follow-up points",
    },
    "EXP-20261107-R1F-patch": {
        "role": "patched_experimental",
        "baseline_eligible": False,
        "priority": 0,
        "toolchain": "locally patched opt; unverified",
        "notes": "must never enter baseline profitability evaluation",
    },
    "EXP-20261107-R1B-min": {
        "role": "diagnostic_only",
        "baseline_eligible": False,
        "priority": 0,
        "toolchain": "diagnostic",
        "notes": "minimal IR mechanism evidence",
    },
}

ALLOWED_BASELINE_ROLES = {"baseline_historical", "baseline_remeasurement"}


def role(campaign: str) -> dict:
    return CAMPAIGN_ROLES.get(campaign, {
        "role": "unknown_experiment",
        "baseline_eligible": False,
        "priority": -1,
        "toolchain": "unknown",
        "notes": "unknown campaign; excluded from baseline selection",
    })


def run_manifest(root: Path, campaign: str) -> dict:
    path = root / "research" / "runs" / campaign / "manifest.json"
    if not path.is_file():
        return {}
    try:
        return json.loads(path.read_text(encoding="utf-8"))
    except Exception:
        return {}


def provenance_status(root: Path, campaign: str) -> dict:
    manifest = run_manifest(root, campaign)
    toolchain = manifest.get("toolchain", {}) if isinstance(manifest, dict) else {}
    return {
        "campaign": campaign,
        "role": role(campaign)["role"],
        "baseline_eligible": role(campaign)["baseline_eligible"],
        "priority": role(campaign)["priority"],
        "toolchain_consistency": toolchain.get("consistency", "unknown"),
        "toolchain_manifest": toolchain.get("manifest_path", ""),
        "toolchain_revision": toolchain.get("llvm_revision", ""),
        "run_status": manifest.get("status", "unknown") if manifest else "missing",
        "notes": role(campaign)["notes"],
    }


def selection_key(point: dict) -> tuple:
    """Stable, explicit ordering; never rely on file enumeration."""
    info = role(point["campaign"])
    return (
        1 if info["baseline_eligible"] else 0,
        info["priority"],
        point["campaign"],
        point.get("point_id", ""),
        point.get("case", ""),
        point.get("mode", ""),
        int(point.get("n", 0)),
    )


def select_baseline_points(points: list[dict]) -> tuple[list[dict], list[dict], dict]:
    """Select one baseline measurement per (case, mode, n).

    Only baseline-eligible campaigns with a verified toolchain are accepted.
    The highest explicit priority wins; ties are broken by the stable key.
    Patched, diagnostic, unknown and unverified records are listed as excluded.
    """
    chosen: dict[tuple, tuple] = {}
    excluded = []
    for point in sorted(points, key=selection_key, reverse=True):
        campaign = point["campaign"]
        info = role(campaign)
        provenance = provenance_status(ROOT, campaign)
        if not info["baseline_eligible"] or info["role"] not in ALLOWED_BASELINE_ROLES:
            excluded.append({
                "campaign": campaign, "case": point.get("case"),
                "mode": point.get("mode", ""), "n": point.get("n"),
                "reason": f"campaign role {info['role']} is not baseline-eligible",
            })
            continue
        if provenance["toolchain_consistency"] != "verified":
            excluded.append({
                "campaign": campaign, "case": point.get("case"),
                "mode": point.get("mode", ""), "n": point.get("n"),
                "reason": f"toolchain consistency is {provenance['toolchain_consistency']}",
            })
            continue
        key = (point.get("case"), point.get("mode", ""), int(point.get("n", 0)))
        if key not in chosen:
            chosen[key] = (point, provenance)
        else:
            old, _ = chosen[key]
            if selection_key(point) > selection_key(old):
                excluded.append({
                    "campaign": old["campaign"], "case": old.get("case"),
                    "mode": old.get("mode", ""), "n": old.get("n"),
                    "reason": f"superseded by {campaign} (explicit priority)",
                })
                chosen[key] = (point, provenance)
            else:
                excluded.append({
                    "campaign": campaign, "case": point.get("case"),
                    "mode": point.get("mode", ""), "n": point.get("n"),
                    "reason": f"superseded by {old['campaign']} (explicit priority)",
                })
    selected = []
    for key in sorted(chosen, key=lambda k: (k[0], k[1], k[2])):
        point, provenance = chosen[key]
        selected.append(dict(point, selection={
            "role": provenance["role"],
            "priority": provenance["priority"],
            "toolchain_consistency": provenance["toolchain_consistency"],
            "toolchain_manifest": provenance["toolchain_manifest"],
            "toolchain_revision": provenance["toolchain_revision"],
        }))
    manifest = {
        "policy": "baseline-eligible verified campaigns only; explicit priority; stable key",
        "selected": [
            {"campaign": p["campaign"], "case": p["case"], "mode": p.get("mode", ""),
             "n": p["n"], "point_id": p.get("point_id", ""),
             "priority": p["selection"]["priority"]}
            for p in selected
        ],
        "excluded": excluded,
        "campaign_roles": CAMPAIGN_ROLES,
    }
    return selected, excluded, manifest
