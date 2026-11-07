"""R1.1 predictor and feature-provenance tests."""
from __future__ import annotations

import json
import sys
import tempfile
import unittest
from pathlib import Path

ROOT = Path(__file__).resolve().parents[3]
sys.path.insert(0, str(ROOT / "scripts"))
sys.path.insert(0, str(ROOT / "scripts" / "research"))

import r1_features  # noqa: E402
import r1_experiments  # noqa: E402
import r1_predictor  # noqa: E402
import common  # noqa: E402
import schema_lite  # noqa: E402


class FeatureTests(unittest.TestCase):
    def test_metadata_conflict_is_static_and_detected(self):
        hints = [
            {"vectorize_enable": True, "vectorize_disable": False,
             "vectorize_width": 8, "requested": True, "blocked": False},
            {"vectorize_enable": False, "vectorize_disable": True,
             "vectorize_width": 1, "requested": False, "blocked": True},
        ]
        conflict, evidence = r1_features.metadata_conflict(hints)
        self.assertTrue(conflict)
        self.assertEqual(len(evidence), 1)

    def test_no_conflict_for_scalar_scalar_or_auto_loops(self):
        scalar = [
            {"vectorize_enable": False, "vectorize_disable": True,
             "vectorize_width": 1, "requested": False, "blocked": True},
            {"vectorize_enable": False, "vectorize_disable": True,
             "vectorize_width": 1, "requested": False, "blocked": True},
        ]
        auto = [
            {"vectorize_enable": False, "vectorize_disable": False,
             "vectorize_width": None, "requested": False, "blocked": False},
            {"vectorize_enable": False, "vectorize_disable": False,
             "vectorize_width": None, "requested": False, "blocked": False},
        ]
        self.assertFalse(r1_features.metadata_conflict(scalar)[0])
        self.assertFalse(r1_features.metadata_conflict(auto)[0])

    def test_reuse_kind_exact_and_shifted(self):
        exact = """
%i = phi i64 [ 0, %entry ], [ %i.next, %latch ]
%gep = getelementptr inbounds double, ptr %A, i64 %i
%v = load double, ptr %gep
%j = phi i64 [ 0, %entry2 ], [ %j.next, %latch2 ]
%gep2 = getelementptr inbounds double, ptr %A, i64 %j
%v2 = load double, ptr %gep2
"""
        shifted = exact.replace(
            "%gep2 = getelementptr inbounds double, ptr %A, i64 %j",
            "%j1 = add nuw nsw i64 %j, 1\n"
            "%gep2 = getelementptr inbounds double, ptr %A, i64 %j1")
        self.assertEqual(r1_features.reuse_kind(exact)["kind"], "exact")
        self.assertEqual(r1_features.reuse_kind(shifted)["kind"], "shifted")

    def test_memory_summary_distinguishes_streams_and_allocations(self):
        one = """
%g1 = getelementptr inbounds double, ptr %A, i64 %i
%v1 = load double, ptr %g1
%g2 = getelementptr inbounds double, ptr %A, i64 %j
%v2 = load double, ptr %g2
"""
        two = one + """
%g3 = getelementptr inbounds double, ptr %B, i64 %i
store double %v1, ptr %g3
"""
        mem_one = r1_features.memory_summary(one, 1_048_576, 8,
                                             {"kind": "exact"}, "runtime-dependent")
        mem_two = r1_features.memory_summary(two, 1_048_576, 8,
                                             {"kind": "exact"}, "runtime-dependent")
        self.assertEqual(mem_one["streams"], 1)
        self.assertEqual(mem_one["bytes_per_stream"], 8 * 1_048_576)
        self.assertEqual(mem_one["footprint_proxy_bytes"], 8 * 1_048_576)
        self.assertEqual(mem_two["streams"], 2)
        self.assertEqual(mem_two["footprint_proxy_bytes"], 16 * 1_048_576)
        self.assertEqual(mem_two["bytes_allocated"], "unknown")
        self.assertEqual(mem_two["working_set_estimate"], "unknown")

    def test_memory_summary_shifted_and_unknown_bounds(self):
        shifted = """
%i = phi i64 [ 0, %entry ], [ %i.next, %latch ]
%g1 = getelementptr inbounds double, ptr %A, i64 %i
%v1 = load double, ptr %g1
%i1 = add nuw nsw i64 %i, 1
%g2 = getelementptr inbounds double, ptr %A, i64 %i1
%v2 = load double, ptr %g2
"""
        memory = r1_features.memory_summary(shifted, 1024, 8,
                                             {"kind": "shifted"},
                                             "runtime-dependent")
        self.assertEqual(memory["streams"], 1)
        self.assertEqual(memory["reused_bytes"], 8192)
        self.assertEqual(memory["aliasing"], "unknown")
        self.assertEqual(memory["bounds"], "runtime-dependent")

    def test_policy_decisions_ignore_diagnostic_facts(self):
        features = {
            "static": {"metadata_conflict": True, "reuse_kind": "exact"},
            "scenario": {"footprint_bytes": 1024, "l3_bytes": 18 * 1024 * 1024,
                         "n": 128},
            "diagnostic": {"c_ymm": 999, "c_fused": False,
                           "measured_delta_pct": -99.0},
        }
        decisions = r1_predictor.policy_decisions(features, baseline_fuses=True,
                                                  legal=True)
        self.assertTrue(decisions["metadata_guard"] is False)
        self.assertNotIn("diagnostic", r1_predictor.POLICY_KEYS)
        self.assertFalse(any("ymm" in key for key in r1_predictor.POLICY_KEYS))

    def test_scenario_large_exception(self):
        features = {
            "static": {"metadata_conflict": True, "reuse_kind": "exact"},
            "scenario": {"footprint_bytes": 64 * 1024 * 1024,
                         "l3_bytes": 18 * 1024 * 1024, "n": 8 * 1024 * 1024},
            "diagnostic": {},
        }
        decisions = r1_predictor.policy_decisions(features, baseline_fuses=True,
                                                  legal=True)
        self.assertTrue(decisions["metadata_guard_or_large"])


class RegretTests(unittest.TestCase):
    def test_absolute_regret_uses_times_not_percent_sum(self):
        points = [
            {"key": "p1", "case": "big", "legal": True,
             "label": "confirmed_profitable", "ta": 1000.0, "tb": 800.0},
            {"key": "p2", "case": "small", "legal": True,
             "label": "confirmed_profitable", "ta": 10.0, "tb": 8.0},
        ]
        result = r1_predictor.aggregate(
            points, {"p1": True, "p2": False})
        self.assertAlmostEqual(result["absolute_regret_ns"], 2.0)
        self.assertAlmostEqual(result["relative_regret_to_baseline_total"], 2.0 / 1010.0)
        self.assertEqual(result["false_positives"], 0)
        self.assertEqual(result["missed_confirmed_profitable"], 1)
        self.assertAlmostEqual(result["worst_regression_pct_vs_A"], 0.0)

    def test_regret_zero_when_policy_matches_oracle(self):
        points = [
            {"key": "p1", "case": "big", "legal": True,
             "label": "confirmed_profitable", "ta": 100.0, "tb": 70.0},
            {"key": "p2", "case": "small", "legal": True,
             "label": "confirmed_harmful", "ta": 50.0, "tb": 90.0},
        ]
        result = r1_predictor.aggregate(points, {"p1": True, "p2": False})
        self.assertEqual(result["absolute_regret_ns"], 0.0)
        self.assertEqual(result["false_positives"], 0)
        self.assertEqual(result["missed_confirmed_profitable"], 0)

    def test_worst_regression_is_policy_over_baseline(self):
        points = [
            {"key": "p1", "case": "x", "legal": True,
             "label": "confirmed_harmful", "ta": 100.0, "tb": 150.0},
        ]
        result = r1_predictor.aggregate(points, {"p1": True})
        self.assertAlmostEqual(result["worst_regression_pct_vs_A"], 50.0)
        self.assertEqual(result["false_positives"], 1)


class DatasetSelectionTests(unittest.TestCase):
    def test_patched_campaign_is_excluded_and_order_independent(self):
        points = [
            {"campaign": "EXP-20261107-R1A", "case": "simd_metadata",
             "mode": "", "n": 16384, "point_id": "old"},
            {"campaign": "EXP-20261107-R1F-patch", "case": "simd_metadata",
             "mode": "", "n": 16384, "point_id": "patched"},
            {"campaign": "EXP-20261107-R11-audit", "case": "simd_metadata",
             "mode": "", "n": 16384, "point_id": "new"},
        ]
        selected, excluded, manifest = r1_experiments.select_baseline_points(points)
        self.assertEqual(len(selected), 1)
        self.assertEqual(selected[0]["campaign"], "EXP-20261107-R11-audit")
        self.assertTrue(any(e["campaign"] == "EXP-20261107-R1F-patch"
                            for e in excluded))
        reversed_selected, _, _ = r1_experiments.select_baseline_points(
            list(reversed(points)))
        self.assertEqual(selected[0]["campaign"], reversed_selected[0]["campaign"])

    def test_simd_16k_is_legal_fused_and_harmful(self):
        audit = ROOT / "results" / "r1" / "EXP-20261107-R11-audit"
        stats = json.loads((audit / "reanalysis" / "audit_stats.json").read_text(
            encoding="utf-8"))
        selected, _, _ = r1_experiments.select_baseline_points(stats["points"])
        simd = [p for p in selected
                if p["case"] == "simd_metadata" and p["n"] == 16384]
        self.assertEqual(len(simd), 1)
        self.assertEqual(simd[0]["campaign"], "EXP-20261107-R1A")
        output = json.loads((audit / "predictor_v3.json").read_text(encoding="utf-8"))
        point = [p for p in output["points"]
                 if p["case"] == "simd_metadata" and p["n"] == 16384
                 and p["campaign"] == "EXP-20261107-R1A"]
        self.assertEqual(len(point), 1)
        self.assertEqual(point[0]["legal_class"], "legal_and_fused")
        self.assertEqual(point[0]["label"], "confirmed_harmful")

    def test_high_noise_is_not_promoted(self):
        audit = ROOT / "results" / "r1" / "EXP-20261107-R11-audit"
        stats = json.loads((audit / "reanalysis" / "audit_stats.json").read_text(
            encoding="utf-8"))
        original = [p for p in stats["points"]
                    if p["campaign"] == "EXP-20261107-R1A"
                    and p["case"] == "shifted_reuse" and p["n"] == 8388608]
        self.assertEqual(original[0]["classifications"]["B"]["classification"],
                         "high_noise")
        output = json.loads((audit / "predictor_v3.json").read_text(encoding="utf-8"))
        point = [p for p in output["points"]
                 if p["campaign"] == "EXP-20261107-R1A"
                 and p["case"] == "shifted_reuse" and p["n"] == 8388608]
        self.assertEqual(len(point), 1)
        self.assertEqual(point[0]["label"], "high_noise")


class FeatureSchemaTests(unittest.TestCase):
    def test_schema_supports_required_categories(self):
        schema = common.load_json(
            ROOT / "research" / "harness" / "schemas"
            / "predictor-feature.schema.json")
        issues = schema_lite.check_schema_supported(schema)
        self.assertEqual(issues, [])

    def test_predictor_output_is_reproducible(self):
        audit = ROOT / "results" / "r1" / "EXP-20261107-R11-audit"
        if not (audit / "reanalysis" / "audit_stats.json").is_file():
            self.skipTest("audit campaign not present")
        import hashlib
        import subprocess
        script = ROOT / "scripts" / "r1_predictor.py"
        with tempfile.TemporaryDirectory() as temp:
            out = Path(temp) / "predictor_v2.json"
            md = Path(temp) / "predictor_v2.md"
            cmd = [sys.executable, str(script), "--out", str(out),
                   "--markdown-out", str(md)]
            first = subprocess.run(cmd, capture_output=True, text=True, cwd=ROOT)
            self.assertEqual(first.returncode, 0, first.stderr)
            h1 = hashlib.sha256(out.read_bytes()).hexdigest()
            second = subprocess.run(cmd, capture_output=True, text=True, cwd=ROOT)
            self.assertEqual(second.returncode, 0, second.stderr)
            h2 = hashlib.sha256(out.read_bytes()).hexdigest()
            self.assertEqual(h1, h2)


if __name__ == "__main__":
    unittest.main()
