; ModuleID = 'C:\work\llvm-profitability-research\results\r1\EXP-20261107-R12-discovery\polybench\3mm\frontend.ll'
source_filename = "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\linear-algebra\\kernels\\3mm\\3mm.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc19.51.36260"

$__local_stdio_printf_options = comdat any

$fprintf = comdat any

$_vfprintf_l = comdat any

$"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = comdat any

$"??_C@_01BBODEMC@G?$AA@" = comdat any

$"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@" = comdat any

$"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@" = comdat any

$"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@" = comdat any

$"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = comdat any

@__local_stdio_printf_options._OptionsStorage = internal global i64 0, align 8
@"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", comdat, align 8
@"??_C@_01BBODEMC@G?$AA@" = linkonce_odr dso_local unnamed_addr constant [2 x i8] c"G\00", comdat, align 4
@"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"begin dump: %s\00", comdat, align 8
@"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [8 x i8] c"%0.2lf \00", comdat, align 8
@"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", comdat, align 8
@"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", comdat, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 288, i32 noundef 8) #9
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 320, i32 noundef 8) #9
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 360, i32 noundef 8) #9
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 396, i32 noundef 8) #9
  %7 = tail call ptr @polybench_alloc_data(i64 noundef 432, i32 noundef 8) #9
  %8 = tail call ptr @polybench_alloc_data(i64 noundef 528, i32 noundef 8) #9
  %9 = tail call ptr @polybench_alloc_data(i64 noundef 352, i32 noundef 8) #9
  tail call fastcc void @init_array(ptr noundef %4, ptr noundef %5, ptr noundef %7, ptr noundef %8)
  tail call fastcc void @kernel_3mm(ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9)
  %10 = icmp sgt i32 %0, 42
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load ptr, ptr %1, align 8
  %strcmpload = load i8, ptr %12, align 1
  %.not = icmp eq i8 %strcmpload, 0
  br i1 %.not, label %13, label %14

13:                                               ; preds = %11
  tail call fastcc void @print_array(ptr noundef %9)
  br label %14

14:                                               ; preds = %13, %11, %2
  tail call void @free(ptr noundef %3)
  tail call void @free(ptr noundef %4)
  tail call void @free(ptr noundef %5)
  tail call void @free(ptr noundef %6)
  tail call void @free(ptr noundef %7)
  tail call void @free(ptr noundef %8)
  tail call void @free(ptr noundef %9)
  ret i32 0
}

declare dso_local ptr @polybench_alloc_data(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: write) uwtable
define internal fastcc void @init_array(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) unnamed_addr #2 {
  br label %.preheader63

.preheader63:                                     ; preds = %4, %.preheader63
  %indvars.iv = phi i64 [ 0, %4 ], [ %6, %.preheader63 ]
  %5 = getelementptr inbounds nuw [160 x i8], ptr %0, i64 %indvars.iv
  store double 1.250000e-02, ptr %5, align 8
  %6 = add nuw nsw i64 %indvars.iv, 1
  %7 = trunc nuw nsw i64 %6 to i32
  %8 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %9 = shl i32 %indvars.iv.tr, 1
  %10 = and i32 %7, 15
  %11 = uitofp nneg i32 %10 to double
  %12 = and i32 %9, 14
  %13 = or disjoint i32 %12, 1
  %14 = uitofp nneg i32 %13 to double
  %15 = insertelement <2 x double> poison, double %11, i64 0
  %16 = insertelement <2 x double> %15, double %14, i64 1
  %17 = fdiv <2 x double> %16, splat (double 8.000000e+01)
  store <2 x double> %17, ptr %8, align 8
  %18 = trunc i64 %indvars.iv to i32
  %19 = mul i32 %18, 3
  %20 = getelementptr inbounds nuw i8, ptr %5, i64 24
  %indvars.iv.tr98 = trunc i64 %indvars.iv to i32
  %21 = add i32 %19, 1
  %22 = and i32 %21, 15
  %23 = uitofp nneg i32 %22 to double
  %24 = shl i32 %indvars.iv.tr98, 2
  %25 = and i32 %24, 12
  %26 = or disjoint i32 %25, 1
  %27 = uitofp nneg i32 %26 to double
  %28 = insertelement <2 x double> poison, double %23, i64 0
  %29 = insertelement <2 x double> %28, double %27, i64 1
  %30 = fdiv <2 x double> %29, splat (double 8.000000e+01)
  store <2 x double> %30, ptr %20, align 8
  %31 = trunc i64 %indvars.iv to i32
  %32 = getelementptr inbounds nuw i8, ptr %5, i64 40
  %33 = trunc i64 %indvars.iv to i32
  %34 = mul i32 %31, 5
  %35 = add i32 %34, 1
  %36 = and i32 %35, 15
  %37 = uitofp nneg i32 %36 to double
  %38 = mul i32 %33, 6
  %39 = and i32 %38, 14
  %40 = or disjoint i32 %39, 1
  %41 = uitofp nneg i32 %40 to double
  %42 = insertelement <2 x double> poison, double %37, i64 0
  %43 = insertelement <2 x double> %42, double %41, i64 1
  %44 = fdiv <2 x double> %43, splat (double 8.000000e+01)
  store <2 x double> %44, ptr %32, align 8
  %45 = trunc i64 %indvars.iv to i32
  %46 = mul i32 %45, 7
  %47 = getelementptr inbounds nuw i8, ptr %5, i64 56
  %indvars.iv.tr99 = trunc i64 %indvars.iv to i32
  %48 = add i32 %46, 1
  %49 = and i32 %48, 15
  %50 = uitofp nneg i32 %49 to double
  %51 = shl i32 %indvars.iv.tr99, 3
  %52 = and i32 %51, 8
  %53 = or disjoint i32 %52, 1
  %54 = uitofp nneg i32 %53 to double
  %55 = insertelement <2 x double> poison, double %50, i64 0
  %56 = insertelement <2 x double> %55, double %54, i64 1
  %57 = fdiv <2 x double> %56, splat (double 8.000000e+01)
  store <2 x double> %57, ptr %47, align 8
  %58 = trunc i64 %indvars.iv to i32
  %59 = getelementptr inbounds nuw i8, ptr %5, i64 72
  %60 = trunc i64 %indvars.iv to i32
  %61 = mul i32 %58, 9
  %62 = add i32 %61, 1
  %63 = and i32 %62, 15
  %64 = uitofp nneg i32 %63 to double
  %65 = mul i32 %60, 10
  %66 = and i32 %65, 14
  %67 = or disjoint i32 %66, 1
  %68 = uitofp nneg i32 %67 to double
  %69 = insertelement <2 x double> poison, double %64, i64 0
  %70 = insertelement <2 x double> %69, double %68, i64 1
  %71 = fdiv <2 x double> %70, splat (double 8.000000e+01)
  store <2 x double> %71, ptr %59, align 8
  %72 = trunc i64 %indvars.iv to i32
  %73 = getelementptr inbounds nuw i8, ptr %5, i64 88
  %74 = trunc i64 %indvars.iv to i32
  %75 = mul i32 %72, 11
  %76 = add i32 %75, 1
  %77 = and i32 %76, 15
  %78 = uitofp nneg i32 %77 to double
  %79 = mul i32 %74, 12
  %80 = and i32 %79, 12
  %81 = or disjoint i32 %80, 1
  %82 = uitofp nneg i32 %81 to double
  %83 = insertelement <2 x double> poison, double %78, i64 0
  %84 = insertelement <2 x double> %83, double %82, i64 1
  %85 = fdiv <2 x double> %84, splat (double 8.000000e+01)
  store <2 x double> %85, ptr %73, align 8
  %86 = trunc i64 %indvars.iv to i32
  %87 = getelementptr inbounds nuw i8, ptr %5, i64 104
  %88 = trunc i64 %indvars.iv to i32
  %89 = mul i32 %86, 13
  %90 = add i32 %89, 1
  %91 = and i32 %90, 15
  %92 = uitofp nneg i32 %91 to double
  %93 = mul i32 %88, 14
  %94 = and i32 %93, 14
  %95 = or disjoint i32 %94, 1
  %96 = uitofp nneg i32 %95 to double
  %97 = insertelement <2 x double> poison, double %92, i64 0
  %98 = insertelement <2 x double> %97, double %96, i64 1
  %99 = fdiv <2 x double> %98, splat (double 8.000000e+01)
  store <2 x double> %99, ptr %87, align 8
  %100 = trunc i64 %indvars.iv to i32
  %101 = getelementptr inbounds nuw i8, ptr %5, i64 120
  %102 = getelementptr inbounds nuw i8, ptr %5, i64 128
  store double 1.250000e-02, ptr %102, align 8
  %103 = trunc i64 %indvars.iv to i32
  %104 = getelementptr inbounds nuw i8, ptr %5, i64 136
  %105 = trunc i64 %indvars.iv to i32
  %106 = add i32 %103, 1
  %107 = and i32 %106, 15
  %108 = uitofp nneg i32 %107 to double
  %109 = shl i32 %105, 1
  %110 = and i32 %109, 14
  %111 = or disjoint i32 %110, 1
  %112 = uitofp nneg i32 %111 to double
  %113 = insertelement <2 x double> poison, double %108, i64 0
  %114 = insertelement <2 x double> %113, double %112, i64 1
  %115 = fdiv <2 x double> %114, splat (double 8.000000e+01)
  store <2 x double> %115, ptr %104, align 8
  %116 = trunc i64 %indvars.iv to i32
  %117 = mul i32 %100, 15
  %118 = add i32 %117, 1
  %119 = and i32 %118, 15
  %120 = uitofp nneg i32 %119 to double
  %121 = mul i32 %116, 3
  %122 = add i32 %121, 1
  %123 = and i32 %122, 15
  %124 = uitofp nneg i32 %123 to double
  %125 = insertelement <2 x double> poison, double %120, i64 0
  %126 = insertelement <2 x double> %125, double %124, i64 1
  %127 = fdiv <2 x double> %126, splat (double 8.000000e+01)
  %128 = extractelement <2 x double> %127, i64 0
  store double %128, ptr %101, align 8
  %129 = getelementptr inbounds nuw i8, ptr %5, i64 152
  %130 = extractelement <2 x double> %127, i64 1
  store double %130, ptr %129, align 8
  %exitcond.not = icmp eq i64 %6, 16
  br i1 %exitcond.not, label %vector.body, label %.preheader63, !llvm.loop !7

vector.body:                                      ; preds = %.preheader63
  %131 = getelementptr inbounds nuw i8, ptr %1, i64 144
  store double f0x3F96C16C16C16C17, ptr %1, align 8
  %132 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store double f0x3F96C16C16C16C17, ptr %132, align 8
  store <2 x double> <double f0x3FA1111111111111, double f0x3FA6C16C16C16C17>, ptr %131, align 8
  %133 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %134 = getelementptr inbounds nuw i8, ptr %1, i64 160
  store double f0x3F96C16C16C16C17, ptr %133, align 8
  %135 = getelementptr inbounds nuw i8, ptr %1, i64 24
  store double f0x3F96C16C16C16C17, ptr %135, align 8
  store <2 x double> <double f0x3FAC71C71C71C71C, double f0x3FB1111111111111>, ptr %134, align 8
  %136 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %137 = getelementptr inbounds nuw i8, ptr %1, i64 176
  store double f0x3F96C16C16C16C17, ptr %136, align 8
  %138 = getelementptr inbounds nuw i8, ptr %1, i64 40
  store double f0x3F96C16C16C16C17, ptr %138, align 8
  store <2 x double> <double f0x3FB3E93E93E93E94, double f0x3FB6C16C16C16C17>, ptr %137, align 8
  %139 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %140 = getelementptr inbounds nuw i8, ptr %1, i64 192
  store double f0x3F96C16C16C16C17, ptr %139, align 8
  %141 = getelementptr inbounds nuw i8, ptr %1, i64 56
  store double f0x3F96C16C16C16C17, ptr %141, align 8
  store <2 x double> <double 1.000000e-01, double f0x3FBC71C71C71C71C>, ptr %140, align 8
  %142 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %143 = getelementptr inbounds nuw i8, ptr %1, i64 208
  store double f0x3F96C16C16C16C17, ptr %142, align 8
  %144 = getelementptr inbounds nuw i8, ptr %1, i64 72
  store double f0x3F96C16C16C16C17, ptr %144, align 8
  store <2 x double> <double f0x3FBF49F49F49F49F, double f0x3FC1111111111111>, ptr %143, align 8
  %145 = getelementptr inbounds nuw i8, ptr %1, i64 80
  %146 = getelementptr inbounds nuw i8, ptr %1, i64 224
  store double f0x3F96C16C16C16C17, ptr %145, align 8
  %147 = getelementptr inbounds nuw i8, ptr %1, i64 88
  store double f0x3F96C16C16C16C17, ptr %147, align 8
  store <2 x double> <double f0x3FC27D27D27D27D2, double f0x3FC3E93E93E93E94>, ptr %146, align 8
  %148 = getelementptr inbounds nuw i8, ptr %1, i64 96
  %149 = getelementptr inbounds nuw i8, ptr %1, i64 240
  store double f0x3F96C16C16C16C17, ptr %148, align 8
  %150 = getelementptr inbounds nuw i8, ptr %1, i64 104
  store double f0x3F96C16C16C16C17, ptr %150, align 8
  store <2 x double> <double f0x3FC5555555555555, double f0x3FC6C16C16C16C17>, ptr %149, align 8
  %151 = getelementptr inbounds nuw i8, ptr %1, i64 112
  %152 = getelementptr inbounds nuw i8, ptr %1, i64 256
  store double f0x3F96C16C16C16C17, ptr %151, align 8
  %153 = getelementptr inbounds nuw i8, ptr %1, i64 120
  store double f0x3F96C16C16C16C17, ptr %153, align 8
  store <2 x double> <double f0x3FC82D82D82D82D8, double 0.000000e+00>, ptr %152, align 8
  %154 = getelementptr inbounds nuw i8, ptr %1, i64 128
  %155 = getelementptr inbounds nuw i8, ptr %1, i64 272
  store <2 x double> splat (double f0x3F96C16C16C16C17), ptr %154, align 8
  store <2 x double> <double f0x3F86C16C16C16C17, double f0x3F96C16C16C16C17>, ptr %155, align 8
  %156 = getelementptr inbounds nuw i8, ptr %1, i64 288
  %157 = getelementptr inbounds nuw i8, ptr %1, i64 432
  store double f0x3FA6C16C16C16C17, ptr %156, align 8
  %158 = getelementptr inbounds nuw i8, ptr %1, i64 296
  store double f0x3FB1111111111111, ptr %158, align 8
  store <2 x double> <double f0x3FAC71C71C71C71C, double f0x3FB6C16C16C16C17>, ptr %157, align 8
  %159 = getelementptr inbounds nuw i8, ptr %1, i64 304
  %160 = getelementptr inbounds nuw i8, ptr %1, i64 448
  store double f0x3FB6C16C16C16C17, ptr %159, align 8
  %161 = getelementptr inbounds nuw i8, ptr %1, i64 312
  store double f0x3FBC71C71C71C71C, ptr %161, align 8
  store <2 x double> <double f0x3FBF49F49F49F49F, double f0x3FC3E93E93E93E94>, ptr %160, align 8
  %162 = getelementptr inbounds nuw i8, ptr %1, i64 320
  %163 = getelementptr inbounds nuw i8, ptr %1, i64 464
  store double f0x3FC1111111111111, ptr %162, align 8
  %164 = getelementptr inbounds nuw i8, ptr %1, i64 328
  store double f0x3FC3E93E93E93E94, ptr %164, align 8
  store <2 x double> <double f0x3FC82D82D82D82D8, double f0x3F96C16C16C16C17>, ptr %163, align 8
  %165 = getelementptr inbounds nuw i8, ptr %1, i64 336
  %166 = getelementptr inbounds nuw i8, ptr %1, i64 480
  store double f0x3FC6C16C16C16C17, ptr %165, align 8
  %167 = getelementptr inbounds nuw i8, ptr %1, i64 344
  store double 0.000000e+00, ptr %167, align 8
  store <2 x double> <double f0x3FAC71C71C71C71C, double f0x3FB6C16C16C16C17>, ptr %166, align 8
  %168 = getelementptr inbounds nuw i8, ptr %1, i64 352
  %169 = getelementptr inbounds nuw i8, ptr %1, i64 496
  store double f0x3F96C16C16C16C17, ptr %168, align 8
  %170 = getelementptr inbounds nuw i8, ptr %1, i64 360
  store double f0x3FA6C16C16C16C17, ptr %170, align 8
  store <2 x double> <double f0x3FBF49F49F49F49F, double f0x3FC3E93E93E93E94>, ptr %169, align 8
  %171 = getelementptr inbounds nuw i8, ptr %1, i64 368
  %172 = getelementptr inbounds nuw i8, ptr %1, i64 512
  store double f0x3FB1111111111111, ptr %171, align 8
  %173 = getelementptr inbounds nuw i8, ptr %1, i64 376
  store double f0x3FB6C16C16C16C17, ptr %173, align 8
  store <2 x double> <double f0x3FC82D82D82D82D8, double f0x3F96C16C16C16C17>, ptr %172, align 8
  %174 = getelementptr inbounds nuw i8, ptr %1, i64 384
  %175 = getelementptr inbounds nuw i8, ptr %1, i64 528
  store double f0x3FBC71C71C71C71C, ptr %174, align 8
  %176 = getelementptr inbounds nuw i8, ptr %1, i64 392
  store double f0x3FC1111111111111, ptr %176, align 8
  store <2 x double> <double f0x3FAC71C71C71C71C, double f0x3FB6C16C16C16C17>, ptr %175, align 8
  %177 = getelementptr inbounds nuw i8, ptr %1, i64 400
  %178 = getelementptr inbounds nuw i8, ptr %1, i64 544
  store double f0x3FC3E93E93E93E94, ptr %177, align 8
  %179 = getelementptr inbounds nuw i8, ptr %1, i64 408
  store double f0x3FC6C16C16C16C17, ptr %179, align 8
  store <2 x double> <double f0x3FBF49F49F49F49F, double f0x3FC3E93E93E93E94>, ptr %178, align 8
  %180 = getelementptr inbounds nuw i8, ptr %1, i64 416
  %181 = getelementptr inbounds nuw i8, ptr %1, i64 560
  store <2 x double> <double 0.000000e+00, double f0x3F96C16C16C16C17>, ptr %180, align 8
  store <2 x double> <double f0x3FC82D82D82D82D8, double f0x3F96C16C16C16C17>, ptr %181, align 8
  %182 = getelementptr inbounds nuw i8, ptr %1, i64 576
  %183 = getelementptr inbounds nuw i8, ptr %1, i64 720
  store double f0x3FB1111111111111, ptr %182, align 8
  %184 = getelementptr inbounds nuw i8, ptr %1, i64 584
  store double f0x3FBC71C71C71C71C, ptr %184, align 8
  store <2 x double> <double f0x3FB3E93E93E93E94, double f0x3FC1111111111111>, ptr %183, align 8
  %185 = getelementptr inbounds nuw i8, ptr %1, i64 592
  %186 = getelementptr inbounds nuw i8, ptr %1, i64 736
  store double f0x3FC3E93E93E93E94, ptr %185, align 8
  %187 = getelementptr inbounds nuw i8, ptr %1, i64 600
  store double 0.000000e+00, ptr %187, align 8
  store <2 x double> <double f0x3FC82D82D82D82D8, double f0x3FA6C16C16C16C17>, ptr %186, align 8
  %188 = getelementptr inbounds nuw i8, ptr %1, i64 608
  %189 = getelementptr inbounds nuw i8, ptr %1, i64 752
  store double f0x3FA6C16C16C16C17, ptr %188, align 8
  %190 = getelementptr inbounds nuw i8, ptr %1, i64 616
  store double f0x3FB6C16C16C16C17, ptr %190, align 8
  store <2 x double> <double 1.000000e-01, double f0x3FC3E93E93E93E94>, ptr %189, align 8
  %191 = getelementptr inbounds nuw i8, ptr %1, i64 624
  %192 = getelementptr inbounds nuw i8, ptr %1, i64 768
  store double f0x3FC1111111111111, ptr %191, align 8
  %193 = getelementptr inbounds nuw i8, ptr %1, i64 632
  store double f0x3FC6C16C16C16C17, ptr %193, align 8
  store <2 x double> <double f0x3F86C16C16C16C17, double f0x3FB1111111111111>, ptr %192, align 8
  %194 = getelementptr inbounds nuw i8, ptr %1, i64 640
  %195 = getelementptr inbounds nuw i8, ptr %1, i64 784
  store double f0x3F96C16C16C16C17, ptr %194, align 8
  %196 = getelementptr inbounds nuw i8, ptr %1, i64 648
  store double f0x3FB1111111111111, ptr %196, align 8
  store <2 x double> <double f0x3FBF49F49F49F49F, double f0x3FC6C16C16C16C17>, ptr %195, align 8
  %197 = getelementptr inbounds nuw i8, ptr %1, i64 656
  %198 = getelementptr inbounds nuw i8, ptr %1, i64 800
  store double f0x3FBC71C71C71C71C, ptr %197, align 8
  %199 = getelementptr inbounds nuw i8, ptr %1, i64 664
  store double f0x3FC3E93E93E93E94, ptr %199, align 8
  store <2 x double> <double f0x3FA1111111111111, double f0x3FB6C16C16C16C17>, ptr %198, align 8
  %200 = getelementptr inbounds nuw i8, ptr %1, i64 672
  %201 = getelementptr inbounds nuw i8, ptr %1, i64 816
  store double 0.000000e+00, ptr %200, align 8
  %202 = getelementptr inbounds nuw i8, ptr %1, i64 680
  store double f0x3FA6C16C16C16C17, ptr %202, align 8
  store <2 x double> <double f0x3FC27D27D27D27D2, double 0.000000e+00>, ptr %201, align 8
  %203 = getelementptr inbounds nuw i8, ptr %1, i64 688
  %204 = getelementptr inbounds nuw i8, ptr %1, i64 832
  store double f0x3FB6C16C16C16C17, ptr %203, align 8
  %205 = getelementptr inbounds nuw i8, ptr %1, i64 696
  store double f0x3FC1111111111111, ptr %205, align 8
  store <2 x double> <double f0x3FAC71C71C71C71C, double f0x3FBC71C71C71C71C>, ptr %204, align 8
  %206 = getelementptr inbounds nuw i8, ptr %1, i64 704
  %207 = getelementptr inbounds nuw i8, ptr %1, i64 848
  store <2 x double> <double f0x3FC6C16C16C16C17, double f0x3F96C16C16C16C17>, ptr %206, align 8
  store <2 x double> <double f0x3FC5555555555555, double f0x3F96C16C16C16C17>, ptr %207, align 8
  %208 = getelementptr inbounds nuw i8, ptr %1, i64 864
  %209 = getelementptr inbounds nuw i8, ptr %1, i64 1008
  store double f0x3FB6C16C16C16C17, ptr %208, align 8
  %210 = getelementptr inbounds nuw i8, ptr %1, i64 872
  store double f0x3FC3E93E93E93E94, ptr %210, align 8
  store <2 x double> <double 1.000000e-01, double f0x3FC6C16C16C16C17>, ptr %209, align 8
  %211 = getelementptr inbounds nuw i8, ptr %1, i64 880
  %212 = getelementptr inbounds nuw i8, ptr %1, i64 1024
  store double f0x3F96C16C16C16C17, ptr %211, align 8
  %213 = getelementptr inbounds nuw i8, ptr %1, i64 888
  store double f0x3FB6C16C16C16C17, ptr %213, align 8
  store <2 x double> <double f0x3FAC71C71C71C71C, double f0x3FC1111111111111>, ptr %212, align 8
  %214 = getelementptr inbounds nuw i8, ptr %1, i64 896
  %215 = getelementptr inbounds nuw i8, ptr %1, i64 1040
  store double f0x3FC3E93E93E93E94, ptr %214, align 8
  %216 = getelementptr inbounds nuw i8, ptr %1, i64 904
  store double f0x3F96C16C16C16C17, ptr %216, align 8
  store <2 x double> <double f0x3F86C16C16C16C17, double f0x3FB6C16C16C16C17>, ptr %215, align 8
  %217 = getelementptr inbounds nuw i8, ptr %1, i64 912
  %218 = getelementptr inbounds nuw i8, ptr %1, i64 1056
  store double f0x3FB6C16C16C16C17, ptr %217, align 8
  %219 = getelementptr inbounds nuw i8, ptr %1, i64 920
  store double f0x3FC3E93E93E93E94, ptr %219, align 8
  store <2 x double> <double f0x3FC5555555555555, double f0x3FA6C16C16C16C17>, ptr %218, align 8
  %220 = getelementptr inbounds nuw i8, ptr %1, i64 928
  %221 = getelementptr inbounds nuw i8, ptr %1, i64 1072
  store double f0x3F96C16C16C16C17, ptr %220, align 8
  %222 = getelementptr inbounds nuw i8, ptr %1, i64 936
  store double f0x3FB6C16C16C16C17, ptr %222, align 8
  store <2 x double> <double f0x3FBF49F49F49F49F, double 0.000000e+00>, ptr %221, align 8
  %223 = getelementptr inbounds nuw i8, ptr %1, i64 944
  %224 = getelementptr inbounds nuw i8, ptr %1, i64 1088
  store double f0x3FC3E93E93E93E94, ptr %223, align 8
  %225 = getelementptr inbounds nuw i8, ptr %1, i64 952
  store double f0x3F96C16C16C16C17, ptr %225, align 8
  store <2 x double> <double f0x3FB3E93E93E93E94, double f0x3FC3E93E93E93E94>, ptr %224, align 8
  %226 = getelementptr inbounds nuw i8, ptr %1, i64 960
  %227 = getelementptr inbounds nuw i8, ptr %1, i64 1104
  store double f0x3FB6C16C16C16C17, ptr %226, align 8
  %228 = getelementptr inbounds nuw i8, ptr %1, i64 968
  store double f0x3FC3E93E93E93E94, ptr %228, align 8
  store <2 x double> <double f0x3FA1111111111111, double f0x3FBC71C71C71C71C>, ptr %227, align 8
  %229 = getelementptr inbounds nuw i8, ptr %1, i64 976
  %230 = getelementptr inbounds nuw i8, ptr %1, i64 1120
  store double f0x3F96C16C16C16C17, ptr %229, align 8
  %231 = getelementptr inbounds nuw i8, ptr %1, i64 984
  store double f0x3FB6C16C16C16C17, ptr %231, align 8
  store <2 x double> <double f0x3FC82D82D82D82D8, double f0x3FB1111111111111>, ptr %230, align 8
  %232 = getelementptr inbounds nuw i8, ptr %1, i64 992
  %233 = getelementptr inbounds nuw i8, ptr %1, i64 1136
  store <2 x double> <double f0x3FC3E93E93E93E94, double f0x3F96C16C16C16C17>, ptr %232, align 8
  store <2 x double> <double f0x3FC27D27D27D27D2, double f0x3F96C16C16C16C17>, ptr %233, align 8
  %234 = getelementptr inbounds nuw i8, ptr %1, i64 1152
  %235 = getelementptr inbounds nuw i8, ptr %1, i64 1296
  store double f0x3FBC71C71C71C71C, ptr %234, align 8
  %236 = getelementptr inbounds nuw i8, ptr %1, i64 1160
  store double 0.000000e+00, ptr %236, align 8
  store <2 x double> <double f0x3FBF49F49F49F49F, double f0x3F96C16C16C16C17>, ptr %235, align 8
  %237 = getelementptr inbounds nuw i8, ptr %1, i64 1168
  %238 = getelementptr inbounds nuw i8, ptr %1, i64 1312
  store double f0x3FB6C16C16C16C17, ptr %237, align 8
  %239 = getelementptr inbounds nuw i8, ptr %1, i64 1176
  store double f0x3FC6C16C16C16C17, ptr %239, align 8
  store <2 x double> <double f0x3FBF49F49F49F49F, double f0x3F96C16C16C16C17>, ptr %238, align 8
  %240 = getelementptr inbounds nuw i8, ptr %1, i64 1184
  %241 = getelementptr inbounds nuw i8, ptr %1, i64 1328
  store double f0x3FB1111111111111, ptr %240, align 8
  %242 = getelementptr inbounds nuw i8, ptr %1, i64 1192
  store double f0x3FC3E93E93E93E94, ptr %242, align 8
  store <2 x double> <double f0x3FBF49F49F49F49F, double f0x3F96C16C16C16C17>, ptr %241, align 8
  %243 = getelementptr inbounds nuw i8, ptr %1, i64 1200
  %244 = getelementptr inbounds nuw i8, ptr %1, i64 1344
  store double f0x3FA6C16C16C16C17, ptr %243, align 8
  %245 = getelementptr inbounds nuw i8, ptr %1, i64 1208
  store double f0x3FC1111111111111, ptr %245, align 8
  store <2 x double> <double f0x3FBF49F49F49F49F, double f0x3F96C16C16C16C17>, ptr %244, align 8
  %246 = getelementptr inbounds nuw i8, ptr %1, i64 1216
  %247 = getelementptr inbounds nuw i8, ptr %1, i64 1360
  store double f0x3F96C16C16C16C17, ptr %246, align 8
  %248 = getelementptr inbounds nuw i8, ptr %1, i64 1224
  store double f0x3FBC71C71C71C71C, ptr %248, align 8
  store <2 x double> <double f0x3FBF49F49F49F49F, double f0x3F96C16C16C16C17>, ptr %247, align 8
  %249 = getelementptr inbounds nuw i8, ptr %1, i64 1232
  %250 = getelementptr inbounds nuw i8, ptr %1, i64 1376
  store double 0.000000e+00, ptr %249, align 8
  %251 = getelementptr inbounds nuw i8, ptr %1, i64 1240
  store double f0x3FB6C16C16C16C17, ptr %251, align 8
  store <2 x double> <double f0x3FBF49F49F49F49F, double f0x3F96C16C16C16C17>, ptr %250, align 8
  %252 = getelementptr inbounds nuw i8, ptr %1, i64 1248
  %253 = getelementptr inbounds nuw i8, ptr %1, i64 1392
  store double f0x3FC6C16C16C16C17, ptr %252, align 8
  %254 = getelementptr inbounds nuw i8, ptr %1, i64 1256
  store double f0x3FB1111111111111, ptr %254, align 8
  store <2 x double> <double f0x3FBF49F49F49F49F, double f0x3F96C16C16C16C17>, ptr %253, align 8
  %255 = getelementptr inbounds nuw i8, ptr %1, i64 1264
  %256 = getelementptr inbounds nuw i8, ptr %1, i64 1408
  store double f0x3FC3E93E93E93E94, ptr %255, align 8
  %257 = getelementptr inbounds nuw i8, ptr %1, i64 1272
  store double f0x3FA6C16C16C16C17, ptr %257, align 8
  store <2 x double> <double f0x3FBF49F49F49F49F, double f0x3F96C16C16C16C17>, ptr %256, align 8
  %258 = getelementptr inbounds nuw i8, ptr %1, i64 1280
  %259 = getelementptr inbounds nuw i8, ptr %1, i64 1424
  store <2 x double> <double f0x3FC1111111111111, double f0x3F96C16C16C16C17>, ptr %258, align 8
  store <2 x double> <double f0x3FBF49F49F49F49F, double f0x3F96C16C16C16C17>, ptr %259, align 8
  %260 = getelementptr inbounds nuw i8, ptr %1, i64 1440
  %261 = getelementptr inbounds nuw i8, ptr %1, i64 1584
  store double f0x3FC1111111111111, ptr %260, align 8
  %262 = getelementptr inbounds nuw i8, ptr %1, i64 1448
  store double f0x3FA6C16C16C16C17, ptr %262, align 8
  store <2 x double> <double f0x3FC27D27D27D27D2, double f0x3FB1111111111111>, ptr %261, align 8
  %263 = getelementptr inbounds nuw i8, ptr %1, i64 1456
  %264 = getelementptr inbounds nuw i8, ptr %1, i64 1600
  store double f0x3FC3E93E93E93E94, ptr %263, align 8
  %265 = getelementptr inbounds nuw i8, ptr %1, i64 1464
  store double f0x3FB1111111111111, ptr %265, align 8
  store <2 x double> <double f0x3FC82D82D82D82D8, double f0x3FBC71C71C71C71C>, ptr %264, align 8
  %266 = getelementptr inbounds nuw i8, ptr %1, i64 1472
  %267 = getelementptr inbounds nuw i8, ptr %1, i64 1616
  store double f0x3FC6C16C16C16C17, ptr %266, align 8
  %268 = getelementptr inbounds nuw i8, ptr %1, i64 1480
  store double f0x3FB6C16C16C16C17, ptr %268, align 8
  store <2 x double> <double f0x3FA1111111111111, double f0x3FC3E93E93E93E94>, ptr %267, align 8
  %269 = getelementptr inbounds nuw i8, ptr %1, i64 1488
  %270 = getelementptr inbounds nuw i8, ptr %1, i64 1632
  store double 0.000000e+00, ptr %269, align 8
  %271 = getelementptr inbounds nuw i8, ptr %1, i64 1496
  store double f0x3FBC71C71C71C71C, ptr %271, align 8
  store <2 x double> <double f0x3FB3E93E93E93E94, double 0.000000e+00>, ptr %270, align 8
  %272 = getelementptr inbounds nuw i8, ptr %1, i64 1504
  %273 = getelementptr inbounds nuw i8, ptr %1, i64 1648
  store double f0x3F96C16C16C16C17, ptr %272, align 8
  %274 = getelementptr inbounds nuw i8, ptr %1, i64 1512
  store double f0x3FC1111111111111, ptr %274, align 8
  store <2 x double> <double f0x3FBF49F49F49F49F, double f0x3FA6C16C16C16C17>, ptr %273, align 8
  %275 = getelementptr inbounds nuw i8, ptr %1, i64 1520
  %276 = getelementptr inbounds nuw i8, ptr %1, i64 1664
  store double f0x3FA6C16C16C16C17, ptr %275, align 8
  %277 = getelementptr inbounds nuw i8, ptr %1, i64 1528
  store double f0x3FC3E93E93E93E94, ptr %277, align 8
  store <2 x double> <double f0x3FC5555555555555, double f0x3FB6C16C16C16C17>, ptr %276, align 8
  %278 = getelementptr inbounds nuw i8, ptr %1, i64 1536
  %279 = getelementptr inbounds nuw i8, ptr %1, i64 1680
  store double f0x3FB1111111111111, ptr %278, align 8
  %280 = getelementptr inbounds nuw i8, ptr %1, i64 1544
  store double f0x3FC6C16C16C16C17, ptr %280, align 8
  store <2 x double> <double f0x3F86C16C16C16C17, double f0x3FC1111111111111>, ptr %279, align 8
  %281 = getelementptr inbounds nuw i8, ptr %1, i64 1552
  %282 = getelementptr inbounds nuw i8, ptr %1, i64 1696
  store double f0x3FB6C16C16C16C17, ptr %281, align 8
  %283 = getelementptr inbounds nuw i8, ptr %1, i64 1560
  store double 0.000000e+00, ptr %283, align 8
  store <2 x double> <double f0x3FAC71C71C71C71C, double f0x3FC6C16C16C16C17>, ptr %282, align 8
  %284 = getelementptr inbounds nuw i8, ptr %1, i64 1568
  %285 = getelementptr inbounds nuw i8, ptr %1, i64 1712
  store <2 x double> <double f0x3FBC71C71C71C71C, double f0x3F96C16C16C16C17>, ptr %284, align 8
  store <2 x double> <double 1.000000e-01, double f0x3F96C16C16C16C17>, ptr %285, align 8
  %286 = getelementptr inbounds nuw i8, ptr %1, i64 1728
  %287 = getelementptr inbounds nuw i8, ptr %1, i64 1872
  store double f0x3FC3E93E93E93E94, ptr %286, align 8
  %288 = getelementptr inbounds nuw i8, ptr %1, i64 1736
  store double f0x3FB6C16C16C16C17, ptr %288, align 8
  store <2 x double> <double f0x3FC5555555555555, double f0x3FBC71C71C71C71C>, ptr %287, align 8
  %289 = getelementptr inbounds nuw i8, ptr %1, i64 1744
  %290 = getelementptr inbounds nuw i8, ptr %1, i64 1888
  store double f0x3F96C16C16C16C17, ptr %289, align 8
  %291 = getelementptr inbounds nuw i8, ptr %1, i64 1752
  store double f0x3FC3E93E93E93E94, ptr %291, align 8
  store <2 x double> <double f0x3FAC71C71C71C71C, double 0.000000e+00>, ptr %290, align 8
  %292 = getelementptr inbounds nuw i8, ptr %1, i64 1760
  %293 = getelementptr inbounds nuw i8, ptr %1, i64 1904
  store double f0x3FB6C16C16C16C17, ptr %292, align 8
  %294 = getelementptr inbounds nuw i8, ptr %1, i64 1768
  store double f0x3F96C16C16C16C17, ptr %294, align 8
  store <2 x double> <double f0x3FC27D27D27D27D2, double f0x3FB6C16C16C16C17>, ptr %293, align 8
  %295 = getelementptr inbounds nuw i8, ptr %1, i64 1776
  %296 = getelementptr inbounds nuw i8, ptr %1, i64 1920
  store double f0x3FC3E93E93E93E94, ptr %295, align 8
  %297 = getelementptr inbounds nuw i8, ptr %1, i64 1784
  store double f0x3FB6C16C16C16C17, ptr %297, align 8
  store <2 x double> <double f0x3FA1111111111111, double f0x3FC6C16C16C16C17>, ptr %296, align 8
  %298 = getelementptr inbounds nuw i8, ptr %1, i64 1792
  %299 = getelementptr inbounds nuw i8, ptr %1, i64 1936
  store double f0x3F96C16C16C16C17, ptr %298, align 8
  %300 = getelementptr inbounds nuw i8, ptr %1, i64 1800
  store double f0x3FC3E93E93E93E94, ptr %300, align 8
  store <2 x double> <double f0x3FBF49F49F49F49F, double f0x3FB1111111111111>, ptr %299, align 8
  %301 = getelementptr inbounds nuw i8, ptr %1, i64 1808
  %302 = getelementptr inbounds nuw i8, ptr %1, i64 1952
  store double f0x3FB6C16C16C16C17, ptr %301, align 8
  %303 = getelementptr inbounds nuw i8, ptr %1, i64 1816
  store double f0x3F96C16C16C16C17, ptr %303, align 8
  store <2 x double> <double f0x3F86C16C16C16C17, double f0x3FC3E93E93E93E94>, ptr %302, align 8
  %304 = getelementptr inbounds nuw i8, ptr %1, i64 1824
  %305 = getelementptr inbounds nuw i8, ptr %1, i64 1968
  store double f0x3FC3E93E93E93E94, ptr %304, align 8
  %306 = getelementptr inbounds nuw i8, ptr %1, i64 1832
  store double f0x3FB6C16C16C16C17, ptr %306, align 8
  store <2 x double> <double 1.000000e-01, double f0x3FA6C16C16C16C17>, ptr %305, align 8
  %307 = getelementptr inbounds nuw i8, ptr %1, i64 1840
  %308 = getelementptr inbounds nuw i8, ptr %1, i64 1984
  store double f0x3F96C16C16C16C17, ptr %307, align 8
  %309 = getelementptr inbounds nuw i8, ptr %1, i64 1848
  store double f0x3FC3E93E93E93E94, ptr %309, align 8
  store <2 x double> <double f0x3FC82D82D82D82D8, double f0x3FC1111111111111>, ptr %308, align 8
  %310 = getelementptr inbounds nuw i8, ptr %1, i64 1856
  %311 = getelementptr inbounds nuw i8, ptr %1, i64 2000
  store <2 x double> <double f0x3FB6C16C16C16C17, double f0x3F96C16C16C16C17>, ptr %310, align 8
  store <2 x double> <double f0x3FB3E93E93E93E94, double f0x3F96C16C16C16C17>, ptr %311, align 8
  %312 = getelementptr inbounds nuw i8, ptr %1, i64 2016
  %313 = getelementptr inbounds nuw i8, ptr %1, i64 2160
  store double f0x3FC6C16C16C16C17, ptr %312, align 8
  %314 = getelementptr inbounds nuw i8, ptr %1, i64 2024
  store double f0x3FC1111111111111, ptr %314, align 8
  store <2 x double> <double f0x3FC82D82D82D82D8, double f0x3FC3E93E93E93E94>, ptr %313, align 8
  %315 = getelementptr inbounds nuw i8, ptr %1, i64 2032
  %316 = getelementptr inbounds nuw i8, ptr %1, i64 2176
  store double f0x3FB6C16C16C16C17, ptr %315, align 8
  %317 = getelementptr inbounds nuw i8, ptr %1, i64 2040
  store double f0x3FA6C16C16C16C17, ptr %317, align 8
  store <2 x double> <double f0x3FBF49F49F49F49F, double f0x3FB6C16C16C16C17>, ptr %316, align 8
  %318 = getelementptr inbounds nuw i8, ptr %1, i64 2048
  %319 = getelementptr inbounds nuw i8, ptr %1, i64 2192
  store double 0.000000e+00, ptr %318, align 8
  %320 = getelementptr inbounds nuw i8, ptr %1, i64 2056
  store double f0x3FC3E93E93E93E94, ptr %320, align 8
  store <2 x double> <double f0x3FAC71C71C71C71C, double f0x3F96C16C16C16C17>, ptr %319, align 8
  %321 = getelementptr inbounds nuw i8, ptr %1, i64 2064
  %322 = getelementptr inbounds nuw i8, ptr %1, i64 2208
  store double f0x3FBC71C71C71C71C, ptr %321, align 8
  %323 = getelementptr inbounds nuw i8, ptr %1, i64 2072
  store double f0x3FB1111111111111, ptr %323, align 8
  store <2 x double> <double f0x3FC82D82D82D82D8, double f0x3FC3E93E93E93E94>, ptr %322, align 8
  %324 = getelementptr inbounds nuw i8, ptr %1, i64 2080
  %325 = getelementptr inbounds nuw i8, ptr %1, i64 2224
  store double f0x3F96C16C16C16C17, ptr %324, align 8
  %326 = getelementptr inbounds nuw i8, ptr %1, i64 2088
  store double f0x3FC6C16C16C16C17, ptr %326, align 8
  store <2 x double> <double f0x3FBF49F49F49F49F, double f0x3FB6C16C16C16C17>, ptr %325, align 8
  %327 = getelementptr inbounds nuw i8, ptr %1, i64 2096
  %328 = getelementptr inbounds nuw i8, ptr %1, i64 2240
  store double f0x3FC1111111111111, ptr %327, align 8
  %329 = getelementptr inbounds nuw i8, ptr %1, i64 2104
  store double f0x3FB6C16C16C16C17, ptr %329, align 8
  store <2 x double> <double f0x3FAC71C71C71C71C, double f0x3F96C16C16C16C17>, ptr %328, align 8
  %330 = getelementptr inbounds nuw i8, ptr %1, i64 2112
  %331 = getelementptr inbounds nuw i8, ptr %1, i64 2256
  store double f0x3FA6C16C16C16C17, ptr %330, align 8
  %332 = getelementptr inbounds nuw i8, ptr %1, i64 2120
  store double 0.000000e+00, ptr %332, align 8
  store <2 x double> <double f0x3FC82D82D82D82D8, double f0x3FC3E93E93E93E94>, ptr %331, align 8
  %333 = getelementptr inbounds nuw i8, ptr %1, i64 2128
  %334 = getelementptr inbounds nuw i8, ptr %1, i64 2272
  store double f0x3FC3E93E93E93E94, ptr %333, align 8
  %335 = getelementptr inbounds nuw i8, ptr %1, i64 2136
  store double f0x3FBC71C71C71C71C, ptr %335, align 8
  store <2 x double> <double f0x3FBF49F49F49F49F, double f0x3FB6C16C16C16C17>, ptr %334, align 8
  %336 = getelementptr inbounds nuw i8, ptr %1, i64 2144
  %337 = getelementptr inbounds nuw i8, ptr %1, i64 2288
  store <2 x double> <double f0x3FB1111111111111, double f0x3F96C16C16C16C17>, ptr %336, align 8
  store <2 x double> <double f0x3FAC71C71C71C71C, double f0x3F96C16C16C16C17>, ptr %337, align 8
  %338 = getelementptr inbounds nuw i8, ptr %1, i64 2304
  %339 = getelementptr inbounds nuw i8, ptr %1, i64 2448
  store double 0.000000e+00, ptr %338, align 8
  %340 = getelementptr inbounds nuw i8, ptr %1, i64 2312
  store double f0x3FC6C16C16C16C17, ptr %340, align 8
  store <2 x double> <double f0x3F86C16C16C16C17, double 0.000000e+00>, ptr %339, align 8
  %341 = getelementptr inbounds nuw i8, ptr %1, i64 2320
  %342 = getelementptr inbounds nuw i8, ptr %1, i64 2464
  store double f0x3FC3E93E93E93E94, ptr %341, align 8
  %343 = getelementptr inbounds nuw i8, ptr %1, i64 2328
  store double f0x3FC1111111111111, ptr %343, align 8
  store <2 x double> <double f0x3FC82D82D82D82D8, double f0x3FC6C16C16C16C17>, ptr %342, align 8
  %344 = getelementptr inbounds nuw i8, ptr %1, i64 2336
  %345 = getelementptr inbounds nuw i8, ptr %1, i64 2480
  store double f0x3FBC71C71C71C71C, ptr %344, align 8
  %346 = getelementptr inbounds nuw i8, ptr %1, i64 2344
  store double f0x3FB6C16C16C16C17, ptr %346, align 8
  store <2 x double> <double f0x3FC5555555555555, double f0x3FC3E93E93E93E94>, ptr %345, align 8
  %347 = getelementptr inbounds nuw i8, ptr %1, i64 2352
  %348 = getelementptr inbounds nuw i8, ptr %1, i64 2496
  store double f0x3FB1111111111111, ptr %347, align 8
  %349 = getelementptr inbounds nuw i8, ptr %1, i64 2360
  store double f0x3FA6C16C16C16C17, ptr %349, align 8
  store <2 x double> <double f0x3FC27D27D27D27D2, double f0x3FC1111111111111>, ptr %348, align 8
  %350 = getelementptr inbounds nuw i8, ptr %1, i64 2368
  %351 = getelementptr inbounds nuw i8, ptr %1, i64 2512
  store double f0x3F96C16C16C16C17, ptr %350, align 8
  %352 = getelementptr inbounds nuw i8, ptr %1, i64 2376
  store double 0.000000e+00, ptr %352, align 8
  store <2 x double> <double f0x3FBF49F49F49F49F, double f0x3FBC71C71C71C71C>, ptr %351, align 8
  %353 = getelementptr inbounds nuw i8, ptr %1, i64 2384
  %354 = getelementptr inbounds nuw i8, ptr %1, i64 2528
  store double f0x3FC6C16C16C16C17, ptr %353, align 8
  %355 = getelementptr inbounds nuw i8, ptr %1, i64 2392
  store double f0x3FC3E93E93E93E94, ptr %355, align 8
  store <2 x double> <double 1.000000e-01, double f0x3FB6C16C16C16C17>, ptr %354, align 8
  %356 = getelementptr inbounds nuw i8, ptr %1, i64 2400
  %357 = getelementptr inbounds nuw i8, ptr %1, i64 2544
  store double f0x3FC1111111111111, ptr %356, align 8
  %358 = getelementptr inbounds nuw i8, ptr %1, i64 2408
  store double f0x3FBC71C71C71C71C, ptr %358, align 8
  store <2 x double> <double f0x3FB3E93E93E93E94, double f0x3FB1111111111111>, ptr %357, align 8
  %359 = getelementptr inbounds nuw i8, ptr %1, i64 2416
  %360 = getelementptr inbounds nuw i8, ptr %1, i64 2560
  store double f0x3FB6C16C16C16C17, ptr %359, align 8
  %361 = getelementptr inbounds nuw i8, ptr %1, i64 2424
  store double f0x3FB1111111111111, ptr %361, align 8
  store <2 x double> <double f0x3FAC71C71C71C71C, double f0x3FA6C16C16C16C17>, ptr %360, align 8
  %362 = getelementptr inbounds nuw i8, ptr %1, i64 2432
  %363 = getelementptr inbounds nuw i8, ptr %1, i64 2576
  store <2 x double> <double f0x3FA6C16C16C16C17, double f0x3F96C16C16C16C17>, ptr %362, align 8
  store <2 x double> <double f0x3FA1111111111111, double f0x3F96C16C16C16C17>, ptr %363, align 8
  %364 = getelementptr inbounds nuw i8, ptr %1, i64 2592
  %365 = getelementptr inbounds nuw i8, ptr %1, i64 2736
  store double f0x3F96C16C16C16C17, ptr %364, align 8
  %366 = getelementptr inbounds nuw i8, ptr %1, i64 2600
  store double f0x3F96C16C16C16C17, ptr %366, align 8
  store <2 x double> <double f0x3FA1111111111111, double f0x3FA6C16C16C16C17>, ptr %365, align 8
  %367 = getelementptr inbounds nuw i8, ptr %1, i64 2608
  %368 = getelementptr inbounds nuw i8, ptr %1, i64 2752
  store double f0x3F96C16C16C16C17, ptr %367, align 8
  %369 = getelementptr inbounds nuw i8, ptr %1, i64 2616
  store double f0x3F96C16C16C16C17, ptr %369, align 8
  store <2 x double> <double f0x3FAC71C71C71C71C, double f0x3FB1111111111111>, ptr %368, align 8
  %370 = getelementptr inbounds nuw i8, ptr %1, i64 2624
  %371 = getelementptr inbounds nuw i8, ptr %1, i64 2768
  store double f0x3F96C16C16C16C17, ptr %370, align 8
  %372 = getelementptr inbounds nuw i8, ptr %1, i64 2632
  store double f0x3F96C16C16C16C17, ptr %372, align 8
  store <2 x double> <double f0x3FB3E93E93E93E94, double f0x3FB6C16C16C16C17>, ptr %371, align 8
  %373 = getelementptr inbounds nuw i8, ptr %1, i64 2640
  %374 = getelementptr inbounds nuw i8, ptr %1, i64 2784
  store double f0x3F96C16C16C16C17, ptr %373, align 8
  %375 = getelementptr inbounds nuw i8, ptr %1, i64 2648
  store double f0x3F96C16C16C16C17, ptr %375, align 8
  store <2 x double> <double 1.000000e-01, double f0x3FBC71C71C71C71C>, ptr %374, align 8
  %376 = getelementptr inbounds nuw i8, ptr %1, i64 2656
  %377 = getelementptr inbounds nuw i8, ptr %1, i64 2800
  store double f0x3F96C16C16C16C17, ptr %376, align 8
  %378 = getelementptr inbounds nuw i8, ptr %1, i64 2664
  store double f0x3F96C16C16C16C17, ptr %378, align 8
  store <2 x double> <double f0x3FBF49F49F49F49F, double f0x3FC1111111111111>, ptr %377, align 8
  %379 = getelementptr inbounds nuw i8, ptr %1, i64 2672
  %380 = getelementptr inbounds nuw i8, ptr %1, i64 2816
  store double f0x3F96C16C16C16C17, ptr %379, align 8
  %381 = getelementptr inbounds nuw i8, ptr %1, i64 2680
  store double f0x3F96C16C16C16C17, ptr %381, align 8
  store <2 x double> <double f0x3FC27D27D27D27D2, double f0x3FC3E93E93E93E94>, ptr %380, align 8
  %382 = getelementptr inbounds nuw i8, ptr %1, i64 2688
  %383 = getelementptr inbounds nuw i8, ptr %1, i64 2832
  store double f0x3F96C16C16C16C17, ptr %382, align 8
  %384 = getelementptr inbounds nuw i8, ptr %1, i64 2696
  store double f0x3F96C16C16C16C17, ptr %384, align 8
  store <2 x double> <double f0x3FC5555555555555, double f0x3FC6C16C16C16C17>, ptr %383, align 8
  %385 = getelementptr inbounds nuw i8, ptr %1, i64 2704
  %386 = getelementptr inbounds nuw i8, ptr %1, i64 2848
  store double f0x3F96C16C16C16C17, ptr %385, align 8
  %387 = getelementptr inbounds nuw i8, ptr %1, i64 2712
  store double f0x3F96C16C16C16C17, ptr %387, align 8
  store <2 x double> <double f0x3FC82D82D82D82D8, double 0.000000e+00>, ptr %386, align 8
  %388 = getelementptr inbounds nuw i8, ptr %1, i64 2720
  %389 = getelementptr inbounds nuw i8, ptr %1, i64 2864
  store <2 x double> splat (double f0x3F96C16C16C16C17), ptr %388, align 8
  store <2 x double> <double f0x3F86C16C16C16C17, double f0x3F96C16C16C16C17>, ptr %389, align 8
  br label %.preheader59

.preheader59:                                     ; preds = %vector.body, %.preheader59
  %indvars.iv86 = phi i64 [ %indvars.iv.next87, %.preheader59 ], [ 0, %vector.body ]
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %indvars.iv86, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %390 = getelementptr inbounds nuw [192 x i8], ptr %2, i64 %indvars.iv86
  %391 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %392 = mul <2 x i32> %391, <i32 3, i32 4>
  %393 = urem <2 x i32> %392, splat (i32 22)
  %394 = uitofp nneg <2 x i32> %393 to <2 x double>
  %395 = fdiv <2 x double> %394, splat (double 1.100000e+02)
  store <2 x double> %395, ptr %390, align 8
  %396 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %397 = mul <2 x i32> %396, <i32 5, i32 6>
  %398 = urem <2 x i32> %397, splat (i32 22)
  %399 = uitofp nneg <2 x i32> %398 to <2 x double>
  %400 = fdiv <2 x double> %399, splat (double 1.100000e+02)
  %401 = getelementptr inbounds nuw i8, ptr %390, i64 16
  store <2 x double> %400, ptr %401, align 8
  %402 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %403 = mul <2 x i32> %402, <i32 7, i32 8>
  %404 = urem <2 x i32> %403, splat (i32 22)
  %405 = uitofp nneg <2 x i32> %404 to <2 x double>
  %406 = fdiv <2 x double> %405, splat (double 1.100000e+02)
  %407 = getelementptr inbounds nuw i8, ptr %390, i64 32
  store <2 x double> %406, ptr %407, align 8
  %408 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %409 = mul <2 x i32> %408, <i32 9, i32 10>
  %410 = urem <2 x i32> %409, splat (i32 22)
  %411 = uitofp nneg <2 x i32> %410 to <2 x double>
  %412 = fdiv <2 x double> %411, splat (double 1.100000e+02)
  %413 = getelementptr inbounds nuw i8, ptr %390, i64 48
  store <2 x double> %412, ptr %413, align 8
  %414 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %415 = mul <2 x i32> %414, <i32 11, i32 12>
  %416 = urem <2 x i32> %415, splat (i32 22)
  %417 = uitofp nneg <2 x i32> %416 to <2 x double>
  %418 = fdiv <2 x double> %417, splat (double 1.100000e+02)
  %419 = getelementptr inbounds nuw i8, ptr %390, i64 64
  store <2 x double> %418, ptr %419, align 8
  %420 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %421 = mul <2 x i32> %420, <i32 13, i32 14>
  %422 = urem <2 x i32> %421, splat (i32 22)
  %423 = uitofp nneg <2 x i32> %422 to <2 x double>
  %424 = fdiv <2 x double> %423, splat (double 1.100000e+02)
  %425 = getelementptr inbounds nuw i8, ptr %390, i64 80
  store <2 x double> %424, ptr %425, align 8
  %426 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %427 = mul <2 x i32> %426, <i32 15, i32 16>
  %428 = urem <2 x i32> %427, splat (i32 22)
  %429 = uitofp nneg <2 x i32> %428 to <2 x double>
  %430 = fdiv <2 x double> %429, splat (double 1.100000e+02)
  %431 = getelementptr inbounds nuw i8, ptr %390, i64 96
  store <2 x double> %430, ptr %431, align 8
  %432 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %433 = mul <2 x i32> %432, <i32 17, i32 18>
  %434 = urem <2 x i32> %433, splat (i32 22)
  %435 = uitofp nneg <2 x i32> %434 to <2 x double>
  %436 = fdiv <2 x double> %435, splat (double 1.100000e+02)
  %437 = getelementptr inbounds nuw i8, ptr %390, i64 112
  store <2 x double> %436, ptr %437, align 8
  %438 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %439 = mul <2 x i32> %438, <i32 19, i32 20>
  %440 = urem <2 x i32> %439, splat (i32 22)
  %441 = uitofp nneg <2 x i32> %440 to <2 x double>
  %442 = fdiv <2 x double> %441, splat (double 1.100000e+02)
  %443 = getelementptr inbounds nuw i8, ptr %390, i64 128
  store <2 x double> %442, ptr %443, align 8
  %444 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %445 = mul <2 x i32> %444, <i32 21, i32 22>
  %446 = urem <2 x i32> %445, splat (i32 22)
  %447 = uitofp nneg <2 x i32> %446 to <2 x double>
  %448 = fdiv <2 x double> %447, splat (double 1.100000e+02)
  %449 = getelementptr inbounds nuw i8, ptr %390, i64 144
  store <2 x double> %448, ptr %449, align 8
  %450 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %451 = mul <2 x i32> %450, <i32 23, i32 24>
  %452 = urem <2 x i32> %451, splat (i32 22)
  %453 = uitofp nneg <2 x i32> %452 to <2 x double>
  %454 = fdiv <2 x double> %453, splat (double 1.100000e+02)
  %455 = getelementptr inbounds nuw i8, ptr %390, i64 160
  store <2 x double> %454, ptr %455, align 8
  %456 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %457 = mul <2 x i32> %456, <i32 25, i32 26>
  %458 = urem <2 x i32> %457, splat (i32 22)
  %459 = uitofp nneg <2 x i32> %458 to <2 x double>
  %460 = fdiv <2 x double> %459, splat (double 1.100000e+02)
  %461 = getelementptr inbounds nuw i8, ptr %390, i64 176
  store <2 x double> %460, ptr %461, align 8
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1
  %exitcond89.not = icmp eq i64 %indvars.iv.next87, 18
  br i1 %exitcond89.not, label %.preheader, label %.preheader59, !llvm.loop !9

.preheader:                                       ; preds = %.preheader59, %.preheader
  %indvars.iv94 = phi i64 [ %indvars.iv.next95, %.preheader ], [ 0, %.preheader59 ]
  %broadcast.splatinsert41 = insertelement <2 x i64> poison, i64 %indvars.iv94, i64 0
  %broadcast.splat42 = shufflevector <2 x i64> %broadcast.splatinsert41, <2 x i64> poison, <2 x i32> zeroinitializer
  %462 = getelementptr inbounds nuw [176 x i8], ptr %3, i64 %indvars.iv94
  %463 = trunc <2 x i64> %broadcast.splat42 to <2 x i32>
  %464 = mul <2 x i32> %463, <i32 2, i32 3>
  %465 = add <2 x i32> %464, splat (i32 2)
  %466 = urem <2 x i32> %465, splat (i32 20)
  %467 = uitofp nneg <2 x i32> %466 to <2 x double>
  %468 = fdiv <2 x double> %467, splat (double 1.000000e+02)
  store <2 x double> %468, ptr %462, align 8
  %469 = trunc <2 x i64> %broadcast.splat42 to <2 x i32>
  %470 = mul <2 x i32> %469, <i32 4, i32 5>
  %471 = add <2 x i32> %470, splat (i32 2)
  %472 = urem <2 x i32> %471, splat (i32 20)
  %473 = uitofp nneg <2 x i32> %472 to <2 x double>
  %474 = fdiv <2 x double> %473, splat (double 1.000000e+02)
  %475 = getelementptr inbounds nuw i8, ptr %462, i64 16
  store <2 x double> %474, ptr %475, align 8
  %476 = trunc <2 x i64> %broadcast.splat42 to <2 x i32>
  %477 = mul <2 x i32> %476, <i32 6, i32 7>
  %478 = add <2 x i32> %477, splat (i32 2)
  %479 = urem <2 x i32> %478, splat (i32 20)
  %480 = uitofp nneg <2 x i32> %479 to <2 x double>
  %481 = fdiv <2 x double> %480, splat (double 1.000000e+02)
  %482 = getelementptr inbounds nuw i8, ptr %462, i64 32
  store <2 x double> %481, ptr %482, align 8
  %483 = trunc <2 x i64> %broadcast.splat42 to <2 x i32>
  %484 = mul <2 x i32> %483, <i32 8, i32 9>
  %485 = add <2 x i32> %484, splat (i32 2)
  %486 = urem <2 x i32> %485, splat (i32 20)
  %487 = uitofp nneg <2 x i32> %486 to <2 x double>
  %488 = fdiv <2 x double> %487, splat (double 1.000000e+02)
  %489 = getelementptr inbounds nuw i8, ptr %462, i64 48
  store <2 x double> %488, ptr %489, align 8
  %490 = trunc <2 x i64> %broadcast.splat42 to <2 x i32>
  %491 = mul <2 x i32> %490, <i32 10, i32 11>
  %492 = add <2 x i32> %491, splat (i32 2)
  %493 = urem <2 x i32> %492, splat (i32 20)
  %494 = uitofp nneg <2 x i32> %493 to <2 x double>
  %495 = fdiv <2 x double> %494, splat (double 1.000000e+02)
  %496 = getelementptr inbounds nuw i8, ptr %462, i64 64
  store <2 x double> %495, ptr %496, align 8
  %497 = trunc <2 x i64> %broadcast.splat42 to <2 x i32>
  %498 = mul <2 x i32> %497, <i32 12, i32 13>
  %499 = add <2 x i32> %498, splat (i32 2)
  %500 = urem <2 x i32> %499, splat (i32 20)
  %501 = uitofp nneg <2 x i32> %500 to <2 x double>
  %502 = fdiv <2 x double> %501, splat (double 1.000000e+02)
  %503 = getelementptr inbounds nuw i8, ptr %462, i64 80
  store <2 x double> %502, ptr %503, align 8
  %504 = trunc <2 x i64> %broadcast.splat42 to <2 x i32>
  %505 = mul <2 x i32> %504, <i32 14, i32 15>
  %506 = add <2 x i32> %505, splat (i32 2)
  %507 = urem <2 x i32> %506, splat (i32 20)
  %508 = uitofp nneg <2 x i32> %507 to <2 x double>
  %509 = fdiv <2 x double> %508, splat (double 1.000000e+02)
  %510 = getelementptr inbounds nuw i8, ptr %462, i64 96
  store <2 x double> %509, ptr %510, align 8
  %511 = trunc <2 x i64> %broadcast.splat42 to <2 x i32>
  %512 = mul <2 x i32> %511, <i32 16, i32 17>
  %513 = add <2 x i32> %512, splat (i32 2)
  %514 = urem <2 x i32> %513, splat (i32 20)
  %515 = uitofp nneg <2 x i32> %514 to <2 x double>
  %516 = fdiv <2 x double> %515, splat (double 1.000000e+02)
  %517 = getelementptr inbounds nuw i8, ptr %462, i64 112
  store <2 x double> %516, ptr %517, align 8
  %518 = trunc <2 x i64> %broadcast.splat42 to <2 x i32>
  %519 = mul <2 x i32> %518, <i32 18, i32 19>
  %520 = add <2 x i32> %519, splat (i32 2)
  %521 = urem <2 x i32> %520, splat (i32 20)
  %522 = uitofp nneg <2 x i32> %521 to <2 x double>
  %523 = fdiv <2 x double> %522, splat (double 1.000000e+02)
  %524 = getelementptr inbounds nuw i8, ptr %462, i64 128
  store <2 x double> %523, ptr %524, align 8
  %525 = trunc <2 x i64> %broadcast.splat42 to <2 x i32>
  %526 = mul <2 x i32> %525, <i32 20, i32 21>
  %527 = add <2 x i32> %526, splat (i32 2)
  %528 = urem <2 x i32> %527, splat (i32 20)
  %529 = uitofp nneg <2 x i32> %528 to <2 x double>
  %530 = fdiv <2 x double> %529, splat (double 1.000000e+02)
  %531 = getelementptr inbounds nuw i8, ptr %462, i64 144
  store <2 x double> %530, ptr %531, align 8
  %532 = trunc <2 x i64> %broadcast.splat42 to <2 x i32>
  %533 = mul <2 x i32> %532, <i32 22, i32 23>
  %534 = add <2 x i32> %533, splat (i32 2)
  %535 = urem <2 x i32> %534, splat (i32 20)
  %536 = uitofp nneg <2 x i32> %535 to <2 x double>
  %537 = fdiv <2 x double> %536, splat (double 1.000000e+02)
  %538 = getelementptr inbounds nuw i8, ptr %462, i64 160
  store <2 x double> %537, ptr %538, align 8
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1
  %exitcond97.not = icmp eq i64 %indvars.iv.next95, 24
  br i1 %exitcond97.not, label %539, label %.preheader, !llvm.loop !10

539:                                              ; preds = %.preheader
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @kernel_3mm(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef writeonly captures(none) %6) unnamed_addr #3 {
  %8 = insertelement <2 x ptr> poison, ptr %1, i64 0
  %9 = insertelement <2 x ptr> %8, ptr %2, i64 1
  %10 = getelementptr i8, <2 x ptr> %9, <2 x i64> <i64 2560, i64 2880>
  %scevgep7 = getelementptr i8, ptr %0, i64 2304
  %11 = insertelement <2 x ptr> poison, ptr %0, i64 0
  %12 = shufflevector <2 x ptr> %11, <2 x ptr> poison, <2 x i32> zeroinitializer
  %13 = insertelement <2 x ptr> poison, ptr %scevgep7, i64 0
  %14 = shufflevector <2 x ptr> %13, <2 x ptr> poison, <2 x i32> zeroinitializer
  %15 = icmp ult <2 x ptr> %12, %10
  %16 = icmp ult <2 x ptr> %9, %14
  %17 = and <2 x i1> %15, %16
  %18 = bitcast <2 x i1> %17 to i2
  %.not = icmp eq i2 %18, 0
  br label %.preheader62

.preheader62:                                     ; preds = %7, %middle.block
  %indvars.iv80 = phi i64 [ 0, %7 ], [ %indvars.iv.next81, %middle.block ]
  %19 = getelementptr inbounds nuw [144 x i8], ptr %0, i64 %indvars.iv80
  %20 = getelementptr inbounds nuw [160 x i8], ptr %1, i64 %indvars.iv80
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 8
  %22 = getelementptr inbounds nuw i8, ptr %20, i64 16
  %23 = getelementptr inbounds nuw i8, ptr %20, i64 24
  %24 = getelementptr inbounds nuw i8, ptr %20, i64 32
  %25 = getelementptr inbounds nuw i8, ptr %20, i64 40
  %26 = getelementptr inbounds nuw i8, ptr %20, i64 48
  %27 = getelementptr inbounds nuw i8, ptr %20, i64 56
  %28 = getelementptr inbounds nuw i8, ptr %20, i64 64
  %29 = getelementptr inbounds nuw i8, ptr %20, i64 72
  %30 = getelementptr inbounds nuw i8, ptr %20, i64 80
  %31 = getelementptr inbounds nuw i8, ptr %20, i64 88
  %32 = getelementptr inbounds nuw i8, ptr %20, i64 96
  %33 = getelementptr inbounds nuw i8, ptr %20, i64 104
  %34 = getelementptr inbounds nuw i8, ptr %20, i64 112
  %35 = getelementptr inbounds nuw i8, ptr %20, i64 120
  %36 = getelementptr inbounds nuw i8, ptr %20, i64 128
  %37 = getelementptr inbounds nuw i8, ptr %20, i64 136
  %38 = getelementptr inbounds nuw i8, ptr %20, i64 144
  %39 = getelementptr inbounds nuw i8, ptr %20, i64 152
  br i1 %.not, label %vector.ph, label %scalar.ph

vector.ph:                                        ; preds = %.preheader62
  %40 = load double, ptr %20, align 8, !alias.scope !11
  %broadcast.splatinsert = insertelement <2 x double> poison, double %40, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %41 = load double, ptr %21, align 8, !alias.scope !11
  %broadcast.splatinsert12 = insertelement <2 x double> poison, double %41, i64 0
  %broadcast.splat13 = shufflevector <2 x double> %broadcast.splatinsert12, <2 x double> poison, <2 x i32> zeroinitializer
  %42 = load double, ptr %22, align 8, !alias.scope !11
  %broadcast.splatinsert15 = insertelement <2 x double> poison, double %42, i64 0
  %broadcast.splat16 = shufflevector <2 x double> %broadcast.splatinsert15, <2 x double> poison, <2 x i32> zeroinitializer
  %43 = load double, ptr %23, align 8, !alias.scope !11
  %broadcast.splatinsert18 = insertelement <2 x double> poison, double %43, i64 0
  %broadcast.splat19 = shufflevector <2 x double> %broadcast.splatinsert18, <2 x double> poison, <2 x i32> zeroinitializer
  %44 = load double, ptr %24, align 8, !alias.scope !11
  %broadcast.splatinsert21 = insertelement <2 x double> poison, double %44, i64 0
  %broadcast.splat22 = shufflevector <2 x double> %broadcast.splatinsert21, <2 x double> poison, <2 x i32> zeroinitializer
  %45 = load double, ptr %25, align 8, !alias.scope !11
  %broadcast.splatinsert24 = insertelement <2 x double> poison, double %45, i64 0
  %broadcast.splat25 = shufflevector <2 x double> %broadcast.splatinsert24, <2 x double> poison, <2 x i32> zeroinitializer
  %46 = load double, ptr %26, align 8, !alias.scope !11
  %broadcast.splatinsert27 = insertelement <2 x double> poison, double %46, i64 0
  %broadcast.splat28 = shufflevector <2 x double> %broadcast.splatinsert27, <2 x double> poison, <2 x i32> zeroinitializer
  %47 = load double, ptr %27, align 8, !alias.scope !11
  %broadcast.splatinsert30 = insertelement <2 x double> poison, double %47, i64 0
  %broadcast.splat31 = shufflevector <2 x double> %broadcast.splatinsert30, <2 x double> poison, <2 x i32> zeroinitializer
  %48 = load double, ptr %28, align 8, !alias.scope !11
  %broadcast.splatinsert33 = insertelement <2 x double> poison, double %48, i64 0
  %broadcast.splat34 = shufflevector <2 x double> %broadcast.splatinsert33, <2 x double> poison, <2 x i32> zeroinitializer
  %49 = load double, ptr %29, align 8, !alias.scope !11
  %broadcast.splatinsert36 = insertelement <2 x double> poison, double %49, i64 0
  %broadcast.splat37 = shufflevector <2 x double> %broadcast.splatinsert36, <2 x double> poison, <2 x i32> zeroinitializer
  %50 = load double, ptr %30, align 8, !alias.scope !11
  %broadcast.splatinsert39 = insertelement <2 x double> poison, double %50, i64 0
  %broadcast.splat40 = shufflevector <2 x double> %broadcast.splatinsert39, <2 x double> poison, <2 x i32> zeroinitializer
  %51 = load double, ptr %31, align 8, !alias.scope !11
  %broadcast.splatinsert42 = insertelement <2 x double> poison, double %51, i64 0
  %broadcast.splat43 = shufflevector <2 x double> %broadcast.splatinsert42, <2 x double> poison, <2 x i32> zeroinitializer
  %52 = load double, ptr %32, align 8, !alias.scope !11
  %broadcast.splatinsert45 = insertelement <2 x double> poison, double %52, i64 0
  %broadcast.splat46 = shufflevector <2 x double> %broadcast.splatinsert45, <2 x double> poison, <2 x i32> zeroinitializer
  %53 = load double, ptr %33, align 8, !alias.scope !11
  %broadcast.splatinsert48 = insertelement <2 x double> poison, double %53, i64 0
  %broadcast.splat49 = shufflevector <2 x double> %broadcast.splatinsert48, <2 x double> poison, <2 x i32> zeroinitializer
  %54 = load double, ptr %34, align 8, !alias.scope !11
  %broadcast.splatinsert51 = insertelement <2 x double> poison, double %54, i64 0
  %broadcast.splat52 = shufflevector <2 x double> %broadcast.splatinsert51, <2 x double> poison, <2 x i32> zeroinitializer
  %55 = load double, ptr %35, align 8, !alias.scope !11
  %broadcast.splatinsert54 = insertelement <2 x double> poison, double %55, i64 0
  %broadcast.splat55 = shufflevector <2 x double> %broadcast.splatinsert54, <2 x double> poison, <2 x i32> zeroinitializer
  %56 = load double, ptr %36, align 8, !alias.scope !11
  %broadcast.splatinsert57 = insertelement <2 x double> poison, double %56, i64 0
  %broadcast.splat58 = shufflevector <2 x double> %broadcast.splatinsert57, <2 x double> poison, <2 x i32> zeroinitializer
  %57 = load double, ptr %37, align 8, !alias.scope !11
  %broadcast.splatinsert60 = insertelement <2 x double> poison, double %57, i64 0
  %broadcast.splat61 = shufflevector <2 x double> %broadcast.splatinsert60, <2 x double> poison, <2 x i32> zeroinitializer
  %58 = load double, ptr %38, align 8, !alias.scope !11
  %broadcast.splatinsert63 = insertelement <2 x double> poison, double %58, i64 0
  %broadcast.splat64 = shufflevector <2 x double> %broadcast.splatinsert63, <2 x double> poison, <2 x i32> zeroinitializer
  %59 = load double, ptr %39, align 8, !alias.scope !11
  %broadcast.splatinsert66 = insertelement <2 x double> poison, double %59, i64 0
  %broadcast.splat67 = shufflevector <2 x double> %broadcast.splatinsert66, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %60 = getelementptr inbounds nuw [8 x i8], ptr %19, i64 %index
  store <2 x double> zeroinitializer, ptr %60, align 8, !alias.scope !14, !noalias !16
  %61 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index
  %wide.load = load <2 x double>, ptr %61, align 8, !alias.scope !18
  %62 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> zeroinitializer)
  store <2 x double> %62, ptr %60, align 8, !alias.scope !14, !noalias !16
  %63 = getelementptr inbounds nuw i8, ptr %61, i64 144
  %wide.load11 = load <2 x double>, ptr %63, align 8, !alias.scope !18
  %64 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat13, <2 x double> %wide.load11, <2 x double> %62)
  store <2 x double> %64, ptr %60, align 8, !alias.scope !14, !noalias !16
  %65 = getelementptr inbounds nuw i8, ptr %61, i64 288
  %wide.load14 = load <2 x double>, ptr %65, align 8, !alias.scope !18
  %66 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat16, <2 x double> %wide.load14, <2 x double> %64)
  store <2 x double> %66, ptr %60, align 8, !alias.scope !14, !noalias !16
  %67 = getelementptr inbounds nuw i8, ptr %61, i64 432
  %wide.load17 = load <2 x double>, ptr %67, align 8, !alias.scope !18
  %68 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat19, <2 x double> %wide.load17, <2 x double> %66)
  store <2 x double> %68, ptr %60, align 8, !alias.scope !14, !noalias !16
  %69 = getelementptr inbounds nuw i8, ptr %61, i64 576
  %wide.load20 = load <2 x double>, ptr %69, align 8, !alias.scope !18
  %70 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat22, <2 x double> %wide.load20, <2 x double> %68)
  store <2 x double> %70, ptr %60, align 8, !alias.scope !14, !noalias !16
  %71 = getelementptr inbounds nuw i8, ptr %61, i64 720
  %wide.load23 = load <2 x double>, ptr %71, align 8, !alias.scope !18
  %72 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat25, <2 x double> %wide.load23, <2 x double> %70)
  store <2 x double> %72, ptr %60, align 8, !alias.scope !14, !noalias !16
  %73 = getelementptr inbounds nuw i8, ptr %61, i64 864
  %wide.load26 = load <2 x double>, ptr %73, align 8, !alias.scope !18
  %74 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat28, <2 x double> %wide.load26, <2 x double> %72)
  store <2 x double> %74, ptr %60, align 8, !alias.scope !14, !noalias !16
  %75 = getelementptr inbounds nuw i8, ptr %61, i64 1008
  %wide.load29 = load <2 x double>, ptr %75, align 8, !alias.scope !18
  %76 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat31, <2 x double> %wide.load29, <2 x double> %74)
  store <2 x double> %76, ptr %60, align 8, !alias.scope !14, !noalias !16
  %77 = getelementptr inbounds nuw i8, ptr %61, i64 1152
  %wide.load32 = load <2 x double>, ptr %77, align 8, !alias.scope !18
  %78 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat34, <2 x double> %wide.load32, <2 x double> %76)
  store <2 x double> %78, ptr %60, align 8, !alias.scope !14, !noalias !16
  %79 = getelementptr inbounds nuw i8, ptr %61, i64 1296
  %wide.load35 = load <2 x double>, ptr %79, align 8, !alias.scope !18
  %80 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat37, <2 x double> %wide.load35, <2 x double> %78)
  store <2 x double> %80, ptr %60, align 8, !alias.scope !14, !noalias !16
  %81 = getelementptr inbounds nuw i8, ptr %61, i64 1440
  %wide.load38 = load <2 x double>, ptr %81, align 8, !alias.scope !18
  %82 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat40, <2 x double> %wide.load38, <2 x double> %80)
  store <2 x double> %82, ptr %60, align 8, !alias.scope !14, !noalias !16
  %83 = getelementptr inbounds nuw i8, ptr %61, i64 1584
  %wide.load41 = load <2 x double>, ptr %83, align 8, !alias.scope !18
  %84 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat43, <2 x double> %wide.load41, <2 x double> %82)
  store <2 x double> %84, ptr %60, align 8, !alias.scope !14, !noalias !16
  %85 = getelementptr inbounds nuw i8, ptr %61, i64 1728
  %wide.load44 = load <2 x double>, ptr %85, align 8, !alias.scope !18
  %86 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat46, <2 x double> %wide.load44, <2 x double> %84)
  store <2 x double> %86, ptr %60, align 8, !alias.scope !14, !noalias !16
  %87 = getelementptr inbounds nuw i8, ptr %61, i64 1872
  %wide.load47 = load <2 x double>, ptr %87, align 8, !alias.scope !18
  %88 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat49, <2 x double> %wide.load47, <2 x double> %86)
  store <2 x double> %88, ptr %60, align 8, !alias.scope !14, !noalias !16
  %89 = getelementptr inbounds nuw i8, ptr %61, i64 2016
  %wide.load50 = load <2 x double>, ptr %89, align 8, !alias.scope !18
  %90 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat52, <2 x double> %wide.load50, <2 x double> %88)
  store <2 x double> %90, ptr %60, align 8, !alias.scope !14, !noalias !16
  %91 = getelementptr inbounds nuw i8, ptr %61, i64 2160
  %wide.load53 = load <2 x double>, ptr %91, align 8, !alias.scope !18
  %92 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat55, <2 x double> %wide.load53, <2 x double> %90)
  store <2 x double> %92, ptr %60, align 8, !alias.scope !14, !noalias !16
  %93 = getelementptr inbounds nuw i8, ptr %61, i64 2304
  %wide.load56 = load <2 x double>, ptr %93, align 8, !alias.scope !18
  %94 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat58, <2 x double> %wide.load56, <2 x double> %92)
  store <2 x double> %94, ptr %60, align 8, !alias.scope !14, !noalias !16
  %95 = getelementptr inbounds nuw i8, ptr %61, i64 2448
  %wide.load59 = load <2 x double>, ptr %95, align 8, !alias.scope !18
  %96 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat61, <2 x double> %wide.load59, <2 x double> %94)
  store <2 x double> %96, ptr %60, align 8, !alias.scope !14, !noalias !16
  %97 = getelementptr inbounds nuw i8, ptr %61, i64 2592
  %wide.load62 = load <2 x double>, ptr %97, align 8, !alias.scope !18
  %98 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat64, <2 x double> %wide.load62, <2 x double> %96)
  store <2 x double> %98, ptr %60, align 8, !alias.scope !14, !noalias !16
  %99 = getelementptr inbounds nuw i8, ptr %61, i64 2736
  %wide.load65 = load <2 x double>, ptr %99, align 8, !alias.scope !18
  %100 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat67, <2 x double> %wide.load65, <2 x double> %98)
  store <2 x double> %100, ptr %60, align 8, !alias.scope !14, !noalias !16
  %index.next = add nuw i64 %index, 2
  %101 = icmp eq i64 %index.next, 18
  br i1 %101, label %middle.block, label %vector.body, !llvm.loop !19

scalar.ph:                                        ; preds = %.preheader62, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ 0, %.preheader62 ]
  %102 = getelementptr inbounds nuw [8 x i8], ptr %19, i64 %indvars.iv
  store double 0.000000e+00, ptr %102, align 8
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %103 = load double, ptr %20, align 8
  %104 = load double, ptr %invariant.gep, align 8
  %105 = tail call double @llvm.fmuladd.f64(double %103, double %104, double 0.000000e+00)
  store double %105, ptr %102, align 8
  %106 = load double, ptr %21, align 8
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 144
  %107 = load double, ptr %gep.1, align 8
  %108 = tail call double @llvm.fmuladd.f64(double %106, double %107, double %105)
  store double %108, ptr %102, align 8
  %109 = load double, ptr %22, align 8
  %gep.2 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 288
  %110 = load double, ptr %gep.2, align 8
  %111 = tail call double @llvm.fmuladd.f64(double %109, double %110, double %108)
  store double %111, ptr %102, align 8
  %112 = load double, ptr %23, align 8
  %gep.3 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 432
  %113 = load double, ptr %gep.3, align 8
  %114 = tail call double @llvm.fmuladd.f64(double %112, double %113, double %111)
  store double %114, ptr %102, align 8
  %115 = load double, ptr %24, align 8
  %gep.4 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 576
  %116 = load double, ptr %gep.4, align 8
  %117 = tail call double @llvm.fmuladd.f64(double %115, double %116, double %114)
  store double %117, ptr %102, align 8
  %118 = load double, ptr %25, align 8
  %gep.5 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 720
  %119 = load double, ptr %gep.5, align 8
  %120 = tail call double @llvm.fmuladd.f64(double %118, double %119, double %117)
  store double %120, ptr %102, align 8
  %121 = load double, ptr %26, align 8
  %gep.6 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 864
  %122 = load double, ptr %gep.6, align 8
  %123 = tail call double @llvm.fmuladd.f64(double %121, double %122, double %120)
  store double %123, ptr %102, align 8
  %124 = load double, ptr %27, align 8
  %gep.7 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 1008
  %125 = load double, ptr %gep.7, align 8
  %126 = tail call double @llvm.fmuladd.f64(double %124, double %125, double %123)
  store double %126, ptr %102, align 8
  %127 = load double, ptr %28, align 8
  %gep.8 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 1152
  %128 = load double, ptr %gep.8, align 8
  %129 = tail call double @llvm.fmuladd.f64(double %127, double %128, double %126)
  store double %129, ptr %102, align 8
  %130 = load double, ptr %29, align 8
  %gep.9 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 1296
  %131 = load double, ptr %gep.9, align 8
  %132 = tail call double @llvm.fmuladd.f64(double %130, double %131, double %129)
  store double %132, ptr %102, align 8
  %133 = load double, ptr %30, align 8
  %gep.10 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 1440
  %134 = load double, ptr %gep.10, align 8
  %135 = tail call double @llvm.fmuladd.f64(double %133, double %134, double %132)
  store double %135, ptr %102, align 8
  %136 = load double, ptr %31, align 8
  %gep.11 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 1584
  %137 = load double, ptr %gep.11, align 8
  %138 = tail call double @llvm.fmuladd.f64(double %136, double %137, double %135)
  store double %138, ptr %102, align 8
  %139 = load double, ptr %32, align 8
  %gep.12 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 1728
  %140 = load double, ptr %gep.12, align 8
  %141 = tail call double @llvm.fmuladd.f64(double %139, double %140, double %138)
  store double %141, ptr %102, align 8
  %142 = load double, ptr %33, align 8
  %gep.13 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 1872
  %143 = load double, ptr %gep.13, align 8
  %144 = tail call double @llvm.fmuladd.f64(double %142, double %143, double %141)
  store double %144, ptr %102, align 8
  %145 = load double, ptr %34, align 8
  %gep.14 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 2016
  %146 = load double, ptr %gep.14, align 8
  %147 = tail call double @llvm.fmuladd.f64(double %145, double %146, double %144)
  store double %147, ptr %102, align 8
  %148 = load double, ptr %35, align 8
  %gep.15 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 2160
  %149 = load double, ptr %gep.15, align 8
  %150 = tail call double @llvm.fmuladd.f64(double %148, double %149, double %147)
  store double %150, ptr %102, align 8
  %151 = load double, ptr %36, align 8
  %gep.16 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 2304
  %152 = load double, ptr %gep.16, align 8
  %153 = tail call double @llvm.fmuladd.f64(double %151, double %152, double %150)
  store double %153, ptr %102, align 8
  %154 = load double, ptr %37, align 8
  %gep.17 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 2448
  %155 = load double, ptr %gep.17, align 8
  %156 = tail call double @llvm.fmuladd.f64(double %154, double %155, double %153)
  store double %156, ptr %102, align 8
  %157 = load double, ptr %38, align 8
  %gep.18 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 2592
  %158 = load double, ptr %gep.18, align 8
  %159 = tail call double @llvm.fmuladd.f64(double %157, double %158, double %156)
  store double %159, ptr %102, align 8
  %160 = load double, ptr %39, align 8
  %gep.19 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 2736
  %161 = load double, ptr %gep.19, align 8
  %162 = tail call double @llvm.fmuladd.f64(double %160, double %161, double %159)
  store double %162, ptr %102, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 18
  br i1 %exitcond.not, label %middle.block, label %scalar.ph, !llvm.loop !23

middle.block:                                     ; preds = %vector.body, %scalar.ph
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1
  %exitcond83.not = icmp eq i64 %indvars.iv.next81, 16
  br i1 %exitcond83.not, label %.preheader60.preheader, label %.preheader62, !llvm.loop !25

.preheader60.preheader:                           ; preds = %middle.block
  %163 = insertelement <2 x ptr> poison, ptr %4, i64 0
  %164 = insertelement <2 x ptr> %163, ptr %5, i64 1
  %165 = getelementptr i8, <2 x ptr> %164, <2 x i64> <i64 3456, i64 4224>
  %scevgep81 = getelementptr i8, ptr %3, i64 3168
  %166 = insertelement <2 x ptr> poison, ptr %3, i64 0
  %167 = shufflevector <2 x ptr> %166, <2 x ptr> poison, <2 x i32> zeroinitializer
  %168 = insertelement <2 x ptr> poison, ptr %scevgep81, i64 0
  %169 = shufflevector <2 x ptr> %168, <2 x ptr> poison, <2 x i32> zeroinitializer
  %170 = icmp ult <2 x ptr> %167, %165
  %171 = icmp ult <2 x ptr> %164, %169
  %172 = and <2 x i1> %170, %171
  %173 = bitcast <2 x i1> %172 to i2
  %.not252 = icmp eq i2 %173, 0
  br label %.preheader60

.preheader60:                                     ; preds = %.preheader60.preheader, %middle.block167
  %indvars.iv92 = phi i64 [ %indvars.iv.next93, %middle.block167 ], [ 0, %.preheader60.preheader ]
  %174 = getelementptr inbounds nuw [176 x i8], ptr %3, i64 %indvars.iv92
  %175 = getelementptr inbounds nuw [192 x i8], ptr %4, i64 %indvars.iv92
  %176 = getelementptr inbounds nuw i8, ptr %175, i64 8
  %177 = getelementptr inbounds nuw i8, ptr %175, i64 16
  %178 = getelementptr inbounds nuw i8, ptr %175, i64 24
  %179 = getelementptr inbounds nuw i8, ptr %175, i64 32
  %180 = getelementptr inbounds nuw i8, ptr %175, i64 40
  %181 = getelementptr inbounds nuw i8, ptr %175, i64 48
  %182 = getelementptr inbounds nuw i8, ptr %175, i64 56
  %183 = getelementptr inbounds nuw i8, ptr %175, i64 64
  %184 = getelementptr inbounds nuw i8, ptr %175, i64 72
  %185 = getelementptr inbounds nuw i8, ptr %175, i64 80
  %186 = getelementptr inbounds nuw i8, ptr %175, i64 88
  %187 = getelementptr inbounds nuw i8, ptr %175, i64 96
  %188 = getelementptr inbounds nuw i8, ptr %175, i64 104
  %189 = getelementptr inbounds nuw i8, ptr %175, i64 112
  %190 = getelementptr inbounds nuw i8, ptr %175, i64 120
  %191 = getelementptr inbounds nuw i8, ptr %175, i64 128
  %192 = getelementptr inbounds nuw i8, ptr %175, i64 136
  %193 = getelementptr inbounds nuw i8, ptr %175, i64 144
  %194 = getelementptr inbounds nuw i8, ptr %175, i64 152
  %195 = getelementptr inbounds nuw i8, ptr %175, i64 160
  %196 = getelementptr inbounds nuw i8, ptr %175, i64 168
  %197 = getelementptr inbounds nuw i8, ptr %175, i64 176
  %198 = getelementptr inbounds nuw i8, ptr %175, i64 184
  br i1 %.not252, label %vector.ph91, label %scalar.ph82

vector.ph91:                                      ; preds = %.preheader60
  %199 = load double, ptr %175, align 8, !alias.scope !26
  %broadcast.splatinsert95 = insertelement <2 x double> poison, double %199, i64 0
  %broadcast.splat96 = shufflevector <2 x double> %broadcast.splatinsert95, <2 x double> poison, <2 x i32> zeroinitializer
  %200 = load double, ptr %176, align 8, !alias.scope !26
  %broadcast.splatinsert98 = insertelement <2 x double> poison, double %200, i64 0
  %broadcast.splat99 = shufflevector <2 x double> %broadcast.splatinsert98, <2 x double> poison, <2 x i32> zeroinitializer
  %201 = load double, ptr %177, align 8, !alias.scope !26
  %broadcast.splatinsert101 = insertelement <2 x double> poison, double %201, i64 0
  %broadcast.splat102 = shufflevector <2 x double> %broadcast.splatinsert101, <2 x double> poison, <2 x i32> zeroinitializer
  %202 = load double, ptr %178, align 8, !alias.scope !26
  %broadcast.splatinsert104 = insertelement <2 x double> poison, double %202, i64 0
  %broadcast.splat105 = shufflevector <2 x double> %broadcast.splatinsert104, <2 x double> poison, <2 x i32> zeroinitializer
  %203 = load double, ptr %179, align 8, !alias.scope !26
  %broadcast.splatinsert107 = insertelement <2 x double> poison, double %203, i64 0
  %broadcast.splat108 = shufflevector <2 x double> %broadcast.splatinsert107, <2 x double> poison, <2 x i32> zeroinitializer
  %204 = load double, ptr %180, align 8, !alias.scope !26
  %broadcast.splatinsert110 = insertelement <2 x double> poison, double %204, i64 0
  %broadcast.splat111 = shufflevector <2 x double> %broadcast.splatinsert110, <2 x double> poison, <2 x i32> zeroinitializer
  %205 = load double, ptr %181, align 8, !alias.scope !26
  %broadcast.splatinsert113 = insertelement <2 x double> poison, double %205, i64 0
  %broadcast.splat114 = shufflevector <2 x double> %broadcast.splatinsert113, <2 x double> poison, <2 x i32> zeroinitializer
  %206 = load double, ptr %182, align 8, !alias.scope !26
  %broadcast.splatinsert116 = insertelement <2 x double> poison, double %206, i64 0
  %broadcast.splat117 = shufflevector <2 x double> %broadcast.splatinsert116, <2 x double> poison, <2 x i32> zeroinitializer
  %207 = load double, ptr %183, align 8, !alias.scope !26
  %broadcast.splatinsert119 = insertelement <2 x double> poison, double %207, i64 0
  %broadcast.splat120 = shufflevector <2 x double> %broadcast.splatinsert119, <2 x double> poison, <2 x i32> zeroinitializer
  %208 = load double, ptr %184, align 8, !alias.scope !26
  %broadcast.splatinsert122 = insertelement <2 x double> poison, double %208, i64 0
  %broadcast.splat123 = shufflevector <2 x double> %broadcast.splatinsert122, <2 x double> poison, <2 x i32> zeroinitializer
  %209 = load double, ptr %185, align 8, !alias.scope !26
  %broadcast.splatinsert125 = insertelement <2 x double> poison, double %209, i64 0
  %broadcast.splat126 = shufflevector <2 x double> %broadcast.splatinsert125, <2 x double> poison, <2 x i32> zeroinitializer
  %210 = load double, ptr %186, align 8, !alias.scope !26
  %broadcast.splatinsert128 = insertelement <2 x double> poison, double %210, i64 0
  %broadcast.splat129 = shufflevector <2 x double> %broadcast.splatinsert128, <2 x double> poison, <2 x i32> zeroinitializer
  %211 = load double, ptr %187, align 8, !alias.scope !26
  %broadcast.splatinsert131 = insertelement <2 x double> poison, double %211, i64 0
  %broadcast.splat132 = shufflevector <2 x double> %broadcast.splatinsert131, <2 x double> poison, <2 x i32> zeroinitializer
  %212 = load double, ptr %188, align 8, !alias.scope !26
  %broadcast.splatinsert134 = insertelement <2 x double> poison, double %212, i64 0
  %broadcast.splat135 = shufflevector <2 x double> %broadcast.splatinsert134, <2 x double> poison, <2 x i32> zeroinitializer
  %213 = load double, ptr %189, align 8, !alias.scope !26
  %broadcast.splatinsert137 = insertelement <2 x double> poison, double %213, i64 0
  %broadcast.splat138 = shufflevector <2 x double> %broadcast.splatinsert137, <2 x double> poison, <2 x i32> zeroinitializer
  %214 = load double, ptr %190, align 8, !alias.scope !26
  %broadcast.splatinsert140 = insertelement <2 x double> poison, double %214, i64 0
  %broadcast.splat141 = shufflevector <2 x double> %broadcast.splatinsert140, <2 x double> poison, <2 x i32> zeroinitializer
  %215 = load double, ptr %191, align 8, !alias.scope !26
  %broadcast.splatinsert143 = insertelement <2 x double> poison, double %215, i64 0
  %broadcast.splat144 = shufflevector <2 x double> %broadcast.splatinsert143, <2 x double> poison, <2 x i32> zeroinitializer
  %216 = load double, ptr %192, align 8, !alias.scope !26
  %broadcast.splatinsert146 = insertelement <2 x double> poison, double %216, i64 0
  %broadcast.splat147 = shufflevector <2 x double> %broadcast.splatinsert146, <2 x double> poison, <2 x i32> zeroinitializer
  %217 = load double, ptr %193, align 8, !alias.scope !26
  %broadcast.splatinsert149 = insertelement <2 x double> poison, double %217, i64 0
  %broadcast.splat150 = shufflevector <2 x double> %broadcast.splatinsert149, <2 x double> poison, <2 x i32> zeroinitializer
  %218 = load double, ptr %194, align 8, !alias.scope !26
  %broadcast.splatinsert152 = insertelement <2 x double> poison, double %218, i64 0
  %broadcast.splat153 = shufflevector <2 x double> %broadcast.splatinsert152, <2 x double> poison, <2 x i32> zeroinitializer
  %219 = load double, ptr %195, align 8, !alias.scope !26
  %broadcast.splatinsert155 = insertelement <2 x double> poison, double %219, i64 0
  %broadcast.splat156 = shufflevector <2 x double> %broadcast.splatinsert155, <2 x double> poison, <2 x i32> zeroinitializer
  %220 = load double, ptr %196, align 8, !alias.scope !26
  %broadcast.splatinsert158 = insertelement <2 x double> poison, double %220, i64 0
  %broadcast.splat159 = shufflevector <2 x double> %broadcast.splatinsert158, <2 x double> poison, <2 x i32> zeroinitializer
  %221 = load double, ptr %197, align 8, !alias.scope !26
  %broadcast.splatinsert161 = insertelement <2 x double> poison, double %221, i64 0
  %broadcast.splat162 = shufflevector <2 x double> %broadcast.splatinsert161, <2 x double> poison, <2 x i32> zeroinitializer
  %222 = load double, ptr %198, align 8, !alias.scope !26
  %broadcast.splatinsert164 = insertelement <2 x double> poison, double %222, i64 0
  %broadcast.splat165 = shufflevector <2 x double> %broadcast.splatinsert164, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body92

vector.body92:                                    ; preds = %vector.body92, %vector.ph91
  %index93 = phi i64 [ 0, %vector.ph91 ], [ %index.next166, %vector.body92 ]
  %223 = getelementptr inbounds nuw [8 x i8], ptr %174, i64 %index93
  store <2 x double> zeroinitializer, ptr %223, align 8, !alias.scope !29, !noalias !31
  %224 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %index93
  %wide.load94 = load <2 x double>, ptr %224, align 8, !alias.scope !33
  %225 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat96, <2 x double> %wide.load94, <2 x double> zeroinitializer)
  store <2 x double> %225, ptr %223, align 8, !alias.scope !29, !noalias !31
  %226 = getelementptr inbounds nuw i8, ptr %224, i64 176
  %wide.load97 = load <2 x double>, ptr %226, align 8, !alias.scope !33
  %227 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat99, <2 x double> %wide.load97, <2 x double> %225)
  store <2 x double> %227, ptr %223, align 8, !alias.scope !29, !noalias !31
  %228 = getelementptr inbounds nuw i8, ptr %224, i64 352
  %wide.load100 = load <2 x double>, ptr %228, align 8, !alias.scope !33
  %229 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat102, <2 x double> %wide.load100, <2 x double> %227)
  store <2 x double> %229, ptr %223, align 8, !alias.scope !29, !noalias !31
  %230 = getelementptr inbounds nuw i8, ptr %224, i64 528
  %wide.load103 = load <2 x double>, ptr %230, align 8, !alias.scope !33
  %231 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat105, <2 x double> %wide.load103, <2 x double> %229)
  store <2 x double> %231, ptr %223, align 8, !alias.scope !29, !noalias !31
  %232 = getelementptr inbounds nuw i8, ptr %224, i64 704
  %wide.load106 = load <2 x double>, ptr %232, align 8, !alias.scope !33
  %233 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat108, <2 x double> %wide.load106, <2 x double> %231)
  store <2 x double> %233, ptr %223, align 8, !alias.scope !29, !noalias !31
  %234 = getelementptr inbounds nuw i8, ptr %224, i64 880
  %wide.load109 = load <2 x double>, ptr %234, align 8, !alias.scope !33
  %235 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat111, <2 x double> %wide.load109, <2 x double> %233)
  store <2 x double> %235, ptr %223, align 8, !alias.scope !29, !noalias !31
  %236 = getelementptr inbounds nuw i8, ptr %224, i64 1056
  %wide.load112 = load <2 x double>, ptr %236, align 8, !alias.scope !33
  %237 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat114, <2 x double> %wide.load112, <2 x double> %235)
  store <2 x double> %237, ptr %223, align 8, !alias.scope !29, !noalias !31
  %238 = getelementptr inbounds nuw i8, ptr %224, i64 1232
  %wide.load115 = load <2 x double>, ptr %238, align 8, !alias.scope !33
  %239 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat117, <2 x double> %wide.load115, <2 x double> %237)
  store <2 x double> %239, ptr %223, align 8, !alias.scope !29, !noalias !31
  %240 = getelementptr inbounds nuw i8, ptr %224, i64 1408
  %wide.load118 = load <2 x double>, ptr %240, align 8, !alias.scope !33
  %241 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat120, <2 x double> %wide.load118, <2 x double> %239)
  store <2 x double> %241, ptr %223, align 8, !alias.scope !29, !noalias !31
  %242 = getelementptr inbounds nuw i8, ptr %224, i64 1584
  %wide.load121 = load <2 x double>, ptr %242, align 8, !alias.scope !33
  %243 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat123, <2 x double> %wide.load121, <2 x double> %241)
  store <2 x double> %243, ptr %223, align 8, !alias.scope !29, !noalias !31
  %244 = getelementptr inbounds nuw i8, ptr %224, i64 1760
  %wide.load124 = load <2 x double>, ptr %244, align 8, !alias.scope !33
  %245 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat126, <2 x double> %wide.load124, <2 x double> %243)
  store <2 x double> %245, ptr %223, align 8, !alias.scope !29, !noalias !31
  %246 = getelementptr inbounds nuw i8, ptr %224, i64 1936
  %wide.load127 = load <2 x double>, ptr %246, align 8, !alias.scope !33
  %247 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat129, <2 x double> %wide.load127, <2 x double> %245)
  store <2 x double> %247, ptr %223, align 8, !alias.scope !29, !noalias !31
  %248 = getelementptr inbounds nuw i8, ptr %224, i64 2112
  %wide.load130 = load <2 x double>, ptr %248, align 8, !alias.scope !33
  %249 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat132, <2 x double> %wide.load130, <2 x double> %247)
  store <2 x double> %249, ptr %223, align 8, !alias.scope !29, !noalias !31
  %250 = getelementptr inbounds nuw i8, ptr %224, i64 2288
  %wide.load133 = load <2 x double>, ptr %250, align 8, !alias.scope !33
  %251 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat135, <2 x double> %wide.load133, <2 x double> %249)
  store <2 x double> %251, ptr %223, align 8, !alias.scope !29, !noalias !31
  %252 = getelementptr inbounds nuw i8, ptr %224, i64 2464
  %wide.load136 = load <2 x double>, ptr %252, align 8, !alias.scope !33
  %253 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat138, <2 x double> %wide.load136, <2 x double> %251)
  store <2 x double> %253, ptr %223, align 8, !alias.scope !29, !noalias !31
  %254 = getelementptr inbounds nuw i8, ptr %224, i64 2640
  %wide.load139 = load <2 x double>, ptr %254, align 8, !alias.scope !33
  %255 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat141, <2 x double> %wide.load139, <2 x double> %253)
  store <2 x double> %255, ptr %223, align 8, !alias.scope !29, !noalias !31
  %256 = getelementptr inbounds nuw i8, ptr %224, i64 2816
  %wide.load142 = load <2 x double>, ptr %256, align 8, !alias.scope !33
  %257 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat144, <2 x double> %wide.load142, <2 x double> %255)
  store <2 x double> %257, ptr %223, align 8, !alias.scope !29, !noalias !31
  %258 = getelementptr inbounds nuw i8, ptr %224, i64 2992
  %wide.load145 = load <2 x double>, ptr %258, align 8, !alias.scope !33
  %259 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat147, <2 x double> %wide.load145, <2 x double> %257)
  store <2 x double> %259, ptr %223, align 8, !alias.scope !29, !noalias !31
  %260 = getelementptr inbounds nuw i8, ptr %224, i64 3168
  %wide.load148 = load <2 x double>, ptr %260, align 8, !alias.scope !33
  %261 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat150, <2 x double> %wide.load148, <2 x double> %259)
  store <2 x double> %261, ptr %223, align 8, !alias.scope !29, !noalias !31
  %262 = getelementptr inbounds nuw i8, ptr %224, i64 3344
  %wide.load151 = load <2 x double>, ptr %262, align 8, !alias.scope !33
  %263 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat153, <2 x double> %wide.load151, <2 x double> %261)
  store <2 x double> %263, ptr %223, align 8, !alias.scope !29, !noalias !31
  %264 = getelementptr inbounds nuw i8, ptr %224, i64 3520
  %wide.load154 = load <2 x double>, ptr %264, align 8, !alias.scope !33
  %265 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat156, <2 x double> %wide.load154, <2 x double> %263)
  store <2 x double> %265, ptr %223, align 8, !alias.scope !29, !noalias !31
  %266 = getelementptr inbounds nuw i8, ptr %224, i64 3696
  %wide.load157 = load <2 x double>, ptr %266, align 8, !alias.scope !33
  %267 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat159, <2 x double> %wide.load157, <2 x double> %265)
  store <2 x double> %267, ptr %223, align 8, !alias.scope !29, !noalias !31
  %268 = getelementptr inbounds nuw i8, ptr %224, i64 3872
  %wide.load160 = load <2 x double>, ptr %268, align 8, !alias.scope !33
  %269 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat162, <2 x double> %wide.load160, <2 x double> %267)
  store <2 x double> %269, ptr %223, align 8, !alias.scope !29, !noalias !31
  %270 = getelementptr inbounds nuw i8, ptr %224, i64 4048
  %wide.load163 = load <2 x double>, ptr %270, align 8, !alias.scope !33
  %271 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat165, <2 x double> %wide.load163, <2 x double> %269)
  store <2 x double> %271, ptr %223, align 8, !alias.scope !29, !noalias !31
  %index.next166 = add nuw i64 %index93, 2
  %272 = icmp eq i64 %index.next166, 22
  br i1 %272, label %middle.block167, label %vector.body92, !llvm.loop !34

scalar.ph82:                                      ; preds = %.preheader60, %scalar.ph82
  %indvars.iv88 = phi i64 [ %indvars.iv.next89, %scalar.ph82 ], [ 0, %.preheader60 ]
  %273 = getelementptr inbounds nuw [8 x i8], ptr %174, i64 %indvars.iv88
  store double 0.000000e+00, ptr %273, align 8
  %invariant.gep66 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv88
  %274 = load double, ptr %175, align 8
  %275 = load double, ptr %invariant.gep66, align 8
  %276 = tail call double @llvm.fmuladd.f64(double %274, double %275, double 0.000000e+00)
  store double %276, ptr %273, align 8
  %277 = load double, ptr %176, align 8
  %gep67.1 = getelementptr inbounds nuw i8, ptr %invariant.gep66, i64 176
  %278 = load double, ptr %gep67.1, align 8
  %279 = tail call double @llvm.fmuladd.f64(double %277, double %278, double %276)
  store double %279, ptr %273, align 8
  %280 = load double, ptr %177, align 8
  %gep67.2 = getelementptr inbounds nuw i8, ptr %invariant.gep66, i64 352
  %281 = load double, ptr %gep67.2, align 8
  %282 = tail call double @llvm.fmuladd.f64(double %280, double %281, double %279)
  store double %282, ptr %273, align 8
  %283 = load double, ptr %178, align 8
  %gep67.3 = getelementptr inbounds nuw i8, ptr %invariant.gep66, i64 528
  %284 = load double, ptr %gep67.3, align 8
  %285 = tail call double @llvm.fmuladd.f64(double %283, double %284, double %282)
  store double %285, ptr %273, align 8
  %286 = load double, ptr %179, align 8
  %gep67.4 = getelementptr inbounds nuw i8, ptr %invariant.gep66, i64 704
  %287 = load double, ptr %gep67.4, align 8
  %288 = tail call double @llvm.fmuladd.f64(double %286, double %287, double %285)
  store double %288, ptr %273, align 8
  %289 = load double, ptr %180, align 8
  %gep67.5 = getelementptr inbounds nuw i8, ptr %invariant.gep66, i64 880
  %290 = load double, ptr %gep67.5, align 8
  %291 = tail call double @llvm.fmuladd.f64(double %289, double %290, double %288)
  store double %291, ptr %273, align 8
  %292 = load double, ptr %181, align 8
  %gep67.6 = getelementptr inbounds nuw i8, ptr %invariant.gep66, i64 1056
  %293 = load double, ptr %gep67.6, align 8
  %294 = tail call double @llvm.fmuladd.f64(double %292, double %293, double %291)
  store double %294, ptr %273, align 8
  %295 = load double, ptr %182, align 8
  %gep67.7 = getelementptr inbounds nuw i8, ptr %invariant.gep66, i64 1232
  %296 = load double, ptr %gep67.7, align 8
  %297 = tail call double @llvm.fmuladd.f64(double %295, double %296, double %294)
  store double %297, ptr %273, align 8
  %298 = load double, ptr %183, align 8
  %gep67.8 = getelementptr inbounds nuw i8, ptr %invariant.gep66, i64 1408
  %299 = load double, ptr %gep67.8, align 8
  %300 = tail call double @llvm.fmuladd.f64(double %298, double %299, double %297)
  store double %300, ptr %273, align 8
  %301 = load double, ptr %184, align 8
  %gep67.9 = getelementptr inbounds nuw i8, ptr %invariant.gep66, i64 1584
  %302 = load double, ptr %gep67.9, align 8
  %303 = tail call double @llvm.fmuladd.f64(double %301, double %302, double %300)
  store double %303, ptr %273, align 8
  %304 = load double, ptr %185, align 8
  %gep67.10 = getelementptr inbounds nuw i8, ptr %invariant.gep66, i64 1760
  %305 = load double, ptr %gep67.10, align 8
  %306 = tail call double @llvm.fmuladd.f64(double %304, double %305, double %303)
  store double %306, ptr %273, align 8
  %307 = load double, ptr %186, align 8
  %gep67.11 = getelementptr inbounds nuw i8, ptr %invariant.gep66, i64 1936
  %308 = load double, ptr %gep67.11, align 8
  %309 = tail call double @llvm.fmuladd.f64(double %307, double %308, double %306)
  store double %309, ptr %273, align 8
  %310 = load double, ptr %187, align 8
  %gep67.12 = getelementptr inbounds nuw i8, ptr %invariant.gep66, i64 2112
  %311 = load double, ptr %gep67.12, align 8
  %312 = tail call double @llvm.fmuladd.f64(double %310, double %311, double %309)
  store double %312, ptr %273, align 8
  %313 = load double, ptr %188, align 8
  %gep67.13 = getelementptr inbounds nuw i8, ptr %invariant.gep66, i64 2288
  %314 = load double, ptr %gep67.13, align 8
  %315 = tail call double @llvm.fmuladd.f64(double %313, double %314, double %312)
  store double %315, ptr %273, align 8
  %316 = load double, ptr %189, align 8
  %gep67.14 = getelementptr inbounds nuw i8, ptr %invariant.gep66, i64 2464
  %317 = load double, ptr %gep67.14, align 8
  %318 = tail call double @llvm.fmuladd.f64(double %316, double %317, double %315)
  store double %318, ptr %273, align 8
  %319 = load double, ptr %190, align 8
  %gep67.15 = getelementptr inbounds nuw i8, ptr %invariant.gep66, i64 2640
  %320 = load double, ptr %gep67.15, align 8
  %321 = tail call double @llvm.fmuladd.f64(double %319, double %320, double %318)
  store double %321, ptr %273, align 8
  %322 = load double, ptr %191, align 8
  %gep67.16 = getelementptr inbounds nuw i8, ptr %invariant.gep66, i64 2816
  %323 = load double, ptr %gep67.16, align 8
  %324 = tail call double @llvm.fmuladd.f64(double %322, double %323, double %321)
  store double %324, ptr %273, align 8
  %325 = load double, ptr %192, align 8
  %gep67.17 = getelementptr inbounds nuw i8, ptr %invariant.gep66, i64 2992
  %326 = load double, ptr %gep67.17, align 8
  %327 = tail call double @llvm.fmuladd.f64(double %325, double %326, double %324)
  store double %327, ptr %273, align 8
  %328 = load double, ptr %193, align 8
  %gep67.18 = getelementptr inbounds nuw i8, ptr %invariant.gep66, i64 3168
  %329 = load double, ptr %gep67.18, align 8
  %330 = tail call double @llvm.fmuladd.f64(double %328, double %329, double %327)
  store double %330, ptr %273, align 8
  %331 = load double, ptr %194, align 8
  %gep67.19 = getelementptr inbounds nuw i8, ptr %invariant.gep66, i64 3344
  %332 = load double, ptr %gep67.19, align 8
  %333 = tail call double @llvm.fmuladd.f64(double %331, double %332, double %330)
  store double %333, ptr %273, align 8
  %334 = load double, ptr %195, align 8
  %gep67.20 = getelementptr inbounds nuw i8, ptr %invariant.gep66, i64 3520
  %335 = load double, ptr %gep67.20, align 8
  %336 = tail call double @llvm.fmuladd.f64(double %334, double %335, double %333)
  store double %336, ptr %273, align 8
  %337 = load double, ptr %196, align 8
  %gep67.21 = getelementptr inbounds nuw i8, ptr %invariant.gep66, i64 3696
  %338 = load double, ptr %gep67.21, align 8
  %339 = tail call double @llvm.fmuladd.f64(double %337, double %338, double %336)
  store double %339, ptr %273, align 8
  %340 = load double, ptr %197, align 8
  %gep67.22 = getelementptr inbounds nuw i8, ptr %invariant.gep66, i64 3872
  %341 = load double, ptr %gep67.22, align 8
  %342 = tail call double @llvm.fmuladd.f64(double %340, double %341, double %339)
  store double %342, ptr %273, align 8
  %343 = load double, ptr %198, align 8
  %gep67.23 = getelementptr inbounds nuw i8, ptr %invariant.gep66, i64 4048
  %344 = load double, ptr %gep67.23, align 8
  %345 = tail call double @llvm.fmuladd.f64(double %343, double %344, double %342)
  store double %345, ptr %273, align 8
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1
  %exitcond91.not = icmp eq i64 %indvars.iv.next89, 22
  br i1 %exitcond91.not, label %middle.block167, label %scalar.ph82, !llvm.loop !35

middle.block167:                                  ; preds = %vector.body92, %scalar.ph82
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1
  %exitcond95.not = icmp eq i64 %indvars.iv.next93, 18
  br i1 %exitcond95.not, label %.preheader.preheader, label %.preheader60, !llvm.loop !36

.preheader.preheader:                             ; preds = %middle.block167
  %346 = insertelement <2 x ptr> %11, ptr %3, i64 1
  %347 = getelementptr i8, <2 x ptr> %346, <2 x i64> <i64 2304, i64 3168>
  %scevgep181 = getelementptr i8, ptr %6, i64 2816
  %348 = insertelement <2 x ptr> poison, ptr %6, i64 0
  %349 = shufflevector <2 x ptr> %348, <2 x ptr> poison, <2 x i32> zeroinitializer
  %350 = insertelement <2 x ptr> poison, ptr %scevgep181, i64 0
  %351 = shufflevector <2 x ptr> %350, <2 x ptr> poison, <2 x i32> zeroinitializer
  %352 = icmp ult <2 x ptr> %349, %347
  %353 = icmp ult <2 x ptr> %346, %351
  %354 = and <2 x i1> %352, %353
  %355 = bitcast <2 x i1> %354 to i2
  %.not253 = icmp eq i2 %355, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %middle.block249
  %indvars.iv104 = phi i64 [ %indvars.iv.next105, %middle.block249 ], [ 0, %.preheader.preheader ]
  %356 = getelementptr inbounds nuw [176 x i8], ptr %6, i64 %indvars.iv104
  %357 = getelementptr inbounds nuw [144 x i8], ptr %0, i64 %indvars.iv104
  %358 = getelementptr inbounds nuw i8, ptr %357, i64 8
  %359 = getelementptr inbounds nuw i8, ptr %357, i64 16
  %360 = getelementptr inbounds nuw i8, ptr %357, i64 24
  %361 = getelementptr inbounds nuw i8, ptr %357, i64 32
  %362 = getelementptr inbounds nuw i8, ptr %357, i64 40
  %363 = getelementptr inbounds nuw i8, ptr %357, i64 48
  %364 = getelementptr inbounds nuw i8, ptr %357, i64 56
  %365 = getelementptr inbounds nuw i8, ptr %357, i64 64
  %366 = getelementptr inbounds nuw i8, ptr %357, i64 72
  %367 = getelementptr inbounds nuw i8, ptr %357, i64 80
  %368 = getelementptr inbounds nuw i8, ptr %357, i64 88
  %369 = getelementptr inbounds nuw i8, ptr %357, i64 96
  %370 = getelementptr inbounds nuw i8, ptr %357, i64 104
  %371 = getelementptr inbounds nuw i8, ptr %357, i64 112
  %372 = getelementptr inbounds nuw i8, ptr %357, i64 120
  %373 = getelementptr inbounds nuw i8, ptr %357, i64 128
  %374 = getelementptr inbounds nuw i8, ptr %357, i64 136
  br i1 %.not253, label %vector.ph191, label %scalar.ph182

vector.ph191:                                     ; preds = %.preheader
  %375 = load double, ptr %357, align 8, !alias.scope !37
  %broadcast.splatinsert195 = insertelement <2 x double> poison, double %375, i64 0
  %broadcast.splat196 = shufflevector <2 x double> %broadcast.splatinsert195, <2 x double> poison, <2 x i32> zeroinitializer
  %376 = load double, ptr %358, align 8, !alias.scope !37
  %broadcast.splatinsert198 = insertelement <2 x double> poison, double %376, i64 0
  %broadcast.splat199 = shufflevector <2 x double> %broadcast.splatinsert198, <2 x double> poison, <2 x i32> zeroinitializer
  %377 = load double, ptr %359, align 8, !alias.scope !37
  %broadcast.splatinsert201 = insertelement <2 x double> poison, double %377, i64 0
  %broadcast.splat202 = shufflevector <2 x double> %broadcast.splatinsert201, <2 x double> poison, <2 x i32> zeroinitializer
  %378 = load double, ptr %360, align 8, !alias.scope !37
  %broadcast.splatinsert204 = insertelement <2 x double> poison, double %378, i64 0
  %broadcast.splat205 = shufflevector <2 x double> %broadcast.splatinsert204, <2 x double> poison, <2 x i32> zeroinitializer
  %379 = load double, ptr %361, align 8, !alias.scope !37
  %broadcast.splatinsert207 = insertelement <2 x double> poison, double %379, i64 0
  %broadcast.splat208 = shufflevector <2 x double> %broadcast.splatinsert207, <2 x double> poison, <2 x i32> zeroinitializer
  %380 = load double, ptr %362, align 8, !alias.scope !37
  %broadcast.splatinsert210 = insertelement <2 x double> poison, double %380, i64 0
  %broadcast.splat211 = shufflevector <2 x double> %broadcast.splatinsert210, <2 x double> poison, <2 x i32> zeroinitializer
  %381 = load double, ptr %363, align 8, !alias.scope !37
  %broadcast.splatinsert213 = insertelement <2 x double> poison, double %381, i64 0
  %broadcast.splat214 = shufflevector <2 x double> %broadcast.splatinsert213, <2 x double> poison, <2 x i32> zeroinitializer
  %382 = load double, ptr %364, align 8, !alias.scope !37
  %broadcast.splatinsert216 = insertelement <2 x double> poison, double %382, i64 0
  %broadcast.splat217 = shufflevector <2 x double> %broadcast.splatinsert216, <2 x double> poison, <2 x i32> zeroinitializer
  %383 = load double, ptr %365, align 8, !alias.scope !37
  %broadcast.splatinsert219 = insertelement <2 x double> poison, double %383, i64 0
  %broadcast.splat220 = shufflevector <2 x double> %broadcast.splatinsert219, <2 x double> poison, <2 x i32> zeroinitializer
  %384 = load double, ptr %366, align 8, !alias.scope !37
  %broadcast.splatinsert222 = insertelement <2 x double> poison, double %384, i64 0
  %broadcast.splat223 = shufflevector <2 x double> %broadcast.splatinsert222, <2 x double> poison, <2 x i32> zeroinitializer
  %385 = load double, ptr %367, align 8, !alias.scope !37
  %broadcast.splatinsert225 = insertelement <2 x double> poison, double %385, i64 0
  %broadcast.splat226 = shufflevector <2 x double> %broadcast.splatinsert225, <2 x double> poison, <2 x i32> zeroinitializer
  %386 = load double, ptr %368, align 8, !alias.scope !37
  %broadcast.splatinsert228 = insertelement <2 x double> poison, double %386, i64 0
  %broadcast.splat229 = shufflevector <2 x double> %broadcast.splatinsert228, <2 x double> poison, <2 x i32> zeroinitializer
  %387 = load double, ptr %369, align 8, !alias.scope !37
  %broadcast.splatinsert231 = insertelement <2 x double> poison, double %387, i64 0
  %broadcast.splat232 = shufflevector <2 x double> %broadcast.splatinsert231, <2 x double> poison, <2 x i32> zeroinitializer
  %388 = load double, ptr %370, align 8, !alias.scope !37
  %broadcast.splatinsert234 = insertelement <2 x double> poison, double %388, i64 0
  %broadcast.splat235 = shufflevector <2 x double> %broadcast.splatinsert234, <2 x double> poison, <2 x i32> zeroinitializer
  %389 = load double, ptr %371, align 8, !alias.scope !37
  %broadcast.splatinsert237 = insertelement <2 x double> poison, double %389, i64 0
  %broadcast.splat238 = shufflevector <2 x double> %broadcast.splatinsert237, <2 x double> poison, <2 x i32> zeroinitializer
  %390 = load double, ptr %372, align 8, !alias.scope !37
  %broadcast.splatinsert240 = insertelement <2 x double> poison, double %390, i64 0
  %broadcast.splat241 = shufflevector <2 x double> %broadcast.splatinsert240, <2 x double> poison, <2 x i32> zeroinitializer
  %391 = load double, ptr %373, align 8, !alias.scope !37
  %broadcast.splatinsert243 = insertelement <2 x double> poison, double %391, i64 0
  %broadcast.splat244 = shufflevector <2 x double> %broadcast.splatinsert243, <2 x double> poison, <2 x i32> zeroinitializer
  %392 = load double, ptr %374, align 8, !alias.scope !37
  %broadcast.splatinsert246 = insertelement <2 x double> poison, double %392, i64 0
  %broadcast.splat247 = shufflevector <2 x double> %broadcast.splatinsert246, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body192

vector.body192:                                   ; preds = %vector.body192, %vector.ph191
  %index193 = phi i64 [ 0, %vector.ph191 ], [ %index.next248, %vector.body192 ]
  %393 = getelementptr inbounds nuw [8 x i8], ptr %356, i64 %index193
  store <2 x double> zeroinitializer, ptr %393, align 8, !alias.scope !40, !noalias !42
  %394 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index193
  %wide.load194 = load <2 x double>, ptr %394, align 8, !alias.scope !44
  %395 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat196, <2 x double> %wide.load194, <2 x double> zeroinitializer)
  store <2 x double> %395, ptr %393, align 8, !alias.scope !40, !noalias !42
  %396 = getelementptr inbounds nuw i8, ptr %394, i64 176
  %wide.load197 = load <2 x double>, ptr %396, align 8, !alias.scope !44
  %397 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat199, <2 x double> %wide.load197, <2 x double> %395)
  store <2 x double> %397, ptr %393, align 8, !alias.scope !40, !noalias !42
  %398 = getelementptr inbounds nuw i8, ptr %394, i64 352
  %wide.load200 = load <2 x double>, ptr %398, align 8, !alias.scope !44
  %399 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat202, <2 x double> %wide.load200, <2 x double> %397)
  store <2 x double> %399, ptr %393, align 8, !alias.scope !40, !noalias !42
  %400 = getelementptr inbounds nuw i8, ptr %394, i64 528
  %wide.load203 = load <2 x double>, ptr %400, align 8, !alias.scope !44
  %401 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat205, <2 x double> %wide.load203, <2 x double> %399)
  store <2 x double> %401, ptr %393, align 8, !alias.scope !40, !noalias !42
  %402 = getelementptr inbounds nuw i8, ptr %394, i64 704
  %wide.load206 = load <2 x double>, ptr %402, align 8, !alias.scope !44
  %403 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat208, <2 x double> %wide.load206, <2 x double> %401)
  store <2 x double> %403, ptr %393, align 8, !alias.scope !40, !noalias !42
  %404 = getelementptr inbounds nuw i8, ptr %394, i64 880
  %wide.load209 = load <2 x double>, ptr %404, align 8, !alias.scope !44
  %405 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat211, <2 x double> %wide.load209, <2 x double> %403)
  store <2 x double> %405, ptr %393, align 8, !alias.scope !40, !noalias !42
  %406 = getelementptr inbounds nuw i8, ptr %394, i64 1056
  %wide.load212 = load <2 x double>, ptr %406, align 8, !alias.scope !44
  %407 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat214, <2 x double> %wide.load212, <2 x double> %405)
  store <2 x double> %407, ptr %393, align 8, !alias.scope !40, !noalias !42
  %408 = getelementptr inbounds nuw i8, ptr %394, i64 1232
  %wide.load215 = load <2 x double>, ptr %408, align 8, !alias.scope !44
  %409 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat217, <2 x double> %wide.load215, <2 x double> %407)
  store <2 x double> %409, ptr %393, align 8, !alias.scope !40, !noalias !42
  %410 = getelementptr inbounds nuw i8, ptr %394, i64 1408
  %wide.load218 = load <2 x double>, ptr %410, align 8, !alias.scope !44
  %411 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat220, <2 x double> %wide.load218, <2 x double> %409)
  store <2 x double> %411, ptr %393, align 8, !alias.scope !40, !noalias !42
  %412 = getelementptr inbounds nuw i8, ptr %394, i64 1584
  %wide.load221 = load <2 x double>, ptr %412, align 8, !alias.scope !44
  %413 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat223, <2 x double> %wide.load221, <2 x double> %411)
  store <2 x double> %413, ptr %393, align 8, !alias.scope !40, !noalias !42
  %414 = getelementptr inbounds nuw i8, ptr %394, i64 1760
  %wide.load224 = load <2 x double>, ptr %414, align 8, !alias.scope !44
  %415 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat226, <2 x double> %wide.load224, <2 x double> %413)
  store <2 x double> %415, ptr %393, align 8, !alias.scope !40, !noalias !42
  %416 = getelementptr inbounds nuw i8, ptr %394, i64 1936
  %wide.load227 = load <2 x double>, ptr %416, align 8, !alias.scope !44
  %417 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat229, <2 x double> %wide.load227, <2 x double> %415)
  store <2 x double> %417, ptr %393, align 8, !alias.scope !40, !noalias !42
  %418 = getelementptr inbounds nuw i8, ptr %394, i64 2112
  %wide.load230 = load <2 x double>, ptr %418, align 8, !alias.scope !44
  %419 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat232, <2 x double> %wide.load230, <2 x double> %417)
  store <2 x double> %419, ptr %393, align 8, !alias.scope !40, !noalias !42
  %420 = getelementptr inbounds nuw i8, ptr %394, i64 2288
  %wide.load233 = load <2 x double>, ptr %420, align 8, !alias.scope !44
  %421 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat235, <2 x double> %wide.load233, <2 x double> %419)
  store <2 x double> %421, ptr %393, align 8, !alias.scope !40, !noalias !42
  %422 = getelementptr inbounds nuw i8, ptr %394, i64 2464
  %wide.load236 = load <2 x double>, ptr %422, align 8, !alias.scope !44
  %423 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat238, <2 x double> %wide.load236, <2 x double> %421)
  store <2 x double> %423, ptr %393, align 8, !alias.scope !40, !noalias !42
  %424 = getelementptr inbounds nuw i8, ptr %394, i64 2640
  %wide.load239 = load <2 x double>, ptr %424, align 8, !alias.scope !44
  %425 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat241, <2 x double> %wide.load239, <2 x double> %423)
  store <2 x double> %425, ptr %393, align 8, !alias.scope !40, !noalias !42
  %426 = getelementptr inbounds nuw i8, ptr %394, i64 2816
  %wide.load242 = load <2 x double>, ptr %426, align 8, !alias.scope !44
  %427 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat244, <2 x double> %wide.load242, <2 x double> %425)
  store <2 x double> %427, ptr %393, align 8, !alias.scope !40, !noalias !42
  %428 = getelementptr inbounds nuw i8, ptr %394, i64 2992
  %wide.load245 = load <2 x double>, ptr %428, align 8, !alias.scope !44
  %429 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat247, <2 x double> %wide.load245, <2 x double> %427)
  store <2 x double> %429, ptr %393, align 8, !alias.scope !40, !noalias !42
  %index.next248 = add nuw i64 %index193, 2
  %430 = icmp eq i64 %index.next248, 22
  br i1 %430, label %middle.block249, label %vector.body192, !llvm.loop !45

scalar.ph182:                                     ; preds = %.preheader, %scalar.ph182
  %indvars.iv100 = phi i64 [ %indvars.iv.next101, %scalar.ph182 ], [ 0, %.preheader ]
  %431 = getelementptr inbounds nuw [8 x i8], ptr %356, i64 %indvars.iv100
  store double 0.000000e+00, ptr %431, align 8
  %invariant.gep72 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv100
  %432 = load double, ptr %357, align 8
  %433 = load double, ptr %invariant.gep72, align 8
  %434 = tail call double @llvm.fmuladd.f64(double %432, double %433, double 0.000000e+00)
  store double %434, ptr %431, align 8
  %435 = load double, ptr %358, align 8
  %gep73.1 = getelementptr inbounds nuw i8, ptr %invariant.gep72, i64 176
  %436 = load double, ptr %gep73.1, align 8
  %437 = tail call double @llvm.fmuladd.f64(double %435, double %436, double %434)
  store double %437, ptr %431, align 8
  %438 = load double, ptr %359, align 8
  %gep73.2 = getelementptr inbounds nuw i8, ptr %invariant.gep72, i64 352
  %439 = load double, ptr %gep73.2, align 8
  %440 = tail call double @llvm.fmuladd.f64(double %438, double %439, double %437)
  store double %440, ptr %431, align 8
  %441 = load double, ptr %360, align 8
  %gep73.3 = getelementptr inbounds nuw i8, ptr %invariant.gep72, i64 528
  %442 = load double, ptr %gep73.3, align 8
  %443 = tail call double @llvm.fmuladd.f64(double %441, double %442, double %440)
  store double %443, ptr %431, align 8
  %444 = load double, ptr %361, align 8
  %gep73.4 = getelementptr inbounds nuw i8, ptr %invariant.gep72, i64 704
  %445 = load double, ptr %gep73.4, align 8
  %446 = tail call double @llvm.fmuladd.f64(double %444, double %445, double %443)
  store double %446, ptr %431, align 8
  %447 = load double, ptr %362, align 8
  %gep73.5 = getelementptr inbounds nuw i8, ptr %invariant.gep72, i64 880
  %448 = load double, ptr %gep73.5, align 8
  %449 = tail call double @llvm.fmuladd.f64(double %447, double %448, double %446)
  store double %449, ptr %431, align 8
  %450 = load double, ptr %363, align 8
  %gep73.6 = getelementptr inbounds nuw i8, ptr %invariant.gep72, i64 1056
  %451 = load double, ptr %gep73.6, align 8
  %452 = tail call double @llvm.fmuladd.f64(double %450, double %451, double %449)
  store double %452, ptr %431, align 8
  %453 = load double, ptr %364, align 8
  %gep73.7 = getelementptr inbounds nuw i8, ptr %invariant.gep72, i64 1232
  %454 = load double, ptr %gep73.7, align 8
  %455 = tail call double @llvm.fmuladd.f64(double %453, double %454, double %452)
  store double %455, ptr %431, align 8
  %456 = load double, ptr %365, align 8
  %gep73.8 = getelementptr inbounds nuw i8, ptr %invariant.gep72, i64 1408
  %457 = load double, ptr %gep73.8, align 8
  %458 = tail call double @llvm.fmuladd.f64(double %456, double %457, double %455)
  store double %458, ptr %431, align 8
  %459 = load double, ptr %366, align 8
  %gep73.9 = getelementptr inbounds nuw i8, ptr %invariant.gep72, i64 1584
  %460 = load double, ptr %gep73.9, align 8
  %461 = tail call double @llvm.fmuladd.f64(double %459, double %460, double %458)
  store double %461, ptr %431, align 8
  %462 = load double, ptr %367, align 8
  %gep73.10 = getelementptr inbounds nuw i8, ptr %invariant.gep72, i64 1760
  %463 = load double, ptr %gep73.10, align 8
  %464 = tail call double @llvm.fmuladd.f64(double %462, double %463, double %461)
  store double %464, ptr %431, align 8
  %465 = load double, ptr %368, align 8
  %gep73.11 = getelementptr inbounds nuw i8, ptr %invariant.gep72, i64 1936
  %466 = load double, ptr %gep73.11, align 8
  %467 = tail call double @llvm.fmuladd.f64(double %465, double %466, double %464)
  store double %467, ptr %431, align 8
  %468 = load double, ptr %369, align 8
  %gep73.12 = getelementptr inbounds nuw i8, ptr %invariant.gep72, i64 2112
  %469 = load double, ptr %gep73.12, align 8
  %470 = tail call double @llvm.fmuladd.f64(double %468, double %469, double %467)
  store double %470, ptr %431, align 8
  %471 = load double, ptr %370, align 8
  %gep73.13 = getelementptr inbounds nuw i8, ptr %invariant.gep72, i64 2288
  %472 = load double, ptr %gep73.13, align 8
  %473 = tail call double @llvm.fmuladd.f64(double %471, double %472, double %470)
  store double %473, ptr %431, align 8
  %474 = load double, ptr %371, align 8
  %gep73.14 = getelementptr inbounds nuw i8, ptr %invariant.gep72, i64 2464
  %475 = load double, ptr %gep73.14, align 8
  %476 = tail call double @llvm.fmuladd.f64(double %474, double %475, double %473)
  store double %476, ptr %431, align 8
  %477 = load double, ptr %372, align 8
  %gep73.15 = getelementptr inbounds nuw i8, ptr %invariant.gep72, i64 2640
  %478 = load double, ptr %gep73.15, align 8
  %479 = tail call double @llvm.fmuladd.f64(double %477, double %478, double %476)
  store double %479, ptr %431, align 8
  %480 = load double, ptr %373, align 8
  %gep73.16 = getelementptr inbounds nuw i8, ptr %invariant.gep72, i64 2816
  %481 = load double, ptr %gep73.16, align 8
  %482 = tail call double @llvm.fmuladd.f64(double %480, double %481, double %479)
  store double %482, ptr %431, align 8
  %483 = load double, ptr %374, align 8
  %gep73.17 = getelementptr inbounds nuw i8, ptr %invariant.gep72, i64 2992
  %484 = load double, ptr %gep73.17, align 8
  %485 = tail call double @llvm.fmuladd.f64(double %483, double %484, double %482)
  store double %485, ptr %431, align 8
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1
  %exitcond103.not = icmp eq i64 %indvars.iv.next101, 22
  br i1 %exitcond103.not, label %middle.block249, label %scalar.ph182, !llvm.loop !46

middle.block249:                                  ; preds = %vector.body192, %scalar.ph182
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1
  %exitcond107.not = icmp eq i64 %indvars.iv.next105, 16
  br i1 %exitcond107.not, label %486, label %.preheader, !llvm.loop !47

486:                                              ; preds = %middle.block249
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @print_array(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
  %2 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %fwrite = tail call i64 @fwrite(ptr nonnull @"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@", i64 22, i64 1, ptr %2)
  %3 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@", ptr noundef nonnull @"??_C@_01BBODEMC@G?$AA@") #9
  br label %.preheader

.preheader:                                       ; preds = %1, %19
  %indvars.iv18 = phi i64 [ 0, %1 ], [ %indvars.iv.next19, %19 ]
  %5 = shl nuw nsw i64 %indvars.iv18, 4
  %6 = getelementptr inbounds nuw [176 x i8], ptr %0, i64 %indvars.iv18
  br label %7

7:                                                ; preds = %.preheader, %14
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %14 ]
  %8 = add nuw nsw i64 %indvars.iv, %5
  %9 = trunc nuw nsw i64 %8 to i32
  %10 = urem i32 %9, 20
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %fputc = tail call i32 @fputc(i32 10, ptr %13)
  br label %14

14:                                               ; preds = %12, %7
  %15 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv
  %16 = load double, ptr %15, align 8
  %17 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@", double noundef %16) #9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 22
  br i1 %exitcond.not, label %19, label %7, !llvm.loop !48

19:                                               ; preds = %14
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  %exitcond21.not = icmp eq i64 %indvars.iv.next19, 16
  br i1 %exitcond21.not, label %20, label %.preheader, !llvm.loop !49

20:                                               ; preds = %19
  %21 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@", ptr noundef nonnull @"??_C@_01BBODEMC@G?$AA@") #9
  %23 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
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
!1 = !DIFile(filename: "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\linear-algebra\\kernels\\3mm\\3mm.c", directory: "C:\\work\\llvm-profitability-research")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"MaxTLSAlign", i32 65536}
!6 = !{!"clang version 24.0.0git (https://github.com/llvm/llvm-project.git 6f4196219399a3502cea3beb2d0c8c28b2241649)"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = !{!12}
!12 = distinct !{!12, !13}
!13 = distinct !{!13, i1 false, !"LVerDomain"}
!14 = !{!15}
!15 = distinct !{!15, !13}
!16 = !{!12, !17}
!17 = distinct !{!17, !13}
!18 = !{!17}
!19 = distinct !{!19, !8, !20, !21, !22}
!20 = !{!"llvm.loop.isvectorized", i32 1}
!21 = !{!"llvm.loop.vectorize.body", i32 1}
!22 = !{!"llvm.loop.unroll.runtime.disable"}
!23 = distinct !{!23, !8, !20, !24}
!24 = !{!"llvm.loop.vectorize.epilogue", i32 1}
!25 = distinct !{!25, !8}
!26 = !{!27}
!27 = distinct !{!27, !28}
!28 = distinct !{!28, i1 false, !"LVerDomain"}
!29 = !{!30}
!30 = distinct !{!30, !28}
!31 = !{!27, !32}
!32 = distinct !{!32, !28}
!33 = !{!32}
!34 = distinct !{!34, !8, !20, !21, !22}
!35 = distinct !{!35, !8, !20, !24}
!36 = distinct !{!36, !8}
!37 = !{!38}
!38 = distinct !{!38, !39}
!39 = distinct !{!39, i1 false, !"LVerDomain"}
!40 = !{!41}
!41 = distinct !{!41, !39}
!42 = !{!38, !43}
!43 = distinct !{!43, !39}
!44 = !{!43}
!45 = distinct !{!45, !8, !20, !21, !22}
!46 = distinct !{!46, !8, !20, !24}
!47 = distinct !{!47, !8}
!48 = distinct !{!48, !8}
!49 = distinct !{!49, !8}
