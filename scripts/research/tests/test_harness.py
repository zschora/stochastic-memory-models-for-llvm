"""Fast, offline tests for the portable research harness."""
from __future__ import annotations

import json
import subprocess
import sys
import tempfile
import unittest
from pathlib import Path

ROOT = Path(__file__).resolve().parents[3]
SCRIPTS = ROOT / "scripts" / "research"


def run_tool(script: str, *args: str, root: Path | None = None):
    cmd = [sys.executable, str(SCRIPTS / script)]
    if root is not None:
        cmd += ["--root", str(root)]
    cmd += list(args)
    return subprocess.run(cmd, cwd=ROOT, capture_output=True, text=True,
                          encoding="utf-8", errors="replace")


def json_output(proc):
    try:
        return json.loads(proc.stdout)
    except json.JSONDecodeError as exc:
        raise AssertionError(f"invalid JSON from {proc.args}: {exc}\n{proc.stdout}\n{proc.stderr}")


class HarnessTests(unittest.TestCase):
    def setUp(self):
        self.temp = tempfile.TemporaryDirectory()
        self.root = Path(self.temp.name)
        state = self.root / "research" / "state"
        state.mkdir(parents=True)
        (state / "hypotheses.json").write_text(json.dumps({
            "schema_version": "1.0",
            "updated_utc": "2026-11-07T00:00:00Z",
            "hypotheses": [{"id": "H-TEST-001"}],
        }), encoding="utf-8")

    def tearDown(self):
        self.temp.cleanup()

    def new_experiment(self, ident: str = "EXP-TEST-001") -> Path:
        proc = run_tool("new_run.py", "--kind", "experiment",
                        "--hypothesis", "H-TEST-001",
                        "--title", "Valid planned experiment",
                        "--run-id", ident, "--json", root=self.root)
        self.assertEqual(proc.returncode, 0, proc.stdout + proc.stderr)
        data = json_output(proc)
        return Path(data["path"])

    def validate(self, path: Path, *args: str):
        return run_tool("validate_run.py", str(path), "--json", *args, root=self.root)

    def mutate(self, path: Path, fn):
        manifest = path / "manifest.json"
        data = json.loads(manifest.read_text(encoding="utf-8"))
        fn(data)
        manifest.write_text(json.dumps(data, indent=2), encoding="utf-8")

    def test_docs_only_doctor_and_check_docs(self):
        doctor = run_tool("doctor.py", "--docs-only", "--json")
        self.assertEqual(doctor.returncode, 0, doctor.stdout + doctor.stderr)
        report = json_output(doctor)
        self.assertEqual(report["status"], "ok")
        self.assertEqual(report["docs"]["missing"], [])
        check = run_tool("check_docs.py", "--json")
        self.assertEqual(check.returncode, 0, check.stdout + check.stderr)
        result = json_output(check)
        self.assertEqual(result["status"], "ok", result)

    def test_committed_simulation_is_valid(self):
        proc = run_tool("validate_run.py",
                        "research/runs/SIM-0001-handoff-smoke", "--json")
        self.assertEqual(proc.returncode, 0, proc.stdout + proc.stderr)
        result = json_output(proc)
        self.assertEqual(result["status"], "ok", result)

    def test_dry_run_does_not_create(self):
        ident = "DRY-20261107-001"
        target = ROOT / "research" / "runs" / ident
        self.assertFalse(target.exists())
        proc = run_tool("new_run.py", "--hypothesis", "H-R1-001",
                        "--run-id", ident, "--dry-run", "--json")
        self.assertEqual(proc.returncode, 0, proc.stdout + proc.stderr)
        result = json_output(proc)
        self.assertTrue(result["dry_run"])
        self.assertFalse(target.exists())

    def test_new_run_creates_valid_planned_experiment(self):
        path = self.new_experiment()
        self.assertTrue((path / "manifest.json").is_file())
        proc = self.validate(path)
        self.assertEqual(proc.returncode, 0, proc.stdout + proc.stderr)
        result = json_output(proc)
        self.assertEqual(result["status"], "ok", result)

    def test_missing_required_field_is_detected(self):
        path = self.new_experiment("EXP-TEST-002")
        self.mutate(path, lambda d: d.pop("commands"))
        proc = self.validate(path)
        self.assertNotEqual(proc.returncode, 0)
        result = json_output(proc)
        self.assertTrue(any(e["code"] == "E-MISSING" for e in result["errors"]), result)

    def test_broken_artifact_reference_is_detected(self):
        path = self.new_experiment("EXP-TEST-003")
        self.mutate(path, lambda d: d["artifacts"].__setitem__(
            "raw_timings", ["results/raw/does-not-exist.csv"]))
        proc = self.validate(path)
        self.assertNotEqual(proc.returncode, 0)
        result = json_output(proc)
        self.assertTrue(any(e["code"] == "E-PATH" for e in result["errors"]), result)

    def test_duplicate_ids_are_detected(self):
        path = self.new_experiment("EXP-TEST-004")
        duplicate = path.parent / "EXP-TEST-999"
        duplicate.mkdir()
        (duplicate / "manifest.json").write_text(
            (path / "manifest.json").read_text(encoding="utf-8"), encoding="utf-8")
        proc = run_tool("validate_run.py", "--all", "--json", root=self.root)
        self.assertNotEqual(proc.returncode, 0)
        result = json_output(proc)
        self.assertTrue(any(e["code"] == "E-DUP" for e in result["errors"]), result)

    def test_incompatible_matched_toolchain_is_detected(self):
        path = self.new_experiment("EXP-TEST-005")
        def mutate(d):
            t = d["toolchain"]
            t["consistency"] = "matched"
            t["clang"]["version"] = "clang version 23.1.5"
            t["opt"]["version"] = "LLVM version 24.0.0git"
            t["llc"]["version"] = "LLVM version 24.0.0git"
            t["baseline_caveat"] = False
            t["compatibility_notes"] = ""
        self.mutate(path, mutate)
        proc = self.validate(path)
        self.assertNotEqual(proc.returncode, 0)
        result = json_output(proc)
        self.assertTrue(any(e["code"] == "E-TOOLCHAIN" for e in result["errors"]), result)

    def test_supported_requires_independent_review_and_validated_evidence(self):
        path = self.new_experiment("EXP-TEST-006")
        def mutate(d):
            d["status"] = "supported"
            d["evidence"]["quality"] = "preliminary"
            d["review"]["status"] = "model-assisted-self-review"
            d["commands"] = ["echo test"]
        self.mutate(path, mutate)
        proc = self.validate(path)
        self.assertNotEqual(proc.returncode, 0)
        result = json_output(proc)
        self.assertTrue(any(e["code"] == "E-GATE" for e in result["errors"]), result)

    def test_new_simulation_and_math_templates_validate(self):
        for kind, ident in (("simulation", "SIM-TEST-001"),
                            ("math", "CLM-TEST-002")):
            proc = run_tool("new_run.py", "--kind", kind,
                            "--title", f"Valid {kind} template",
                            "--run-id", ident, "--json", root=self.root)
            self.assertEqual(proc.returncode, 0, proc.stdout + proc.stderr)
            path = Path(json_output(proc)["path"])
            validated = self.validate(path)
            self.assertEqual(validated.returncode, 0,
                             validated.stdout + validated.stderr)

    def test_math_claim_record_and_proof_gate(self):
        path = self.root / "research" / "claims" / "CLM-TEST-001"
        path.mkdir(parents=True)
        claim = {
            "schema_version": "1.0",
            "record_type": "math-claim",
            "claim_id": "CLM-TEST-001",
            "title": "Small finite check",
            "status": "numerically-checked",
            "created_utc": "2026-11-07T00:00:00Z",
            "model_assumptions": ["capacity-one LRU", "uniform permutations"],
            "claim": "A finite check of the capacity-one miss formula.",
            "proof_status": "numerically-checked",
            "proof_notes": "Boundary cases enumerated.",
            "numerical_checks": ["enumerated n=2,3"],
            "counterexamples": [],
            "prior_art": ["known capacity-one formula"],
            "unresolved_obligations": ["No general proof."],
            "review": {"status": "not-reviewed", "reviewer": "", "notes": ""},
            "artifacts": [],
            "limitations": ["Finite check only."],
            "next_action": "Write the general proof or keep as numerical evidence.",
        }
        (path / "claim.json").write_text(json.dumps(claim), encoding="utf-8")
        proc = self.validate(path)
        self.assertEqual(proc.returncode, 0, proc.stdout + proc.stderr)
        claim["status"] = "proved"
        claim["proof_status"] = "proved"
        claim["review"]["status"] = "model-assisted-self-review"
        (path / "claim.json").write_text(json.dumps(claim), encoding="utf-8")
        proc = self.validate(path)
        self.assertNotEqual(proc.returncode, 0)
        result = json_output(proc)
        self.assertTrue(any(e["code"] == "E-GATE" for e in result["errors"]), result)


if __name__ == "__main__":
    unittest.main()
