#!/usr/bin/env python3
"""Record a verifiable LLVM toolchain provenance manifest.

The manifest binds explicit binary paths, SHA-256 hashes, recorded version
output, the LLVM source Git revision and the CMake build cache.  It does not
prove that an external binary was built from that source; every such limitation
must be recorded in ``verification.limitations``.

Example:
  python scripts/research/record_toolchain.py \\
    --source-dir .tools/llvm-23-src --build-dir .tools/llvm-23-build \\
    --clang .tools/clang/.../bin/clang.exe \\
    --opt .tools/llvm-23-build/bin/opt.exe \\
    --llc .tools/llvm-23-build/bin/llc.exe \\
    --llvm-config .tools/llvm-23-build/bin/llvm-config.exe \\
    --expect-revision 392dfff97d29b59d77e5cac6d4b6ef2585fe7117 \\
    --output research/harness/toolchains/llvm-23.1.5-392dfff.json
"""
from __future__ import annotations

import argparse
import json
import re
import sys
from pathlib import Path

import common


def version_output(path: Path) -> str:
    proc = common._run([str(path), "--version"])
    return ((proc.stdout or "") + (proc.stderr or "")).strip()


def first_version_line(text: str) -> str:
    for line in text.splitlines():
        line = line.strip()
        if line and re.search(r"(?i)version", line) and re.search(r"\d", line):
            return line
    return text.splitlines()[0].strip() if text else "unknown"


def git_revision(source_dir: Path) -> tuple[str, bool, str]:
    head = common._run(["git", "-C", str(source_dir), "rev-parse", "HEAD"]).stdout.strip()
    branch = common._run(["git", "-C", str(source_dir), "rev-parse", "--abbrev-ref", "HEAD"]).stdout.strip()
    dirty = bool(common._run(["git", "-C", str(source_dir), "status", "--porcelain"]).stdout.strip())
    return head, dirty, branch


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--source-dir", type=Path, required=True)
    parser.add_argument("--build-dir", type=Path, required=True)
    parser.add_argument("--clang", type=Path, required=True)
    parser.add_argument("--clang-provenance", default="local-build",
                        choices=["local-build", "official-release-binary",
                                 "external-binary"],
                        help="how the clang binary was obtained (default: local-build)")
    parser.add_argument("--opt", type=Path, required=True)
    parser.add_argument("--llc", type=Path, required=True)
    parser.add_argument("--llvm-config", type=Path, required=True)
    parser.add_argument("--expect-revision", default="")
    parser.add_argument("--tag", default="")
    parser.add_argument("--cmake-arg", action="append", default=[])
    parser.add_argument("--output", type=Path, default=None)
    parser.add_argument("--force", action="store_true")
    parser.add_argument("--root", type=Path, default=Path(__file__).resolve().parents[2])
    parser.add_argument("--json", action="store_true")
    args = parser.parse_args()
    root = args.root.resolve()

    paths = {
        "clang": args.clang,
        "opt": args.opt,
        "llc": args.llc,
        "llvm-config": args.llvm_config,
    }
    for name, path in paths.items():
        if not path.is_file():
            raise SystemExit(f"{name} not found: {path}")
    if not (args.source_dir / "llvm" / "CMakeLists.txt").is_file():
        raise SystemExit(f"source directory does not contain llvm/: {args.source_dir}")
    cache_path = args.build_dir / "CMakeCache.txt"
    if not cache_path.is_file():
        raise SystemExit(f"build directory has no CMakeCache.txt: {args.build_dir}")

    head, dirty, branch = git_revision(args.source_dir)
    expected = (args.expect_revision or head).lower()
    if not re.fullmatch(r"[0-9a-f]{40}", expected):
        raise SystemExit("--expect-revision must be a full 40-character SHA")
    if head.lower() != expected:
        raise SystemExit(f"source HEAD {head} does not equal expected revision {expected}")

    cache = common.parse_cmake_cache(cache_path)
    version = common._run([str(paths["llvm-config"]), "--version"]).stdout.strip()
    build_mode = common._run([str(paths["llvm-config"]), "--build-mode"]).stdout.strip()
    assertion = common._run([str(paths["llvm-config"]), "--assertion-mode"]).stdout.strip()
    targets = common._run([str(paths["llvm-config"]), "--targets-built"]).stdout.strip()
    build_mm = common._manifest_major_minor(cache)
    tool_mm = common.major_minor(version)

    tools = {}
    limitations = []
    versions = []
    for name, path in paths.items():
        out = version_output(path)
        line = first_version_line(out)
        mm = common.major_minor(line)
        if mm:
            versions.append(mm)
        provenance = (args.clang_provenance if name == "clang"
                      else "local-build")
        embedded = re.search(r"\b([0-9a-f]{40})\b", out)
        if embedded and embedded.group(1).lower() != expected:
            raise SystemExit(f"{name} version output embeds a different revision: "
                             f"{embedded.group(1)} != {expected}")
        if not embedded:
            limitations.append(
                f"{name} --version does not embed a source SHA; provenance is bound "
                "by its recorded hash and the build/source manifest.")
        tools[name] = {
            "path": common.rel_to(root, path),
            "version": line,
            "version_output": out,
            "sha256": common.sha256_file(path),
            "source_revision": expected,
            "provenance": provenance,
        }

    consistency = "verified"
    problems = []
    if dirty:
        problems.append("source worktree is dirty")
    if version and tool_mm is None:
        problems.append(f"cannot parse llvm-config version: {version}")
    if build_mm and tool_mm and build_mm != tool_mm:
        problems.append(f"CMakeCache version {build_mm} differs from tools {tool_mm}")
    if versions and len(set(versions)) != 1:
        problems.append(f"tool major.minor versions disagree: {sorted(set(versions))}")
    if problems:
        consistency = "mixed"
        limitations.extend(problems)

    toolchain_id = args.output.stem if args.output else f"TC-LLVM-{version}-{expected[:9]}"
    if not toolchain_id.startswith("TC-"):
        toolchain_id = f"TC-{toolchain_id}"
    manifest = {
        "schema_version": "1.0",
        "record_type": "toolchain",
        "toolchain_id": toolchain_id,
        "llvm_revision": expected,
        "source": {
            "repository": "https://github.com/llvm/llvm-project",
            "tag": args.tag,
            "commit": expected,
            "dir": common.rel_to(root, args.source_dir),
            "dirty": dirty,
            "checkout": f"branch {branch}; sparse checkout" if branch else "sparse checkout",
        },
        "build": {
            "dir": common.rel_to(root, args.build_dir),
            "configuration": build_mode or cache.get("CMAKE_BUILD_TYPE", "unknown"),
            "generator": cache.get("CMAKE_GENERATOR", "unknown"),
            "assertions": (assertion.upper() == "ON") if assertion else
                          (cache.get("LLVM_ENABLE_ASSERTIONS", "OFF").upper() == "ON"),
            "targets": [t for t in targets.split(";") if t] or ["X86"],
            "cmake_args": args.cmake_arg,
            "compiler": cache.get("CMAKE_CXX_COMPILER", ""),
            "cmake_cache_sha256": common.sha256_file(cache_path),
        },
        "tools": tools,
        "verification": {
            "method": "explicit absolute paths + SHA-256 + recorded --version output "
                      "+ source git HEAD/cleanliness + CMakeCache build settings",
            "verified_utc": common.now_utc(),
            "verified_by": "research-lead (automated record_toolchain.py)",
            "require_local_source": True,
            "reject_path_shadowing": True,
            "limitations": limitations + [
                "Hash and version checks bind binaries to this manifest, but do not "
                "independently prove how an external release binary was produced.",
                "Passing this check is provenance verification, not scientific "
                "validation of any experiment.",
            ],
        },
        "consistency": consistency,
    }
    schema_errors = common.validate_schema_data(manifest, root, "toolchain")
    if schema_errors:
        raise SystemExit("generated manifest is invalid: " +
                         "; ".join(common.format_issue(x) for x in schema_errors))

    output = args.output
    if output is None:
        output = root / "research/harness/toolchains" / f"{toolchain_id}.json"
    elif not output.is_absolute():
        output = root / output
    if output.exists() and not args.force:
        raise SystemExit(f"refusing to overwrite existing manifest: {output}")
    common.write_json(output, manifest)

    result = {
        "ok": True,
        "path": str(output),
        "toolchain_id": toolchain_id,
        "llvm_revision": expected,
        "consistency": consistency,
        "tools": {n: {"version": t["version"], "sha256": t["sha256"]}
                  for n, t in tools.items()},
        "limitations": manifest["verification"]["limitations"],
    }
    print(json.dumps(result, indent=2) if args.json else
          f"wrote {output}\nrevision {expected}\nconsistency {consistency}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
