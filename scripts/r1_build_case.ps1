param(
  [Parameter(Mandatory=$true)][string]$Case,
  [string]$Campaign = "EXP-20261107-R1A",
  [string]$Clang = "",
  [string]$Opt = "",
  [string]$Llc = "",
  [string]$LlvmLink = "",
  [string]$Cpu = "alderlake",
  [string]$Configs = "A,B,C",
  [string]$OutRoot = "results/r1",
  [string]$KernelLl = "",
  [switch]$Force
)

$ErrorActionPreference = "Continue"
$root = Split-Path -Parent $PSScriptRoot
if (-not $Clang)    { $Clang    = Join-Path $root ".tools\llvm-build\bin\clang.exe" }
if (-not $Opt)      { $Opt      = Join-Path $root ".tools\llvm-build\bin\opt.exe" }
if (-not $Llc)      { $Llc      = Join-Path $root ".tools\llvm-build\bin\llc.exe" }
if (-not $LlvmLink) { $LlvmLink = Join-Path $root ".tools\llvm-build\bin\llvm-link.exe" }

$src = Join-Path $root "benchmarks\$Case.cpp"
$out = Join-Path (Join-Path $root $OutRoot) (Join-Path $Campaign $Case)
if (-not (Test-Path $src)) { throw "missing source: $src" }
if (Test-Path (Join-Path $out "meta.json")) {
  if (-not $Force) { throw "refusing to overwrite existing campaign artifacts: $out (use -Force)" }
  Remove-Item -Recurse -Force $out
}
New-Item -ItemType Directory -Force -Path $out | Out-Null
$env:PATH = (Split-Path -Parent $Clang) + ";" + $env:PATH

$driver = @()
if ((Split-Path -Leaf $Clang) -match '^clang\.exe$') { $driver = @("--driver-mode=g++") }
$frontFlags = $driver + @("-O0", "-Xclang", "-disable-O0-optnone", "-march=$Cpu",
                          "-std=c++17", "-emit-llvm", "-S", $src)
$raw = Join-Path $out "$Case.frontend.ll"
& $Clang @frontFlags -o $raw
if ($LASTEXITCODE -ne 0) { throw "clang front-end failed" }

$input = $raw
if ($KernelLl) {
  $input = Join-Path $out "$Case.linked.ll"
  & $LlvmLink $raw $KernelLl -S -o $input
  if ($LASTEXITCODE -ne 0) { throw "llvm-link of hand-written kernel failed" }
}
& $Opt -passes=verify -disable-output $input
if ($LASTEXITCODE -ne 0) { throw "front-end IR does not verify" }

$meta = [ordered]@{
  case = $Case
  campaign = $Campaign
  source = "benchmarks/$Case.cpp"
  source_sha256 = (Get-FileHash $src -Algorithm SHA256).Hash
  kernel_ll = $KernelLl
  input_ir = (Split-Path -Leaf $input)
  input_ir_sha256 = (Get-FileHash $input -Algorithm SHA256).Hash
  clang = (& $Clang --version | Select-Object -First 1)
  opt = (& $Opt --version | Select-Object -First 1)
  llc = (& $Llc --version | Select-Object -First 1)
  cpu = $Cpu
  configs = [ordered]@{}
}

foreach ($cfg in $Configs.Split(",")) {
  $cfg = $cfg.Trim()
  $ll  = Join-Path $out "$Case.$cfg.ll"
  $obj = Join-Path $out "$Case.$cfg.obj"
  $asm = Join-Path $out "$Case.$cfg.s"
  $exe = Join-Path $out "$Case.$cfg.exe"
  $txt = Join-Path $out "remarks-$cfg.txt"
  $yaml = Join-Path $out "remarks-$cfg.yaml"
  $loops = Join-Path $out "loops-$cfg.txt"

  $fusion = @()
  if ($cfg -eq "B") { $fusion = @("-enable-loopfusion", "-loop-fusion-min-reused-values=0") }
  if ($cfg -eq "C") { $fusion = @("-enable-loopfusion", "-loop-fusion-min-reused-values=1") }
  if ($cfg -eq "D") { $fusion = @("-enable-loopfusion", "-loop-fusion-min-reused-values=1", "-loop-fusion-vectorization-check") }
  if ($cfg -eq "C_meta") { $fusion = @("-enable-loopfusion", "-loop-fusion-min-reused-values=1", "-loop-fusion-disable-cost-model") }
  $passFlags = @("-passes=default<O3>", "-S", $input, "-o", $ll,
                 "-pass-remarks=loop-fusion", "-pass-remarks-missed=loop-fusion",
                 "-pass-remarks-analysis=loop-fusion",
                 "--pass-remarks-output=$yaml")
  if ($Cpu -ne "generic") { $passFlags += "-mcpu=$Cpu" }
  $all = $fusion + $passFlags
  & $Opt @all 2>&1 | Out-File $txt -Encoding utf8
  if ($LASTEXITCODE -ne 0) { throw "opt failed for config $cfg" }

  & $Llc -O3 -mtriple=x86_64-pc-windows-msvc "-mcpu=$Cpu" -filetype=obj $ll -o $obj
  if ($LASTEXITCODE -ne 0) { throw "llc obj failed for config $cfg" }
  & $Llc -O3 -mtriple=x86_64-pc-windows-msvc "-mcpu=$Cpu" -filetype=asm $ll -o $asm
  if ($LASTEXITCODE -ne 0) { throw "llc asm failed for config $cfg" }
  & $Clang @driver $obj -o $exe -lwinmm
  if ($LASTEXITCODE -ne 0) { throw "link failed for config $cfg" }

  & $Opt -passes="print<loops>" -disable-output $ll 2>&1 | Out-File $loops -Encoding utf8
  $loopCount = (Select-String -Path $loops -Pattern '^Loop at depth' -ErrorAction SilentlyContinue).Count
  $fused = (Select-String -Path $txt -Pattern 'Loops fused' -ErrorAction SilentlyContinue).Count
  $rejected = (Select-String -Path $txt -Pattern 'found .* cross-loop reused values' -ErrorAction SilentlyContinue).Count
  $meta.configs[$cfg] = [ordered]@{
    fusion_flags = $fusion
    loops_after = $loopCount
    fused_remarks = $fused
    insufficient_reuse_remarks = $rejected
    ll_sha256 = (Get-FileHash $ll -Algorithm SHA256).Hash
    asm_sha256 = (Get-FileHash $asm -Algorithm SHA256).Hash
    exe_sha256 = (Get-FileHash $exe -Algorithm SHA256).Hash
    obj_size = (Get-Item $obj).Length
    asm_size = (Get-Item $asm).Length
  }
  Write-Host ("[{0}] loops={1} fused={2} insufficientReuse={3}" -f $cfg,$loopCount,$fused,$rejected)
}

# Identical-binary A/A control: copy the A executable under a separate label.
$aa = Join-Path $out "$Case.AA.exe"
Copy-Item (Join-Path $out "$Case.A.exe") $aa -Force
$meta.aa_control = [ordered]@{
  binary = (Split-Path -Leaf $aa)
  sha256 = (Get-FileHash $aa -Algorithm SHA256).Hash
  identical_to_A = $true
}

$meta | ConvertTo-Json -Depth 8 | Set-Content (Join-Path $out "meta.json") -Encoding utf8
Write-Host "artifacts: $out"
exit 0
