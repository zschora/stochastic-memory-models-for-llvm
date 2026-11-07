; ModuleID = 'C:\work\llvm-profitability-research\results\r1\EXP-20261107-R12-discovery\polybench\doitgen\frontend.ll'
source_filename = "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\linear-algebra\\kernels\\doitgen\\doitgen.c"
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

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @kernel_doitgen(i32 %0, i32 %1, i32 %2, ptr nofree noundef captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %8 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %9 = getelementptr inbounds nuw i8, ptr %5, i64 24
  %10 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %11 = getelementptr inbounds nuw i8, ptr %5, i64 40
  %12 = getelementptr inbounds nuw i8, ptr %5, i64 48
  %13 = getelementptr inbounds nuw i8, ptr %5, i64 56
  %14 = getelementptr inbounds nuw i8, ptr %5, i64 64
  %15 = getelementptr inbounds nuw i8, ptr %5, i64 72
  %16 = getelementptr inbounds nuw i8, ptr %5, i64 80
  %17 = getelementptr inbounds nuw i8, ptr %5, i64 88
  %18 = insertelement <2 x ptr> poison, ptr %5, i64 0
  %19 = insertelement <2 x ptr> %18, ptr %4, i64 1
  %20 = getelementptr i8, <2 x ptr> %19, <2 x i64> <i64 96, i64 1152>
  %21 = insertelement <2 x ptr> poison, ptr %5, i64 1
  br label %.preheader30

.preheader30:                                     ; preds = %6, %142
  %indvars.iv46 = phi i64 [ 0, %6 ], [ %indvars.iv.next47, %142 ]
  %22 = mul nuw nsw i64 %indvars.iv46, 768
  %23 = getelementptr i8, ptr %3, i64 %22
  %scevgep65 = getelementptr i8, ptr %23, i64 768
  %24 = getelementptr inbounds nuw [768 x i8], ptr %3, i64 %indvars.iv46
  %25 = insertelement <2 x ptr> poison, ptr %scevgep65, i64 0
  %26 = insertelement <2 x ptr> %21, ptr %24, i64 0
  %27 = shufflevector <2 x ptr> %25, <2 x ptr> %20, <2 x i32> <i32 0, i32 2>
  %28 = icmp ult <2 x ptr> %19, %27
  %29 = icmp ult <2 x ptr> %26, %20
  %30 = and <2 x i1> %29, %28
  %31 = bitcast <2 x i1> %30 to i2
  %.not = icmp eq i2 %31, 0
  br label %.preheader29

.preheader29:                                     ; preds = %.preheader30, %.preheader
  %indvars.iv42 = phi i64 [ 0, %.preheader30 ], [ %indvars.iv.next43, %.preheader ]
  %32 = getelementptr inbounds nuw [96 x i8], ptr %24, i64 %indvars.iv42
  %33 = getelementptr inbounds nuw i8, ptr %32, i64 8
  %34 = getelementptr inbounds nuw i8, ptr %32, i64 16
  %35 = getelementptr inbounds nuw i8, ptr %32, i64 24
  %36 = getelementptr inbounds nuw i8, ptr %32, i64 32
  %37 = getelementptr inbounds nuw i8, ptr %32, i64 40
  %38 = getelementptr inbounds nuw i8, ptr %32, i64 48
  %39 = getelementptr inbounds nuw i8, ptr %32, i64 56
  %40 = getelementptr inbounds nuw i8, ptr %32, i64 64
  %41 = getelementptr inbounds nuw i8, ptr %32, i64 72
  %42 = getelementptr inbounds nuw i8, ptr %32, i64 80
  %43 = getelementptr inbounds nuw i8, ptr %32, i64 88
  br i1 %.not, label %vector.ph, label %scalar.ph

vector.ph:                                        ; preds = %.preheader29
  %44 = load double, ptr %32, align 8, !alias.scope !7
  %broadcast.splatinsert = insertelement <2 x double> poison, double %44, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %45 = load double, ptr %33, align 8, !alias.scope !7
  %broadcast.splatinsert71 = insertelement <2 x double> poison, double %45, i64 0
  %broadcast.splat72 = shufflevector <2 x double> %broadcast.splatinsert71, <2 x double> poison, <2 x i32> zeroinitializer
  %46 = load double, ptr %34, align 8, !alias.scope !7
  %broadcast.splatinsert74 = insertelement <2 x double> poison, double %46, i64 0
  %broadcast.splat75 = shufflevector <2 x double> %broadcast.splatinsert74, <2 x double> poison, <2 x i32> zeroinitializer
  %47 = load double, ptr %35, align 8, !alias.scope !7
  %broadcast.splatinsert77 = insertelement <2 x double> poison, double %47, i64 0
  %broadcast.splat78 = shufflevector <2 x double> %broadcast.splatinsert77, <2 x double> poison, <2 x i32> zeroinitializer
  %48 = load double, ptr %36, align 8, !alias.scope !7
  %broadcast.splatinsert80 = insertelement <2 x double> poison, double %48, i64 0
  %broadcast.splat81 = shufflevector <2 x double> %broadcast.splatinsert80, <2 x double> poison, <2 x i32> zeroinitializer
  %49 = load double, ptr %37, align 8, !alias.scope !7
  %broadcast.splatinsert83 = insertelement <2 x double> poison, double %49, i64 0
  %broadcast.splat84 = shufflevector <2 x double> %broadcast.splatinsert83, <2 x double> poison, <2 x i32> zeroinitializer
  %50 = load double, ptr %38, align 8, !alias.scope !7
  %broadcast.splatinsert86 = insertelement <2 x double> poison, double %50, i64 0
  %broadcast.splat87 = shufflevector <2 x double> %broadcast.splatinsert86, <2 x double> poison, <2 x i32> zeroinitializer
  %51 = load double, ptr %39, align 8, !alias.scope !7
  %broadcast.splatinsert89 = insertelement <2 x double> poison, double %51, i64 0
  %broadcast.splat90 = shufflevector <2 x double> %broadcast.splatinsert89, <2 x double> poison, <2 x i32> zeroinitializer
  %52 = load double, ptr %40, align 8, !alias.scope !7
  %broadcast.splatinsert92 = insertelement <2 x double> poison, double %52, i64 0
  %broadcast.splat93 = shufflevector <2 x double> %broadcast.splatinsert92, <2 x double> poison, <2 x i32> zeroinitializer
  %53 = load double, ptr %41, align 8, !alias.scope !7
  %broadcast.splatinsert95 = insertelement <2 x double> poison, double %53, i64 0
  %broadcast.splat96 = shufflevector <2 x double> %broadcast.splatinsert95, <2 x double> poison, <2 x i32> zeroinitializer
  %54 = load double, ptr %42, align 8, !alias.scope !7
  %broadcast.splatinsert98 = insertelement <2 x double> poison, double %54, i64 0
  %broadcast.splat99 = shufflevector <2 x double> %broadcast.splatinsert98, <2 x double> poison, <2 x i32> zeroinitializer
  %55 = load double, ptr %43, align 8, !alias.scope !7
  %broadcast.splatinsert101 = insertelement <2 x double> poison, double %55, i64 0
  %broadcast.splat102 = shufflevector <2 x double> %broadcast.splatinsert101, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %56 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %index
  store <2 x double> zeroinitializer, ptr %56, align 8, !alias.scope !10, !noalias !12
  %57 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index
  %wide.load = load <2 x double>, ptr %57, align 8, !alias.scope !14
  %58 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> zeroinitializer)
  store <2 x double> %58, ptr %56, align 8, !alias.scope !10, !noalias !12
  %59 = getelementptr inbounds nuw i8, ptr %57, i64 96
  %wide.load70 = load <2 x double>, ptr %59, align 8, !alias.scope !14
  %60 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat72, <2 x double> %wide.load70, <2 x double> %58)
  store <2 x double> %60, ptr %56, align 8, !alias.scope !10, !noalias !12
  %61 = getelementptr inbounds nuw i8, ptr %57, i64 192
  %wide.load73 = load <2 x double>, ptr %61, align 8, !alias.scope !14
  %62 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat75, <2 x double> %wide.load73, <2 x double> %60)
  store <2 x double> %62, ptr %56, align 8, !alias.scope !10, !noalias !12
  %63 = getelementptr inbounds nuw i8, ptr %57, i64 288
  %wide.load76 = load <2 x double>, ptr %63, align 8, !alias.scope !14
  %64 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat78, <2 x double> %wide.load76, <2 x double> %62)
  store <2 x double> %64, ptr %56, align 8, !alias.scope !10, !noalias !12
  %65 = getelementptr inbounds nuw i8, ptr %57, i64 384
  %wide.load79 = load <2 x double>, ptr %65, align 8, !alias.scope !14
  %66 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat81, <2 x double> %wide.load79, <2 x double> %64)
  store <2 x double> %66, ptr %56, align 8, !alias.scope !10, !noalias !12
  %67 = getelementptr inbounds nuw i8, ptr %57, i64 480
  %wide.load82 = load <2 x double>, ptr %67, align 8, !alias.scope !14
  %68 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat84, <2 x double> %wide.load82, <2 x double> %66)
  store <2 x double> %68, ptr %56, align 8, !alias.scope !10, !noalias !12
  %69 = getelementptr inbounds nuw i8, ptr %57, i64 576
  %wide.load85 = load <2 x double>, ptr %69, align 8, !alias.scope !14
  %70 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat87, <2 x double> %wide.load85, <2 x double> %68)
  store <2 x double> %70, ptr %56, align 8, !alias.scope !10, !noalias !12
  %71 = getelementptr inbounds nuw i8, ptr %57, i64 672
  %wide.load88 = load <2 x double>, ptr %71, align 8, !alias.scope !14
  %72 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat90, <2 x double> %wide.load88, <2 x double> %70)
  store <2 x double> %72, ptr %56, align 8, !alias.scope !10, !noalias !12
  %73 = getelementptr inbounds nuw i8, ptr %57, i64 768
  %wide.load91 = load <2 x double>, ptr %73, align 8, !alias.scope !14
  %74 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat93, <2 x double> %wide.load91, <2 x double> %72)
  store <2 x double> %74, ptr %56, align 8, !alias.scope !10, !noalias !12
  %75 = getelementptr inbounds nuw i8, ptr %57, i64 864
  %wide.load94 = load <2 x double>, ptr %75, align 8, !alias.scope !14
  %76 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat96, <2 x double> %wide.load94, <2 x double> %74)
  store <2 x double> %76, ptr %56, align 8, !alias.scope !10, !noalias !12
  %77 = getelementptr inbounds nuw i8, ptr %57, i64 960
  %wide.load97 = load <2 x double>, ptr %77, align 8, !alias.scope !14
  %78 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat99, <2 x double> %wide.load97, <2 x double> %76)
  store <2 x double> %78, ptr %56, align 8, !alias.scope !10, !noalias !12
  %79 = getelementptr inbounds nuw i8, ptr %57, i64 1056
  %wide.load100 = load <2 x double>, ptr %79, align 8, !alias.scope !14
  %80 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat102, <2 x double> %wide.load100, <2 x double> %78)
  store <2 x double> %80, ptr %56, align 8, !alias.scope !10, !noalias !12
  %index.next = add nuw i64 %index, 2
  %81 = icmp eq i64 %index.next, 12
  br i1 %81, label %.preheader, label %vector.body, !llvm.loop !15

.preheader:                                       ; preds = %vector.body, %scalar.ph
  %82 = getelementptr inbounds nuw i8, ptr %32, i64 8
  %83 = getelementptr inbounds nuw i8, ptr %32, i64 16
  %84 = getelementptr inbounds nuw i8, ptr %32, i64 24
  %85 = getelementptr inbounds nuw i8, ptr %32, i64 32
  %86 = getelementptr inbounds nuw i8, ptr %32, i64 40
  %87 = getelementptr inbounds nuw i8, ptr %32, i64 48
  %88 = getelementptr inbounds nuw i8, ptr %32, i64 56
  %89 = getelementptr inbounds nuw i8, ptr %32, i64 64
  %90 = getelementptr inbounds nuw i8, ptr %32, i64 72
  %91 = getelementptr inbounds nuw i8, ptr %32, i64 80
  %92 = getelementptr inbounds nuw i8, ptr %32, i64 88
  %93 = load double, ptr %5, align 8
  store double %93, ptr %32, align 8
  %94 = load double, ptr %7, align 8
  store double %94, ptr %82, align 8
  %95 = load double, ptr %8, align 8
  store double %95, ptr %83, align 8
  %96 = load double, ptr %9, align 8
  store double %96, ptr %84, align 8
  %97 = load double, ptr %10, align 8
  store double %97, ptr %85, align 8
  %98 = load double, ptr %11, align 8
  store double %98, ptr %86, align 8
  %99 = load double, ptr %12, align 8
  store double %99, ptr %87, align 8
  %100 = load double, ptr %13, align 8
  store double %100, ptr %88, align 8
  %101 = load double, ptr %14, align 8
  store double %101, ptr %89, align 8
  %102 = load double, ptr %15, align 8
  store double %102, ptr %90, align 8
  %103 = load double, ptr %16, align 8
  store double %103, ptr %91, align 8
  %104 = load double, ptr %17, align 8
  store double %104, ptr %92, align 8
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1
  %exitcond45.not = icmp eq i64 %indvars.iv.next43, 8
  br i1 %exitcond45.not, label %142, label %.preheader29, !llvm.loop !20

scalar.ph:                                        ; preds = %.preheader29, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ 0, %.preheader29 ]
  %105 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv
  store double 0.000000e+00, ptr %105, align 8
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  %106 = load double, ptr %32, align 8
  %107 = load double, ptr %invariant.gep, align 8
  %108 = tail call double @llvm.fmuladd.f64(double %106, double %107, double 0.000000e+00)
  store double %108, ptr %105, align 8
  %109 = load double, ptr %33, align 8
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 96
  %110 = load double, ptr %gep.1, align 8
  %111 = tail call double @llvm.fmuladd.f64(double %109, double %110, double %108)
  store double %111, ptr %105, align 8
  %112 = load double, ptr %34, align 8
  %gep.2 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 192
  %113 = load double, ptr %gep.2, align 8
  %114 = tail call double @llvm.fmuladd.f64(double %112, double %113, double %111)
  store double %114, ptr %105, align 8
  %115 = load double, ptr %35, align 8
  %gep.3 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 288
  %116 = load double, ptr %gep.3, align 8
  %117 = tail call double @llvm.fmuladd.f64(double %115, double %116, double %114)
  store double %117, ptr %105, align 8
  %118 = load double, ptr %36, align 8
  %gep.4 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 384
  %119 = load double, ptr %gep.4, align 8
  %120 = tail call double @llvm.fmuladd.f64(double %118, double %119, double %117)
  store double %120, ptr %105, align 8
  %121 = load double, ptr %37, align 8
  %gep.5 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 480
  %122 = load double, ptr %gep.5, align 8
  %123 = tail call double @llvm.fmuladd.f64(double %121, double %122, double %120)
  store double %123, ptr %105, align 8
  %124 = load double, ptr %38, align 8
  %gep.6 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 576
  %125 = load double, ptr %gep.6, align 8
  %126 = tail call double @llvm.fmuladd.f64(double %124, double %125, double %123)
  store double %126, ptr %105, align 8
  %127 = load double, ptr %39, align 8
  %gep.7 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 672
  %128 = load double, ptr %gep.7, align 8
  %129 = tail call double @llvm.fmuladd.f64(double %127, double %128, double %126)
  store double %129, ptr %105, align 8
  %130 = load double, ptr %40, align 8
  %gep.8 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 768
  %131 = load double, ptr %gep.8, align 8
  %132 = tail call double @llvm.fmuladd.f64(double %130, double %131, double %129)
  store double %132, ptr %105, align 8
  %133 = load double, ptr %41, align 8
  %gep.9 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 864
  %134 = load double, ptr %gep.9, align 8
  %135 = tail call double @llvm.fmuladd.f64(double %133, double %134, double %132)
  store double %135, ptr %105, align 8
  %136 = load double, ptr %42, align 8
  %gep.10 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 960
  %137 = load double, ptr %gep.10, align 8
  %138 = tail call double @llvm.fmuladd.f64(double %136, double %137, double %135)
  store double %138, ptr %105, align 8
  %139 = load double, ptr %43, align 8
  %gep.11 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 1056
  %140 = load double, ptr %gep.11, align 8
  %141 = tail call double @llvm.fmuladd.f64(double %139, double %140, double %138)
  store double %141, ptr %105, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 12
  br i1 %exitcond.not, label %.preheader, label %scalar.ph, !llvm.loop !21

142:                                              ; preds = %.preheader
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  %exitcond49.not = icmp eq i64 %indvars.iv.next47, 10
  br i1 %exitcond49.not, label %143, label %.preheader30, !llvm.loop !23

143:                                              ; preds = %142
  ret void
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 960, i32 noundef 8) #9
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 12, i32 noundef 8) #9
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 144, i32 noundef 8) #9
  tail call fastcc void @init_array(ptr noundef %3, ptr noundef %5)
  tail call void @kernel_doitgen(i32 poison, i32 poison, i32 poison, ptr noundef %3, ptr noundef %5, ptr noundef %4)
  %6 = icmp sgt i32 %0, 42
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load ptr, ptr %1, align 8
  %strcmpload = load i8, ptr %8, align 1
  %.not = icmp eq i8 %strcmpload, 0
  br i1 %.not, label %9, label %10

9:                                                ; preds = %7
  tail call fastcc void @print_array(ptr noundef %3)
  br label %10

10:                                               ; preds = %9, %7, %2
  tail call void @free(ptr noundef %3)
  tail call void @free(ptr noundef %4)
  tail call void @free(ptr noundef %5)
  ret i32 0
}

declare dso_local ptr @polybench_alloc_data(i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: write) uwtable
define internal fastcc void @init_array(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) unnamed_addr #4 {
  br label %.preheader37

.preheader37:                                     ; preds = %2, %middle.block
  %indvars.iv45 = phi i64 [ 0, %2 ], [ %indvars.iv.next46, %middle.block ]
  %3 = getelementptr inbounds nuw [768 x i8], ptr %0, i64 %indvars.iv45
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %indvars.iv45, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.preheader37
  %index = phi i64 [ 0, %.preheader37 ], [ %index.next, %vector.body ]
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %.preheader37 ], [ %vec.ind.next, %vector.body ]
  %4 = mul nuw nsw <2 x i64> %vec.ind, %broadcast.splat
  %5 = getelementptr inbounds nuw [96 x i8], ptr %3, i64 %index
  %6 = getelementptr inbounds nuw [96 x i8], ptr %3, i64 %index
  %7 = trunc <2 x i64> %4 to <2 x i32>
  %8 = urem <2 x i32> %7, splat (i32 12)
  %9 = uitofp nneg <2 x i32> %8 to <2 x double>
  %10 = fdiv <2 x double> %9, splat (double 1.200000e+01)
  %11 = extractelement <2 x double> %10, i64 0
  store double %11, ptr %5, align 8
  %12 = add <2 x i32> %7, splat (i32 1)
  %13 = urem <2 x i32> %12, splat (i32 12)
  %14 = uitofp nneg <2 x i32> %13 to <2 x double>
  %15 = fdiv <2 x double> %14, splat (double 1.200000e+01)
  %16 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %17 = getelementptr inbounds nuw i8, ptr %6, i64 104
  %18 = extractelement <2 x double> %15, i64 0
  store double %18, ptr %16, align 8
  %19 = add <2 x i32> %7, splat (i32 2)
  %20 = urem <2 x i32> %19, splat (i32 12)
  %21 = uitofp nneg <2 x i32> %20 to <2 x double>
  %22 = fdiv <2 x double> %21, splat (double 1.200000e+01)
  %23 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %24 = extractelement <2 x double> %22, i64 0
  store double %24, ptr %23, align 8
  %25 = shufflevector <2 x double> %15, <2 x double> %22, <2 x i32> <i32 1, i32 3>
  store <2 x double> %25, ptr %17, align 8
  %26 = add <2 x i32> %7, splat (i32 3)
  %27 = urem <2 x i32> %26, splat (i32 12)
  %28 = uitofp nneg <2 x i32> %27 to <2 x double>
  %29 = fdiv <2 x double> %28, splat (double 1.200000e+01)
  %30 = getelementptr inbounds nuw i8, ptr %5, i64 24
  %31 = getelementptr inbounds nuw i8, ptr %6, i64 120
  %32 = extractelement <2 x double> %29, i64 0
  store double %32, ptr %30, align 8
  %33 = add <2 x i32> %7, splat (i32 4)
  %34 = urem <2 x i32> %33, splat (i32 12)
  %35 = uitofp nneg <2 x i32> %34 to <2 x double>
  %36 = fdiv <2 x double> %35, splat (double 1.200000e+01)
  %37 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %38 = extractelement <2 x double> %36, i64 0
  store double %38, ptr %37, align 8
  %39 = shufflevector <2 x double> %29, <2 x double> %36, <2 x i32> <i32 1, i32 3>
  store <2 x double> %39, ptr %31, align 8
  %40 = add <2 x i32> %7, splat (i32 5)
  %41 = urem <2 x i32> %40, splat (i32 12)
  %42 = uitofp nneg <2 x i32> %41 to <2 x double>
  %43 = fdiv <2 x double> %42, splat (double 1.200000e+01)
  %44 = getelementptr inbounds nuw i8, ptr %5, i64 40
  %45 = getelementptr inbounds nuw i8, ptr %6, i64 136
  %46 = extractelement <2 x double> %43, i64 0
  store double %46, ptr %44, align 8
  %47 = add <2 x i32> %7, splat (i32 6)
  %48 = urem <2 x i32> %47, splat (i32 12)
  %49 = uitofp nneg <2 x i32> %48 to <2 x double>
  %50 = fdiv <2 x double> %49, splat (double 1.200000e+01)
  %51 = getelementptr inbounds nuw i8, ptr %5, i64 48
  %52 = extractelement <2 x double> %50, i64 0
  store double %52, ptr %51, align 8
  %53 = shufflevector <2 x double> %43, <2 x double> %50, <2 x i32> <i32 1, i32 3>
  store <2 x double> %53, ptr %45, align 8
  %54 = add <2 x i32> %7, splat (i32 7)
  %55 = urem <2 x i32> %54, splat (i32 12)
  %56 = uitofp nneg <2 x i32> %55 to <2 x double>
  %57 = fdiv <2 x double> %56, splat (double 1.200000e+01)
  %58 = getelementptr inbounds nuw i8, ptr %5, i64 56
  %59 = getelementptr inbounds nuw i8, ptr %6, i64 152
  %60 = extractelement <2 x double> %57, i64 0
  store double %60, ptr %58, align 8
  %61 = add <2 x i32> %7, splat (i32 8)
  %62 = urem <2 x i32> %61, splat (i32 12)
  %63 = uitofp nneg <2 x i32> %62 to <2 x double>
  %64 = fdiv <2 x double> %63, splat (double 1.200000e+01)
  %65 = getelementptr inbounds nuw i8, ptr %5, i64 64
  %66 = extractelement <2 x double> %64, i64 0
  store double %66, ptr %65, align 8
  %67 = shufflevector <2 x double> %57, <2 x double> %64, <2 x i32> <i32 1, i32 3>
  store <2 x double> %67, ptr %59, align 8
  %68 = add <2 x i32> %7, splat (i32 9)
  %69 = urem <2 x i32> %68, splat (i32 12)
  %70 = uitofp nneg <2 x i32> %69 to <2 x double>
  %71 = fdiv <2 x double> %70, splat (double 1.200000e+01)
  %72 = getelementptr inbounds nuw i8, ptr %5, i64 72
  %73 = getelementptr inbounds nuw i8, ptr %6, i64 168
  %74 = extractelement <2 x double> %71, i64 0
  store double %74, ptr %72, align 8
  %75 = add <2 x i32> %7, splat (i32 10)
  %76 = urem <2 x i32> %75, splat (i32 12)
  %77 = uitofp nneg <2 x i32> %76 to <2 x double>
  %78 = fdiv <2 x double> %77, splat (double 1.200000e+01)
  %79 = getelementptr inbounds nuw i8, ptr %5, i64 80
  %80 = extractelement <2 x double> %78, i64 0
  store double %80, ptr %79, align 8
  %81 = shufflevector <2 x double> %71, <2 x double> %78, <2 x i32> <i32 1, i32 3>
  store <2 x double> %81, ptr %73, align 8
  %82 = add <2 x i32> %7, splat (i32 11)
  %83 = urem <2 x i32> %82, splat (i32 12)
  %84 = uitofp nneg <2 x i32> %83 to <2 x double>
  %85 = fdiv <2 x double> %84, splat (double 1.200000e+01)
  %86 = getelementptr inbounds nuw i8, ptr %5, i64 88
  %87 = getelementptr inbounds nuw i8, ptr %6, i64 184
  %88 = shufflevector <2 x double> %85, <2 x double> %10, <2 x i32> <i32 0, i32 3>
  store <2 x double> %88, ptr %86, align 8
  %89 = extractelement <2 x double> %85, i64 1
  store double %89, ptr %87, align 8
  %index.next = add nuw i64 %index, 2
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %90 = icmp eq i64 %index.next, 8
  br i1 %90, label %middle.block, label %vector.body, !llvm.loop !24

middle.block:                                     ; preds = %vector.body
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1
  %exitcond48.not = icmp eq i64 %indvars.iv.next46, 10
  br i1 %exitcond48.not, label %vector.body2, label %.preheader37, !llvm.loop !25

vector.body2:                                     ; preds = %middle.block
  store double 0.000000e+00, ptr %1, align 8
  %91 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %92 = getelementptr inbounds nuw i8, ptr %1, i64 104
  store double 0.000000e+00, ptr %91, align 8
  %93 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double 0.000000e+00, ptr %93, align 8
  store <2 x double> <double f0x3FB5555555555555, double f0x3FC5555555555555>, ptr %92, align 8
  %94 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %95 = getelementptr inbounds nuw i8, ptr %1, i64 120
  store double 0.000000e+00, ptr %94, align 8
  %96 = getelementptr inbounds nuw i8, ptr %1, i64 32
  store double 0.000000e+00, ptr %96, align 8
  store <2 x double> <double 2.500000e-01, double f0x3FD5555555555555>, ptr %95, align 8
  %97 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %98 = getelementptr inbounds nuw i8, ptr %1, i64 136
  store double 0.000000e+00, ptr %97, align 8
  %99 = getelementptr inbounds nuw i8, ptr %1, i64 48
  store double 0.000000e+00, ptr %99, align 8
  store <2 x double> <double f0x3FDAAAAAAAAAAAAB, double 5.000000e-01>, ptr %98, align 8
  %100 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %101 = getelementptr inbounds nuw i8, ptr %1, i64 152
  store double 0.000000e+00, ptr %100, align 8
  %102 = getelementptr inbounds nuw i8, ptr %1, i64 64
  store double 0.000000e+00, ptr %102, align 8
  store <2 x double> <double f0x3FE2AAAAAAAAAAAB, double f0x3FE5555555555555>, ptr %101, align 8
  %103 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %104 = getelementptr inbounds nuw i8, ptr %1, i64 168
  store double 0.000000e+00, ptr %103, align 8
  %105 = getelementptr inbounds nuw i8, ptr %1, i64 80
  store double 0.000000e+00, ptr %105, align 8
  store <2 x double> <double 7.500000e-01, double f0x3FEAAAAAAAAAAAAB>, ptr %104, align 8
  %106 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %107 = getelementptr inbounds nuw i8, ptr %1, i64 184
  store <2 x double> zeroinitializer, ptr %106, align 8
  store double f0x3FED555555555555, ptr %107, align 8
  %108 = getelementptr inbounds nuw i8, ptr %1, i64 192
  store double 0.000000e+00, ptr %108, align 8
  %109 = getelementptr inbounds nuw i8, ptr %1, i64 200
  %110 = getelementptr inbounds nuw i8, ptr %1, i64 296
  store double f0x3FC5555555555555, ptr %109, align 8
  %111 = getelementptr inbounds nuw i8, ptr %1, i64 208
  store double f0x3FD5555555555555, ptr %111, align 8
  store <2 x double> <double 2.500000e-01, double 5.000000e-01>, ptr %110, align 8
  %112 = getelementptr inbounds nuw i8, ptr %1, i64 216
  %113 = getelementptr inbounds nuw i8, ptr %1, i64 312
  store double 5.000000e-01, ptr %112, align 8
  %114 = getelementptr inbounds nuw i8, ptr %1, i64 224
  store double f0x3FE5555555555555, ptr %114, align 8
  store <2 x double> <double 7.500000e-01, double 0.000000e+00>, ptr %113, align 8
  %115 = getelementptr inbounds nuw i8, ptr %1, i64 232
  %116 = getelementptr inbounds nuw i8, ptr %1, i64 328
  store double f0x3FEAAAAAAAAAAAAB, ptr %115, align 8
  %117 = getelementptr inbounds nuw i8, ptr %1, i64 240
  store double 0.000000e+00, ptr %117, align 8
  store <2 x double> <double 2.500000e-01, double 5.000000e-01>, ptr %116, align 8
  %118 = getelementptr inbounds nuw i8, ptr %1, i64 248
  %119 = getelementptr inbounds nuw i8, ptr %1, i64 344
  store double f0x3FC5555555555555, ptr %118, align 8
  %120 = getelementptr inbounds nuw i8, ptr %1, i64 256
  store double f0x3FD5555555555555, ptr %120, align 8
  store <2 x double> <double 7.500000e-01, double 0.000000e+00>, ptr %119, align 8
  %121 = getelementptr inbounds nuw i8, ptr %1, i64 264
  %122 = getelementptr inbounds nuw i8, ptr %1, i64 360
  store double 5.000000e-01, ptr %121, align 8
  %123 = getelementptr inbounds nuw i8, ptr %1, i64 272
  store double f0x3FE5555555555555, ptr %123, align 8
  store <2 x double> <double 2.500000e-01, double 5.000000e-01>, ptr %122, align 8
  %124 = getelementptr inbounds nuw i8, ptr %1, i64 280
  %125 = getelementptr inbounds nuw i8, ptr %1, i64 376
  store <2 x double> <double f0x3FEAAAAAAAAAAAAB, double 0.000000e+00>, ptr %124, align 8
  store double 7.500000e-01, ptr %125, align 8
  %126 = getelementptr inbounds nuw i8, ptr %1, i64 384
  store double 0.000000e+00, ptr %126, align 8
  %127 = getelementptr inbounds nuw i8, ptr %1, i64 392
  %128 = getelementptr inbounds nuw i8, ptr %1, i64 488
  store double f0x3FD5555555555555, ptr %127, align 8
  %129 = getelementptr inbounds nuw i8, ptr %1, i64 400
  store double f0x3FE5555555555555, ptr %129, align 8
  store <2 x double> <double f0x3FDAAAAAAAAAAAAB, double f0x3FEAAAAAAAAAAAAB>, ptr %128, align 8
  %130 = getelementptr inbounds nuw i8, ptr %1, i64 408
  %131 = getelementptr inbounds nuw i8, ptr %1, i64 504
  store double 0.000000e+00, ptr %130, align 8
  %132 = getelementptr inbounds nuw i8, ptr %1, i64 416
  store double f0x3FD5555555555555, ptr %132, align 8
  store <2 x double> <double 2.500000e-01, double f0x3FE5555555555555>, ptr %131, align 8
  %133 = getelementptr inbounds nuw i8, ptr %1, i64 424
  %134 = getelementptr inbounds nuw i8, ptr %1, i64 520
  store double f0x3FE5555555555555, ptr %133, align 8
  %135 = getelementptr inbounds nuw i8, ptr %1, i64 432
  store double 0.000000e+00, ptr %135, align 8
  store <2 x double> <double f0x3FB5555555555555, double 5.000000e-01>, ptr %134, align 8
  %136 = getelementptr inbounds nuw i8, ptr %1, i64 440
  %137 = getelementptr inbounds nuw i8, ptr %1, i64 536
  store double f0x3FD5555555555555, ptr %136, align 8
  %138 = getelementptr inbounds nuw i8, ptr %1, i64 448
  store double f0x3FE5555555555555, ptr %138, align 8
  store <2 x double> <double f0x3FED555555555555, double f0x3FD5555555555555>, ptr %137, align 8
  %139 = getelementptr inbounds nuw i8, ptr %1, i64 456
  %140 = getelementptr inbounds nuw i8, ptr %1, i64 552
  store double 0.000000e+00, ptr %139, align 8
  %141 = getelementptr inbounds nuw i8, ptr %1, i64 464
  store double f0x3FD5555555555555, ptr %141, align 8
  store <2 x double> <double 7.500000e-01, double f0x3FC5555555555555>, ptr %140, align 8
  %142 = getelementptr inbounds nuw i8, ptr %1, i64 472
  %143 = getelementptr inbounds nuw i8, ptr %1, i64 568
  store <2 x double> <double f0x3FE5555555555555, double 0.000000e+00>, ptr %142, align 8
  store double f0x3FE2AAAAAAAAAAAB, ptr %143, align 8
  %144 = getelementptr inbounds nuw i8, ptr %1, i64 576
  store double 0.000000e+00, ptr %144, align 8
  %145 = getelementptr inbounds nuw i8, ptr %1, i64 584
  %146 = getelementptr inbounds nuw i8, ptr %1, i64 680
  store double 5.000000e-01, ptr %145, align 8
  %147 = getelementptr inbounds nuw i8, ptr %1, i64 592
  store double 0.000000e+00, ptr %147, align 8
  store <2 x double> <double f0x3FE2AAAAAAAAAAAB, double f0x3FC5555555555555>, ptr %146, align 8
  %148 = getelementptr inbounds nuw i8, ptr %1, i64 600
  %149 = getelementptr inbounds nuw i8, ptr %1, i64 696
  store double 5.000000e-01, ptr %148, align 8
  %150 = getelementptr inbounds nuw i8, ptr %1, i64 608
  store double 0.000000e+00, ptr %150, align 8
  store <2 x double> <double 7.500000e-01, double f0x3FD5555555555555>, ptr %149, align 8
  %151 = getelementptr inbounds nuw i8, ptr %1, i64 616
  %152 = getelementptr inbounds nuw i8, ptr %1, i64 712
  store double 5.000000e-01, ptr %151, align 8
  %153 = getelementptr inbounds nuw i8, ptr %1, i64 624
  store double 0.000000e+00, ptr %153, align 8
  store <2 x double> <double f0x3FED555555555555, double 5.000000e-01>, ptr %152, align 8
  %154 = getelementptr inbounds nuw i8, ptr %1, i64 632
  %155 = getelementptr inbounds nuw i8, ptr %1, i64 728
  store double 5.000000e-01, ptr %154, align 8
  %156 = getelementptr inbounds nuw i8, ptr %1, i64 640
  store double 0.000000e+00, ptr %156, align 8
  store <2 x double> <double f0x3FB5555555555555, double f0x3FE5555555555555>, ptr %155, align 8
  %157 = getelementptr inbounds nuw i8, ptr %1, i64 648
  %158 = getelementptr inbounds nuw i8, ptr %1, i64 744
  store double 5.000000e-01, ptr %157, align 8
  %159 = getelementptr inbounds nuw i8, ptr %1, i64 656
  store double 0.000000e+00, ptr %159, align 8
  store <2 x double> <double 2.500000e-01, double f0x3FEAAAAAAAAAAAAB>, ptr %158, align 8
  %160 = getelementptr inbounds nuw i8, ptr %1, i64 664
  %161 = getelementptr inbounds nuw i8, ptr %1, i64 760
  store <2 x double> <double 5.000000e-01, double 0.000000e+00>, ptr %160, align 8
  store double f0x3FDAAAAAAAAAAAAB, ptr %161, align 8
  %162 = getelementptr inbounds nuw i8, ptr %1, i64 768
  store double 0.000000e+00, ptr %162, align 8
  %163 = getelementptr inbounds nuw i8, ptr %1, i64 776
  %164 = getelementptr inbounds nuw i8, ptr %1, i64 872
  store double f0x3FE5555555555555, ptr %163, align 8
  %165 = getelementptr inbounds nuw i8, ptr %1, i64 784
  store double f0x3FD5555555555555, ptr %165, align 8
  store <2 x double> <double 7.500000e-01, double 5.000000e-01>, ptr %164, align 8
  %166 = getelementptr inbounds nuw i8, ptr %1, i64 792
  %167 = getelementptr inbounds nuw i8, ptr %1, i64 888
  store double 0.000000e+00, ptr %166, align 8
  %168 = getelementptr inbounds nuw i8, ptr %1, i64 800
  store double f0x3FE5555555555555, ptr %168, align 8
  store <2 x double> <double 2.500000e-01, double 0.000000e+00>, ptr %167, align 8
  %169 = getelementptr inbounds nuw i8, ptr %1, i64 808
  %170 = getelementptr inbounds nuw i8, ptr %1, i64 904
  store double f0x3FD5555555555555, ptr %169, align 8
  %171 = getelementptr inbounds nuw i8, ptr %1, i64 816
  store double 0.000000e+00, ptr %171, align 8
  store <2 x double> <double 7.500000e-01, double 5.000000e-01>, ptr %170, align 8
  %172 = getelementptr inbounds nuw i8, ptr %1, i64 824
  %173 = getelementptr inbounds nuw i8, ptr %1, i64 920
  store double f0x3FE5555555555555, ptr %172, align 8
  %174 = getelementptr inbounds nuw i8, ptr %1, i64 832
  store double f0x3FD5555555555555, ptr %174, align 8
  store <2 x double> <double 2.500000e-01, double 0.000000e+00>, ptr %173, align 8
  %175 = getelementptr inbounds nuw i8, ptr %1, i64 840
  %176 = getelementptr inbounds nuw i8, ptr %1, i64 936
  store double 0.000000e+00, ptr %175, align 8
  %177 = getelementptr inbounds nuw i8, ptr %1, i64 848
  store double f0x3FE5555555555555, ptr %177, align 8
  store <2 x double> <double 7.500000e-01, double 5.000000e-01>, ptr %176, align 8
  %178 = getelementptr inbounds nuw i8, ptr %1, i64 856
  %179 = getelementptr inbounds nuw i8, ptr %1, i64 952
  store <2 x double> <double f0x3FD5555555555555, double 0.000000e+00>, ptr %178, align 8
  store double 2.500000e-01, ptr %179, align 8
  %180 = getelementptr inbounds nuw i8, ptr %1, i64 960
  store double 0.000000e+00, ptr %180, align 8
  %181 = getelementptr inbounds nuw i8, ptr %1, i64 968
  %182 = getelementptr inbounds nuw i8, ptr %1, i64 1064
  store double f0x3FEAAAAAAAAAAAAB, ptr %181, align 8
  %183 = getelementptr inbounds nuw i8, ptr %1, i64 976
  store double f0x3FE5555555555555, ptr %183, align 8
  store <2 x double> <double f0x3FED555555555555, double f0x3FEAAAAAAAAAAAAB>, ptr %182, align 8
  %184 = getelementptr inbounds nuw i8, ptr %1, i64 984
  %185 = getelementptr inbounds nuw i8, ptr %1, i64 1080
  store double 5.000000e-01, ptr %184, align 8
  %186 = getelementptr inbounds nuw i8, ptr %1, i64 992
  store double f0x3FD5555555555555, ptr %186, align 8
  store <2 x double> <double 7.500000e-01, double f0x3FE5555555555555>, ptr %185, align 8
  %187 = getelementptr inbounds nuw i8, ptr %1, i64 1000
  %188 = getelementptr inbounds nuw i8, ptr %1, i64 1096
  store double f0x3FC5555555555555, ptr %187, align 8
  %189 = getelementptr inbounds nuw i8, ptr %1, i64 1008
  store double 0.000000e+00, ptr %189, align 8
  store <2 x double> <double f0x3FE2AAAAAAAAAAAB, double 5.000000e-01>, ptr %188, align 8
  %190 = getelementptr inbounds nuw i8, ptr %1, i64 1016
  %191 = getelementptr inbounds nuw i8, ptr %1, i64 1112
  store double f0x3FEAAAAAAAAAAAAB, ptr %190, align 8
  %192 = getelementptr inbounds nuw i8, ptr %1, i64 1024
  store double f0x3FE5555555555555, ptr %192, align 8
  store <2 x double> <double f0x3FDAAAAAAAAAAAAB, double f0x3FD5555555555555>, ptr %191, align 8
  %193 = getelementptr inbounds nuw i8, ptr %1, i64 1032
  %194 = getelementptr inbounds nuw i8, ptr %1, i64 1128
  store double 5.000000e-01, ptr %193, align 8
  %195 = getelementptr inbounds nuw i8, ptr %1, i64 1040
  store double f0x3FD5555555555555, ptr %195, align 8
  store <2 x double> <double 2.500000e-01, double f0x3FC5555555555555>, ptr %194, align 8
  %196 = getelementptr inbounds nuw i8, ptr %1, i64 1048
  %197 = getelementptr inbounds nuw i8, ptr %1, i64 1144
  store <2 x double> <double f0x3FC5555555555555, double 0.000000e+00>, ptr %196, align 8
  store double f0x3FB5555555555555, ptr %197, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @print_array(ptr nofree noundef readonly captures(none) %0) unnamed_addr #2 {
  %2 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %fwrite = tail call i64 @fwrite(ptr nonnull @"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@", i64 22, i64 1, ptr %2)
  %3 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@", ptr noundef nonnull @"??_C@_01FHEEJDEE@A?$AA@") #9
  br label %.preheader24

.preheader24:                                     ; preds = %1, %59
  %indvars.iv30 = phi i64 [ 0, %1 ], [ %indvars.iv.next31, %59 ]
  %5 = mul nuw nsw i64 %indvars.iv30, 96
  %6 = getelementptr inbounds nuw [768 x i8], ptr %0, i64 %indvars.iv30
  br label %.preheader

.preheader:                                       ; preds = %.preheader24, %48
  %indvars.iv = phi i64 [ 0, %.preheader24 ], [ %indvars.iv.next, %48 ]
  %7 = mul nuw nsw i64 %indvars.iv, 12
  %8 = add nuw nsw i64 %7, %5
  %9 = getelementptr inbounds nuw [96 x i8], ptr %6, i64 %indvars.iv
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
  %.phi.trans.insert35 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.pre36 = load double, ptr %.phi.trans.insert35, align 8
  %21 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@", double noundef %.pre36) #9
  %.phi.trans.insert38 = getelementptr inbounds nuw i8, ptr %9, i64 24
  %.pre39 = load double, ptr %.phi.trans.insert38, align 8
  %23 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef nonnull @"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@", double noundef %.pre39) #9
  %25 = trunc i64 %8 to i32
  %26 = add i32 %25, 4
  %27 = urem i32 %26, 20
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %15
  %30 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %fputc.4 = tail call i32 @fputc(i32 10, ptr %30)
  br label %31

31:                                               ; preds = %29, %15
  %32 = getelementptr inbounds nuw i8, ptr %9, i64 32
  %33 = load double, ptr %32, align 8
  %34 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %35 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %34, ptr noundef nonnull @"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@", double noundef %33) #9
  %.phi.trans.insert41 = getelementptr inbounds nuw i8, ptr %9, i64 40
  %.pre42 = load double, ptr %.phi.trans.insert41, align 8
  %36 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %37 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %36, ptr noundef nonnull @"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@", double noundef %.pre42) #9
  %.phi.trans.insert44 = getelementptr inbounds nuw i8, ptr %9, i64 48
  %.pre45 = load double, ptr %.phi.trans.insert44, align 8
  %38 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %39 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %38, ptr noundef nonnull @"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@", double noundef %.pre45) #9
  %.phi.trans.insert47 = getelementptr inbounds nuw i8, ptr %9, i64 56
  %.pre48 = load double, ptr %.phi.trans.insert47, align 8
  %40 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %41 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %40, ptr noundef nonnull @"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@", double noundef %.pre48) #9
  %42 = trunc i64 %8 to i32
  %43 = add i32 %42, 8
  %44 = urem i32 %43, 20
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %31
  %47 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %fputc.8 = tail call i32 @fputc(i32 10, ptr %47)
  br label %48

48:                                               ; preds = %46, %31
  %49 = getelementptr inbounds nuw i8, ptr %9, i64 64
  %50 = load double, ptr %49, align 8
  %51 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %52 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %51, ptr noundef nonnull @"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@", double noundef %50) #9
  %.phi.trans.insert50 = getelementptr inbounds nuw i8, ptr %9, i64 72
  %.pre51 = load double, ptr %.phi.trans.insert50, align 8
  %53 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %54 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %53, ptr noundef nonnull @"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@", double noundef %.pre51) #9
  %.phi.trans.insert53 = getelementptr inbounds nuw i8, ptr %9, i64 80
  %.pre54 = load double, ptr %.phi.trans.insert53, align 8
  %55 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %56 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %55, ptr noundef nonnull @"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@", double noundef %.pre54) #9
  %.phi.trans.insert56 = getelementptr inbounds nuw i8, ptr %9, i64 88
  %.pre57 = load double, ptr %.phi.trans.insert56, align 8
  %57 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %58 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %57, ptr noundef nonnull @"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@", double noundef %.pre57) #9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %59, label %.preheader, !llvm.loop !26

59:                                               ; preds = %48
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  %exitcond33.not = icmp eq i64 %indvars.iv.next31, 10
  br i1 %exitcond33.not, label %60, label %.preheader24, !llvm.loop !27

60:                                               ; preds = %59
  %61 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %62 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %61, ptr noundef nonnull @"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@", ptr noundef nonnull @"??_C@_01FHEEJDEE@A?$AA@") #9
  %63 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %fwrite22 = tail call i64 @fwrite(ptr nonnull @"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@", i64 22, i64 1, ptr %63)
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare dso_local void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #6

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local ptr @__local_stdio_printf_options() local_unnamed_addr #2 comdat {
  ret ptr @__local_stdio_printf_options._OptionsStorage
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i32 @fprintf(ptr noundef %0, ptr noundef %1, ...) local_unnamed_addr #2 comdat {
  %3 = alloca ptr, align 8
  call void @llvm.va_start.p0(ptr nonnull %3)
  %4 = load ptr, ptr %3, align 8
  %5 = call i32 @_vfprintf_l(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef %4)
  call void @llvm.va_end.p0(ptr nonnull %3)
  ret i32 %5
}

declare dso_local ptr @__acrt_iob_func(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i32 @_vfprintf_l(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 comdat {
  %5 = tail call ptr @__local_stdio_printf_options()
  %6 = load i64, ptr %5, align 8
  %7 = tail call i32 @__stdio_common_vfprintf(i64 noundef %6, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #9
  ret i32 %7
}

declare dso_local i32 @__stdio_common_vfprintf(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #8

attributes #0 = { nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #7 = { nofree nounwind }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 24.0.0git (https://github.com/llvm/llvm-project.git 6f4196219399a3502cea3beb2d0c8c28b2241649)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\linear-algebra\\kernels\\doitgen\\doitgen.c", directory: "C:\\work\\llvm-profitability-research")
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
!12 = !{!8, !13}
!13 = distinct !{!13, !9}
!14 = !{!13}
!15 = distinct !{!15, !16, !17, !18, !19}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"llvm.loop.isvectorized", i32 1}
!18 = !{!"llvm.loop.vectorize.body", i32 1}
!19 = !{!"llvm.loop.unroll.runtime.disable"}
!20 = distinct !{!20, !16}
!21 = distinct !{!21, !16, !17, !22}
!22 = !{!"llvm.loop.vectorize.epilogue", i32 1}
!23 = distinct !{!23, !16}
!24 = distinct !{!24, !16, !17, !18, !19}
!25 = distinct !{!25, !16}
!26 = distinct !{!26, !16}
!27 = distinct !{!27, !16}
