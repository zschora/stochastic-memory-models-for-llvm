; ModuleID = 'C:\work\llvm-profitability-research\results\r1\EXP-20261107-R12-discovery\polybench\2mm\frontend.ll'
source_filename = "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\linear-algebra\\kernels\\2mm\\2mm.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc19.51.36260"

$__local_stdio_printf_options = comdat any

$fprintf = comdat any

$_vfprintf_l = comdat any

$"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = comdat any

$"??_C@_01CKDDGHAB@D?$AA@" = comdat any

$"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@" = comdat any

$"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@" = comdat any

$"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@" = comdat any

$"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = comdat any

@__local_stdio_printf_options._OptionsStorage = internal global i64 0, align 8
@"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", comdat, align 8
@"??_C@_01CKDDGHAB@D?$AA@" = linkonce_odr dso_local unnamed_addr constant [2 x i8] c"D\00", comdat, align 4
@"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"begin dump: %s\00", comdat, align 8
@"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [8 x i8] c"%0.2lf \00", comdat, align 8
@"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", comdat, align 8
@"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", comdat, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 288, i32 noundef 8) #9
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 352, i32 noundef 8) #9
  %7 = tail call ptr @polybench_alloc_data(i64 noundef 396, i32 noundef 8) #9
  %8 = tail call ptr @polybench_alloc_data(i64 noundef 432, i32 noundef 8) #9
  %9 = tail call ptr @polybench_alloc_data(i64 noundef 384, i32 noundef 8) #9
  call fastcc void @init_array(ptr noundef %3, ptr noundef %4, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9)
  %10 = load double, ptr %4, align 8
  %11 = load double, ptr %3, align 8
  tail call fastcc void @kernel_2mm(double noundef %11, double noundef %10, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9)
  %12 = icmp sgt i32 %0, 42
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load ptr, ptr %1, align 8
  %strcmpload = load i8, ptr %14, align 1
  %.not = icmp eq i8 %strcmpload, 0
  br i1 %.not, label %15, label %16

15:                                               ; preds = %13
  tail call fastcc void @print_array(ptr noundef %9)
  br label %16

16:                                               ; preds = %15, %13, %2
  tail call void @free(ptr noundef %5)
  tail call void @free(ptr noundef %6)
  tail call void @free(ptr noundef %7)
  tail call void @free(ptr noundef %8)
  tail call void @free(ptr noundef %9)
  ret i32 0
}

declare dso_local ptr @polybench_alloc_data(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: write) uwtable
define internal fastcc void @init_array(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) unnamed_addr #2 {
  store double 1.500000e+00, ptr %0, align 8
  store double 1.200000e+00, ptr %1, align 8
  br label %.preheader67

.preheader67:                                     ; preds = %6, %.preheader67
  %indvars.iv = phi i64 [ 0, %6 ], [ %8, %.preheader67 ]
  %7 = getelementptr inbounds nuw [176 x i8], ptr %2, i64 %indvars.iv
  %8 = add nuw nsw i64 %indvars.iv, 1
  %9 = trunc nuw nsw i64 %8 to i32
  %10 = and i32 %9, 15
  %11 = uitofp nneg i32 %10 to double
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %12 = trunc i64 %indvars.iv to i32
  %13 = mul i32 %12, 3
  %14 = shl i32 %indvars.iv.tr, 1
  %15 = and i32 %14, 14
  %16 = or disjoint i32 %15, 1
  %17 = uitofp nneg i32 %16 to double
  %18 = add i32 %13, 1
  %19 = and i32 %18, 15
  %20 = uitofp nneg i32 %19 to double
  %21 = insertelement <4 x double> poison, double %17, i64 0
  %22 = insertelement <4 x double> %21, double %20, i64 1
  %23 = insertelement <4 x double> <double 1.000000e+00, double poison, double poison, double poison>, double %11, i64 1
  %24 = shufflevector <4 x double> %23, <4 x double> %22, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %25 = fmul nnan <4 x double> %24, splat (double 6.250000e-02)
  store <4 x double> %25, ptr %7, align 8
  %26 = trunc i64 %indvars.iv to i8
  %27 = insertelement <4 x i8> poison, i8 %26, i64 0
  %28 = shufflevector <4 x i8> %27, <4 x i8> poison, <4 x i32> zeroinitializer
  %29 = getelementptr inbounds nuw i8, ptr %7, i64 32
  %30 = mul <4 x i8> %28, <i8 4, i8 5, i8 6, i8 7>
  %31 = add <4 x i8> %30, <i8 0, i8 1, i8 0, i8 1>
  %32 = and <4 x i8> %31, <i8 12, i8 15, i8 14, i8 15>
  %33 = or disjoint <4 x i8> %32, <i8 1, i8 0, i8 1, i8 0>
  %34 = uitofp nneg <4 x i8> %33 to <4 x double>
  %35 = fmul nnan <4 x double> %34, splat (double 6.250000e-02)
  store <4 x double> %35, ptr %29, align 8
  %36 = trunc i64 %indvars.iv to i8
  %37 = insertelement <4 x i8> poison, i8 %36, i64 0
  %38 = shufflevector <4 x i8> %37, <4 x i8> poison, <4 x i32> zeroinitializer
  %39 = getelementptr inbounds nuw i8, ptr %7, i64 64
  %40 = mul <4 x i8> %38, <i8 8, i8 9, i8 10, i8 11>
  %41 = add <4 x i8> %40, <i8 0, i8 1, i8 0, i8 1>
  %42 = and <4 x i8> %41, <i8 8, i8 15, i8 14, i8 15>
  %43 = or disjoint <4 x i8> %42, <i8 1, i8 0, i8 1, i8 0>
  %44 = uitofp nneg <4 x i8> %43 to <4 x double>
  %45 = fmul nnan <4 x double> %44, splat (double 6.250000e-02)
  store <4 x double> %45, ptr %39, align 8
  %46 = trunc i64 %indvars.iv to i8
  %47 = insertelement <4 x i8> poison, i8 %46, i64 0
  %48 = shufflevector <4 x i8> %47, <4 x i8> poison, <4 x i32> zeroinitializer
  %49 = getelementptr inbounds nuw i8, ptr %7, i64 96
  %50 = mul <4 x i8> %48, <i8 12, i8 13, i8 14, i8 15>
  %51 = add <4 x i8> %50, <i8 0, i8 1, i8 0, i8 1>
  %52 = and <4 x i8> %51, <i8 12, i8 15, i8 14, i8 15>
  %53 = or disjoint <4 x i8> %52, <i8 1, i8 0, i8 1, i8 0>
  %54 = uitofp nneg <4 x i8> %53 to <4 x double>
  %55 = fmul nnan <4 x double> %54, splat (double 6.250000e-02)
  store <4 x double> %55, ptr %49, align 8
  %56 = getelementptr inbounds nuw i8, ptr %7, i64 128
  %57 = trunc i64 %indvars.iv to i32
  %58 = add i32 %57, 1
  %59 = and i32 %58, 15
  %60 = uitofp nneg i32 %59 to double
  %61 = trunc i64 %indvars.iv to i32
  %62 = trunc i64 %indvars.iv to i32
  %63 = mul i32 %62, 3
  %64 = shl i32 %61, 1
  %65 = and i32 %64, 14
  %66 = or disjoint i32 %65, 1
  %67 = uitofp nneg i32 %66 to double
  %68 = add i32 %63, 1
  %69 = and i32 %68, 15
  %70 = uitofp nneg i32 %69 to double
  %71 = insertelement <4 x double> poison, double %67, i64 0
  %72 = insertelement <4 x double> %71, double %70, i64 1
  %73 = insertelement <4 x double> <double 1.000000e+00, double poison, double poison, double poison>, double %60, i64 1
  %74 = shufflevector <4 x double> %73, <4 x double> %72, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %75 = fmul nnan <4 x double> %74, splat (double 6.250000e-02)
  store <4 x double> %75, ptr %56, align 8
  %76 = trunc i64 %indvars.iv to i32
  %77 = getelementptr inbounds nuw i8, ptr %7, i64 160
  %78 = trunc i64 %indvars.iv to i32
  %79 = shl i32 %76, 2
  %80 = and i32 %79, 12
  %81 = or disjoint i32 %80, 1
  %82 = uitofp nneg i32 %81 to double
  %83 = mul i32 %78, 5
  %84 = add i32 %83, 1
  %85 = and i32 %84, 15
  %86 = uitofp nneg i32 %85 to double
  %87 = insertelement <2 x double> poison, double %82, i64 0
  %88 = insertelement <2 x double> %87, double %86, i64 1
  %89 = fmul nnan <2 x double> %88, splat (double 6.250000e-02)
  store <2 x double> %89, ptr %77, align 8
  %exitcond.not = icmp eq i64 %8, 16
  br i1 %exitcond.not, label %vector.body, label %.preheader67, !llvm.loop !7

vector.body:                                      ; preds = %.preheader67, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader67 ]
  %vec.ind = phi <2 x i32> [ %vec.ind.next, %vector.body ], [ <i32 0, i32 1>, %.preheader67 ]
  %vec.ind1 = phi <2 x i32> [ %vec.ind.next17, %vector.body ], [ <i32 0, i32 1>, %.preheader67 ]
  %vec.ind2 = phi <2 x i32> [ %vec.ind.next18, %vector.body ], [ <i32 0, i32 1>, %.preheader67 ]
  %vec.ind3 = phi <2 x i32> [ %vec.ind.next19, %vector.body ], [ <i32 0, i32 1>, %.preheader67 ]
  %vec.ind4 = phi <2 x i32> [ %vec.ind.next20, %vector.body ], [ <i32 0, i32 1>, %.preheader67 ]
  %vec.ind5 = phi <2 x i32> [ %vec.ind.next21, %vector.body ], [ <i32 0, i32 1>, %.preheader67 ]
  %vec.ind6 = phi <2 x i32> [ %vec.ind.next22, %vector.body ], [ <i32 0, i32 1>, %.preheader67 ]
  %vec.ind7 = phi <2 x i32> [ %vec.ind.next23, %vector.body ], [ <i32 0, i32 1>, %.preheader67 ]
  %vec.ind8 = phi <2 x i32> [ %vec.ind.next24, %vector.body ], [ <i32 0, i32 1>, %.preheader67 ]
  %vec.ind9 = phi <2 x i32> [ %vec.ind.next25, %vector.body ], [ <i32 0, i32 1>, %.preheader67 ]
  %vec.ind10 = phi <2 x i32> [ %vec.ind.next26, %vector.body ], [ <i32 0, i32 1>, %.preheader67 ]
  %vec.ind11 = phi <2 x i32> [ %vec.ind.next27, %vector.body ], [ <i32 0, i32 1>, %.preheader67 ]
  %vec.ind12 = phi <2 x i32> [ %vec.ind.next28, %vector.body ], [ <i32 0, i32 1>, %.preheader67 ]
  %vec.ind13 = phi <2 x i32> [ %vec.ind.next29, %vector.body ], [ <i32 0, i32 1>, %.preheader67 ]
  %vec.ind14 = phi <2 x i32> [ %vec.ind.next30, %vector.body ], [ <i32 0, i32 1>, %.preheader67 ]
  %vec.ind15 = phi <2 x i32> [ %vec.ind.next31, %vector.body ], [ <i32 0, i32 1>, %.preheader67 ]
  %vec.ind16 = phi <2 x i32> [ %vec.ind.next32, %vector.body ], [ <i32 0, i32 1>, %.preheader67 ]
  %90 = getelementptr inbounds nuw [144 x i8], ptr %3, i64 %index
  %91 = getelementptr inbounds nuw [144 x i8], ptr %3, i64 %index
  %92 = getelementptr inbounds nuw i8, ptr %91, i64 144
  %93 = urem <2 x i32> %vec.ind, splat (i32 18)
  %94 = uitofp nneg <2 x i32> %93 to <2 x double>
  %95 = fdiv <2 x double> %94, splat (double 1.800000e+01)
  %96 = extractelement <2 x double> %95, i64 0
  store double %96, ptr %90, align 8
  %97 = shl nuw nsw <2 x i32> %vec.ind1, splat (i32 1)
  %98 = urem <2 x i32> %97, splat (i32 18)
  %99 = uitofp nneg <2 x i32> %98 to <2 x double>
  %100 = fdiv <2 x double> %99, splat (double 1.800000e+01)
  %101 = getelementptr inbounds nuw i8, ptr %90, i64 8
  %102 = extractelement <2 x double> %100, i64 0
  store double %102, ptr %101, align 8
  %103 = shufflevector <2 x double> %95, <2 x double> %100, <2 x i32> <i32 1, i32 3>
  store <2 x double> %103, ptr %92, align 8
  %104 = mul <2 x i32> %vec.ind2, splat (i32 3)
  %105 = urem <2 x i32> %104, splat (i32 18)
  %106 = uitofp nneg <2 x i32> %105 to <2 x double>
  %107 = fdiv <2 x double> %106, splat (double 1.800000e+01)
  %108 = getelementptr inbounds nuw i8, ptr %90, i64 16
  %109 = getelementptr inbounds nuw i8, ptr %91, i64 160
  %110 = extractelement <2 x double> %107, i64 0
  store double %110, ptr %108, align 8
  %111 = shl nuw nsw <2 x i32> %vec.ind3, splat (i32 2)
  %112 = urem <2 x i32> %111, splat (i32 18)
  %113 = uitofp nneg <2 x i32> %112 to <2 x double>
  %114 = fdiv <2 x double> %113, splat (double 1.800000e+01)
  %115 = getelementptr inbounds nuw i8, ptr %90, i64 24
  %116 = extractelement <2 x double> %114, i64 0
  store double %116, ptr %115, align 8
  %117 = shufflevector <2 x double> %107, <2 x double> %114, <2 x i32> <i32 1, i32 3>
  store <2 x double> %117, ptr %109, align 8
  %118 = mul <2 x i32> %vec.ind4, splat (i32 5)
  %119 = urem <2 x i32> %118, splat (i32 18)
  %120 = uitofp nneg <2 x i32> %119 to <2 x double>
  %121 = fdiv <2 x double> %120, splat (double 1.800000e+01)
  %122 = getelementptr inbounds nuw i8, ptr %90, i64 32
  %123 = getelementptr inbounds nuw i8, ptr %91, i64 176
  %124 = extractelement <2 x double> %121, i64 0
  store double %124, ptr %122, align 8
  %125 = mul <2 x i32> %vec.ind5, splat (i32 6)
  %126 = urem <2 x i32> %125, splat (i32 18)
  %127 = uitofp nneg <2 x i32> %126 to <2 x double>
  %128 = fdiv <2 x double> %127, splat (double 1.800000e+01)
  %129 = getelementptr inbounds nuw i8, ptr %90, i64 40
  %130 = extractelement <2 x double> %128, i64 0
  store double %130, ptr %129, align 8
  %131 = shufflevector <2 x double> %121, <2 x double> %128, <2 x i32> <i32 1, i32 3>
  store <2 x double> %131, ptr %123, align 8
  %132 = mul <2 x i32> %vec.ind6, splat (i32 7)
  %133 = urem <2 x i32> %132, splat (i32 18)
  %134 = uitofp nneg <2 x i32> %133 to <2 x double>
  %135 = fdiv <2 x double> %134, splat (double 1.800000e+01)
  %136 = getelementptr inbounds nuw i8, ptr %90, i64 48
  %137 = getelementptr inbounds nuw i8, ptr %91, i64 192
  %138 = extractelement <2 x double> %135, i64 0
  store double %138, ptr %136, align 8
  %139 = shl nuw nsw <2 x i32> %vec.ind7, splat (i32 3)
  %140 = urem <2 x i32> %139, splat (i32 18)
  %141 = uitofp nneg <2 x i32> %140 to <2 x double>
  %142 = fdiv <2 x double> %141, splat (double 1.800000e+01)
  %143 = getelementptr inbounds nuw i8, ptr %90, i64 56
  %144 = extractelement <2 x double> %142, i64 0
  store double %144, ptr %143, align 8
  %145 = shufflevector <2 x double> %135, <2 x double> %142, <2 x i32> <i32 1, i32 3>
  store <2 x double> %145, ptr %137, align 8
  %146 = mul <2 x i32> %vec.ind8, splat (i32 9)
  %147 = urem <2 x i32> %146, splat (i32 18)
  %148 = uitofp nneg <2 x i32> %147 to <2 x double>
  %149 = fdiv <2 x double> %148, splat (double 1.800000e+01)
  %150 = getelementptr inbounds nuw i8, ptr %90, i64 64
  %151 = getelementptr inbounds nuw i8, ptr %91, i64 208
  %152 = extractelement <2 x double> %149, i64 0
  store double %152, ptr %150, align 8
  %153 = mul <2 x i32> %vec.ind9, splat (i32 10)
  %154 = urem <2 x i32> %153, splat (i32 18)
  %155 = uitofp nneg <2 x i32> %154 to <2 x double>
  %156 = fdiv <2 x double> %155, splat (double 1.800000e+01)
  %157 = getelementptr inbounds nuw i8, ptr %90, i64 72
  %158 = extractelement <2 x double> %156, i64 0
  store double %158, ptr %157, align 8
  %159 = shufflevector <2 x double> %149, <2 x double> %156, <2 x i32> <i32 1, i32 3>
  store <2 x double> %159, ptr %151, align 8
  %160 = mul <2 x i32> %vec.ind10, splat (i32 11)
  %161 = urem <2 x i32> %160, splat (i32 18)
  %162 = uitofp nneg <2 x i32> %161 to <2 x double>
  %163 = fdiv <2 x double> %162, splat (double 1.800000e+01)
  %164 = getelementptr inbounds nuw i8, ptr %90, i64 80
  %165 = getelementptr inbounds nuw i8, ptr %91, i64 224
  %166 = extractelement <2 x double> %163, i64 0
  store double %166, ptr %164, align 8
  %167 = mul <2 x i32> %vec.ind11, splat (i32 12)
  %168 = urem <2 x i32> %167, splat (i32 18)
  %169 = uitofp nneg <2 x i32> %168 to <2 x double>
  %170 = fdiv <2 x double> %169, splat (double 1.800000e+01)
  %171 = getelementptr inbounds nuw i8, ptr %90, i64 88
  %172 = extractelement <2 x double> %170, i64 0
  store double %172, ptr %171, align 8
  %173 = shufflevector <2 x double> %163, <2 x double> %170, <2 x i32> <i32 1, i32 3>
  store <2 x double> %173, ptr %165, align 8
  %174 = mul <2 x i32> %vec.ind12, splat (i32 13)
  %175 = urem <2 x i32> %174, splat (i32 18)
  %176 = uitofp nneg <2 x i32> %175 to <2 x double>
  %177 = fdiv <2 x double> %176, splat (double 1.800000e+01)
  %178 = getelementptr inbounds nuw i8, ptr %90, i64 96
  %179 = getelementptr inbounds nuw i8, ptr %91, i64 240
  %180 = extractelement <2 x double> %177, i64 0
  store double %180, ptr %178, align 8
  %181 = mul <2 x i32> %vec.ind13, splat (i32 14)
  %182 = urem <2 x i32> %181, splat (i32 18)
  %183 = uitofp nneg <2 x i32> %182 to <2 x double>
  %184 = fdiv <2 x double> %183, splat (double 1.800000e+01)
  %185 = getelementptr inbounds nuw i8, ptr %90, i64 104
  %186 = extractelement <2 x double> %184, i64 0
  store double %186, ptr %185, align 8
  %187 = shufflevector <2 x double> %177, <2 x double> %184, <2 x i32> <i32 1, i32 3>
  store <2 x double> %187, ptr %179, align 8
  %188 = mul <2 x i32> %vec.ind14, splat (i32 15)
  %189 = urem <2 x i32> %188, splat (i32 18)
  %190 = uitofp nneg <2 x i32> %189 to <2 x double>
  %191 = fdiv <2 x double> %190, splat (double 1.800000e+01)
  %192 = getelementptr inbounds nuw i8, ptr %90, i64 112
  %193 = getelementptr inbounds nuw i8, ptr %91, i64 256
  %194 = extractelement <2 x double> %191, i64 0
  store double %194, ptr %192, align 8
  %195 = shl nuw nsw <2 x i32> %vec.ind15, splat (i32 4)
  %196 = urem <2 x i32> %195, splat (i32 18)
  %197 = uitofp nneg <2 x i32> %196 to <2 x double>
  %198 = fdiv <2 x double> %197, splat (double 1.800000e+01)
  %199 = getelementptr inbounds nuw i8, ptr %90, i64 120
  %200 = extractelement <2 x double> %198, i64 0
  store double %200, ptr %199, align 8
  %201 = shufflevector <2 x double> %191, <2 x double> %198, <2 x i32> <i32 1, i32 3>
  store <2 x double> %201, ptr %193, align 8
  %202 = mul <2 x i32> %vec.ind16, splat (i32 17)
  %203 = urem <2 x i32> %202, splat (i32 18)
  %204 = uitofp nneg <2 x i32> %203 to <2 x double>
  %205 = fdiv <2 x double> %204, splat (double 1.800000e+01)
  %206 = getelementptr inbounds nuw i8, ptr %90, i64 128
  %207 = getelementptr inbounds nuw i8, ptr %91, i64 272
  %208 = insertelement <2 x double> %205, double 0.000000e+00, i64 1
  store <2 x double> %208, ptr %206, align 8
  %209 = shufflevector <2 x double> %205, <2 x double> <double poison, double 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  store <2 x double> %209, ptr %207, align 8
  %index.next = add nuw i64 %index, 2
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 2)
  %vec.ind.next17 = add <2 x i32> %vec.ind1, splat (i32 2)
  %vec.ind.next18 = add <2 x i32> %vec.ind2, splat (i32 2)
  %vec.ind.next19 = add <2 x i32> %vec.ind3, splat (i32 2)
  %vec.ind.next20 = add <2 x i32> %vec.ind4, splat (i32 2)
  %vec.ind.next21 = add <2 x i32> %vec.ind5, splat (i32 2)
  %vec.ind.next22 = add <2 x i32> %vec.ind6, splat (i32 2)
  %vec.ind.next23 = add <2 x i32> %vec.ind7, splat (i32 2)
  %vec.ind.next24 = add <2 x i32> %vec.ind8, splat (i32 2)
  %vec.ind.next25 = add <2 x i32> %vec.ind9, splat (i32 2)
  %vec.ind.next26 = add <2 x i32> %vec.ind10, splat (i32 2)
  %vec.ind.next27 = add <2 x i32> %vec.ind11, splat (i32 2)
  %vec.ind.next28 = add <2 x i32> %vec.ind12, splat (i32 2)
  %vec.ind.next29 = add <2 x i32> %vec.ind13, splat (i32 2)
  %vec.ind.next30 = add <2 x i32> %vec.ind14, splat (i32 2)
  %vec.ind.next31 = add <2 x i32> %vec.ind15, splat (i32 2)
  %vec.ind.next32 = add <2 x i32> %vec.ind16, splat (i32 2)
  %210 = icmp eq i64 %index.next, 22
  br i1 %210, label %.preheader63, label %vector.body, !llvm.loop !9

.preheader63:                                     ; preds = %vector.body, %.preheader63
  %indvars.iv90 = phi i64 [ %indvars.iv.next91, %.preheader63 ], [ 0, %vector.body ]
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %indvars.iv90, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %211 = getelementptr inbounds nuw [192 x i8], ptr %4, i64 %indvars.iv90
  %212 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %213 = mul <2 x i32> %212, <i32 3, i32 4>
  %214 = add <2 x i32> %213, splat (i32 1)
  %215 = urem <2 x i32> %214, splat (i32 24)
  %216 = uitofp nneg <2 x i32> %215 to <2 x double>
  %217 = fdiv <2 x double> %216, splat (double 2.400000e+01)
  store <2 x double> %217, ptr %211, align 8
  %218 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %219 = mul <2 x i32> %218, <i32 5, i32 6>
  %220 = add <2 x i32> %219, splat (i32 1)
  %221 = urem <2 x i32> %220, splat (i32 24)
  %222 = uitofp nneg <2 x i32> %221 to <2 x double>
  %223 = fdiv <2 x double> %222, splat (double 2.400000e+01)
  %224 = getelementptr inbounds nuw i8, ptr %211, i64 16
  store <2 x double> %223, ptr %224, align 8
  %225 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %226 = mul <2 x i32> %225, <i32 7, i32 8>
  %227 = add <2 x i32> %226, splat (i32 1)
  %228 = urem <2 x i32> %227, splat (i32 24)
  %229 = uitofp nneg <2 x i32> %228 to <2 x double>
  %230 = fdiv <2 x double> %229, splat (double 2.400000e+01)
  %231 = getelementptr inbounds nuw i8, ptr %211, i64 32
  store <2 x double> %230, ptr %231, align 8
  %232 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %233 = mul <2 x i32> %232, <i32 9, i32 10>
  %234 = add <2 x i32> %233, splat (i32 1)
  %235 = urem <2 x i32> %234, splat (i32 24)
  %236 = uitofp nneg <2 x i32> %235 to <2 x double>
  %237 = fdiv <2 x double> %236, splat (double 2.400000e+01)
  %238 = getelementptr inbounds nuw i8, ptr %211, i64 48
  store <2 x double> %237, ptr %238, align 8
  %239 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %240 = mul <2 x i32> %239, <i32 11, i32 12>
  %241 = add <2 x i32> %240, splat (i32 1)
  %242 = urem <2 x i32> %241, splat (i32 24)
  %243 = uitofp nneg <2 x i32> %242 to <2 x double>
  %244 = fdiv <2 x double> %243, splat (double 2.400000e+01)
  %245 = getelementptr inbounds nuw i8, ptr %211, i64 64
  store <2 x double> %244, ptr %245, align 8
  %246 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %247 = mul <2 x i32> %246, <i32 13, i32 14>
  %248 = add <2 x i32> %247, splat (i32 1)
  %249 = urem <2 x i32> %248, splat (i32 24)
  %250 = uitofp nneg <2 x i32> %249 to <2 x double>
  %251 = fdiv <2 x double> %250, splat (double 2.400000e+01)
  %252 = getelementptr inbounds nuw i8, ptr %211, i64 80
  store <2 x double> %251, ptr %252, align 8
  %253 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %254 = mul <2 x i32> %253, <i32 15, i32 16>
  %255 = add <2 x i32> %254, splat (i32 1)
  %256 = urem <2 x i32> %255, splat (i32 24)
  %257 = uitofp nneg <2 x i32> %256 to <2 x double>
  %258 = fdiv <2 x double> %257, splat (double 2.400000e+01)
  %259 = getelementptr inbounds nuw i8, ptr %211, i64 96
  store <2 x double> %258, ptr %259, align 8
  %260 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %261 = mul <2 x i32> %260, <i32 17, i32 18>
  %262 = add <2 x i32> %261, splat (i32 1)
  %263 = urem <2 x i32> %262, splat (i32 24)
  %264 = uitofp nneg <2 x i32> %263 to <2 x double>
  %265 = fdiv <2 x double> %264, splat (double 2.400000e+01)
  %266 = getelementptr inbounds nuw i8, ptr %211, i64 112
  store <2 x double> %265, ptr %266, align 8
  %267 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %268 = mul <2 x i32> %267, <i32 19, i32 20>
  %269 = add <2 x i32> %268, splat (i32 1)
  %270 = urem <2 x i32> %269, splat (i32 24)
  %271 = uitofp nneg <2 x i32> %270 to <2 x double>
  %272 = fdiv <2 x double> %271, splat (double 2.400000e+01)
  %273 = getelementptr inbounds nuw i8, ptr %211, i64 128
  store <2 x double> %272, ptr %273, align 8
  %274 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %275 = mul <2 x i32> %274, <i32 21, i32 22>
  %276 = add <2 x i32> %275, splat (i32 1)
  %277 = urem <2 x i32> %276, splat (i32 24)
  %278 = uitofp nneg <2 x i32> %277 to <2 x double>
  %279 = fdiv <2 x double> %278, splat (double 2.400000e+01)
  %280 = getelementptr inbounds nuw i8, ptr %211, i64 144
  store <2 x double> %279, ptr %280, align 8
  %281 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %282 = mul <2 x i32> %281, <i32 23, i32 24>
  %283 = add <2 x i32> %282, splat (i32 1)
  %284 = urem <2 x i32> %283, splat (i32 24)
  %285 = uitofp nneg <2 x i32> %284 to <2 x double>
  %286 = fdiv <2 x double> %285, splat (double 2.400000e+01)
  %287 = getelementptr inbounds nuw i8, ptr %211, i64 160
  store <2 x double> %286, ptr %287, align 8
  %288 = trunc <2 x i64> %broadcast.splat to <2 x i32>
  %289 = mul <2 x i32> %288, <i32 25, i32 26>
  %290 = add <2 x i32> %289, splat (i32 1)
  %291 = urem <2 x i32> %290, splat (i32 24)
  %292 = uitofp nneg <2 x i32> %291 to <2 x double>
  %293 = fdiv <2 x double> %292, splat (double 2.400000e+01)
  %294 = getelementptr inbounds nuw i8, ptr %211, i64 176
  store <2 x double> %293, ptr %294, align 8
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1
  %exitcond93.not = icmp eq i64 %indvars.iv.next91, 18
  br i1 %exitcond93.not, label %.preheader, label %.preheader63, !llvm.loop !13

.preheader:                                       ; preds = %.preheader63, %.preheader
  %indvars.iv98 = phi i64 [ %indvars.iv.next99, %.preheader ], [ 0, %.preheader63 ]
  %broadcast.splatinsert41 = insertelement <2 x i64> poison, i64 %indvars.iv98, i64 0
  %broadcast.splat42 = shufflevector <2 x i64> %broadcast.splatinsert41, <2 x i64> poison, <2 x i32> zeroinitializer
  %295 = getelementptr inbounds nuw [192 x i8], ptr %5, i64 %indvars.iv98
  %296 = trunc <2 x i64> %broadcast.splat42 to <2 x i32>
  %297 = mul <2 x i32> %296, <i32 2, i32 3>
  %298 = urem <2 x i32> %297, splat (i32 22)
  %299 = uitofp nneg <2 x i32> %298 to <2 x double>
  %300 = fdiv <2 x double> %299, splat (double 2.200000e+01)
  store <2 x double> %300, ptr %295, align 8
  %301 = trunc <2 x i64> %broadcast.splat42 to <2 x i32>
  %302 = mul <2 x i32> %301, <i32 4, i32 5>
  %303 = urem <2 x i32> %302, splat (i32 22)
  %304 = uitofp nneg <2 x i32> %303 to <2 x double>
  %305 = fdiv <2 x double> %304, splat (double 2.200000e+01)
  %306 = getelementptr inbounds nuw i8, ptr %295, i64 16
  store <2 x double> %305, ptr %306, align 8
  %307 = trunc <2 x i64> %broadcast.splat42 to <2 x i32>
  %308 = mul <2 x i32> %307, <i32 6, i32 7>
  %309 = urem <2 x i32> %308, splat (i32 22)
  %310 = uitofp nneg <2 x i32> %309 to <2 x double>
  %311 = fdiv <2 x double> %310, splat (double 2.200000e+01)
  %312 = getelementptr inbounds nuw i8, ptr %295, i64 32
  store <2 x double> %311, ptr %312, align 8
  %313 = trunc <2 x i64> %broadcast.splat42 to <2 x i32>
  %314 = mul <2 x i32> %313, <i32 8, i32 9>
  %315 = urem <2 x i32> %314, splat (i32 22)
  %316 = uitofp nneg <2 x i32> %315 to <2 x double>
  %317 = fdiv <2 x double> %316, splat (double 2.200000e+01)
  %318 = getelementptr inbounds nuw i8, ptr %295, i64 48
  store <2 x double> %317, ptr %318, align 8
  %319 = trunc <2 x i64> %broadcast.splat42 to <2 x i32>
  %320 = mul <2 x i32> %319, <i32 10, i32 11>
  %321 = urem <2 x i32> %320, splat (i32 22)
  %322 = uitofp nneg <2 x i32> %321 to <2 x double>
  %323 = fdiv <2 x double> %322, splat (double 2.200000e+01)
  %324 = getelementptr inbounds nuw i8, ptr %295, i64 64
  store <2 x double> %323, ptr %324, align 8
  %325 = trunc <2 x i64> %broadcast.splat42 to <2 x i32>
  %326 = mul <2 x i32> %325, <i32 12, i32 13>
  %327 = urem <2 x i32> %326, splat (i32 22)
  %328 = uitofp nneg <2 x i32> %327 to <2 x double>
  %329 = fdiv <2 x double> %328, splat (double 2.200000e+01)
  %330 = getelementptr inbounds nuw i8, ptr %295, i64 80
  store <2 x double> %329, ptr %330, align 8
  %331 = trunc <2 x i64> %broadcast.splat42 to <2 x i32>
  %332 = mul <2 x i32> %331, <i32 14, i32 15>
  %333 = urem <2 x i32> %332, splat (i32 22)
  %334 = uitofp nneg <2 x i32> %333 to <2 x double>
  %335 = fdiv <2 x double> %334, splat (double 2.200000e+01)
  %336 = getelementptr inbounds nuw i8, ptr %295, i64 96
  store <2 x double> %335, ptr %336, align 8
  %337 = trunc <2 x i64> %broadcast.splat42 to <2 x i32>
  %338 = mul <2 x i32> %337, <i32 16, i32 17>
  %339 = urem <2 x i32> %338, splat (i32 22)
  %340 = uitofp nneg <2 x i32> %339 to <2 x double>
  %341 = fdiv <2 x double> %340, splat (double 2.200000e+01)
  %342 = getelementptr inbounds nuw i8, ptr %295, i64 112
  store <2 x double> %341, ptr %342, align 8
  %343 = trunc <2 x i64> %broadcast.splat42 to <2 x i32>
  %344 = mul <2 x i32> %343, <i32 18, i32 19>
  %345 = urem <2 x i32> %344, splat (i32 22)
  %346 = uitofp nneg <2 x i32> %345 to <2 x double>
  %347 = fdiv <2 x double> %346, splat (double 2.200000e+01)
  %348 = getelementptr inbounds nuw i8, ptr %295, i64 128
  store <2 x double> %347, ptr %348, align 8
  %349 = trunc <2 x i64> %broadcast.splat42 to <2 x i32>
  %350 = mul <2 x i32> %349, <i32 20, i32 21>
  %351 = urem <2 x i32> %350, splat (i32 22)
  %352 = uitofp nneg <2 x i32> %351 to <2 x double>
  %353 = fdiv <2 x double> %352, splat (double 2.200000e+01)
  %354 = getelementptr inbounds nuw i8, ptr %295, i64 144
  store <2 x double> %353, ptr %354, align 8
  %355 = trunc <2 x i64> %broadcast.splat42 to <2 x i32>
  %356 = mul <2 x i32> %355, <i32 22, i32 23>
  %357 = urem <2 x i32> %356, splat (i32 22)
  %358 = uitofp nneg <2 x i32> %357 to <2 x double>
  %359 = fdiv <2 x double> %358, splat (double 2.200000e+01)
  %360 = getelementptr inbounds nuw i8, ptr %295, i64 160
  store <2 x double> %359, ptr %360, align 8
  %361 = trunc <2 x i64> %broadcast.splat42 to <2 x i32>
  %362 = mul <2 x i32> %361, <i32 24, i32 25>
  %363 = urem <2 x i32> %362, splat (i32 22)
  %364 = uitofp nneg <2 x i32> %363 to <2 x double>
  %365 = fdiv <2 x double> %364, splat (double 2.200000e+01)
  %366 = getelementptr inbounds nuw i8, ptr %295, i64 176
  store <2 x double> %365, ptr %366, align 8
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1
  %exitcond101.not = icmp eq i64 %indvars.iv.next99, 16
  br i1 %exitcond101.not, label %367, label %.preheader, !llvm.loop !14

367:                                              ; preds = %.preheader
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @kernel_2mm(double noundef %0, double noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef captures(none) %6) unnamed_addr #3 {
  %8 = insertelement <2 x ptr> poison, ptr %3, i64 0
  %9 = insertelement <2 x ptr> %8, ptr %4, i64 1
  %10 = getelementptr i8, <2 x ptr> %9, <2 x i64> <i64 2816, i64 3168>
  %scevgep7 = getelementptr i8, ptr %2, i64 2304
  %11 = insertelement <2 x ptr> poison, ptr %2, i64 0
  %12 = shufflevector <2 x ptr> %11, <2 x ptr> poison, <2 x i32> zeroinitializer
  %13 = insertelement <2 x ptr> poison, ptr %scevgep7, i64 0
  %14 = shufflevector <2 x ptr> %13, <2 x ptr> poison, <2 x i32> zeroinitializer
  %15 = insertelement <2 x double> poison, double %0, i64 0
  %16 = shufflevector <2 x double> %15, <2 x double> poison, <2 x i32> zeroinitializer
  %17 = icmp ult <2 x ptr> %12, %10
  %18 = icmp ult <2 x ptr> %9, %14
  %19 = and <2 x i1> %17, %18
  %20 = bitcast <2 x i1> %19 to i2
  %.not = icmp eq i2 %20, 0
  br label %.preheader42

.preheader42:                                     ; preds = %7, %middle.block
  %indvars.iv54 = phi i64 [ 0, %7 ], [ %indvars.iv.next55, %middle.block ]
  %21 = getelementptr inbounds nuw [144 x i8], ptr %2, i64 %indvars.iv54
  %22 = getelementptr inbounds nuw [176 x i8], ptr %3, i64 %indvars.iv54
  %23 = getelementptr inbounds nuw i8, ptr %22, i64 8
  %24 = getelementptr inbounds nuw i8, ptr %22, i64 16
  %25 = getelementptr inbounds nuw i8, ptr %22, i64 24
  %26 = getelementptr inbounds nuw i8, ptr %22, i64 32
  %27 = getelementptr inbounds nuw i8, ptr %22, i64 40
  %28 = getelementptr inbounds nuw i8, ptr %22, i64 48
  %29 = getelementptr inbounds nuw i8, ptr %22, i64 56
  %30 = getelementptr inbounds nuw i8, ptr %22, i64 64
  %31 = getelementptr inbounds nuw i8, ptr %22, i64 72
  %32 = getelementptr inbounds nuw i8, ptr %22, i64 80
  %33 = getelementptr inbounds nuw i8, ptr %22, i64 88
  %34 = getelementptr inbounds nuw i8, ptr %22, i64 96
  %35 = getelementptr inbounds nuw i8, ptr %22, i64 104
  %36 = getelementptr inbounds nuw i8, ptr %22, i64 112
  %37 = getelementptr inbounds nuw i8, ptr %22, i64 120
  %38 = getelementptr inbounds nuw i8, ptr %22, i64 128
  %39 = getelementptr inbounds nuw i8, ptr %22, i64 136
  %40 = getelementptr inbounds nuw i8, ptr %22, i64 144
  %41 = getelementptr inbounds nuw i8, ptr %22, i64 152
  %42 = getelementptr inbounds nuw i8, ptr %22, i64 160
  %43 = getelementptr inbounds nuw i8, ptr %22, i64 168
  br i1 %.not, label %vector.ph, label %scalar.ph

vector.ph:                                        ; preds = %.preheader42
  %44 = load <2 x double>, ptr %22, align 8, !alias.scope !15
  %45 = fmul <2 x double> %16, %44
  %broadcast.splat = shufflevector <2 x double> %45, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat13 = shufflevector <2 x double> %45, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %46 = load <2 x double>, ptr %24, align 8, !alias.scope !15
  %47 = fmul <2 x double> %16, %46
  %broadcast.splat16 = shufflevector <2 x double> %47, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat19 = shufflevector <2 x double> %47, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %48 = load <2 x double>, ptr %26, align 8, !alias.scope !15
  %49 = fmul <2 x double> %16, %48
  %broadcast.splat22 = shufflevector <2 x double> %49, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat25 = shufflevector <2 x double> %49, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %50 = load <2 x double>, ptr %28, align 8, !alias.scope !15
  %51 = fmul <2 x double> %16, %50
  %broadcast.splat28 = shufflevector <2 x double> %51, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat31 = shufflevector <2 x double> %51, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %52 = load <2 x double>, ptr %30, align 8, !alias.scope !15
  %53 = fmul <2 x double> %16, %52
  %broadcast.splat34 = shufflevector <2 x double> %53, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat37 = shufflevector <2 x double> %53, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %54 = load <2 x double>, ptr %32, align 8, !alias.scope !15
  %55 = fmul <2 x double> %16, %54
  %broadcast.splat40 = shufflevector <2 x double> %55, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat43 = shufflevector <2 x double> %55, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %56 = load <2 x double>, ptr %34, align 8, !alias.scope !15
  %57 = fmul <2 x double> %16, %56
  %broadcast.splat46 = shufflevector <2 x double> %57, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat49 = shufflevector <2 x double> %57, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %58 = load <2 x double>, ptr %36, align 8, !alias.scope !15
  %59 = fmul <2 x double> %16, %58
  %broadcast.splat52 = shufflevector <2 x double> %59, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat55 = shufflevector <2 x double> %59, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %60 = load <2 x double>, ptr %38, align 8, !alias.scope !15
  %61 = fmul <2 x double> %16, %60
  %broadcast.splat58 = shufflevector <2 x double> %61, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat61 = shufflevector <2 x double> %61, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %62 = load <2 x double>, ptr %40, align 8, !alias.scope !15
  %63 = fmul <2 x double> %16, %62
  %broadcast.splat64 = shufflevector <2 x double> %63, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat67 = shufflevector <2 x double> %63, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %64 = load <2 x double>, ptr %42, align 8, !alias.scope !15
  %65 = fmul <2 x double> %16, %64
  %broadcast.splat70 = shufflevector <2 x double> %65, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat73 = shufflevector <2 x double> %65, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %66 = getelementptr inbounds nuw [8 x i8], ptr %21, i64 %index
  store <2 x double> zeroinitializer, ptr %66, align 8, !alias.scope !18, !noalias !20
  %67 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index
  %wide.load = load <2 x double>, ptr %67, align 8, !alias.scope !22
  %68 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> zeroinitializer)
  store <2 x double> %68, ptr %66, align 8, !alias.scope !18, !noalias !20
  %69 = getelementptr inbounds nuw i8, ptr %67, i64 144
  %wide.load11 = load <2 x double>, ptr %69, align 8, !alias.scope !22
  %70 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat13, <2 x double> %wide.load11, <2 x double> %68)
  store <2 x double> %70, ptr %66, align 8, !alias.scope !18, !noalias !20
  %71 = getelementptr inbounds nuw i8, ptr %67, i64 288
  %wide.load14 = load <2 x double>, ptr %71, align 8, !alias.scope !22
  %72 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat16, <2 x double> %wide.load14, <2 x double> %70)
  store <2 x double> %72, ptr %66, align 8, !alias.scope !18, !noalias !20
  %73 = getelementptr inbounds nuw i8, ptr %67, i64 432
  %wide.load17 = load <2 x double>, ptr %73, align 8, !alias.scope !22
  %74 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat19, <2 x double> %wide.load17, <2 x double> %72)
  store <2 x double> %74, ptr %66, align 8, !alias.scope !18, !noalias !20
  %75 = getelementptr inbounds nuw i8, ptr %67, i64 576
  %wide.load20 = load <2 x double>, ptr %75, align 8, !alias.scope !22
  %76 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat22, <2 x double> %wide.load20, <2 x double> %74)
  store <2 x double> %76, ptr %66, align 8, !alias.scope !18, !noalias !20
  %77 = getelementptr inbounds nuw i8, ptr %67, i64 720
  %wide.load23 = load <2 x double>, ptr %77, align 8, !alias.scope !22
  %78 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat25, <2 x double> %wide.load23, <2 x double> %76)
  store <2 x double> %78, ptr %66, align 8, !alias.scope !18, !noalias !20
  %79 = getelementptr inbounds nuw i8, ptr %67, i64 864
  %wide.load26 = load <2 x double>, ptr %79, align 8, !alias.scope !22
  %80 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat28, <2 x double> %wide.load26, <2 x double> %78)
  store <2 x double> %80, ptr %66, align 8, !alias.scope !18, !noalias !20
  %81 = getelementptr inbounds nuw i8, ptr %67, i64 1008
  %wide.load29 = load <2 x double>, ptr %81, align 8, !alias.scope !22
  %82 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat31, <2 x double> %wide.load29, <2 x double> %80)
  store <2 x double> %82, ptr %66, align 8, !alias.scope !18, !noalias !20
  %83 = getelementptr inbounds nuw i8, ptr %67, i64 1152
  %wide.load32 = load <2 x double>, ptr %83, align 8, !alias.scope !22
  %84 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat34, <2 x double> %wide.load32, <2 x double> %82)
  store <2 x double> %84, ptr %66, align 8, !alias.scope !18, !noalias !20
  %85 = getelementptr inbounds nuw i8, ptr %67, i64 1296
  %wide.load35 = load <2 x double>, ptr %85, align 8, !alias.scope !22
  %86 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat37, <2 x double> %wide.load35, <2 x double> %84)
  store <2 x double> %86, ptr %66, align 8, !alias.scope !18, !noalias !20
  %87 = getelementptr inbounds nuw i8, ptr %67, i64 1440
  %wide.load38 = load <2 x double>, ptr %87, align 8, !alias.scope !22
  %88 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat40, <2 x double> %wide.load38, <2 x double> %86)
  store <2 x double> %88, ptr %66, align 8, !alias.scope !18, !noalias !20
  %89 = getelementptr inbounds nuw i8, ptr %67, i64 1584
  %wide.load41 = load <2 x double>, ptr %89, align 8, !alias.scope !22
  %90 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat43, <2 x double> %wide.load41, <2 x double> %88)
  store <2 x double> %90, ptr %66, align 8, !alias.scope !18, !noalias !20
  %91 = getelementptr inbounds nuw i8, ptr %67, i64 1728
  %wide.load44 = load <2 x double>, ptr %91, align 8, !alias.scope !22
  %92 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat46, <2 x double> %wide.load44, <2 x double> %90)
  store <2 x double> %92, ptr %66, align 8, !alias.scope !18, !noalias !20
  %93 = getelementptr inbounds nuw i8, ptr %67, i64 1872
  %wide.load47 = load <2 x double>, ptr %93, align 8, !alias.scope !22
  %94 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat49, <2 x double> %wide.load47, <2 x double> %92)
  store <2 x double> %94, ptr %66, align 8, !alias.scope !18, !noalias !20
  %95 = getelementptr inbounds nuw i8, ptr %67, i64 2016
  %wide.load50 = load <2 x double>, ptr %95, align 8, !alias.scope !22
  %96 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat52, <2 x double> %wide.load50, <2 x double> %94)
  store <2 x double> %96, ptr %66, align 8, !alias.scope !18, !noalias !20
  %97 = getelementptr inbounds nuw i8, ptr %67, i64 2160
  %wide.load53 = load <2 x double>, ptr %97, align 8, !alias.scope !22
  %98 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat55, <2 x double> %wide.load53, <2 x double> %96)
  store <2 x double> %98, ptr %66, align 8, !alias.scope !18, !noalias !20
  %99 = getelementptr inbounds nuw i8, ptr %67, i64 2304
  %wide.load56 = load <2 x double>, ptr %99, align 8, !alias.scope !22
  %100 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat58, <2 x double> %wide.load56, <2 x double> %98)
  store <2 x double> %100, ptr %66, align 8, !alias.scope !18, !noalias !20
  %101 = getelementptr inbounds nuw i8, ptr %67, i64 2448
  %wide.load59 = load <2 x double>, ptr %101, align 8, !alias.scope !22
  %102 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat61, <2 x double> %wide.load59, <2 x double> %100)
  store <2 x double> %102, ptr %66, align 8, !alias.scope !18, !noalias !20
  %103 = getelementptr inbounds nuw i8, ptr %67, i64 2592
  %wide.load62 = load <2 x double>, ptr %103, align 8, !alias.scope !22
  %104 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat64, <2 x double> %wide.load62, <2 x double> %102)
  store <2 x double> %104, ptr %66, align 8, !alias.scope !18, !noalias !20
  %105 = getelementptr inbounds nuw i8, ptr %67, i64 2736
  %wide.load65 = load <2 x double>, ptr %105, align 8, !alias.scope !22
  %106 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat67, <2 x double> %wide.load65, <2 x double> %104)
  store <2 x double> %106, ptr %66, align 8, !alias.scope !18, !noalias !20
  %107 = getelementptr inbounds nuw i8, ptr %67, i64 2880
  %wide.load68 = load <2 x double>, ptr %107, align 8, !alias.scope !22
  %108 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat70, <2 x double> %wide.load68, <2 x double> %106)
  store <2 x double> %108, ptr %66, align 8, !alias.scope !18, !noalias !20
  %109 = getelementptr inbounds nuw i8, ptr %67, i64 3024
  %wide.load71 = load <2 x double>, ptr %109, align 8, !alias.scope !22
  %110 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat73, <2 x double> %wide.load71, <2 x double> %108)
  store <2 x double> %110, ptr %66, align 8, !alias.scope !18, !noalias !20
  %index.next = add nuw i64 %index, 2
  %111 = icmp eq i64 %index.next, 18
  br i1 %111, label %middle.block, label %vector.body, !llvm.loop !23

scalar.ph:                                        ; preds = %.preheader42, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ 0, %.preheader42 ]
  %112 = getelementptr inbounds nuw [8 x i8], ptr %21, i64 %indvars.iv
  store double 0.000000e+00, ptr %112, align 8
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  %113 = load double, ptr %22, align 8
  %114 = fmul double %0, %113
  %115 = load double, ptr %invariant.gep, align 8
  %116 = tail call double @llvm.fmuladd.f64(double %114, double %115, double 0.000000e+00)
  store double %116, ptr %112, align 8
  %117 = load double, ptr %23, align 8
  %118 = fmul double %0, %117
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 144
  %119 = load double, ptr %gep.1, align 8
  %120 = tail call double @llvm.fmuladd.f64(double %118, double %119, double %116)
  store double %120, ptr %112, align 8
  %121 = load double, ptr %24, align 8
  %122 = fmul double %0, %121
  %gep.2 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 288
  %123 = load double, ptr %gep.2, align 8
  %124 = tail call double @llvm.fmuladd.f64(double %122, double %123, double %120)
  store double %124, ptr %112, align 8
  %125 = load double, ptr %25, align 8
  %126 = fmul double %0, %125
  %gep.3 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 432
  %127 = load double, ptr %gep.3, align 8
  %128 = tail call double @llvm.fmuladd.f64(double %126, double %127, double %124)
  store double %128, ptr %112, align 8
  %129 = load double, ptr %26, align 8
  %130 = fmul double %0, %129
  %gep.4 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 576
  %131 = load double, ptr %gep.4, align 8
  %132 = tail call double @llvm.fmuladd.f64(double %130, double %131, double %128)
  store double %132, ptr %112, align 8
  %133 = load double, ptr %27, align 8
  %134 = fmul double %0, %133
  %gep.5 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 720
  %135 = load double, ptr %gep.5, align 8
  %136 = tail call double @llvm.fmuladd.f64(double %134, double %135, double %132)
  store double %136, ptr %112, align 8
  %137 = load double, ptr %28, align 8
  %138 = fmul double %0, %137
  %gep.6 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 864
  %139 = load double, ptr %gep.6, align 8
  %140 = tail call double @llvm.fmuladd.f64(double %138, double %139, double %136)
  store double %140, ptr %112, align 8
  %141 = load double, ptr %29, align 8
  %142 = fmul double %0, %141
  %gep.7 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 1008
  %143 = load double, ptr %gep.7, align 8
  %144 = tail call double @llvm.fmuladd.f64(double %142, double %143, double %140)
  store double %144, ptr %112, align 8
  %145 = load double, ptr %30, align 8
  %146 = fmul double %0, %145
  %gep.8 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 1152
  %147 = load double, ptr %gep.8, align 8
  %148 = tail call double @llvm.fmuladd.f64(double %146, double %147, double %144)
  store double %148, ptr %112, align 8
  %149 = load double, ptr %31, align 8
  %150 = fmul double %0, %149
  %gep.9 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 1296
  %151 = load double, ptr %gep.9, align 8
  %152 = tail call double @llvm.fmuladd.f64(double %150, double %151, double %148)
  store double %152, ptr %112, align 8
  %153 = load double, ptr %32, align 8
  %154 = fmul double %0, %153
  %gep.10 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 1440
  %155 = load double, ptr %gep.10, align 8
  %156 = tail call double @llvm.fmuladd.f64(double %154, double %155, double %152)
  store double %156, ptr %112, align 8
  %157 = load double, ptr %33, align 8
  %158 = fmul double %0, %157
  %gep.11 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 1584
  %159 = load double, ptr %gep.11, align 8
  %160 = tail call double @llvm.fmuladd.f64(double %158, double %159, double %156)
  store double %160, ptr %112, align 8
  %161 = load double, ptr %34, align 8
  %162 = fmul double %0, %161
  %gep.12 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 1728
  %163 = load double, ptr %gep.12, align 8
  %164 = tail call double @llvm.fmuladd.f64(double %162, double %163, double %160)
  store double %164, ptr %112, align 8
  %165 = load double, ptr %35, align 8
  %166 = fmul double %0, %165
  %gep.13 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 1872
  %167 = load double, ptr %gep.13, align 8
  %168 = tail call double @llvm.fmuladd.f64(double %166, double %167, double %164)
  store double %168, ptr %112, align 8
  %169 = load double, ptr %36, align 8
  %170 = fmul double %0, %169
  %gep.14 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 2016
  %171 = load double, ptr %gep.14, align 8
  %172 = tail call double @llvm.fmuladd.f64(double %170, double %171, double %168)
  store double %172, ptr %112, align 8
  %173 = load double, ptr %37, align 8
  %174 = fmul double %0, %173
  %gep.15 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 2160
  %175 = load double, ptr %gep.15, align 8
  %176 = tail call double @llvm.fmuladd.f64(double %174, double %175, double %172)
  store double %176, ptr %112, align 8
  %177 = load double, ptr %38, align 8
  %178 = fmul double %0, %177
  %gep.16 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 2304
  %179 = load double, ptr %gep.16, align 8
  %180 = tail call double @llvm.fmuladd.f64(double %178, double %179, double %176)
  store double %180, ptr %112, align 8
  %181 = load double, ptr %39, align 8
  %182 = fmul double %0, %181
  %gep.17 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 2448
  %183 = load double, ptr %gep.17, align 8
  %184 = tail call double @llvm.fmuladd.f64(double %182, double %183, double %180)
  store double %184, ptr %112, align 8
  %185 = load double, ptr %40, align 8
  %186 = fmul double %0, %185
  %gep.18 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 2592
  %187 = load double, ptr %gep.18, align 8
  %188 = tail call double @llvm.fmuladd.f64(double %186, double %187, double %184)
  store double %188, ptr %112, align 8
  %189 = load double, ptr %41, align 8
  %190 = fmul double %0, %189
  %gep.19 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 2736
  %191 = load double, ptr %gep.19, align 8
  %192 = tail call double @llvm.fmuladd.f64(double %190, double %191, double %188)
  store double %192, ptr %112, align 8
  %193 = load double, ptr %42, align 8
  %194 = fmul double %0, %193
  %gep.20 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 2880
  %195 = load double, ptr %gep.20, align 8
  %196 = tail call double @llvm.fmuladd.f64(double %194, double %195, double %192)
  store double %196, ptr %112, align 8
  %197 = load double, ptr %43, align 8
  %198 = fmul double %0, %197
  %gep.21 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 3024
  %199 = load double, ptr %gep.21, align 8
  %200 = tail call double @llvm.fmuladd.f64(double %198, double %199, double %196)
  store double %200, ptr %112, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 18
  br i1 %exitcond.not, label %middle.block, label %scalar.ph, !llvm.loop !24

middle.block:                                     ; preds = %vector.body, %scalar.ph
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1
  %exitcond57.not = icmp eq i64 %indvars.iv.next55, 16
  br i1 %exitcond57.not, label %.preheader.preheader, label %.preheader42, !llvm.loop !26

.preheader.preheader:                             ; preds = %middle.block
  %201 = insertelement <2 x ptr> %11, ptr %5, i64 1
  %202 = getelementptr i8, <2 x ptr> %201, <2 x i64> <i64 2304, i64 3456>
  %scevgep87 = getelementptr i8, ptr %6, i64 3072
  %203 = insertelement <2 x ptr> poison, ptr %6, i64 0
  %204 = shufflevector <2 x ptr> %203, <2 x ptr> poison, <2 x i32> zeroinitializer
  %205 = insertelement <2 x ptr> poison, ptr %scevgep87, i64 0
  %206 = shufflevector <2 x ptr> %205, <2 x ptr> poison, <2 x i32> zeroinitializer
  %207 = icmp ult <2 x ptr> %204, %202
  %208 = icmp ult <2 x ptr> %201, %206
  %209 = and <2 x i1> %207, %208
  %210 = bitcast <2 x i1> %209 to i2
  %.not160 = icmp eq i2 %210, 0
  %broadcast.splatinsert98 = insertelement <2 x double> poison, double %1, i64 0
  %broadcast.splat99 = shufflevector <2 x double> %broadcast.splatinsert98, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %middle.block158
  %indvars.iv66 = phi i64 [ %indvars.iv.next67, %middle.block158 ], [ 0, %.preheader.preheader ]
  %211 = getelementptr inbounds nuw [192 x i8], ptr %6, i64 %indvars.iv66
  %212 = getelementptr inbounds nuw [144 x i8], ptr %2, i64 %indvars.iv66
  %213 = getelementptr inbounds nuw i8, ptr %212, i64 8
  %214 = getelementptr inbounds nuw i8, ptr %212, i64 16
  %215 = getelementptr inbounds nuw i8, ptr %212, i64 24
  %216 = getelementptr inbounds nuw i8, ptr %212, i64 32
  %217 = getelementptr inbounds nuw i8, ptr %212, i64 40
  %218 = getelementptr inbounds nuw i8, ptr %212, i64 48
  %219 = getelementptr inbounds nuw i8, ptr %212, i64 56
  %220 = getelementptr inbounds nuw i8, ptr %212, i64 64
  %221 = getelementptr inbounds nuw i8, ptr %212, i64 72
  %222 = getelementptr inbounds nuw i8, ptr %212, i64 80
  %223 = getelementptr inbounds nuw i8, ptr %212, i64 88
  %224 = getelementptr inbounds nuw i8, ptr %212, i64 96
  %225 = getelementptr inbounds nuw i8, ptr %212, i64 104
  %226 = getelementptr inbounds nuw i8, ptr %212, i64 112
  %227 = getelementptr inbounds nuw i8, ptr %212, i64 120
  %228 = getelementptr inbounds nuw i8, ptr %212, i64 128
  %229 = getelementptr inbounds nuw i8, ptr %212, i64 136
  br i1 %.not160, label %vector.ph97, label %scalar.ph88

vector.ph97:                                      ; preds = %.preheader
  %230 = load double, ptr %212, align 8, !alias.scope !27
  %broadcast.splatinsert104 = insertelement <2 x double> poison, double %230, i64 0
  %broadcast.splat105 = shufflevector <2 x double> %broadcast.splatinsert104, <2 x double> poison, <2 x i32> zeroinitializer
  %231 = load double, ptr %213, align 8, !alias.scope !27
  %broadcast.splatinsert107 = insertelement <2 x double> poison, double %231, i64 0
  %broadcast.splat108 = shufflevector <2 x double> %broadcast.splatinsert107, <2 x double> poison, <2 x i32> zeroinitializer
  %232 = load double, ptr %214, align 8, !alias.scope !27
  %broadcast.splatinsert110 = insertelement <2 x double> poison, double %232, i64 0
  %broadcast.splat111 = shufflevector <2 x double> %broadcast.splatinsert110, <2 x double> poison, <2 x i32> zeroinitializer
  %233 = load double, ptr %215, align 8, !alias.scope !27
  %broadcast.splatinsert113 = insertelement <2 x double> poison, double %233, i64 0
  %broadcast.splat114 = shufflevector <2 x double> %broadcast.splatinsert113, <2 x double> poison, <2 x i32> zeroinitializer
  %234 = load double, ptr %216, align 8, !alias.scope !27
  %broadcast.splatinsert116 = insertelement <2 x double> poison, double %234, i64 0
  %broadcast.splat117 = shufflevector <2 x double> %broadcast.splatinsert116, <2 x double> poison, <2 x i32> zeroinitializer
  %235 = load double, ptr %217, align 8, !alias.scope !27
  %broadcast.splatinsert119 = insertelement <2 x double> poison, double %235, i64 0
  %broadcast.splat120 = shufflevector <2 x double> %broadcast.splatinsert119, <2 x double> poison, <2 x i32> zeroinitializer
  %236 = load double, ptr %218, align 8, !alias.scope !27
  %broadcast.splatinsert122 = insertelement <2 x double> poison, double %236, i64 0
  %broadcast.splat123 = shufflevector <2 x double> %broadcast.splatinsert122, <2 x double> poison, <2 x i32> zeroinitializer
  %237 = load double, ptr %219, align 8, !alias.scope !27
  %broadcast.splatinsert125 = insertelement <2 x double> poison, double %237, i64 0
  %broadcast.splat126 = shufflevector <2 x double> %broadcast.splatinsert125, <2 x double> poison, <2 x i32> zeroinitializer
  %238 = load double, ptr %220, align 8, !alias.scope !27
  %broadcast.splatinsert128 = insertelement <2 x double> poison, double %238, i64 0
  %broadcast.splat129 = shufflevector <2 x double> %broadcast.splatinsert128, <2 x double> poison, <2 x i32> zeroinitializer
  %239 = load double, ptr %221, align 8, !alias.scope !27
  %broadcast.splatinsert131 = insertelement <2 x double> poison, double %239, i64 0
  %broadcast.splat132 = shufflevector <2 x double> %broadcast.splatinsert131, <2 x double> poison, <2 x i32> zeroinitializer
  %240 = load double, ptr %222, align 8, !alias.scope !27
  %broadcast.splatinsert134 = insertelement <2 x double> poison, double %240, i64 0
  %broadcast.splat135 = shufflevector <2 x double> %broadcast.splatinsert134, <2 x double> poison, <2 x i32> zeroinitializer
  %241 = load double, ptr %223, align 8, !alias.scope !27
  %broadcast.splatinsert137 = insertelement <2 x double> poison, double %241, i64 0
  %broadcast.splat138 = shufflevector <2 x double> %broadcast.splatinsert137, <2 x double> poison, <2 x i32> zeroinitializer
  %242 = load double, ptr %224, align 8, !alias.scope !27
  %broadcast.splatinsert140 = insertelement <2 x double> poison, double %242, i64 0
  %broadcast.splat141 = shufflevector <2 x double> %broadcast.splatinsert140, <2 x double> poison, <2 x i32> zeroinitializer
  %243 = load double, ptr %225, align 8, !alias.scope !27
  %broadcast.splatinsert143 = insertelement <2 x double> poison, double %243, i64 0
  %broadcast.splat144 = shufflevector <2 x double> %broadcast.splatinsert143, <2 x double> poison, <2 x i32> zeroinitializer
  %244 = load double, ptr %226, align 8, !alias.scope !27
  %broadcast.splatinsert146 = insertelement <2 x double> poison, double %244, i64 0
  %broadcast.splat147 = shufflevector <2 x double> %broadcast.splatinsert146, <2 x double> poison, <2 x i32> zeroinitializer
  %245 = load double, ptr %227, align 8, !alias.scope !27
  %broadcast.splatinsert149 = insertelement <2 x double> poison, double %245, i64 0
  %broadcast.splat150 = shufflevector <2 x double> %broadcast.splatinsert149, <2 x double> poison, <2 x i32> zeroinitializer
  %246 = load double, ptr %228, align 8, !alias.scope !27
  %broadcast.splatinsert152 = insertelement <2 x double> poison, double %246, i64 0
  %broadcast.splat153 = shufflevector <2 x double> %broadcast.splatinsert152, <2 x double> poison, <2 x i32> zeroinitializer
  %247 = load double, ptr %229, align 8, !alias.scope !27
  %broadcast.splatinsert155 = insertelement <2 x double> poison, double %247, i64 0
  %broadcast.splat156 = shufflevector <2 x double> %broadcast.splatinsert155, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body100

vector.body100:                                   ; preds = %vector.body100, %vector.ph97
  %index101 = phi i64 [ 0, %vector.ph97 ], [ %index.next157, %vector.body100 ]
  %248 = getelementptr inbounds nuw [8 x i8], ptr %211, i64 %index101
  %wide.load102 = load <2 x double>, ptr %248, align 8, !alias.scope !30, !noalias !32
  %249 = fmul <2 x double> %broadcast.splat99, %wide.load102
  store <2 x double> %249, ptr %248, align 8, !alias.scope !30, !noalias !32
  %250 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %index101
  %wide.load103 = load <2 x double>, ptr %250, align 8, !alias.scope !34
  %251 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat105, <2 x double> %wide.load103, <2 x double> %249)
  store <2 x double> %251, ptr %248, align 8, !alias.scope !30, !noalias !32
  %252 = getelementptr inbounds nuw i8, ptr %250, i64 192
  %wide.load106 = load <2 x double>, ptr %252, align 8, !alias.scope !34
  %253 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat108, <2 x double> %wide.load106, <2 x double> %251)
  store <2 x double> %253, ptr %248, align 8, !alias.scope !30, !noalias !32
  %254 = getelementptr inbounds nuw i8, ptr %250, i64 384
  %wide.load109 = load <2 x double>, ptr %254, align 8, !alias.scope !34
  %255 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat111, <2 x double> %wide.load109, <2 x double> %253)
  store <2 x double> %255, ptr %248, align 8, !alias.scope !30, !noalias !32
  %256 = getelementptr inbounds nuw i8, ptr %250, i64 576
  %wide.load112 = load <2 x double>, ptr %256, align 8, !alias.scope !34
  %257 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat114, <2 x double> %wide.load112, <2 x double> %255)
  store <2 x double> %257, ptr %248, align 8, !alias.scope !30, !noalias !32
  %258 = getelementptr inbounds nuw i8, ptr %250, i64 768
  %wide.load115 = load <2 x double>, ptr %258, align 8, !alias.scope !34
  %259 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat117, <2 x double> %wide.load115, <2 x double> %257)
  store <2 x double> %259, ptr %248, align 8, !alias.scope !30, !noalias !32
  %260 = getelementptr inbounds nuw i8, ptr %250, i64 960
  %wide.load118 = load <2 x double>, ptr %260, align 8, !alias.scope !34
  %261 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat120, <2 x double> %wide.load118, <2 x double> %259)
  store <2 x double> %261, ptr %248, align 8, !alias.scope !30, !noalias !32
  %262 = getelementptr inbounds nuw i8, ptr %250, i64 1152
  %wide.load121 = load <2 x double>, ptr %262, align 8, !alias.scope !34
  %263 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat123, <2 x double> %wide.load121, <2 x double> %261)
  store <2 x double> %263, ptr %248, align 8, !alias.scope !30, !noalias !32
  %264 = getelementptr inbounds nuw i8, ptr %250, i64 1344
  %wide.load124 = load <2 x double>, ptr %264, align 8, !alias.scope !34
  %265 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat126, <2 x double> %wide.load124, <2 x double> %263)
  store <2 x double> %265, ptr %248, align 8, !alias.scope !30, !noalias !32
  %266 = getelementptr inbounds nuw i8, ptr %250, i64 1536
  %wide.load127 = load <2 x double>, ptr %266, align 8, !alias.scope !34
  %267 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat129, <2 x double> %wide.load127, <2 x double> %265)
  store <2 x double> %267, ptr %248, align 8, !alias.scope !30, !noalias !32
  %268 = getelementptr inbounds nuw i8, ptr %250, i64 1728
  %wide.load130 = load <2 x double>, ptr %268, align 8, !alias.scope !34
  %269 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat132, <2 x double> %wide.load130, <2 x double> %267)
  store <2 x double> %269, ptr %248, align 8, !alias.scope !30, !noalias !32
  %270 = getelementptr inbounds nuw i8, ptr %250, i64 1920
  %wide.load133 = load <2 x double>, ptr %270, align 8, !alias.scope !34
  %271 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat135, <2 x double> %wide.load133, <2 x double> %269)
  store <2 x double> %271, ptr %248, align 8, !alias.scope !30, !noalias !32
  %272 = getelementptr inbounds nuw i8, ptr %250, i64 2112
  %wide.load136 = load <2 x double>, ptr %272, align 8, !alias.scope !34
  %273 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat138, <2 x double> %wide.load136, <2 x double> %271)
  store <2 x double> %273, ptr %248, align 8, !alias.scope !30, !noalias !32
  %274 = getelementptr inbounds nuw i8, ptr %250, i64 2304
  %wide.load139 = load <2 x double>, ptr %274, align 8, !alias.scope !34
  %275 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat141, <2 x double> %wide.load139, <2 x double> %273)
  store <2 x double> %275, ptr %248, align 8, !alias.scope !30, !noalias !32
  %276 = getelementptr inbounds nuw i8, ptr %250, i64 2496
  %wide.load142 = load <2 x double>, ptr %276, align 8, !alias.scope !34
  %277 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat144, <2 x double> %wide.load142, <2 x double> %275)
  store <2 x double> %277, ptr %248, align 8, !alias.scope !30, !noalias !32
  %278 = getelementptr inbounds nuw i8, ptr %250, i64 2688
  %wide.load145 = load <2 x double>, ptr %278, align 8, !alias.scope !34
  %279 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat147, <2 x double> %wide.load145, <2 x double> %277)
  store <2 x double> %279, ptr %248, align 8, !alias.scope !30, !noalias !32
  %280 = getelementptr inbounds nuw i8, ptr %250, i64 2880
  %wide.load148 = load <2 x double>, ptr %280, align 8, !alias.scope !34
  %281 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat150, <2 x double> %wide.load148, <2 x double> %279)
  store <2 x double> %281, ptr %248, align 8, !alias.scope !30, !noalias !32
  %282 = getelementptr inbounds nuw i8, ptr %250, i64 3072
  %wide.load151 = load <2 x double>, ptr %282, align 8, !alias.scope !34
  %283 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat153, <2 x double> %wide.load151, <2 x double> %281)
  store <2 x double> %283, ptr %248, align 8, !alias.scope !30, !noalias !32
  %284 = getelementptr inbounds nuw i8, ptr %250, i64 3264
  %wide.load154 = load <2 x double>, ptr %284, align 8, !alias.scope !34
  %285 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat156, <2 x double> %wide.load154, <2 x double> %283)
  store <2 x double> %285, ptr %248, align 8, !alias.scope !30, !noalias !32
  %index.next157 = add nuw i64 %index101, 2
  %286 = icmp eq i64 %index.next157, 24
  br i1 %286, label %middle.block158, label %vector.body100, !llvm.loop !35

scalar.ph88:                                      ; preds = %.preheader, %scalar.ph88
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %scalar.ph88 ], [ 0, %.preheader ]
  %287 = getelementptr inbounds nuw [8 x i8], ptr %211, i64 %indvars.iv62
  %288 = load double, ptr %287, align 8
  %289 = fmul double %1, %288
  store double %289, ptr %287, align 8
  %invariant.gep46 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv62
  %290 = load double, ptr %212, align 8
  %291 = load double, ptr %invariant.gep46, align 8
  %292 = tail call double @llvm.fmuladd.f64(double %290, double %291, double %289)
  store double %292, ptr %287, align 8
  %293 = load double, ptr %213, align 8
  %gep47.1 = getelementptr inbounds nuw i8, ptr %invariant.gep46, i64 192
  %294 = load double, ptr %gep47.1, align 8
  %295 = tail call double @llvm.fmuladd.f64(double %293, double %294, double %292)
  store double %295, ptr %287, align 8
  %296 = load double, ptr %214, align 8
  %gep47.2 = getelementptr inbounds nuw i8, ptr %invariant.gep46, i64 384
  %297 = load double, ptr %gep47.2, align 8
  %298 = tail call double @llvm.fmuladd.f64(double %296, double %297, double %295)
  store double %298, ptr %287, align 8
  %299 = load double, ptr %215, align 8
  %gep47.3 = getelementptr inbounds nuw i8, ptr %invariant.gep46, i64 576
  %300 = load double, ptr %gep47.3, align 8
  %301 = tail call double @llvm.fmuladd.f64(double %299, double %300, double %298)
  store double %301, ptr %287, align 8
  %302 = load double, ptr %216, align 8
  %gep47.4 = getelementptr inbounds nuw i8, ptr %invariant.gep46, i64 768
  %303 = load double, ptr %gep47.4, align 8
  %304 = tail call double @llvm.fmuladd.f64(double %302, double %303, double %301)
  store double %304, ptr %287, align 8
  %305 = load double, ptr %217, align 8
  %gep47.5 = getelementptr inbounds nuw i8, ptr %invariant.gep46, i64 960
  %306 = load double, ptr %gep47.5, align 8
  %307 = tail call double @llvm.fmuladd.f64(double %305, double %306, double %304)
  store double %307, ptr %287, align 8
  %308 = load double, ptr %218, align 8
  %gep47.6 = getelementptr inbounds nuw i8, ptr %invariant.gep46, i64 1152
  %309 = load double, ptr %gep47.6, align 8
  %310 = tail call double @llvm.fmuladd.f64(double %308, double %309, double %307)
  store double %310, ptr %287, align 8
  %311 = load double, ptr %219, align 8
  %gep47.7 = getelementptr inbounds nuw i8, ptr %invariant.gep46, i64 1344
  %312 = load double, ptr %gep47.7, align 8
  %313 = tail call double @llvm.fmuladd.f64(double %311, double %312, double %310)
  store double %313, ptr %287, align 8
  %314 = load double, ptr %220, align 8
  %gep47.8 = getelementptr inbounds nuw i8, ptr %invariant.gep46, i64 1536
  %315 = load double, ptr %gep47.8, align 8
  %316 = tail call double @llvm.fmuladd.f64(double %314, double %315, double %313)
  store double %316, ptr %287, align 8
  %317 = load double, ptr %221, align 8
  %gep47.9 = getelementptr inbounds nuw i8, ptr %invariant.gep46, i64 1728
  %318 = load double, ptr %gep47.9, align 8
  %319 = tail call double @llvm.fmuladd.f64(double %317, double %318, double %316)
  store double %319, ptr %287, align 8
  %320 = load double, ptr %222, align 8
  %gep47.10 = getelementptr inbounds nuw i8, ptr %invariant.gep46, i64 1920
  %321 = load double, ptr %gep47.10, align 8
  %322 = tail call double @llvm.fmuladd.f64(double %320, double %321, double %319)
  store double %322, ptr %287, align 8
  %323 = load double, ptr %223, align 8
  %gep47.11 = getelementptr inbounds nuw i8, ptr %invariant.gep46, i64 2112
  %324 = load double, ptr %gep47.11, align 8
  %325 = tail call double @llvm.fmuladd.f64(double %323, double %324, double %322)
  store double %325, ptr %287, align 8
  %326 = load double, ptr %224, align 8
  %gep47.12 = getelementptr inbounds nuw i8, ptr %invariant.gep46, i64 2304
  %327 = load double, ptr %gep47.12, align 8
  %328 = tail call double @llvm.fmuladd.f64(double %326, double %327, double %325)
  store double %328, ptr %287, align 8
  %329 = load double, ptr %225, align 8
  %gep47.13 = getelementptr inbounds nuw i8, ptr %invariant.gep46, i64 2496
  %330 = load double, ptr %gep47.13, align 8
  %331 = tail call double @llvm.fmuladd.f64(double %329, double %330, double %328)
  store double %331, ptr %287, align 8
  %332 = load double, ptr %226, align 8
  %gep47.14 = getelementptr inbounds nuw i8, ptr %invariant.gep46, i64 2688
  %333 = load double, ptr %gep47.14, align 8
  %334 = tail call double @llvm.fmuladd.f64(double %332, double %333, double %331)
  store double %334, ptr %287, align 8
  %335 = load double, ptr %227, align 8
  %gep47.15 = getelementptr inbounds nuw i8, ptr %invariant.gep46, i64 2880
  %336 = load double, ptr %gep47.15, align 8
  %337 = tail call double @llvm.fmuladd.f64(double %335, double %336, double %334)
  store double %337, ptr %287, align 8
  %338 = load double, ptr %228, align 8
  %gep47.16 = getelementptr inbounds nuw i8, ptr %invariant.gep46, i64 3072
  %339 = load double, ptr %gep47.16, align 8
  %340 = tail call double @llvm.fmuladd.f64(double %338, double %339, double %337)
  store double %340, ptr %287, align 8
  %341 = load double, ptr %229, align 8
  %gep47.17 = getelementptr inbounds nuw i8, ptr %invariant.gep46, i64 3264
  %342 = load double, ptr %gep47.17, align 8
  %343 = tail call double @llvm.fmuladd.f64(double %341, double %342, double %340)
  store double %343, ptr %287, align 8
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1
  %exitcond65.not = icmp eq i64 %indvars.iv.next63, 24
  br i1 %exitcond65.not, label %middle.block158, label %scalar.ph88, !llvm.loop !36

middle.block158:                                  ; preds = %vector.body100, %scalar.ph88
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1
  %exitcond69.not = icmp eq i64 %indvars.iv.next67, 16
  br i1 %exitcond69.not, label %344, label %.preheader, !llvm.loop !37

344:                                              ; preds = %middle.block158
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @print_array(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
  %2 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %fwrite = tail call i64 @fwrite(ptr nonnull @"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@", i64 22, i64 1, ptr %2)
  %3 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@", ptr noundef nonnull @"??_C@_01CKDDGHAB@D?$AA@") #9
  br label %.preheader

.preheader:                                       ; preds = %1, %19
  %indvars.iv18 = phi i64 [ 0, %1 ], [ %indvars.iv.next19, %19 ]
  %5 = shl nuw nsw i64 %indvars.iv18, 4
  %6 = getelementptr inbounds nuw [192 x i8], ptr %0, i64 %indvars.iv18
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
  %exitcond.not = icmp eq i64 %indvars.iv.next, 24
  br i1 %exitcond.not, label %19, label %7, !llvm.loop !38

19:                                               ; preds = %14
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  %exitcond21.not = icmp eq i64 %indvars.iv.next19, 16
  br i1 %exitcond21.not, label %20, label %.preheader, !llvm.loop !39

20:                                               ; preds = %19
  %21 = tail call ptr @__acrt_iob_func(i32 noundef 2) #9
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@", ptr noundef nonnull @"??_C@_01CKDDGHAB@D?$AA@") #9
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
!1 = !DIFile(filename: "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\linear-algebra\\kernels\\2mm\\2mm.c", directory: "C:\\work\\llvm-profitability-research")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"MaxTLSAlign", i32 65536}
!6 = !{!"clang version 24.0.0git (https://github.com/llvm/llvm-project.git 6f4196219399a3502cea3beb2d0c8c28b2241649)"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8, !10, !11, !12}
!10 = !{!"llvm.loop.isvectorized", i32 1}
!11 = !{!"llvm.loop.vectorize.body", i32 1}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = distinct !{!13, !8}
!14 = distinct !{!14, !8}
!15 = !{!16}
!16 = distinct !{!16, !17}
!17 = distinct !{!17, i1 false, !"LVerDomain"}
!18 = !{!19}
!19 = distinct !{!19, !17}
!20 = !{!16, !21}
!21 = distinct !{!21, !17}
!22 = !{!21}
!23 = distinct !{!23, !8, !10, !11, !12}
!24 = distinct !{!24, !8, !10, !25}
!25 = !{!"llvm.loop.vectorize.epilogue", i32 1}
!26 = distinct !{!26, !8}
!27 = !{!28}
!28 = distinct !{!28, !29}
!29 = distinct !{!29, i1 false, !"LVerDomain"}
!30 = !{!31}
!31 = distinct !{!31, !29}
!32 = !{!28, !33}
!33 = distinct !{!33, !29}
!34 = !{!33}
!35 = distinct !{!35, !8, !10, !11, !12}
!36 = distinct !{!36, !8, !10, !25}
!37 = distinct !{!37, !8}
!38 = distinct !{!38, !8}
!39 = distinct !{!39, !8}
