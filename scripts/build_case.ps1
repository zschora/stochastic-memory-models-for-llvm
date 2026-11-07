param(
  [Parameter(Mandatory=$true)][string]$Case,
  [string]$Configs = "A,B,C",
  [string]$Opt = "",
  [string]$Llc = "",
  [string]$Clang = "",
  [string]$Cpu = "alderlake",
  [string]$KernelLl = ""
)

$ErrorActionPreference = "Continue"
$root = Split-Path -Parent $PSScriptRoot
if (-not $Opt)   { $Opt   = Join-Path $root ".tools\llvm-build\bin\opt.exe" }
if (-not $Llc)   { $Llc   = Join-Path $root ".tools\llvm-build\bin\llc.exe" }
if (-not $Clang) { $Clang = Join-Path $root ".tools\clang\clang+llvm-23.1.5-x86_64-pc-windows-msvc\bin\clang++.exe" }

$src    = Join-Path $root "benchmarks\$Case.cpp"
$work   = Join-Path $root ".work\$Case"
$art    = Join-Path $root "results\artifacts\$Case"
New-Item -ItemType Directory -Force -Path $work, $art | Out-Null

$env:PATH = (Split-Path -Parent $Clang) + ";" + $env:PATH
$raw = Join-Path $work "$Case.frontend.ll"
$o1  = Join-Path $work "$Case.input.ll"
# Emit untouched front-end IR.  -O0 + -disable-O0-optnone gives the same
# starting point as a normal clang -O3 build, without pre-running (and thus
# pre-vectorizing) the optimization pipeline before LoopFusion.
$frontFlags = @("-O0", "-Xclang", "-disable-O0-optnone", "-march=$Cpu",
                "-std=c++17", "-emit-llvm", "-S", $src, "-o", $raw)
& $Clang @frontFlags
if ($LASTEXITCODE -ne 0) { throw "clang front-end failed" }
python (Join-Path $PSScriptRoot "ir_compat.py") $raw $o1
if ($LASTEXITCODE -ne 0) { throw "IR compatibility rewrite failed" }
if ($KernelLl) {
  $linked = Join-Path $work "$Case.linked.ll"
  $llvmLink = Join-Path (Split-Path -Parent $Clang) "llvm-link.exe"
  & $llvmLink $o1 $KernelLl -S -o $linked
  if ($LASTEXITCODE -ne 0) { throw "llvm-link of kernel IR failed" }
  $o1 = $linked
}

$meta = [ordered]@{
  case = $Case
  source_sha256 = (Get-FileHash $src -Algorithm SHA256).Hash
  ir_o1_sha256 = (Get-FileHash $o1 -Algorithm SHA256).Hash
  clang = (& $Clang --version | Select-Object -First 1)
  opt_version = (& $Opt --version | Select-Object -First 1)
  llc_version = (& $Llc --version | Select-Object -First 1)
  cpu = $Cpu
  configs = @{}
}

foreach ($cfg in $Configs.Split(",")) {
  $cfg = $cfg.Trim()
  $ll  = Join-Path $work "$Case.$cfg.ll"
  $obj = Join-Path $work "$Case.$cfg.obj"
  $asm = Join-Path $work "$Case.$cfg.s"
  $exe = Join-Path $work "$Case.$cfg.exe"
  $err = Join-Path $art "remarks-$cfg.txt"
  $yaml = Join-Path $art "remarks-$cfg.yaml"

  $passFlags = @("-passes=default<O3>", "-S", $o1, "-o", $ll,
                 "-pass-remarks=loop-fusion", "-pass-remarks-missed=loop-fusion",
                 "-pass-remarks-analysis=loop-fusion",
                 "-pass-remarks-output=$yaml")
  if ($Cpu -ne "generic") { $passFlags += "-mcpu=$Cpu" }
  $fusion = @()
  if ($cfg -eq "B") { $fusion = @("-enable-loopfusion", "-loop-fusion-min-reused-values=0") }
  if ($cfg -eq "C") { $fusion = @("-enable-loopfusion", "-loop-fusion-min-reused-values=1") }

  $all = $fusion + $passFlags
  & $Opt @all 2>&1 | Out-File $err -Encoding utf8
  if ($LASTEXITCODE -ne 0) { throw "opt failed for config $cfg" }

  & $Llc -O3 -mtriple=x86_64-pc-windows-msvc "-mcpu=$Cpu" -filetype=obj $ll -o $obj
  if ($LASTEXITCODE -ne 0) { throw "llc obj failed for config $cfg" }
  & $Llc -O3 -mtriple=x86_64-pc-windows-msvc "-mcpu=$Cpu" -filetype=asm $ll -o $asm
  if ($LASTEXITCODE -ne 0) { throw "llc asm failed for config $cfg" }

  & $Clang -fuse-ld=lld $obj -o $exe -lwinmm
  if ($LASTEXITCODE -ne 0) { throw "link failed for config $cfg" }

  # Count printed loops in the optimized module.
  $loopsTxt = Join-Path $art "loops-$cfg.txt"
  & $Opt -passes="print<loops>" -disable-output $ll 2>&1 | Out-File $loopsTxt -Encoding utf8
  $loopCount = (Select-String -Path $loopsTxt -Pattern '^Loop at depth').Count
  $fused = (Select-String -Path $err -Pattern 'Loops fused').Count
  $rejected = (Select-String -Path $err -Pattern 'found .* cross-loop reused values').Count

  Copy-Item $ll  (Join-Path $art "$Case.$cfg.ll") -Force
  Copy-Item $asm (Join-Path $art "$Case.$cfg.s") -Force

  $meta.configs[$cfg] = [ordered]@{
    fusion_flags = $fusion
    loops_after = $loopCount
    fused_remarks = $fused
    insufficient_reuse_remarks = $rejected
    exe_sha256 = (Get-FileHash $exe -Algorithm SHA256).Hash
    obj_size = (Get-Item $obj).Length
    asm_size = (Get-Item $asm).Length
  }
  Write-Host ("[{0}] loops={1} fused={2} insufficientReuse={3}" -f $cfg,$loopCount,$fused,$rejected)
}

$meta | ConvertTo-Json -Depth 6 | Set-Content (Join-Path $art "meta.json") -Encoding utf8
Write-Host "artifacts: $art"
exit 0
