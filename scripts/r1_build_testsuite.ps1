param(
  [string]$Campaign = "EXP-20261107-R1A",
  [string]$Clang = "",
  [string]$Opt = "",
  [string]$Llc = "",
  [string]$LlvmLink = "",
  [string]$Cpu = "alderlake",
  [string]$OutRoot = "results/r1",
  [switch]$Force
)

$ErrorActionPreference = "Continue"
$root = Split-Path -Parent $PSScriptRoot
if (-not $Clang)    { $Clang    = Join-Path $root ".tools\llvm-build\bin\clang.exe" }
if (-not $Opt)      { $Opt      = Join-Path $root ".tools\llvm-build\bin\opt.exe" }
if (-not $Llc)      { $Llc      = Join-Path $root ".tools\llvm-build\bin\llc.exe" }
if (-not $LlvmLink) { $LlvmLink = Join-Path $root ".tools\llvm-build\bin\llvm-link.exe" }

$ts = Join-Path $root ".tools\llvm-test-suite"
$out = Join-Path (Join-Path $root $OutRoot) (Join-Path $Campaign "ts_known")
if (Test-Path (Join-Path $out "meta.json")) {
  if (-not $Force) { throw "refusing to overwrite existing campaign artifacts: $out (use -Force)" }
  Remove-Item -Recurse -Force $out
}
New-Item -ItemType Directory -Force -Path $out | Out-Null
$lldDir = Join-Path $root ".tools\clang\clang+llvm-23.1.5-x86_64-pc-windows-msvc\bin"
$env:PATH = (Split-Path -Parent $Clang) + ";" + $lldDir + ";" + $env:PATH

$benchInc = Join-Path $ts "MicroBenchmarks\libs\benchmark\include"
$srcDir = Join-Path $root "benchmarks\testsuite"
$benchLib = Join-Path $root ".tools\benchmark-build\src\benchmark.lib"
if (-not (Test-Path $benchLib)) { throw "benchmark.lib not built: $benchLib" }

$driver = @()
if ((Split-Path -Leaf $Clang) -match '^clang\.exe$') { $driver = @("--driver-mode=g++") }
$common = $driver + @("-O0", "-Xclang", "-disable-O0-optnone", "-march=$Cpu",
                      "-std=c++17", "-DBENCHMARK_STATIC_DEFINE",
                      "-fms-runtime-lib=dll", "-I$benchInc", "-emit-llvm", "-S")
$sources = @{
  "VectorOperations.cpp" = Join-Path $srcDir "VectorOperations.cpp"
  "main.cpp"             = Join-Path $ts "MicroBenchmarks\LoopVectorization\main.cpp"
}
foreach ($name in $sources.Keys) {
  $ll = Join-Path $out ($name + ".frontend.ll")
  & $Clang @common $sources[$name] -o $ll
  if ($LASTEXITCODE -ne 0) { throw "front-end failed: $name" }
}
$combined = Join-Path $out "combined.frontend.ll"
& $LlvmLink (Join-Path $out "VectorOperations.cpp.frontend.ll") (Join-Path $out "main.cpp.frontend.ll") -S -o $combined
if ($LASTEXITCODE -ne 0) { throw "llvm-link failed" }
& $Opt -passes=verify -disable-output $combined
if ($LASTEXITCODE -ne 0) { throw "combined front-end IR does not verify" }

$meta = [ordered]@{
  case = "ts_known"
  campaign = $Campaign
  source = "llvm-test-suite MicroBenchmarks/LoopVectorization/VectorOperations.cpp (local patched copy)"
  filter = "benchForTruncOrZextVecInLoopWithVW16From_uint64_t_To_uint8_t_"
  clang = (& $Clang --version | Select-Object -First 1)
  opt = (& $Opt --version | Select-Object -First 1)
  llc = (& $Llc --version | Select-Object -First 1)
  cpu = $Cpu
  ir_rewrites = @()
  configs = [ordered]@{}
}

foreach ($cfg in @("A", "B", "C")) {
  $ll  = Join-Path $out "ts_known.$cfg.ll"
  $obj = Join-Path $out "ts_known.$cfg.obj"
  $exe = Join-Path $out "ts_known.$cfg.exe"
  $txt = Join-Path $out "remarks-$cfg.txt"
  $yaml = Join-Path $out "remarks-$cfg.yaml"
  $flags = @("-passes=default<O3>", "-mcpu=$Cpu", "-S", $combined, "-o", $ll,
             "-pass-remarks=loop-fusion", "-pass-remarks-missed=loop-fusion",
             "-pass-remarks-analysis=loop-fusion",
             "--pass-remarks-output=$yaml")
  if ($cfg -eq "B") { $flags = @("-enable-loopfusion", "-loop-fusion-min-reused-values=0") + $flags }
  if ($cfg -eq "C") { $flags = @("-enable-loopfusion", "-loop-fusion-min-reused-values=1") + $flags }
  & $Opt @flags 2>&1 | Out-File $txt -Encoding utf8
  if ($LASTEXITCODE -ne 0) { throw "opt failed: $cfg" }
  & $Llc -O3 -mtriple=x86_64-pc-windows-msvc "-mcpu=$Cpu" -filetype=obj $ll -o $obj
  if ($LASTEXITCODE -ne 0) { throw "llc failed: $cfg" }
  & $Clang @driver -fuse-ld=lld -fms-runtime-lib=dll $obj $benchLib -o $exe -lshlwapi -lws2_32 -lpsapi -lwinmm
  if ($LASTEXITCODE -ne 0) { throw "link failed: $cfg" }
  $fused = (Select-String -Path $txt -Pattern 'Loops fused' -ErrorAction SilentlyContinue).Count
  $rejected = (Select-String -Path $txt -Pattern 'found .* cross-loop reused values' -ErrorAction SilentlyContinue).Count
  $meta.configs[$cfg] = [ordered]@{
    fused_remarks = $fused
    insufficient_reuse_remarks = $rejected
    ll_sha256 = (Get-FileHash $ll -Algorithm SHA256).Hash
    exe_sha256 = (Get-FileHash $exe -Algorithm SHA256).Hash
  }
  Write-Host ("[ts_known {0}] fused={1} insufficientReuse={2}" -f $cfg,$fused,$rejected)
}
$meta | ConvertTo-Json -Depth 6 | Set-Content (Join-Path $out "meta.json") -Encoding utf8
Write-Host "artifacts: $out"
exit 0
