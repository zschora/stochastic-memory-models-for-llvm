; ModuleID = 'C:\work\llvm-profitability-research\results\r1\EXP-20261107-R12-discovery\polybench\jacobi-2d\frontend.ll'
source_filename = "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\stencils\\jacobi-2d\\jacobi-2d.c"
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
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 900, i32 noundef 8) #8
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 900, i32 noundef 8) #8
  tail call fastcc void @init_array(ptr noundef %3, ptr noundef %4)
  tail call fastcc void @kernel_jacobi_2d(ptr noundef %3, ptr noundef %4)
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
  tail call void @free(ptr noundef %4)
  ret i32 0
}

declare dso_local ptr @polybench_alloc_data(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: write) uwtable
define internal fastcc void @init_array(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) unnamed_addr #2 {
  %3 = ptrtoaddr ptr %0 to i64
  %4 = ptrtoaddr ptr %1 to i64
  %5 = sub i64 %3, %4
  %diff.check = icmp ugt i64 %5, -16
  br label %.preheader

.preheader:                                       ; preds = %2, %middle.block
  %indvars.iv22 = phi i64 [ 0, %2 ], [ %indvars.iv.next23, %middle.block ]
  %6 = trunc nuw nsw i64 %indvars.iv22 to i32
  %7 = uitofp nneg i32 %6 to double
  %8 = getelementptr inbounds nuw [240 x i8], ptr %0, i64 %indvars.iv22
  %9 = getelementptr inbounds nuw [240 x i8], ptr %1, i64 %indvars.iv22
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.body

scalar.ph.preheader:                              ; preds = %.preheader
  %10 = insertelement <2 x double> poison, double %7, i64 0
  %11 = shufflevector <2 x double> %10, <2 x double> poison, <2 x i32> zeroinitializer
  br label %scalar.ph

vector.body:                                      ; preds = %.preheader
  %broadcast.splatinsert = insertelement <2 x double> poison, double %7, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %12 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> <double 2.000000e+00, double 3.000000e+00>, <2 x double> splat (double 2.000000e+00))
  %13 = fdiv <2 x double> %12, splat (double 3.000000e+01)
  store <2 x double> %13, ptr %8, align 8
  %14 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> <double 3.000000e+00, double 4.000000e+00>, <2 x double> splat (double 3.000000e+00))
  %15 = fdiv <2 x double> %14, splat (double 3.000000e+01)
  store <2 x double> %15, ptr %9, align 8
  %16 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> <double 4.000000e+00, double 5.000000e+00>, <2 x double> splat (double 2.000000e+00))
  %17 = fdiv <2 x double> %16, splat (double 3.000000e+01)
  %18 = getelementptr inbounds nuw i8, ptr %8, i64 16
  store <2 x double> %17, ptr %18, align 8
  %19 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> <double 5.000000e+00, double 6.000000e+00>, <2 x double> splat (double 3.000000e+00))
  %20 = fdiv <2 x double> %19, splat (double 3.000000e+01)
  %21 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store <2 x double> %20, ptr %21, align 8
  %22 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> <double 6.000000e+00, double 7.000000e+00>, <2 x double> splat (double 2.000000e+00))
  %23 = fdiv <2 x double> %22, splat (double 3.000000e+01)
  %24 = getelementptr inbounds nuw i8, ptr %8, i64 32
  store <2 x double> %23, ptr %24, align 8
  %25 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> <double 7.000000e+00, double 8.000000e+00>, <2 x double> splat (double 3.000000e+00))
  %26 = fdiv <2 x double> %25, splat (double 3.000000e+01)
  %27 = getelementptr inbounds nuw i8, ptr %9, i64 32
  store <2 x double> %26, ptr %27, align 8
  %28 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> <double 8.000000e+00, double 9.000000e+00>, <2 x double> splat (double 2.000000e+00))
  %29 = fdiv <2 x double> %28, splat (double 3.000000e+01)
  %30 = getelementptr inbounds nuw i8, ptr %8, i64 48
  store <2 x double> %29, ptr %30, align 8
  %31 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> <double 9.000000e+00, double 1.000000e+01>, <2 x double> splat (double 3.000000e+00))
  %32 = fdiv <2 x double> %31, splat (double 3.000000e+01)
  %33 = getelementptr inbounds nuw i8, ptr %9, i64 48
  store <2 x double> %32, ptr %33, align 8
  %34 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> <double 1.000000e+01, double 1.100000e+01>, <2 x double> splat (double 2.000000e+00))
  %35 = fdiv <2 x double> %34, splat (double 3.000000e+01)
  %36 = getelementptr inbounds nuw i8, ptr %8, i64 64
  store <2 x double> %35, ptr %36, align 8
  %37 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> <double 1.100000e+01, double 1.200000e+01>, <2 x double> splat (double 3.000000e+00))
  %38 = fdiv <2 x double> %37, splat (double 3.000000e+01)
  %39 = getelementptr inbounds nuw i8, ptr %9, i64 64
  store <2 x double> %38, ptr %39, align 8
  %40 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> <double 1.200000e+01, double 1.300000e+01>, <2 x double> splat (double 2.000000e+00))
  %41 = fdiv <2 x double> %40, splat (double 3.000000e+01)
  %42 = getelementptr inbounds nuw i8, ptr %8, i64 80
  store <2 x double> %41, ptr %42, align 8
  %43 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> <double 1.300000e+01, double 1.400000e+01>, <2 x double> splat (double 3.000000e+00))
  %44 = fdiv <2 x double> %43, splat (double 3.000000e+01)
  %45 = getelementptr inbounds nuw i8, ptr %9, i64 80
  store <2 x double> %44, ptr %45, align 8
  %46 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> <double 1.400000e+01, double 1.500000e+01>, <2 x double> splat (double 2.000000e+00))
  %47 = fdiv <2 x double> %46, splat (double 3.000000e+01)
  %48 = getelementptr inbounds nuw i8, ptr %8, i64 96
  store <2 x double> %47, ptr %48, align 8
  %49 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> <double 1.500000e+01, double 1.600000e+01>, <2 x double> splat (double 3.000000e+00))
  %50 = fdiv <2 x double> %49, splat (double 3.000000e+01)
  %51 = getelementptr inbounds nuw i8, ptr %9, i64 96
  store <2 x double> %50, ptr %51, align 8
  %52 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> <double 1.600000e+01, double 1.700000e+01>, <2 x double> splat (double 2.000000e+00))
  %53 = fdiv <2 x double> %52, splat (double 3.000000e+01)
  %54 = getelementptr inbounds nuw i8, ptr %8, i64 112
  store <2 x double> %53, ptr %54, align 8
  %55 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> <double 1.700000e+01, double 1.800000e+01>, <2 x double> splat (double 3.000000e+00))
  %56 = fdiv <2 x double> %55, splat (double 3.000000e+01)
  %57 = getelementptr inbounds nuw i8, ptr %9, i64 112
  store <2 x double> %56, ptr %57, align 8
  %58 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> <double 1.800000e+01, double 1.900000e+01>, <2 x double> splat (double 2.000000e+00))
  %59 = fdiv <2 x double> %58, splat (double 3.000000e+01)
  %60 = getelementptr inbounds nuw i8, ptr %8, i64 128
  store <2 x double> %59, ptr %60, align 8
  %61 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> <double 1.900000e+01, double 2.000000e+01>, <2 x double> splat (double 3.000000e+00))
  %62 = fdiv <2 x double> %61, splat (double 3.000000e+01)
  %63 = getelementptr inbounds nuw i8, ptr %9, i64 128
  store <2 x double> %62, ptr %63, align 8
  %64 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> <double 2.000000e+01, double 2.100000e+01>, <2 x double> splat (double 2.000000e+00))
  %65 = fdiv <2 x double> %64, splat (double 3.000000e+01)
  %66 = getelementptr inbounds nuw i8, ptr %8, i64 144
  store <2 x double> %65, ptr %66, align 8
  %67 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> <double 2.100000e+01, double 2.200000e+01>, <2 x double> splat (double 3.000000e+00))
  %68 = fdiv <2 x double> %67, splat (double 3.000000e+01)
  %69 = getelementptr inbounds nuw i8, ptr %9, i64 144
  store <2 x double> %68, ptr %69, align 8
  %70 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> <double 2.200000e+01, double 2.300000e+01>, <2 x double> splat (double 2.000000e+00))
  %71 = fdiv <2 x double> %70, splat (double 3.000000e+01)
  %72 = getelementptr inbounds nuw i8, ptr %8, i64 160
  store <2 x double> %71, ptr %72, align 8
  %73 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> <double 2.300000e+01, double 2.400000e+01>, <2 x double> splat (double 3.000000e+00))
  %74 = fdiv <2 x double> %73, splat (double 3.000000e+01)
  %75 = getelementptr inbounds nuw i8, ptr %9, i64 160
  store <2 x double> %74, ptr %75, align 8
  %76 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> <double 2.400000e+01, double 2.500000e+01>, <2 x double> splat (double 2.000000e+00))
  %77 = fdiv <2 x double> %76, splat (double 3.000000e+01)
  %78 = getelementptr inbounds nuw i8, ptr %8, i64 176
  store <2 x double> %77, ptr %78, align 8
  %79 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> <double 2.500000e+01, double 2.600000e+01>, <2 x double> splat (double 3.000000e+00))
  %80 = fdiv <2 x double> %79, splat (double 3.000000e+01)
  %81 = getelementptr inbounds nuw i8, ptr %9, i64 176
  store <2 x double> %80, ptr %81, align 8
  %82 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> <double 2.600000e+01, double 2.700000e+01>, <2 x double> splat (double 2.000000e+00))
  %83 = fdiv <2 x double> %82, splat (double 3.000000e+01)
  %84 = getelementptr inbounds nuw i8, ptr %8, i64 192
  store <2 x double> %83, ptr %84, align 8
  %85 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> <double 2.700000e+01, double 2.800000e+01>, <2 x double> splat (double 3.000000e+00))
  %86 = fdiv <2 x double> %85, splat (double 3.000000e+01)
  %87 = getelementptr inbounds nuw i8, ptr %9, i64 192
  store <2 x double> %86, ptr %87, align 8
  %88 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> <double 2.800000e+01, double 2.900000e+01>, <2 x double> splat (double 2.000000e+00))
  %89 = fdiv <2 x double> %88, splat (double 3.000000e+01)
  %90 = getelementptr inbounds nuw i8, ptr %8, i64 208
  store <2 x double> %89, ptr %90, align 8
  %91 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> <double 2.900000e+01, double 3.000000e+01>, <2 x double> splat (double 3.000000e+00))
  %92 = fdiv <2 x double> %91, splat (double 3.000000e+01)
  %93 = getelementptr inbounds nuw i8, ptr %9, i64 208
  store <2 x double> %92, ptr %93, align 8
  %94 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> <double 3.000000e+01, double 3.100000e+01>, <2 x double> splat (double 2.000000e+00))
  %95 = fdiv <2 x double> %94, splat (double 3.000000e+01)
  %96 = getelementptr inbounds nuw i8, ptr %8, i64 224
  store <2 x double> %95, ptr %96, align 8
  %97 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> <double 3.100000e+01, double 3.200000e+01>, <2 x double> splat (double 3.000000e+00))
  %98 = fdiv <2 x double> %97, splat (double 3.000000e+01)
  %99 = getelementptr inbounds nuw i8, ptr %9, i64 224
  store <2 x double> %98, ptr %99, align 8
  br label %middle.block

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ 0, %scalar.ph.preheader ]
  %100 = trunc i64 %indvars.iv to i32
  %101 = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %indvars.iv
  %102 = trunc i64 %indvars.iv to i32
  %103 = add i32 %100, 2
  %104 = uitofp nneg i32 %103 to double
  %105 = add i32 %102, 3
  %106 = uitofp nneg i32 %105 to double
  %107 = insertelement <2 x double> poison, double %104, i64 0
  %108 = insertelement <2 x double> %107, double %106, i64 1
  %109 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %11, <2 x double> %108, <2 x double> <double 2.000000e+00, double 3.000000e+00>)
  %110 = fdiv <2 x double> %109, splat (double 3.000000e+01)
  %111 = extractelement <2 x double> %110, i64 0
  store double %111, ptr %101, align 8
  %112 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %indvars.iv
  %113 = extractelement <2 x double> %110, i64 1
  store double %113, ptr %112, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 30
  br i1 %exitcond.not, label %middle.block, label %scalar.ph, !llvm.loop !7

middle.block:                                     ; preds = %scalar.ph, %vector.body
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  %exitcond25.not = icmp eq i64 %indvars.iv.next23, 30
  br i1 %exitcond25.not, label %114, label %.preheader, !llvm.loop !11

114:                                              ; preds = %middle.block
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @kernel_jacobi_2d(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) unnamed_addr #3 {
  %scevgep = getelementptr i8, ptr %1, i64 7192
  %scevgep4 = getelementptr i8, ptr %1, i64 8
  %scevgep5 = getelementptr i8, ptr %0, i64 6952
  %scevgep6 = getelementptr i8, ptr %0, i64 248
  %scevgep19 = getelementptr i8, ptr %0, i64 7192
  %scevgep20 = getelementptr i8, ptr %0, i64 8
  %scevgep21 = getelementptr i8, ptr %1, i64 6952
  %scevgep22 = getelementptr i8, ptr %1, i64 248
  %bound025 = icmp ult ptr %scevgep22, %scevgep19
  %bound126 = icmp ult ptr %scevgep20, %scevgep21
  %found.conflict27 = and i1 %bound025, %bound126
  %bound0 = icmp ult ptr %scevgep6, %scevgep
  %bound1 = icmp ult ptr %scevgep4, %scevgep5
  %found.conflict = and i1 %bound0, %bound1
  br label %.preheader50

.preheader50:                                     ; preds = %2, %381
  %.04755 = phi i32 [ 0, %2 ], [ %382, %381 ]
  br label %.preheader48

.preheader48:                                     ; preds = %.preheader50, %middle.block37
  %indvars.iv57 = phi i64 [ 1, %.preheader50 ], [ %indvars.iv.next58, %middle.block37 ]
  %3 = getelementptr inbounds nuw [240 x i8], ptr %0, i64 %indvars.iv57
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 240
  %5 = getelementptr i8, ptr %3, i64 -240
  %6 = getelementptr inbounds nuw [240 x i8], ptr %1, i64 %indvars.iv57
  br i1 %found.conflict27, label %scalar.ph23, label %vector.body29

vector.body29:                                    ; preds = %.preheader48
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %wide.load31 = load <2 x double>, ptr %7, align 8, !alias.scope !12
  %wide.load32 = load <2 x double>, ptr %3, align 8, !alias.scope !12
  %8 = fadd <2 x double> %wide.load31, %wide.load32
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %wide.load33 = load <2 x double>, ptr %9, align 8, !alias.scope !12
  %10 = fadd <2 x double> %8, %wide.load33
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 248
  %wide.load34 = load <2 x double>, ptr %11, align 8, !alias.scope !12
  %12 = fadd <2 x double> %10, %wide.load34
  %13 = getelementptr i8, ptr %3, i64 -232
  %wide.load35 = load <2 x double>, ptr %13, align 8, !alias.scope !12
  %14 = fadd <2 x double> %12, %wide.load35
  %15 = fmul <2 x double> %14, splat (double 2.000000e-01)
  %16 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store <2 x double> %15, ptr %16, align 8, !alias.scope !15, !noalias !12
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %wide.load31.1 = load <2 x double>, ptr %17, align 8, !alias.scope !12
  %18 = getelementptr i8, ptr %3, i64 16
  %wide.load32.1 = load <2 x double>, ptr %18, align 8, !alias.scope !12
  %19 = fadd <2 x double> %wide.load31.1, %wide.load32.1
  %20 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %wide.load33.1 = load <2 x double>, ptr %20, align 8, !alias.scope !12
  %21 = fadd <2 x double> %19, %wide.load33.1
  %22 = getelementptr inbounds nuw i8, ptr %3, i64 264
  %wide.load34.1 = load <2 x double>, ptr %22, align 8, !alias.scope !12
  %23 = fadd <2 x double> %21, %wide.load34.1
  %24 = getelementptr i8, ptr %3, i64 -216
  %wide.load35.1 = load <2 x double>, ptr %24, align 8, !alias.scope !12
  %25 = fadd <2 x double> %23, %wide.load35.1
  %26 = fmul <2 x double> %25, splat (double 2.000000e-01)
  %27 = getelementptr inbounds nuw i8, ptr %6, i64 24
  store <2 x double> %26, ptr %27, align 8, !alias.scope !15, !noalias !12
  %28 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %wide.load31.2 = load <2 x double>, ptr %28, align 8, !alias.scope !12
  %29 = getelementptr i8, ptr %3, i64 32
  %wide.load32.2 = load <2 x double>, ptr %29, align 8, !alias.scope !12
  %30 = fadd <2 x double> %wide.load31.2, %wide.load32.2
  %31 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %wide.load33.2 = load <2 x double>, ptr %31, align 8, !alias.scope !12
  %32 = fadd <2 x double> %30, %wide.load33.2
  %33 = getelementptr inbounds nuw i8, ptr %3, i64 280
  %wide.load34.2 = load <2 x double>, ptr %33, align 8, !alias.scope !12
  %34 = fadd <2 x double> %32, %wide.load34.2
  %35 = getelementptr i8, ptr %3, i64 -200
  %wide.load35.2 = load <2 x double>, ptr %35, align 8, !alias.scope !12
  %36 = fadd <2 x double> %34, %wide.load35.2
  %37 = fmul <2 x double> %36, splat (double 2.000000e-01)
  %38 = getelementptr inbounds nuw i8, ptr %6, i64 40
  store <2 x double> %37, ptr %38, align 8, !alias.scope !15, !noalias !12
  %39 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %wide.load31.3 = load <2 x double>, ptr %39, align 8, !alias.scope !12
  %40 = getelementptr i8, ptr %3, i64 48
  %wide.load32.3 = load <2 x double>, ptr %40, align 8, !alias.scope !12
  %41 = fadd <2 x double> %wide.load31.3, %wide.load32.3
  %42 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %wide.load33.3 = load <2 x double>, ptr %42, align 8, !alias.scope !12
  %43 = fadd <2 x double> %41, %wide.load33.3
  %44 = getelementptr inbounds nuw i8, ptr %3, i64 296
  %wide.load34.3 = load <2 x double>, ptr %44, align 8, !alias.scope !12
  %45 = fadd <2 x double> %43, %wide.load34.3
  %46 = getelementptr i8, ptr %3, i64 -184
  %wide.load35.3 = load <2 x double>, ptr %46, align 8, !alias.scope !12
  %47 = fadd <2 x double> %45, %wide.load35.3
  %48 = fmul <2 x double> %47, splat (double 2.000000e-01)
  %49 = getelementptr inbounds nuw i8, ptr %6, i64 56
  store <2 x double> %48, ptr %49, align 8, !alias.scope !15, !noalias !12
  %50 = getelementptr inbounds nuw i8, ptr %3, i64 72
  %wide.load31.4 = load <2 x double>, ptr %50, align 8, !alias.scope !12
  %51 = getelementptr i8, ptr %3, i64 64
  %wide.load32.4 = load <2 x double>, ptr %51, align 8, !alias.scope !12
  %52 = fadd <2 x double> %wide.load31.4, %wide.load32.4
  %53 = getelementptr inbounds nuw i8, ptr %3, i64 80
  %wide.load33.4 = load <2 x double>, ptr %53, align 8, !alias.scope !12
  %54 = fadd <2 x double> %52, %wide.load33.4
  %55 = getelementptr inbounds nuw i8, ptr %3, i64 312
  %wide.load34.4 = load <2 x double>, ptr %55, align 8, !alias.scope !12
  %56 = fadd <2 x double> %54, %wide.load34.4
  %57 = getelementptr i8, ptr %3, i64 -168
  %wide.load35.4 = load <2 x double>, ptr %57, align 8, !alias.scope !12
  %58 = fadd <2 x double> %56, %wide.load35.4
  %59 = fmul <2 x double> %58, splat (double 2.000000e-01)
  %60 = getelementptr inbounds nuw i8, ptr %6, i64 72
  store <2 x double> %59, ptr %60, align 8, !alias.scope !15, !noalias !12
  %61 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %wide.load31.5 = load <2 x double>, ptr %61, align 8, !alias.scope !12
  %62 = getelementptr i8, ptr %3, i64 80
  %wide.load32.5 = load <2 x double>, ptr %62, align 8, !alias.scope !12
  %63 = fadd <2 x double> %wide.load31.5, %wide.load32.5
  %64 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %wide.load33.5 = load <2 x double>, ptr %64, align 8, !alias.scope !12
  %65 = fadd <2 x double> %63, %wide.load33.5
  %66 = getelementptr inbounds nuw i8, ptr %3, i64 328
  %wide.load34.5 = load <2 x double>, ptr %66, align 8, !alias.scope !12
  %67 = fadd <2 x double> %65, %wide.load34.5
  %68 = getelementptr i8, ptr %3, i64 -152
  %wide.load35.5 = load <2 x double>, ptr %68, align 8, !alias.scope !12
  %69 = fadd <2 x double> %67, %wide.load35.5
  %70 = fmul <2 x double> %69, splat (double 2.000000e-01)
  %71 = getelementptr inbounds nuw i8, ptr %6, i64 88
  store <2 x double> %70, ptr %71, align 8, !alias.scope !15, !noalias !12
  %72 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %wide.load31.6 = load <2 x double>, ptr %72, align 8, !alias.scope !12
  %73 = getelementptr i8, ptr %3, i64 96
  %wide.load32.6 = load <2 x double>, ptr %73, align 8, !alias.scope !12
  %74 = fadd <2 x double> %wide.load31.6, %wide.load32.6
  %75 = getelementptr inbounds nuw i8, ptr %3, i64 112
  %wide.load33.6 = load <2 x double>, ptr %75, align 8, !alias.scope !12
  %76 = fadd <2 x double> %74, %wide.load33.6
  %77 = getelementptr inbounds nuw i8, ptr %3, i64 344
  %wide.load34.6 = load <2 x double>, ptr %77, align 8, !alias.scope !12
  %78 = fadd <2 x double> %76, %wide.load34.6
  %79 = getelementptr i8, ptr %3, i64 -136
  %wide.load35.6 = load <2 x double>, ptr %79, align 8, !alias.scope !12
  %80 = fadd <2 x double> %78, %wide.load35.6
  %81 = fmul <2 x double> %80, splat (double 2.000000e-01)
  %82 = getelementptr inbounds nuw i8, ptr %6, i64 104
  store <2 x double> %81, ptr %82, align 8, !alias.scope !15, !noalias !12
  %83 = getelementptr inbounds nuw i8, ptr %3, i64 120
  %wide.load31.7 = load <2 x double>, ptr %83, align 8, !alias.scope !12
  %84 = getelementptr i8, ptr %3, i64 112
  %wide.load32.7 = load <2 x double>, ptr %84, align 8, !alias.scope !12
  %85 = fadd <2 x double> %wide.load31.7, %wide.load32.7
  %86 = getelementptr inbounds nuw i8, ptr %3, i64 128
  %wide.load33.7 = load <2 x double>, ptr %86, align 8, !alias.scope !12
  %87 = fadd <2 x double> %85, %wide.load33.7
  %88 = getelementptr inbounds nuw i8, ptr %3, i64 360
  %wide.load34.7 = load <2 x double>, ptr %88, align 8, !alias.scope !12
  %89 = fadd <2 x double> %87, %wide.load34.7
  %90 = getelementptr i8, ptr %3, i64 -120
  %wide.load35.7 = load <2 x double>, ptr %90, align 8, !alias.scope !12
  %91 = fadd <2 x double> %89, %wide.load35.7
  %92 = fmul <2 x double> %91, splat (double 2.000000e-01)
  %93 = getelementptr inbounds nuw i8, ptr %6, i64 120
  store <2 x double> %92, ptr %93, align 8, !alias.scope !15, !noalias !12
  %94 = getelementptr inbounds nuw i8, ptr %3, i64 136
  %wide.load31.8 = load <2 x double>, ptr %94, align 8, !alias.scope !12
  %95 = getelementptr i8, ptr %3, i64 128
  %wide.load32.8 = load <2 x double>, ptr %95, align 8, !alias.scope !12
  %96 = fadd <2 x double> %wide.load31.8, %wide.load32.8
  %97 = getelementptr inbounds nuw i8, ptr %3, i64 144
  %wide.load33.8 = load <2 x double>, ptr %97, align 8, !alias.scope !12
  %98 = fadd <2 x double> %96, %wide.load33.8
  %99 = getelementptr inbounds nuw i8, ptr %3, i64 376
  %wide.load34.8 = load <2 x double>, ptr %99, align 8, !alias.scope !12
  %100 = fadd <2 x double> %98, %wide.load34.8
  %101 = getelementptr i8, ptr %3, i64 -104
  %wide.load35.8 = load <2 x double>, ptr %101, align 8, !alias.scope !12
  %102 = fadd <2 x double> %100, %wide.load35.8
  %103 = fmul <2 x double> %102, splat (double 2.000000e-01)
  %104 = getelementptr inbounds nuw i8, ptr %6, i64 136
  store <2 x double> %103, ptr %104, align 8, !alias.scope !15, !noalias !12
  %105 = getelementptr inbounds nuw i8, ptr %3, i64 152
  %wide.load31.9 = load <2 x double>, ptr %105, align 8, !alias.scope !12
  %106 = getelementptr i8, ptr %3, i64 144
  %wide.load32.9 = load <2 x double>, ptr %106, align 8, !alias.scope !12
  %107 = fadd <2 x double> %wide.load31.9, %wide.load32.9
  %108 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %wide.load33.9 = load <2 x double>, ptr %108, align 8, !alias.scope !12
  %109 = fadd <2 x double> %107, %wide.load33.9
  %110 = getelementptr inbounds nuw i8, ptr %3, i64 392
  %wide.load34.9 = load <2 x double>, ptr %110, align 8, !alias.scope !12
  %111 = fadd <2 x double> %109, %wide.load34.9
  %112 = getelementptr i8, ptr %3, i64 -88
  %wide.load35.9 = load <2 x double>, ptr %112, align 8, !alias.scope !12
  %113 = fadd <2 x double> %111, %wide.load35.9
  %114 = fmul <2 x double> %113, splat (double 2.000000e-01)
  %115 = getelementptr inbounds nuw i8, ptr %6, i64 152
  store <2 x double> %114, ptr %115, align 8, !alias.scope !15, !noalias !12
  %116 = getelementptr inbounds nuw i8, ptr %3, i64 168
  %wide.load31.10 = load <2 x double>, ptr %116, align 8, !alias.scope !12
  %117 = getelementptr i8, ptr %3, i64 160
  %wide.load32.10 = load <2 x double>, ptr %117, align 8, !alias.scope !12
  %118 = fadd <2 x double> %wide.load31.10, %wide.load32.10
  %119 = getelementptr inbounds nuw i8, ptr %3, i64 176
  %wide.load33.10 = load <2 x double>, ptr %119, align 8, !alias.scope !12
  %120 = fadd <2 x double> %118, %wide.load33.10
  %121 = getelementptr inbounds nuw i8, ptr %3, i64 408
  %wide.load34.10 = load <2 x double>, ptr %121, align 8, !alias.scope !12
  %122 = fadd <2 x double> %120, %wide.load34.10
  %123 = getelementptr i8, ptr %3, i64 -72
  %wide.load35.10 = load <2 x double>, ptr %123, align 8, !alias.scope !12
  %124 = fadd <2 x double> %122, %wide.load35.10
  %125 = fmul <2 x double> %124, splat (double 2.000000e-01)
  %126 = getelementptr inbounds nuw i8, ptr %6, i64 168
  store <2 x double> %125, ptr %126, align 8, !alias.scope !15, !noalias !12
  %127 = getelementptr inbounds nuw i8, ptr %3, i64 184
  %wide.load31.11 = load <2 x double>, ptr %127, align 8, !alias.scope !12
  %128 = getelementptr i8, ptr %3, i64 176
  %wide.load32.11 = load <2 x double>, ptr %128, align 8, !alias.scope !12
  %129 = fadd <2 x double> %wide.load31.11, %wide.load32.11
  %130 = getelementptr inbounds nuw i8, ptr %3, i64 192
  %wide.load33.11 = load <2 x double>, ptr %130, align 8, !alias.scope !12
  %131 = fadd <2 x double> %129, %wide.load33.11
  %132 = getelementptr inbounds nuw i8, ptr %3, i64 424
  %wide.load34.11 = load <2 x double>, ptr %132, align 8, !alias.scope !12
  %133 = fadd <2 x double> %131, %wide.load34.11
  %134 = getelementptr i8, ptr %3, i64 -56
  %wide.load35.11 = load <2 x double>, ptr %134, align 8, !alias.scope !12
  %135 = fadd <2 x double> %133, %wide.load35.11
  %136 = fmul <2 x double> %135, splat (double 2.000000e-01)
  %137 = getelementptr inbounds nuw i8, ptr %6, i64 184
  store <2 x double> %136, ptr %137, align 8, !alias.scope !15, !noalias !12
  %138 = getelementptr inbounds nuw i8, ptr %3, i64 200
  %wide.load31.12 = load <2 x double>, ptr %138, align 8, !alias.scope !12
  %139 = getelementptr i8, ptr %3, i64 192
  %wide.load32.12 = load <2 x double>, ptr %139, align 8, !alias.scope !12
  %140 = fadd <2 x double> %wide.load31.12, %wide.load32.12
  %141 = getelementptr inbounds nuw i8, ptr %3, i64 208
  %wide.load33.12 = load <2 x double>, ptr %141, align 8, !alias.scope !12
  %142 = fadd <2 x double> %140, %wide.load33.12
  %143 = getelementptr inbounds nuw i8, ptr %3, i64 440
  %wide.load34.12 = load <2 x double>, ptr %143, align 8, !alias.scope !12
  %144 = fadd <2 x double> %142, %wide.load34.12
  %145 = getelementptr i8, ptr %3, i64 -40
  %wide.load35.12 = load <2 x double>, ptr %145, align 8, !alias.scope !12
  %146 = fadd <2 x double> %144, %wide.load35.12
  %147 = fmul <2 x double> %146, splat (double 2.000000e-01)
  %148 = getelementptr inbounds nuw i8, ptr %6, i64 200
  store <2 x double> %147, ptr %148, align 8, !alias.scope !15, !noalias !12
  %149 = getelementptr inbounds nuw i8, ptr %3, i64 216
  %wide.load31.13 = load <2 x double>, ptr %149, align 8, !alias.scope !12
  %150 = getelementptr i8, ptr %3, i64 208
  %wide.load32.13 = load <2 x double>, ptr %150, align 8, !alias.scope !12
  %151 = fadd <2 x double> %wide.load31.13, %wide.load32.13
  %152 = getelementptr inbounds nuw i8, ptr %3, i64 224
  %wide.load33.13 = load <2 x double>, ptr %152, align 8, !alias.scope !12
  %153 = fadd <2 x double> %151, %wide.load33.13
  %154 = getelementptr inbounds nuw i8, ptr %3, i64 456
  %wide.load34.13 = load <2 x double>, ptr %154, align 8, !alias.scope !12
  %155 = fadd <2 x double> %153, %wide.load34.13
  %156 = getelementptr i8, ptr %3, i64 -24
  %wide.load35.13 = load <2 x double>, ptr %156, align 8, !alias.scope !12
  %157 = fadd <2 x double> %155, %wide.load35.13
  %158 = fmul <2 x double> %157, splat (double 2.000000e-01)
  %159 = getelementptr inbounds nuw i8, ptr %6, i64 216
  store <2 x double> %158, ptr %159, align 8, !alias.scope !15, !noalias !12
  br label %middle.block37

scalar.ph23:                                      ; preds = %.preheader48, %scalar.ph23
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph23 ], [ 1, %.preheader48 ]
  %160 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %161 = load double, ptr %160, align 8
  %162 = getelementptr i8, ptr %160, i64 -8
  %163 = load double, ptr %162, align 8
  %164 = fadd double %161, %163
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %165 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next
  %166 = load double, ptr %165, align 8
  %167 = fadd double %164, %166
  %168 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  %169 = load double, ptr %168, align 8
  %170 = fadd double %167, %169
  %171 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv
  %172 = load double, ptr %171, align 8
  %173 = fadd double %170, %172
  %174 = fmul double %173, 2.000000e-01
  %175 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv
  store double %174, ptr %175, align 8
  %176 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next
  %177 = load double, ptr %176, align 8
  %178 = getelementptr i8, ptr %176, i64 -8
  %179 = load double, ptr %178, align 8
  %180 = fadd double %177, %179
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %181 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.1
  %182 = load double, ptr %181, align 8
  %183 = fadd double %180, %182
  %184 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next
  %185 = load double, ptr %184, align 8
  %186 = fadd double %183, %185
  %187 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next
  %188 = load double, ptr %187, align 8
  %189 = fadd double %186, %188
  %190 = fmul double %189, 2.000000e-01
  %191 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv.next
  store double %190, ptr %191, align 8
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 29
  br i1 %exitcond.not.1, label %middle.block37, label %scalar.ph23, !llvm.loop !17

middle.block37:                                   ; preds = %scalar.ph23, %vector.body29
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1
  %exitcond60.not = icmp eq i64 %indvars.iv.next58, 29
  br i1 %exitcond60.not, label %.preheader, label %.preheader48, !llvm.loop !18

.preheader:                                       ; preds = %middle.block37, %middle.block
  %indvars.iv65 = phi i64 [ %indvars.iv.next66, %middle.block ], [ 1, %middle.block37 ]
  %192 = getelementptr inbounds nuw [240 x i8], ptr %1, i64 %indvars.iv65
  %193 = getelementptr inbounds nuw i8, ptr %192, i64 240
  %194 = getelementptr i8, ptr %192, i64 -240
  %195 = getelementptr inbounds nuw [240 x i8], ptr %0, i64 %indvars.iv65
  br i1 %found.conflict, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %.preheader
  %196 = getelementptr inbounds nuw i8, ptr %192, i64 8
  %wide.load = load <2 x double>, ptr %196, align 8, !alias.scope !19
  %wide.load7 = load <2 x double>, ptr %192, align 8, !alias.scope !19
  %197 = fadd <2 x double> %wide.load, %wide.load7
  %198 = getelementptr inbounds nuw i8, ptr %192, i64 16
  %wide.load8 = load <2 x double>, ptr %198, align 8, !alias.scope !19
  %199 = fadd <2 x double> %197, %wide.load8
  %200 = getelementptr inbounds nuw i8, ptr %192, i64 248
  %wide.load9 = load <2 x double>, ptr %200, align 8, !alias.scope !19
  %201 = fadd <2 x double> %199, %wide.load9
  %202 = getelementptr i8, ptr %192, i64 -232
  %wide.load10 = load <2 x double>, ptr %202, align 8, !alias.scope !19
  %203 = fadd <2 x double> %201, %wide.load10
  %204 = fmul <2 x double> %203, splat (double 2.000000e-01)
  %205 = getelementptr inbounds nuw i8, ptr %195, i64 8
  store <2 x double> %204, ptr %205, align 8, !alias.scope !22, !noalias !19
  %206 = getelementptr inbounds nuw i8, ptr %192, i64 24
  %wide.load.1 = load <2 x double>, ptr %206, align 8, !alias.scope !19
  %207 = getelementptr i8, ptr %192, i64 16
  %wide.load7.1 = load <2 x double>, ptr %207, align 8, !alias.scope !19
  %208 = fadd <2 x double> %wide.load.1, %wide.load7.1
  %209 = getelementptr inbounds nuw i8, ptr %192, i64 32
  %wide.load8.1 = load <2 x double>, ptr %209, align 8, !alias.scope !19
  %210 = fadd <2 x double> %208, %wide.load8.1
  %211 = getelementptr inbounds nuw i8, ptr %192, i64 264
  %wide.load9.1 = load <2 x double>, ptr %211, align 8, !alias.scope !19
  %212 = fadd <2 x double> %210, %wide.load9.1
  %213 = getelementptr i8, ptr %192, i64 -216
  %wide.load10.1 = load <2 x double>, ptr %213, align 8, !alias.scope !19
  %214 = fadd <2 x double> %212, %wide.load10.1
  %215 = fmul <2 x double> %214, splat (double 2.000000e-01)
  %216 = getelementptr inbounds nuw i8, ptr %195, i64 24
  store <2 x double> %215, ptr %216, align 8, !alias.scope !22, !noalias !19
  %217 = getelementptr inbounds nuw i8, ptr %192, i64 40
  %wide.load.2 = load <2 x double>, ptr %217, align 8, !alias.scope !19
  %218 = getelementptr i8, ptr %192, i64 32
  %wide.load7.2 = load <2 x double>, ptr %218, align 8, !alias.scope !19
  %219 = fadd <2 x double> %wide.load.2, %wide.load7.2
  %220 = getelementptr inbounds nuw i8, ptr %192, i64 48
  %wide.load8.2 = load <2 x double>, ptr %220, align 8, !alias.scope !19
  %221 = fadd <2 x double> %219, %wide.load8.2
  %222 = getelementptr inbounds nuw i8, ptr %192, i64 280
  %wide.load9.2 = load <2 x double>, ptr %222, align 8, !alias.scope !19
  %223 = fadd <2 x double> %221, %wide.load9.2
  %224 = getelementptr i8, ptr %192, i64 -200
  %wide.load10.2 = load <2 x double>, ptr %224, align 8, !alias.scope !19
  %225 = fadd <2 x double> %223, %wide.load10.2
  %226 = fmul <2 x double> %225, splat (double 2.000000e-01)
  %227 = getelementptr inbounds nuw i8, ptr %195, i64 40
  store <2 x double> %226, ptr %227, align 8, !alias.scope !22, !noalias !19
  %228 = getelementptr inbounds nuw i8, ptr %192, i64 56
  %wide.load.3 = load <2 x double>, ptr %228, align 8, !alias.scope !19
  %229 = getelementptr i8, ptr %192, i64 48
  %wide.load7.3 = load <2 x double>, ptr %229, align 8, !alias.scope !19
  %230 = fadd <2 x double> %wide.load.3, %wide.load7.3
  %231 = getelementptr inbounds nuw i8, ptr %192, i64 64
  %wide.load8.3 = load <2 x double>, ptr %231, align 8, !alias.scope !19
  %232 = fadd <2 x double> %230, %wide.load8.3
  %233 = getelementptr inbounds nuw i8, ptr %192, i64 296
  %wide.load9.3 = load <2 x double>, ptr %233, align 8, !alias.scope !19
  %234 = fadd <2 x double> %232, %wide.load9.3
  %235 = getelementptr i8, ptr %192, i64 -184
  %wide.load10.3 = load <2 x double>, ptr %235, align 8, !alias.scope !19
  %236 = fadd <2 x double> %234, %wide.load10.3
  %237 = fmul <2 x double> %236, splat (double 2.000000e-01)
  %238 = getelementptr inbounds nuw i8, ptr %195, i64 56
  store <2 x double> %237, ptr %238, align 8, !alias.scope !22, !noalias !19
  %239 = getelementptr inbounds nuw i8, ptr %192, i64 72
  %wide.load.4 = load <2 x double>, ptr %239, align 8, !alias.scope !19
  %240 = getelementptr i8, ptr %192, i64 64
  %wide.load7.4 = load <2 x double>, ptr %240, align 8, !alias.scope !19
  %241 = fadd <2 x double> %wide.load.4, %wide.load7.4
  %242 = getelementptr inbounds nuw i8, ptr %192, i64 80
  %wide.load8.4 = load <2 x double>, ptr %242, align 8, !alias.scope !19
  %243 = fadd <2 x double> %241, %wide.load8.4
  %244 = getelementptr inbounds nuw i8, ptr %192, i64 312
  %wide.load9.4 = load <2 x double>, ptr %244, align 8, !alias.scope !19
  %245 = fadd <2 x double> %243, %wide.load9.4
  %246 = getelementptr i8, ptr %192, i64 -168
  %wide.load10.4 = load <2 x double>, ptr %246, align 8, !alias.scope !19
  %247 = fadd <2 x double> %245, %wide.load10.4
  %248 = fmul <2 x double> %247, splat (double 2.000000e-01)
  %249 = getelementptr inbounds nuw i8, ptr %195, i64 72
  store <2 x double> %248, ptr %249, align 8, !alias.scope !22, !noalias !19
  %250 = getelementptr inbounds nuw i8, ptr %192, i64 88
  %wide.load.5 = load <2 x double>, ptr %250, align 8, !alias.scope !19
  %251 = getelementptr i8, ptr %192, i64 80
  %wide.load7.5 = load <2 x double>, ptr %251, align 8, !alias.scope !19
  %252 = fadd <2 x double> %wide.load.5, %wide.load7.5
  %253 = getelementptr inbounds nuw i8, ptr %192, i64 96
  %wide.load8.5 = load <2 x double>, ptr %253, align 8, !alias.scope !19
  %254 = fadd <2 x double> %252, %wide.load8.5
  %255 = getelementptr inbounds nuw i8, ptr %192, i64 328
  %wide.load9.5 = load <2 x double>, ptr %255, align 8, !alias.scope !19
  %256 = fadd <2 x double> %254, %wide.load9.5
  %257 = getelementptr i8, ptr %192, i64 -152
  %wide.load10.5 = load <2 x double>, ptr %257, align 8, !alias.scope !19
  %258 = fadd <2 x double> %256, %wide.load10.5
  %259 = fmul <2 x double> %258, splat (double 2.000000e-01)
  %260 = getelementptr inbounds nuw i8, ptr %195, i64 88
  store <2 x double> %259, ptr %260, align 8, !alias.scope !22, !noalias !19
  %261 = getelementptr inbounds nuw i8, ptr %192, i64 104
  %wide.load.6 = load <2 x double>, ptr %261, align 8, !alias.scope !19
  %262 = getelementptr i8, ptr %192, i64 96
  %wide.load7.6 = load <2 x double>, ptr %262, align 8, !alias.scope !19
  %263 = fadd <2 x double> %wide.load.6, %wide.load7.6
  %264 = getelementptr inbounds nuw i8, ptr %192, i64 112
  %wide.load8.6 = load <2 x double>, ptr %264, align 8, !alias.scope !19
  %265 = fadd <2 x double> %263, %wide.load8.6
  %266 = getelementptr inbounds nuw i8, ptr %192, i64 344
  %wide.load9.6 = load <2 x double>, ptr %266, align 8, !alias.scope !19
  %267 = fadd <2 x double> %265, %wide.load9.6
  %268 = getelementptr i8, ptr %192, i64 -136
  %wide.load10.6 = load <2 x double>, ptr %268, align 8, !alias.scope !19
  %269 = fadd <2 x double> %267, %wide.load10.6
  %270 = fmul <2 x double> %269, splat (double 2.000000e-01)
  %271 = getelementptr inbounds nuw i8, ptr %195, i64 104
  store <2 x double> %270, ptr %271, align 8, !alias.scope !22, !noalias !19
  %272 = getelementptr inbounds nuw i8, ptr %192, i64 120
  %wide.load.7 = load <2 x double>, ptr %272, align 8, !alias.scope !19
  %273 = getelementptr i8, ptr %192, i64 112
  %wide.load7.7 = load <2 x double>, ptr %273, align 8, !alias.scope !19
  %274 = fadd <2 x double> %wide.load.7, %wide.load7.7
  %275 = getelementptr inbounds nuw i8, ptr %192, i64 128
  %wide.load8.7 = load <2 x double>, ptr %275, align 8, !alias.scope !19
  %276 = fadd <2 x double> %274, %wide.load8.7
  %277 = getelementptr inbounds nuw i8, ptr %192, i64 360
  %wide.load9.7 = load <2 x double>, ptr %277, align 8, !alias.scope !19
  %278 = fadd <2 x double> %276, %wide.load9.7
  %279 = getelementptr i8, ptr %192, i64 -120
  %wide.load10.7 = load <2 x double>, ptr %279, align 8, !alias.scope !19
  %280 = fadd <2 x double> %278, %wide.load10.7
  %281 = fmul <2 x double> %280, splat (double 2.000000e-01)
  %282 = getelementptr inbounds nuw i8, ptr %195, i64 120
  store <2 x double> %281, ptr %282, align 8, !alias.scope !22, !noalias !19
  %283 = getelementptr inbounds nuw i8, ptr %192, i64 136
  %wide.load.8 = load <2 x double>, ptr %283, align 8, !alias.scope !19
  %284 = getelementptr i8, ptr %192, i64 128
  %wide.load7.8 = load <2 x double>, ptr %284, align 8, !alias.scope !19
  %285 = fadd <2 x double> %wide.load.8, %wide.load7.8
  %286 = getelementptr inbounds nuw i8, ptr %192, i64 144
  %wide.load8.8 = load <2 x double>, ptr %286, align 8, !alias.scope !19
  %287 = fadd <2 x double> %285, %wide.load8.8
  %288 = getelementptr inbounds nuw i8, ptr %192, i64 376
  %wide.load9.8 = load <2 x double>, ptr %288, align 8, !alias.scope !19
  %289 = fadd <2 x double> %287, %wide.load9.8
  %290 = getelementptr i8, ptr %192, i64 -104
  %wide.load10.8 = load <2 x double>, ptr %290, align 8, !alias.scope !19
  %291 = fadd <2 x double> %289, %wide.load10.8
  %292 = fmul <2 x double> %291, splat (double 2.000000e-01)
  %293 = getelementptr inbounds nuw i8, ptr %195, i64 136
  store <2 x double> %292, ptr %293, align 8, !alias.scope !22, !noalias !19
  %294 = getelementptr inbounds nuw i8, ptr %192, i64 152
  %wide.load.9 = load <2 x double>, ptr %294, align 8, !alias.scope !19
  %295 = getelementptr i8, ptr %192, i64 144
  %wide.load7.9 = load <2 x double>, ptr %295, align 8, !alias.scope !19
  %296 = fadd <2 x double> %wide.load.9, %wide.load7.9
  %297 = getelementptr inbounds nuw i8, ptr %192, i64 160
  %wide.load8.9 = load <2 x double>, ptr %297, align 8, !alias.scope !19
  %298 = fadd <2 x double> %296, %wide.load8.9
  %299 = getelementptr inbounds nuw i8, ptr %192, i64 392
  %wide.load9.9 = load <2 x double>, ptr %299, align 8, !alias.scope !19
  %300 = fadd <2 x double> %298, %wide.load9.9
  %301 = getelementptr i8, ptr %192, i64 -88
  %wide.load10.9 = load <2 x double>, ptr %301, align 8, !alias.scope !19
  %302 = fadd <2 x double> %300, %wide.load10.9
  %303 = fmul <2 x double> %302, splat (double 2.000000e-01)
  %304 = getelementptr inbounds nuw i8, ptr %195, i64 152
  store <2 x double> %303, ptr %304, align 8, !alias.scope !22, !noalias !19
  %305 = getelementptr inbounds nuw i8, ptr %192, i64 168
  %wide.load.10 = load <2 x double>, ptr %305, align 8, !alias.scope !19
  %306 = getelementptr i8, ptr %192, i64 160
  %wide.load7.10 = load <2 x double>, ptr %306, align 8, !alias.scope !19
  %307 = fadd <2 x double> %wide.load.10, %wide.load7.10
  %308 = getelementptr inbounds nuw i8, ptr %192, i64 176
  %wide.load8.10 = load <2 x double>, ptr %308, align 8, !alias.scope !19
  %309 = fadd <2 x double> %307, %wide.load8.10
  %310 = getelementptr inbounds nuw i8, ptr %192, i64 408
  %wide.load9.10 = load <2 x double>, ptr %310, align 8, !alias.scope !19
  %311 = fadd <2 x double> %309, %wide.load9.10
  %312 = getelementptr i8, ptr %192, i64 -72
  %wide.load10.10 = load <2 x double>, ptr %312, align 8, !alias.scope !19
  %313 = fadd <2 x double> %311, %wide.load10.10
  %314 = fmul <2 x double> %313, splat (double 2.000000e-01)
  %315 = getelementptr inbounds nuw i8, ptr %195, i64 168
  store <2 x double> %314, ptr %315, align 8, !alias.scope !22, !noalias !19
  %316 = getelementptr inbounds nuw i8, ptr %192, i64 184
  %wide.load.11 = load <2 x double>, ptr %316, align 8, !alias.scope !19
  %317 = getelementptr i8, ptr %192, i64 176
  %wide.load7.11 = load <2 x double>, ptr %317, align 8, !alias.scope !19
  %318 = fadd <2 x double> %wide.load.11, %wide.load7.11
  %319 = getelementptr inbounds nuw i8, ptr %192, i64 192
  %wide.load8.11 = load <2 x double>, ptr %319, align 8, !alias.scope !19
  %320 = fadd <2 x double> %318, %wide.load8.11
  %321 = getelementptr inbounds nuw i8, ptr %192, i64 424
  %wide.load9.11 = load <2 x double>, ptr %321, align 8, !alias.scope !19
  %322 = fadd <2 x double> %320, %wide.load9.11
  %323 = getelementptr i8, ptr %192, i64 -56
  %wide.load10.11 = load <2 x double>, ptr %323, align 8, !alias.scope !19
  %324 = fadd <2 x double> %322, %wide.load10.11
  %325 = fmul <2 x double> %324, splat (double 2.000000e-01)
  %326 = getelementptr inbounds nuw i8, ptr %195, i64 184
  store <2 x double> %325, ptr %326, align 8, !alias.scope !22, !noalias !19
  %327 = getelementptr inbounds nuw i8, ptr %192, i64 200
  %wide.load.12 = load <2 x double>, ptr %327, align 8, !alias.scope !19
  %328 = getelementptr i8, ptr %192, i64 192
  %wide.load7.12 = load <2 x double>, ptr %328, align 8, !alias.scope !19
  %329 = fadd <2 x double> %wide.load.12, %wide.load7.12
  %330 = getelementptr inbounds nuw i8, ptr %192, i64 208
  %wide.load8.12 = load <2 x double>, ptr %330, align 8, !alias.scope !19
  %331 = fadd <2 x double> %329, %wide.load8.12
  %332 = getelementptr inbounds nuw i8, ptr %192, i64 440
  %wide.load9.12 = load <2 x double>, ptr %332, align 8, !alias.scope !19
  %333 = fadd <2 x double> %331, %wide.load9.12
  %334 = getelementptr i8, ptr %192, i64 -40
  %wide.load10.12 = load <2 x double>, ptr %334, align 8, !alias.scope !19
  %335 = fadd <2 x double> %333, %wide.load10.12
  %336 = fmul <2 x double> %335, splat (double 2.000000e-01)
  %337 = getelementptr inbounds nuw i8, ptr %195, i64 200
  store <2 x double> %336, ptr %337, align 8, !alias.scope !22, !noalias !19
  %338 = getelementptr inbounds nuw i8, ptr %192, i64 216
  %wide.load.13 = load <2 x double>, ptr %338, align 8, !alias.scope !19
  %339 = getelementptr i8, ptr %192, i64 208
  %wide.load7.13 = load <2 x double>, ptr %339, align 8, !alias.scope !19
  %340 = fadd <2 x double> %wide.load.13, %wide.load7.13
  %341 = getelementptr inbounds nuw i8, ptr %192, i64 224
  %wide.load8.13 = load <2 x double>, ptr %341, align 8, !alias.scope !19
  %342 = fadd <2 x double> %340, %wide.load8.13
  %343 = getelementptr inbounds nuw i8, ptr %192, i64 456
  %wide.load9.13 = load <2 x double>, ptr %343, align 8, !alias.scope !19
  %344 = fadd <2 x double> %342, %wide.load9.13
  %345 = getelementptr i8, ptr %192, i64 -24
  %wide.load10.13 = load <2 x double>, ptr %345, align 8, !alias.scope !19
  %346 = fadd <2 x double> %344, %wide.load10.13
  %347 = fmul <2 x double> %346, splat (double 2.000000e-01)
  %348 = getelementptr inbounds nuw i8, ptr %195, i64 216
  store <2 x double> %347, ptr %348, align 8, !alias.scope !22, !noalias !19
  br label %middle.block

scalar.ph:                                        ; preds = %.preheader, %scalar.ph
  %indvars.iv61 = phi i64 [ %indvars.iv.next62.1, %scalar.ph ], [ 1, %.preheader ]
  %349 = getelementptr inbounds nuw [8 x i8], ptr %192, i64 %indvars.iv61
  %350 = load double, ptr %349, align 8
  %351 = getelementptr i8, ptr %349, i64 -8
  %352 = load double, ptr %351, align 8
  %353 = fadd double %350, %352
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1
  %354 = getelementptr inbounds nuw [8 x i8], ptr %192, i64 %indvars.iv.next62
  %355 = load double, ptr %354, align 8
  %356 = fadd double %353, %355
  %357 = getelementptr inbounds nuw [8 x i8], ptr %193, i64 %indvars.iv61
  %358 = load double, ptr %357, align 8
  %359 = fadd double %356, %358
  %360 = getelementptr inbounds nuw [8 x i8], ptr %194, i64 %indvars.iv61
  %361 = load double, ptr %360, align 8
  %362 = fadd double %359, %361
  %363 = fmul double %362, 2.000000e-01
  %364 = getelementptr inbounds nuw [8 x i8], ptr %195, i64 %indvars.iv61
  store double %363, ptr %364, align 8
  %365 = getelementptr inbounds nuw [8 x i8], ptr %192, i64 %indvars.iv.next62
  %366 = load double, ptr %365, align 8
  %367 = getelementptr i8, ptr %365, i64 -8
  %368 = load double, ptr %367, align 8
  %369 = fadd double %366, %368
  %indvars.iv.next62.1 = add nuw nsw i64 %indvars.iv61, 2
  %370 = getelementptr inbounds nuw [8 x i8], ptr %192, i64 %indvars.iv.next62.1
  %371 = load double, ptr %370, align 8
  %372 = fadd double %369, %371
  %373 = getelementptr inbounds nuw [8 x i8], ptr %193, i64 %indvars.iv.next62
  %374 = load double, ptr %373, align 8
  %375 = fadd double %372, %374
  %376 = getelementptr inbounds nuw [8 x i8], ptr %194, i64 %indvars.iv.next62
  %377 = load double, ptr %376, align 8
  %378 = fadd double %375, %377
  %379 = fmul double %378, 2.000000e-01
  %380 = getelementptr inbounds nuw [8 x i8], ptr %195, i64 %indvars.iv.next62
  store double %379, ptr %380, align 8
  %exitcond64.not.1 = icmp eq i64 %indvars.iv.next62.1, 29
  br i1 %exitcond64.not.1, label %middle.block, label %scalar.ph, !llvm.loop !24

middle.block:                                     ; preds = %scalar.ph, %vector.body
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1
  %exitcond68.not = icmp eq i64 %indvars.iv.next66, 29
  br i1 %exitcond68.not, label %381, label %.preheader, !llvm.loop !25

381:                                              ; preds = %middle.block
  %382 = add nuw nsw i32 %.04755, 1
  %exitcond69.not = icmp eq i32 %382, 20
  br i1 %exitcond69.not, label %383, label %.preheader50, !llvm.loop !26

383:                                              ; preds = %381
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @print_array(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
  %2 = tail call ptr @__acrt_iob_func(i32 noundef 2) #8
  %fwrite = tail call i64 @fwrite(ptr nonnull @"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@", i64 22, i64 1, ptr %2)
  %3 = tail call ptr @__acrt_iob_func(i32 noundef 2) #8
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@", ptr noundef nonnull @"??_C@_01FHEEJDEE@A?$AA@") #8
  br label %.preheader

.preheader:                                       ; preds = %1, %19
  %indvars.iv18 = phi i64 [ 0, %1 ], [ %indvars.iv.next19, %19 ]
  %5 = mul nuw nsw i64 %indvars.iv18, 30
  %6 = getelementptr inbounds nuw [240 x i8], ptr %0, i64 %indvars.iv18
  br label %7

7:                                                ; preds = %.preheader, %14
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %14 ]
  %8 = add nuw nsw i64 %indvars.iv, %5
  %9 = trunc nuw nsw i64 %8 to i32
  %10 = urem i32 %9, 20
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = tail call ptr @__acrt_iob_func(i32 noundef 2) #8
  %fputc = tail call i32 @fputc(i32 10, ptr %13)
  br label %14

14:                                               ; preds = %12, %7
  %15 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv
  %16 = load double, ptr %15, align 8
  %17 = tail call ptr @__acrt_iob_func(i32 noundef 2) #8
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@", double noundef %16) #8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 30
  br i1 %exitcond.not, label %19, label %7, !llvm.loop !27

19:                                               ; preds = %14
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  %exitcond21.not = icmp eq i64 %indvars.iv.next19, 30
  br i1 %exitcond21.not, label %20, label %.preheader, !llvm.loop !28

20:                                               ; preds = %19
  %21 = tail call ptr @__acrt_iob_func(i32 noundef 2) #8
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@", ptr noundef nonnull @"??_C@_01FHEEJDEE@A?$AA@") #8
  %23 = tail call ptr @__acrt_iob_func(i32 noundef 2) #8
  %fwrite13 = tail call i64 @fwrite(ptr nonnull @"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@", i64 22, i64 1, ptr %23)
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
  %7 = tail call i32 @__stdio_common_vfprintf(i64 noundef %6, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #8
  ret i32 %7
}

declare dso_local i32 @__stdio_common_vfprintf(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #7

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #6 = { nofree nounwind }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 24.0.0git (https://github.com/llvm/llvm-project.git 6f4196219399a3502cea3beb2d0c8c28b2241649)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\stencils\\jacobi-2d\\jacobi-2d.c", directory: "C:\\work\\llvm-profitability-research")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"MaxTLSAlign", i32 65536}
!6 = !{!"clang version 24.0.0git (https://github.com/llvm/llvm-project.git 6f4196219399a3502cea3beb2d0c8c28b2241649)"}
!7 = distinct !{!7, !8, !9, !10}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!"llvm.loop.isvectorized", i32 1}
!10 = !{!"llvm.loop.vectorize.epilogue", i32 1}
!11 = distinct !{!11, !8}
!12 = !{!13}
!13 = distinct !{!13, !14}
!14 = distinct !{!14, i1 false, !"LVerDomain"}
!15 = !{!16}
!16 = distinct !{!16, !14}
!17 = distinct !{!17, !8, !9, !10}
!18 = distinct !{!18, !8}
!19 = !{!20}
!20 = distinct !{!20, !21}
!21 = distinct !{!21, i1 false, !"LVerDomain"}
!22 = !{!23}
!23 = distinct !{!23, !21}
!24 = distinct !{!24, !8, !9, !10}
!25 = distinct !{!25, !8}
!26 = distinct !{!26, !8}
!27 = distinct !{!27, !8}
!28 = distinct !{!28, !8}
