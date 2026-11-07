"""Regression tests for R1.1 measurement identity and paired statistics."""
from __future__ import annotations

import json
import csv
import sys
import tempfile
import unittest
from pathlib import Path

ROOT = Path(__file__).resolve().parents[3]
sys.path.insert(0, str(ROOT / "scripts"))
sys.path.insert(0, str(ROOT / "scripts" / "research"))

import r1_stats  # noqa: E402
import r1_campaign  # noqa: E402
import r1_run_case  # noqa: E402


CONFIGS = ["A", "B", "C", "AA"]


def rows_constant(blocks=9, trials=3, factor_b=0.8, factor_c=0.8,
                  aa_factor=1.0, block_noise=None, outlier=None):
    rows = []
    for block in range(blocks):
        noise = block_noise[block] if block_noise else 1.0
        for config in CONFIGS:
            factor = {"A": 1.0, "B": factor_b, "C": factor_c, "AA": aa_factor}[config]
            value = 100.0 * noise * factor
            if outlier is not None and block == outlier[0] and config == outlier[1]:
                value = outlier[2]
            for trial in range(trials):
                rows.append({"block_id": block, "config": config,
                             "trial_id": trial, "ns_per_call": value})
    return rows


def effect(rows, config="B", blocks=9, aa=True):
    obs = r1_stats.process_observations(rows, CONFIGS)
    e = r1_stats.paired_effect(obs, config, "A", n_boot=1000, seed=7)
    aa_e = r1_stats.paired_effect(obs, "AA", "A", n_boot=1000, seed=7) if aa else None
    return e, r1_stats.classify_effect(e, aa_e)


class R1StatsTests(unittest.TestCase):
    def test_identical_configurations_are_neutral(self):
        e, c = effect(rows_constant(factor_b=1.0, factor_c=1.0))
        self.assertEqual(c["classification"], "neutral")
        self.assertEqual(e["median_ratio"], 1.0)
        self.assertEqual(e["ci95_median_ratio"], [1.0, 1.0])

    def test_constant_twenty_percent_speedup(self):
        e, c = effect(rows_constant(factor_b=0.8, factor_c=0.8))
        self.assertAlmostEqual(e["median_ratio"], 0.8)
        self.assertEqual(c["classification"], "confirmed_profitable")

    def test_constant_twenty_percent_slowdown(self):
        e, c = effect(rows_constant(factor_b=1.2, factor_c=1.2))
        self.assertAlmostEqual(e["median_ratio"], 1.2)
        self.assertEqual(c["classification"], "confirmed_harmful")

    def test_correlated_block_disturbance_does_not_inflate_ratio(self):
        noise = [0.7, 1.4, 0.9, 1.2, 1.0, 0.8, 1.3, 1.1, 0.95]
        e, c = effect(rows_constant(factor_b=0.8, factor_c=0.8,
                                    block_noise=noise))
        self.assertAlmostEqual(e["median_ratio"], 0.8)
        self.assertLess(e["ci95_median_ratio"][1] - e["ci95_median_ratio"][0], 1e-9)
        self.assertEqual(c["classification"], "confirmed_profitable")

    def test_large_aa_drift_is_high_noise(self):
        e, c = effect(rows_constant(factor_b=0.8, factor_c=0.8,
                                    aa_factor=1.2))
        self.assertEqual(c["classification"], "high_noise")

    def test_one_extreme_outlier_is_inconclusive(self):
        e, c = effect(rows_constant(blocks=5, factor_b=0.8, factor_c=0.8,
                                    outlier=(4, "B", 500.0)))
        self.assertEqual(e["n_blocks"], 5)
        self.assertIn(c["classification"], {"inconclusive", "high_noise"})

    def test_missing_block_is_rejected(self):
        rows = rows_constant(blocks=5)
        rows = [r for r in rows if not (r["block_id"] == 2 and r["config"] == "B")]
        with self.assertRaises(r1_stats.StatsError):
            r1_stats.process_observations(rows, CONFIGS)

    def test_insufficient_blocks_requires_remeasurement(self):
        e, c = effect(rows_constant(blocks=4, factor_b=0.8, factor_c=0.8))
        self.assertEqual(c["classification"], "requires_remeasurement")

    def test_legacy_execution_index_is_converted_to_blocks(self):
        rows = []
        for block in range(4):
            order = ["B", "A", "AA", "C"]
            for position, config in enumerate(order):
                execution = block * 4 + position
                for trial in range(2):
                    rows.append({"config": config, "round": execution,
                                 "trial": trial, "ns_per_call": 100.0})
        converted = r1_stats.infer_legacy_blocks(rows, CONFIGS)
        self.assertEqual({r["block_id"] for r in converted}, {0, 1, 2, 3})
        obs = r1_stats.process_observations(converted, CONFIGS)
        self.assertEqual(len(obs), 4)

    def test_legacy_incomplete_block_is_rejected(self):
        rows = [{"config": "A", "round": 0, "trial": 0, "ns_per_call": 1.0},
                {"config": "B", "round": 1, "trial": 0, "ns_per_call": 1.0},
                {"config": "A", "round": 2, "trial": 0, "ns_per_call": 1.0}]
        with self.assertRaises(r1_stats.StatsError):
            r1_stats.infer_legacy_blocks(rows, ["A", "B"])

    def test_measurement_identity_includes_mode_and_toolchain(self):
        base = dict(campaign="C", case="known_vec", n=10000, configs=CONFIGS,
                    reps=200, trials=5, blocks=9, seed=1,
                    exe_sha256={"A": "a", "AA": "a", "B": "b", "C": "c"},
                    toolchain_manifest_sha256="t1")
        setup = r1_stats.measurement_parameters(mode="setup", **base)
        hot = r1_stats.measurement_parameters(mode="hot", **base)
        body = r1_stats.measurement_parameters(mode="body", **base)
        self.assertEqual(len({r1_stats.point_id(setup), r1_stats.point_id(hot),
                              r1_stats.point_id(body)}), 3)
        changed_tool = dict(base, toolchain_manifest_sha256="t2")
        self.assertNotEqual(r1_stats.point_id(setup),
                            r1_stats.point_id(
                                r1_stats.measurement_parameters(mode="setup", **changed_tool)))

    def test_original_known_vec_filename_collision_is_reproduced(self):
        def legacy_stem(case, tag, n):
            return f"{case}_{tag}_n{n}"
        stems = {legacy_stem("known_vec", "r1a", 10000)
                 for _mode in ("setup", "hot", "body")}
        self.assertEqual(len(stems), 1)
        base = dict(campaign="C", case="known_vec", n=10000, configs=CONFIGS,
                    reps=200, trials=5, blocks=9, seed=1,
                    exe_sha256={"A": "a", "AA": "a", "B": "b", "C": "c"},
                    toolchain_manifest_sha256="t1")
        ids = {r1_stats.point_id(r1_stats.measurement_parameters(mode=mode, **base))
               for mode in ("setup", "hot", "body")}
        self.assertEqual(len(ids), 3)

    def test_schedule_is_complete_and_deterministic(self):
        first = r1_run_case.build_schedule(CONFIGS, 4, 123)
        second = r1_run_case.build_schedule(CONFIGS, 4, 123)
        different = r1_run_case.build_schedule(CONFIGS, 4, 124)
        self.assertEqual(first, second)
        self.assertNotEqual(first, different)
        for block in range(4):
            configs = [entry["config"] for entry in first
                       if entry["block_id"] == block]
            self.assertEqual(sorted(configs), sorted(CONFIGS))
            self.assertEqual(len({entry["execution_index"] for entry in first
                                  if entry["block_id"] == block}), 4)

    def test_measurement_directory_is_mode_specific(self):
        one = r1_run_case.measurement_directory(Path("campaign"), "known_vec",
                                                "setup", 10000, "m-1", 1)
        two = r1_run_case.measurement_directory(Path("campaign"), "known_vec",
                                                "hot", 10000, "m-2", 1)
        self.assertNotEqual(one, two)
        self.assertIn("mode-setup", str(one))
        self.assertIn("mode-hot", str(two))

    def test_duplicate_spec_points_are_rejected(self):
        with tempfile.TemporaryDirectory() as temp:
            spec = Path(temp) / "spec.json"
            spec.write_text(json.dumps({
                "campaign": "C", "seed": 1, "toolchain_manifest": "x",
                "points": [
                    {"case": "a", "n": 1, "reps": 1, "blocks": 5},
                    {"case": "a", "n": 1, "reps": 2, "blocks": 5},
                ],
            }), encoding="utf-8")
            with self.assertRaises(SystemExit):
                r1_campaign.load_spec(spec)

    def test_resume_validation_requires_raw_rows(self):
        with tempfile.TemporaryDirectory() as temp:
            directory, parameters = self._valid_attempt(Path(temp))
            self.assertTrue(r1_run_case.validate_existing(directory, parameters))
            (directory / "raw.csv").write_text(
                "config,block_id,trial_id\nA,0,0\n", encoding="utf-8")
            self.assertFalse(r1_run_case.validate_existing(directory, parameters))

    def _valid_attempt(self, temp: Path) -> tuple[Path, dict]:
        parameters = r1_stats.measurement_parameters(
            "C", "read_read", "", 1024, CONFIGS, 10, 2, 1, 1,
            {"A": "a", "AA": "a", "B": "b", "C": "c"}, "sha")
        point = r1_stats.point_id(parameters)
        directory = temp / "attempt"
        directory.mkdir(parents=True)
        rows = []
        for config in CONFIGS:
            for trial in range(2):
                rows.append({"config": config, "block_id": 0,
                             "trial_id": trial,
                             "ns_per_call": 100 if config in ("A", "AA") else 80})
        with open(directory / "raw.csv", "w", newline="", encoding="utf-8") as f:
            writer = csv.DictWriter(f, fieldnames=list(rows[0]))
            writer.writeheader()
            writer.writerows(rows)
        schedule = {
            "seed": 1, "blocks": 1, "configs": CONFIGS, "status": "complete",
            "schedule": [{"block_id": 0, "execution_index": i, "config": c,
                          "status": "complete"} for i, c in enumerate(CONFIGS)],
        }
        summary = {
            "status": "complete", "point_id": point, "parameters": parameters,
            "process_observations": {"0": {"A": 100, "AA": 100, "B": 80, "C": 80}},
            "checksum": "x", "verify": {c: ["OK"] for c in CONFIGS},
        }
        measurement = {"status": "complete", "parameters": parameters}
        (directory / "measurement.json").write_text(json.dumps(measurement), encoding="utf-8")
        (directory / "summary.json").write_text(json.dumps(summary), encoding="utf-8")
        (directory / "schedule.json").write_text(json.dumps(schedule), encoding="utf-8")
        return directory, parameters

    def test_measurement_artifact_corruption_is_detected(self):
        with tempfile.TemporaryDirectory() as temp:
            directory, parameters = self._valid_attempt(Path(temp))
            ok, errors = r1_stats.validate_measurement_artifacts(
                directory, parameters)
            self.assertTrue(ok, errors)
            # Altered raw timing disagrees with the stored summary.
            raw = directory / "raw.csv"
            raw.write_text(raw.read_text(encoding="utf-8").replace(",100\n", ",999\n", 1),
                           encoding="utf-8")
            ok, errors = r1_stats.validate_measurement_artifacts(directory, parameters)
            self.assertFalse(ok)
            self.assertTrue(any("mismatch" in e for e in errors), errors)
            # Duplicate trial id.
            directory, parameters = self._valid_attempt(Path(temp) / "second")
            raw = directory / "raw.csv"
            raw.write_text(raw.read_text(encoding="utf-8").replace(",1,80", ",0,80", 1),
                           encoding="utf-8")
            ok, errors = r1_stats.validate_measurement_artifacts(directory, parameters)
            self.assertFalse(ok)
            # Truncated schedule.
            directory, parameters = self._valid_attempt(Path(temp) / "third")
            schedule = json.loads((directory / "schedule.json").read_text(encoding="utf-8"))
            schedule["schedule"] = schedule["schedule"][:2]
            (directory / "schedule.json").write_text(json.dumps(schedule), encoding="utf-8")
            ok, errors = r1_stats.validate_measurement_artifacts(directory, parameters)
            self.assertFalse(ok)
            # Inconsistent summary status.
            directory, parameters = self._valid_attempt(Path(temp) / "fourth")
            summary = json.loads((directory / "summary.json").read_text(encoding="utf-8"))
            summary["status"] = "running"
            (directory / "summary.json").write_text(json.dumps(summary), encoding="utf-8")
            ok, errors = r1_stats.validate_measurement_artifacts(directory, parameters)
            self.assertFalse(ok)

    def test_completed_measurement_validation(self):
        with tempfile.TemporaryDirectory() as temp:
            root = Path(temp)
            parameters = r1_stats.measurement_parameters(
                "C", "read_read", "", 1024, CONFIGS, 10, 5, 9, 1,
                {"A": "a", "AA": "a", "B": "b", "C": "c"}, "sha")
            point = r1_stats.point_id(parameters)
            directory = root / point
            directory.mkdir()
            (directory / "raw.csv").write_text(
                "config,block_id,trial_id,ns_per_call\nA,0,0,1.0\n", encoding="utf-8")
            (directory / "measurement.json").write_text(
                json.dumps({"parameters": parameters}), encoding="utf-8")
            (directory / "summary.json").write_text(
                json.dumps({"status": "complete", "point_id": point}), encoding="utf-8")
            self.assertTrue(r1_stats.validate_completed_measurement(directory, parameters))
            changed = dict(parameters, mode="body")
            self.assertFalse(r1_stats.validate_completed_measurement(directory, changed))


if __name__ == "__main__":
    unittest.main()
