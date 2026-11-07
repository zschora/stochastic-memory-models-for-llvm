"""Fast, offline tests for the portable research harness.

Most tests call the library directly; a few exercise the CLIs end to end.  No
LLVM installation is required.  Synthetic toolchain manifests use fake binaries
with real hashes and a real temporary Git repository; they test structural
provenance logic, not LLVM behavior.
"""
from __future__ import annotations

import json
import os
import subprocess
import sys
import tempfile
import unittest
from pathlib import Path
from unittest import mock

ROOT = Path(__file__).resolve().parents[3]
SCRIPTS = ROOT / "scripts" / "research"
sys.path.insert(0, str(SCRIPTS))

import common  # noqa: E402
import new_run  # noqa: E402
import schema_lite  # noqa: E402


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


def write(path: Path, content: str) -> Path:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(content, encoding="utf-8", newline="\n")
    return path


def write_json(path: Path, data) -> Path:
    write(path, json.dumps(data, indent=2))
    return path


class HarnessTests(unittest.TestCase):
    def setUp(self):
        self.temp = tempfile.TemporaryDirectory()
        self.root = Path(self.temp.name)
        state = self.root / "research" / "state"
        state.mkdir(parents=True)
        write_json(state / "hypotheses.json", {
            "schema_version": "1.0",
            "updated_utc": "2026-11-07T00:00:00Z",
            "hypotheses": [{"id": "H-TEST-001"}],
        })
        self.hypotheses = {"H-TEST-001"}

    def tearDown(self):
        self.temp.cleanup()

    # ------------------------------------------------------------------
    # fixtures
    # ------------------------------------------------------------------
    def make_toolchain(self, revision: str | None = None,
                       consistency: str = "verified",
                       reject_shadowing: bool = False) -> tuple[Path, dict]:
        src = self.root / "src"
        build = self.root / "build"
        tools = self.root / "tools"
        tools.mkdir(parents=True)
        write(src / "llvm" / "CMakeLists.txt", "# fake llvm source\n")
        write(build / "CMakeCache.txt",
              "CMAKE_BUILD_TYPE:STRING=Release\n"
              "LLVM_ENABLE_ASSERTIONS:BOOL=OFF\n"
              "LLVM_TARGETS_TO_BUILD:STRING=X86\n"
              "LLVM_VERSION_MAJOR:STRING=23\n"
              "LLVM_VERSION_MINOR:STRING=1\n")
        subprocess.run(["git", "-C", str(src), "init", "-q"], check=True)
        subprocess.run(["git", "-C", str(src), "config", "user.name", "test"], check=True)
        subprocess.run(["git", "-C", str(src), "config", "user.email", "test@example.invalid"], check=True)
        subprocess.run(["git", "-C", str(src), "add", "."], check=True)
        subprocess.run(["git", "-C", str(src), "commit", "-q", "-m", "fake source"], check=True)
        if revision is None:
            revision = subprocess.run(["git", "-C", str(src), "rev-parse", "HEAD"],
                                      capture_output=True, text=True, check=True).stdout.strip()

        names = ["clang", "opt", "llc", "llvm-config"]
        for name in names:
            write(tools / name, f"fake binary: {name}\n")
        version = "23.1.5"
        manifest = {
            "schema_version": "1.0",
            "record_type": "toolchain",
            "toolchain_id": "TC-TEST-001",
            "llvm_revision": revision,
            "source": {
                "repository": "https://github.com/llvm/llvm-project",
                "tag": "llvmorg-test",
                "commit": revision,
                "dir": "src",
                "dirty": False,
                "checkout": "test",
            },
            "build": {
                "dir": "build",
                "configuration": "Release",
                "generator": "Ninja",
                "assertions": False,
                "targets": ["X86"],
                "cmake_args": ["-DCMAKE_BUILD_TYPE=Release"],
                "compiler": "MSVC test",
                "cmake_cache_sha256": common.sha256_file(build / "CMakeCache.txt"),
            },
            "tools": {},
            "verification": {
                "method": "test fixture",
                "verified_utc": "2026-11-07T00:00:00Z",
                "verified_by": "test",
                "require_local_source": True,
                "reject_path_shadowing": reject_shadowing,
                "limitations": ["synthetic fixture"],
            },
            "consistency": consistency,
        }
        for name in names:
            path = tools / name
            out = f"{name} version {version}"
            if name == "clang":
                out = f"clang version {version} (https://github.com/llvm/llvm-project {revision})"
            manifest["tools"][name] = {
                "path": common.rel_to(self.root, path),
                "version": out.splitlines()[0],
                "version_output": out,
                "sha256": common.sha256_file(path),
                "source_revision": revision,
                "provenance": "official-release-binary" if name == "clang" else "local-build",
            }
        manifest_path = write_json(self.root / "research/harness/toolchains/TC-TEST-001.json",
                                   manifest)
        return manifest_path, manifest

    def base_experiment(self, ident: str = "EXP-TEST-001") -> tuple[Path, dict]:
        manifest_path, _ = self.make_toolchain()
        directory = self.root / "research" / "runs" / ident
        data = new_run.experiment_manifest(self.root, ident, "Test experiment",
                                           "H-TEST-001", str(manifest_path))
        directory.mkdir(parents=True)
        write_json(directory / "manifest.json", data)
        return directory, data

    def write_record(self, directory: Path, data: dict) -> Path:
        return write_json(directory / "manifest.json", data)

    def validate(self, directory: Path):
        errors, warnings, _ = common.validate_record(directory, self.root, self.hypotheses)
        return errors, warnings

    def make_analyzed(self, ident: str = "EXP-TEST-010") -> tuple[Path, dict]:
        directory, data = self.base_experiment(ident)
        data["status"] = "analyzed"
        data["status_history"] = [
            {"status": "planned", "utc": common.now_utc(), "reason": "created"},
            {"status": "running", "utc": common.now_utc(), "reason": "started"},
            {"status": "analyzed", "utc": common.now_utc(), "reason": "complete"},
        ]
        data["build"]["configuration"] = "Release"
        data["pipeline"]["frontend_ir"] = "research/runs/%s/input.ll" % ident
        write(directory / "input.ll", "define void @f() { ret void }\n")
        data["case"]["source"] = "benchmarks/read_read.cpp"
        write(self.root / "benchmarks/read_read.cpp", "// fixture\n")
        data["case"]["input_sizes"] = [1024]
        data["procedure"]["repetitions"] = 5
        data["procedure"]["trials_per_process"] = 7
        data["procedure"]["correctness_oracle"] = "checksum compared across A/B/C"
        data["commands"] = ["opt -passes=default<O3> input.ll -o out.ll"]
        data["artifacts"]["raw_timings"] = ["research/runs/%s/raw.csv" % ident]
        data["artifacts"]["ir"] = ["research/runs/%s/opt.ll" % ident]
        data["artifacts"]["assembly"] = ["research/runs/%s/opt.s" % ident]
        data["artifacts"]["remarks"] = ["research/runs/%s/remarks.yaml" % ident]
        data["artifacts"]["analysis_script"] = "scripts/analyze.py"
        data["artifacts"]["analysis_script_revision"] = "deadbeef"
        for rel in (data["artifacts"]["raw_timings"] +
                    data["artifacts"]["ir"] + data["artifacts"]["assembly"] +
                    data["artifacts"]["remarks"]):
            write(self.root / rel, "fixture\n")
        write(self.root / "scripts/analyze.py", "# fixture\n")
        data["results"]["summary"] = "A/B/C medians recorded; see raw.csv"
        data["evidence"] = {"quality": "measured",
                           "notes": "fixture data",
                           "validation_artifacts": []}
        self.write_record(directory, data)
        return directory, data

    def math_claim(self, ident: str = "CLM-TEST-001") -> tuple[Path, dict]:
        directory = self.root / "research" / "claims" / ident
        data = new_run.math_manifest(self.root, ident, "Test claim", None)
        data["model_assumptions"] = ["uniform permutations of a fixed multiset"]
        data["claim"] = "For capacity one, the expected miss count is explicit."
        data["proof_status"] = "numerically-checked"
        data["status"] = "numerically-checked"
        data["numerical_checks"] = ["enumerated n=2,3"]
        data["check_artifacts"] = ["research/claims/%s/enumeration.py" % ident]
        write(directory / "enumeration.py", "# fixture\n")
        write_json(directory / "claim.json", data)
        return directory, data

    # ------------------------------------------------------------------
    # CLI and documentation
    # ------------------------------------------------------------------
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
        proc = run_tool("new_run.py", "--kind", "experiment",
                        "--hypothesis", "H-TEST-001", "--title", "Valid planned",
                        "--run-id", "EXP-TEST-001", "--json", root=self.root)
        self.assertEqual(proc.returncode, 0, proc.stdout + proc.stderr)
        path = Path(json_output(proc)["path"])
        self.assertTrue((path / "manifest.json").is_file())
        errors, _ = self.validate(path)
        self.assertEqual(errors, [])

    def test_new_simulation_and_math_templates_validate(self):
        for kind, ident in (("simulation", "SIM-TEST-001"),
                            ("math", "CLM-TEST-002")):
            proc = run_tool("new_run.py", "--kind", kind, "--title", f"Valid {kind}",
                            "--run-id", ident, "--json", root=self.root)
            self.assertEqual(proc.returncode, 0, proc.stdout + proc.stderr)
            path = Path(json_output(proc)["path"])
            errors, _ = self.validate(path)
            self.assertEqual(errors, [])

    # ------------------------------------------------------------------
    # schema and provenance
    # ------------------------------------------------------------------
    def test_schema_lite_rejects_type_enum_and_bounds(self):
        schema = {
            "type": "object",
            "required": ["name", "count"],
            "properties": {
                "name": {"type": "string", "minLength": 2},
                "count": {"type": "integer", "minimum": 1},
                "mode": {"enum": ["a", "b"]},
            },
        }
        errors = schema_lite.validate_instance({"name": "x", "count": 0, "mode": "c"}, schema)
        codes = {e["code"] for e in errors}
        self.assertIn("E-VALUE", codes)
        self.assertIn("E-BOUNDS", codes)

    def test_record_schema_rejects_invalid_field_types(self):
        directory, data = self.base_experiment("EXP-TEST-003")
        data["procedure"]["repetitions"] = -1
        data["status"] = "planned"
        self.write_record(directory, data)
        errors, _ = self.validate(directory)
        self.assertTrue(any(e["code"] == "E-BOUNDS" for e in errors), errors)

    def test_verified_toolchain_fixture_passes(self):
        manifest_path, _ = self.make_toolchain()
        errors, warnings, _ = common.verify_toolchain_manifest(manifest_path, self.root)
        self.assertEqual(errors, [])

    def test_different_major_versions_are_rejected(self):
        manifest_path, manifest = self.make_toolchain()
        manifest["tools"]["opt"]["version"] = "LLVM version 24.0.0git"
        manifest["tools"]["opt"]["version_output"] = "LLVM version 24.0.0git"
        write_json(manifest_path, manifest)
        errors, _, _ = common.verify_toolchain_manifest(manifest_path, self.root)
        self.assertTrue(any("major.minor" in e["message"] for e in errors), errors)

    def test_same_version_different_revision_is_rejected(self):
        manifest_path, manifest = self.make_toolchain()
        manifest["tools"]["opt"]["source_revision"] = "1" * 40
        write_json(manifest_path, manifest)
        errors, _, _ = common.verify_toolchain_manifest(manifest_path, self.root)
        self.assertTrue(any("source_revision" in e["field"] for e in errors), errors)

    def test_missing_provenance_is_rejected_in_strict_mode(self):
        # No manifest in a fresh root: strict readiness must not guess.
        import doctor
        report = doctor.build_report(self.root, "experiment", None)
        self.assertEqual(report["status"], "error")
        self.assertTrue(any(e["code"] == "E-PROVENANCE" for e in report["errors"]),
                        report["errors"])

    def test_conflicting_path_entry_is_rejected(self):
        manifest_path, manifest = self.make_toolchain(reject_shadowing=True)
        fakebin = self.root / "fakebin"
        fakebin.mkdir()
        for name in ("clang", "clang.exe"):
            write(fakebin / name, "different clang\n")
        env = dict(os.environ)
        env["PATH"] = str(fakebin) + os.pathsep + env.get("PATH", "")
        with mock.patch.dict(os.environ, env, clear=False):
            errors, _, _ = common.verify_toolchain_manifest(manifest_path, self.root)
        self.assertTrue(any(e["code"] == "E-PATH-CONFLICT" for e in errors), errors)

    def test_missing_tool_binary_is_rejected(self):
        manifest_path, manifest = self.make_toolchain()
        (self.root / manifest["tools"]["llc"]["path"]).unlink()
        errors, _, _ = common.verify_toolchain_manifest(manifest_path, self.root)
        self.assertTrue(any(e["code"] == "E-PROVENANCE" for e in errors), errors)

    def test_analyzed_requires_verified_toolchain(self):
        directory, data = self.make_analyzed("EXP-TEST-011")
        data["toolchain"]["consistency"] = "matched"
        self.write_record(directory, data)
        errors, _ = self.validate(directory)
        self.assertTrue(any(e["code"] == "E-PROVENANCE" for e in errors), errors)

    # ------------------------------------------------------------------
    # evidence gates
    # ------------------------------------------------------------------
    def test_supported_requires_independent_review_and_validated_evidence(self):
        directory, data = self.make_analyzed("EXP-TEST-020")
        data["status"] = "supported"
        data["status_history"].append(
            {"status": "under-review", "utc": common.now_utc(), "reason": "review"})
        data["status_history"].append(
            {"status": "supported", "utc": common.now_utc(), "reason": "accepted"})
        data["evidence"] = {"quality": "preliminary", "notes": "self review",
                            "validation_artifacts": []}
        data["review"] = {
            "status": "model-assisted-self-review", "reviewer": "same",
            "reviewer_type": "same-model", "decision": "needs-work",
            "artifact": "", "notes": "not independent",
        }
        self.write_record(directory, data)
        errors, _ = self.validate(directory)
        codes = {e["code"] for e in errors}
        self.assertIn("E-GATE", codes)

    def test_supported_with_missing_raw_evidence_is_rejected(self):
        directory, data = self.make_analyzed("EXP-TEST-021")
        data["status"] = "supported"
        data["status_history"] += [
            {"status": "under-review", "utc": common.now_utc(), "reason": "review"},
            {"status": "supported", "utc": common.now_utc(), "reason": "accepted"},
        ]
        write(directory / "review.md", "accept\n")
        data["review"] = {
            "status": "human-review", "reviewer": "human",
            "reviewer_type": "human", "decision": "accept",
            "artifact": "research/runs/EXP-TEST-021/review.md", "notes": "ok",
        }
        data["evidence"] = {"quality": "validated", "notes": "validated",
                            "validation_artifacts": ["research/runs/EXP-TEST-021/review.md"]}
        data["artifacts"]["raw_timings"] = []
        self.write_record(directory, data)
        errors, _ = self.validate(directory)
        self.assertTrue(any("raw_timings" in e.get("field", "") for e in errors), errors)

    def test_validated_requires_validation_artifacts_and_verified_provenance(self):
        directory, data = self.make_analyzed("EXP-TEST-022")
        data["evidence"] = {"quality": "validated", "notes": "claimed",
                            "validation_artifacts": []}
        data["toolchain"]["consistency"] = "matched"
        self.write_record(directory, data)
        errors, _ = self.validate(directory)
        self.assertTrue(any(e["code"] == "E-GATE" for e in errors), errors)

    def test_invalid_status_transition_is_rejected(self):
        directory, data = self.make_analyzed("EXP-TEST-023")
        data["status_history"] = [
            {"status": "planned", "utc": common.now_utc(), "reason": "created"},
            {"status": "analyzed", "utc": common.now_utc(), "reason": "skipped running"},
        ]
        data["status_history"].append(
            {"status": "supported", "utc": common.now_utc(), "reason": "promoted"})
        data["status"] = "supported"
        self.write_record(directory, data)
        errors, _ = self.validate(directory)
        self.assertTrue(any(e["code"] == "E-TRANSITION" for e in errors), errors)

    def test_broken_reference_and_unknown_hypothesis_are_rejected(self):
        directory, data = self.make_analyzed("EXP-TEST-024")
        data["artifacts"]["raw_timings"] = ["results/raw/does-not-exist.csv"]
        data["hypothesis_id"] = "H-NOT-FOUND"
        self.write_record(directory, data)
        errors, _ = self.validate(directory)
        codes = {e["code"] for e in errors}
        self.assertIn("E-PATH", codes)
        self.assertIn("E-HYP", codes)

    # ------------------------------------------------------------------
    # mathematical claims
    # ------------------------------------------------------------------
    def test_numerically_checked_claim_passes_with_artifact(self):
        directory, _ = self.math_claim()
        errors, _ = self.validate(directory)
        self.assertEqual(errors, [])

    def test_proved_without_proof_artifact_is_rejected(self):
        directory, data = self.math_claim("CLM-TEST-002")
        data["status"] = "proved"
        data["proof_status"] = "proved"
        data["proof_artifact"] = ""
        data["review"] = {
            "status": "independent-review", "reviewer": "reviewer",
            "reviewer_type": "separate-agent", "decision": "accept",
            "artifact": "research/claims/CLM-TEST-002/review.md", "notes": "checked",
        }
        write(directory / "review.md", "accept\n")
        write_json(directory / "claim.json", data)
        errors, _ = self.validate(directory)
        self.assertTrue(any(e["code"] == "E-GATE" and e.get("field") == "proof_artifact"
                            for e in errors), errors)

    def test_proved_requires_review_artifact_and_identity(self):
        directory, data = self.math_claim("CLM-TEST-003")
        data["status"] = "proved"
        data["proof_status"] = "proved"
        data["proof_artifact"] = "research/claims/CLM-TEST-003/proof.md"
        write(directory / "proof.md", "proof\n")
        data["review"] = {
            "status": "independent-review", "reviewer": "",
            "reviewer_type": "same-model", "decision": "not-reviewed",
            "artifact": "", "notes": "",
        }
        write_json(directory / "claim.json", data)
        errors, _ = self.validate(directory)
        codes = {e["code"] for e in errors}
        self.assertIn("E-REVIEW", codes)
        self.assertIn("E-GATE", codes)

    def test_numerically_checked_requires_check_artifact(self):
        directory, data = self.math_claim("CLM-TEST-004")
        data["check_artifacts"] = []
        write_json(directory / "claim.json", data)
        errors, _ = self.validate(directory)
        self.assertTrue(any(e["code"] == "E-GATE" for e in errors), errors)

    def test_self_review_cannot_be_promoted_to_independent(self):
        directory, data = self.math_claim("CLM-TEST-005")
        data["review"] = {
            "status": "independent-review", "reviewer": "same model",
            "reviewer_type": "same-model", "decision": "accept",
            "artifact": "", "notes": "pretended independence",
        }
        write_json(directory / "claim.json", data)
        errors, _ = self.validate(directory)
        self.assertTrue(any(e["code"] == "E-REVIEW" for e in errors), errors)


if __name__ == "__main__":
    unittest.main()
