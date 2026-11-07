; ModuleID = 'C:\work\llvm-profitability-research\results\r1\EXP-20261107-R12-discovery\polybench\cholesky\frontend.ll'
source_filename = "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\linear-algebra\\solvers\\cholesky\\cholesky.c"
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
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 1600, i32 noundef 8) #11
  tail call fastcc void @init_array(ptr noundef %3)
  tail call fastcc void @kernel_cholesky(ptr noundef %3)
  %4 = icmp sgt i32 %0, 42
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = load ptr, ptr %1, align 8
  %strcmpload = load i8, ptr %6, align 1
  %.not = icmp eq i8 %strcmpload, 0
  br i1 %.not, label %7, label %8

7:                                                ; preds = %5
  tail call fastcc void @print_array(ptr noundef %3)
  br label %8

8:                                                ; preds = %7, %5, %2
  tail call void @free(ptr noundef %3)
  ret i32 0
}

declare dso_local ptr @polybench_alloc_data(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @init_array(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
  br label %.preheader75

.preheader75:                                     ; preds = %1, %._crit_edge
  %indvars.iv91 = phi i64 [ 1, %1 ], [ %indvars.iv.next92, %._crit_edge ]
  %indvar = phi i64 [ 0, %1 ], [ %indvar.next, %._crit_edge ]
  %2 = mul nuw nsw i64 %indvar, 328
  %3 = getelementptr i8, ptr %0, i64 %2
  %scevgep = getelementptr i8, ptr %3, i64 8
  %4 = shl i64 %indvar, 3
  %5 = sub i64 304, %4
  %6 = and i64 %5, 34359738360
  %7 = add nuw nsw i64 %6, 8
  %8 = getelementptr inbounds nuw [320 x i8], ptr %0, i64 %indvar
  %min.iters.check = icmp samesign ult i64 %indvars.iv91, 2
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader75
  %n.vec = and i64 %indvars.iv91, 9223372036854775806
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph ], [ %vec.ind.next, %vector.body ]
  %9 = sub <2 x i32> zeroinitializer, %vec.ind
  %10 = sitofp <2 x i32> %9 to <2 x double>
  %11 = fdiv <2 x double> %10, splat (double 4.000000e+01)
  %12 = fadd <2 x double> %11, splat (double 1.000000e+00)
  %13 = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %index
  store <2 x double> %12, ptr %13, align 8
  %index.next = add nuw i64 %index, 2
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 2)
  %14 = icmp eq i64 %index.next, %n.vec
  br i1 %14, label %middle.block, label %vector.body, !llvm.loop !7

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %indvars.iv91, %n.vec
  br i1 %cmp.n, label %.loopexit15, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader75, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader75 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ]
  %15 = trunc i64 %indvars.iv to i32
  %16 = sub i32 0, %15
  %17 = sitofp i32 %16 to double
  %18 = fdiv double %17, 4.000000e+01
  %19 = fadd double %18, 1.000000e+00
  %20 = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %indvars.iv
  store double %19, ptr %20, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %indvars.iv91
  br i1 %exitcond.not, label %.loopexit15, label %scalar.ph, !llvm.loop !12

.loopexit15:                                      ; preds = %scalar.ph, %middle.block
  %indvar.next = add nuw nsw i64 %indvar, 1
  %21 = icmp samesign ult i64 %indvar, 39
  br i1 %21, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.loopexit15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 range(i64 0, 313) %7, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.loopexit15
  %22 = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %indvar
  store double 1.000000e+00, ptr %22, align 8
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1
  %exitcond99.not = icmp eq i64 %indvar.next, 40
  br i1 %exitcond99.not, label %.preheader72.preheader, label %.preheader75, !llvm.loop !14

.preheader72.preheader:                           ; preds = %._crit_edge
  %23 = tail call ptr @polybench_alloc_data(i64 noundef 1600, i32 noundef 8) #11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12800) %23, i8 0, i64 12800, i1 false)
  %scevgep7 = getelementptr i8, ptr %23, i64 12800
  br label %.preheader72

.preheader72:                                     ; preds = %.preheader72.preheader, %196
  %indvars.iv114 = phi i64 [ 0, %.preheader72.preheader ], [ %indvars.iv.next115, %196 ]
  %24 = shl nuw nsw i64 %indvars.iv114, 3
  %25 = getelementptr i8, ptr %0, i64 %24
  %scevgep6 = getelementptr i8, ptr %25, i64 12488
  %invariant.gep82 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv114
  %bound0 = icmp ult ptr %23, %scevgep6
  %bound1 = icmp ult ptr %invariant.gep82, %scevgep7
  %found.conflict = and i1 %bound0, %bound1
  %26 = getelementptr inbounds nuw i8, ptr %invariant.gep82, i64 320
  %27 = getelementptr inbounds nuw i8, ptr %invariant.gep82, i64 640
  %28 = getelementptr inbounds nuw i8, ptr %invariant.gep82, i64 960
  %29 = getelementptr inbounds nuw i8, ptr %invariant.gep82, i64 1280
  %30 = getelementptr inbounds nuw i8, ptr %invariant.gep82, i64 1600
  %31 = getelementptr inbounds nuw i8, ptr %invariant.gep82, i64 1920
  %32 = getelementptr inbounds nuw i8, ptr %invariant.gep82, i64 2240
  %33 = getelementptr inbounds nuw i8, ptr %invariant.gep82, i64 2560
  %34 = getelementptr inbounds nuw i8, ptr %invariant.gep82, i64 2880
  %35 = getelementptr inbounds nuw i8, ptr %invariant.gep82, i64 3200
  %36 = getelementptr inbounds nuw i8, ptr %invariant.gep82, i64 3520
  %37 = getelementptr inbounds nuw i8, ptr %invariant.gep82, i64 3840
  %38 = getelementptr inbounds nuw i8, ptr %invariant.gep82, i64 4160
  %39 = getelementptr inbounds nuw i8, ptr %invariant.gep82, i64 4480
  %40 = getelementptr inbounds nuw i8, ptr %invariant.gep82, i64 4800
  %41 = getelementptr inbounds nuw i8, ptr %invariant.gep82, i64 5120
  %42 = getelementptr inbounds nuw i8, ptr %invariant.gep82, i64 5440
  %43 = getelementptr inbounds nuw i8, ptr %invariant.gep82, i64 5760
  %44 = getelementptr inbounds nuw i8, ptr %invariant.gep82, i64 6080
  %45 = getelementptr inbounds nuw i8, ptr %invariant.gep82, i64 6400
  %46 = getelementptr inbounds nuw i8, ptr %invariant.gep82, i64 6720
  %47 = getelementptr inbounds nuw i8, ptr %invariant.gep82, i64 7040
  %48 = getelementptr inbounds nuw i8, ptr %invariant.gep82, i64 7360
  %49 = getelementptr inbounds nuw i8, ptr %invariant.gep82, i64 7680
  %50 = getelementptr inbounds nuw i8, ptr %invariant.gep82, i64 8000
  %51 = getelementptr inbounds nuw i8, ptr %invariant.gep82, i64 8320
  %52 = getelementptr inbounds nuw i8, ptr %invariant.gep82, i64 8640
  %53 = getelementptr inbounds nuw i8, ptr %invariant.gep82, i64 8960
  %54 = getelementptr inbounds nuw i8, ptr %invariant.gep82, i64 9280
  %55 = getelementptr inbounds nuw i8, ptr %invariant.gep82, i64 9600
  %56 = getelementptr inbounds nuw i8, ptr %invariant.gep82, i64 9920
  %57 = getelementptr inbounds nuw i8, ptr %invariant.gep82, i64 10240
  %58 = getelementptr inbounds nuw i8, ptr %invariant.gep82, i64 10560
  %59 = getelementptr inbounds nuw i8, ptr %invariant.gep82, i64 10880
  %60 = getelementptr inbounds nuw i8, ptr %invariant.gep82, i64 11200
  %61 = getelementptr inbounds nuw i8, ptr %invariant.gep82, i64 11520
  %62 = getelementptr inbounds nuw i8, ptr %invariant.gep82, i64 11840
  %63 = getelementptr inbounds nuw i8, ptr %invariant.gep82, i64 12160
  %64 = getelementptr inbounds nuw i8, ptr %invariant.gep82, i64 12480
  br label %.preheader71

.preheader71:                                     ; preds = %.preheader72, %middle.block14
  %indvars.iv110 = phi i64 [ 0, %.preheader72 ], [ %indvars.iv.next111, %middle.block14 ]
  %gep83 = getelementptr inbounds nuw [320 x i8], ptr %invariant.gep82, i64 %indvars.iv110
  %65 = getelementptr inbounds nuw [320 x i8], ptr %23, i64 %indvars.iv110
  br i1 %found.conflict, label %scalar.ph8, label %vector.body10

vector.body10:                                    ; preds = %.preheader71
  %66 = load double, ptr %gep83, align 8, !alias.scope !15
  %broadcast.splatinsert = insertelement <2 x double> poison, double %66, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %67 = load double, ptr %invariant.gep82, align 8, !alias.scope !18
  %68 = load double, ptr %26, align 8, !alias.scope !18
  %69 = insertelement <2 x double> poison, double %67, i64 0
  %70 = insertelement <2 x double> %69, double %68, i64 1
  %71 = load double, ptr %27, align 8, !alias.scope !18
  %72 = load double, ptr %28, align 8, !alias.scope !18
  %73 = insertelement <2 x double> poison, double %71, i64 0
  %74 = insertelement <2 x double> %73, double %72, i64 1
  %75 = getelementptr inbounds nuw i8, ptr %65, i64 16
  %wide.load = load <2 x double>, ptr %65, align 8, !alias.scope !20, !noalias !22
  %wide.load12 = load <2 x double>, ptr %75, align 8, !alias.scope !20, !noalias !22
  %76 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %70, <2 x double> %wide.load)
  %77 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %74, <2 x double> %wide.load12)
  store <2 x double> %76, ptr %65, align 8, !alias.scope !20, !noalias !22
  store <2 x double> %77, ptr %75, align 8, !alias.scope !20, !noalias !22
  %78 = load double, ptr %29, align 8, !alias.scope !18
  %79 = load double, ptr %30, align 8, !alias.scope !18
  %80 = insertelement <2 x double> poison, double %78, i64 0
  %81 = insertelement <2 x double> %80, double %79, i64 1
  %82 = load double, ptr %31, align 8, !alias.scope !18
  %83 = load double, ptr %32, align 8, !alias.scope !18
  %84 = insertelement <2 x double> poison, double %82, i64 0
  %85 = insertelement <2 x double> %84, double %83, i64 1
  %86 = getelementptr inbounds nuw i8, ptr %65, i64 32
  %87 = getelementptr inbounds nuw i8, ptr %65, i64 48
  %wide.load.1 = load <2 x double>, ptr %86, align 8, !alias.scope !20, !noalias !22
  %wide.load12.1 = load <2 x double>, ptr %87, align 8, !alias.scope !20, !noalias !22
  %88 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %81, <2 x double> %wide.load.1)
  %89 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %85, <2 x double> %wide.load12.1)
  store <2 x double> %88, ptr %86, align 8, !alias.scope !20, !noalias !22
  store <2 x double> %89, ptr %87, align 8, !alias.scope !20, !noalias !22
  %90 = load double, ptr %33, align 8, !alias.scope !18
  %91 = load double, ptr %34, align 8, !alias.scope !18
  %92 = insertelement <2 x double> poison, double %90, i64 0
  %93 = insertelement <2 x double> %92, double %91, i64 1
  %94 = load double, ptr %35, align 8, !alias.scope !18
  %95 = load double, ptr %36, align 8, !alias.scope !18
  %96 = insertelement <2 x double> poison, double %94, i64 0
  %97 = insertelement <2 x double> %96, double %95, i64 1
  %98 = getelementptr inbounds nuw i8, ptr %65, i64 64
  %99 = getelementptr inbounds nuw i8, ptr %65, i64 80
  %wide.load.2 = load <2 x double>, ptr %98, align 8, !alias.scope !20, !noalias !22
  %wide.load12.2 = load <2 x double>, ptr %99, align 8, !alias.scope !20, !noalias !22
  %100 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %93, <2 x double> %wide.load.2)
  %101 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %97, <2 x double> %wide.load12.2)
  store <2 x double> %100, ptr %98, align 8, !alias.scope !20, !noalias !22
  store <2 x double> %101, ptr %99, align 8, !alias.scope !20, !noalias !22
  %102 = load double, ptr %37, align 8, !alias.scope !18
  %103 = load double, ptr %38, align 8, !alias.scope !18
  %104 = insertelement <2 x double> poison, double %102, i64 0
  %105 = insertelement <2 x double> %104, double %103, i64 1
  %106 = load double, ptr %39, align 8, !alias.scope !18
  %107 = load double, ptr %40, align 8, !alias.scope !18
  %108 = insertelement <2 x double> poison, double %106, i64 0
  %109 = insertelement <2 x double> %108, double %107, i64 1
  %110 = getelementptr inbounds nuw i8, ptr %65, i64 96
  %111 = getelementptr inbounds nuw i8, ptr %65, i64 112
  %wide.load.3 = load <2 x double>, ptr %110, align 8, !alias.scope !20, !noalias !22
  %wide.load12.3 = load <2 x double>, ptr %111, align 8, !alias.scope !20, !noalias !22
  %112 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %105, <2 x double> %wide.load.3)
  %113 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %109, <2 x double> %wide.load12.3)
  store <2 x double> %112, ptr %110, align 8, !alias.scope !20, !noalias !22
  store <2 x double> %113, ptr %111, align 8, !alias.scope !20, !noalias !22
  %114 = load double, ptr %41, align 8, !alias.scope !18
  %115 = load double, ptr %42, align 8, !alias.scope !18
  %116 = insertelement <2 x double> poison, double %114, i64 0
  %117 = insertelement <2 x double> %116, double %115, i64 1
  %118 = load double, ptr %43, align 8, !alias.scope !18
  %119 = load double, ptr %44, align 8, !alias.scope !18
  %120 = insertelement <2 x double> poison, double %118, i64 0
  %121 = insertelement <2 x double> %120, double %119, i64 1
  %122 = getelementptr inbounds nuw i8, ptr %65, i64 128
  %123 = getelementptr inbounds nuw i8, ptr %65, i64 144
  %wide.load.4 = load <2 x double>, ptr %122, align 8, !alias.scope !20, !noalias !22
  %wide.load12.4 = load <2 x double>, ptr %123, align 8, !alias.scope !20, !noalias !22
  %124 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %117, <2 x double> %wide.load.4)
  %125 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %121, <2 x double> %wide.load12.4)
  store <2 x double> %124, ptr %122, align 8, !alias.scope !20, !noalias !22
  store <2 x double> %125, ptr %123, align 8, !alias.scope !20, !noalias !22
  %126 = load double, ptr %45, align 8, !alias.scope !18
  %127 = load double, ptr %46, align 8, !alias.scope !18
  %128 = insertelement <2 x double> poison, double %126, i64 0
  %129 = insertelement <2 x double> %128, double %127, i64 1
  %130 = load double, ptr %47, align 8, !alias.scope !18
  %131 = load double, ptr %48, align 8, !alias.scope !18
  %132 = insertelement <2 x double> poison, double %130, i64 0
  %133 = insertelement <2 x double> %132, double %131, i64 1
  %134 = getelementptr inbounds nuw i8, ptr %65, i64 160
  %135 = getelementptr inbounds nuw i8, ptr %65, i64 176
  %wide.load.5 = load <2 x double>, ptr %134, align 8, !alias.scope !20, !noalias !22
  %wide.load12.5 = load <2 x double>, ptr %135, align 8, !alias.scope !20, !noalias !22
  %136 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %129, <2 x double> %wide.load.5)
  %137 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %133, <2 x double> %wide.load12.5)
  store <2 x double> %136, ptr %134, align 8, !alias.scope !20, !noalias !22
  store <2 x double> %137, ptr %135, align 8, !alias.scope !20, !noalias !22
  %138 = load double, ptr %49, align 8, !alias.scope !18
  %139 = load double, ptr %50, align 8, !alias.scope !18
  %140 = insertelement <2 x double> poison, double %138, i64 0
  %141 = insertelement <2 x double> %140, double %139, i64 1
  %142 = load double, ptr %51, align 8, !alias.scope !18
  %143 = load double, ptr %52, align 8, !alias.scope !18
  %144 = insertelement <2 x double> poison, double %142, i64 0
  %145 = insertelement <2 x double> %144, double %143, i64 1
  %146 = getelementptr inbounds nuw i8, ptr %65, i64 192
  %147 = getelementptr inbounds nuw i8, ptr %65, i64 208
  %wide.load.6 = load <2 x double>, ptr %146, align 8, !alias.scope !20, !noalias !22
  %wide.load12.6 = load <2 x double>, ptr %147, align 8, !alias.scope !20, !noalias !22
  %148 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %141, <2 x double> %wide.load.6)
  %149 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %145, <2 x double> %wide.load12.6)
  store <2 x double> %148, ptr %146, align 8, !alias.scope !20, !noalias !22
  store <2 x double> %149, ptr %147, align 8, !alias.scope !20, !noalias !22
  %150 = load double, ptr %53, align 8, !alias.scope !18
  %151 = load double, ptr %54, align 8, !alias.scope !18
  %152 = insertelement <2 x double> poison, double %150, i64 0
  %153 = insertelement <2 x double> %152, double %151, i64 1
  %154 = load double, ptr %55, align 8, !alias.scope !18
  %155 = load double, ptr %56, align 8, !alias.scope !18
  %156 = insertelement <2 x double> poison, double %154, i64 0
  %157 = insertelement <2 x double> %156, double %155, i64 1
  %158 = getelementptr inbounds nuw i8, ptr %65, i64 224
  %159 = getelementptr inbounds nuw i8, ptr %65, i64 240
  %wide.load.7 = load <2 x double>, ptr %158, align 8, !alias.scope !20, !noalias !22
  %wide.load12.7 = load <2 x double>, ptr %159, align 8, !alias.scope !20, !noalias !22
  %160 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %153, <2 x double> %wide.load.7)
  %161 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %157, <2 x double> %wide.load12.7)
  store <2 x double> %160, ptr %158, align 8, !alias.scope !20, !noalias !22
  store <2 x double> %161, ptr %159, align 8, !alias.scope !20, !noalias !22
  %162 = load double, ptr %57, align 8, !alias.scope !18
  %163 = load double, ptr %58, align 8, !alias.scope !18
  %164 = insertelement <2 x double> poison, double %162, i64 0
  %165 = insertelement <2 x double> %164, double %163, i64 1
  %166 = load double, ptr %59, align 8, !alias.scope !18
  %167 = load double, ptr %60, align 8, !alias.scope !18
  %168 = insertelement <2 x double> poison, double %166, i64 0
  %169 = insertelement <2 x double> %168, double %167, i64 1
  %170 = getelementptr inbounds nuw i8, ptr %65, i64 256
  %171 = getelementptr inbounds nuw i8, ptr %65, i64 272
  %wide.load.8 = load <2 x double>, ptr %170, align 8, !alias.scope !20, !noalias !22
  %wide.load12.8 = load <2 x double>, ptr %171, align 8, !alias.scope !20, !noalias !22
  %172 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %165, <2 x double> %wide.load.8)
  %173 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %169, <2 x double> %wide.load12.8)
  store <2 x double> %172, ptr %170, align 8, !alias.scope !20, !noalias !22
  store <2 x double> %173, ptr %171, align 8, !alias.scope !20, !noalias !22
  %174 = load double, ptr %61, align 8, !alias.scope !18
  %175 = load double, ptr %62, align 8, !alias.scope !18
  %176 = insertelement <2 x double> poison, double %174, i64 0
  %177 = insertelement <2 x double> %176, double %175, i64 1
  %178 = load double, ptr %63, align 8, !alias.scope !18
  %179 = load double, ptr %64, align 8, !alias.scope !18
  %180 = insertelement <2 x double> poison, double %178, i64 0
  %181 = insertelement <2 x double> %180, double %179, i64 1
  %182 = getelementptr inbounds nuw i8, ptr %65, i64 288
  %183 = getelementptr inbounds nuw i8, ptr %65, i64 304
  %wide.load.9 = load <2 x double>, ptr %182, align 8, !alias.scope !20, !noalias !22
  %wide.load12.9 = load <2 x double>, ptr %183, align 8, !alias.scope !20, !noalias !22
  %184 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %177, <2 x double> %wide.load.9)
  %185 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %181, <2 x double> %wide.load12.9)
  store <2 x double> %184, ptr %182, align 8, !alias.scope !20, !noalias !22
  store <2 x double> %185, ptr %183, align 8, !alias.scope !20, !noalias !22
  br label %middle.block14

scalar.ph8:                                       ; preds = %.preheader71, %scalar.ph8
  %indvars.iv106 = phi i64 [ %indvars.iv.next107.1, %scalar.ph8 ], [ 0, %.preheader71 ]
  %186 = load double, ptr %gep83, align 8
  %gep = getelementptr inbounds nuw [320 x i8], ptr %invariant.gep82, i64 %indvars.iv106
  %187 = load double, ptr %gep, align 8
  %188 = getelementptr inbounds nuw [8 x i8], ptr %65, i64 %indvars.iv106
  %189 = load double, ptr %188, align 8
  %190 = tail call double @llvm.fmuladd.f64(double %186, double %187, double %189)
  store double %190, ptr %188, align 8
  %indvars.iv.next107 = or disjoint i64 %indvars.iv106, 1
  %191 = load double, ptr %gep83, align 8
  %gep.1 = getelementptr inbounds nuw [320 x i8], ptr %invariant.gep82, i64 %indvars.iv.next107
  %192 = load double, ptr %gep.1, align 8
  %193 = getelementptr inbounds nuw [8 x i8], ptr %65, i64 %indvars.iv.next107
  %194 = load double, ptr %193, align 8
  %195 = tail call double @llvm.fmuladd.f64(double %191, double %192, double %194)
  store double %195, ptr %193, align 8
  %indvars.iv.next107.1 = add nuw nsw i64 %indvars.iv106, 2
  %exitcond109.not.1 = icmp eq i64 %indvars.iv.next107.1, 40
  br i1 %exitcond109.not.1, label %middle.block14, label %scalar.ph8, !llvm.loop !23

middle.block14:                                   ; preds = %scalar.ph8, %vector.body10
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1
  %exitcond113.not = icmp eq i64 %indvars.iv.next111, 40
  br i1 %exitcond113.not, label %196, label %.preheader71, !llvm.loop !24

196:                                              ; preds = %middle.block14
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1
  %exitcond117.not = icmp eq i64 %indvars.iv.next115, 40
  br i1 %exitcond117.not, label %.preheader, label %.preheader72, !llvm.loop !25

.preheader:                                       ; preds = %196, %.preheader
  %indvars.iv122 = phi i64 [ %indvars.iv.next123, %.preheader ], [ 0, %196 ]
  %197 = getelementptr inbounds nuw [320 x i8], ptr %23, i64 %indvars.iv122
  %198 = getelementptr inbounds nuw [320 x i8], ptr %0, i64 %indvars.iv122
  %199 = load double, ptr %197, align 8
  store double %199, ptr %198, align 8
  %200 = getelementptr inbounds nuw i8, ptr %197, i64 8
  %201 = load double, ptr %200, align 8
  %202 = getelementptr inbounds nuw i8, ptr %198, i64 8
  store double %201, ptr %202, align 8
  %203 = getelementptr inbounds nuw i8, ptr %197, i64 16
  %204 = load double, ptr %203, align 8
  %205 = getelementptr inbounds nuw i8, ptr %198, i64 16
  store double %204, ptr %205, align 8
  %206 = getelementptr inbounds nuw i8, ptr %197, i64 24
  %207 = load double, ptr %206, align 8
  %208 = getelementptr inbounds nuw i8, ptr %198, i64 24
  store double %207, ptr %208, align 8
  %209 = getelementptr inbounds nuw i8, ptr %197, i64 32
  %210 = load double, ptr %209, align 8
  %211 = getelementptr inbounds nuw i8, ptr %198, i64 32
  store double %210, ptr %211, align 8
  %212 = getelementptr inbounds nuw i8, ptr %197, i64 40
  %213 = load double, ptr %212, align 8
  %214 = getelementptr inbounds nuw i8, ptr %198, i64 40
  store double %213, ptr %214, align 8
  %215 = getelementptr inbounds nuw i8, ptr %197, i64 48
  %216 = load double, ptr %215, align 8
  %217 = getelementptr inbounds nuw i8, ptr %198, i64 48
  store double %216, ptr %217, align 8
  %218 = getelementptr inbounds nuw i8, ptr %197, i64 56
  %219 = load double, ptr %218, align 8
  %220 = getelementptr inbounds nuw i8, ptr %198, i64 56
  store double %219, ptr %220, align 8
  %221 = getelementptr inbounds nuw i8, ptr %197, i64 64
  %222 = load double, ptr %221, align 8
  %223 = getelementptr inbounds nuw i8, ptr %198, i64 64
  store double %222, ptr %223, align 8
  %224 = getelementptr inbounds nuw i8, ptr %197, i64 72
  %225 = load double, ptr %224, align 8
  %226 = getelementptr inbounds nuw i8, ptr %198, i64 72
  store double %225, ptr %226, align 8
  %227 = getelementptr inbounds nuw i8, ptr %197, i64 80
  %228 = load double, ptr %227, align 8
  %229 = getelementptr inbounds nuw i8, ptr %198, i64 80
  store double %228, ptr %229, align 8
  %230 = getelementptr inbounds nuw i8, ptr %197, i64 88
  %231 = load double, ptr %230, align 8
  %232 = getelementptr inbounds nuw i8, ptr %198, i64 88
  store double %231, ptr %232, align 8
  %233 = getelementptr inbounds nuw i8, ptr %197, i64 96
  %234 = load double, ptr %233, align 8
  %235 = getelementptr inbounds nuw i8, ptr %198, i64 96
  store double %234, ptr %235, align 8
  %236 = getelementptr inbounds nuw i8, ptr %197, i64 104
  %237 = load double, ptr %236, align 8
  %238 = getelementptr inbounds nuw i8, ptr %198, i64 104
  store double %237, ptr %238, align 8
  %239 = getelementptr inbounds nuw i8, ptr %197, i64 112
  %240 = load double, ptr %239, align 8
  %241 = getelementptr inbounds nuw i8, ptr %198, i64 112
  store double %240, ptr %241, align 8
  %242 = getelementptr inbounds nuw i8, ptr %197, i64 120
  %243 = load double, ptr %242, align 8
  %244 = getelementptr inbounds nuw i8, ptr %198, i64 120
  store double %243, ptr %244, align 8
  %245 = getelementptr inbounds nuw i8, ptr %197, i64 128
  %246 = load double, ptr %245, align 8
  %247 = getelementptr inbounds nuw i8, ptr %198, i64 128
  store double %246, ptr %247, align 8
  %248 = getelementptr inbounds nuw i8, ptr %197, i64 136
  %249 = load double, ptr %248, align 8
  %250 = getelementptr inbounds nuw i8, ptr %198, i64 136
  store double %249, ptr %250, align 8
  %251 = getelementptr inbounds nuw i8, ptr %197, i64 144
  %252 = load double, ptr %251, align 8
  %253 = getelementptr inbounds nuw i8, ptr %198, i64 144
  store double %252, ptr %253, align 8
  %254 = getelementptr inbounds nuw i8, ptr %197, i64 152
  %255 = load double, ptr %254, align 8
  %256 = getelementptr inbounds nuw i8, ptr %198, i64 152
  store double %255, ptr %256, align 8
  %257 = getelementptr inbounds nuw i8, ptr %197, i64 160
  %258 = load double, ptr %257, align 8
  %259 = getelementptr inbounds nuw i8, ptr %198, i64 160
  store double %258, ptr %259, align 8
  %260 = getelementptr inbounds nuw i8, ptr %197, i64 168
  %261 = load double, ptr %260, align 8
  %262 = getelementptr inbounds nuw i8, ptr %198, i64 168
  store double %261, ptr %262, align 8
  %263 = getelementptr inbounds nuw i8, ptr %197, i64 176
  %264 = load double, ptr %263, align 8
  %265 = getelementptr inbounds nuw i8, ptr %198, i64 176
  store double %264, ptr %265, align 8
  %266 = getelementptr inbounds nuw i8, ptr %197, i64 184
  %267 = load double, ptr %266, align 8
  %268 = getelementptr inbounds nuw i8, ptr %198, i64 184
  store double %267, ptr %268, align 8
  %269 = getelementptr inbounds nuw i8, ptr %197, i64 192
  %270 = load double, ptr %269, align 8
  %271 = getelementptr inbounds nuw i8, ptr %198, i64 192
  store double %270, ptr %271, align 8
  %272 = getelementptr inbounds nuw i8, ptr %197, i64 200
  %273 = load double, ptr %272, align 8
  %274 = getelementptr inbounds nuw i8, ptr %198, i64 200
  store double %273, ptr %274, align 8
  %275 = getelementptr inbounds nuw i8, ptr %197, i64 208
  %276 = load double, ptr %275, align 8
  %277 = getelementptr inbounds nuw i8, ptr %198, i64 208
  store double %276, ptr %277, align 8
  %278 = getelementptr inbounds nuw i8, ptr %197, i64 216
  %279 = load double, ptr %278, align 8
  %280 = getelementptr inbounds nuw i8, ptr %198, i64 216
  store double %279, ptr %280, align 8
  %281 = getelementptr inbounds nuw i8, ptr %197, i64 224
  %282 = load double, ptr %281, align 8
  %283 = getelementptr inbounds nuw i8, ptr %198, i64 224
  store double %282, ptr %283, align 8
  %284 = getelementptr inbounds nuw i8, ptr %197, i64 232
  %285 = load double, ptr %284, align 8
  %286 = getelementptr inbounds nuw i8, ptr %198, i64 232
  store double %285, ptr %286, align 8
  %287 = getelementptr inbounds nuw i8, ptr %197, i64 240
  %288 = load double, ptr %287, align 8
  %289 = getelementptr inbounds nuw i8, ptr %198, i64 240
  store double %288, ptr %289, align 8
  %290 = getelementptr inbounds nuw i8, ptr %197, i64 248
  %291 = load double, ptr %290, align 8
  %292 = getelementptr inbounds nuw i8, ptr %198, i64 248
  store double %291, ptr %292, align 8
  %293 = getelementptr inbounds nuw i8, ptr %197, i64 256
  %294 = load double, ptr %293, align 8
  %295 = getelementptr inbounds nuw i8, ptr %198, i64 256
  store double %294, ptr %295, align 8
  %296 = getelementptr inbounds nuw i8, ptr %197, i64 264
  %297 = load double, ptr %296, align 8
  %298 = getelementptr inbounds nuw i8, ptr %198, i64 264
  store double %297, ptr %298, align 8
  %299 = getelementptr inbounds nuw i8, ptr %197, i64 272
  %300 = load double, ptr %299, align 8
  %301 = getelementptr inbounds nuw i8, ptr %198, i64 272
  store double %300, ptr %301, align 8
  %302 = getelementptr inbounds nuw i8, ptr %197, i64 280
  %303 = load double, ptr %302, align 8
  %304 = getelementptr inbounds nuw i8, ptr %198, i64 280
  store double %303, ptr %304, align 8
  %305 = getelementptr inbounds nuw i8, ptr %197, i64 288
  %306 = load double, ptr %305, align 8
  %307 = getelementptr inbounds nuw i8, ptr %198, i64 288
  store double %306, ptr %307, align 8
  %308 = getelementptr inbounds nuw i8, ptr %197, i64 296
  %309 = load double, ptr %308, align 8
  %310 = getelementptr inbounds nuw i8, ptr %198, i64 296
  store double %309, ptr %310, align 8
  %311 = getelementptr inbounds nuw i8, ptr %197, i64 304
  %312 = load double, ptr %311, align 8
  %313 = getelementptr inbounds nuw i8, ptr %198, i64 304
  store double %312, ptr %313, align 8
  %314 = getelementptr inbounds nuw i8, ptr %197, i64 312
  %315 = load double, ptr %314, align 8
  %316 = getelementptr inbounds nuw i8, ptr %198, i64 312
  store double %315, ptr %316, align 8
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1
  %exitcond125.not = icmp eq i64 %indvars.iv.next123, 40
  br i1 %exitcond125.not, label %317, label %.preheader, !llvm.loop !26

317:                                              ; preds = %.preheader
  tail call void @free(ptr noundef nonnull %23)
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define internal fastcc void @kernel_cholesky(ptr nofree noundef captures(none) %0) unnamed_addr #2 {
  br label %.preheader43

.preheader43:                                     ; preds = %1, %._crit_edge48
  %indvars.iv63 = phi i64 [ 0, %1 ], [ %indvars.iv.next64, %._crit_edge48 ]
  %.not = icmp eq i64 %indvars.iv63, 0
  br i1 %.not, label %.preheader42.._crit_edge48_crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader43
  %2 = getelementptr inbounds nuw [320 x i8], ptr %0, i64 %indvars.iv63
  br label %.preheader

.preheader42.._crit_edge48_crit_edge:             ; preds = %.preheader43
  %.pre69 = load double, ptr %0, align 8
  br label %._crit_edge48

.lr.ph47:                                         ; preds = %._crit_edge
  %3 = getelementptr inbounds nuw [320 x i8], ptr %0, i64 %indvars.iv63
  %4 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv63
  %.promoted49 = load double, ptr %4, align 8
  %xtraiter6 = and i64 %indvars.iv63, 1
  %5 = icmp eq i64 %indvars.iv63, 1
  br i1 %5, label %.epil.preheader5, label %.lr.ph47.new

.lr.ph47.new:                                     ; preds = %.lr.ph47
  %unroll_iter12 = and i64 %indvars.iv63, 9223372036854775806
  br label %35

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %indvars.iv54 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next55, %._crit_edge ]
  %.not51 = icmp eq i64 %indvars.iv54, 0
  br i1 %.not51, label %.preheader.._crit_edge_crit_edge, label %.lr.ph

.preheader.._crit_edge_crit_edge:                 ; preds = %.preheader
  %.pre = load double, ptr %2, align 8
  br label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %6 = getelementptr inbounds nuw [320 x i8], ptr %0, i64 %indvars.iv54
  %7 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv54
  %.promoted = load double, ptr %7, align 8
  %xtraiter = and i64 %indvars.iv54, 1
  %8 = icmp eq i64 %indvars.iv54, 1
  br i1 %8, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %indvars.iv54, 9223372036854775806
  br label %9

9:                                                ; preds = %9, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %9 ]
  %10 = phi double [ %.promoted, %.lr.ph.new ], [ %22, %9 ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %9 ]
  %11 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %12 = load double, ptr %11, align 8
  %13 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv
  %14 = load double, ptr %13, align 8
  %15 = fneg double %12
  %16 = tail call double @llvm.fmuladd.f64(double %15, double %14, double %10)
  store double %16, ptr %7, align 8
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %17 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  %18 = load double, ptr %17, align 8
  %19 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv.next
  %20 = load double, ptr %19, align 8
  %21 = fneg double %18
  %22 = tail call double @llvm.fmuladd.f64(double %21, double %20, double %16)
  store double %22, ptr %7, align 8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %9, !llvm.loop !27

._crit_edge.loopexit.unr-lcssa:                   ; preds = %9
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.epil.init = phi double [ %.promoted, %.lr.ph ], [ %22, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod4 = trunc i64 %indvars.iv54 to i1
  tail call void @llvm.assume(i1 %lcmp.mod4)
  %23 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.epil.init
  %24 = load double, ptr %23, align 8
  %25 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv.epil.init
  %26 = load double, ptr %25, align 8
  %27 = fneg double %24
  %28 = tail call double @llvm.fmuladd.f64(double %27, double %26, double %.epil.init)
  store double %28, ptr %7, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader.._crit_edge_crit_edge
  %29 = phi double [ %.pre, %.preheader.._crit_edge_crit_edge ], [ %22, %._crit_edge.loopexit.unr-lcssa ], [ %28, %.epil.preheader ]
  %30 = getelementptr inbounds nuw [320 x i8], ptr %0, i64 %indvars.iv54
  %31 = getelementptr inbounds nuw [8 x i8], ptr %30, i64 %indvars.iv54
  %32 = load double, ptr %31, align 8
  %33 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv54
  %34 = fdiv double %29, %32
  store double %34, ptr %33, align 8
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1
  %exitcond58.not = icmp eq i64 %indvars.iv.next55, %indvars.iv63
  br i1 %exitcond58.not, label %.lr.ph47, label %.preheader, !llvm.loop !28

35:                                               ; preds = %35, %.lr.ph47.new
  %indvars.iv59 = phi i64 [ 0, %.lr.ph47.new ], [ %indvars.iv.next60.1, %35 ]
  %36 = phi double [ %.promoted49, %.lr.ph47.new ], [ %45, %35 ]
  %niter13 = phi i64 [ 0, %.lr.ph47.new ], [ %niter13.next.1, %35 ]
  %37 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv59
  %38 = load double, ptr %37, align 8
  %39 = fneg double %38
  %40 = tail call double @llvm.fmuladd.f64(double %39, double %38, double %36)
  store double %40, ptr %4, align 8
  %41 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv59
  %42 = getelementptr inbounds nuw i8, ptr %41, i64 8
  %43 = load double, ptr %42, align 8
  %44 = fneg double %43
  %45 = tail call double @llvm.fmuladd.f64(double %44, double %43, double %40)
  store double %45, ptr %4, align 8
  %indvars.iv.next60.1 = add nuw nsw i64 %indvars.iv59, 2
  %niter13.next.1 = add i64 %niter13, 2
  %niter13.ncmp.1 = icmp eq i64 %niter13.next.1, %unroll_iter12
  br i1 %niter13.ncmp.1, label %._crit_edge48.loopexit.unr-lcssa, label %35, !llvm.loop !29

._crit_edge48.loopexit.unr-lcssa:                 ; preds = %35
  %lcmp.mod9.not = icmp eq i64 %xtraiter6, 0
  br i1 %lcmp.mod9.not, label %._crit_edge48, label %.epil.preheader5

.epil.preheader5:                                 ; preds = %._crit_edge48.loopexit.unr-lcssa, %.lr.ph47
  %indvars.iv59.epil.init = phi i64 [ 0, %.lr.ph47 ], [ %indvars.iv.next60.1, %._crit_edge48.loopexit.unr-lcssa ]
  %.epil.init8 = phi double [ %.promoted49, %.lr.ph47 ], [ %45, %._crit_edge48.loopexit.unr-lcssa ]
  %lcmp.mod11 = trunc i64 %indvars.iv63 to i1
  tail call void @llvm.assume(i1 %lcmp.mod11)
  %46 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv59.epil.init
  %47 = load double, ptr %46, align 8
  %48 = fneg double %47
  %49 = tail call double @llvm.fmuladd.f64(double %48, double %47, double %.epil.init8)
  store double %49, ptr %4, align 8
  br label %._crit_edge48

._crit_edge48:                                    ; preds = %.epil.preheader5, %._crit_edge48.loopexit.unr-lcssa, %.preheader42.._crit_edge48_crit_edge
  %50 = phi double [ %.pre69, %.preheader42.._crit_edge48_crit_edge ], [ %45, %._crit_edge48.loopexit.unr-lcssa ], [ %49, %.epil.preheader5 ]
  %51 = getelementptr inbounds nuw [320 x i8], ptr %0, i64 %indvars.iv63
  %52 = getelementptr inbounds nuw [8 x i8], ptr %51, i64 %indvars.iv63
  %53 = tail call double @sqrt(double noundef %50) #11
  store double %53, ptr %52, align 8
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1
  %exitcond66.not = icmp eq i64 %indvars.iv.next64, 40
  br i1 %exitcond66.not, label %54, label %.preheader43, !llvm.loop !30

54:                                               ; preds = %._crit_edge48
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @print_array(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
  %2 = tail call ptr @__acrt_iob_func(i32 noundef 2) #11
  %fwrite = tail call i64 @fwrite(ptr nonnull @"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@", i64 22, i64 1, ptr %2)
  %3 = tail call ptr @__acrt_iob_func(i32 noundef 2) #11
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@", ptr noundef nonnull @"??_C@_01FHEEJDEE@A?$AA@") #11
  br label %.preheader

.preheader:                                       ; preds = %1, %18
  %indvars.iv22 = phi i64 [ 0, %1 ], [ %indvars.iv.next23, %18 ]
  %indvars.iv20 = phi i64 [ 1, %1 ], [ %indvars.iv.next21, %18 ]
  %5 = mul nuw nsw i64 %indvars.iv22, 40
  %6 = getelementptr inbounds nuw [320 x i8], ptr %0, i64 %indvars.iv22
  br label %7

7:                                                ; preds = %.preheader, %13
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %13 ]
  %8 = add nuw nsw i64 %indvars.iv, %5
  %9 = trunc nuw nsw i64 %8 to i32
  %.urem = urem i32 %9, 20
  %10 = icmp eq i32 %.urem, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = tail call ptr @__acrt_iob_func(i32 noundef 2) #11
  %fputc = tail call i32 @fputc(i32 10, ptr %12)
  br label %13

13:                                               ; preds = %11, %7
  %14 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv
  %15 = load double, ptr %14, align 8
  %16 = tail call ptr @__acrt_iob_func(i32 noundef 2) #11
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef nonnull @"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@", double noundef %15) #11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %indvars.iv20
  br i1 %exitcond.not, label %18, label %7, !llvm.loop !31

18:                                               ; preds = %13
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1
  %exitcond27.not = icmp eq i64 %indvars.iv.next23, 40
  br i1 %exitcond27.not, label %19, label %.preheader, !llvm.loop !32

19:                                               ; preds = %18
  %20 = tail call ptr @__acrt_iob_func(i32 noundef 2) #11
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@", ptr noundef nonnull @"??_C@_01FHEEJDEE@A?$AA@") #11
  %22 = tail call ptr @__acrt_iob_func(i32 noundef 2) #11
  %fwrite13 = tail call i64 @fwrite(ptr nonnull @"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@", i64 22, i64 1, ptr %22)
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare dso_local void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #4

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local ptr @__local_stdio_printf_options() local_unnamed_addr #0 comdat {
  ret ptr @__local_stdio_printf_options._OptionsStorage
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare dso_local double @sqrt(double noundef) local_unnamed_addr #6

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
  %7 = tail call i32 @__stdio_common_vfprintf(i64 noundef %6, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #11
  ret i32 %7
}

declare dso_local i32 @__stdio_common_vfprintf(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #5 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 24.0.0git (https://github.com/llvm/llvm-project.git 6f4196219399a3502cea3beb2d0c8c28b2241649)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\linear-algebra\\solvers\\cholesky\\cholesky.c", directory: "C:\\work\\llvm-profitability-research")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"MaxTLSAlign", i32 65536}
!6 = !{!"clang version 24.0.0git (https://github.com/llvm/llvm-project.git 6f4196219399a3502cea3beb2d0c8c28b2241649)"}
!7 = distinct !{!7, !8, !9, !10, !11}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!"llvm.loop.isvectorized", i32 1}
!10 = !{!"llvm.loop.vectorize.body", i32 1}
!11 = !{!"llvm.loop.unroll.runtime.disable"}
!12 = distinct !{!12, !8, !11, !9, !13}
!13 = !{!"llvm.loop.vectorize.epilogue", i32 1}
!14 = distinct !{!14, !8}
!15 = !{!16}
!16 = distinct !{!16, !17}
!17 = distinct !{!17, i1 false, !"LVerDomain"}
!18 = !{!19}
!19 = distinct !{!19, !17}
!20 = !{!21}
!21 = distinct !{!21, !17}
!22 = !{!19, !16}
!23 = distinct !{!23, !8, !9, !13}
!24 = distinct !{!24, !8}
!25 = distinct !{!25, !8}
!26 = distinct !{!26, !8}
!27 = distinct !{!27, !8}
!28 = distinct !{!28, !8}
!29 = distinct !{!29, !8}
!30 = distinct !{!30, !8}
!31 = distinct !{!31, !8}
!32 = distinct !{!32, !8}
