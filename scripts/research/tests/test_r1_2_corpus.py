"""Reproducibility tests for R1.2 discovery and held-out case study.

These tests read only committed result artifacts; they do not need the external
TSVC/PolyBench checkouts or an LLVM build.
"""
from __future__ import annotations

import json
import re
import sys
import unittest
from pathlib import Path

ROOT = Path(__file__).resolve().parents[3]
sys.path.insert(0, str(ROOT / "scripts"))

import r1_experiments  # noqa: E402

DISCOVERY = ROOT / "results" / "r1" / "EXP-20261107-R12-discovery" / "discovery.json"
CAMPAIGN = (ROOT / "results" / "r1" / "EXP-20261107-R12-tsvc-pinned"
            / "campaign_summary.json")
HELDOUT = (ROOT / "results" / "r1" / "EXP-20261107-R12-tsvc-pinned"
           / "heldout_eval.json")
MANIFEST = ROOT / "research" / "corpus" / "r1_2" / "corpus_manifest.json"


def load(path: Path):
    return json.loads(path.read_text(encoding="utf-8-sig"))


class DiscoveryTests(unittest.TestCase):
    def setUp(self):
        self.discovery = load(DISCOVERY)

    def test_polybench_has_no_legal_opportunity(self):
        poly = [c for c in self.discovery["cases"] if c["source"] == "polybench"]
        self.assertEqual(len(poly), 30)
        functions = [f for c in poly for f in c.get("functions", {}).values()]
        self.assertEqual(len(functions), 28)
        self.assertFalse(any(f["classification"] in
                             {"legal_and_fused", "legal_but_rejected"}
                             for f in functions))
        self.assertTrue(all(f["classification"] == "illegal" for f in functions))

    def test_tsvc_classifications(self):
        tsvc = [c for c in self.discovery["cases"] if c["source"] == "tsvc"]
        self.assertEqual(len(tsvc), 1)
        functions = tsvc[0]["functions"]
        self.assertEqual(functions["s233"]["classification"], "legal_and_fused")
        self.assertEqual(functions["s2233"]["classification"],
                         "legal_but_rejected")
        self.assertTrue(functions["s2233"]["b_fused"])
        self.assertFalse(functions["s2233"]["c_fused"])
        legality = {name: f["classification"] for name, f in functions.items()}
        self.assertEqual(sum(1 for v in legality.values() if v == "illegal"), 8)

    def test_manifest_revisions_match_discovery(self):
        manifest = load(MANIFEST)
        sources = self.discovery["sources"]
        self.assertEqual(manifest["sources"]["polybench"]["revision"],
                         sources["polybench"]["revision"])
        self.assertEqual(manifest["sources"]["tsvc"]["revision"],
                         sources["tsvc"]["revision"])


class HeldOutTests(unittest.TestCase):
    def setUp(self):
        self.campaign = load(CAMPAIGN)
        self.heldout = load(HELDOUT)

    def test_campaign_is_complete_and_pinned(self):
        self.assertEqual(self.campaign.get("status"), "complete")
        self.assertEqual(self.campaign.get("failures"), [])
        self.assertEqual(self.campaign["seed"], 20261110)
        blocks = {r["case"]: r["parameters"]["blocks"]
                  for r in self.campaign["results"]}
        self.assertEqual(blocks, {"tsvc_s233": 15, "tsvc_s2233": 15})
        self.assertEqual(
            self.campaign["toolchain_manifest"],
            "research/harness/toolchains/llvm-24.0.0git-6f41962-v2.json")

    def test_measured_effects_and_aa_control(self):
        results = {r["case"]: r for r in self.campaign["results"]}
        s233 = results["tsvc_s233"]["effects"]
        s2233 = results["tsvc_s2233"]["effects"]
        self.assertAlmostEqual(s233["B"]["median_delta_pct"], -9.3, delta=0.15)
        self.assertAlmostEqual(s233["C"]["median_delta_pct"], -9.4, delta=0.15)
        self.assertLess(abs(s233["AA"]["median_delta_pct"]), 1.0)
        self.assertGreater(s2233["B"]["median_delta_pct"], 100.0)
        self.assertLess(abs(s2233["C"]["median_delta_pct"]), 1.0)
        self.assertLess(abs(s2233["AA"]["median_delta_pct"]), 1.0)
        self.assertEqual(
            results["tsvc_s233"]["classifications"]["B"]["classification"],
            "confirmed_profitable")
        self.assertEqual(
            results["tsvc_s2233"]["classifications"]["B"]["classification"],
            "confirmed_harmful")

    def test_heldout_policy_outcomes(self):
        policies = self.heldout["policies"]
        confirmed = {name: data["confirmed_only"]
                     for name, data in policies.items()}
        self.assertEqual(confirmed["current_model"]["false_positives"], 0)
        self.assertEqual(
            confirmed["current_model"]["missed_confirmed_profitable"], 0)
        self.assertEqual(confirmed["no_fusion"]["missed_confirmed_profitable"], 1)
        self.assertEqual(confirmed["always_fuse"]["false_positives"], 1)
        self.assertGreater(
            confirmed["always_fuse"]["worst_regression_pct_vs_A"], 100.0)
        self.assertEqual(confirmed["footprint_256k"]["missed_confirmed_profitable"], 1)

    def test_r12_campaign_is_not_baseline_eligible(self):
        info = r1_experiments.role("EXP-20261107-R12-tsvc-pinned")
        self.assertFalse(info["baseline_eligible"])

    def _function_body(self, case: str, config: str, name: str) -> str:
        path = (ROOT / "results" / "r1" / "EXP-20261107-R12-tsvc-pinned"
                / case / f"{case}.{config}.ll")
        text = path.read_text(encoding="utf-8", errors="replace")
        match = re.search(rf"^define[^\n]*@{name}\([^\n]*\n", text, re.M)
        self.assertIsNotNone(match, f"missing {name} in {path}")
        return text[match.start():text.find("\n}", match.end())]

    def test_s2233_unrestricted_fusion_removes_vector_loops(self):
        counts = {cfg: self._function_body("tsvc_s2233", cfg, "s2233")
                  .count("vector.body") for cfg in ("A", "B", "C")}
        self.assertGreater(counts["A"], 0)
        self.assertGreater(counts["C"], 0)
        self.assertEqual(counts["B"], 0)
        self.assertEqual(counts["A"], counts["C"])

    def test_s233_fused_shapes_are_identical(self):
        bodies = {cfg: self._function_body("tsvc_s233", cfg, "s233")
                  for cfg in ("B", "C")}
        self.assertEqual(bodies["B"], bodies["C"])
        self.assertLess(bodies["B"].count(" load "),
                        self._function_body("tsvc_s233", "A", "s233").count(" load "))


if __name__ == "__main__":
    unittest.main()
