; ModuleID = 'C:\work\llvm-profitability-research\.tools\llvm-test-suite\MicroBenchmarks\LoopVectorization\main.cpp'
source_filename = "C:\\work\\llvm-profitability-research\\.tools\\llvm-test-suite\\MicroBenchmarks\\LoopVectorization\\main.cpp"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc19.51.36260"

$_Avx2WmemEnabledWeakValue = comdat any

@_Avx2WmemEnabledWeakValue = weak_odr dso_local global i32 0, comdat, align 4
@"?stream_init_anchor@internal@benchmark@@3HA" = internal global i32 0, align 4
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_main.cpp, ptr null }]

; Function Attrs: noinline uwtable
define internal void @"??__Estream_init_anchor@internal@benchmark@@YAXXZ"() #0 {
  %1 = call noundef i32 @"?InitializeStreams@internal@benchmark@@YAHXZ"()
  store i32 %1, ptr @"?stream_init_anchor@internal@benchmark@@3HA", align 4
  ret void
}

declare dso_local noundef i32 @"?InitializeStreams@internal@benchmark@@YAHXZ"() #1

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store i32 0, ptr %3, align 4
  store ptr %1, ptr %4, align 8
  store i32 %0, ptr %5, align 4
  %6 = load ptr, ptr %4, align 8
  call void @"?Initialize@benchmark@@YAXPEAHPEAPEADP6AXXZ@Z"(ptr noundef %5, ptr noundef %6, ptr noundef @"?PrintDefaultHelp@benchmark@@YAXXZ")
  %7 = call noundef i64 @"?RunSpecifiedBenchmarks@benchmark@@YA_KXZ"()
  ret i32 0
}

declare dso_local void @"?Initialize@benchmark@@YAXPEAHPEAPEADP6AXXZ@Z"(ptr noundef, ptr noundef, ptr noundef) #1

declare dso_local void @"?PrintDefaultHelp@benchmark@@YAXXZ"() #1

declare dso_local noundef i64 @"?RunSpecifiedBenchmarks@benchmark@@YA_KXZ"() #1

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_main.cpp() #0 {
  call void @"??__Estream_init_anchor@internal@benchmark@@YAXXZ"()
  ret void
}

attributes #0 = { noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="alderlake" "target-features"="+adx,+aes,+avx,+avx2,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+pconfig,+pku,+popcnt,+prfchw,+ptwrite,+rdpid,+rdrnd,+rdseed,+sahf,+serialize,+sgx,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+waitpkg,+widekl,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="alderlake" "target-features"="+adx,+aes,+avx,+avx2,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+pconfig,+pku,+popcnt,+prfchw,+ptwrite,+rdpid,+rdrnd,+rdseed,+sahf,+serialize,+sgx,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+waitpkg,+widekl,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #2 = { mustprogress noinline norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="alderlake" "target-features"="+adx,+aes,+avx,+avx2,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+pconfig,+pku,+popcnt,+prfchw,+ptwrite,+rdpid,+rdrnd,+rdseed,+sahf,+serialize,+sgx,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+waitpkg,+widekl,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }

!llvm.dbg.cu = !{!0}
!llvm.linker.options = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11, !12}
!llvm.module.flags = !{!13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "clang version 24.0.0git (https://github.com/llvm/llvm-project.git 6f4196219399a3502cea3beb2d0c8c28b2241649)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "C:\\work\\llvm-profitability-research\\.tools\\llvm-test-suite\\MicroBenchmarks\\LoopVectorization\\main.cpp", directory: "C:\\work\\llvm-profitability-research")
!2 = !{!"/DEFAULTLIB:msvcrt.lib"}
!3 = !{!"/DEFAULTLIB:oldnames.lib"}
!4 = !{!"/FAILIFMISMATCH:\22_MSC_VER=1900\22"}
!5 = !{!"/FAILIFMISMATCH:\22_ITERATOR_DEBUG_LEVEL=0\22"}
!6 = !{!"/FAILIFMISMATCH:\22RuntimeLibrary=MD_DynamicRelease\22"}
!7 = !{!"/DEFAULTLIB:msvcprt.lib"}
!8 = !{!"/FAILIFMISMATCH:\22_CRT_STDIO_ISO_WIDE_SPECIFIERS=0\22"}
!9 = !{!"/alternatename:_Avx2WmemEnabled=_Avx2WmemEnabledWeakValue"}
!10 = !{!"/FAILIFMISMATCH:\22annotate_string=0\22"}
!11 = !{!"/FAILIFMISMATCH:\22annotate_vector=0\22"}
!12 = !{!"/FAILIFMISMATCH:\22annotate_optional=0\22"}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{i32 8, !"PIC Level", i32 2}
!15 = !{i32 7, !"uwtable", i32 2}
!16 = !{i32 1, !"MaxTLSAlign", i32 65536}
!17 = !{!"clang version 24.0.0git (https://github.com/llvm/llvm-project.git 6f4196219399a3502cea3beb2d0c8c28b2241649)"}
