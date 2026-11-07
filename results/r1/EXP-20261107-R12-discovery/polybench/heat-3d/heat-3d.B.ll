; ModuleID = 'C:\work\llvm-profitability-research\results\r1\EXP-20261107-R12-discovery\polybench\heat-3d\frontend.ll'
source_filename = "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\stencils\\heat-3d\\heat-3d.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc19.51.36260"

$__local_stdio_printf_options = comdat any

$fprintf = comdat any

$_vfprintf_l = comdat any

$"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = comdat any

$"??_C@_01FHEEJDEE@A?$AA@" = comdat any

$"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@" = comdat any

$"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@" = comdat any

$"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@" = comdat any

$"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = comdat any

@__local_stdio_printf_options._OptionsStorage = internal global i64 0, align 8
@"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", comdat, align 8
@"??_C@_01FHEEJDEE@A?$AA@" = linkonce_odr dso_local unnamed_addr constant [2 x i8] c"A\00", comdat, align 4
@"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"begin dump: %s\00", comdat, align 8
@"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [8 x i8] c"%0.2lf \00", comdat, align 8
@"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", comdat, align 8
@"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", comdat, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 1000, i32 noundef 8) #9
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 1000, i32 noundef 8) #9
  tail call fastcc void @init_array(ptr noundef %3, ptr noundef %4)
  tail call fastcc void @kernel_heat_3d(ptr noundef %3, ptr noundef %4)
  %5 = icmp sgt i32 %0, 42
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = load ptr, ptr %1, align 8
  %strcmpload = load i8, ptr %7, align 1
  %.not = icmp eq i8 %strcmpload, 0
  br i1 %.not, label %8, label %9

8:                                                ; preds = %6
  tail call fastcc void @print_array(ptr noundef %3)
  br label %9

9:                                                ; preds = %8, %6, %2
  tail call void @free(ptr noundef %3)
  ret i32 0
}

declare dso_local ptr @polybench_alloc_data(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: write) uwtable
define internal fastcc void @init_array(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) unnamed_addr #2 {
  %scevgep = getelementptr i8, ptr %0, i64 8000
  %scevgep2 = getelementptr i8, ptr %1, i64 8000
  %bound0 = icmp ult ptr %1, %scevgep
  %bound1 = icmp ult ptr %0, %scevgep2
  %found.conflict = and i1 %bound0, %bound1
  br label %.preheader24

.preheader24:                                     ; preds = %2, %middle.block
  %indvars.iv31 = phi i64 [ 0, %2 ], [ %indvars.iv.next32, %middle.block ]
  %3 = add nuw nsw i64 %indvars.iv31, 10
  %4 = getelementptr inbounds nuw [800 x i8], ptr %1, i64 %indvars.iv31
  %5 = getelementptr inbounds nuw [800 x i8], ptr %0, i64 %indvars.iv31
  br i1 %found.conflict, label %.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader24
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %3, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ]
  %6 = or disjoint i64 %index, 1
  %7 = add nuw nsw <2 x i64> %broadcast.splat, %vec.ind
  %8 = getelementptr inbounds nuw [80 x i8], ptr %4, i64 %index
  %9 = getelementptr inbounds nuw [80 x i8], ptr %4, i64 %6
  %10 = getelementptr inbounds nuw [80 x i8], ptr %5, i64 %index
  %11 = getelementptr inbounds nuw [80 x i8], ptr %5, i64 %6
  %12 = trunc <2 x i64> %7 to <2 x i32>
  %13 = sitofp <2 x i32> %12 to <2 x double>
  %14 = fmul nnan <2 x double> %13, splat (double 1.000000e+01)
  %15 = fdiv <2 x double> %14, splat (double 1.000000e+01)
  %16 = extractelement <2 x double> %15, i64 0
  store double %16, ptr %8, align 8, !alias.scope !7, !noalias !10
  %17 = extractelement <2 x double> %15, i64 1
  store double %17, ptr %9, align 8, !alias.scope !7, !noalias !10
  store double %16, ptr %10, align 8, !alias.scope !10
  store double %17, ptr %11, align 8, !alias.scope !10
  %18 = add <2 x i32> %12, splat (i32 -1)
  %19 = sitofp <2 x i32> %18 to <2 x double>
  %20 = fmul nnan <2 x double> %19, splat (double 1.000000e+01)
  %21 = fdiv <2 x double> %20, splat (double 1.000000e+01)
  %22 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %23 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %24 = extractelement <2 x double> %21, i64 0
  store double %24, ptr %22, align 8, !alias.scope !7, !noalias !10
  %25 = extractelement <2 x double> %21, i64 1
  store double %25, ptr %23, align 8, !alias.scope !7, !noalias !10
  %26 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %27 = getelementptr inbounds nuw i8, ptr %11, i64 8
  store double %24, ptr %26, align 8, !alias.scope !10
  store double %25, ptr %27, align 8, !alias.scope !10
  %28 = add <2 x i32> %12, splat (i32 -2)
  %29 = sitofp <2 x i32> %28 to <2 x double>
  %30 = fmul nnan <2 x double> %29, splat (double 1.000000e+01)
  %31 = fdiv <2 x double> %30, splat (double 1.000000e+01)
  %32 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %33 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %34 = extractelement <2 x double> %31, i64 0
  store double %34, ptr %32, align 8, !alias.scope !7, !noalias !10
  %35 = extractelement <2 x double> %31, i64 1
  store double %35, ptr %33, align 8, !alias.scope !7, !noalias !10
  %36 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %37 = getelementptr inbounds nuw i8, ptr %11, i64 16
  store double %34, ptr %36, align 8, !alias.scope !10
  store double %35, ptr %37, align 8, !alias.scope !10
  %38 = add <2 x i32> %12, splat (i32 -3)
  %39 = sitofp <2 x i32> %38 to <2 x double>
  %40 = fmul nnan <2 x double> %39, splat (double 1.000000e+01)
  %41 = fdiv <2 x double> %40, splat (double 1.000000e+01)
  %42 = getelementptr inbounds nuw i8, ptr %8, i64 24
  %43 = getelementptr inbounds nuw i8, ptr %9, i64 24
  %44 = extractelement <2 x double> %41, i64 0
  store double %44, ptr %42, align 8, !alias.scope !7, !noalias !10
  %45 = extractelement <2 x double> %41, i64 1
  store double %45, ptr %43, align 8, !alias.scope !7, !noalias !10
  %46 = getelementptr inbounds nuw i8, ptr %10, i64 24
  %47 = getelementptr inbounds nuw i8, ptr %11, i64 24
  store double %44, ptr %46, align 8, !alias.scope !10
  store double %45, ptr %47, align 8, !alias.scope !10
  %48 = add <2 x i32> %12, splat (i32 -4)
  %49 = sitofp <2 x i32> %48 to <2 x double>
  %50 = fmul nnan <2 x double> %49, splat (double 1.000000e+01)
  %51 = fdiv <2 x double> %50, splat (double 1.000000e+01)
  %52 = getelementptr inbounds nuw i8, ptr %8, i64 32
  %53 = getelementptr inbounds nuw i8, ptr %9, i64 32
  %54 = extractelement <2 x double> %51, i64 0
  store double %54, ptr %52, align 8, !alias.scope !7, !noalias !10
  %55 = extractelement <2 x double> %51, i64 1
  store double %55, ptr %53, align 8, !alias.scope !7, !noalias !10
  %56 = getelementptr inbounds nuw i8, ptr %10, i64 32
  %57 = getelementptr inbounds nuw i8, ptr %11, i64 32
  store double %54, ptr %56, align 8, !alias.scope !10
  store double %55, ptr %57, align 8, !alias.scope !10
  %58 = add <2 x i32> %12, splat (i32 -5)
  %59 = sitofp <2 x i32> %58 to <2 x double>
  %60 = fmul nnan <2 x double> %59, splat (double 1.000000e+01)
  %61 = fdiv <2 x double> %60, splat (double 1.000000e+01)
  %62 = getelementptr inbounds nuw i8, ptr %8, i64 40
  %63 = getelementptr inbounds nuw i8, ptr %9, i64 40
  %64 = extractelement <2 x double> %61, i64 0
  store double %64, ptr %62, align 8, !alias.scope !7, !noalias !10
  %65 = extractelement <2 x double> %61, i64 1
  store double %65, ptr %63, align 8, !alias.scope !7, !noalias !10
  %66 = getelementptr inbounds nuw i8, ptr %10, i64 40
  %67 = getelementptr inbounds nuw i8, ptr %11, i64 40
  store double %64, ptr %66, align 8, !alias.scope !10
  store double %65, ptr %67, align 8, !alias.scope !10
  %68 = add <2 x i32> %12, splat (i32 -6)
  %69 = sitofp <2 x i32> %68 to <2 x double>
  %70 = fmul nnan <2 x double> %69, splat (double 1.000000e+01)
  %71 = fdiv <2 x double> %70, splat (double 1.000000e+01)
  %72 = getelementptr inbounds nuw i8, ptr %8, i64 48
  %73 = getelementptr inbounds nuw i8, ptr %9, i64 48
  %74 = extractelement <2 x double> %71, i64 0
  store double %74, ptr %72, align 8, !alias.scope !7, !noalias !10
  %75 = extractelement <2 x double> %71, i64 1
  store double %75, ptr %73, align 8, !alias.scope !7, !noalias !10
  %76 = getelementptr inbounds nuw i8, ptr %10, i64 48
  %77 = getelementptr inbounds nuw i8, ptr %11, i64 48
  store double %74, ptr %76, align 8, !alias.scope !10
  store double %75, ptr %77, align 8, !alias.scope !10
  %78 = add <2 x i32> %12, splat (i32 -7)
  %79 = sitofp <2 x i32> %78 to <2 x double>
  %80 = fmul nnan <2 x double> %79, splat (double 1.000000e+01)
  %81 = fdiv <2 x double> %80, splat (double 1.000000e+01)
  %82 = getelementptr inbounds nuw i8, ptr %8, i64 56
  %83 = getelementptr inbounds nuw i8, ptr %9, i64 56
  %84 = extractelement <2 x double> %81, i64 0
  store double %84, ptr %82, align 8, !alias.scope !7, !noalias !10
  %85 = extractelement <2 x double> %81, i64 1
  store double %85, ptr %83, align 8, !alias.scope !7, !noalias !10
  %86 = getelementptr inbounds nuw i8, ptr %10, i64 56
  %87 = getelementptr inbounds nuw i8, ptr %11, i64 56
  store double %84, ptr %86, align 8, !alias.scope !10
  store double %85, ptr %87, align 8, !alias.scope !10
  %88 = add <2 x i32> %12, splat (i32 -8)
  %89 = sitofp <2 x i32> %88 to <2 x double>
  %90 = fmul nnan <2 x double> %89, splat (double 1.000000e+01)
  %91 = fdiv <2 x double> %90, splat (double 1.000000e+01)
  %92 = getelementptr inbounds nuw i8, ptr %8, i64 64
  %93 = getelementptr inbounds nuw i8, ptr %9, i64 64
  %94 = extractelement <2 x double> %91, i64 0
  store double %94, ptr %92, align 8, !alias.scope !7, !noalias !10
  %95 = extractelement <2 x double> %91, i64 1
  store double %95, ptr %93, align 8, !alias.scope !7, !noalias !10
  %96 = getelementptr inbounds nuw i8, ptr %10, i64 64
  %97 = getelementptr inbounds nuw i8, ptr %11, i64 64
  store double %94, ptr %96, align 8, !alias.scope !10
  store double %95, ptr %97, align 8, !alias.scope !10
  %98 = add <2 x i32> %12, splat (i32 -9)
  %99 = sitofp <2 x i32> %98 to <2 x double>
  %100 = fmul nnan <2 x double> %99, splat (double 1.000000e+01)
  %101 = fdiv <2 x double> %100, splat (double 1.000000e+01)
  %102 = getelementptr inbounds nuw i8, ptr %8, i64 72
  %103 = getelementptr inbounds nuw i8, ptr %9, i64 72
  %104 = extractelement <2 x double> %101, i64 0
  store double %104, ptr %102, align 8, !alias.scope !7, !noalias !10
  %105 = extractelement <2 x double> %101, i64 1
  store double %105, ptr %103, align 8, !alias.scope !7, !noalias !10
  %106 = getelementptr inbounds nuw i8, ptr %10, i64 72
  %107 = getelementptr inbounds nuw i8, ptr %11, i64 72
  store double %104, ptr %106, align 8, !alias.scope !10
  store double %105, ptr %107, align 8, !alias.scope !10
  %index.next = add nuw i64 %index, 2
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %108 = icmp eq i64 %index.next, 10
  br i1 %108, label %middle.block, label %vector.body, !llvm.loop !12

.preheader:                                       ; preds = %.preheader24, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ 0, %.preheader24 ]
  %109 = add nuw nsw i64 %3, %indvars.iv
  %110 = getelementptr inbounds nuw [80 x i8], ptr %4, i64 %indvars.iv
  %111 = getelementptr inbounds nuw [80 x i8], ptr %5, i64 %indvars.iv
  %112 = trunc i64 %109 to i32
  %113 = insertelement <2 x i32> poison, i32 %112, i64 0
  %114 = shufflevector <2 x i32> %113, <2 x i32> poison, <2 x i32> zeroinitializer
  %115 = add <2 x i32> %114, <i32 0, i32 -1>
  %116 = sitofp <2 x i32> %115 to <2 x double>
  %117 = fmul nnan <2 x double> %116, splat (double 1.000000e+01)
  %118 = fdiv <2 x double> %117, splat (double 1.000000e+01)
  %119 = extractelement <2 x double> %118, i64 0
  store double %119, ptr %110, align 8
  store double %119, ptr %111, align 8
  %120 = getelementptr inbounds nuw i8, ptr %110, i64 8
  %121 = extractelement <2 x double> %118, i64 1
  store double %121, ptr %120, align 8
  %122 = getelementptr inbounds nuw i8, ptr %111, i64 8
  store double %121, ptr %122, align 8
  %123 = getelementptr inbounds nuw i8, ptr %110, i64 16
  %124 = getelementptr inbounds nuw i8, ptr %111, i64 16
  %125 = trunc i64 %109 to i32
  %126 = insertelement <2 x i32> poison, i32 %125, i64 0
  %127 = shufflevector <2 x i32> %126, <2 x i32> poison, <2 x i32> zeroinitializer
  %128 = add <2 x i32> %127, <i32 -2, i32 -3>
  %129 = sitofp <2 x i32> %128 to <2 x double>
  %130 = fmul nnan <2 x double> %129, splat (double 1.000000e+01)
  %131 = fdiv <2 x double> %130, splat (double 1.000000e+01)
  %132 = extractelement <2 x double> %131, i64 0
  store double %132, ptr %123, align 8
  store double %132, ptr %124, align 8
  %133 = getelementptr inbounds nuw i8, ptr %110, i64 24
  %134 = extractelement <2 x double> %131, i64 1
  store double %134, ptr %133, align 8
  %135 = getelementptr inbounds nuw i8, ptr %111, i64 24
  store double %134, ptr %135, align 8
  %136 = getelementptr inbounds nuw i8, ptr %110, i64 32
  %137 = getelementptr inbounds nuw i8, ptr %111, i64 32
  %138 = trunc i64 %109 to i32
  %139 = insertelement <2 x i32> poison, i32 %138, i64 0
  %140 = shufflevector <2 x i32> %139, <2 x i32> poison, <2 x i32> zeroinitializer
  %141 = add <2 x i32> %140, <i32 -4, i32 -5>
  %142 = sitofp <2 x i32> %141 to <2 x double>
  %143 = fmul nnan <2 x double> %142, splat (double 1.000000e+01)
  %144 = fdiv <2 x double> %143, splat (double 1.000000e+01)
  %145 = extractelement <2 x double> %144, i64 0
  store double %145, ptr %136, align 8
  store double %145, ptr %137, align 8
  %146 = getelementptr inbounds nuw i8, ptr %110, i64 40
  %147 = extractelement <2 x double> %144, i64 1
  store double %147, ptr %146, align 8
  %148 = getelementptr inbounds nuw i8, ptr %111, i64 40
  store double %147, ptr %148, align 8
  %149 = getelementptr inbounds nuw i8, ptr %110, i64 48
  %150 = getelementptr inbounds nuw i8, ptr %111, i64 48
  %151 = trunc i64 %109 to i32
  %152 = insertelement <2 x i32> poison, i32 %151, i64 0
  %153 = shufflevector <2 x i32> %152, <2 x i32> poison, <2 x i32> zeroinitializer
  %154 = add <2 x i32> %153, <i32 -6, i32 -7>
  %155 = sitofp <2 x i32> %154 to <2 x double>
  %156 = fmul nnan <2 x double> %155, splat (double 1.000000e+01)
  %157 = fdiv <2 x double> %156, splat (double 1.000000e+01)
  %158 = extractelement <2 x double> %157, i64 0
  store double %158, ptr %149, align 8
  store double %158, ptr %150, align 8
  %159 = getelementptr inbounds nuw i8, ptr %110, i64 56
  %160 = extractelement <2 x double> %157, i64 1
  store double %160, ptr %159, align 8
  %161 = getelementptr inbounds nuw i8, ptr %111, i64 56
  store double %160, ptr %161, align 8
  %162 = getelementptr inbounds nuw i8, ptr %110, i64 64
  %163 = getelementptr inbounds nuw i8, ptr %111, i64 64
  %164 = trunc i64 %109 to i32
  %165 = insertelement <2 x i32> poison, i32 %164, i64 0
  %166 = shufflevector <2 x i32> %165, <2 x i32> poison, <2 x i32> zeroinitializer
  %167 = add <2 x i32> %166, <i32 -8, i32 -9>
  %168 = sitofp <2 x i32> %167 to <2 x double>
  %169 = fmul nnan <2 x double> %168, splat (double 1.000000e+01)
  %170 = fdiv <2 x double> %169, splat (double 1.000000e+01)
  %171 = extractelement <2 x double> %170, i64 0
  store double %171, ptr %162, align 8
  store double %171, ptr %163, align 8
  %172 = getelementptr inbounds nuw i8, ptr %110, i64 72
  %173 = extractelement <2 x double> %170, i64 1
  store double %173, ptr %172, align 8
  %174 = getelementptr inbounds nuw i8, ptr %111, i64 72
  store double %173, ptr %174, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 10
  br i1 %exitcond.not, label %middle.block, label %.preheader, !llvm.loop !17

middle.block:                                     ; preds = %vector.body, %.preheader
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1
  %exitcond34.not = icmp eq i64 %indvars.iv.next32, 10
  br i1 %exitcond34.not, label %175, label %.preheader24, !llvm.loop !19

175:                                              ; preds = %middle.block
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @kernel_heat_3d(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) unnamed_addr #3 {
  %scevgep = getelementptr i8, ptr %1, i64 7912
  %scevgep4 = getelementptr i8, ptr %1, i64 88
  %scevgep5 = getelementptr i8, ptr %0, i64 7112
  %scevgep6 = getelementptr i8, ptr %0, i64 888
  %scevgep15 = getelementptr i8, ptr %0, i64 7912
  %scevgep16 = getelementptr i8, ptr %0, i64 88
  %scevgep17 = getelementptr i8, ptr %1, i64 7112
  %scevgep18 = getelementptr i8, ptr %1, i64 888
  %bound021 = icmp ult ptr %scevgep18, %scevgep15
  %bound122 = icmp ult ptr %scevgep16, %scevgep17
  %found.conflict23 = and i1 %bound021, %bound122
  %bound0 = icmp ult ptr %scevgep6, %scevgep
  %bound1 = icmp ult ptr %scevgep4, %scevgep5
  %found.conflict = and i1 %bound0, %bound1
  br label %.preheader110

.preheader110:                                    ; preds = %2, %1349
  %.0105117 = phi i32 [ 1, %2 ], [ %1350, %1349 ]
  br label %.preheader108

.preheader108:                                    ; preds = %.preheader110, %middle.block28
  %indvars.iv120 = phi i64 [ 1, %.preheader110 ], [ %indvars.iv.next121, %middle.block28 ]
  %3 = getelementptr inbounds nuw [800 x i8], ptr %0, i64 %indvars.iv120
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 800
  %5 = getelementptr i8, ptr %3, i64 -800
  %6 = getelementptr inbounds nuw [800 x i8], ptr %1, i64 %indvars.iv120
  br i1 %found.conflict23, label %.preheader106, label %vector.body25

vector.body25:                                    ; preds = %.preheader108, %vector.body25
  %index26 = phi i64 [ %index.next27, %vector.body25 ], [ 0, %.preheader108 ]
  %7 = or disjoint i64 %index26, 1
  %8 = add i64 %index26, 2
  %9 = getelementptr inbounds nuw [80 x i8], ptr %4, i64 %7
  %10 = getelementptr inbounds nuw [80 x i8], ptr %4, i64 %8
  %11 = getelementptr inbounds nuw [80 x i8], ptr %3, i64 %7
  %12 = getelementptr inbounds nuw [80 x i8], ptr %3, i64 %8
  %13 = getelementptr inbounds nuw [80 x i8], ptr %5, i64 %7
  %14 = getelementptr inbounds nuw [80 x i8], ptr %5, i64 %8
  %15 = getelementptr inbounds nuw [80 x i8], ptr %6, i64 %7
  %16 = getelementptr inbounds nuw [80 x i8], ptr %6, i64 %8
  %17 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %18 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %19 = load double, ptr %17, align 8, !alias.scope !20
  %20 = load double, ptr %18, align 8, !alias.scope !20
  %21 = insertelement <2 x double> poison, double %19, i64 0
  %22 = insertelement <2 x double> %21, double %20, i64 1
  %23 = getelementptr i8, ptr %11, i64 8
  %24 = getelementptr i8, ptr %12, i64 8
  %25 = load double, ptr %23, align 8, !alias.scope !20
  %26 = load double, ptr %24, align 8, !alias.scope !20
  %27 = insertelement <2 x double> poison, double %25, i64 0
  %28 = insertelement <2 x double> %27, double %26, i64 1
  %29 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %28, <2 x double> splat (double -2.000000e+00), <2 x double> %22)
  %30 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %31 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %32 = load double, ptr %30, align 8, !alias.scope !20
  %33 = load double, ptr %31, align 8, !alias.scope !20
  %34 = insertelement <2 x double> poison, double %32, i64 0
  %35 = insertelement <2 x double> %34, double %33, i64 1
  %36 = fadd <2 x double> %29, %35
  %37 = getelementptr inbounds nuw i8, ptr %11, i64 88
  %38 = getelementptr inbounds nuw i8, ptr %12, i64 88
  %39 = load double, ptr %37, align 8, !alias.scope !20
  %40 = load double, ptr %38, align 8, !alias.scope !20
  %41 = insertelement <2 x double> poison, double %39, i64 0
  %42 = insertelement <2 x double> %41, double %40, i64 1
  %43 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %28, <2 x double> splat (double -2.000000e+00), <2 x double> %42)
  %44 = getelementptr i8, ptr %11, i64 -72
  %45 = getelementptr i8, ptr %12, i64 -72
  %46 = load double, ptr %44, align 8, !alias.scope !20
  %47 = load double, ptr %45, align 8, !alias.scope !20
  %48 = insertelement <2 x double> poison, double %46, i64 0
  %49 = insertelement <2 x double> %48, double %47, i64 1
  %50 = fadd <2 x double> %43, %49
  %51 = fmul <2 x double> %50, splat (double 1.250000e-01)
  %52 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %36, <2 x double> splat (double 1.250000e-01), <2 x double> %51)
  %53 = getelementptr i8, ptr %11, i64 16
  %54 = getelementptr i8, ptr %12, i64 16
  %55 = load double, ptr %53, align 8, !alias.scope !20
  %56 = load double, ptr %54, align 8, !alias.scope !20
  %57 = insertelement <2 x double> poison, double %55, i64 0
  %58 = insertelement <2 x double> %57, double %56, i64 1
  %59 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %28, <2 x double> splat (double -2.000000e+00), <2 x double> %58)
  %60 = load double, ptr %11, align 8, !alias.scope !20
  %61 = load double, ptr %12, align 8, !alias.scope !20
  %62 = insertelement <2 x double> poison, double %60, i64 0
  %63 = insertelement <2 x double> %62, double %61, i64 1
  %64 = fadd <2 x double> %59, %63
  %65 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %64, <2 x double> splat (double 1.250000e-01), <2 x double> %52)
  %66 = fadd <2 x double> %28, %65
  %67 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %68 = getelementptr inbounds nuw i8, ptr %16, i64 8
  %69 = extractelement <2 x double> %66, i64 0
  store double %69, ptr %67, align 8, !alias.scope !23, !noalias !20
  %70 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %71 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %72 = load double, ptr %70, align 8, !alias.scope !20
  %73 = load double, ptr %71, align 8, !alias.scope !20
  %74 = insertelement <2 x double> poison, double %72, i64 0
  %75 = insertelement <2 x double> %74, double %73, i64 1
  %76 = load double, ptr %53, align 8, !alias.scope !20
  %77 = load double, ptr %54, align 8, !alias.scope !20
  %78 = insertelement <2 x double> poison, double %76, i64 0
  %79 = insertelement <2 x double> %78, double %77, i64 1
  %80 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %79, <2 x double> splat (double -2.000000e+00), <2 x double> %75)
  %81 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %82 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %83 = load double, ptr %81, align 8, !alias.scope !20
  %84 = load double, ptr %82, align 8, !alias.scope !20
  %85 = insertelement <2 x double> poison, double %83, i64 0
  %86 = insertelement <2 x double> %85, double %84, i64 1
  %87 = fadd <2 x double> %80, %86
  %88 = getelementptr inbounds nuw i8, ptr %11, i64 96
  %89 = getelementptr inbounds nuw i8, ptr %12, i64 96
  %90 = load double, ptr %88, align 8, !alias.scope !20
  %91 = load double, ptr %89, align 8, !alias.scope !20
  %92 = insertelement <2 x double> poison, double %90, i64 0
  %93 = insertelement <2 x double> %92, double %91, i64 1
  %94 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %79, <2 x double> splat (double -2.000000e+00), <2 x double> %93)
  %95 = getelementptr i8, ptr %11, i64 -64
  %96 = getelementptr i8, ptr %12, i64 -64
  %97 = load double, ptr %95, align 8, !alias.scope !20
  %98 = load double, ptr %96, align 8, !alias.scope !20
  %99 = insertelement <2 x double> poison, double %97, i64 0
  %100 = insertelement <2 x double> %99, double %98, i64 1
  %101 = fadd <2 x double> %94, %100
  %102 = fmul <2 x double> %101, splat (double 1.250000e-01)
  %103 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %87, <2 x double> splat (double 1.250000e-01), <2 x double> %102)
  %104 = getelementptr i8, ptr %11, i64 24
  %105 = getelementptr i8, ptr %12, i64 24
  %106 = load double, ptr %104, align 8, !alias.scope !20
  %107 = load double, ptr %105, align 8, !alias.scope !20
  %108 = insertelement <2 x double> poison, double %106, i64 0
  %109 = insertelement <2 x double> %108, double %107, i64 1
  %110 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %79, <2 x double> splat (double -2.000000e+00), <2 x double> %109)
  %111 = load double, ptr %23, align 8, !alias.scope !20
  %112 = load double, ptr %24, align 8, !alias.scope !20
  %113 = insertelement <2 x double> poison, double %111, i64 0
  %114 = insertelement <2 x double> %113, double %112, i64 1
  %115 = fadd <2 x double> %110, %114
  %116 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %115, <2 x double> splat (double 1.250000e-01), <2 x double> %103)
  %117 = fadd <2 x double> %79, %116
  %118 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %119 = extractelement <2 x double> %117, i64 0
  store double %119, ptr %118, align 8, !alias.scope !23, !noalias !20
  %120 = shufflevector <2 x double> %66, <2 x double> %117, <2 x i32> <i32 1, i32 3>
  store <2 x double> %120, ptr %68, align 8, !alias.scope !23, !noalias !20
  %121 = getelementptr inbounds nuw i8, ptr %9, i64 24
  %122 = getelementptr inbounds nuw i8, ptr %10, i64 24
  %123 = load double, ptr %121, align 8, !alias.scope !20
  %124 = load double, ptr %122, align 8, !alias.scope !20
  %125 = insertelement <2 x double> poison, double %123, i64 0
  %126 = insertelement <2 x double> %125, double %124, i64 1
  %127 = load double, ptr %104, align 8, !alias.scope !20
  %128 = load double, ptr %105, align 8, !alias.scope !20
  %129 = insertelement <2 x double> poison, double %127, i64 0
  %130 = insertelement <2 x double> %129, double %128, i64 1
  %131 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %130, <2 x double> splat (double -2.000000e+00), <2 x double> %126)
  %132 = getelementptr inbounds nuw i8, ptr %13, i64 24
  %133 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %134 = load double, ptr %132, align 8, !alias.scope !20
  %135 = load double, ptr %133, align 8, !alias.scope !20
  %136 = insertelement <2 x double> poison, double %134, i64 0
  %137 = insertelement <2 x double> %136, double %135, i64 1
  %138 = fadd <2 x double> %131, %137
  %139 = getelementptr inbounds nuw i8, ptr %11, i64 104
  %140 = getelementptr inbounds nuw i8, ptr %12, i64 104
  %141 = load double, ptr %139, align 8, !alias.scope !20
  %142 = load double, ptr %140, align 8, !alias.scope !20
  %143 = insertelement <2 x double> poison, double %141, i64 0
  %144 = insertelement <2 x double> %143, double %142, i64 1
  %145 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %130, <2 x double> splat (double -2.000000e+00), <2 x double> %144)
  %146 = getelementptr i8, ptr %11, i64 -56
  %147 = getelementptr i8, ptr %12, i64 -56
  %148 = load double, ptr %146, align 8, !alias.scope !20
  %149 = load double, ptr %147, align 8, !alias.scope !20
  %150 = insertelement <2 x double> poison, double %148, i64 0
  %151 = insertelement <2 x double> %150, double %149, i64 1
  %152 = fadd <2 x double> %145, %151
  %153 = fmul <2 x double> %152, splat (double 1.250000e-01)
  %154 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %138, <2 x double> splat (double 1.250000e-01), <2 x double> %153)
  %155 = getelementptr i8, ptr %11, i64 32
  %156 = getelementptr i8, ptr %12, i64 32
  %157 = load double, ptr %155, align 8, !alias.scope !20
  %158 = load double, ptr %156, align 8, !alias.scope !20
  %159 = insertelement <2 x double> poison, double %157, i64 0
  %160 = insertelement <2 x double> %159, double %158, i64 1
  %161 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %130, <2 x double> splat (double -2.000000e+00), <2 x double> %160)
  %162 = load double, ptr %53, align 8, !alias.scope !20
  %163 = load double, ptr %54, align 8, !alias.scope !20
  %164 = insertelement <2 x double> poison, double %162, i64 0
  %165 = insertelement <2 x double> %164, double %163, i64 1
  %166 = fadd <2 x double> %161, %165
  %167 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %166, <2 x double> splat (double 1.250000e-01), <2 x double> %154)
  %168 = fadd <2 x double> %130, %167
  %169 = getelementptr inbounds nuw i8, ptr %15, i64 24
  %170 = getelementptr inbounds nuw i8, ptr %16, i64 24
  %171 = extractelement <2 x double> %168, i64 0
  store double %171, ptr %169, align 8, !alias.scope !23, !noalias !20
  %172 = getelementptr inbounds nuw i8, ptr %9, i64 32
  %173 = getelementptr inbounds nuw i8, ptr %10, i64 32
  %174 = load double, ptr %172, align 8, !alias.scope !20
  %175 = load double, ptr %173, align 8, !alias.scope !20
  %176 = insertelement <2 x double> poison, double %174, i64 0
  %177 = insertelement <2 x double> %176, double %175, i64 1
  %178 = load double, ptr %155, align 8, !alias.scope !20
  %179 = load double, ptr %156, align 8, !alias.scope !20
  %180 = insertelement <2 x double> poison, double %178, i64 0
  %181 = insertelement <2 x double> %180, double %179, i64 1
  %182 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %181, <2 x double> splat (double -2.000000e+00), <2 x double> %177)
  %183 = getelementptr inbounds nuw i8, ptr %13, i64 32
  %184 = getelementptr inbounds nuw i8, ptr %14, i64 32
  %185 = load double, ptr %183, align 8, !alias.scope !20
  %186 = load double, ptr %184, align 8, !alias.scope !20
  %187 = insertelement <2 x double> poison, double %185, i64 0
  %188 = insertelement <2 x double> %187, double %186, i64 1
  %189 = fadd <2 x double> %182, %188
  %190 = getelementptr inbounds nuw i8, ptr %11, i64 112
  %191 = getelementptr inbounds nuw i8, ptr %12, i64 112
  %192 = load double, ptr %190, align 8, !alias.scope !20
  %193 = load double, ptr %191, align 8, !alias.scope !20
  %194 = insertelement <2 x double> poison, double %192, i64 0
  %195 = insertelement <2 x double> %194, double %193, i64 1
  %196 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %181, <2 x double> splat (double -2.000000e+00), <2 x double> %195)
  %197 = getelementptr i8, ptr %11, i64 -48
  %198 = getelementptr i8, ptr %12, i64 -48
  %199 = load double, ptr %197, align 8, !alias.scope !20
  %200 = load double, ptr %198, align 8, !alias.scope !20
  %201 = insertelement <2 x double> poison, double %199, i64 0
  %202 = insertelement <2 x double> %201, double %200, i64 1
  %203 = fadd <2 x double> %196, %202
  %204 = fmul <2 x double> %203, splat (double 1.250000e-01)
  %205 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %189, <2 x double> splat (double 1.250000e-01), <2 x double> %204)
  %206 = getelementptr i8, ptr %11, i64 40
  %207 = getelementptr i8, ptr %12, i64 40
  %208 = load double, ptr %206, align 8, !alias.scope !20
  %209 = load double, ptr %207, align 8, !alias.scope !20
  %210 = insertelement <2 x double> poison, double %208, i64 0
  %211 = insertelement <2 x double> %210, double %209, i64 1
  %212 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %181, <2 x double> splat (double -2.000000e+00), <2 x double> %211)
  %213 = load double, ptr %104, align 8, !alias.scope !20
  %214 = load double, ptr %105, align 8, !alias.scope !20
  %215 = insertelement <2 x double> poison, double %213, i64 0
  %216 = insertelement <2 x double> %215, double %214, i64 1
  %217 = fadd <2 x double> %212, %216
  %218 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %217, <2 x double> splat (double 1.250000e-01), <2 x double> %205)
  %219 = fadd <2 x double> %181, %218
  %220 = getelementptr inbounds nuw i8, ptr %15, i64 32
  %221 = extractelement <2 x double> %219, i64 0
  store double %221, ptr %220, align 8, !alias.scope !23, !noalias !20
  %222 = shufflevector <2 x double> %168, <2 x double> %219, <2 x i32> <i32 1, i32 3>
  store <2 x double> %222, ptr %170, align 8, !alias.scope !23, !noalias !20
  %223 = getelementptr inbounds nuw i8, ptr %9, i64 40
  %224 = getelementptr inbounds nuw i8, ptr %10, i64 40
  %225 = load double, ptr %223, align 8, !alias.scope !20
  %226 = load double, ptr %224, align 8, !alias.scope !20
  %227 = insertelement <2 x double> poison, double %225, i64 0
  %228 = insertelement <2 x double> %227, double %226, i64 1
  %229 = load double, ptr %206, align 8, !alias.scope !20
  %230 = load double, ptr %207, align 8, !alias.scope !20
  %231 = insertelement <2 x double> poison, double %229, i64 0
  %232 = insertelement <2 x double> %231, double %230, i64 1
  %233 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %232, <2 x double> splat (double -2.000000e+00), <2 x double> %228)
  %234 = getelementptr inbounds nuw i8, ptr %13, i64 40
  %235 = getelementptr inbounds nuw i8, ptr %14, i64 40
  %236 = load double, ptr %234, align 8, !alias.scope !20
  %237 = load double, ptr %235, align 8, !alias.scope !20
  %238 = insertelement <2 x double> poison, double %236, i64 0
  %239 = insertelement <2 x double> %238, double %237, i64 1
  %240 = fadd <2 x double> %233, %239
  %241 = getelementptr inbounds nuw i8, ptr %11, i64 120
  %242 = getelementptr inbounds nuw i8, ptr %12, i64 120
  %243 = load double, ptr %241, align 8, !alias.scope !20
  %244 = load double, ptr %242, align 8, !alias.scope !20
  %245 = insertelement <2 x double> poison, double %243, i64 0
  %246 = insertelement <2 x double> %245, double %244, i64 1
  %247 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %232, <2 x double> splat (double -2.000000e+00), <2 x double> %246)
  %248 = getelementptr i8, ptr %11, i64 -40
  %249 = getelementptr i8, ptr %12, i64 -40
  %250 = load double, ptr %248, align 8, !alias.scope !20
  %251 = load double, ptr %249, align 8, !alias.scope !20
  %252 = insertelement <2 x double> poison, double %250, i64 0
  %253 = insertelement <2 x double> %252, double %251, i64 1
  %254 = fadd <2 x double> %247, %253
  %255 = fmul <2 x double> %254, splat (double 1.250000e-01)
  %256 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %240, <2 x double> splat (double 1.250000e-01), <2 x double> %255)
  %257 = getelementptr i8, ptr %11, i64 48
  %258 = getelementptr i8, ptr %12, i64 48
  %259 = load double, ptr %257, align 8, !alias.scope !20
  %260 = load double, ptr %258, align 8, !alias.scope !20
  %261 = insertelement <2 x double> poison, double %259, i64 0
  %262 = insertelement <2 x double> %261, double %260, i64 1
  %263 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %232, <2 x double> splat (double -2.000000e+00), <2 x double> %262)
  %264 = load double, ptr %155, align 8, !alias.scope !20
  %265 = load double, ptr %156, align 8, !alias.scope !20
  %266 = insertelement <2 x double> poison, double %264, i64 0
  %267 = insertelement <2 x double> %266, double %265, i64 1
  %268 = fadd <2 x double> %263, %267
  %269 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %268, <2 x double> splat (double 1.250000e-01), <2 x double> %256)
  %270 = fadd <2 x double> %232, %269
  %271 = getelementptr inbounds nuw i8, ptr %15, i64 40
  %272 = getelementptr inbounds nuw i8, ptr %16, i64 40
  %273 = extractelement <2 x double> %270, i64 0
  store double %273, ptr %271, align 8, !alias.scope !23, !noalias !20
  %274 = getelementptr inbounds nuw i8, ptr %9, i64 48
  %275 = getelementptr inbounds nuw i8, ptr %10, i64 48
  %276 = load double, ptr %274, align 8, !alias.scope !20
  %277 = load double, ptr %275, align 8, !alias.scope !20
  %278 = insertelement <2 x double> poison, double %276, i64 0
  %279 = insertelement <2 x double> %278, double %277, i64 1
  %280 = load double, ptr %257, align 8, !alias.scope !20
  %281 = load double, ptr %258, align 8, !alias.scope !20
  %282 = insertelement <2 x double> poison, double %280, i64 0
  %283 = insertelement <2 x double> %282, double %281, i64 1
  %284 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %283, <2 x double> splat (double -2.000000e+00), <2 x double> %279)
  %285 = getelementptr inbounds nuw i8, ptr %13, i64 48
  %286 = getelementptr inbounds nuw i8, ptr %14, i64 48
  %287 = load double, ptr %285, align 8, !alias.scope !20
  %288 = load double, ptr %286, align 8, !alias.scope !20
  %289 = insertelement <2 x double> poison, double %287, i64 0
  %290 = insertelement <2 x double> %289, double %288, i64 1
  %291 = fadd <2 x double> %284, %290
  %292 = getelementptr inbounds nuw i8, ptr %11, i64 128
  %293 = getelementptr inbounds nuw i8, ptr %12, i64 128
  %294 = load double, ptr %292, align 8, !alias.scope !20
  %295 = load double, ptr %293, align 8, !alias.scope !20
  %296 = insertelement <2 x double> poison, double %294, i64 0
  %297 = insertelement <2 x double> %296, double %295, i64 1
  %298 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %283, <2 x double> splat (double -2.000000e+00), <2 x double> %297)
  %299 = getelementptr i8, ptr %11, i64 -32
  %300 = getelementptr i8, ptr %12, i64 -32
  %301 = load double, ptr %299, align 8, !alias.scope !20
  %302 = load double, ptr %300, align 8, !alias.scope !20
  %303 = insertelement <2 x double> poison, double %301, i64 0
  %304 = insertelement <2 x double> %303, double %302, i64 1
  %305 = fadd <2 x double> %298, %304
  %306 = fmul <2 x double> %305, splat (double 1.250000e-01)
  %307 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %291, <2 x double> splat (double 1.250000e-01), <2 x double> %306)
  %308 = getelementptr i8, ptr %11, i64 56
  %309 = getelementptr i8, ptr %12, i64 56
  %310 = load double, ptr %308, align 8, !alias.scope !20
  %311 = load double, ptr %309, align 8, !alias.scope !20
  %312 = insertelement <2 x double> poison, double %310, i64 0
  %313 = insertelement <2 x double> %312, double %311, i64 1
  %314 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %283, <2 x double> splat (double -2.000000e+00), <2 x double> %313)
  %315 = load double, ptr %206, align 8, !alias.scope !20
  %316 = load double, ptr %207, align 8, !alias.scope !20
  %317 = insertelement <2 x double> poison, double %315, i64 0
  %318 = insertelement <2 x double> %317, double %316, i64 1
  %319 = fadd <2 x double> %314, %318
  %320 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %319, <2 x double> splat (double 1.250000e-01), <2 x double> %307)
  %321 = fadd <2 x double> %283, %320
  %322 = getelementptr inbounds nuw i8, ptr %15, i64 48
  %323 = extractelement <2 x double> %321, i64 0
  store double %323, ptr %322, align 8, !alias.scope !23, !noalias !20
  %324 = shufflevector <2 x double> %270, <2 x double> %321, <2 x i32> <i32 1, i32 3>
  store <2 x double> %324, ptr %272, align 8, !alias.scope !23, !noalias !20
  %325 = getelementptr inbounds nuw i8, ptr %9, i64 56
  %326 = getelementptr inbounds nuw i8, ptr %10, i64 56
  %327 = load double, ptr %325, align 8, !alias.scope !20
  %328 = load double, ptr %326, align 8, !alias.scope !20
  %329 = insertelement <2 x double> poison, double %327, i64 0
  %330 = insertelement <2 x double> %329, double %328, i64 1
  %331 = load double, ptr %308, align 8, !alias.scope !20
  %332 = load double, ptr %309, align 8, !alias.scope !20
  %333 = insertelement <2 x double> poison, double %331, i64 0
  %334 = insertelement <2 x double> %333, double %332, i64 1
  %335 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %334, <2 x double> splat (double -2.000000e+00), <2 x double> %330)
  %336 = getelementptr inbounds nuw i8, ptr %13, i64 56
  %337 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %338 = load double, ptr %336, align 8, !alias.scope !20
  %339 = load double, ptr %337, align 8, !alias.scope !20
  %340 = insertelement <2 x double> poison, double %338, i64 0
  %341 = insertelement <2 x double> %340, double %339, i64 1
  %342 = fadd <2 x double> %335, %341
  %343 = getelementptr inbounds nuw i8, ptr %11, i64 136
  %344 = getelementptr inbounds nuw i8, ptr %12, i64 136
  %345 = load double, ptr %343, align 8, !alias.scope !20
  %346 = load double, ptr %344, align 8, !alias.scope !20
  %347 = insertelement <2 x double> poison, double %345, i64 0
  %348 = insertelement <2 x double> %347, double %346, i64 1
  %349 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %334, <2 x double> splat (double -2.000000e+00), <2 x double> %348)
  %350 = getelementptr i8, ptr %11, i64 -24
  %351 = getelementptr i8, ptr %12, i64 -24
  %352 = load double, ptr %350, align 8, !alias.scope !20
  %353 = load double, ptr %351, align 8, !alias.scope !20
  %354 = insertelement <2 x double> poison, double %352, i64 0
  %355 = insertelement <2 x double> %354, double %353, i64 1
  %356 = fadd <2 x double> %349, %355
  %357 = fmul <2 x double> %356, splat (double 1.250000e-01)
  %358 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %342, <2 x double> splat (double 1.250000e-01), <2 x double> %357)
  %359 = getelementptr inbounds nuw i8, ptr %11, i64 64
  %360 = getelementptr inbounds nuw i8, ptr %12, i64 64
  %361 = load double, ptr %359, align 8, !alias.scope !20
  %362 = load double, ptr %360, align 8, !alias.scope !20
  %363 = insertelement <2 x double> poison, double %361, i64 0
  %364 = insertelement <2 x double> %363, double %362, i64 1
  %365 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %334, <2 x double> splat (double -2.000000e+00), <2 x double> %364)
  %366 = load double, ptr %257, align 8, !alias.scope !20
  %367 = load double, ptr %258, align 8, !alias.scope !20
  %368 = insertelement <2 x double> poison, double %366, i64 0
  %369 = insertelement <2 x double> %368, double %367, i64 1
  %370 = fadd <2 x double> %365, %369
  %371 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %370, <2 x double> splat (double 1.250000e-01), <2 x double> %358)
  %372 = fadd <2 x double> %334, %371
  %373 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %374 = getelementptr inbounds nuw i8, ptr %16, i64 56
  %375 = extractelement <2 x double> %372, i64 0
  store double %375, ptr %373, align 8, !alias.scope !23, !noalias !20
  %376 = getelementptr inbounds nuw i8, ptr %9, i64 64
  %377 = getelementptr inbounds nuw i8, ptr %10, i64 64
  %378 = load double, ptr %376, align 8, !alias.scope !20
  %379 = load double, ptr %377, align 8, !alias.scope !20
  %380 = insertelement <2 x double> poison, double %378, i64 0
  %381 = insertelement <2 x double> %380, double %379, i64 1
  %382 = load double, ptr %359, align 8, !alias.scope !20
  %383 = load double, ptr %360, align 8, !alias.scope !20
  %384 = insertelement <2 x double> poison, double %382, i64 0
  %385 = insertelement <2 x double> %384, double %383, i64 1
  %386 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %385, <2 x double> splat (double -2.000000e+00), <2 x double> %381)
  %387 = getelementptr inbounds nuw i8, ptr %13, i64 64
  %388 = getelementptr inbounds nuw i8, ptr %14, i64 64
  %389 = load double, ptr %387, align 8, !alias.scope !20
  %390 = load double, ptr %388, align 8, !alias.scope !20
  %391 = insertelement <2 x double> poison, double %389, i64 0
  %392 = insertelement <2 x double> %391, double %390, i64 1
  %393 = fadd <2 x double> %386, %392
  %394 = getelementptr inbounds nuw i8, ptr %11, i64 144
  %395 = getelementptr inbounds nuw i8, ptr %12, i64 144
  %396 = load double, ptr %394, align 8, !alias.scope !20
  %397 = load double, ptr %395, align 8, !alias.scope !20
  %398 = insertelement <2 x double> poison, double %396, i64 0
  %399 = insertelement <2 x double> %398, double %397, i64 1
  %400 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %385, <2 x double> splat (double -2.000000e+00), <2 x double> %399)
  %401 = getelementptr i8, ptr %11, i64 -16
  %402 = getelementptr i8, ptr %12, i64 -16
  %403 = load double, ptr %401, align 8, !alias.scope !20
  %404 = load double, ptr %402, align 8, !alias.scope !20
  %405 = insertelement <2 x double> poison, double %403, i64 0
  %406 = insertelement <2 x double> %405, double %404, i64 1
  %407 = fadd <2 x double> %400, %406
  %408 = fmul <2 x double> %407, splat (double 1.250000e-01)
  %409 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %393, <2 x double> splat (double 1.250000e-01), <2 x double> %408)
  %410 = getelementptr inbounds nuw i8, ptr %11, i64 72
  %411 = getelementptr inbounds nuw i8, ptr %12, i64 72
  %412 = load double, ptr %410, align 8, !alias.scope !20
  %413 = load double, ptr %411, align 8, !alias.scope !20
  %414 = insertelement <2 x double> poison, double %412, i64 0
  %415 = insertelement <2 x double> %414, double %413, i64 1
  %416 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %385, <2 x double> splat (double -2.000000e+00), <2 x double> %415)
  %417 = load double, ptr %308, align 8, !alias.scope !20
  %418 = load double, ptr %309, align 8, !alias.scope !20
  %419 = insertelement <2 x double> poison, double %417, i64 0
  %420 = insertelement <2 x double> %419, double %418, i64 1
  %421 = fadd <2 x double> %416, %420
  %422 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %421, <2 x double> splat (double 1.250000e-01), <2 x double> %409)
  %423 = fadd <2 x double> %385, %422
  %424 = getelementptr inbounds nuw i8, ptr %15, i64 64
  %425 = extractelement <2 x double> %423, i64 0
  store double %425, ptr %424, align 8, !alias.scope !23, !noalias !20
  %426 = shufflevector <2 x double> %372, <2 x double> %423, <2 x i32> <i32 1, i32 3>
  store <2 x double> %426, ptr %374, align 8, !alias.scope !23, !noalias !20
  %index.next27 = add nuw i64 %index26, 2
  %427 = icmp eq i64 %index.next27, 8
  br i1 %427, label %middle.block28, label %vector.body25, !llvm.loop !25

.preheader106:                                    ; preds = %.preheader108, %.preheader106
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader106 ], [ 1, %.preheader108 ]
  %428 = getelementptr inbounds nuw [80 x i8], ptr %4, i64 %indvars.iv
  %429 = getelementptr inbounds nuw [80 x i8], ptr %3, i64 %indvars.iv
  %430 = getelementptr inbounds nuw [80 x i8], ptr %5, i64 %indvars.iv
  %431 = getelementptr inbounds nuw [80 x i8], ptr %6, i64 %indvars.iv
  %432 = getelementptr inbounds nuw i8, ptr %428, i64 8
  %433 = load double, ptr %432, align 8
  %434 = getelementptr inbounds nuw i8, ptr %429, i64 8
  %435 = getelementptr inbounds nuw i8, ptr %430, i64 8
  %436 = load double, ptr %435, align 8
  %437 = getelementptr inbounds nuw i8, ptr %429, i64 88
  %438 = load double, ptr %437, align 8
  %439 = insertelement <2 x double> poison, double %433, i64 0
  %440 = insertelement <2 x double> %439, double %438, i64 1
  %441 = getelementptr i8, ptr %429, i64 -72
  %442 = load double, ptr %441, align 8
  %443 = getelementptr inbounds nuw i8, ptr %429, i64 16
  %444 = load <2 x double>, ptr %434, align 8
  %445 = shufflevector <2 x double> %444, <2 x double> poison, <2 x i32> zeroinitializer
  %446 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %445, <2 x double> splat (double -2.000000e+00), <2 x double> %440)
  %447 = insertelement <2 x double> poison, double %436, i64 0
  %448 = insertelement <2 x double> %447, double %442, i64 1
  %449 = fadd <2 x double> %446, %448
  %450 = extractelement <2 x double> %449, i64 1
  %451 = fmul double %450, 1.250000e-01
  %452 = shufflevector <2 x double> %449, <2 x double> %444, <2 x i32> <i32 0, i32 2>
  %453 = insertelement <2 x double> %444, double %451, i64 0
  %454 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %452, <2 x double> <double 1.250000e-01, double -2.000000e+00>, <2 x double> %453)
  %455 = load double, ptr %429, align 8
  %456 = extractelement <2 x double> %454, i64 1
  %457 = fadd double %456, %455
  %458 = extractelement <2 x double> %454, i64 0
  %459 = tail call double @llvm.fmuladd.f64(double %457, double 1.250000e-01, double %458)
  %460 = extractelement <2 x double> %444, i64 0
  %461 = fadd double %460, %459
  %462 = getelementptr inbounds nuw i8, ptr %431, i64 8
  store double %461, ptr %462, align 8
  %463 = getelementptr inbounds nuw i8, ptr %428, i64 16
  %464 = load double, ptr %463, align 8
  %465 = load double, ptr %443, align 8
  %466 = getelementptr inbounds nuw i8, ptr %430, i64 16
  %467 = load double, ptr %466, align 8
  %468 = getelementptr inbounds nuw i8, ptr %429, i64 96
  %469 = load double, ptr %468, align 8
  %470 = getelementptr i8, ptr %429, i64 -64
  %471 = load double, ptr %470, align 8
  %472 = insertelement <2 x double> poison, double %465, i64 0
  %473 = shufflevector <2 x double> %472, <2 x double> poison, <2 x i32> zeroinitializer
  %474 = insertelement <2 x double> poison, double %464, i64 0
  %475 = insertelement <2 x double> %474, double %469, i64 1
  %476 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %473, <2 x double> splat (double -2.000000e+00), <2 x double> %475)
  %477 = insertelement <2 x double> poison, double %467, i64 0
  %478 = insertelement <2 x double> %477, double %471, i64 1
  %479 = fadd <2 x double> %476, %478
  %480 = extractelement <2 x double> %479, i64 1
  %481 = fmul double %480, 1.250000e-01
  %482 = extractelement <2 x double> %479, i64 0
  %483 = tail call double @llvm.fmuladd.f64(double %482, double 1.250000e-01, double %481)
  %484 = getelementptr inbounds nuw i8, ptr %429, i64 24
  %485 = load double, ptr %484, align 8
  %486 = tail call double @llvm.fmuladd.f64(double %465, double -2.000000e+00, double %485)
  %487 = getelementptr i8, ptr %429, i64 8
  %488 = load double, ptr %487, align 8
  %489 = fadd double %486, %488
  %490 = tail call double @llvm.fmuladd.f64(double %489, double 1.250000e-01, double %483)
  %491 = fadd double %465, %490
  %492 = getelementptr inbounds nuw i8, ptr %431, i64 16
  store double %491, ptr %492, align 8
  %493 = getelementptr inbounds nuw i8, ptr %428, i64 24
  %494 = load double, ptr %493, align 8
  %495 = getelementptr inbounds nuw i8, ptr %430, i64 24
  %496 = load double, ptr %495, align 8
  %497 = getelementptr inbounds nuw i8, ptr %429, i64 104
  %498 = load double, ptr %497, align 8
  %499 = insertelement <2 x double> poison, double %494, i64 0
  %500 = insertelement <2 x double> %499, double %498, i64 1
  %501 = getelementptr i8, ptr %429, i64 -56
  %502 = load double, ptr %501, align 8
  %503 = getelementptr inbounds nuw i8, ptr %429, i64 32
  %504 = load <2 x double>, ptr %484, align 8
  %505 = shufflevector <2 x double> %504, <2 x double> poison, <2 x i32> zeroinitializer
  %506 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %505, <2 x double> splat (double -2.000000e+00), <2 x double> %500)
  %507 = insertelement <2 x double> poison, double %496, i64 0
  %508 = insertelement <2 x double> %507, double %502, i64 1
  %509 = fadd <2 x double> %506, %508
  %510 = extractelement <2 x double> %509, i64 1
  %511 = fmul double %510, 1.250000e-01
  %512 = shufflevector <2 x double> %509, <2 x double> %504, <2 x i32> <i32 0, i32 2>
  %513 = insertelement <2 x double> %504, double %511, i64 0
  %514 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %512, <2 x double> <double 1.250000e-01, double -2.000000e+00>, <2 x double> %513)
  %515 = getelementptr i8, ptr %429, i64 16
  %516 = load double, ptr %515, align 8
  %517 = extractelement <2 x double> %514, i64 1
  %518 = fadd double %517, %516
  %519 = extractelement <2 x double> %514, i64 0
  %520 = tail call double @llvm.fmuladd.f64(double %518, double 1.250000e-01, double %519)
  %521 = extractelement <2 x double> %504, i64 0
  %522 = fadd double %521, %520
  %523 = getelementptr inbounds nuw i8, ptr %431, i64 24
  store double %522, ptr %523, align 8
  %524 = getelementptr inbounds nuw i8, ptr %428, i64 32
  %525 = load double, ptr %524, align 8
  %526 = load double, ptr %503, align 8
  %527 = getelementptr inbounds nuw i8, ptr %430, i64 32
  %528 = load double, ptr %527, align 8
  %529 = getelementptr inbounds nuw i8, ptr %429, i64 112
  %530 = load double, ptr %529, align 8
  %531 = getelementptr i8, ptr %429, i64 -48
  %532 = load double, ptr %531, align 8
  %533 = insertelement <2 x double> poison, double %526, i64 0
  %534 = shufflevector <2 x double> %533, <2 x double> poison, <2 x i32> zeroinitializer
  %535 = insertelement <2 x double> poison, double %525, i64 0
  %536 = insertelement <2 x double> %535, double %530, i64 1
  %537 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %534, <2 x double> splat (double -2.000000e+00), <2 x double> %536)
  %538 = insertelement <2 x double> poison, double %528, i64 0
  %539 = insertelement <2 x double> %538, double %532, i64 1
  %540 = fadd <2 x double> %537, %539
  %541 = extractelement <2 x double> %540, i64 1
  %542 = fmul double %541, 1.250000e-01
  %543 = extractelement <2 x double> %540, i64 0
  %544 = tail call double @llvm.fmuladd.f64(double %543, double 1.250000e-01, double %542)
  %545 = getelementptr inbounds nuw i8, ptr %429, i64 40
  %546 = load double, ptr %545, align 8
  %547 = tail call double @llvm.fmuladd.f64(double %526, double -2.000000e+00, double %546)
  %548 = getelementptr i8, ptr %429, i64 24
  %549 = load double, ptr %548, align 8
  %550 = fadd double %547, %549
  %551 = tail call double @llvm.fmuladd.f64(double %550, double 1.250000e-01, double %544)
  %552 = fadd double %526, %551
  %553 = getelementptr inbounds nuw i8, ptr %431, i64 32
  store double %552, ptr %553, align 8
  %554 = getelementptr inbounds nuw i8, ptr %428, i64 40
  %555 = load double, ptr %554, align 8
  %556 = getelementptr inbounds nuw i8, ptr %430, i64 40
  %557 = load double, ptr %556, align 8
  %558 = getelementptr inbounds nuw i8, ptr %429, i64 120
  %559 = load double, ptr %558, align 8
  %560 = insertelement <2 x double> poison, double %555, i64 0
  %561 = insertelement <2 x double> %560, double %559, i64 1
  %562 = getelementptr i8, ptr %429, i64 -40
  %563 = load double, ptr %562, align 8
  %564 = getelementptr inbounds nuw i8, ptr %429, i64 48
  %565 = load <2 x double>, ptr %545, align 8
  %566 = shufflevector <2 x double> %565, <2 x double> poison, <2 x i32> zeroinitializer
  %567 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %566, <2 x double> splat (double -2.000000e+00), <2 x double> %561)
  %568 = insertelement <2 x double> poison, double %557, i64 0
  %569 = insertelement <2 x double> %568, double %563, i64 1
  %570 = fadd <2 x double> %567, %569
  %571 = extractelement <2 x double> %570, i64 1
  %572 = fmul double %571, 1.250000e-01
  %573 = shufflevector <2 x double> %570, <2 x double> %565, <2 x i32> <i32 0, i32 2>
  %574 = insertelement <2 x double> %565, double %572, i64 0
  %575 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %573, <2 x double> <double 1.250000e-01, double -2.000000e+00>, <2 x double> %574)
  %576 = getelementptr i8, ptr %429, i64 32
  %577 = load double, ptr %576, align 8
  %578 = extractelement <2 x double> %575, i64 1
  %579 = fadd double %578, %577
  %580 = extractelement <2 x double> %575, i64 0
  %581 = tail call double @llvm.fmuladd.f64(double %579, double 1.250000e-01, double %580)
  %582 = extractelement <2 x double> %565, i64 0
  %583 = fadd double %582, %581
  %584 = getelementptr inbounds nuw i8, ptr %431, i64 40
  store double %583, ptr %584, align 8
  %585 = getelementptr inbounds nuw i8, ptr %428, i64 48
  %586 = load double, ptr %585, align 8
  %587 = load double, ptr %564, align 8
  %588 = getelementptr inbounds nuw i8, ptr %430, i64 48
  %589 = load double, ptr %588, align 8
  %590 = getelementptr inbounds nuw i8, ptr %429, i64 128
  %591 = load double, ptr %590, align 8
  %592 = getelementptr i8, ptr %429, i64 -32
  %593 = load double, ptr %592, align 8
  %594 = insertelement <2 x double> poison, double %587, i64 0
  %595 = shufflevector <2 x double> %594, <2 x double> poison, <2 x i32> zeroinitializer
  %596 = insertelement <2 x double> poison, double %586, i64 0
  %597 = insertelement <2 x double> %596, double %591, i64 1
  %598 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %595, <2 x double> splat (double -2.000000e+00), <2 x double> %597)
  %599 = insertelement <2 x double> poison, double %589, i64 0
  %600 = insertelement <2 x double> %599, double %593, i64 1
  %601 = fadd <2 x double> %598, %600
  %602 = extractelement <2 x double> %601, i64 1
  %603 = fmul double %602, 1.250000e-01
  %604 = extractelement <2 x double> %601, i64 0
  %605 = tail call double @llvm.fmuladd.f64(double %604, double 1.250000e-01, double %603)
  %606 = getelementptr inbounds nuw i8, ptr %429, i64 56
  %607 = load double, ptr %606, align 8
  %608 = tail call double @llvm.fmuladd.f64(double %587, double -2.000000e+00, double %607)
  %609 = getelementptr i8, ptr %429, i64 40
  %610 = load double, ptr %609, align 8
  %611 = fadd double %608, %610
  %612 = tail call double @llvm.fmuladd.f64(double %611, double 1.250000e-01, double %605)
  %613 = fadd double %587, %612
  %614 = getelementptr inbounds nuw i8, ptr %431, i64 48
  store double %613, ptr %614, align 8
  %615 = getelementptr inbounds nuw i8, ptr %428, i64 56
  %616 = load double, ptr %615, align 8
  %617 = getelementptr inbounds nuw i8, ptr %430, i64 56
  %618 = load double, ptr %617, align 8
  %619 = getelementptr inbounds nuw i8, ptr %429, i64 136
  %620 = load double, ptr %619, align 8
  %621 = insertelement <2 x double> poison, double %616, i64 0
  %622 = insertelement <2 x double> %621, double %620, i64 1
  %623 = getelementptr i8, ptr %429, i64 -24
  %624 = load double, ptr %623, align 8
  %625 = getelementptr inbounds nuw i8, ptr %429, i64 64
  %626 = load <2 x double>, ptr %606, align 8
  %627 = shufflevector <2 x double> %626, <2 x double> poison, <2 x i32> zeroinitializer
  %628 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %627, <2 x double> splat (double -2.000000e+00), <2 x double> %622)
  %629 = insertelement <2 x double> poison, double %618, i64 0
  %630 = insertelement <2 x double> %629, double %624, i64 1
  %631 = fadd <2 x double> %628, %630
  %632 = extractelement <2 x double> %631, i64 1
  %633 = fmul double %632, 1.250000e-01
  %634 = shufflevector <2 x double> %631, <2 x double> %626, <2 x i32> <i32 0, i32 2>
  %635 = insertelement <2 x double> %626, double %633, i64 0
  %636 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %634, <2 x double> <double 1.250000e-01, double -2.000000e+00>, <2 x double> %635)
  %637 = getelementptr i8, ptr %429, i64 48
  %638 = load double, ptr %637, align 8
  %639 = extractelement <2 x double> %636, i64 1
  %640 = fadd double %639, %638
  %641 = extractelement <2 x double> %636, i64 0
  %642 = tail call double @llvm.fmuladd.f64(double %640, double 1.250000e-01, double %641)
  %643 = extractelement <2 x double> %626, i64 0
  %644 = fadd double %643, %642
  %645 = getelementptr inbounds nuw i8, ptr %431, i64 56
  store double %644, ptr %645, align 8
  %646 = getelementptr inbounds nuw i8, ptr %428, i64 64
  %647 = load double, ptr %646, align 8
  %648 = load double, ptr %625, align 8
  %649 = getelementptr inbounds nuw i8, ptr %430, i64 64
  %650 = load double, ptr %649, align 8
  %651 = getelementptr inbounds nuw i8, ptr %429, i64 144
  %652 = load double, ptr %651, align 8
  %653 = getelementptr i8, ptr %429, i64 -16
  %654 = load double, ptr %653, align 8
  %655 = insertelement <2 x double> poison, double %648, i64 0
  %656 = shufflevector <2 x double> %655, <2 x double> poison, <2 x i32> zeroinitializer
  %657 = insertelement <2 x double> poison, double %647, i64 0
  %658 = insertelement <2 x double> %657, double %652, i64 1
  %659 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %656, <2 x double> splat (double -2.000000e+00), <2 x double> %658)
  %660 = insertelement <2 x double> poison, double %650, i64 0
  %661 = insertelement <2 x double> %660, double %654, i64 1
  %662 = fadd <2 x double> %659, %661
  %663 = extractelement <2 x double> %662, i64 1
  %664 = fmul double %663, 1.250000e-01
  %665 = extractelement <2 x double> %662, i64 0
  %666 = tail call double @llvm.fmuladd.f64(double %665, double 1.250000e-01, double %664)
  %667 = getelementptr inbounds nuw i8, ptr %429, i64 72
  %668 = load double, ptr %667, align 8
  %669 = tail call double @llvm.fmuladd.f64(double %648, double -2.000000e+00, double %668)
  %670 = getelementptr i8, ptr %429, i64 56
  %671 = load double, ptr %670, align 8
  %672 = fadd double %669, %671
  %673 = tail call double @llvm.fmuladd.f64(double %672, double 1.250000e-01, double %666)
  %674 = fadd double %648, %673
  %675 = getelementptr inbounds nuw i8, ptr %431, i64 64
  store double %674, ptr %675, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 9
  br i1 %exitcond.not, label %middle.block28, label %.preheader106, !llvm.loop !26

middle.block28:                                   ; preds = %vector.body25, %.preheader106
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1
  %exitcond123.not = icmp eq i64 %indvars.iv.next121, 9
  br i1 %exitcond123.not, label %.preheader107, label %.preheader108, !llvm.loop !27

.preheader107:                                    ; preds = %middle.block28, %middle.block
  %indvars.iv132 = phi i64 [ %indvars.iv.next133, %middle.block ], [ 1, %middle.block28 ]
  %676 = getelementptr inbounds nuw [800 x i8], ptr %1, i64 %indvars.iv132
  %677 = getelementptr inbounds nuw i8, ptr %676, i64 800
  %678 = getelementptr i8, ptr %676, i64 -800
  %679 = getelementptr inbounds nuw [800 x i8], ptr %0, i64 %indvars.iv132
  br i1 %found.conflict, label %.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader107, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader107 ]
  %680 = or disjoint i64 %index, 1
  %681 = add i64 %index, 2
  %682 = getelementptr inbounds nuw [80 x i8], ptr %677, i64 %680
  %683 = getelementptr inbounds nuw [80 x i8], ptr %677, i64 %681
  %684 = getelementptr inbounds nuw [80 x i8], ptr %676, i64 %680
  %685 = getelementptr inbounds nuw [80 x i8], ptr %676, i64 %681
  %686 = getelementptr inbounds nuw [80 x i8], ptr %678, i64 %680
  %687 = getelementptr inbounds nuw [80 x i8], ptr %678, i64 %681
  %688 = getelementptr inbounds nuw [80 x i8], ptr %679, i64 %680
  %689 = getelementptr inbounds nuw [80 x i8], ptr %679, i64 %681
  %690 = getelementptr inbounds nuw i8, ptr %682, i64 8
  %691 = getelementptr inbounds nuw i8, ptr %683, i64 8
  %692 = load double, ptr %690, align 8, !alias.scope !28
  %693 = load double, ptr %691, align 8, !alias.scope !28
  %694 = insertelement <2 x double> poison, double %692, i64 0
  %695 = insertelement <2 x double> %694, double %693, i64 1
  %696 = getelementptr i8, ptr %684, i64 8
  %697 = getelementptr i8, ptr %685, i64 8
  %698 = load double, ptr %696, align 8, !alias.scope !28
  %699 = load double, ptr %697, align 8, !alias.scope !28
  %700 = insertelement <2 x double> poison, double %698, i64 0
  %701 = insertelement <2 x double> %700, double %699, i64 1
  %702 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %701, <2 x double> splat (double -2.000000e+00), <2 x double> %695)
  %703 = getelementptr inbounds nuw i8, ptr %686, i64 8
  %704 = getelementptr inbounds nuw i8, ptr %687, i64 8
  %705 = load double, ptr %703, align 8, !alias.scope !28
  %706 = load double, ptr %704, align 8, !alias.scope !28
  %707 = insertelement <2 x double> poison, double %705, i64 0
  %708 = insertelement <2 x double> %707, double %706, i64 1
  %709 = fadd <2 x double> %702, %708
  %710 = getelementptr inbounds nuw i8, ptr %684, i64 88
  %711 = getelementptr inbounds nuw i8, ptr %685, i64 88
  %712 = load double, ptr %710, align 8, !alias.scope !28
  %713 = load double, ptr %711, align 8, !alias.scope !28
  %714 = insertelement <2 x double> poison, double %712, i64 0
  %715 = insertelement <2 x double> %714, double %713, i64 1
  %716 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %701, <2 x double> splat (double -2.000000e+00), <2 x double> %715)
  %717 = getelementptr i8, ptr %684, i64 -72
  %718 = getelementptr i8, ptr %685, i64 -72
  %719 = load double, ptr %717, align 8, !alias.scope !28
  %720 = load double, ptr %718, align 8, !alias.scope !28
  %721 = insertelement <2 x double> poison, double %719, i64 0
  %722 = insertelement <2 x double> %721, double %720, i64 1
  %723 = fadd <2 x double> %716, %722
  %724 = fmul <2 x double> %723, splat (double 1.250000e-01)
  %725 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %709, <2 x double> splat (double 1.250000e-01), <2 x double> %724)
  %726 = getelementptr i8, ptr %684, i64 16
  %727 = getelementptr i8, ptr %685, i64 16
  %728 = load double, ptr %726, align 8, !alias.scope !28
  %729 = load double, ptr %727, align 8, !alias.scope !28
  %730 = insertelement <2 x double> poison, double %728, i64 0
  %731 = insertelement <2 x double> %730, double %729, i64 1
  %732 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %701, <2 x double> splat (double -2.000000e+00), <2 x double> %731)
  %733 = load double, ptr %684, align 8, !alias.scope !28
  %734 = load double, ptr %685, align 8, !alias.scope !28
  %735 = insertelement <2 x double> poison, double %733, i64 0
  %736 = insertelement <2 x double> %735, double %734, i64 1
  %737 = fadd <2 x double> %732, %736
  %738 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %737, <2 x double> splat (double 1.250000e-01), <2 x double> %725)
  %739 = fadd <2 x double> %701, %738
  %740 = getelementptr inbounds nuw i8, ptr %688, i64 8
  %741 = getelementptr inbounds nuw i8, ptr %689, i64 8
  %742 = extractelement <2 x double> %739, i64 0
  store double %742, ptr %740, align 8, !alias.scope !31, !noalias !28
  %743 = getelementptr inbounds nuw i8, ptr %682, i64 16
  %744 = getelementptr inbounds nuw i8, ptr %683, i64 16
  %745 = load double, ptr %743, align 8, !alias.scope !28
  %746 = load double, ptr %744, align 8, !alias.scope !28
  %747 = insertelement <2 x double> poison, double %745, i64 0
  %748 = insertelement <2 x double> %747, double %746, i64 1
  %749 = load double, ptr %726, align 8, !alias.scope !28
  %750 = load double, ptr %727, align 8, !alias.scope !28
  %751 = insertelement <2 x double> poison, double %749, i64 0
  %752 = insertelement <2 x double> %751, double %750, i64 1
  %753 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %752, <2 x double> splat (double -2.000000e+00), <2 x double> %748)
  %754 = getelementptr inbounds nuw i8, ptr %686, i64 16
  %755 = getelementptr inbounds nuw i8, ptr %687, i64 16
  %756 = load double, ptr %754, align 8, !alias.scope !28
  %757 = load double, ptr %755, align 8, !alias.scope !28
  %758 = insertelement <2 x double> poison, double %756, i64 0
  %759 = insertelement <2 x double> %758, double %757, i64 1
  %760 = fadd <2 x double> %753, %759
  %761 = getelementptr inbounds nuw i8, ptr %684, i64 96
  %762 = getelementptr inbounds nuw i8, ptr %685, i64 96
  %763 = load double, ptr %761, align 8, !alias.scope !28
  %764 = load double, ptr %762, align 8, !alias.scope !28
  %765 = insertelement <2 x double> poison, double %763, i64 0
  %766 = insertelement <2 x double> %765, double %764, i64 1
  %767 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %752, <2 x double> splat (double -2.000000e+00), <2 x double> %766)
  %768 = getelementptr i8, ptr %684, i64 -64
  %769 = getelementptr i8, ptr %685, i64 -64
  %770 = load double, ptr %768, align 8, !alias.scope !28
  %771 = load double, ptr %769, align 8, !alias.scope !28
  %772 = insertelement <2 x double> poison, double %770, i64 0
  %773 = insertelement <2 x double> %772, double %771, i64 1
  %774 = fadd <2 x double> %767, %773
  %775 = fmul <2 x double> %774, splat (double 1.250000e-01)
  %776 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %760, <2 x double> splat (double 1.250000e-01), <2 x double> %775)
  %777 = getelementptr i8, ptr %684, i64 24
  %778 = getelementptr i8, ptr %685, i64 24
  %779 = load double, ptr %777, align 8, !alias.scope !28
  %780 = load double, ptr %778, align 8, !alias.scope !28
  %781 = insertelement <2 x double> poison, double %779, i64 0
  %782 = insertelement <2 x double> %781, double %780, i64 1
  %783 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %752, <2 x double> splat (double -2.000000e+00), <2 x double> %782)
  %784 = load double, ptr %696, align 8, !alias.scope !28
  %785 = load double, ptr %697, align 8, !alias.scope !28
  %786 = insertelement <2 x double> poison, double %784, i64 0
  %787 = insertelement <2 x double> %786, double %785, i64 1
  %788 = fadd <2 x double> %783, %787
  %789 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %788, <2 x double> splat (double 1.250000e-01), <2 x double> %776)
  %790 = fadd <2 x double> %752, %789
  %791 = getelementptr inbounds nuw i8, ptr %688, i64 16
  %792 = extractelement <2 x double> %790, i64 0
  store double %792, ptr %791, align 8, !alias.scope !31, !noalias !28
  %793 = shufflevector <2 x double> %739, <2 x double> %790, <2 x i32> <i32 1, i32 3>
  store <2 x double> %793, ptr %741, align 8, !alias.scope !31, !noalias !28
  %794 = getelementptr inbounds nuw i8, ptr %682, i64 24
  %795 = getelementptr inbounds nuw i8, ptr %683, i64 24
  %796 = load double, ptr %794, align 8, !alias.scope !28
  %797 = load double, ptr %795, align 8, !alias.scope !28
  %798 = insertelement <2 x double> poison, double %796, i64 0
  %799 = insertelement <2 x double> %798, double %797, i64 1
  %800 = load double, ptr %777, align 8, !alias.scope !28
  %801 = load double, ptr %778, align 8, !alias.scope !28
  %802 = insertelement <2 x double> poison, double %800, i64 0
  %803 = insertelement <2 x double> %802, double %801, i64 1
  %804 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %803, <2 x double> splat (double -2.000000e+00), <2 x double> %799)
  %805 = getelementptr inbounds nuw i8, ptr %686, i64 24
  %806 = getelementptr inbounds nuw i8, ptr %687, i64 24
  %807 = load double, ptr %805, align 8, !alias.scope !28
  %808 = load double, ptr %806, align 8, !alias.scope !28
  %809 = insertelement <2 x double> poison, double %807, i64 0
  %810 = insertelement <2 x double> %809, double %808, i64 1
  %811 = fadd <2 x double> %804, %810
  %812 = getelementptr inbounds nuw i8, ptr %684, i64 104
  %813 = getelementptr inbounds nuw i8, ptr %685, i64 104
  %814 = load double, ptr %812, align 8, !alias.scope !28
  %815 = load double, ptr %813, align 8, !alias.scope !28
  %816 = insertelement <2 x double> poison, double %814, i64 0
  %817 = insertelement <2 x double> %816, double %815, i64 1
  %818 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %803, <2 x double> splat (double -2.000000e+00), <2 x double> %817)
  %819 = getelementptr i8, ptr %684, i64 -56
  %820 = getelementptr i8, ptr %685, i64 -56
  %821 = load double, ptr %819, align 8, !alias.scope !28
  %822 = load double, ptr %820, align 8, !alias.scope !28
  %823 = insertelement <2 x double> poison, double %821, i64 0
  %824 = insertelement <2 x double> %823, double %822, i64 1
  %825 = fadd <2 x double> %818, %824
  %826 = fmul <2 x double> %825, splat (double 1.250000e-01)
  %827 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %811, <2 x double> splat (double 1.250000e-01), <2 x double> %826)
  %828 = getelementptr i8, ptr %684, i64 32
  %829 = getelementptr i8, ptr %685, i64 32
  %830 = load double, ptr %828, align 8, !alias.scope !28
  %831 = load double, ptr %829, align 8, !alias.scope !28
  %832 = insertelement <2 x double> poison, double %830, i64 0
  %833 = insertelement <2 x double> %832, double %831, i64 1
  %834 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %803, <2 x double> splat (double -2.000000e+00), <2 x double> %833)
  %835 = load double, ptr %726, align 8, !alias.scope !28
  %836 = load double, ptr %727, align 8, !alias.scope !28
  %837 = insertelement <2 x double> poison, double %835, i64 0
  %838 = insertelement <2 x double> %837, double %836, i64 1
  %839 = fadd <2 x double> %834, %838
  %840 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %839, <2 x double> splat (double 1.250000e-01), <2 x double> %827)
  %841 = fadd <2 x double> %803, %840
  %842 = getelementptr inbounds nuw i8, ptr %688, i64 24
  %843 = getelementptr inbounds nuw i8, ptr %689, i64 24
  %844 = extractelement <2 x double> %841, i64 0
  store double %844, ptr %842, align 8, !alias.scope !31, !noalias !28
  %845 = getelementptr inbounds nuw i8, ptr %682, i64 32
  %846 = getelementptr inbounds nuw i8, ptr %683, i64 32
  %847 = load double, ptr %845, align 8, !alias.scope !28
  %848 = load double, ptr %846, align 8, !alias.scope !28
  %849 = insertelement <2 x double> poison, double %847, i64 0
  %850 = insertelement <2 x double> %849, double %848, i64 1
  %851 = load double, ptr %828, align 8, !alias.scope !28
  %852 = load double, ptr %829, align 8, !alias.scope !28
  %853 = insertelement <2 x double> poison, double %851, i64 0
  %854 = insertelement <2 x double> %853, double %852, i64 1
  %855 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %854, <2 x double> splat (double -2.000000e+00), <2 x double> %850)
  %856 = getelementptr inbounds nuw i8, ptr %686, i64 32
  %857 = getelementptr inbounds nuw i8, ptr %687, i64 32
  %858 = load double, ptr %856, align 8, !alias.scope !28
  %859 = load double, ptr %857, align 8, !alias.scope !28
  %860 = insertelement <2 x double> poison, double %858, i64 0
  %861 = insertelement <2 x double> %860, double %859, i64 1
  %862 = fadd <2 x double> %855, %861
  %863 = getelementptr inbounds nuw i8, ptr %684, i64 112
  %864 = getelementptr inbounds nuw i8, ptr %685, i64 112
  %865 = load double, ptr %863, align 8, !alias.scope !28
  %866 = load double, ptr %864, align 8, !alias.scope !28
  %867 = insertelement <2 x double> poison, double %865, i64 0
  %868 = insertelement <2 x double> %867, double %866, i64 1
  %869 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %854, <2 x double> splat (double -2.000000e+00), <2 x double> %868)
  %870 = getelementptr i8, ptr %684, i64 -48
  %871 = getelementptr i8, ptr %685, i64 -48
  %872 = load double, ptr %870, align 8, !alias.scope !28
  %873 = load double, ptr %871, align 8, !alias.scope !28
  %874 = insertelement <2 x double> poison, double %872, i64 0
  %875 = insertelement <2 x double> %874, double %873, i64 1
  %876 = fadd <2 x double> %869, %875
  %877 = fmul <2 x double> %876, splat (double 1.250000e-01)
  %878 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %862, <2 x double> splat (double 1.250000e-01), <2 x double> %877)
  %879 = getelementptr i8, ptr %684, i64 40
  %880 = getelementptr i8, ptr %685, i64 40
  %881 = load double, ptr %879, align 8, !alias.scope !28
  %882 = load double, ptr %880, align 8, !alias.scope !28
  %883 = insertelement <2 x double> poison, double %881, i64 0
  %884 = insertelement <2 x double> %883, double %882, i64 1
  %885 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %854, <2 x double> splat (double -2.000000e+00), <2 x double> %884)
  %886 = load double, ptr %777, align 8, !alias.scope !28
  %887 = load double, ptr %778, align 8, !alias.scope !28
  %888 = insertelement <2 x double> poison, double %886, i64 0
  %889 = insertelement <2 x double> %888, double %887, i64 1
  %890 = fadd <2 x double> %885, %889
  %891 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %890, <2 x double> splat (double 1.250000e-01), <2 x double> %878)
  %892 = fadd <2 x double> %854, %891
  %893 = getelementptr inbounds nuw i8, ptr %688, i64 32
  %894 = extractelement <2 x double> %892, i64 0
  store double %894, ptr %893, align 8, !alias.scope !31, !noalias !28
  %895 = shufflevector <2 x double> %841, <2 x double> %892, <2 x i32> <i32 1, i32 3>
  store <2 x double> %895, ptr %843, align 8, !alias.scope !31, !noalias !28
  %896 = getelementptr inbounds nuw i8, ptr %682, i64 40
  %897 = getelementptr inbounds nuw i8, ptr %683, i64 40
  %898 = load double, ptr %896, align 8, !alias.scope !28
  %899 = load double, ptr %897, align 8, !alias.scope !28
  %900 = insertelement <2 x double> poison, double %898, i64 0
  %901 = insertelement <2 x double> %900, double %899, i64 1
  %902 = load double, ptr %879, align 8, !alias.scope !28
  %903 = load double, ptr %880, align 8, !alias.scope !28
  %904 = insertelement <2 x double> poison, double %902, i64 0
  %905 = insertelement <2 x double> %904, double %903, i64 1
  %906 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %905, <2 x double> splat (double -2.000000e+00), <2 x double> %901)
  %907 = getelementptr inbounds nuw i8, ptr %686, i64 40
  %908 = getelementptr inbounds nuw i8, ptr %687, i64 40
  %909 = load double, ptr %907, align 8, !alias.scope !28
  %910 = load double, ptr %908, align 8, !alias.scope !28
  %911 = insertelement <2 x double> poison, double %909, i64 0
  %912 = insertelement <2 x double> %911, double %910, i64 1
  %913 = fadd <2 x double> %906, %912
  %914 = getelementptr inbounds nuw i8, ptr %684, i64 120
  %915 = getelementptr inbounds nuw i8, ptr %685, i64 120
  %916 = load double, ptr %914, align 8, !alias.scope !28
  %917 = load double, ptr %915, align 8, !alias.scope !28
  %918 = insertelement <2 x double> poison, double %916, i64 0
  %919 = insertelement <2 x double> %918, double %917, i64 1
  %920 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %905, <2 x double> splat (double -2.000000e+00), <2 x double> %919)
  %921 = getelementptr i8, ptr %684, i64 -40
  %922 = getelementptr i8, ptr %685, i64 -40
  %923 = load double, ptr %921, align 8, !alias.scope !28
  %924 = load double, ptr %922, align 8, !alias.scope !28
  %925 = insertelement <2 x double> poison, double %923, i64 0
  %926 = insertelement <2 x double> %925, double %924, i64 1
  %927 = fadd <2 x double> %920, %926
  %928 = fmul <2 x double> %927, splat (double 1.250000e-01)
  %929 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %913, <2 x double> splat (double 1.250000e-01), <2 x double> %928)
  %930 = getelementptr i8, ptr %684, i64 48
  %931 = getelementptr i8, ptr %685, i64 48
  %932 = load double, ptr %930, align 8, !alias.scope !28
  %933 = load double, ptr %931, align 8, !alias.scope !28
  %934 = insertelement <2 x double> poison, double %932, i64 0
  %935 = insertelement <2 x double> %934, double %933, i64 1
  %936 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %905, <2 x double> splat (double -2.000000e+00), <2 x double> %935)
  %937 = load double, ptr %828, align 8, !alias.scope !28
  %938 = load double, ptr %829, align 8, !alias.scope !28
  %939 = insertelement <2 x double> poison, double %937, i64 0
  %940 = insertelement <2 x double> %939, double %938, i64 1
  %941 = fadd <2 x double> %936, %940
  %942 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %941, <2 x double> splat (double 1.250000e-01), <2 x double> %929)
  %943 = fadd <2 x double> %905, %942
  %944 = getelementptr inbounds nuw i8, ptr %688, i64 40
  %945 = getelementptr inbounds nuw i8, ptr %689, i64 40
  %946 = extractelement <2 x double> %943, i64 0
  store double %946, ptr %944, align 8, !alias.scope !31, !noalias !28
  %947 = getelementptr inbounds nuw i8, ptr %682, i64 48
  %948 = getelementptr inbounds nuw i8, ptr %683, i64 48
  %949 = load double, ptr %947, align 8, !alias.scope !28
  %950 = load double, ptr %948, align 8, !alias.scope !28
  %951 = insertelement <2 x double> poison, double %949, i64 0
  %952 = insertelement <2 x double> %951, double %950, i64 1
  %953 = load double, ptr %930, align 8, !alias.scope !28
  %954 = load double, ptr %931, align 8, !alias.scope !28
  %955 = insertelement <2 x double> poison, double %953, i64 0
  %956 = insertelement <2 x double> %955, double %954, i64 1
  %957 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %956, <2 x double> splat (double -2.000000e+00), <2 x double> %952)
  %958 = getelementptr inbounds nuw i8, ptr %686, i64 48
  %959 = getelementptr inbounds nuw i8, ptr %687, i64 48
  %960 = load double, ptr %958, align 8, !alias.scope !28
  %961 = load double, ptr %959, align 8, !alias.scope !28
  %962 = insertelement <2 x double> poison, double %960, i64 0
  %963 = insertelement <2 x double> %962, double %961, i64 1
  %964 = fadd <2 x double> %957, %963
  %965 = getelementptr inbounds nuw i8, ptr %684, i64 128
  %966 = getelementptr inbounds nuw i8, ptr %685, i64 128
  %967 = load double, ptr %965, align 8, !alias.scope !28
  %968 = load double, ptr %966, align 8, !alias.scope !28
  %969 = insertelement <2 x double> poison, double %967, i64 0
  %970 = insertelement <2 x double> %969, double %968, i64 1
  %971 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %956, <2 x double> splat (double -2.000000e+00), <2 x double> %970)
  %972 = getelementptr i8, ptr %684, i64 -32
  %973 = getelementptr i8, ptr %685, i64 -32
  %974 = load double, ptr %972, align 8, !alias.scope !28
  %975 = load double, ptr %973, align 8, !alias.scope !28
  %976 = insertelement <2 x double> poison, double %974, i64 0
  %977 = insertelement <2 x double> %976, double %975, i64 1
  %978 = fadd <2 x double> %971, %977
  %979 = fmul <2 x double> %978, splat (double 1.250000e-01)
  %980 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %964, <2 x double> splat (double 1.250000e-01), <2 x double> %979)
  %981 = getelementptr i8, ptr %684, i64 56
  %982 = getelementptr i8, ptr %685, i64 56
  %983 = load double, ptr %981, align 8, !alias.scope !28
  %984 = load double, ptr %982, align 8, !alias.scope !28
  %985 = insertelement <2 x double> poison, double %983, i64 0
  %986 = insertelement <2 x double> %985, double %984, i64 1
  %987 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %956, <2 x double> splat (double -2.000000e+00), <2 x double> %986)
  %988 = load double, ptr %879, align 8, !alias.scope !28
  %989 = load double, ptr %880, align 8, !alias.scope !28
  %990 = insertelement <2 x double> poison, double %988, i64 0
  %991 = insertelement <2 x double> %990, double %989, i64 1
  %992 = fadd <2 x double> %987, %991
  %993 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %992, <2 x double> splat (double 1.250000e-01), <2 x double> %980)
  %994 = fadd <2 x double> %956, %993
  %995 = getelementptr inbounds nuw i8, ptr %688, i64 48
  %996 = extractelement <2 x double> %994, i64 0
  store double %996, ptr %995, align 8, !alias.scope !31, !noalias !28
  %997 = shufflevector <2 x double> %943, <2 x double> %994, <2 x i32> <i32 1, i32 3>
  store <2 x double> %997, ptr %945, align 8, !alias.scope !31, !noalias !28
  %998 = getelementptr inbounds nuw i8, ptr %682, i64 56
  %999 = getelementptr inbounds nuw i8, ptr %683, i64 56
  %1000 = load double, ptr %998, align 8, !alias.scope !28
  %1001 = load double, ptr %999, align 8, !alias.scope !28
  %1002 = insertelement <2 x double> poison, double %1000, i64 0
  %1003 = insertelement <2 x double> %1002, double %1001, i64 1
  %1004 = load double, ptr %981, align 8, !alias.scope !28
  %1005 = load double, ptr %982, align 8, !alias.scope !28
  %1006 = insertelement <2 x double> poison, double %1004, i64 0
  %1007 = insertelement <2 x double> %1006, double %1005, i64 1
  %1008 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %1007, <2 x double> splat (double -2.000000e+00), <2 x double> %1003)
  %1009 = getelementptr inbounds nuw i8, ptr %686, i64 56
  %1010 = getelementptr inbounds nuw i8, ptr %687, i64 56
  %1011 = load double, ptr %1009, align 8, !alias.scope !28
  %1012 = load double, ptr %1010, align 8, !alias.scope !28
  %1013 = insertelement <2 x double> poison, double %1011, i64 0
  %1014 = insertelement <2 x double> %1013, double %1012, i64 1
  %1015 = fadd <2 x double> %1008, %1014
  %1016 = getelementptr inbounds nuw i8, ptr %684, i64 136
  %1017 = getelementptr inbounds nuw i8, ptr %685, i64 136
  %1018 = load double, ptr %1016, align 8, !alias.scope !28
  %1019 = load double, ptr %1017, align 8, !alias.scope !28
  %1020 = insertelement <2 x double> poison, double %1018, i64 0
  %1021 = insertelement <2 x double> %1020, double %1019, i64 1
  %1022 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %1007, <2 x double> splat (double -2.000000e+00), <2 x double> %1021)
  %1023 = getelementptr i8, ptr %684, i64 -24
  %1024 = getelementptr i8, ptr %685, i64 -24
  %1025 = load double, ptr %1023, align 8, !alias.scope !28
  %1026 = load double, ptr %1024, align 8, !alias.scope !28
  %1027 = insertelement <2 x double> poison, double %1025, i64 0
  %1028 = insertelement <2 x double> %1027, double %1026, i64 1
  %1029 = fadd <2 x double> %1022, %1028
  %1030 = fmul <2 x double> %1029, splat (double 1.250000e-01)
  %1031 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %1015, <2 x double> splat (double 1.250000e-01), <2 x double> %1030)
  %1032 = getelementptr inbounds nuw i8, ptr %684, i64 64
  %1033 = getelementptr inbounds nuw i8, ptr %685, i64 64
  %1034 = load double, ptr %1032, align 8, !alias.scope !28
  %1035 = load double, ptr %1033, align 8, !alias.scope !28
  %1036 = insertelement <2 x double> poison, double %1034, i64 0
  %1037 = insertelement <2 x double> %1036, double %1035, i64 1
  %1038 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %1007, <2 x double> splat (double -2.000000e+00), <2 x double> %1037)
  %1039 = load double, ptr %930, align 8, !alias.scope !28
  %1040 = load double, ptr %931, align 8, !alias.scope !28
  %1041 = insertelement <2 x double> poison, double %1039, i64 0
  %1042 = insertelement <2 x double> %1041, double %1040, i64 1
  %1043 = fadd <2 x double> %1038, %1042
  %1044 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %1043, <2 x double> splat (double 1.250000e-01), <2 x double> %1031)
  %1045 = fadd <2 x double> %1007, %1044
  %1046 = getelementptr inbounds nuw i8, ptr %688, i64 56
  %1047 = getelementptr inbounds nuw i8, ptr %689, i64 56
  %1048 = extractelement <2 x double> %1045, i64 0
  store double %1048, ptr %1046, align 8, !alias.scope !31, !noalias !28
  %1049 = getelementptr inbounds nuw i8, ptr %682, i64 64
  %1050 = getelementptr inbounds nuw i8, ptr %683, i64 64
  %1051 = load double, ptr %1049, align 8, !alias.scope !28
  %1052 = load double, ptr %1050, align 8, !alias.scope !28
  %1053 = insertelement <2 x double> poison, double %1051, i64 0
  %1054 = insertelement <2 x double> %1053, double %1052, i64 1
  %1055 = load double, ptr %1032, align 8, !alias.scope !28
  %1056 = load double, ptr %1033, align 8, !alias.scope !28
  %1057 = insertelement <2 x double> poison, double %1055, i64 0
  %1058 = insertelement <2 x double> %1057, double %1056, i64 1
  %1059 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %1058, <2 x double> splat (double -2.000000e+00), <2 x double> %1054)
  %1060 = getelementptr inbounds nuw i8, ptr %686, i64 64
  %1061 = getelementptr inbounds nuw i8, ptr %687, i64 64
  %1062 = load double, ptr %1060, align 8, !alias.scope !28
  %1063 = load double, ptr %1061, align 8, !alias.scope !28
  %1064 = insertelement <2 x double> poison, double %1062, i64 0
  %1065 = insertelement <2 x double> %1064, double %1063, i64 1
  %1066 = fadd <2 x double> %1059, %1065
  %1067 = getelementptr inbounds nuw i8, ptr %684, i64 144
  %1068 = getelementptr inbounds nuw i8, ptr %685, i64 144
  %1069 = load double, ptr %1067, align 8, !alias.scope !28
  %1070 = load double, ptr %1068, align 8, !alias.scope !28
  %1071 = insertelement <2 x double> poison, double %1069, i64 0
  %1072 = insertelement <2 x double> %1071, double %1070, i64 1
  %1073 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %1058, <2 x double> splat (double -2.000000e+00), <2 x double> %1072)
  %1074 = getelementptr i8, ptr %684, i64 -16
  %1075 = getelementptr i8, ptr %685, i64 -16
  %1076 = load double, ptr %1074, align 8, !alias.scope !28
  %1077 = load double, ptr %1075, align 8, !alias.scope !28
  %1078 = insertelement <2 x double> poison, double %1076, i64 0
  %1079 = insertelement <2 x double> %1078, double %1077, i64 1
  %1080 = fadd <2 x double> %1073, %1079
  %1081 = fmul <2 x double> %1080, splat (double 1.250000e-01)
  %1082 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %1066, <2 x double> splat (double 1.250000e-01), <2 x double> %1081)
  %1083 = getelementptr inbounds nuw i8, ptr %684, i64 72
  %1084 = getelementptr inbounds nuw i8, ptr %685, i64 72
  %1085 = load double, ptr %1083, align 8, !alias.scope !28
  %1086 = load double, ptr %1084, align 8, !alias.scope !28
  %1087 = insertelement <2 x double> poison, double %1085, i64 0
  %1088 = insertelement <2 x double> %1087, double %1086, i64 1
  %1089 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %1058, <2 x double> splat (double -2.000000e+00), <2 x double> %1088)
  %1090 = load double, ptr %981, align 8, !alias.scope !28
  %1091 = load double, ptr %982, align 8, !alias.scope !28
  %1092 = insertelement <2 x double> poison, double %1090, i64 0
  %1093 = insertelement <2 x double> %1092, double %1091, i64 1
  %1094 = fadd <2 x double> %1089, %1093
  %1095 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %1094, <2 x double> splat (double 1.250000e-01), <2 x double> %1082)
  %1096 = fadd <2 x double> %1058, %1095
  %1097 = getelementptr inbounds nuw i8, ptr %688, i64 64
  %1098 = extractelement <2 x double> %1096, i64 0
  store double %1098, ptr %1097, align 8, !alias.scope !31, !noalias !28
  %1099 = shufflevector <2 x double> %1045, <2 x double> %1096, <2 x i32> <i32 1, i32 3>
  store <2 x double> %1099, ptr %1047, align 8, !alias.scope !31, !noalias !28
  %index.next = add nuw i64 %index, 2
  %1100 = icmp eq i64 %index.next, 8
  br i1 %1100, label %middle.block, label %vector.body, !llvm.loop !33

.preheader:                                       ; preds = %.preheader107, %.preheader
  %indvars.iv128 = phi i64 [ %indvars.iv.next129, %.preheader ], [ 1, %.preheader107 ]
  %1101 = getelementptr inbounds nuw [80 x i8], ptr %677, i64 %indvars.iv128
  %1102 = getelementptr inbounds nuw [80 x i8], ptr %676, i64 %indvars.iv128
  %1103 = getelementptr inbounds nuw [80 x i8], ptr %678, i64 %indvars.iv128
  %1104 = getelementptr inbounds nuw [80 x i8], ptr %679, i64 %indvars.iv128
  %1105 = getelementptr inbounds nuw i8, ptr %1101, i64 8
  %1106 = load double, ptr %1105, align 8
  %1107 = getelementptr inbounds nuw i8, ptr %1102, i64 8
  %1108 = getelementptr inbounds nuw i8, ptr %1103, i64 8
  %1109 = load double, ptr %1108, align 8
  %1110 = getelementptr inbounds nuw i8, ptr %1102, i64 88
  %1111 = load double, ptr %1110, align 8
  %1112 = insertelement <2 x double> poison, double %1106, i64 0
  %1113 = insertelement <2 x double> %1112, double %1111, i64 1
  %1114 = getelementptr i8, ptr %1102, i64 -72
  %1115 = load double, ptr %1114, align 8
  %1116 = getelementptr inbounds nuw i8, ptr %1102, i64 16
  %1117 = load <2 x double>, ptr %1107, align 8
  %1118 = shufflevector <2 x double> %1117, <2 x double> poison, <2 x i32> zeroinitializer
  %1119 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %1118, <2 x double> splat (double -2.000000e+00), <2 x double> %1113)
  %1120 = insertelement <2 x double> poison, double %1109, i64 0
  %1121 = insertelement <2 x double> %1120, double %1115, i64 1
  %1122 = fadd <2 x double> %1119, %1121
  %1123 = extractelement <2 x double> %1122, i64 1
  %1124 = fmul double %1123, 1.250000e-01
  %1125 = shufflevector <2 x double> %1122, <2 x double> %1117, <2 x i32> <i32 0, i32 2>
  %1126 = insertelement <2 x double> %1117, double %1124, i64 0
  %1127 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %1125, <2 x double> <double 1.250000e-01, double -2.000000e+00>, <2 x double> %1126)
  %1128 = load double, ptr %1102, align 8
  %1129 = extractelement <2 x double> %1127, i64 1
  %1130 = fadd double %1129, %1128
  %1131 = extractelement <2 x double> %1127, i64 0
  %1132 = tail call double @llvm.fmuladd.f64(double %1130, double 1.250000e-01, double %1131)
  %1133 = extractelement <2 x double> %1117, i64 0
  %1134 = fadd double %1133, %1132
  %1135 = getelementptr inbounds nuw i8, ptr %1104, i64 8
  store double %1134, ptr %1135, align 8
  %1136 = getelementptr inbounds nuw i8, ptr %1101, i64 16
  %1137 = load double, ptr %1136, align 8
  %1138 = load double, ptr %1116, align 8
  %1139 = getelementptr inbounds nuw i8, ptr %1103, i64 16
  %1140 = load double, ptr %1139, align 8
  %1141 = getelementptr inbounds nuw i8, ptr %1102, i64 96
  %1142 = load double, ptr %1141, align 8
  %1143 = getelementptr i8, ptr %1102, i64 -64
  %1144 = load double, ptr %1143, align 8
  %1145 = insertelement <2 x double> poison, double %1138, i64 0
  %1146 = shufflevector <2 x double> %1145, <2 x double> poison, <2 x i32> zeroinitializer
  %1147 = insertelement <2 x double> poison, double %1137, i64 0
  %1148 = insertelement <2 x double> %1147, double %1142, i64 1
  %1149 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %1146, <2 x double> splat (double -2.000000e+00), <2 x double> %1148)
  %1150 = insertelement <2 x double> poison, double %1140, i64 0
  %1151 = insertelement <2 x double> %1150, double %1144, i64 1
  %1152 = fadd <2 x double> %1149, %1151
  %1153 = extractelement <2 x double> %1152, i64 1
  %1154 = fmul double %1153, 1.250000e-01
  %1155 = extractelement <2 x double> %1152, i64 0
  %1156 = tail call double @llvm.fmuladd.f64(double %1155, double 1.250000e-01, double %1154)
  %1157 = getelementptr inbounds nuw i8, ptr %1102, i64 24
  %1158 = load double, ptr %1157, align 8
  %1159 = tail call double @llvm.fmuladd.f64(double %1138, double -2.000000e+00, double %1158)
  %1160 = getelementptr i8, ptr %1102, i64 8
  %1161 = load double, ptr %1160, align 8
  %1162 = fadd double %1159, %1161
  %1163 = tail call double @llvm.fmuladd.f64(double %1162, double 1.250000e-01, double %1156)
  %1164 = fadd double %1138, %1163
  %1165 = getelementptr inbounds nuw i8, ptr %1104, i64 16
  store double %1164, ptr %1165, align 8
  %1166 = getelementptr inbounds nuw i8, ptr %1101, i64 24
  %1167 = load double, ptr %1166, align 8
  %1168 = getelementptr inbounds nuw i8, ptr %1103, i64 24
  %1169 = load double, ptr %1168, align 8
  %1170 = getelementptr inbounds nuw i8, ptr %1102, i64 104
  %1171 = load double, ptr %1170, align 8
  %1172 = insertelement <2 x double> poison, double %1167, i64 0
  %1173 = insertelement <2 x double> %1172, double %1171, i64 1
  %1174 = getelementptr i8, ptr %1102, i64 -56
  %1175 = load double, ptr %1174, align 8
  %1176 = getelementptr inbounds nuw i8, ptr %1102, i64 32
  %1177 = load <2 x double>, ptr %1157, align 8
  %1178 = shufflevector <2 x double> %1177, <2 x double> poison, <2 x i32> zeroinitializer
  %1179 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %1178, <2 x double> splat (double -2.000000e+00), <2 x double> %1173)
  %1180 = insertelement <2 x double> poison, double %1169, i64 0
  %1181 = insertelement <2 x double> %1180, double %1175, i64 1
  %1182 = fadd <2 x double> %1179, %1181
  %1183 = extractelement <2 x double> %1182, i64 1
  %1184 = fmul double %1183, 1.250000e-01
  %1185 = shufflevector <2 x double> %1182, <2 x double> %1177, <2 x i32> <i32 0, i32 2>
  %1186 = insertelement <2 x double> %1177, double %1184, i64 0
  %1187 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %1185, <2 x double> <double 1.250000e-01, double -2.000000e+00>, <2 x double> %1186)
  %1188 = getelementptr i8, ptr %1102, i64 16
  %1189 = load double, ptr %1188, align 8
  %1190 = extractelement <2 x double> %1187, i64 1
  %1191 = fadd double %1190, %1189
  %1192 = extractelement <2 x double> %1187, i64 0
  %1193 = tail call double @llvm.fmuladd.f64(double %1191, double 1.250000e-01, double %1192)
  %1194 = extractelement <2 x double> %1177, i64 0
  %1195 = fadd double %1194, %1193
  %1196 = getelementptr inbounds nuw i8, ptr %1104, i64 24
  store double %1195, ptr %1196, align 8
  %1197 = getelementptr inbounds nuw i8, ptr %1101, i64 32
  %1198 = load double, ptr %1197, align 8
  %1199 = load double, ptr %1176, align 8
  %1200 = getelementptr inbounds nuw i8, ptr %1103, i64 32
  %1201 = load double, ptr %1200, align 8
  %1202 = getelementptr inbounds nuw i8, ptr %1102, i64 112
  %1203 = load double, ptr %1202, align 8
  %1204 = getelementptr i8, ptr %1102, i64 -48
  %1205 = load double, ptr %1204, align 8
  %1206 = insertelement <2 x double> poison, double %1199, i64 0
  %1207 = shufflevector <2 x double> %1206, <2 x double> poison, <2 x i32> zeroinitializer
  %1208 = insertelement <2 x double> poison, double %1198, i64 0
  %1209 = insertelement <2 x double> %1208, double %1203, i64 1
  %1210 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %1207, <2 x double> splat (double -2.000000e+00), <2 x double> %1209)
  %1211 = insertelement <2 x double> poison, double %1201, i64 0
  %1212 = insertelement <2 x double> %1211, double %1205, i64 1
  %1213 = fadd <2 x double> %1210, %1212
  %1214 = extractelement <2 x double> %1213, i64 1
  %1215 = fmul double %1214, 1.250000e-01
  %1216 = extractelement <2 x double> %1213, i64 0
  %1217 = tail call double @llvm.fmuladd.f64(double %1216, double 1.250000e-01, double %1215)
  %1218 = getelementptr inbounds nuw i8, ptr %1102, i64 40
  %1219 = load double, ptr %1218, align 8
  %1220 = tail call double @llvm.fmuladd.f64(double %1199, double -2.000000e+00, double %1219)
  %1221 = getelementptr i8, ptr %1102, i64 24
  %1222 = load double, ptr %1221, align 8
  %1223 = fadd double %1220, %1222
  %1224 = tail call double @llvm.fmuladd.f64(double %1223, double 1.250000e-01, double %1217)
  %1225 = fadd double %1199, %1224
  %1226 = getelementptr inbounds nuw i8, ptr %1104, i64 32
  store double %1225, ptr %1226, align 8
  %1227 = getelementptr inbounds nuw i8, ptr %1101, i64 40
  %1228 = load double, ptr %1227, align 8
  %1229 = getelementptr inbounds nuw i8, ptr %1103, i64 40
  %1230 = load double, ptr %1229, align 8
  %1231 = getelementptr inbounds nuw i8, ptr %1102, i64 120
  %1232 = load double, ptr %1231, align 8
  %1233 = insertelement <2 x double> poison, double %1228, i64 0
  %1234 = insertelement <2 x double> %1233, double %1232, i64 1
  %1235 = getelementptr i8, ptr %1102, i64 -40
  %1236 = load double, ptr %1235, align 8
  %1237 = getelementptr inbounds nuw i8, ptr %1102, i64 48
  %1238 = load <2 x double>, ptr %1218, align 8
  %1239 = shufflevector <2 x double> %1238, <2 x double> poison, <2 x i32> zeroinitializer
  %1240 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %1239, <2 x double> splat (double -2.000000e+00), <2 x double> %1234)
  %1241 = insertelement <2 x double> poison, double %1230, i64 0
  %1242 = insertelement <2 x double> %1241, double %1236, i64 1
  %1243 = fadd <2 x double> %1240, %1242
  %1244 = extractelement <2 x double> %1243, i64 1
  %1245 = fmul double %1244, 1.250000e-01
  %1246 = shufflevector <2 x double> %1243, <2 x double> %1238, <2 x i32> <i32 0, i32 2>
  %1247 = insertelement <2 x double> %1238, double %1245, i64 0
  %1248 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %1246, <2 x double> <double 1.250000e-01, double -2.000000e+00>, <2 x double> %1247)
  %1249 = getelementptr i8, ptr %1102, i64 32
  %1250 = load double, ptr %1249, align 8
  %1251 = extractelement <2 x double> %1248, i64 1
  %1252 = fadd double %1251, %1250
  %1253 = extractelement <2 x double> %1248, i64 0
  %1254 = tail call double @llvm.fmuladd.f64(double %1252, double 1.250000e-01, double %1253)
  %1255 = extractelement <2 x double> %1238, i64 0
  %1256 = fadd double %1255, %1254
  %1257 = getelementptr inbounds nuw i8, ptr %1104, i64 40
  store double %1256, ptr %1257, align 8
  %1258 = getelementptr inbounds nuw i8, ptr %1101, i64 48
  %1259 = load double, ptr %1258, align 8
  %1260 = load double, ptr %1237, align 8
  %1261 = getelementptr inbounds nuw i8, ptr %1103, i64 48
  %1262 = load double, ptr %1261, align 8
  %1263 = getelementptr inbounds nuw i8, ptr %1102, i64 128
  %1264 = load double, ptr %1263, align 8
  %1265 = getelementptr i8, ptr %1102, i64 -32
  %1266 = load double, ptr %1265, align 8
  %1267 = insertelement <2 x double> poison, double %1260, i64 0
  %1268 = shufflevector <2 x double> %1267, <2 x double> poison, <2 x i32> zeroinitializer
  %1269 = insertelement <2 x double> poison, double %1259, i64 0
  %1270 = insertelement <2 x double> %1269, double %1264, i64 1
  %1271 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %1268, <2 x double> splat (double -2.000000e+00), <2 x double> %1270)
  %1272 = insertelement <2 x double> poison, double %1262, i64 0
  %1273 = insertelement <2 x double> %1272, double %1266, i64 1
  %1274 = fadd <2 x double> %1271, %1273
  %1275 = extractelement <2 x double> %1274, i64 1
  %1276 = fmul double %1275, 1.250000e-01
  %1277 = extractelement <2 x double> %1274, i64 0
  %1278 = tail call double @llvm.fmuladd.f64(double %1277, double 1.250000e-01, double %1276)
  %1279 = getelementptr inbounds nuw i8, ptr %1102, i64 56
  %1280 = load double, ptr %1279, align 8
  %1281 = tail call double @llvm.fmuladd.f64(double %1260, double -2.000000e+00, double %1280)
  %1282 = getelementptr i8, ptr %1102, i64 40
  %1283 = load double, ptr %1282, align 8
  %1284 = fadd double %1281, %1283
  %1285 = tail call double @llvm.fmuladd.f64(double %1284, double 1.250000e-01, double %1278)
  %1286 = fadd double %1260, %1285
  %1287 = getelementptr inbounds nuw i8, ptr %1104, i64 48
  store double %1286, ptr %1287, align 8
  %1288 = getelementptr inbounds nuw i8, ptr %1101, i64 56
  %1289 = load double, ptr %1288, align 8
  %1290 = getelementptr inbounds nuw i8, ptr %1103, i64 56
  %1291 = load double, ptr %1290, align 8
  %1292 = getelementptr inbounds nuw i8, ptr %1102, i64 136
  %1293 = load double, ptr %1292, align 8
  %1294 = insertelement <2 x double> poison, double %1289, i64 0
  %1295 = insertelement <2 x double> %1294, double %1293, i64 1
  %1296 = getelementptr i8, ptr %1102, i64 -24
  %1297 = load double, ptr %1296, align 8
  %1298 = getelementptr inbounds nuw i8, ptr %1102, i64 64
  %1299 = load <2 x double>, ptr %1279, align 8
  %1300 = shufflevector <2 x double> %1299, <2 x double> poison, <2 x i32> zeroinitializer
  %1301 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %1300, <2 x double> splat (double -2.000000e+00), <2 x double> %1295)
  %1302 = insertelement <2 x double> poison, double %1291, i64 0
  %1303 = insertelement <2 x double> %1302, double %1297, i64 1
  %1304 = fadd <2 x double> %1301, %1303
  %1305 = extractelement <2 x double> %1304, i64 1
  %1306 = fmul double %1305, 1.250000e-01
  %1307 = shufflevector <2 x double> %1304, <2 x double> %1299, <2 x i32> <i32 0, i32 2>
  %1308 = insertelement <2 x double> %1299, double %1306, i64 0
  %1309 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %1307, <2 x double> <double 1.250000e-01, double -2.000000e+00>, <2 x double> %1308)
  %1310 = getelementptr i8, ptr %1102, i64 48
  %1311 = load double, ptr %1310, align 8
  %1312 = extractelement <2 x double> %1309, i64 1
  %1313 = fadd double %1312, %1311
  %1314 = extractelement <2 x double> %1309, i64 0
  %1315 = tail call double @llvm.fmuladd.f64(double %1313, double 1.250000e-01, double %1314)
  %1316 = extractelement <2 x double> %1299, i64 0
  %1317 = fadd double %1316, %1315
  %1318 = getelementptr inbounds nuw i8, ptr %1104, i64 56
  store double %1317, ptr %1318, align 8
  %1319 = getelementptr inbounds nuw i8, ptr %1101, i64 64
  %1320 = load double, ptr %1319, align 8
  %1321 = load double, ptr %1298, align 8
  %1322 = getelementptr inbounds nuw i8, ptr %1103, i64 64
  %1323 = load double, ptr %1322, align 8
  %1324 = getelementptr inbounds nuw i8, ptr %1102, i64 144
  %1325 = load double, ptr %1324, align 8
  %1326 = getelementptr i8, ptr %1102, i64 -16
  %1327 = load double, ptr %1326, align 8
  %1328 = insertelement <2 x double> poison, double %1321, i64 0
  %1329 = shufflevector <2 x double> %1328, <2 x double> poison, <2 x i32> zeroinitializer
  %1330 = insertelement <2 x double> poison, double %1320, i64 0
  %1331 = insertelement <2 x double> %1330, double %1325, i64 1
  %1332 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %1329, <2 x double> splat (double -2.000000e+00), <2 x double> %1331)
  %1333 = insertelement <2 x double> poison, double %1323, i64 0
  %1334 = insertelement <2 x double> %1333, double %1327, i64 1
  %1335 = fadd <2 x double> %1332, %1334
  %1336 = extractelement <2 x double> %1335, i64 1
  %1337 = fmul double %1336, 1.250000e-01
  %1338 = extractelement <2 x double> %1335, i64 0
  %1339 = tail call double @llvm.fmuladd.f64(double %1338, double 1.250000e-01, double %1337)
  %1340 = getelementptr inbounds nuw i8, ptr %1102, i64 72
  %1341 = load double, ptr %1340, align 8
  %1342 = tail call double @llvm.fmuladd.f64(double %1321, double -2.000000e+00, double %1341)
  %1343 = getelementptr i8, ptr %1102, i64 56
  %1344 = load double, ptr %1343, align 8
  %1345 = fadd double %1342, %1344
  %1346 = tail call double @llvm.fmuladd.f64(double %1345, double 1.250000e-01, double %1339)
  %1347 = fadd double %1321, %1346
  %1348 = getelementptr inbounds nuw i8, ptr %1104, i64 64
  store double %1347, ptr %1348, align 8
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1
  %exitcond131.not = icmp eq i64 %indvars.iv.next129, 9
  br i1 %exitcond131.not, label %middle.block, label %.preheader, !llvm.loop !34

middle.block:                                     ; preds = %vector.body, %.preheader
  %indvars.iv.next133 = add nuw nsw i64 %indvars.iv132, 1
  %exitcond135.not = icmp eq i64 %indvars.iv.next133, 9
  br i1 %exitcond135.not, label %1349, label %.preheader107, !llvm.loop !35

1349:                                             ; preds = %middle.block
  %1350 = add nuw nsw i32 %.0105117, 1
  %exitcond136.not = icmp eq i32 %1350, 21
  br i1 %exitcond136.not, label %1351, label %.preheader110, !llvm.loop !36

1351:                                             ; preds = %1349
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @print_array(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
  %2 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %fwrite = tail call i64 @fwrite(ptr nonnull @"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@", i64 22, i64 1, ptr %2)
  %3 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@", ptr noundef nonnull @"??_C@_01FHEEJDEE@A?$AA@") #9
  br label %.preheader23

.preheader23:                                     ; preds = %1, %73
  %indvars.iv29 = phi i64 [ 0, %1 ], [ %indvars.iv.next30, %73 ]
  %5 = mul nuw nsw i64 %indvars.iv29, 100
  %6 = getelementptr inbounds nuw [800 x i8], ptr %0, i64 %indvars.iv29
  br label %.preheader

.preheader:                                       ; preds = %.preheader23, %66
  %indvars.iv = phi i64 [ 0, %.preheader23 ], [ %indvars.iv.next, %66 ]
  %7 = mul nuw nsw i64 %indvars.iv, 10
  %8 = add nuw nsw i64 %7, %5
  %9 = getelementptr inbounds nuw [80 x i8], ptr %6, i64 %indvars.iv
  %10 = trunc nuw nsw i64 %8 to i32
  %11 = urem i32 %10, 20
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %.preheader
  %14 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %fputc = tail call i32 @fputc(i32 10, ptr %14)
  br label %15

15:                                               ; preds = %13, %.preheader
  %16 = load double, ptr %9, align 8
  %17 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@", double noundef %16) #9
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.pre = load double, ptr %.phi.trans.insert, align 8
  %19 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@", double noundef %.pre) #9
  %21 = trunc i64 %8 to i32
  %22 = add i32 %21, 2
  %23 = urem i32 %22, 20
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %15
  %26 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %fputc.2 = tail call i32 @fputc(i32 10, ptr %26)
  br label %27

27:                                               ; preds = %25, %15
  %28 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %29 = load double, ptr %28, align 8
  %30 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %31 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %30, ptr noundef nonnull @"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@", double noundef %29) #9
  %.phi.trans.insert34 = getelementptr inbounds nuw i8, ptr %9, i64 24
  %.pre35 = load double, ptr %.phi.trans.insert34, align 8
  %32 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %33 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@", double noundef %.pre35) #9
  %34 = trunc i64 %8 to i32
  %35 = add i32 %34, 4
  %36 = urem i32 %35, 20
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %27
  %39 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %fputc.4 = tail call i32 @fputc(i32 10, ptr %39)
  br label %40

40:                                               ; preds = %38, %27
  %41 = getelementptr inbounds nuw i8, ptr %9, i64 32
  %42 = load double, ptr %41, align 8
  %43 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %44 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %43, ptr noundef nonnull @"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@", double noundef %42) #9
  %.phi.trans.insert37 = getelementptr inbounds nuw i8, ptr %9, i64 40
  %.pre38 = load double, ptr %.phi.trans.insert37, align 8
  %45 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %46 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %45, ptr noundef nonnull @"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@", double noundef %.pre38) #9
  %47 = trunc i64 %8 to i32
  %48 = add i32 %47, 6
  %49 = urem i32 %48, 20
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %40
  %52 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %fputc.6 = tail call i32 @fputc(i32 10, ptr %52)
  br label %53

53:                                               ; preds = %51, %40
  %54 = getelementptr inbounds nuw i8, ptr %9, i64 48
  %55 = load double, ptr %54, align 8
  %56 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %57 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %56, ptr noundef nonnull @"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@", double noundef %55) #9
  %.phi.trans.insert40 = getelementptr inbounds nuw i8, ptr %9, i64 56
  %.pre41 = load double, ptr %.phi.trans.insert40, align 8
  %58 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %59 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %58, ptr noundef nonnull @"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@", double noundef %.pre41) #9
  %60 = trunc i64 %8 to i32
  %61 = add i32 %60, 8
  %62 = urem i32 %61, 20
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %53
  %65 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %fputc.8 = tail call i32 @fputc(i32 10, ptr %65)
  br label %66

66:                                               ; preds = %64, %53
  %67 = getelementptr inbounds nuw i8, ptr %9, i64 64
  %68 = load double, ptr %67, align 8
  %69 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %70 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %69, ptr noundef nonnull @"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@", double noundef %68) #9
  %.phi.trans.insert43 = getelementptr inbounds nuw i8, ptr %9, i64 72
  %.pre44 = load double, ptr %.phi.trans.insert43, align 8
  %71 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %72 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %71, ptr noundef nonnull @"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@", double noundef %.pre44) #9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 10
  br i1 %exitcond.not, label %73, label %.preheader, !llvm.loop !37

73:                                               ; preds = %66
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  %exitcond32.not = icmp eq i64 %indvars.iv.next30, 10
  br i1 %exitcond32.not, label %74, label %.preheader23, !llvm.loop !38

74:                                               ; preds = %73
  %75 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %76 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %75, ptr noundef nonnull @"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@", ptr noundef nonnull @"??_C@_01FHEEJDEE@A?$AA@") #9
  %77 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %fwrite21 = tail call i64 @fwrite(ptr nonnull @"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@", i64 22, i64 1, ptr %77)
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare dso_local void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #5

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local ptr @__local_stdio_printf_options() local_unnamed_addr #0 comdat {
  ret ptr @__local_stdio_printf_options._OptionsStorage
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i32 @fprintf(ptr noundef %0, ptr noundef %1, ...) local_unnamed_addr #0 comdat {
  %3 = alloca ptr, align 8
  call void @llvm.va_start.p0(ptr nonnull %3)
  %4 = load ptr, ptr %3, align 8
  %5 = call i32 @_vfprintf_l(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef %4)
  call void @llvm.va_end.p0(ptr nonnull %3)
  ret i32 %5
}

declare dso_local ptr @__acrt_iob_func(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i32 @_vfprintf_l(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat {
  %5 = tail call ptr @__local_stdio_printf_options()
  %6 = load i64, ptr %5, align 8
  %7 = tail call i32 @__stdio_common_vfprintf(i64 noundef %6, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #9
  ret i32 %7
}

declare dso_local i32 @__stdio_common_vfprintf(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #8

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #6 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree nounwind }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 24.0.0git (https://github.com/llvm/llvm-project.git 6f4196219399a3502cea3beb2d0c8c28b2241649)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\stencils\\heat-3d\\heat-3d.c", directory: "C:\\work\\llvm-profitability-research")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"MaxTLSAlign", i32 65536}
!6 = !{!"clang version 24.0.0git (https://github.com/llvm/llvm-project.git 6f4196219399a3502cea3beb2d0c8c28b2241649)"}
!7 = !{!8}
!8 = distinct !{!8, !9}
!9 = distinct !{!9, i1 false, !"LVerDomain"}
!10 = !{!11}
!11 = distinct !{!11, !9}
!12 = distinct !{!12, !13, !14, !15, !16}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.isvectorized", i32 1}
!15 = !{!"llvm.loop.vectorize.body", i32 1}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = distinct !{!17, !13, !14, !18}
!18 = !{!"llvm.loop.vectorize.epilogue", i32 1}
!19 = distinct !{!19, !13}
!20 = !{!21}
!21 = distinct !{!21, !22}
!22 = distinct !{!22, i1 false, !"LVerDomain"}
!23 = !{!24}
!24 = distinct !{!24, !22}
!25 = distinct !{!25, !13, !14, !15, !16}
!26 = distinct !{!26, !13, !14, !18}
!27 = distinct !{!27, !13}
!28 = !{!29}
!29 = distinct !{!29, !30}
!30 = distinct !{!30, i1 false, !"LVerDomain"}
!31 = !{!32}
!32 = distinct !{!32, !30}
!33 = distinct !{!33, !13, !14, !15, !16}
!34 = distinct !{!34, !13, !14, !18}
!35 = distinct !{!35, !13}
!36 = distinct !{!36, !13}
!37 = distinct !{!37, !13}
!38 = distinct !{!38, !13}
