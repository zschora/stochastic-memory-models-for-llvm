"""End-to-end failure-path tests for the R1 measurement runner."""
from __future__ import annotations

import json
import subprocess
import sys
import tempfile
import unittest
from pathlib import Path
from unittest import mock

ROOT = Path(__file__).resolve().parents[3]
sys.path.insert(0, str(ROOT / "scripts"))

import r1_run_case  # noqa: E402


class FailurePathTests(unittest.TestCase):
    def setUp(self):
        self.temp = tempfile.TemporaryDirectory()
        self.base = Path(self.temp.name)
        self.exe_dir = self.base / "exe"
        self.exe_dir.mkdir()
        for name in ("A", "B", "C", "AA"):
            payload = b"same" if name in {"A", "AA"} else name.encode()
            (self.exe_dir / f"case.{name}.exe").write_bytes(payload)
        self.manifest = self.base / "toolchain.json"
        self.manifest.write_text(json.dumps({
            "schema_version": "1.0", "record_type": "toolchain",
            "toolchain_id": "TC-test", "llvm_revision": "a" * 40,
            "consistency": "verified",
            "source": {"repository": "x", "dir": "x", "dirty": False},
            "build": {"dir": "x", "configuration": "Release", "generator": "Ninja",
                      "assertions": False, "targets": ["X86"], "cmake_args": []},
            "tools": {},
            "verification": {"method": "test", "verified_utc": "2026-11-07T00:00:00Z",
                             "verified_by": "test", "limitations": []},
        }), encoding="utf-8")
        self.campaign = self.base / "campaign"

    def tearDown(self):
        self.temp.cleanup()

    def _argv(self):
        return [
            "r1_run_case.py", "--campaign", "C", "--case", "case",
            "--n", "1024", "--reps", "1", "--blocks", "2", "--trials", "1",
            "--configs", "A,B,C,AA", "--exe-dir", str(self.exe_dir),
            "--campaign-dir", str(self.campaign),
            "--toolchain-manifest", str(self.manifest), "--attempt", "1",
        ]

    def _failure(self, side_effect):
        with mock.patch.object(r1_run_case.subprocess, "run", side_effect=side_effect), \
                mock.patch.object(sys, "argv", self._argv()):
            with self.assertRaises(SystemExit):
                r1_run_case.main()
        failures = list(self.campaign.glob("measurements/**/failure.json"))
        self.assertEqual(len(failures), 1, failures)
        data = json.loads(failures[0].read_text(encoding="utf-8"))
        # The failure file must itself be valid JSON and contain diagnostics.
        json.dumps(data)
        return data

    def test_checksum_mismatch_writes_serializable_failure(self):
        def fake(cmd, **kwargs):
            config = Path(cmd[0]).stem.split(".")[-1]
            return subprocess.CompletedProcess(
                cmd, 0,
                stdout=f"TRIAL 0 100.0\nCHECK {config}\nVERIFY OK\n",
                stderr="")
        data = self._failure(fake)
        self.assertEqual(data["reason"], "checksum mismatch")
        self.assertIsInstance(data["checks"], dict)
        self.assertTrue(all(isinstance(v, list) for v in data["checks"].values()))
        self.assertEqual(data["schedule"][0]["status"], "complete")

    def test_verify_failure_writes_serializable_failure(self):
        def fake(cmd, **kwargs):
            config = Path(cmd[0]).stem.split(".")[-1]
            verify = "FAIL" if config == "B" else "OK"
            return subprocess.CompletedProcess(
                cmd, 0,
                stdout=f"TRIAL 0 100.0\nCHECK same\nVERIFY {verify}\n",
                stderr="")
        data = self._failure(fake)
        self.assertEqual(data["reason"], "verify failure")
        self.assertIn("B", data["verify"])
        self.assertEqual(data["verify"]["B"], ["FAIL"])

    def test_timeout_and_nonzero_preserve_diagnostics(self):
        def timeout(cmd, **kwargs):
            raise subprocess.TimeoutExpired(cmd, 1)
        data = self._failure(timeout)
        self.assertIn("timeout", data["reason"])
        self.assertIn("schedule", data)

        # A fresh campaign directory is needed for the second scenario.
        self.campaign = self.base / "campaign2"

        def nonzero(cmd, **kwargs):
            return subprocess.CompletedProcess(cmd, 7, stdout="", stderr="boom")
        data = self._failure(nonzero)
        self.assertEqual(data["block"]["returncode"], 7)
        self.assertIn("boom", data["stderr"])


if __name__ == "__main__":
    unittest.main()
