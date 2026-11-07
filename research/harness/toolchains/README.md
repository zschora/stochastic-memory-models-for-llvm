# Toolchain provenance

A toolchain manifest is the only accepted basis for strict experiment readiness.
Equal `clang`/`opt`/`llc` version strings are **not** provenance: released and
locally built binaries can report the same version from different source
revisions or build configurations.

Generate a manifest with explicit paths after a controlled build:

```powershell
python scripts/research/record_toolchain.py `
  --source-dir .tools/llvm-23-src `
  --build-dir .tools/llvm-23-build `
  --clang .tools/clang/clang+llvm-23.1.5-x86_64-pc-windows-msvc/bin/clang.exe `
  --opt .tools/llvm-23-build/bin/opt.exe `
  --llc .tools/llvm-23-build/bin/llc.exe `
  --llvm-config .tools/llvm-23-build/bin/llvm-config.exe `
  --expect-revision 392dfff97d29b59d77e5cac6d4b6ef2585fe7117 `
  --tag llvmorg-23.1.5 `
  --output research/harness/toolchains/llvm-23.1.5-392dfff.json
```

Then:

```powershell
python scripts/research/doctor.py --experiment --json `
  --toolchain-manifest research/harness/toolchains/llvm-23.1.5-392dfff.json
python scripts/research/new_run.py --hypothesis H-R1-001 `
  --toolchain-manifest research/harness/toolchains/llvm-23.1.5-392dfff.json
```

The verifier checks:

- explicit binary paths and SHA-256 hashes;
- recorded `--version` output and embedded source SHA when present;
- the LLVM source Git HEAD and cleanliness;
- `CMakeCache.txt` build type, assertion mode, targets and hash;
- agreement of all tool source revisions with the manifest revision;
- PATH shadowing of an explicitly selected binary.

`verified` means the recorded provenance is present, bound and internally
consistent. It does **not** prove that an external release binary was built from
the stated source, and it does not validate any experiment or scientific claim.
Those limitations are recorded in every manifest.

A run at status `analyzed`, `under-review`, `supported` or `refuted` must use a
`verified` toolchain. Mixed or unverified toolchains may only appear in planned
or exploratory records and must carry an explicit caveat.
