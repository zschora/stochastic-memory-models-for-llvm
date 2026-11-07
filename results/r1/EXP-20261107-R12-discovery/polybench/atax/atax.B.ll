; ModuleID = 'C:\work\llvm-profitability-research\results\r1\EXP-20261107-R12-discovery\polybench\atax\frontend.ll'
source_filename = "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\linear-algebra\\kernels\\atax\\atax.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc19.51.36260"

$__local_stdio_printf_options = comdat any

$fprintf = comdat any

$_vfprintf_l = comdat any

$"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = comdat any

$"??_C@_01EANLCPLP@y?$AA@" = comdat any

$"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@" = comdat any

$"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@" = comdat any

$"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@" = comdat any

$"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = comdat any

@__local_stdio_printf_options._OptionsStorage = internal global i64 0, align 8
@"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", comdat, align 8
@"??_C@_01EANLCPLP@y?$AA@" = linkonce_odr dso_local unnamed_addr constant [2 x i8] c"y\00", comdat, align 4
@"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"begin dump: %s\00", comdat, align 8
@"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [8 x i8] c"%0.2lf \00", comdat, align 8
@"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", comdat, align 8
@"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", comdat, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 1596, i32 noundef 8) #10
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 42, i32 noundef 8) #10
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 42, i32 noundef 8) #10
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 38, i32 noundef 8) #10
  tail call fastcc void @init_array(ptr noundef %3, ptr noundef %4)
  tail call fastcc void @kernel_atax(ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
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

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: write) uwtable
define internal fastcc void @init_array(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 336)) %1) unnamed_addr #2 {
.preheader.preheader:
  store <2 x double> <double 1.000000e+00, double f0x3FF0618618618618>, ptr %1, align 8
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store <2 x double> <double f0x3FF0C30C30C30C31, double f0x3FF1249249249249>, ptr %2, align 8
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 32
  store <2 x double> <double f0x3FF1861861861862, double f0x3FF1E79E79E79E7A>, ptr %3, align 8
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 48
  store <2 x double> <double f0x3FF2492492492492, double f0x3FF2AAAAAAAAAAAB>, ptr %4, align 8
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 64
  store <2 x double> <double f0x3FF30C30C30C30C3, double f0x3FF36DB6DB6DB6DB>, ptr %5, align 8
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 80
  store <2 x double> <double f0x3FF3CF3CF3CF3CF4, double f0x3FF430C30C30C30C>, ptr %6, align 8
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 96
  store <2 x double> <double f0x3FF4924924924924, double f0x3FF4F3CF3CF3CF3D>, ptr %7, align 8
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 112
  store <2 x double> <double f0x3FF5555555555555, double f0x3FF5B6DB6DB6DB6E>, ptr %8, align 8
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 128
  store <2 x double> <double f0x3FF6186186186186, double f0x3FF679E79E79E79E>, ptr %9, align 8
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 144
  store <2 x double> <double f0x3FF6DB6DB6DB6DB7, double f0x3FF73CF3CF3CF3CF>, ptr %10, align 8
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 160
  store <2 x double> <double f0x3FF79E79E79E79E8, double 1.500000e+00>, ptr %11, align 8
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 176
  store <2 x double> <double f0x3FF8618618618618, double f0x3FF8C30C30C30C31>, ptr %12, align 8
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 192
  store <2 x double> <double f0x3FF9249249249249, double f0x3FF9861861861862>, ptr %13, align 8
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 208
  store <2 x double> <double f0x3FF9E79E79E79E7A, double f0x3FFA492492492492>, ptr %14, align 8
  %15 = getelementptr inbounds nuw i8, ptr %1, i64 224
  store <2 x double> <double f0x3FFAAAAAAAAAAAAA, double f0x3FFB0C30C30C30C3>, ptr %15, align 8
  %16 = getelementptr inbounds nuw i8, ptr %1, i64 240
  store <2 x double> <double f0x3FFB6DB6DB6DB6DC, double f0x3FFBCF3CF3CF3CF4>, ptr %16, align 8
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 256
  store <2 x double> <double f0x3FFC30C30C30C30C, double f0x3FFC924924924924>, ptr %17, align 8
  %18 = getelementptr inbounds nuw i8, ptr %1, i64 272
  store <2 x double> <double f0x3FFCF3CF3CF3CF3D, double f0x3FFD555555555556>, ptr %18, align 8
  %19 = getelementptr inbounds nuw i8, ptr %1, i64 288
  store <2 x double> <double f0x3FFDB6DB6DB6DB6E, double f0x3FFE186186186186>, ptr %19, align 8
  %20 = getelementptr inbounds nuw i8, ptr %1, i64 304
  store <2 x double> <double f0x3FFE79E79E79E79E, double f0x3FFEDB6DB6DB6DB7>, ptr %20, align 8
  %21 = getelementptr inbounds nuw i8, ptr %1, i64 320
  store <2 x double> <double f0x3FFF3CF3CF3CF3CF, double f0x3FFF9E79E79E79E8>, ptr %21, align 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv29 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next30, %.preheader ]
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %indvars.iv29, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %22 = getelementptr inbounds nuw [336 x i8], ptr %0, i64 %indvars.iv29
  %23 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %24 = add <2 x i32> %23, <i32 0, i32 1>
  %25 = urem <2 x i32> %24, splat (i32 42)
  %26 = uitofp nneg <2 x i32> %25 to <2 x double>
  %27 = fdiv <2 x double> %26, splat (double 1.900000e+02)
  store <2 x double> %27, ptr %22, align 8
  %28 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %29 = add <2 x i32> %28, <i32 2, i32 3>
  %30 = urem <2 x i32> %29, splat (i32 42)
  %31 = uitofp nneg <2 x i32> %30 to <2 x double>
  %32 = fdiv <2 x double> %31, splat (double 1.900000e+02)
  %33 = getelementptr inbounds nuw i8, ptr %22, i64 16
  store <2 x double> %32, ptr %33, align 8
  %34 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %35 = add <2 x i32> %34, <i32 4, i32 5>
  %36 = urem <2 x i32> %35, splat (i32 42)
  %37 = uitofp nneg <2 x i32> %36 to <2 x double>
  %38 = fdiv <2 x double> %37, splat (double 1.900000e+02)
  %39 = getelementptr inbounds nuw i8, ptr %22, i64 32
  store <2 x double> %38, ptr %39, align 8
  %40 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %41 = add <2 x i32> %40, <i32 6, i32 7>
  %42 = urem <2 x i32> %41, splat (i32 42)
  %43 = uitofp nneg <2 x i32> %42 to <2 x double>
  %44 = fdiv <2 x double> %43, splat (double 1.900000e+02)
  %45 = getelementptr inbounds nuw i8, ptr %22, i64 48
  store <2 x double> %44, ptr %45, align 8
  %46 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %47 = add <2 x i32> %46, <i32 8, i32 9>
  %48 = urem <2 x i32> %47, splat (i32 42)
  %49 = uitofp nneg <2 x i32> %48 to <2 x double>
  %50 = fdiv <2 x double> %49, splat (double 1.900000e+02)
  %51 = getelementptr inbounds nuw i8, ptr %22, i64 64
  store <2 x double> %50, ptr %51, align 8
  %52 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %53 = add <2 x i32> %52, <i32 10, i32 11>
  %54 = urem <2 x i32> %53, splat (i32 42)
  %55 = uitofp nneg <2 x i32> %54 to <2 x double>
  %56 = fdiv <2 x double> %55, splat (double 1.900000e+02)
  %57 = getelementptr inbounds nuw i8, ptr %22, i64 80
  store <2 x double> %56, ptr %57, align 8
  %58 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %59 = add <2 x i32> %58, <i32 12, i32 13>
  %60 = urem <2 x i32> %59, splat (i32 42)
  %61 = uitofp nneg <2 x i32> %60 to <2 x double>
  %62 = fdiv <2 x double> %61, splat (double 1.900000e+02)
  %63 = getelementptr inbounds nuw i8, ptr %22, i64 96
  store <2 x double> %62, ptr %63, align 8
  %64 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %65 = add <2 x i32> %64, <i32 14, i32 15>
  %66 = urem <2 x i32> %65, splat (i32 42)
  %67 = uitofp nneg <2 x i32> %66 to <2 x double>
  %68 = fdiv <2 x double> %67, splat (double 1.900000e+02)
  %69 = getelementptr inbounds nuw i8, ptr %22, i64 112
  store <2 x double> %68, ptr %69, align 8
  %70 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %71 = add <2 x i32> %70, <i32 16, i32 17>
  %72 = urem <2 x i32> %71, splat (i32 42)
  %73 = uitofp nneg <2 x i32> %72 to <2 x double>
  %74 = fdiv <2 x double> %73, splat (double 1.900000e+02)
  %75 = getelementptr inbounds nuw i8, ptr %22, i64 128
  store <2 x double> %74, ptr %75, align 8
  %76 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %77 = add <2 x i32> %76, <i32 18, i32 19>
  %78 = urem <2 x i32> %77, splat (i32 42)
  %79 = uitofp nneg <2 x i32> %78 to <2 x double>
  %80 = fdiv <2 x double> %79, splat (double 1.900000e+02)
  %81 = getelementptr inbounds nuw i8, ptr %22, i64 144
  store <2 x double> %80, ptr %81, align 8
  %82 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %83 = add <2 x i32> %82, <i32 20, i32 21>
  %84 = urem <2 x i32> %83, splat (i32 42)
  %85 = uitofp nneg <2 x i32> %84 to <2 x double>
  %86 = fdiv <2 x double> %85, splat (double 1.900000e+02)
  %87 = getelementptr inbounds nuw i8, ptr %22, i64 160
  store <2 x double> %86, ptr %87, align 8
  %88 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %89 = add <2 x i32> %88, <i32 22, i32 23>
  %90 = urem <2 x i32> %89, splat (i32 42)
  %91 = uitofp nneg <2 x i32> %90 to <2 x double>
  %92 = fdiv <2 x double> %91, splat (double 1.900000e+02)
  %93 = getelementptr inbounds nuw i8, ptr %22, i64 176
  store <2 x double> %92, ptr %93, align 8
  %94 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %95 = add <2 x i32> %94, <i32 24, i32 25>
  %96 = urem <2 x i32> %95, splat (i32 42)
  %97 = uitofp nneg <2 x i32> %96 to <2 x double>
  %98 = fdiv <2 x double> %97, splat (double 1.900000e+02)
  %99 = getelementptr inbounds nuw i8, ptr %22, i64 192
  store <2 x double> %98, ptr %99, align 8
  %100 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %101 = add <2 x i32> %100, <i32 26, i32 27>
  %102 = urem <2 x i32> %101, splat (i32 42)
  %103 = uitofp nneg <2 x i32> %102 to <2 x double>
  %104 = fdiv <2 x double> %103, splat (double 1.900000e+02)
  %105 = getelementptr inbounds nuw i8, ptr %22, i64 208
  store <2 x double> %104, ptr %105, align 8
  %106 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %107 = add <2 x i32> %106, <i32 28, i32 29>
  %108 = urem <2 x i32> %107, splat (i32 42)
  %109 = uitofp nneg <2 x i32> %108 to <2 x double>
  %110 = fdiv <2 x double> %109, splat (double 1.900000e+02)
  %111 = getelementptr inbounds nuw i8, ptr %22, i64 224
  store <2 x double> %110, ptr %111, align 8
  %112 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %113 = add <2 x i32> %112, <i32 30, i32 31>
  %114 = urem <2 x i32> %113, splat (i32 42)
  %115 = uitofp nneg <2 x i32> %114 to <2 x double>
  %116 = fdiv <2 x double> %115, splat (double 1.900000e+02)
  %117 = getelementptr inbounds nuw i8, ptr %22, i64 240
  store <2 x double> %116, ptr %117, align 8
  %118 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %119 = add <2 x i32> %118, <i32 32, i32 33>
  %120 = urem <2 x i32> %119, splat (i32 42)
  %121 = uitofp nneg <2 x i32> %120 to <2 x double>
  %122 = fdiv <2 x double> %121, splat (double 1.900000e+02)
  %123 = getelementptr inbounds nuw i8, ptr %22, i64 256
  store <2 x double> %122, ptr %123, align 8
  %124 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %125 = add <2 x i32> %124, <i32 34, i32 35>
  %126 = urem <2 x i32> %125, splat (i32 42)
  %127 = uitofp nneg <2 x i32> %126 to <2 x double>
  %128 = fdiv <2 x double> %127, splat (double 1.900000e+02)
  %129 = getelementptr inbounds nuw i8, ptr %22, i64 272
  store <2 x double> %128, ptr %129, align 8
  %130 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %131 = add <2 x i32> %130, <i32 36, i32 37>
  %132 = urem <2 x i32> %131, splat (i32 42)
  %133 = uitofp nneg <2 x i32> %132 to <2 x double>
  %134 = fdiv <2 x double> %133, splat (double 1.900000e+02)
  %135 = getelementptr inbounds nuw i8, ptr %22, i64 288
  store <2 x double> %134, ptr %135, align 8
  %136 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %137 = add <2 x i32> %136, <i32 38, i32 39>
  %138 = urem <2 x i32> %137, splat (i32 42)
  %139 = uitofp nneg <2 x i32> %138 to <2 x double>
  %140 = fdiv <2 x double> %139, splat (double 1.900000e+02)
  %141 = getelementptr inbounds nuw i8, ptr %22, i64 304
  store <2 x double> %140, ptr %141, align 8
  %142 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %143 = add <2 x i32> %142, <i32 40, i32 41>
  %144 = urem <2 x i32> %143, splat (i32 42)
  %145 = uitofp nneg <2 x i32> %144 to <2 x double>
  %146 = fdiv <2 x double> %145, splat (double 1.900000e+02)
  %147 = getelementptr inbounds nuw i8, ptr %22, i64 320
  store <2 x double> %146, ptr %147, align 8
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  %exitcond32.not = icmp eq i64 %indvars.iv.next30, 38
  br i1 %exitcond32.not, label %148, label %.preheader, !llvm.loop !7

148:                                              ; preds = %.preheader
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @kernel_atax(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) initializes((0, 336)) %2, ptr nofree noundef captures(none) %3) unnamed_addr #3 {
.preheader31.preheader:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(336) %2, i8 0, i64 336, i1 false)
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 80
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %15 = getelementptr inbounds nuw i8, ptr %1, i64 96
  %16 = getelementptr inbounds nuw i8, ptr %1, i64 104
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 112
  %18 = getelementptr inbounds nuw i8, ptr %1, i64 120
  %19 = getelementptr inbounds nuw i8, ptr %1, i64 128
  %20 = getelementptr inbounds nuw i8, ptr %1, i64 136
  %21 = getelementptr inbounds nuw i8, ptr %1, i64 144
  %22 = getelementptr inbounds nuw i8, ptr %1, i64 152
  %23 = getelementptr inbounds nuw i8, ptr %1, i64 160
  %24 = getelementptr inbounds nuw i8, ptr %1, i64 168
  %25 = getelementptr inbounds nuw i8, ptr %1, i64 176
  %26 = getelementptr inbounds nuw i8, ptr %1, i64 184
  %27 = getelementptr inbounds nuw i8, ptr %1, i64 192
  %28 = getelementptr inbounds nuw i8, ptr %1, i64 200
  %29 = getelementptr inbounds nuw i8, ptr %1, i64 208
  %30 = getelementptr inbounds nuw i8, ptr %1, i64 216
  %31 = getelementptr inbounds nuw i8, ptr %1, i64 224
  %32 = getelementptr inbounds nuw i8, ptr %1, i64 232
  %33 = getelementptr inbounds nuw i8, ptr %1, i64 240
  %34 = getelementptr inbounds nuw i8, ptr %1, i64 248
  %35 = getelementptr inbounds nuw i8, ptr %1, i64 256
  %36 = getelementptr inbounds nuw i8, ptr %1, i64 264
  %37 = getelementptr inbounds nuw i8, ptr %1, i64 272
  %38 = getelementptr inbounds nuw i8, ptr %1, i64 280
  %39 = getelementptr inbounds nuw i8, ptr %1, i64 288
  %40 = getelementptr inbounds nuw i8, ptr %1, i64 296
  %41 = getelementptr inbounds nuw i8, ptr %1, i64 304
  %42 = getelementptr inbounds nuw i8, ptr %1, i64 312
  %43 = getelementptr inbounds nuw i8, ptr %1, i64 320
  %44 = getelementptr inbounds nuw i8, ptr %1, i64 328
  %45 = insertelement <2 x ptr> poison, ptr %0, i64 0
  %46 = insertelement <2 x ptr> %45, ptr %3, i64 1
  %47 = getelementptr i8, <2 x ptr> %46, <2 x i64> <i64 12768, i64 304>
  %scevgep7 = getelementptr i8, ptr %2, i64 336
  %48 = insertelement <2 x ptr> poison, ptr %2, i64 0
  %49 = shufflevector <2 x ptr> %48, <2 x ptr> poison, <2 x i32> zeroinitializer
  %50 = insertelement <2 x ptr> poison, ptr %scevgep7, i64 0
  %51 = shufflevector <2 x ptr> %50, <2 x ptr> poison, <2 x i32> zeroinitializer
  %52 = icmp ult <2 x ptr> %49, %47
  %53 = icmp ult <2 x ptr> %46, %51
  %54 = and <2 x i1> %52, %53
  %55 = bitcast <2 x i1> %54 to i2
  %.not = icmp eq i2 %55, 0
  %56 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %57 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %58 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %59 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %60 = getelementptr inbounds nuw i8, ptr %2, i64 80
  %61 = getelementptr inbounds nuw i8, ptr %2, i64 96
  %62 = getelementptr inbounds nuw i8, ptr %2, i64 112
  %63 = getelementptr inbounds nuw i8, ptr %2, i64 128
  %64 = getelementptr inbounds nuw i8, ptr %2, i64 144
  %65 = getelementptr inbounds nuw i8, ptr %2, i64 160
  %66 = getelementptr inbounds nuw i8, ptr %2, i64 176
  %67 = getelementptr inbounds nuw i8, ptr %2, i64 192
  %68 = getelementptr inbounds nuw i8, ptr %2, i64 208
  %69 = getelementptr inbounds nuw i8, ptr %2, i64 224
  %70 = getelementptr inbounds nuw i8, ptr %2, i64 240
  %71 = getelementptr inbounds nuw i8, ptr %2, i64 256
  %72 = getelementptr inbounds nuw i8, ptr %2, i64 272
  %73 = getelementptr inbounds nuw i8, ptr %2, i64 288
  %74 = getelementptr inbounds nuw i8, ptr %2, i64 304
  br label %.preheader31

.preheader31:                                     ; preds = %.preheader31.preheader, %296
  %indvars.iv39 = phi i64 [ 0, %.preheader31.preheader ], [ %indvars.iv.next40, %296 ]
  %75 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv39
  store double 0.000000e+00, ptr %75, align 8
  %76 = getelementptr inbounds nuw [336 x i8], ptr %0, i64 %indvars.iv39
  %77 = load double, ptr %76, align 8
  %78 = load double, ptr %1, align 8
  %79 = tail call double @llvm.fmuladd.f64(double %77, double %78, double 0.000000e+00)
  store double %79, ptr %75, align 8
  %80 = getelementptr inbounds nuw i8, ptr %76, i64 8
  %81 = load double, ptr %80, align 8
  %82 = load double, ptr %4, align 8
  %83 = tail call double @llvm.fmuladd.f64(double %81, double %82, double %79)
  store double %83, ptr %75, align 8
  %84 = getelementptr inbounds nuw i8, ptr %76, i64 16
  %85 = load double, ptr %84, align 8
  %86 = load double, ptr %5, align 8
  %87 = tail call double @llvm.fmuladd.f64(double %85, double %86, double %83)
  store double %87, ptr %75, align 8
  %88 = getelementptr inbounds nuw i8, ptr %76, i64 24
  %89 = load double, ptr %88, align 8
  %90 = load double, ptr %6, align 8
  %91 = tail call double @llvm.fmuladd.f64(double %89, double %90, double %87)
  store double %91, ptr %75, align 8
  %92 = getelementptr inbounds nuw i8, ptr %76, i64 32
  %93 = load double, ptr %92, align 8
  %94 = load double, ptr %7, align 8
  %95 = tail call double @llvm.fmuladd.f64(double %93, double %94, double %91)
  store double %95, ptr %75, align 8
  %96 = getelementptr inbounds nuw i8, ptr %76, i64 40
  %97 = load double, ptr %96, align 8
  %98 = load double, ptr %8, align 8
  %99 = tail call double @llvm.fmuladd.f64(double %97, double %98, double %95)
  store double %99, ptr %75, align 8
  %100 = getelementptr inbounds nuw i8, ptr %76, i64 48
  %101 = load double, ptr %100, align 8
  %102 = load double, ptr %9, align 8
  %103 = tail call double @llvm.fmuladd.f64(double %101, double %102, double %99)
  store double %103, ptr %75, align 8
  %104 = getelementptr inbounds nuw i8, ptr %76, i64 56
  %105 = load double, ptr %104, align 8
  %106 = load double, ptr %10, align 8
  %107 = tail call double @llvm.fmuladd.f64(double %105, double %106, double %103)
  store double %107, ptr %75, align 8
  %108 = getelementptr inbounds nuw i8, ptr %76, i64 64
  %109 = load double, ptr %108, align 8
  %110 = load double, ptr %11, align 8
  %111 = tail call double @llvm.fmuladd.f64(double %109, double %110, double %107)
  store double %111, ptr %75, align 8
  %112 = getelementptr inbounds nuw i8, ptr %76, i64 72
  %113 = load double, ptr %112, align 8
  %114 = load double, ptr %12, align 8
  %115 = tail call double @llvm.fmuladd.f64(double %113, double %114, double %111)
  store double %115, ptr %75, align 8
  %116 = getelementptr inbounds nuw i8, ptr %76, i64 80
  %117 = load double, ptr %116, align 8
  %118 = load double, ptr %13, align 8
  %119 = tail call double @llvm.fmuladd.f64(double %117, double %118, double %115)
  store double %119, ptr %75, align 8
  %120 = getelementptr inbounds nuw i8, ptr %76, i64 88
  %121 = load double, ptr %120, align 8
  %122 = load double, ptr %14, align 8
  %123 = tail call double @llvm.fmuladd.f64(double %121, double %122, double %119)
  store double %123, ptr %75, align 8
  %124 = getelementptr inbounds nuw i8, ptr %76, i64 96
  %125 = load double, ptr %124, align 8
  %126 = load double, ptr %15, align 8
  %127 = tail call double @llvm.fmuladd.f64(double %125, double %126, double %123)
  store double %127, ptr %75, align 8
  %128 = getelementptr inbounds nuw i8, ptr %76, i64 104
  %129 = load double, ptr %128, align 8
  %130 = load double, ptr %16, align 8
  %131 = tail call double @llvm.fmuladd.f64(double %129, double %130, double %127)
  store double %131, ptr %75, align 8
  %132 = getelementptr inbounds nuw i8, ptr %76, i64 112
  %133 = load double, ptr %132, align 8
  %134 = load double, ptr %17, align 8
  %135 = tail call double @llvm.fmuladd.f64(double %133, double %134, double %131)
  store double %135, ptr %75, align 8
  %136 = getelementptr inbounds nuw i8, ptr %76, i64 120
  %137 = load double, ptr %136, align 8
  %138 = load double, ptr %18, align 8
  %139 = tail call double @llvm.fmuladd.f64(double %137, double %138, double %135)
  store double %139, ptr %75, align 8
  %140 = getelementptr inbounds nuw i8, ptr %76, i64 128
  %141 = load double, ptr %140, align 8
  %142 = load double, ptr %19, align 8
  %143 = tail call double @llvm.fmuladd.f64(double %141, double %142, double %139)
  store double %143, ptr %75, align 8
  %144 = getelementptr inbounds nuw i8, ptr %76, i64 136
  %145 = load double, ptr %144, align 8
  %146 = load double, ptr %20, align 8
  %147 = tail call double @llvm.fmuladd.f64(double %145, double %146, double %143)
  store double %147, ptr %75, align 8
  %148 = getelementptr inbounds nuw i8, ptr %76, i64 144
  %149 = load double, ptr %148, align 8
  %150 = load double, ptr %21, align 8
  %151 = tail call double @llvm.fmuladd.f64(double %149, double %150, double %147)
  store double %151, ptr %75, align 8
  %152 = getelementptr inbounds nuw i8, ptr %76, i64 152
  %153 = load double, ptr %152, align 8
  %154 = load double, ptr %22, align 8
  %155 = tail call double @llvm.fmuladd.f64(double %153, double %154, double %151)
  store double %155, ptr %75, align 8
  %156 = getelementptr inbounds nuw i8, ptr %76, i64 160
  %157 = load double, ptr %156, align 8
  %158 = load double, ptr %23, align 8
  %159 = tail call double @llvm.fmuladd.f64(double %157, double %158, double %155)
  store double %159, ptr %75, align 8
  %160 = getelementptr inbounds nuw i8, ptr %76, i64 168
  %161 = load double, ptr %160, align 8
  %162 = load double, ptr %24, align 8
  %163 = tail call double @llvm.fmuladd.f64(double %161, double %162, double %159)
  store double %163, ptr %75, align 8
  %164 = getelementptr inbounds nuw i8, ptr %76, i64 176
  %165 = load double, ptr %164, align 8
  %166 = load double, ptr %25, align 8
  %167 = tail call double @llvm.fmuladd.f64(double %165, double %166, double %163)
  store double %167, ptr %75, align 8
  %168 = getelementptr inbounds nuw i8, ptr %76, i64 184
  %169 = load double, ptr %168, align 8
  %170 = load double, ptr %26, align 8
  %171 = tail call double @llvm.fmuladd.f64(double %169, double %170, double %167)
  store double %171, ptr %75, align 8
  %172 = getelementptr inbounds nuw i8, ptr %76, i64 192
  %173 = load double, ptr %172, align 8
  %174 = load double, ptr %27, align 8
  %175 = tail call double @llvm.fmuladd.f64(double %173, double %174, double %171)
  store double %175, ptr %75, align 8
  %176 = getelementptr inbounds nuw i8, ptr %76, i64 200
  %177 = load double, ptr %176, align 8
  %178 = load double, ptr %28, align 8
  %179 = tail call double @llvm.fmuladd.f64(double %177, double %178, double %175)
  store double %179, ptr %75, align 8
  %180 = getelementptr inbounds nuw i8, ptr %76, i64 208
  %181 = load double, ptr %180, align 8
  %182 = load double, ptr %29, align 8
  %183 = tail call double @llvm.fmuladd.f64(double %181, double %182, double %179)
  store double %183, ptr %75, align 8
  %184 = getelementptr inbounds nuw i8, ptr %76, i64 216
  %185 = load double, ptr %184, align 8
  %186 = load double, ptr %30, align 8
  %187 = tail call double @llvm.fmuladd.f64(double %185, double %186, double %183)
  store double %187, ptr %75, align 8
  %188 = getelementptr inbounds nuw i8, ptr %76, i64 224
  %189 = load double, ptr %188, align 8
  %190 = load double, ptr %31, align 8
  %191 = tail call double @llvm.fmuladd.f64(double %189, double %190, double %187)
  store double %191, ptr %75, align 8
  %192 = getelementptr inbounds nuw i8, ptr %76, i64 232
  %193 = load double, ptr %192, align 8
  %194 = load double, ptr %32, align 8
  %195 = tail call double @llvm.fmuladd.f64(double %193, double %194, double %191)
  store double %195, ptr %75, align 8
  %196 = getelementptr inbounds nuw i8, ptr %76, i64 240
  %197 = load double, ptr %196, align 8
  %198 = load double, ptr %33, align 8
  %199 = tail call double @llvm.fmuladd.f64(double %197, double %198, double %195)
  store double %199, ptr %75, align 8
  %200 = getelementptr inbounds nuw i8, ptr %76, i64 248
  %201 = load double, ptr %200, align 8
  %202 = load double, ptr %34, align 8
  %203 = tail call double @llvm.fmuladd.f64(double %201, double %202, double %199)
  store double %203, ptr %75, align 8
  %204 = getelementptr inbounds nuw i8, ptr %76, i64 256
  %205 = load double, ptr %204, align 8
  %206 = load double, ptr %35, align 8
  %207 = tail call double @llvm.fmuladd.f64(double %205, double %206, double %203)
  store double %207, ptr %75, align 8
  %208 = getelementptr inbounds nuw i8, ptr %76, i64 264
  %209 = load double, ptr %208, align 8
  %210 = load double, ptr %36, align 8
  %211 = tail call double @llvm.fmuladd.f64(double %209, double %210, double %207)
  store double %211, ptr %75, align 8
  %212 = getelementptr inbounds nuw i8, ptr %76, i64 272
  %213 = load double, ptr %212, align 8
  %214 = load double, ptr %37, align 8
  %215 = tail call double @llvm.fmuladd.f64(double %213, double %214, double %211)
  store double %215, ptr %75, align 8
  %216 = getelementptr inbounds nuw i8, ptr %76, i64 280
  %217 = load double, ptr %216, align 8
  %218 = load double, ptr %38, align 8
  %219 = tail call double @llvm.fmuladd.f64(double %217, double %218, double %215)
  store double %219, ptr %75, align 8
  %220 = getelementptr inbounds nuw i8, ptr %76, i64 288
  %221 = load double, ptr %220, align 8
  %222 = load double, ptr %39, align 8
  %223 = tail call double @llvm.fmuladd.f64(double %221, double %222, double %219)
  store double %223, ptr %75, align 8
  %224 = getelementptr inbounds nuw i8, ptr %76, i64 296
  %225 = load double, ptr %224, align 8
  %226 = load double, ptr %40, align 8
  %227 = tail call double @llvm.fmuladd.f64(double %225, double %226, double %223)
  store double %227, ptr %75, align 8
  %228 = getelementptr inbounds nuw i8, ptr %76, i64 304
  %229 = load double, ptr %228, align 8
  %230 = load double, ptr %41, align 8
  %231 = tail call double @llvm.fmuladd.f64(double %229, double %230, double %227)
  store double %231, ptr %75, align 8
  %232 = getelementptr inbounds nuw i8, ptr %76, i64 312
  %233 = load double, ptr %232, align 8
  %234 = load double, ptr %42, align 8
  %235 = tail call double @llvm.fmuladd.f64(double %233, double %234, double %231)
  store double %235, ptr %75, align 8
  %236 = getelementptr inbounds nuw i8, ptr %76, i64 320
  %237 = load double, ptr %236, align 8
  %238 = load double, ptr %43, align 8
  %239 = tail call double @llvm.fmuladd.f64(double %237, double %238, double %235)
  store double %239, ptr %75, align 8
  %240 = getelementptr inbounds nuw i8, ptr %76, i64 328
  %241 = load double, ptr %240, align 8
  %242 = load double, ptr %44, align 8
  %243 = tail call double @llvm.fmuladd.f64(double %241, double %242, double %239)
  store double %243, ptr %75, align 8
  br i1 %.not, label %vector.body, label %scalar.ph.preheader

vector.body:                                      ; preds = %.preheader31
  %244 = load double, ptr %75, align 8, !alias.scope !9
  %broadcast.splatinsert = insertelement <2 x double> poison, double %244, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %wide.load = load <2 x double>, ptr %2, align 8, !alias.scope !12, !noalias !14
  %wide.load11 = load <2 x double>, ptr %56, align 8, !alias.scope !12, !noalias !14
  %245 = getelementptr inbounds nuw i8, ptr %76, i64 16
  %wide.load12 = load <2 x double>, ptr %76, align 8, !alias.scope !16
  %wide.load13 = load <2 x double>, ptr %245, align 8, !alias.scope !16
  %246 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load12, <2 x double> %broadcast.splat, <2 x double> %wide.load)
  %247 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load13, <2 x double> %broadcast.splat, <2 x double> %wide.load11)
  store <2 x double> %246, ptr %2, align 8, !alias.scope !12, !noalias !14
  store <2 x double> %247, ptr %56, align 8, !alias.scope !12, !noalias !14
  %wide.load.1 = load <2 x double>, ptr %57, align 8, !alias.scope !12, !noalias !14
  %wide.load11.1 = load <2 x double>, ptr %58, align 8, !alias.scope !12, !noalias !14
  %248 = getelementptr inbounds nuw i8, ptr %76, i64 32
  %249 = getelementptr inbounds nuw i8, ptr %76, i64 48
  %wide.load12.1 = load <2 x double>, ptr %248, align 8, !alias.scope !16
  %wide.load13.1 = load <2 x double>, ptr %249, align 8, !alias.scope !16
  %250 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load12.1, <2 x double> %broadcast.splat, <2 x double> %wide.load.1)
  %251 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load13.1, <2 x double> %broadcast.splat, <2 x double> %wide.load11.1)
  store <2 x double> %250, ptr %57, align 8, !alias.scope !12, !noalias !14
  store <2 x double> %251, ptr %58, align 8, !alias.scope !12, !noalias !14
  %wide.load.2 = load <2 x double>, ptr %59, align 8, !alias.scope !12, !noalias !14
  %wide.load11.2 = load <2 x double>, ptr %60, align 8, !alias.scope !12, !noalias !14
  %252 = getelementptr inbounds nuw i8, ptr %76, i64 64
  %253 = getelementptr inbounds nuw i8, ptr %76, i64 80
  %wide.load12.2 = load <2 x double>, ptr %252, align 8, !alias.scope !16
  %wide.load13.2 = load <2 x double>, ptr %253, align 8, !alias.scope !16
  %254 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load12.2, <2 x double> %broadcast.splat, <2 x double> %wide.load.2)
  %255 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load13.2, <2 x double> %broadcast.splat, <2 x double> %wide.load11.2)
  store <2 x double> %254, ptr %59, align 8, !alias.scope !12, !noalias !14
  store <2 x double> %255, ptr %60, align 8, !alias.scope !12, !noalias !14
  %wide.load.3 = load <2 x double>, ptr %61, align 8, !alias.scope !12, !noalias !14
  %wide.load11.3 = load <2 x double>, ptr %62, align 8, !alias.scope !12, !noalias !14
  %256 = getelementptr inbounds nuw i8, ptr %76, i64 96
  %257 = getelementptr inbounds nuw i8, ptr %76, i64 112
  %wide.load12.3 = load <2 x double>, ptr %256, align 8, !alias.scope !16
  %wide.load13.3 = load <2 x double>, ptr %257, align 8, !alias.scope !16
  %258 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load12.3, <2 x double> %broadcast.splat, <2 x double> %wide.load.3)
  %259 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load13.3, <2 x double> %broadcast.splat, <2 x double> %wide.load11.3)
  store <2 x double> %258, ptr %61, align 8, !alias.scope !12, !noalias !14
  store <2 x double> %259, ptr %62, align 8, !alias.scope !12, !noalias !14
  %wide.load.4 = load <2 x double>, ptr %63, align 8, !alias.scope !12, !noalias !14
  %wide.load11.4 = load <2 x double>, ptr %64, align 8, !alias.scope !12, !noalias !14
  %260 = getelementptr inbounds nuw i8, ptr %76, i64 128
  %261 = getelementptr inbounds nuw i8, ptr %76, i64 144
  %wide.load12.4 = load <2 x double>, ptr %260, align 8, !alias.scope !16
  %wide.load13.4 = load <2 x double>, ptr %261, align 8, !alias.scope !16
  %262 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load12.4, <2 x double> %broadcast.splat, <2 x double> %wide.load.4)
  %263 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load13.4, <2 x double> %broadcast.splat, <2 x double> %wide.load11.4)
  store <2 x double> %262, ptr %63, align 8, !alias.scope !12, !noalias !14
  store <2 x double> %263, ptr %64, align 8, !alias.scope !12, !noalias !14
  %wide.load.5 = load <2 x double>, ptr %65, align 8, !alias.scope !12, !noalias !14
  %wide.load11.5 = load <2 x double>, ptr %66, align 8, !alias.scope !12, !noalias !14
  %264 = getelementptr inbounds nuw i8, ptr %76, i64 160
  %265 = getelementptr inbounds nuw i8, ptr %76, i64 176
  %wide.load12.5 = load <2 x double>, ptr %264, align 8, !alias.scope !16
  %wide.load13.5 = load <2 x double>, ptr %265, align 8, !alias.scope !16
  %266 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load12.5, <2 x double> %broadcast.splat, <2 x double> %wide.load.5)
  %267 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load13.5, <2 x double> %broadcast.splat, <2 x double> %wide.load11.5)
  store <2 x double> %266, ptr %65, align 8, !alias.scope !12, !noalias !14
  store <2 x double> %267, ptr %66, align 8, !alias.scope !12, !noalias !14
  %wide.load.6 = load <2 x double>, ptr %67, align 8, !alias.scope !12, !noalias !14
  %wide.load11.6 = load <2 x double>, ptr %68, align 8, !alias.scope !12, !noalias !14
  %268 = getelementptr inbounds nuw i8, ptr %76, i64 192
  %269 = getelementptr inbounds nuw i8, ptr %76, i64 208
  %wide.load12.6 = load <2 x double>, ptr %268, align 8, !alias.scope !16
  %wide.load13.6 = load <2 x double>, ptr %269, align 8, !alias.scope !16
  %270 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load12.6, <2 x double> %broadcast.splat, <2 x double> %wide.load.6)
  %271 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load13.6, <2 x double> %broadcast.splat, <2 x double> %wide.load11.6)
  store <2 x double> %270, ptr %67, align 8, !alias.scope !12, !noalias !14
  store <2 x double> %271, ptr %68, align 8, !alias.scope !12, !noalias !14
  %wide.load.7 = load <2 x double>, ptr %69, align 8, !alias.scope !12, !noalias !14
  %wide.load11.7 = load <2 x double>, ptr %70, align 8, !alias.scope !12, !noalias !14
  %272 = getelementptr inbounds nuw i8, ptr %76, i64 224
  %273 = getelementptr inbounds nuw i8, ptr %76, i64 240
  %wide.load12.7 = load <2 x double>, ptr %272, align 8, !alias.scope !16
  %wide.load13.7 = load <2 x double>, ptr %273, align 8, !alias.scope !16
  %274 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load12.7, <2 x double> %broadcast.splat, <2 x double> %wide.load.7)
  %275 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load13.7, <2 x double> %broadcast.splat, <2 x double> %wide.load11.7)
  store <2 x double> %274, ptr %69, align 8, !alias.scope !12, !noalias !14
  store <2 x double> %275, ptr %70, align 8, !alias.scope !12, !noalias !14
  %wide.load.8 = load <2 x double>, ptr %71, align 8, !alias.scope !12, !noalias !14
  %wide.load11.8 = load <2 x double>, ptr %72, align 8, !alias.scope !12, !noalias !14
  %276 = getelementptr inbounds nuw i8, ptr %76, i64 256
  %277 = getelementptr inbounds nuw i8, ptr %76, i64 272
  %wide.load12.8 = load <2 x double>, ptr %276, align 8, !alias.scope !16
  %wide.load13.8 = load <2 x double>, ptr %277, align 8, !alias.scope !16
  %278 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load12.8, <2 x double> %broadcast.splat, <2 x double> %wide.load.8)
  %279 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load13.8, <2 x double> %broadcast.splat, <2 x double> %wide.load11.8)
  store <2 x double> %278, ptr %71, align 8, !alias.scope !12, !noalias !14
  store <2 x double> %279, ptr %72, align 8, !alias.scope !12, !noalias !14
  %wide.load.9 = load <2 x double>, ptr %73, align 8, !alias.scope !12, !noalias !14
  %wide.load11.9 = load <2 x double>, ptr %74, align 8, !alias.scope !12, !noalias !14
  %280 = getelementptr inbounds nuw i8, ptr %76, i64 288
  %281 = getelementptr inbounds nuw i8, ptr %76, i64 304
  %wide.load12.9 = load <2 x double>, ptr %280, align 8, !alias.scope !16
  %wide.load13.9 = load <2 x double>, ptr %281, align 8, !alias.scope !16
  %282 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load12.9, <2 x double> %broadcast.splat, <2 x double> %wide.load.9)
  %283 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load13.9, <2 x double> %broadcast.splat, <2 x double> %wide.load11.9)
  store <2 x double> %282, ptr %73, align 8, !alias.scope !12, !noalias !14
  store <2 x double> %283, ptr %74, align 8, !alias.scope !12, !noalias !14
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.body, %.preheader31
  %indvars.iv.ph = phi i64 [ 0, %.preheader31 ], [ 40, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader
  %indvars.iv = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.1, %scalar.ph ]
  %284 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %285 = load double, ptr %284, align 8
  %286 = getelementptr inbounds nuw [8 x i8], ptr %76, i64 %indvars.iv
  %287 = load double, ptr %286, align 8
  %288 = load double, ptr %75, align 8
  %289 = tail call double @llvm.fmuladd.f64(double %287, double %288, double %285)
  store double %289, ptr %284, align 8
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %290 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  %291 = load double, ptr %290, align 8
  %292 = getelementptr inbounds nuw [8 x i8], ptr %76, i64 %indvars.iv.next
  %293 = load double, ptr %292, align 8
  %294 = load double, ptr %75, align 8
  %295 = tail call double @llvm.fmuladd.f64(double %293, double %294, double %291)
  store double %295, ptr %290, align 8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 42
  br i1 %exitcond.not.1, label %296, label %scalar.ph, !llvm.loop !17

296:                                              ; preds = %scalar.ph
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1
  %exitcond42.not = icmp eq i64 %indvars.iv.next40, 38
  br i1 %exitcond42.not, label %297, label %.preheader31, !llvm.loop !20

297:                                              ; preds = %296
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @print_array(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
  %2 = tail call ptr @__acrt_iob_func(i32 noundef 2) #10
  %fwrite = tail call i64 @fwrite(ptr nonnull @"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@", i64 22, i64 1, ptr %2)
  %3 = tail call ptr @__acrt_iob_func(i32 noundef 2) #10
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@", ptr noundef nonnull @"??_C@_01EANLCPLP@y?$AA@") #10
  br label %5

5:                                                ; preds = %1, %10
  %indvars.iv = phi i64 [ 0, %1 ], [ %indvars.iv.next, %10 ]
  %.lhs.trunc = trunc i64 %indvars.iv to i8
  %6 = urem i8 %.lhs.trunc, 20
  %7 = icmp eq i8 %6, 0
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
  %exitcond.not = icmp eq i64 %indvars.iv.next, 42
  br i1 %exitcond.not, label %15, label %5, !llvm.loop !21

15:                                               ; preds = %10
  %16 = tail call ptr @__acrt_iob_func(i32 noundef 2) #10
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef nonnull @"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@", ptr noundef nonnull @"??_C@_01EANLCPLP@y?$AA@") #10
  %18 = tail call ptr @__acrt_iob_func(i32 noundef 2) #10
  %fwrite5 = tail call i64 @fwrite(ptr nonnull @"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@", i64 22, i64 1, ptr %18)
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
  %7 = tail call i32 @__stdio_common_vfprintf(i64 noundef %6, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #10
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

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #6 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree nounwind }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 24.0.0git (https://github.com/llvm/llvm-project.git 6f4196219399a3502cea3beb2d0c8c28b2241649)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\linear-algebra\\kernels\\atax\\atax.c", directory: "C:\\work\\llvm-profitability-research")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"MaxTLSAlign", i32 65536}
!6 = !{!"clang version 24.0.0git (https://github.com/llvm/llvm-project.git 6f4196219399a3502cea3beb2d0c8c28b2241649)"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!10}
!10 = distinct !{!10, !11}
!11 = distinct !{!11, i1 false, !"LVerDomain"}
!12 = !{!13}
!13 = distinct !{!13, !11}
!14 = !{!15, !10}
!15 = distinct !{!15, !11}
!16 = !{!15}
!17 = distinct !{!17, !8, !18, !19}
!18 = !{!"llvm.loop.isvectorized", i32 1}
!19 = !{!"llvm.loop.vectorize.epilogue", i32 1}
!20 = distinct !{!20, !8}
!21 = distinct !{!21, !8}
