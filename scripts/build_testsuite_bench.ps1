param(
  [string]$Opt = "",
  [string]$Llc = "",
  [string]$Clang = "",
  [string]$LlvmLink = "",
  [string]$Cpu = "alderlake"
)

$ErrorActionPreference = "Continue"
$root = Split-Path -Parent $PSScriptRoot
if (-not $Opt)      { $Opt      = Join-Path $root ".tools\llvm-build\bin\opt.exe" }
if (-not $Llc)      { $Llc      = Join-Path $root ".tools\llvm-build\bin\llc.exe" }
$clangRoot = Join-Path $root ".tools\clang\clang+llvm-23.1.5-x86_64-pc-windows-msvc"
if (-not $Clang)    { $Clang    = Join-Path $clangRoot "bin\clang++.exe" }
if (-not $LlvmLink) { $LlvmLink = Join-Path $clangRoot "bin\llvm-link.exe" }

$ts   = Join-Path $root ".tools\llvm-test-suite"
$work = Join-Path $root ".work\ts_known"
$art  = Join-Path $root "results\artifacts\ts_known"
New-Item -ItemType Directory -Force -Path $work, $art | Out-Null
$env:PATH = (Split-Path -Parent $Clang) + ";" + $env:PATH

$benchInc = Join-Path $ts "MicroBenchmarks\libs\benchmark\include"
# Local copy with the MSVC uniform_int_distribution<uint8_t> portability patch.
$srcDir   = Join-Path $root "benchmarks\testsuite"
$benchLib = Join-Path $root ".tools\benchmark-build\src\benchmark.lib"
if (-not (Test-Path $benchLib)) { throw "benchmark.lib not built: $benchLib" }
if (-not (Test-Path (Join-Path $srcDir "VectorOperations.cpp"))) {
  throw "patched VectorOperations.cpp missing in $srcDir"
}

$common = @("-O0", "-Xclang", "-disable-O0-optnone", "-march=$Cpu",
            "-std=c++17", "-DBENCHMARK_STATIC_DEFINE",
            "-fms-runtime-lib=dll",
            "-I$benchInc", "-emit-llvm", "-S")
$sources = @{
  "VectorOperations.cpp" = Join-Path $srcDir "VectorOperations.cpp"
  "main.cpp"             = Join-Path $ts "MicroBenchmarks\LoopVectorization\main.cpp"
}
foreach ($f in $sources.Keys) {
  $out = Join-Path $work ($f + ".O1.ll")
  & $Clang @common $sources[$f] -o $out
  if ($LASTEXITCODE -ne 0) { throw "front-end failed: $f" }
}
$combinedRaw = Join-Path $work "combined.frontend.ll"
& $LlvmLink (Join-Path $work "VectorOperations.cpp.O1.ll") (Join-Path $work "main.cpp.O1.ll") -S -o $combinedRaw
if ($LASTEXITCODE -ne 0) { throw "llvm-link failed" }
$combined = Join-Path $work "combined.input.ll"
python (Join-Path $PSScriptRoot "ir_compat.py") --strip-noinline $combinedRaw $combined
if ($LASTEXITCODE -ne 0) { throw "IR compatibility rewrite failed" }

foreach ($cfg in @("A", "B", "C")) {
  $ll  = Join-Path $work "ts_known.$cfg.ll"
  $obj = Join-Path $work "ts_known.$cfg.obj"
  $exe = Join-Path $work "ts_known.$cfg.exe"
  $err = Join-Path $art "remarks-$cfg.txt"
  $yaml = Join-Path $art "remarks-$cfg.yaml"
  $flags = @("-passes=default<O3>", "-mcpu=$Cpu", "-S", $combined, "-o", $ll,
             "-pass-remarks=loop-fusion", "-pass-remarks-missed=loop-fusion",
             "-pass-remarks-output=$yaml")
  if ($cfg -eq "B") { $flags = @("-enable-loopfusion", "-loop-fusion-min-reused-values=0") + $flags }
  if ($cfg -eq "C") { $flags = @("-enable-loopfusion", "-loop-fusion-min-reused-values=1") + $flags }
  & $Opt @flags 2>&1 | Out-File $err -Encoding utf8
  if ($LASTEXITCODE -ne 0) { throw "opt failed: $cfg" }
  & $Llc -O3 -mtriple=x86_64-pc-windows-msvc "-mcpu=$Cpu" -filetype=obj $ll -o $obj
  if ($LASTEXITCODE -ne 0) { throw "llc failed: $cfg" }
  & $Clang -fuse-ld=lld -fms-runtime-lib=dll $obj $benchLib -o $exe -lshlwapi -lws2_32 -lpsapi -lwinmm
  if ($LASTEXITCODE -ne 0) { throw "link failed: $cfg" }
  $fused = (Select-String -Path $err -Pattern 'Loops fused').Count
  $rej = (Select-String -Path $err -Pattern 'found .* cross-loop reused values').Count
  Write-Host ("[ts_known {0}] fused={1} insufficientReuse={2}" -f $cfg,$fused,$rej)
  Copy-Item $ll (Join-Path $art "ts_known.$cfg.ll") -Force
}
Write-Host "binaries in $work"
exit 0
