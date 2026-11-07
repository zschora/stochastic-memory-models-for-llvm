; ModuleID = 'C:\work\llvm-profitability-research\results\r1\EXP-20261107-R12-discovery\polybench\ludcmp\frontend.ll'
source_filename = "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\linear-algebra\\solvers\\ludcmp\\ludcmp.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc19.51.36260"

$__local_stdio_printf_options = comdat any

$fprintf = comdat any

$_vfprintf_l = comdat any

$"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = comdat any

$"??_C@_01FJMABOPO@x?$AA@" = comdat any

$"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@" = comdat any

$"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@" = comdat any

$"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@" = comdat any

$"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = comdat any

@__local_stdio_printf_options._OptionsStorage = internal global i64 0, align 8
@"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", comdat, align 8
@"??_C@_01FJMABOPO@x?$AA@" = linkonce_odr dso_local unnamed_addr constant [2 x i8] c"x\00", comdat, align 4
@"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"begin dump: %s\00", comdat, align 8
@"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [8 x i8] c"%0.2lf \00", comdat, align 8
@"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", comdat, align 8
@"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", comdat, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 1600, i32 noundef 8) #10
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 40, i32 noundef 8) #10
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 40, i32 noundef 8) #10
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 40, i32 noundef 8) #10
  tail call fastcc void @init_array(ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  tail call fastcc void @kernel_ludcmp(ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  %7 = icmp sgt i32 %0, 42
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load ptr, ptr %1, align 8
  %strcmpload = load i8, ptr %9, align 1
  %.not = icmp eq i8 %strcmpload, 0
  br i1 %.not, label %10, label %11

10:                                               ; preds = %8
  tail call fastcc void @print_array(ptr noundef %5)
  br label %11

11:                                               ; preds = %10, %8, %2
  tail call void @free(ptr noundef %3)
  tail call void @free(ptr noundef %4)
  tail call void @free(ptr noundef %5)
  tail call void @free(ptr noundef %6)
  ret i32 0
}

declare dso_local ptr @polybench_alloc_data(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @init_array(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) unnamed_addr #0 {
vector.memcheck:
  %4 = ptrtoaddr ptr %3 to i64
  %5 = ptrtoaddr ptr %2 to i64
  %6 = ptrtoaddr ptr %1 to i64
  %7 = sub i64 %5, %4
  %diff.check = icmp ugt i64 %7, -16
  %8 = sub i64 %5, %6
  %diff.check4 = icmp ugt i64 %8, -16
  %conflict.rdx = or i1 %diff.check, %diff.check4
  %9 = sub i64 %4, %6
  %diff.check5 = icmp ugt i64 %9, -16
  %conflict.rdx6 = or i1 %conflict.rdx, %diff.check5
  br i1 %conflict.rdx6, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %vector.memcheck
  store <2 x double> zeroinitializer, ptr %2, align 8
  store <2 x double> zeroinitializer, ptr %3, align 8
  store <2 x double> <double 4.012500e+00, double 4.025000e+00>, ptr %1, align 8
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store <2 x double> zeroinitializer, ptr %10, align 8
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store <2 x double> zeroinitializer, ptr %11, align 8
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store <2 x double> <double 4.037500e+00, double 4.050000e+00>, ptr %12, align 8
  %13 = getelementptr inbounds nuw i8, ptr %2, i64 32
  store <2 x double> zeroinitializer, ptr %13, align 8
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store <2 x double> zeroinitializer, ptr %14, align 8
  %15 = getelementptr inbounds nuw i8, ptr %1, i64 32
  store <2 x double> <double 4.062500e+00, double 4.075000e+00>, ptr %15, align 8
  %16 = getelementptr inbounds nuw i8, ptr %2, i64 48
  store <2 x double> zeroinitializer, ptr %16, align 8
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 48
  store <2 x double> zeroinitializer, ptr %17, align 8
  %18 = getelementptr inbounds nuw i8, ptr %1, i64 48
  store <2 x double> <double 4.087500e+00, double 4.100000e+00>, ptr %18, align 8
  %19 = getelementptr inbounds nuw i8, ptr %2, i64 64
  store <2 x double> zeroinitializer, ptr %19, align 8
  %20 = getelementptr inbounds nuw i8, ptr %3, i64 64
  store <2 x double> zeroinitializer, ptr %20, align 8
  %21 = getelementptr inbounds nuw i8, ptr %1, i64 64
  store <2 x double> <double 4.112500e+00, double 4.125000e+00>, ptr %21, align 8
  %22 = getelementptr inbounds nuw i8, ptr %2, i64 80
  store <2 x double> zeroinitializer, ptr %22, align 8
  %23 = getelementptr inbounds nuw i8, ptr %3, i64 80
  store <2 x double> zeroinitializer, ptr %23, align 8
  %24 = getelementptr inbounds nuw i8, ptr %1, i64 80
  store <2 x double> <double 4.137500e+00, double 4.150000e+00>, ptr %24, align 8
  %25 = getelementptr inbounds nuw i8, ptr %2, i64 96
  store <2 x double> zeroinitializer, ptr %25, align 8
  %26 = getelementptr inbounds nuw i8, ptr %3, i64 96
  store <2 x double> zeroinitializer, ptr %26, align 8
  %27 = getelementptr inbounds nuw i8, ptr %1, i64 96
  store <2 x double> <double 4.162500e+00, double 4.175000e+00>, ptr %27, align 8
  %28 = getelementptr inbounds nuw i8, ptr %2, i64 112
  store <2 x double> zeroinitializer, ptr %28, align 8
  %29 = getelementptr inbounds nuw i8, ptr %3, i64 112
  store <2 x double> zeroinitializer, ptr %29, align 8
  %30 = getelementptr inbounds nuw i8, ptr %1, i64 112
  store <2 x double> <double 4.187500e+00, double 4.200000e+00>, ptr %30, align 8
  %31 = getelementptr inbounds nuw i8, ptr %2, i64 128
  store <2 x double> zeroinitializer, ptr %31, align 8
  %32 = getelementptr inbounds nuw i8, ptr %3, i64 128
  store <2 x double> zeroinitializer, ptr %32, align 8
  %33 = getelementptr inbounds nuw i8, ptr %1, i64 128
  store <2 x double> <double 4.212500e+00, double 4.225000e+00>, ptr %33, align 8
  %34 = getelementptr inbounds nuw i8, ptr %2, i64 144
  store <2 x double> zeroinitializer, ptr %34, align 8
  %35 = getelementptr inbounds nuw i8, ptr %3, i64 144
  store <2 x double> zeroinitializer, ptr %35, align 8
  %36 = getelementptr inbounds nuw i8, ptr %1, i64 144
  store <2 x double> <double 4.237500e+00, double 4.250000e+00>, ptr %36, align 8
  %37 = getelementptr inbounds nuw i8, ptr %2, i64 160
  store <2 x double> zeroinitializer, ptr %37, align 8
  %38 = getelementptr inbounds nuw i8, ptr %3, i64 160
  store <2 x double> zeroinitializer, ptr %38, align 8
  %39 = getelementptr inbounds nuw i8, ptr %1, i64 160
  store <2 x double> <double 4.262500e+00, double 4.275000e+00>, ptr %39, align 8
  %40 = getelementptr inbounds nuw i8, ptr %2, i64 176
  store <2 x double> zeroinitializer, ptr %40, align 8
  %41 = getelementptr inbounds nuw i8, ptr %3, i64 176
  store <2 x double> zeroinitializer, ptr %41, align 8
  %42 = getelementptr inbounds nuw i8, ptr %1, i64 176
  store <2 x double> <double 4.287500e+00, double 4.300000e+00>, ptr %42, align 8
  %43 = getelementptr inbounds nuw i8, ptr %2, i64 192
  store <2 x double> zeroinitializer, ptr %43, align 8
  %44 = getelementptr inbounds nuw i8, ptr %3, i64 192
  store <2 x double> zeroinitializer, ptr %44, align 8
  %45 = getelementptr inbounds nuw i8, ptr %1, i64 192
  store <2 x double> <double 4.312500e+00, double 4.325000e+00>, ptr %45, align 8
  %46 = getelementptr inbounds nuw i8, ptr %2, i64 208
  store <2 x double> zeroinitializer, ptr %46, align 8
  %47 = getelementptr inbounds nuw i8, ptr %3, i64 208
  store <2 x double> zeroinitializer, ptr %47, align 8
  %48 = getelementptr inbounds nuw i8, ptr %1, i64 208
  store <2 x double> <double 4.337500e+00, double 4.350000e+00>, ptr %48, align 8
  %49 = getelementptr inbounds nuw i8, ptr %2, i64 224
  store <2 x double> zeroinitializer, ptr %49, align 8
  %50 = getelementptr inbounds nuw i8, ptr %3, i64 224
  store <2 x double> zeroinitializer, ptr %50, align 8
  %51 = getelementptr inbounds nuw i8, ptr %1, i64 224
  store <2 x double> <double 4.362500e+00, double 4.375000e+00>, ptr %51, align 8
  %52 = getelementptr inbounds nuw i8, ptr %2, i64 240
  store <2 x double> zeroinitializer, ptr %52, align 8
  %53 = getelementptr inbounds nuw i8, ptr %3, i64 240
  store <2 x double> zeroinitializer, ptr %53, align 8
  %54 = getelementptr inbounds nuw i8, ptr %1, i64 240
  store <2 x double> <double 4.387500e+00, double 4.400000e+00>, ptr %54, align 8
  %55 = getelementptr inbounds nuw i8, ptr %2, i64 256
  store <2 x double> zeroinitializer, ptr %55, align 8
  %56 = getelementptr inbounds nuw i8, ptr %3, i64 256
  store <2 x double> zeroinitializer, ptr %56, align 8
  %57 = getelementptr inbounds nuw i8, ptr %1, i64 256
  store <2 x double> <double 4.412500e+00, double 4.425000e+00>, ptr %57, align 8
  %58 = getelementptr inbounds nuw i8, ptr %2, i64 272
  store <2 x double> zeroinitializer, ptr %58, align 8
  %59 = getelementptr inbounds nuw i8, ptr %3, i64 272
  store <2 x double> zeroinitializer, ptr %59, align 8
  %60 = getelementptr inbounds nuw i8, ptr %1, i64 272
  store <2 x double> <double 4.437500e+00, double 4.450000e+00>, ptr %60, align 8
  %61 = getelementptr inbounds nuw i8, ptr %2, i64 288
  store <2 x double> zeroinitializer, ptr %61, align 8
  %62 = getelementptr inbounds nuw i8, ptr %3, i64 288
  store <2 x double> zeroinitializer, ptr %62, align 8
  %63 = getelementptr inbounds nuw i8, ptr %1, i64 288
  store <2 x double> <double 4.462500e+00, double 4.475000e+00>, ptr %63, align 8
  %64 = getelementptr inbounds nuw i8, ptr %2, i64 304
  store <2 x double> zeroinitializer, ptr %64, align 8
  %65 = getelementptr inbounds nuw i8, ptr %3, i64 304
  store <2 x double> zeroinitializer, ptr %65, align 8
  %66 = getelementptr inbounds nuw i8, ptr %1, i64 304
  store <2 x double> <double 4.487500e+00, double 4.500000e+00>, ptr %66, align 8
  br label %.preheader87.preheader

scalar.ph:                                        ; preds = %vector.memcheck, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ 0, %vector.memcheck ]
  %67 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  store double 0.000000e+00, ptr %67, align 8
  %68 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  store double 0.000000e+00, ptr %68, align 8
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %69 = trunc nuw nsw i64 %indvars.iv.next to i32
  %70 = uitofp nneg i32 %69 to double
  %71 = fdiv nnan double %70, 4.000000e+01
  %72 = fmul nnan double %71, 5.000000e-01
  %73 = fadd double %72, 4.000000e+00
  %74 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  store double %73, ptr %74, align 8
  %75 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  store double 0.000000e+00, ptr %75, align 8
  %76 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next
  store double 0.000000e+00, ptr %76, align 8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %77 = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  %78 = uitofp nneg i32 %77 to double
  %79 = fdiv nnan double %78, 4.000000e+01
  %80 = fmul nnan double %79, 5.000000e-01
  %81 = fadd double %80, 4.000000e+00
  %82 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  store double %81, ptr %82, align 8
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 40
  br i1 %exitcond.not.1, label %.preheader87.preheader, label %scalar.ph, !llvm.loop !7

.preheader87.preheader:                           ; preds = %scalar.ph, %vector.body
  br label %.preheader87

.preheader87:                                     ; preds = %.preheader87.preheader, %._crit_edge
  %indvars.iv109 = phi i64 [ %indvars.iv.next110, %._crit_edge ], [ 1, %.preheader87.preheader ]
  %indvar = phi i64 [ %indvar.next, %._crit_edge ], [ 0, %.preheader87.preheader ]
  %83 = mul nuw nsw i64 %indvar, 328
  %84 = getelementptr i8, ptr %0, i64 %83
  %scevgep = getelementptr i8, ptr %84, i64 8
  %85 = shl i64 %indvar, 3
  %86 = sub i64 304, %85
  %87 = and i64 %86, 34359738360
  %88 = add nuw nsw i64 %87, 8
  %89 = getelementptr inbounds nuw [320 x i8], ptr %0, i64 %indvar
  %min.iters.check = icmp samesign ult i64 %indvars.iv109, 2
  br i1 %min.iters.check, label %scalar.ph7.preheader, label %vector.ph8

vector.ph8:                                       ; preds = %.preheader87
  %n.vec = and i64 %indvars.iv109, 9223372036854775806
  br label %vector.body9

vector.body9:                                     ; preds = %vector.body9, %vector.ph8
  %index10 = phi i64 [ 0, %vector.ph8 ], [ %index.next12, %vector.body9 ]
  %vec.ind11 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph8 ], [ %vec.ind.next13, %vector.body9 ]
  %90 = sub <2 x i32> zeroinitializer, %vec.ind11
  %91 = sitofp <2 x i32> %90 to <2 x double>
  %92 = fdiv <2 x double> %91, splat (double 4.000000e+01)
  %93 = fadd <2 x double> %92, splat (double 1.000000e+00)
  %94 = getelementptr inbounds nuw [8 x i8], ptr %89, i64 %index10
  store <2 x double> %93, ptr %94, align 8
  %index.next12 = add nuw i64 %index10, 2
  %vec.ind.next13 = add <2 x i32> %vec.ind11, splat (i32 2)
  %95 = icmp eq i64 %index.next12, %n.vec
  br i1 %95, label %middle.block14, label %vector.body9, !llvm.loop !11

middle.block14:                                   ; preds = %vector.body9
  %cmp.n = icmp eq i64 %indvars.iv109, %n.vec
  br i1 %cmp.n, label %.loopexit32, label %scalar.ph7.preheader

scalar.ph7.preheader:                             ; preds = %.preheader87, %middle.block14
  %indvars.iv103.ph = phi i64 [ 0, %.preheader87 ], [ %n.vec, %middle.block14 ]
  br label %scalar.ph7

scalar.ph7:                                       ; preds = %scalar.ph7.preheader, %scalar.ph7
  %indvars.iv103 = phi i64 [ %indvars.iv.next104, %scalar.ph7 ], [ %indvars.iv103.ph, %scalar.ph7.preheader ]
  %96 = trunc i64 %indvars.iv103 to i32
  %97 = sub i32 0, %96
  %98 = sitofp i32 %97 to double
  %99 = fdiv double %98, 4.000000e+01
  %100 = fadd double %99, 1.000000e+00
  %101 = getelementptr inbounds nuw [8 x i8], ptr %89, i64 %indvars.iv103
  store double %100, ptr %101, align 8
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1
  %exitcond108.not = icmp eq i64 %indvars.iv.next104, %indvars.iv109
  br i1 %exitcond108.not, label %.loopexit32, label %scalar.ph7, !llvm.loop !14

.loopexit32:                                      ; preds = %scalar.ph7, %middle.block14
  %indvar.next = add nuw nsw i64 %indvar, 1
  %102 = icmp samesign ult i64 %indvar, 39
  br i1 %102, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.loopexit32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 range(i64 0, 313) %88, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.loopexit32
  %103 = getelementptr inbounds nuw [8 x i8], ptr %89, i64 %indvar
  store double 1.000000e+00, ptr %103, align 8
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1
  %exitcond117.not = icmp eq i64 %indvar.next, 40
  br i1 %exitcond117.not, label %.preheader84.preheader, label %.preheader87, !llvm.loop !15

.preheader84.preheader:                           ; preds = %._crit_edge
  %104 = tail call ptr @polybench_alloc_data(i64 noundef 1600, i32 noundef 8) #10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12800) %104, i8 0, i64 12800, i1 false)
  %scevgep22 = getelementptr i8, ptr %104, i64 12800
  br label %.preheader84

.preheader84:                                     ; preds = %.preheader84.preheader, %277
  %indvars.iv132 = phi i64 [ 0, %.preheader84.preheader ], [ %indvars.iv.next133, %277 ]
  %105 = shl nuw nsw i64 %indvars.iv132, 3
  %106 = getelementptr i8, ptr %0, i64 %105
  %scevgep21 = getelementptr i8, ptr %106, i64 12488
  %invariant.gep96 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv132
  %bound0 = icmp ult ptr %104, %scevgep21
  %bound1 = icmp ult ptr %invariant.gep96, %scevgep22
  %found.conflict = and i1 %bound0, %bound1
  %107 = getelementptr inbounds nuw i8, ptr %invariant.gep96, i64 320
  %108 = getelementptr inbounds nuw i8, ptr %invariant.gep96, i64 640
  %109 = getelementptr inbounds nuw i8, ptr %invariant.gep96, i64 960
  %110 = getelementptr inbounds nuw i8, ptr %invariant.gep96, i64 1280
  %111 = getelementptr inbounds nuw i8, ptr %invariant.gep96, i64 1600
  %112 = getelementptr inbounds nuw i8, ptr %invariant.gep96, i64 1920
  %113 = getelementptr inbounds nuw i8, ptr %invariant.gep96, i64 2240
  %114 = getelementptr inbounds nuw i8, ptr %invariant.gep96, i64 2560
  %115 = getelementptr inbounds nuw i8, ptr %invariant.gep96, i64 2880
  %116 = getelementptr inbounds nuw i8, ptr %invariant.gep96, i64 3200
  %117 = getelementptr inbounds nuw i8, ptr %invariant.gep96, i64 3520
  %118 = getelementptr inbounds nuw i8, ptr %invariant.gep96, i64 3840
  %119 = getelementptr inbounds nuw i8, ptr %invariant.gep96, i64 4160
  %120 = getelementptr inbounds nuw i8, ptr %invariant.gep96, i64 4480
  %121 = getelementptr inbounds nuw i8, ptr %invariant.gep96, i64 4800
  %122 = getelementptr inbounds nuw i8, ptr %invariant.gep96, i64 5120
  %123 = getelementptr inbounds nuw i8, ptr %invariant.gep96, i64 5440
  %124 = getelementptr inbounds nuw i8, ptr %invariant.gep96, i64 5760
  %125 = getelementptr inbounds nuw i8, ptr %invariant.gep96, i64 6080
  %126 = getelementptr inbounds nuw i8, ptr %invariant.gep96, i64 6400
  %127 = getelementptr inbounds nuw i8, ptr %invariant.gep96, i64 6720
  %128 = getelementptr inbounds nuw i8, ptr %invariant.gep96, i64 7040
  %129 = getelementptr inbounds nuw i8, ptr %invariant.gep96, i64 7360
  %130 = getelementptr inbounds nuw i8, ptr %invariant.gep96, i64 7680
  %131 = getelementptr inbounds nuw i8, ptr %invariant.gep96, i64 8000
  %132 = getelementptr inbounds nuw i8, ptr %invariant.gep96, i64 8320
  %133 = getelementptr inbounds nuw i8, ptr %invariant.gep96, i64 8640
  %134 = getelementptr inbounds nuw i8, ptr %invariant.gep96, i64 8960
  %135 = getelementptr inbounds nuw i8, ptr %invariant.gep96, i64 9280
  %136 = getelementptr inbounds nuw i8, ptr %invariant.gep96, i64 9600
  %137 = getelementptr inbounds nuw i8, ptr %invariant.gep96, i64 9920
  %138 = getelementptr inbounds nuw i8, ptr %invariant.gep96, i64 10240
  %139 = getelementptr inbounds nuw i8, ptr %invariant.gep96, i64 10560
  %140 = getelementptr inbounds nuw i8, ptr %invariant.gep96, i64 10880
  %141 = getelementptr inbounds nuw i8, ptr %invariant.gep96, i64 11200
  %142 = getelementptr inbounds nuw i8, ptr %invariant.gep96, i64 11520
  %143 = getelementptr inbounds nuw i8, ptr %invariant.gep96, i64 11840
  %144 = getelementptr inbounds nuw i8, ptr %invariant.gep96, i64 12160
  %145 = getelementptr inbounds nuw i8, ptr %invariant.gep96, i64 12480
  br label %.preheader83

.preheader83:                                     ; preds = %.preheader84, %middle.block31
  %indvars.iv128 = phi i64 [ 0, %.preheader84 ], [ %indvars.iv.next129, %middle.block31 ]
  %gep97 = getelementptr inbounds nuw [320 x i8], ptr %invariant.gep96, i64 %indvars.iv128
  %146 = getelementptr inbounds nuw [320 x i8], ptr %104, i64 %indvars.iv128
  br i1 %found.conflict, label %scalar.ph23, label %vector.body27

vector.body27:                                    ; preds = %.preheader83
  %147 = load double, ptr %gep97, align 8, !alias.scope !16
  %broadcast.splatinsert = insertelement <2 x double> poison, double %147, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %148 = load double, ptr %invariant.gep96, align 8, !alias.scope !19
  %149 = load double, ptr %107, align 8, !alias.scope !19
  %150 = insertelement <2 x double> poison, double %148, i64 0
  %151 = insertelement <2 x double> %150, double %149, i64 1
  %152 = load double, ptr %108, align 8, !alias.scope !19
  %153 = load double, ptr %109, align 8, !alias.scope !19
  %154 = insertelement <2 x double> poison, double %152, i64 0
  %155 = insertelement <2 x double> %154, double %153, i64 1
  %156 = getelementptr inbounds nuw i8, ptr %146, i64 16
  %wide.load = load <2 x double>, ptr %146, align 8, !alias.scope !21, !noalias !23
  %wide.load29 = load <2 x double>, ptr %156, align 8, !alias.scope !21, !noalias !23
  %157 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %151, <2 x double> %wide.load)
  %158 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %155, <2 x double> %wide.load29)
  store <2 x double> %157, ptr %146, align 8, !alias.scope !21, !noalias !23
  store <2 x double> %158, ptr %156, align 8, !alias.scope !21, !noalias !23
  %159 = load double, ptr %110, align 8, !alias.scope !19
  %160 = load double, ptr %111, align 8, !alias.scope !19
  %161 = insertelement <2 x double> poison, double %159, i64 0
  %162 = insertelement <2 x double> %161, double %160, i64 1
  %163 = load double, ptr %112, align 8, !alias.scope !19
  %164 = load double, ptr %113, align 8, !alias.scope !19
  %165 = insertelement <2 x double> poison, double %163, i64 0
  %166 = insertelement <2 x double> %165, double %164, i64 1
  %167 = getelementptr inbounds nuw i8, ptr %146, i64 32
  %168 = getelementptr inbounds nuw i8, ptr %146, i64 48
  %wide.load.1 = load <2 x double>, ptr %167, align 8, !alias.scope !21, !noalias !23
  %wide.load29.1 = load <2 x double>, ptr %168, align 8, !alias.scope !21, !noalias !23
  %169 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %162, <2 x double> %wide.load.1)
  %170 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %166, <2 x double> %wide.load29.1)
  store <2 x double> %169, ptr %167, align 8, !alias.scope !21, !noalias !23
  store <2 x double> %170, ptr %168, align 8, !alias.scope !21, !noalias !23
  %171 = load double, ptr %114, align 8, !alias.scope !19
  %172 = load double, ptr %115, align 8, !alias.scope !19
  %173 = insertelement <2 x double> poison, double %171, i64 0
  %174 = insertelement <2 x double> %173, double %172, i64 1
  %175 = load double, ptr %116, align 8, !alias.scope !19
  %176 = load double, ptr %117, align 8, !alias.scope !19
  %177 = insertelement <2 x double> poison, double %175, i64 0
  %178 = insertelement <2 x double> %177, double %176, i64 1
  %179 = getelementptr inbounds nuw i8, ptr %146, i64 64
  %180 = getelementptr inbounds nuw i8, ptr %146, i64 80
  %wide.load.2 = load <2 x double>, ptr %179, align 8, !alias.scope !21, !noalias !23
  %wide.load29.2 = load <2 x double>, ptr %180, align 8, !alias.scope !21, !noalias !23
  %181 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %174, <2 x double> %wide.load.2)
  %182 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %178, <2 x double> %wide.load29.2)
  store <2 x double> %181, ptr %179, align 8, !alias.scope !21, !noalias !23
  store <2 x double> %182, ptr %180, align 8, !alias.scope !21, !noalias !23
  %183 = load double, ptr %118, align 8, !alias.scope !19
  %184 = load double, ptr %119, align 8, !alias.scope !19
  %185 = insertelement <2 x double> poison, double %183, i64 0
  %186 = insertelement <2 x double> %185, double %184, i64 1
  %187 = load double, ptr %120, align 8, !alias.scope !19
  %188 = load double, ptr %121, align 8, !alias.scope !19
  %189 = insertelement <2 x double> poison, double %187, i64 0
  %190 = insertelement <2 x double> %189, double %188, i64 1
  %191 = getelementptr inbounds nuw i8, ptr %146, i64 96
  %192 = getelementptr inbounds nuw i8, ptr %146, i64 112
  %wide.load.3 = load <2 x double>, ptr %191, align 8, !alias.scope !21, !noalias !23
  %wide.load29.3 = load <2 x double>, ptr %192, align 8, !alias.scope !21, !noalias !23
  %193 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %186, <2 x double> %wide.load.3)
  %194 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %190, <2 x double> %wide.load29.3)
  store <2 x double> %193, ptr %191, align 8, !alias.scope !21, !noalias !23
  store <2 x double> %194, ptr %192, align 8, !alias.scope !21, !noalias !23
  %195 = load double, ptr %122, align 8, !alias.scope !19
  %196 = load double, ptr %123, align 8, !alias.scope !19
  %197 = insertelement <2 x double> poison, double %195, i64 0
  %198 = insertelement <2 x double> %197, double %196, i64 1
  %199 = load double, ptr %124, align 8, !alias.scope !19
  %200 = load double, ptr %125, align 8, !alias.scope !19
  %201 = insertelement <2 x double> poison, double %199, i64 0
  %202 = insertelement <2 x double> %201, double %200, i64 1
  %203 = getelementptr inbounds nuw i8, ptr %146, i64 128
  %204 = getelementptr inbounds nuw i8, ptr %146, i64 144
  %wide.load.4 = load <2 x double>, ptr %203, align 8, !alias.scope !21, !noalias !23
  %wide.load29.4 = load <2 x double>, ptr %204, align 8, !alias.scope !21, !noalias !23
  %205 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %198, <2 x double> %wide.load.4)
  %206 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %202, <2 x double> %wide.load29.4)
  store <2 x double> %205, ptr %203, align 8, !alias.scope !21, !noalias !23
  store <2 x double> %206, ptr %204, align 8, !alias.scope !21, !noalias !23
  %207 = load double, ptr %126, align 8, !alias.scope !19
  %208 = load double, ptr %127, align 8, !alias.scope !19
  %209 = insertelement <2 x double> poison, double %207, i64 0
  %210 = insertelement <2 x double> %209, double %208, i64 1
  %211 = load double, ptr %128, align 8, !alias.scope !19
  %212 = load double, ptr %129, align 8, !alias.scope !19
  %213 = insertelement <2 x double> poison, double %211, i64 0
  %214 = insertelement <2 x double> %213, double %212, i64 1
  %215 = getelementptr inbounds nuw i8, ptr %146, i64 160
  %216 = getelementptr inbounds nuw i8, ptr %146, i64 176
  %wide.load.5 = load <2 x double>, ptr %215, align 8, !alias.scope !21, !noalias !23
  %wide.load29.5 = load <2 x double>, ptr %216, align 8, !alias.scope !21, !noalias !23
  %217 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %210, <2 x double> %wide.load.5)
  %218 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %214, <2 x double> %wide.load29.5)
  store <2 x double> %217, ptr %215, align 8, !alias.scope !21, !noalias !23
  store <2 x double> %218, ptr %216, align 8, !alias.scope !21, !noalias !23
  %219 = load double, ptr %130, align 8, !alias.scope !19
  %220 = load double, ptr %131, align 8, !alias.scope !19
  %221 = insertelement <2 x double> poison, double %219, i64 0
  %222 = insertelement <2 x double> %221, double %220, i64 1
  %223 = load double, ptr %132, align 8, !alias.scope !19
  %224 = load double, ptr %133, align 8, !alias.scope !19
  %225 = insertelement <2 x double> poison, double %223, i64 0
  %226 = insertelement <2 x double> %225, double %224, i64 1
  %227 = getelementptr inbounds nuw i8, ptr %146, i64 192
  %228 = getelementptr inbounds nuw i8, ptr %146, i64 208
  %wide.load.6 = load <2 x double>, ptr %227, align 8, !alias.scope !21, !noalias !23
  %wide.load29.6 = load <2 x double>, ptr %228, align 8, !alias.scope !21, !noalias !23
  %229 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %222, <2 x double> %wide.load.6)
  %230 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %226, <2 x double> %wide.load29.6)
  store <2 x double> %229, ptr %227, align 8, !alias.scope !21, !noalias !23
  store <2 x double> %230, ptr %228, align 8, !alias.scope !21, !noalias !23
  %231 = load double, ptr %134, align 8, !alias.scope !19
  %232 = load double, ptr %135, align 8, !alias.scope !19
  %233 = insertelement <2 x double> poison, double %231, i64 0
  %234 = insertelement <2 x double> %233, double %232, i64 1
  %235 = load double, ptr %136, align 8, !alias.scope !19
  %236 = load double, ptr %137, align 8, !alias.scope !19
  %237 = insertelement <2 x double> poison, double %235, i64 0
  %238 = insertelement <2 x double> %237, double %236, i64 1
  %239 = getelementptr inbounds nuw i8, ptr %146, i64 224
  %240 = getelementptr inbounds nuw i8, ptr %146, i64 240
  %wide.load.7 = load <2 x double>, ptr %239, align 8, !alias.scope !21, !noalias !23
  %wide.load29.7 = load <2 x double>, ptr %240, align 8, !alias.scope !21, !noalias !23
  %241 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %234, <2 x double> %wide.load.7)
  %242 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %238, <2 x double> %wide.load29.7)
  store <2 x double> %241, ptr %239, align 8, !alias.scope !21, !noalias !23
  store <2 x double> %242, ptr %240, align 8, !alias.scope !21, !noalias !23
  %243 = load double, ptr %138, align 8, !alias.scope !19
  %244 = load double, ptr %139, align 8, !alias.scope !19
  %245 = insertelement <2 x double> poison, double %243, i64 0
  %246 = insertelement <2 x double> %245, double %244, i64 1
  %247 = load double, ptr %140, align 8, !alias.scope !19
  %248 = load double, ptr %141, align 8, !alias.scope !19
  %249 = insertelement <2 x double> poison, double %247, i64 0
  %250 = insertelement <2 x double> %249, double %248, i64 1
  %251 = getelementptr inbounds nuw i8, ptr %146, i64 256
  %252 = getelementptr inbounds nuw i8, ptr %146, i64 272
  %wide.load.8 = load <2 x double>, ptr %251, align 8, !alias.scope !21, !noalias !23
  %wide.load29.8 = load <2 x double>, ptr %252, align 8, !alias.scope !21, !noalias !23
  %253 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %246, <2 x double> %wide.load.8)
  %254 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %250, <2 x double> %wide.load29.8)
  store <2 x double> %253, ptr %251, align 8, !alias.scope !21, !noalias !23
  store <2 x double> %254, ptr %252, align 8, !alias.scope !21, !noalias !23
  %255 = load double, ptr %142, align 8, !alias.scope !19
  %256 = load double, ptr %143, align 8, !alias.scope !19
  %257 = insertelement <2 x double> poison, double %255, i64 0
  %258 = insertelement <2 x double> %257, double %256, i64 1
  %259 = load double, ptr %144, align 8, !alias.scope !19
  %260 = load double, ptr %145, align 8, !alias.scope !19
  %261 = insertelement <2 x double> poison, double %259, i64 0
  %262 = insertelement <2 x double> %261, double %260, i64 1
  %263 = getelementptr inbounds nuw i8, ptr %146, i64 288
  %264 = getelementptr inbounds nuw i8, ptr %146, i64 304
  %wide.load.9 = load <2 x double>, ptr %263, align 8, !alias.scope !21, !noalias !23
  %wide.load29.9 = load <2 x double>, ptr %264, align 8, !alias.scope !21, !noalias !23
  %265 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %258, <2 x double> %wide.load.9)
  %266 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %262, <2 x double> %wide.load29.9)
  store <2 x double> %265, ptr %263, align 8, !alias.scope !21, !noalias !23
  store <2 x double> %266, ptr %264, align 8, !alias.scope !21, !noalias !23
  br label %middle.block31

scalar.ph23:                                      ; preds = %.preheader83, %scalar.ph23
  %indvars.iv124 = phi i64 [ %indvars.iv.next125.1, %scalar.ph23 ], [ 0, %.preheader83 ]
  %267 = load double, ptr %gep97, align 8
  %gep = getelementptr inbounds nuw [320 x i8], ptr %invariant.gep96, i64 %indvars.iv124
  %268 = load double, ptr %gep, align 8
  %269 = getelementptr inbounds nuw [8 x i8], ptr %146, i64 %indvars.iv124
  %270 = load double, ptr %269, align 8
  %271 = tail call double @llvm.fmuladd.f64(double %267, double %268, double %270)
  store double %271, ptr %269, align 8
  %indvars.iv.next125 = or disjoint i64 %indvars.iv124, 1
  %272 = load double, ptr %gep97, align 8
  %gep.1 = getelementptr inbounds nuw [320 x i8], ptr %invariant.gep96, i64 %indvars.iv.next125
  %273 = load double, ptr %gep.1, align 8
  %274 = getelementptr inbounds nuw [8 x i8], ptr %146, i64 %indvars.iv.next125
  %275 = load double, ptr %274, align 8
  %276 = tail call double @llvm.fmuladd.f64(double %272, double %273, double %275)
  store double %276, ptr %274, align 8
  %indvars.iv.next125.1 = add nuw nsw i64 %indvars.iv124, 2
  %exitcond127.not.1 = icmp eq i64 %indvars.iv.next125.1, 40
  br i1 %exitcond127.not.1, label %middle.block31, label %scalar.ph23, !llvm.loop !24

middle.block31:                                   ; preds = %scalar.ph23, %vector.body27
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1
  %exitcond131.not = icmp eq i64 %indvars.iv.next129, 40
  br i1 %exitcond131.not, label %277, label %.preheader83, !llvm.loop !25

277:                                              ; preds = %middle.block31
  %indvars.iv.next133 = add nuw nsw i64 %indvars.iv132, 1
  %exitcond135.not = icmp eq i64 %indvars.iv.next133, 40
  br i1 %exitcond135.not, label %.preheader, label %.preheader84, !llvm.loop !26

.preheader:                                       ; preds = %277, %.preheader
  %indvars.iv140 = phi i64 [ %indvars.iv.next141, %.preheader ], [ 0, %277 ]
  %278 = getelementptr inbounds nuw [320 x i8], ptr %104, i64 %indvars.iv140
  %279 = getelementptr inbounds nuw [320 x i8], ptr %0, i64 %indvars.iv140
  %280 = load double, ptr %278, align 8
  store double %280, ptr %279, align 8
  %281 = getelementptr inbounds nuw i8, ptr %278, i64 8
  %282 = load double, ptr %281, align 8
  %283 = getelementptr inbounds nuw i8, ptr %279, i64 8
  store double %282, ptr %283, align 8
  %284 = getelementptr inbounds nuw i8, ptr %278, i64 16
  %285 = load double, ptr %284, align 8
  %286 = getelementptr inbounds nuw i8, ptr %279, i64 16
  store double %285, ptr %286, align 8
  %287 = getelementptr inbounds nuw i8, ptr %278, i64 24
  %288 = load double, ptr %287, align 8
  %289 = getelementptr inbounds nuw i8, ptr %279, i64 24
  store double %288, ptr %289, align 8
  %290 = getelementptr inbounds nuw i8, ptr %278, i64 32
  %291 = load double, ptr %290, align 8
  %292 = getelementptr inbounds nuw i8, ptr %279, i64 32
  store double %291, ptr %292, align 8
  %293 = getelementptr inbounds nuw i8, ptr %278, i64 40
  %294 = load double, ptr %293, align 8
  %295 = getelementptr inbounds nuw i8, ptr %279, i64 40
  store double %294, ptr %295, align 8
  %296 = getelementptr inbounds nuw i8, ptr %278, i64 48
  %297 = load double, ptr %296, align 8
  %298 = getelementptr inbounds nuw i8, ptr %279, i64 48
  store double %297, ptr %298, align 8
  %299 = getelementptr inbounds nuw i8, ptr %278, i64 56
  %300 = load double, ptr %299, align 8
  %301 = getelementptr inbounds nuw i8, ptr %279, i64 56
  store double %300, ptr %301, align 8
  %302 = getelementptr inbounds nuw i8, ptr %278, i64 64
  %303 = load double, ptr %302, align 8
  %304 = getelementptr inbounds nuw i8, ptr %279, i64 64
  store double %303, ptr %304, align 8
  %305 = getelementptr inbounds nuw i8, ptr %278, i64 72
  %306 = load double, ptr %305, align 8
  %307 = getelementptr inbounds nuw i8, ptr %279, i64 72
  store double %306, ptr %307, align 8
  %308 = getelementptr inbounds nuw i8, ptr %278, i64 80
  %309 = load double, ptr %308, align 8
  %310 = getelementptr inbounds nuw i8, ptr %279, i64 80
  store double %309, ptr %310, align 8
  %311 = getelementptr inbounds nuw i8, ptr %278, i64 88
  %312 = load double, ptr %311, align 8
  %313 = getelementptr inbounds nuw i8, ptr %279, i64 88
  store double %312, ptr %313, align 8
  %314 = getelementptr inbounds nuw i8, ptr %278, i64 96
  %315 = load double, ptr %314, align 8
  %316 = getelementptr inbounds nuw i8, ptr %279, i64 96
  store double %315, ptr %316, align 8
  %317 = getelementptr inbounds nuw i8, ptr %278, i64 104
  %318 = load double, ptr %317, align 8
  %319 = getelementptr inbounds nuw i8, ptr %279, i64 104
  store double %318, ptr %319, align 8
  %320 = getelementptr inbounds nuw i8, ptr %278, i64 112
  %321 = load double, ptr %320, align 8
  %322 = getelementptr inbounds nuw i8, ptr %279, i64 112
  store double %321, ptr %322, align 8
  %323 = getelementptr inbounds nuw i8, ptr %278, i64 120
  %324 = load double, ptr %323, align 8
  %325 = getelementptr inbounds nuw i8, ptr %279, i64 120
  store double %324, ptr %325, align 8
  %326 = getelementptr inbounds nuw i8, ptr %278, i64 128
  %327 = load double, ptr %326, align 8
  %328 = getelementptr inbounds nuw i8, ptr %279, i64 128
  store double %327, ptr %328, align 8
  %329 = getelementptr inbounds nuw i8, ptr %278, i64 136
  %330 = load double, ptr %329, align 8
  %331 = getelementptr inbounds nuw i8, ptr %279, i64 136
  store double %330, ptr %331, align 8
  %332 = getelementptr inbounds nuw i8, ptr %278, i64 144
  %333 = load double, ptr %332, align 8
  %334 = getelementptr inbounds nuw i8, ptr %279, i64 144
  store double %333, ptr %334, align 8
  %335 = getelementptr inbounds nuw i8, ptr %278, i64 152
  %336 = load double, ptr %335, align 8
  %337 = getelementptr inbounds nuw i8, ptr %279, i64 152
  store double %336, ptr %337, align 8
  %338 = getelementptr inbounds nuw i8, ptr %278, i64 160
  %339 = load double, ptr %338, align 8
  %340 = getelementptr inbounds nuw i8, ptr %279, i64 160
  store double %339, ptr %340, align 8
  %341 = getelementptr inbounds nuw i8, ptr %278, i64 168
  %342 = load double, ptr %341, align 8
  %343 = getelementptr inbounds nuw i8, ptr %279, i64 168
  store double %342, ptr %343, align 8
  %344 = getelementptr inbounds nuw i8, ptr %278, i64 176
  %345 = load double, ptr %344, align 8
  %346 = getelementptr inbounds nuw i8, ptr %279, i64 176
  store double %345, ptr %346, align 8
  %347 = getelementptr inbounds nuw i8, ptr %278, i64 184
  %348 = load double, ptr %347, align 8
  %349 = getelementptr inbounds nuw i8, ptr %279, i64 184
  store double %348, ptr %349, align 8
  %350 = getelementptr inbounds nuw i8, ptr %278, i64 192
  %351 = load double, ptr %350, align 8
  %352 = getelementptr inbounds nuw i8, ptr %279, i64 192
  store double %351, ptr %352, align 8
  %353 = getelementptr inbounds nuw i8, ptr %278, i64 200
  %354 = load double, ptr %353, align 8
  %355 = getelementptr inbounds nuw i8, ptr %279, i64 200
  store double %354, ptr %355, align 8
  %356 = getelementptr inbounds nuw i8, ptr %278, i64 208
  %357 = load double, ptr %356, align 8
  %358 = getelementptr inbounds nuw i8, ptr %279, i64 208
  store double %357, ptr %358, align 8
  %359 = getelementptr inbounds nuw i8, ptr %278, i64 216
  %360 = load double, ptr %359, align 8
  %361 = getelementptr inbounds nuw i8, ptr %279, i64 216
  store double %360, ptr %361, align 8
  %362 = getelementptr inbounds nuw i8, ptr %278, i64 224
  %363 = load double, ptr %362, align 8
  %364 = getelementptr inbounds nuw i8, ptr %279, i64 224
  store double %363, ptr %364, align 8
  %365 = getelementptr inbounds nuw i8, ptr %278, i64 232
  %366 = load double, ptr %365, align 8
  %367 = getelementptr inbounds nuw i8, ptr %279, i64 232
  store double %366, ptr %367, align 8
  %368 = getelementptr inbounds nuw i8, ptr %278, i64 240
  %369 = load double, ptr %368, align 8
  %370 = getelementptr inbounds nuw i8, ptr %279, i64 240
  store double %369, ptr %370, align 8
  %371 = getelementptr inbounds nuw i8, ptr %278, i64 248
  %372 = load double, ptr %371, align 8
  %373 = getelementptr inbounds nuw i8, ptr %279, i64 248
  store double %372, ptr %373, align 8
  %374 = getelementptr inbounds nuw i8, ptr %278, i64 256
  %375 = load double, ptr %374, align 8
  %376 = getelementptr inbounds nuw i8, ptr %279, i64 256
  store double %375, ptr %376, align 8
  %377 = getelementptr inbounds nuw i8, ptr %278, i64 264
  %378 = load double, ptr %377, align 8
  %379 = getelementptr inbounds nuw i8, ptr %279, i64 264
  store double %378, ptr %379, align 8
  %380 = getelementptr inbounds nuw i8, ptr %278, i64 272
  %381 = load double, ptr %380, align 8
  %382 = getelementptr inbounds nuw i8, ptr %279, i64 272
  store double %381, ptr %382, align 8
  %383 = getelementptr inbounds nuw i8, ptr %278, i64 280
  %384 = load double, ptr %383, align 8
  %385 = getelementptr inbounds nuw i8, ptr %279, i64 280
  store double %384, ptr %385, align 8
  %386 = getelementptr inbounds nuw i8, ptr %278, i64 288
  %387 = load double, ptr %386, align 8
  %388 = getelementptr inbounds nuw i8, ptr %279, i64 288
  store double %387, ptr %388, align 8
  %389 = getelementptr inbounds nuw i8, ptr %278, i64 296
  %390 = load double, ptr %389, align 8
  %391 = getelementptr inbounds nuw i8, ptr %279, i64 296
  store double %390, ptr %391, align 8
  %392 = getelementptr inbounds nuw i8, ptr %278, i64 304
  %393 = load double, ptr %392, align 8
  %394 = getelementptr inbounds nuw i8, ptr %279, i64 304
  store double %393, ptr %394, align 8
  %395 = getelementptr inbounds nuw i8, ptr %278, i64 312
  %396 = load double, ptr %395, align 8
  %397 = getelementptr inbounds nuw i8, ptr %279, i64 312
  store double %396, ptr %397, align 8
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1
  %exitcond143.not = icmp eq i64 %indvars.iv.next141, 40
  br i1 %exitcond143.not, label %398, label %.preheader, !llvm.loop !27

398:                                              ; preds = %.preheader
  tail call void @free(ptr noundef nonnull %104)
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @kernel_ludcmp(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3) unnamed_addr #2 {
  br label %.preheader90

.preheader90:                                     ; preds = %4, %._crit_edge105
  %indvars.iv140 = phi i64 [ 0, %4 ], [ %indvars.iv.next141, %._crit_edge105 ]
  %.not = icmp eq i64 %indvars.iv140, 0
  br i1 %.not, label %._crit_edge105, label %.lr.ph94

.lr.ph94:                                         ; preds = %.preheader90
  %5 = getelementptr inbounds nuw [320 x i8], ptr %0, i64 %indvars.iv140
  br label %25

.lr.ph100.us.preheader:                           ; preds = %._crit_edge
  %6 = getelementptr inbounds nuw [320 x i8], ptr %0, i64 %indvars.iv140
  %xtraiter9 = and i64 %indvars.iv140, 1
  %7 = icmp eq i64 %indvars.iv140, 1
  %unroll_iter13 = and i64 %indvars.iv140, 9223372036854775806
  %lcmp.mod10.not = icmp eq i64 %xtraiter9, 0
  %lcmp.mod12 = trunc i64 %indvars.iv140 to i1
  br label %.lr.ph100.us

.lr.ph100.us:                                     ; preds = %.lr.ph100.us.preheader, %._crit_edge101.us
  %indvars.iv142 = phi i64 [ %indvars.iv140, %.lr.ph100.us.preheader ], [ %indvars.iv.next143, %._crit_edge101.us ]
  %8 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv142
  %9 = load double, ptr %8, align 8
  %invariant.gep95.us = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv142
  br i1 %7, label %.epil.preheader, label %.lr.ph100.us.new

.lr.ph100.us.new:                                 ; preds = %.lr.ph100.us, %.lr.ph100.us.new
  %indvars.iv136 = phi i64 [ %indvars.iv.next137.1, %.lr.ph100.us.new ], [ 0, %.lr.ph100.us ]
  %.198.us = phi double [ %19, %.lr.ph100.us.new ], [ %9, %.lr.ph100.us ]
  %niter14 = phi i64 [ %niter14.next.1, %.lr.ph100.us.new ], [ 0, %.lr.ph100.us ]
  %10 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv136
  %11 = load double, ptr %10, align 8
  %gep96.us = getelementptr inbounds nuw [320 x i8], ptr %invariant.gep95.us, i64 %indvars.iv136
  %12 = load double, ptr %gep96.us, align 8
  %13 = fneg double %11
  %14 = tail call double @llvm.fmuladd.f64(double %13, double %12, double %.198.us)
  %indvars.iv.next137 = or disjoint i64 %indvars.iv136, 1
  %15 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv.next137
  %16 = load double, ptr %15, align 8
  %gep96.us.1 = getelementptr inbounds nuw [320 x i8], ptr %invariant.gep95.us, i64 %indvars.iv.next137
  %17 = load double, ptr %gep96.us.1, align 8
  %18 = fneg double %16
  %19 = tail call double @llvm.fmuladd.f64(double %18, double %17, double %14)
  %indvars.iv.next137.1 = add nuw nsw i64 %indvars.iv136, 2
  %niter14.next.1 = add i64 %niter14, 2
  %niter14.ncmp.1 = icmp eq i64 %niter14.next.1, %unroll_iter13
  br i1 %niter14.ncmp.1, label %._crit_edge101.us.unr-lcssa, label %.lr.ph100.us.new, !llvm.loop !28

._crit_edge101.us.unr-lcssa:                      ; preds = %.lr.ph100.us.new
  br i1 %lcmp.mod10.not, label %._crit_edge101.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge101.us.unr-lcssa, %.lr.ph100.us
  %indvars.iv136.epil.init = phi i64 [ 0, %.lr.ph100.us ], [ %indvars.iv.next137.1, %._crit_edge101.us.unr-lcssa ]
  %.198.us.epil.init = phi double [ %9, %.lr.ph100.us ], [ %19, %._crit_edge101.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod12)
  %20 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv136.epil.init
  %21 = load double, ptr %20, align 8
  %gep96.us.epil = getelementptr inbounds nuw [320 x i8], ptr %invariant.gep95.us, i64 %indvars.iv136.epil.init
  %22 = load double, ptr %gep96.us.epil, align 8
  %23 = fneg double %21
  %24 = tail call double @llvm.fmuladd.f64(double %23, double %22, double %.198.us.epil.init)
  br label %._crit_edge101.us

._crit_edge101.us:                                ; preds = %._crit_edge101.us.unr-lcssa, %.epil.preheader
  %.lcssa6 = phi double [ %19, %._crit_edge101.us.unr-lcssa ], [ %24, %.epil.preheader ]
  store double %.lcssa6, ptr %8, align 8
  %indvars.iv.next143 = add nuw nsw i64 %indvars.iv142, 1
  %exitcond145.not = icmp eq i64 %indvars.iv.next143, 40
  br i1 %exitcond145.not, label %._crit_edge105, label %.lr.ph100.us, !llvm.loop !29

25:                                               ; preds = %.lr.ph94, %._crit_edge
  %indvars.iv131 = phi i64 [ 0, %.lr.ph94 ], [ %indvars.iv.next132, %._crit_edge ]
  %26 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv131
  %27 = load double, ptr %26, align 8
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv131
  %.not123 = icmp eq i64 %indvars.iv131, 0
  br i1 %.not123, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %25
  %xtraiter = and i64 %indvars.iv131, 1
  %28 = icmp eq i64 %indvars.iv131, 1
  br i1 %28, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %indvars.iv131, 9223372036854775806
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ]
  %.092 = phi double [ %27, %.lr.ph.preheader.new ], [ %38, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %29 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv
  %30 = load double, ptr %29, align 8
  %gep = getelementptr inbounds nuw [320 x i8], ptr %invariant.gep, i64 %indvars.iv
  %31 = load double, ptr %gep, align 8
  %32 = fneg double %30
  %33 = tail call double @llvm.fmuladd.f64(double %32, double %31, double %.092)
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %34 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next
  %35 = load double, ptr %34, align 8
  %gep.1 = getelementptr inbounds nuw [320 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %36 = load double, ptr %gep.1, align 8
  %37 = fneg double %35
  %38 = tail call double @llvm.fmuladd.f64(double %37, double %36, double %33)
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !30

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.092.epil.init = phi double [ %27, %.lr.ph.preheader ], [ %38, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod8 = trunc i64 %indvars.iv131 to i1
  tail call void @llvm.assume(i1 %lcmp.mod8)
  %39 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.epil.init
  %40 = load double, ptr %39, align 8
  %gep.epil = getelementptr inbounds nuw [320 x i8], ptr %invariant.gep, i64 %indvars.iv.epil.init
  %41 = load double, ptr %gep.epil, align 8
  %42 = fneg double %40
  %43 = tail call double @llvm.fmuladd.f64(double %42, double %41, double %.092.epil.init)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %25
  %.0.lcssa = phi double [ %27, %25 ], [ %38, %._crit_edge.loopexit.unr-lcssa ], [ %43, %.lr.ph.epil.preheader ]
  %44 = getelementptr inbounds nuw [320 x i8], ptr %0, i64 %indvars.iv131
  %45 = getelementptr inbounds nuw [8 x i8], ptr %44, i64 %indvars.iv131
  %46 = load double, ptr %45, align 8
  %47 = fdiv double %.0.lcssa, %46
  store double %47, ptr %26, align 8
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1
  %exitcond135.not = icmp eq i64 %indvars.iv.next132, %indvars.iv140
  br i1 %exitcond135.not, label %.lr.ph100.us.preheader, label %25, !llvm.loop !31

._crit_edge105:                                   ; preds = %._crit_edge101.us, %.preheader90
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1
  %exitcond147.not = icmp eq i64 %indvars.iv.next141, 40
  br i1 %exitcond147.not, label %.preheader88, label %.preheader90, !llvm.loop !32

.preheader88:                                     ; preds = %._crit_edge105, %._crit_edge112
  %indvars.iv152 = phi i64 [ %indvars.iv.next153, %._crit_edge112 ], [ 0, %._crit_edge105 ]
  %48 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv152
  %49 = load double, ptr %48, align 8
  %.not125 = icmp eq i64 %indvars.iv152, 0
  br i1 %.not125, label %._crit_edge112, label %.lr.ph111

.lr.ph111:                                        ; preds = %.preheader88
  %50 = getelementptr inbounds nuw [320 x i8], ptr %0, i64 %indvars.iv152
  %xtraiter16 = and i64 %indvars.iv152, 3
  %51 = icmp samesign ult i64 %indvars.iv152, 4
  br i1 %51, label %.epil.preheader15, label %.lr.ph111.new

.lr.ph111.new:                                    ; preds = %.lr.ph111
  %unroll_iter20 = and i64 %indvars.iv152, 9223372036854775804
  br label %52

52:                                               ; preds = %52, %.lr.ph111.new
  %indvars.iv148 = phi i64 [ 0, %.lr.ph111.new ], [ %indvars.iv.next149.3, %52 ]
  %.2109 = phi double [ %49, %.lr.ph111.new ], [ %76, %52 ]
  %niter21 = phi i64 [ 0, %.lr.ph111.new ], [ %niter21.next.3, %52 ]
  %53 = getelementptr inbounds nuw [8 x i8], ptr %50, i64 %indvars.iv148
  %54 = load double, ptr %53, align 8
  %55 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv148
  %56 = load double, ptr %55, align 8
  %57 = fneg double %54
  %58 = tail call double @llvm.fmuladd.f64(double %57, double %56, double %.2109)
  %indvars.iv.next149 = or disjoint i64 %indvars.iv148, 1
  %59 = getelementptr inbounds nuw [8 x i8], ptr %50, i64 %indvars.iv.next149
  %60 = load double, ptr %59, align 8
  %61 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next149
  %62 = load double, ptr %61, align 8
  %63 = fneg double %60
  %64 = tail call double @llvm.fmuladd.f64(double %63, double %62, double %58)
  %indvars.iv.next149.1 = or disjoint i64 %indvars.iv148, 2
  %65 = getelementptr inbounds nuw [8 x i8], ptr %50, i64 %indvars.iv.next149.1
  %66 = load double, ptr %65, align 8
  %67 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next149.1
  %68 = load double, ptr %67, align 8
  %69 = fneg double %66
  %70 = tail call double @llvm.fmuladd.f64(double %69, double %68, double %64)
  %indvars.iv.next149.2 = or disjoint i64 %indvars.iv148, 3
  %71 = getelementptr inbounds nuw [8 x i8], ptr %50, i64 %indvars.iv.next149.2
  %72 = load double, ptr %71, align 8
  %73 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next149.2
  %74 = load double, ptr %73, align 8
  %75 = fneg double %72
  %76 = tail call double @llvm.fmuladd.f64(double %75, double %74, double %70)
  %indvars.iv.next149.3 = add nuw nsw i64 %indvars.iv148, 4
  %niter21.next.3 = add i64 %niter21, 4
  %niter21.ncmp.3 = icmp eq i64 %niter21.next.3, %unroll_iter20
  br i1 %niter21.ncmp.3, label %._crit_edge112.loopexit.unr-lcssa, label %52, !llvm.loop !33

._crit_edge112.loopexit.unr-lcssa:                ; preds = %52
  %lcmp.mod17.not = icmp eq i64 %xtraiter16, 0
  br i1 %lcmp.mod17.not, label %._crit_edge112, label %.epil.preheader15

.epil.preheader15:                                ; preds = %._crit_edge112.loopexit.unr-lcssa, %.lr.ph111
  %indvars.iv148.epil.init = phi i64 [ 0, %.lr.ph111 ], [ %indvars.iv.next149.3, %._crit_edge112.loopexit.unr-lcssa ]
  %.2109.epil.init = phi double [ %49, %.lr.ph111 ], [ %76, %._crit_edge112.loopexit.unr-lcssa ]
  %lcmp.mod19 = icmp ne i64 %xtraiter16, 0
  tail call void @llvm.assume(i1 %lcmp.mod19)
  br label %77

77:                                               ; preds = %77, %.epil.preheader15
  %indvars.iv148.epil = phi i64 [ %indvars.iv148.epil.init, %.epil.preheader15 ], [ %indvars.iv.next149.epil, %77 ]
  %.2109.epil = phi double [ %.2109.epil.init, %.epil.preheader15 ], [ %83, %77 ]
  %epil.iter = phi i64 [ 0, %.epil.preheader15 ], [ %epil.iter.next, %77 ]
  %78 = getelementptr inbounds nuw [8 x i8], ptr %50, i64 %indvars.iv148.epil
  %79 = load double, ptr %78, align 8
  %80 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv148.epil
  %81 = load double, ptr %80, align 8
  %82 = fneg double %79
  %83 = tail call double @llvm.fmuladd.f64(double %82, double %81, double %.2109.epil)
  %indvars.iv.next149.epil = add nuw nsw i64 %indvars.iv148.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter16
  br i1 %epil.iter.cmp.not, label %._crit_edge112, label %77, !llvm.loop !34

._crit_edge112:                                   ; preds = %._crit_edge112.loopexit.unr-lcssa, %77, %.preheader88
  %.2.lcssa = phi double [ %49, %.preheader88 ], [ %76, %._crit_edge112.loopexit.unr-lcssa ], [ %83, %77 ]
  %84 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv152
  store double %.2.lcssa, ptr %84, align 8
  %indvars.iv.next153 = add nuw nsw i64 %indvars.iv152, 1
  %exitcond155.not = icmp eq i64 %indvars.iv.next153, 40
  br i1 %exitcond155.not, label %.preheader, label %.preheader88, !llvm.loop !36

.preheader:                                       ; preds = %._crit_edge112, %._crit_edge120
  %indvar = phi i64 [ %indvar.next, %._crit_edge120 ], [ 0, %._crit_edge112 ]
  %indvars.iv156 = phi i64 [ %indvars.iv.next157, %._crit_edge120 ], [ 39, %._crit_edge112 ]
  %85 = add i64 %indvar, -1
  %86 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv156
  %87 = load double, ptr %86, align 8
  %88 = icmp samesign ult i64 %indvars.iv156, 39
  br i1 %88, label %.lr.ph119, label %._crit_edge120

.lr.ph119:                                        ; preds = %.preheader
  %89 = getelementptr inbounds nuw [320 x i8], ptr %0, i64 %indvars.iv156
  %xtraiter22 = and i64 %indvar, 3
  %lcmp.mod23.not = icmp eq i64 %xtraiter22, 0
  br i1 %lcmp.mod23.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph119, %.prol.preheader
  %indvars.iv158.prol = phi i64 [ %indvars.iv.next159.prol, %.prol.preheader ], [ %indvars.iv156, %.lr.ph119 ]
  %.3116.prol = phi double [ %95, %.prol.preheader ], [ %87, %.lr.ph119 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph119 ]
  %indvars.iv.next159.prol = add nuw nsw i64 %indvars.iv158.prol, 1
  %90 = getelementptr inbounds nuw [8 x i8], ptr %89, i64 %indvars.iv.next159.prol
  %91 = load double, ptr %90, align 8
  %92 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next159.prol
  %93 = load double, ptr %92, align 8
  %94 = fneg double %91
  %95 = tail call double @llvm.fmuladd.f64(double %94, double %93, double %.3116.prol)
  %prol.iter.next = add i64 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter22
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !37

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph119
  %.lcssa.unr = phi double [ poison, %.lr.ph119 ], [ %95, %.prol.preheader ]
  %indvars.iv158.unr = phi i64 [ %indvars.iv156, %.lr.ph119 ], [ %indvars.iv.next159.prol, %.prol.preheader ]
  %.3116.unr = phi double [ %87, %.lr.ph119 ], [ %95, %.prol.preheader ]
  %96 = icmp ult i64 %85, 3
  br i1 %96, label %._crit_edge120, label %.lr.ph119.new

.lr.ph119.new:                                    ; preds = %.prol.loopexit, %.lr.ph119.new
  %indvars.iv158 = phi i64 [ %indvars.iv.next159.3, %.lr.ph119.new ], [ %indvars.iv158.unr, %.prol.loopexit ]
  %.3116 = phi double [ %120, %.lr.ph119.new ], [ %.3116.unr, %.prol.loopexit ]
  %indvars.iv.next159 = add nuw nsw i64 %indvars.iv158, 1
  %97 = getelementptr inbounds nuw [8 x i8], ptr %89, i64 %indvars.iv.next159
  %98 = load double, ptr %97, align 8
  %99 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next159
  %100 = load double, ptr %99, align 8
  %101 = fneg double %98
  %102 = tail call double @llvm.fmuladd.f64(double %101, double %100, double %.3116)
  %indvars.iv.next159.1 = add nuw nsw i64 %indvars.iv158, 2
  %103 = getelementptr inbounds nuw [8 x i8], ptr %89, i64 %indvars.iv.next159.1
  %104 = load double, ptr %103, align 8
  %105 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next159.1
  %106 = load double, ptr %105, align 8
  %107 = fneg double %104
  %108 = tail call double @llvm.fmuladd.f64(double %107, double %106, double %102)
  %indvars.iv.next159.2 = add nuw nsw i64 %indvars.iv158, 3
  %109 = getelementptr inbounds nuw [8 x i8], ptr %89, i64 %indvars.iv.next159.2
  %110 = load double, ptr %109, align 8
  %111 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next159.2
  %112 = load double, ptr %111, align 8
  %113 = fneg double %110
  %114 = tail call double @llvm.fmuladd.f64(double %113, double %112, double %108)
  %indvars.iv.next159.3 = add nuw nsw i64 %indvars.iv158, 4
  %115 = getelementptr inbounds nuw [8 x i8], ptr %89, i64 %indvars.iv.next159.3
  %116 = load double, ptr %115, align 8
  %117 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next159.3
  %118 = load double, ptr %117, align 8
  %119 = fneg double %116
  %120 = tail call double @llvm.fmuladd.f64(double %119, double %118, double %114)
  %exitcond161.not.3 = icmp eq i64 %indvars.iv.next159.3, 39
  br i1 %exitcond161.not.3, label %._crit_edge120, label %.lr.ph119.new, !llvm.loop !38

._crit_edge120:                                   ; preds = %.prol.loopexit, %.lr.ph119.new, %.preheader
  %.3.lcssa = phi double [ %87, %.preheader ], [ %.lcssa.unr, %.prol.loopexit ], [ %120, %.lr.ph119.new ]
  %121 = getelementptr inbounds nuw [320 x i8], ptr %0, i64 %indvars.iv156
  %122 = getelementptr inbounds nuw [8 x i8], ptr %121, i64 %indvars.iv156
  %123 = load double, ptr %122, align 8
  %124 = fdiv double %.3.lcssa, %123
  %125 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv156
  store double %124, ptr %125, align 8
  %indvars.iv.next157 = add nsw i64 %indvars.iv156, -1
  %.not163 = icmp eq i64 %indvars.iv156, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not163, label %126, label %.preheader, !llvm.loop !39

126:                                              ; preds = %._crit_edge120
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @print_array(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
  %2 = tail call ptr @__acrt_iob_func(i32 noundef 2) #10
  %fwrite = tail call i64 @fwrite(ptr nonnull @"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@", i64 22, i64 1, ptr %2)
  %3 = tail call ptr @__acrt_iob_func(i32 noundef 2) #10
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@", ptr noundef nonnull @"??_C@_01FJMABOPO@x?$AA@") #10
  br label %5

5:                                                ; preds = %1, %10
  %indvars.iv = phi i64 [ 0, %1 ], [ %indvars.iv.next, %10 ]
  %indvars9 = trunc i64 %indvars.iv to i32
  %.urem = add nsw i32 %indvars9, -20
  %.cmp = icmp samesign ult i64 %indvars.iv, 20
  %6 = select i1 %.cmp, i32 %indvars9, i32 %.urem
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = tail call ptr @__acrt_iob_func(i32 noundef 2) #10
  %fputc = tail call i32 @fputc(i32 10, ptr %9)
  br label %10

10:                                               ; preds = %8, %5
  %11 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %12 = load double, ptr %11, align 8
  %13 = tail call ptr @__acrt_iob_func(i32 noundef 2) #10
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef nonnull @"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@", double noundef %12) #10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 40
  br i1 %exitcond.not, label %15, label %5, !llvm.loop !40

15:                                               ; preds = %10
  %16 = tail call ptr @__acrt_iob_func(i32 noundef 2) #10
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef nonnull @"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@", ptr noundef nonnull @"??_C@_01FJMABOPO@x?$AA@") #10
  %18 = tail call ptr @__acrt_iob_func(i32 noundef 2) #10
  %fwrite5 = tail call i64 @fwrite(ptr nonnull @"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@", i64 22, i64 1, ptr %18)
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
  %7 = tail call i32 @__stdio_common_vfprintf(i64 noundef %6, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #10
  ret i32 %7
}

declare dso_local i32 @__stdio_common_vfprintf(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #5 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 24.0.0git (https://github.com/llvm/llvm-project.git 6f4196219399a3502cea3beb2d0c8c28b2241649)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\linear-algebra\\solvers\\ludcmp\\ludcmp.c", directory: "C:\\work\\llvm-profitability-research")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"MaxTLSAlign", i32 65536}
!6 = !{!"clang version 24.0.0git (https://github.com/llvm/llvm-project.git 6f4196219399a3502cea3beb2d0c8c28b2241649)"}
!7 = distinct !{!7, !8, !9, !10}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!"llvm.loop.isvectorized", i32 1}
!10 = !{!"llvm.loop.vectorize.epilogue", i32 1}
!11 = distinct !{!11, !8, !9, !12, !13}
!12 = !{!"llvm.loop.vectorize.body", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = distinct !{!14, !8, !13, !9, !10}
!15 = distinct !{!15, !8}
!16 = !{!17}
!17 = distinct !{!17, !18}
!18 = distinct !{!18, i1 false, !"LVerDomain"}
!19 = !{!20}
!20 = distinct !{!20, !18}
!21 = !{!22}
!22 = distinct !{!22, !18}
!23 = !{!20, !17}
!24 = distinct !{!24, !8, !9, !10}
!25 = distinct !{!25, !8}
!26 = distinct !{!26, !8}
!27 = distinct !{!27, !8}
!28 = distinct !{!28, !8}
!29 = distinct !{!29, !8}
!30 = distinct !{!30, !8}
!31 = distinct !{!31, !8}
!32 = distinct !{!32, !8}
!33 = distinct !{!33, !8}
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.unroll.disable"}
!36 = distinct !{!36, !8}
!37 = distinct !{!37, !35}
!38 = distinct !{!38, !8}
!39 = distinct !{!39, !8}
!40 = distinct !{!40, !8}
