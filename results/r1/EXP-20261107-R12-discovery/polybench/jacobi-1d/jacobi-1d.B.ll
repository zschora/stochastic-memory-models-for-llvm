; ModuleID = 'C:\work\llvm-profitability-research\results\r1\EXP-20261107-R12-discovery\polybench\jacobi-1d\frontend.ll'
source_filename = "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\stencils\\jacobi-1d\\jacobi-1d.c"
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
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 30, i32 noundef 8) #7
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 30, i32 noundef 8) #7
  tail call fastcc void @init_array(ptr noundef %3, ptr noundef %4)
  tail call fastcc void @kernel_jacobi_1d(ptr noundef %3, ptr noundef %4)
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
vector.memcheck:
  %2 = ptrtoaddr ptr %1 to i64
  %3 = ptrtoaddr ptr %0 to i64
  %4 = sub i64 %3, %2
  %diff.check = icmp ugt i64 %4, -16
  br i1 %diff.check, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %vector.memcheck
  store <2 x double> <double f0x3FB1111111111111, double 1.000000e-01>, ptr %0, align 8
  store <2 x double> <double 1.000000e-01, double f0x3FC1111111111111>, ptr %1, align 8
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x double> <double f0x3FC1111111111111, double f0x3FC5555555555555>, ptr %5, align 8
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store <2 x double> <double f0x3FC5555555555555, double 2.000000e-01>, ptr %6, align 8
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x double> <double 2.000000e-01, double f0x3FCDDDDDDDDDDDDE>, ptr %7, align 8
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 32
  store <2 x double> <double f0x3FCDDDDDDDDDDDDE, double f0x3FD1111111111111>, ptr %8, align 8
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x double> <double f0x3FD1111111111111, double 3.000000e-01>, ptr %9, align 8
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 48
  store <2 x double> <double 3.000000e-01, double f0x3FD5555555555555>, ptr %10, align 8
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <2 x double> <double f0x3FD5555555555555, double f0x3FD7777777777777>, ptr %11, align 8
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 64
  store <2 x double> <double f0x3FD7777777777777, double 4.000000e-01>, ptr %12, align 8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <2 x double> <double 4.000000e-01, double f0x3FDBBBBBBBBBBBBC>, ptr %13, align 8
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 80
  store <2 x double> <double f0x3FDBBBBBBBBBBBBC, double f0x3FDDDDDDDDDDDDDE>, ptr %14, align 8
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <2 x double> <double f0x3FDDDDDDDDDDDDDE, double 5.000000e-01>, ptr %15, align 8
  %16 = getelementptr inbounds nuw i8, ptr %1, i64 96
  store <2 x double> <double 5.000000e-01, double f0x3FE1111111111111>, ptr %16, align 8
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <2 x double> <double f0x3FE1111111111111, double f0x3FE2222222222222>, ptr %17, align 8
  %18 = getelementptr inbounds nuw i8, ptr %1, i64 112
  store <2 x double> <double f0x3FE2222222222222, double 6.000000e-01>, ptr %18, align 8
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 128
  store <2 x double> <double 6.000000e-01, double f0x3FE4444444444444>, ptr %19, align 8
  %20 = getelementptr inbounds nuw i8, ptr %1, i64 128
  store <2 x double> <double f0x3FE4444444444444, double f0x3FE5555555555555>, ptr %20, align 8
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 144
  store <2 x double> <double f0x3FE5555555555555, double f0x3FE6666666666666>, ptr %21, align 8
  %22 = getelementptr inbounds nuw i8, ptr %1, i64 144
  store <2 x double> <double f0x3FE6666666666666, double f0x3FE7777777777777>, ptr %22, align 8
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store <2 x double> <double f0x3FE7777777777777, double f0x3FE8888888888889>, ptr %23, align 8
  %24 = getelementptr inbounds nuw i8, ptr %1, i64 160
  store <2 x double> <double f0x3FE8888888888889, double 8.000000e-01>, ptr %24, align 8
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 176
  store <2 x double> <double 8.000000e-01, double f0x3FEAAAAAAAAAAAAB>, ptr %25, align 8
  %26 = getelementptr inbounds nuw i8, ptr %1, i64 176
  store <2 x double> <double f0x3FEAAAAAAAAAAAAB, double f0x3FEBBBBBBBBBBBBC>, ptr %26, align 8
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 192
  store <2 x double> <double f0x3FEBBBBBBBBBBBBC, double 9.000000e-01>, ptr %27, align 8
  %28 = getelementptr inbounds nuw i8, ptr %1, i64 192
  store <2 x double> <double 9.000000e-01, double f0x3FEDDDDDDDDDDDDE>, ptr %28, align 8
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 208
  store <2 x double> <double f0x3FEDDDDDDDDDDDDE, double f0x3FEEEEEEEEEEEEEF>, ptr %29, align 8
  %30 = getelementptr inbounds nuw i8, ptr %1, i64 208
  store <2 x double> <double f0x3FEEEEEEEEEEEEEF, double 1.000000e+00>, ptr %30, align 8
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 224
  store <2 x double> <double 1.000000e+00, double f0x3FF0888888888889>, ptr %31, align 8
  %32 = getelementptr inbounds nuw i8, ptr %1, i64 224
  store <2 x double> <double f0x3FF0888888888889, double f0x3FF1111111111111>, ptr %32, align 8
  br label %middle.block

scalar.ph:                                        ; preds = %vector.memcheck, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ 0, %vector.memcheck ]
  %33 = trunc i64 %indvars.iv to i32
  %34 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %35 = trunc i64 %indvars.iv to i32
  %36 = add nuw nsw i32 %33, 2
  %37 = uitofp nneg i32 %36 to double
  %38 = add nuw nsw i32 %35, 3
  %39 = uitofp nneg i32 %38 to double
  %40 = insertelement <2 x double> poison, double %37, i64 0
  %41 = insertelement <2 x double> %40, double %39, i64 1
  %42 = fdiv <2 x double> %41, splat (double 3.000000e+01)
  %43 = extractelement <2 x double> %42, i64 0
  store double %43, ptr %34, align 8
  %44 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %45 = extractelement <2 x double> %42, i64 1
  store double %45, ptr %44, align 8
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %46 = trunc i64 %indvars.iv.next to i32
  %47 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next
  %48 = trunc i64 %indvars.iv.next to i32
  %49 = add nuw nsw i32 %46, 2
  %50 = uitofp nneg i32 %49 to double
  %51 = add nuw nsw i32 %48, 3
  %52 = uitofp nneg i32 %51 to double
  %53 = insertelement <2 x double> poison, double %50, i64 0
  %54 = insertelement <2 x double> %53, double %52, i64 1
  %55 = fdiv <2 x double> %54, splat (double 3.000000e+01)
  %56 = extractelement <2 x double> %55, i64 0
  store double %56, ptr %47, align 8
  %57 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  %58 = extractelement <2 x double> %55, i64 1
  store double %58, ptr %57, align 8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 30
  br i1 %exitcond.not.1, label %middle.block, label %scalar.ph, !llvm.loop !7

middle.block:                                     ; preds = %scalar.ph, %vector.body
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @kernel_jacobi_1d(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) initializes((8, 232)) %1) unnamed_addr #3 {
  %3 = getelementptr i8, ptr %1, i64 8
  %4 = getelementptr i8, ptr %0, i64 8
  %5 = getelementptr i8, ptr %0, i64 16
  %6 = getelementptr i8, ptr %0, i64 8
  %7 = getelementptr i8, ptr %0, i64 24
  %8 = getelementptr i8, ptr %1, i64 16
  %9 = getelementptr i8, ptr %0, i64 16
  %10 = getelementptr i8, ptr %0, i64 32
  %11 = getelementptr i8, ptr %1, i64 24
  %12 = getelementptr i8, ptr %0, i64 24
  %13 = getelementptr i8, ptr %0, i64 40
  %14 = getelementptr i8, ptr %1, i64 32
  %15 = getelementptr i8, ptr %0, i64 32
  %16 = getelementptr i8, ptr %0, i64 48
  %17 = getelementptr i8, ptr %1, i64 40
  %18 = getelementptr i8, ptr %0, i64 40
  %19 = getelementptr i8, ptr %0, i64 56
  %20 = getelementptr i8, ptr %1, i64 48
  %21 = getelementptr i8, ptr %0, i64 48
  %22 = getelementptr i8, ptr %0, i64 64
  %23 = getelementptr i8, ptr %1, i64 56
  %24 = getelementptr i8, ptr %0, i64 56
  %25 = getelementptr i8, ptr %0, i64 72
  %26 = getelementptr i8, ptr %1, i64 64
  %27 = getelementptr i8, ptr %0, i64 64
  %28 = getelementptr i8, ptr %0, i64 80
  %29 = getelementptr i8, ptr %1, i64 72
  %30 = getelementptr i8, ptr %0, i64 72
  %31 = getelementptr i8, ptr %0, i64 88
  %32 = getelementptr i8, ptr %1, i64 80
  %33 = getelementptr i8, ptr %0, i64 80
  %34 = getelementptr i8, ptr %0, i64 96
  %35 = getelementptr i8, ptr %1, i64 88
  %36 = getelementptr i8, ptr %0, i64 88
  %37 = getelementptr i8, ptr %0, i64 104
  %38 = getelementptr i8, ptr %1, i64 96
  %39 = getelementptr i8, ptr %0, i64 96
  %40 = getelementptr i8, ptr %0, i64 112
  %41 = getelementptr i8, ptr %1, i64 104
  %42 = getelementptr i8, ptr %0, i64 104
  %43 = getelementptr i8, ptr %0, i64 120
  %44 = getelementptr i8, ptr %1, i64 112
  %45 = getelementptr i8, ptr %0, i64 112
  %46 = getelementptr i8, ptr %0, i64 128
  %47 = getelementptr i8, ptr %1, i64 120
  %48 = getelementptr i8, ptr %0, i64 120
  %49 = getelementptr i8, ptr %0, i64 136
  %50 = getelementptr i8, ptr %1, i64 128
  %51 = getelementptr i8, ptr %0, i64 128
  %52 = getelementptr i8, ptr %0, i64 144
  %53 = getelementptr i8, ptr %1, i64 136
  %54 = getelementptr i8, ptr %0, i64 136
  %55 = getelementptr i8, ptr %0, i64 152
  %56 = getelementptr i8, ptr %1, i64 144
  %57 = getelementptr i8, ptr %0, i64 144
  %58 = getelementptr i8, ptr %0, i64 160
  %59 = getelementptr i8, ptr %1, i64 152
  %60 = getelementptr i8, ptr %0, i64 152
  %61 = getelementptr i8, ptr %0, i64 168
  %62 = getelementptr i8, ptr %1, i64 160
  %63 = getelementptr i8, ptr %0, i64 160
  %64 = getelementptr i8, ptr %0, i64 176
  %65 = getelementptr i8, ptr %1, i64 168
  %66 = getelementptr i8, ptr %0, i64 168
  %67 = getelementptr i8, ptr %0, i64 184
  %68 = getelementptr i8, ptr %1, i64 176
  %69 = getelementptr i8, ptr %0, i64 176
  %70 = getelementptr i8, ptr %0, i64 192
  %71 = getelementptr i8, ptr %1, i64 184
  %72 = getelementptr i8, ptr %0, i64 184
  %73 = getelementptr i8, ptr %0, i64 200
  %74 = getelementptr i8, ptr %1, i64 192
  %75 = getelementptr i8, ptr %0, i64 192
  %76 = getelementptr i8, ptr %0, i64 208
  %77 = getelementptr i8, ptr %1, i64 200
  %78 = getelementptr i8, ptr %0, i64 200
  %79 = getelementptr i8, ptr %0, i64 216
  %80 = getelementptr i8, ptr %1, i64 208
  %81 = getelementptr i8, ptr %0, i64 208
  %82 = getelementptr i8, ptr %0, i64 224
  %83 = getelementptr i8, ptr %1, i64 216
  %84 = getelementptr i8, ptr %0, i64 216
  %85 = getelementptr inbounds nuw i8, ptr %0, i64 232
  %86 = getelementptr i8, ptr %1, i64 224
  %87 = getelementptr i8, ptr %1, i64 8
  %88 = getelementptr i8, ptr %1, i64 16
  %89 = getelementptr i8, ptr %1, i64 24
  %90 = getelementptr i8, ptr %1, i64 32
  %91 = getelementptr i8, ptr %1, i64 40
  %92 = getelementptr i8, ptr %1, i64 48
  %93 = getelementptr i8, ptr %1, i64 56
  %94 = getelementptr i8, ptr %1, i64 64
  %95 = getelementptr i8, ptr %1, i64 72
  %96 = getelementptr i8, ptr %1, i64 80
  %97 = getelementptr i8, ptr %1, i64 88
  %98 = getelementptr i8, ptr %1, i64 96
  %99 = getelementptr i8, ptr %1, i64 104
  %100 = getelementptr i8, ptr %1, i64 112
  %101 = getelementptr i8, ptr %1, i64 120
  %102 = getelementptr i8, ptr %1, i64 128
  %103 = getelementptr i8, ptr %1, i64 136
  %104 = getelementptr i8, ptr %1, i64 144
  %105 = getelementptr i8, ptr %1, i64 152
  %106 = getelementptr i8, ptr %1, i64 160
  %107 = getelementptr i8, ptr %1, i64 168
  %108 = getelementptr i8, ptr %1, i64 176
  %109 = getelementptr i8, ptr %1, i64 184
  %110 = getelementptr i8, ptr %1, i64 192
  %111 = getelementptr i8, ptr %1, i64 200
  %112 = getelementptr i8, ptr %1, i64 208
  %113 = getelementptr i8, ptr %1, i64 216
  %114 = getelementptr inbounds nuw i8, ptr %1, i64 232
  br label %.preheader22

.preheader22:                                     ; preds = %2, %.preheader22
  %.02125 = phi i32 [ 0, %2 ], [ %451, %.preheader22 ]
  %115 = load double, ptr %0, align 8
  %116 = load double, ptr %4, align 8
  %117 = fadd double %115, %116
  %118 = load double, ptr %5, align 8
  %119 = fadd double %117, %118
  %120 = fmul double %119, 3.333300e-01
  store double %120, ptr %3, align 8
  %121 = load double, ptr %6, align 8
  %122 = load double, ptr %5, align 8
  %123 = fadd double %121, %122
  %124 = load double, ptr %7, align 8
  %125 = fadd double %123, %124
  %126 = fmul double %125, 3.333300e-01
  store double %126, ptr %8, align 8
  %127 = load double, ptr %9, align 8
  %128 = load double, ptr %7, align 8
  %129 = fadd double %127, %128
  %130 = load double, ptr %10, align 8
  %131 = fadd double %129, %130
  %132 = fmul double %131, 3.333300e-01
  store double %132, ptr %11, align 8
  %133 = load double, ptr %12, align 8
  %134 = load double, ptr %10, align 8
  %135 = fadd double %133, %134
  %136 = load double, ptr %13, align 8
  %137 = fadd double %135, %136
  %138 = fmul double %137, 3.333300e-01
  store double %138, ptr %14, align 8
  %139 = load double, ptr %15, align 8
  %140 = load double, ptr %13, align 8
  %141 = fadd double %139, %140
  %142 = load double, ptr %16, align 8
  %143 = fadd double %141, %142
  %144 = fmul double %143, 3.333300e-01
  store double %144, ptr %17, align 8
  %145 = load double, ptr %18, align 8
  %146 = load double, ptr %16, align 8
  %147 = fadd double %145, %146
  %148 = load double, ptr %19, align 8
  %149 = fadd double %147, %148
  %150 = fmul double %149, 3.333300e-01
  store double %150, ptr %20, align 8
  %151 = load double, ptr %21, align 8
  %152 = load double, ptr %19, align 8
  %153 = fadd double %151, %152
  %154 = load double, ptr %22, align 8
  %155 = fadd double %153, %154
  %156 = fmul double %155, 3.333300e-01
  store double %156, ptr %23, align 8
  %157 = load double, ptr %24, align 8
  %158 = load double, ptr %22, align 8
  %159 = fadd double %157, %158
  %160 = load double, ptr %25, align 8
  %161 = fadd double %159, %160
  %162 = fmul double %161, 3.333300e-01
  store double %162, ptr %26, align 8
  %163 = load double, ptr %27, align 8
  %164 = load double, ptr %25, align 8
  %165 = fadd double %163, %164
  %166 = load double, ptr %28, align 8
  %167 = fadd double %165, %166
  %168 = fmul double %167, 3.333300e-01
  store double %168, ptr %29, align 8
  %169 = load double, ptr %30, align 8
  %170 = load double, ptr %28, align 8
  %171 = fadd double %169, %170
  %172 = load double, ptr %31, align 8
  %173 = fadd double %171, %172
  %174 = fmul double %173, 3.333300e-01
  store double %174, ptr %32, align 8
  %175 = load double, ptr %33, align 8
  %176 = load double, ptr %31, align 8
  %177 = fadd double %175, %176
  %178 = load double, ptr %34, align 8
  %179 = fadd double %177, %178
  %180 = fmul double %179, 3.333300e-01
  store double %180, ptr %35, align 8
  %181 = load double, ptr %36, align 8
  %182 = load double, ptr %34, align 8
  %183 = fadd double %181, %182
  %184 = load double, ptr %37, align 8
  %185 = fadd double %183, %184
  %186 = fmul double %185, 3.333300e-01
  store double %186, ptr %38, align 8
  %187 = load double, ptr %39, align 8
  %188 = load double, ptr %37, align 8
  %189 = fadd double %187, %188
  %190 = load double, ptr %40, align 8
  %191 = fadd double %189, %190
  %192 = fmul double %191, 3.333300e-01
  store double %192, ptr %41, align 8
  %193 = load double, ptr %42, align 8
  %194 = load double, ptr %40, align 8
  %195 = fadd double %193, %194
  %196 = load double, ptr %43, align 8
  %197 = fadd double %195, %196
  %198 = fmul double %197, 3.333300e-01
  store double %198, ptr %44, align 8
  %199 = load double, ptr %45, align 8
  %200 = load double, ptr %43, align 8
  %201 = fadd double %199, %200
  %202 = load double, ptr %46, align 8
  %203 = fadd double %201, %202
  %204 = fmul double %203, 3.333300e-01
  store double %204, ptr %47, align 8
  %205 = load double, ptr %48, align 8
  %206 = load double, ptr %46, align 8
  %207 = fadd double %205, %206
  %208 = load double, ptr %49, align 8
  %209 = fadd double %207, %208
  %210 = fmul double %209, 3.333300e-01
  store double %210, ptr %50, align 8
  %211 = load double, ptr %51, align 8
  %212 = load double, ptr %49, align 8
  %213 = fadd double %211, %212
  %214 = load double, ptr %52, align 8
  %215 = fadd double %213, %214
  %216 = fmul double %215, 3.333300e-01
  store double %216, ptr %53, align 8
  %217 = load double, ptr %54, align 8
  %218 = load double, ptr %52, align 8
  %219 = fadd double %217, %218
  %220 = load double, ptr %55, align 8
  %221 = fadd double %219, %220
  %222 = fmul double %221, 3.333300e-01
  store double %222, ptr %56, align 8
  %223 = load double, ptr %57, align 8
  %224 = load double, ptr %55, align 8
  %225 = fadd double %223, %224
  %226 = load double, ptr %58, align 8
  %227 = fadd double %225, %226
  %228 = fmul double %227, 3.333300e-01
  store double %228, ptr %59, align 8
  %229 = load double, ptr %60, align 8
  %230 = load double, ptr %58, align 8
  %231 = fadd double %229, %230
  %232 = load double, ptr %61, align 8
  %233 = fadd double %231, %232
  %234 = fmul double %233, 3.333300e-01
  store double %234, ptr %62, align 8
  %235 = load double, ptr %63, align 8
  %236 = load double, ptr %61, align 8
  %237 = fadd double %235, %236
  %238 = load double, ptr %64, align 8
  %239 = fadd double %237, %238
  %240 = fmul double %239, 3.333300e-01
  store double %240, ptr %65, align 8
  %241 = load double, ptr %66, align 8
  %242 = load double, ptr %64, align 8
  %243 = fadd double %241, %242
  %244 = load double, ptr %67, align 8
  %245 = fadd double %243, %244
  %246 = fmul double %245, 3.333300e-01
  store double %246, ptr %68, align 8
  %247 = load double, ptr %69, align 8
  %248 = load double, ptr %67, align 8
  %249 = fadd double %247, %248
  %250 = load double, ptr %70, align 8
  %251 = fadd double %249, %250
  %252 = fmul double %251, 3.333300e-01
  store double %252, ptr %71, align 8
  %253 = load double, ptr %72, align 8
  %254 = load double, ptr %70, align 8
  %255 = fadd double %253, %254
  %256 = load double, ptr %73, align 8
  %257 = fadd double %255, %256
  %258 = fmul double %257, 3.333300e-01
  store double %258, ptr %74, align 8
  %259 = load double, ptr %75, align 8
  %260 = load double, ptr %73, align 8
  %261 = fadd double %259, %260
  %262 = load double, ptr %76, align 8
  %263 = fadd double %261, %262
  %264 = fmul double %263, 3.333300e-01
  store double %264, ptr %77, align 8
  %265 = load double, ptr %78, align 8
  %266 = load double, ptr %76, align 8
  %267 = fadd double %265, %266
  %268 = load double, ptr %79, align 8
  %269 = fadd double %267, %268
  %270 = fmul double %269, 3.333300e-01
  store double %270, ptr %80, align 8
  %271 = load double, ptr %81, align 8
  %272 = load double, ptr %79, align 8
  %273 = fadd double %271, %272
  %274 = load double, ptr %82, align 8
  %275 = fadd double %273, %274
  %276 = fmul double %275, 3.333300e-01
  store double %276, ptr %83, align 8
  %277 = load double, ptr %84, align 8
  %278 = load double, ptr %82, align 8
  %279 = fadd double %277, %278
  %280 = load double, ptr %85, align 8
  %281 = fadd double %279, %280
  %282 = fmul double %281, 3.333300e-01
  store double %282, ptr %86, align 8
  %283 = load double, ptr %1, align 8
  %284 = load double, ptr %3, align 8
  %285 = fadd double %283, %284
  %286 = load double, ptr %8, align 8
  %287 = fadd double %285, %286
  %288 = fmul double %287, 3.333300e-01
  store double %288, ptr %4, align 8
  %289 = load double, ptr %87, align 8
  %290 = load double, ptr %8, align 8
  %291 = fadd double %289, %290
  %292 = load double, ptr %11, align 8
  %293 = fadd double %291, %292
  %294 = fmul double %293, 3.333300e-01
  store double %294, ptr %5, align 8
  %295 = load double, ptr %88, align 8
  %296 = load double, ptr %11, align 8
  %297 = fadd double %295, %296
  %298 = load double, ptr %14, align 8
  %299 = fadd double %297, %298
  %300 = fmul double %299, 3.333300e-01
  store double %300, ptr %7, align 8
  %301 = load double, ptr %89, align 8
  %302 = load double, ptr %14, align 8
  %303 = fadd double %301, %302
  %304 = load double, ptr %17, align 8
  %305 = fadd double %303, %304
  %306 = fmul double %305, 3.333300e-01
  store double %306, ptr %10, align 8
  %307 = load double, ptr %90, align 8
  %308 = load double, ptr %17, align 8
  %309 = fadd double %307, %308
  %310 = load double, ptr %20, align 8
  %311 = fadd double %309, %310
  %312 = fmul double %311, 3.333300e-01
  store double %312, ptr %13, align 8
  %313 = load double, ptr %91, align 8
  %314 = load double, ptr %20, align 8
  %315 = fadd double %313, %314
  %316 = load double, ptr %23, align 8
  %317 = fadd double %315, %316
  %318 = fmul double %317, 3.333300e-01
  store double %318, ptr %16, align 8
  %319 = load double, ptr %92, align 8
  %320 = load double, ptr %23, align 8
  %321 = fadd double %319, %320
  %322 = load double, ptr %26, align 8
  %323 = fadd double %321, %322
  %324 = fmul double %323, 3.333300e-01
  store double %324, ptr %19, align 8
  %325 = load double, ptr %93, align 8
  %326 = load double, ptr %26, align 8
  %327 = fadd double %325, %326
  %328 = load double, ptr %29, align 8
  %329 = fadd double %327, %328
  %330 = fmul double %329, 3.333300e-01
  store double %330, ptr %22, align 8
  %331 = load double, ptr %94, align 8
  %332 = load double, ptr %29, align 8
  %333 = fadd double %331, %332
  %334 = load double, ptr %32, align 8
  %335 = fadd double %333, %334
  %336 = fmul double %335, 3.333300e-01
  store double %336, ptr %25, align 8
  %337 = load double, ptr %95, align 8
  %338 = load double, ptr %32, align 8
  %339 = fadd double %337, %338
  %340 = load double, ptr %35, align 8
  %341 = fadd double %339, %340
  %342 = fmul double %341, 3.333300e-01
  store double %342, ptr %28, align 8
  %343 = load double, ptr %96, align 8
  %344 = load double, ptr %35, align 8
  %345 = fadd double %343, %344
  %346 = load double, ptr %38, align 8
  %347 = fadd double %345, %346
  %348 = fmul double %347, 3.333300e-01
  store double %348, ptr %31, align 8
  %349 = load double, ptr %97, align 8
  %350 = load double, ptr %38, align 8
  %351 = fadd double %349, %350
  %352 = load double, ptr %41, align 8
  %353 = fadd double %351, %352
  %354 = fmul double %353, 3.333300e-01
  store double %354, ptr %34, align 8
  %355 = load double, ptr %98, align 8
  %356 = load double, ptr %41, align 8
  %357 = fadd double %355, %356
  %358 = load double, ptr %44, align 8
  %359 = fadd double %357, %358
  %360 = fmul double %359, 3.333300e-01
  store double %360, ptr %37, align 8
  %361 = load double, ptr %99, align 8
  %362 = load double, ptr %44, align 8
  %363 = fadd double %361, %362
  %364 = load double, ptr %47, align 8
  %365 = fadd double %363, %364
  %366 = fmul double %365, 3.333300e-01
  store double %366, ptr %40, align 8
  %367 = load double, ptr %100, align 8
  %368 = load double, ptr %47, align 8
  %369 = fadd double %367, %368
  %370 = load double, ptr %50, align 8
  %371 = fadd double %369, %370
  %372 = fmul double %371, 3.333300e-01
  store double %372, ptr %43, align 8
  %373 = load double, ptr %101, align 8
  %374 = load double, ptr %50, align 8
  %375 = fadd double %373, %374
  %376 = load double, ptr %53, align 8
  %377 = fadd double %375, %376
  %378 = fmul double %377, 3.333300e-01
  store double %378, ptr %46, align 8
  %379 = load double, ptr %102, align 8
  %380 = load double, ptr %53, align 8
  %381 = fadd double %379, %380
  %382 = load double, ptr %56, align 8
  %383 = fadd double %381, %382
  %384 = fmul double %383, 3.333300e-01
  store double %384, ptr %49, align 8
  %385 = load double, ptr %103, align 8
  %386 = load double, ptr %56, align 8
  %387 = fadd double %385, %386
  %388 = load double, ptr %59, align 8
  %389 = fadd double %387, %388
  %390 = fmul double %389, 3.333300e-01
  store double %390, ptr %52, align 8
  %391 = load double, ptr %104, align 8
  %392 = load double, ptr %59, align 8
  %393 = fadd double %391, %392
  %394 = load double, ptr %62, align 8
  %395 = fadd double %393, %394
  %396 = fmul double %395, 3.333300e-01
  store double %396, ptr %55, align 8
  %397 = load double, ptr %105, align 8
  %398 = load double, ptr %62, align 8
  %399 = fadd double %397, %398
  %400 = load double, ptr %65, align 8
  %401 = fadd double %399, %400
  %402 = fmul double %401, 3.333300e-01
  store double %402, ptr %58, align 8
  %403 = load double, ptr %106, align 8
  %404 = load double, ptr %65, align 8
  %405 = fadd double %403, %404
  %406 = load double, ptr %68, align 8
  %407 = fadd double %405, %406
  %408 = fmul double %407, 3.333300e-01
  store double %408, ptr %61, align 8
  %409 = load double, ptr %107, align 8
  %410 = load double, ptr %68, align 8
  %411 = fadd double %409, %410
  %412 = load double, ptr %71, align 8
  %413 = fadd double %411, %412
  %414 = fmul double %413, 3.333300e-01
  store double %414, ptr %64, align 8
  %415 = load double, ptr %108, align 8
  %416 = load double, ptr %71, align 8
  %417 = fadd double %415, %416
  %418 = load double, ptr %74, align 8
  %419 = fadd double %417, %418
  %420 = fmul double %419, 3.333300e-01
  store double %420, ptr %67, align 8
  %421 = load double, ptr %109, align 8
  %422 = load double, ptr %74, align 8
  %423 = fadd double %421, %422
  %424 = load double, ptr %77, align 8
  %425 = fadd double %423, %424
  %426 = fmul double %425, 3.333300e-01
  store double %426, ptr %70, align 8
  %427 = load double, ptr %110, align 8
  %428 = load double, ptr %77, align 8
  %429 = fadd double %427, %428
  %430 = load double, ptr %80, align 8
  %431 = fadd double %429, %430
  %432 = fmul double %431, 3.333300e-01
  store double %432, ptr %73, align 8
  %433 = load double, ptr %111, align 8
  %434 = load double, ptr %80, align 8
  %435 = fadd double %433, %434
  %436 = load double, ptr %83, align 8
  %437 = fadd double %435, %436
  %438 = fmul double %437, 3.333300e-01
  store double %438, ptr %76, align 8
  %439 = load double, ptr %112, align 8
  %440 = load double, ptr %83, align 8
  %441 = fadd double %439, %440
  %442 = load double, ptr %86, align 8
  %443 = fadd double %441, %442
  %444 = fmul double %443, 3.333300e-01
  store double %444, ptr %79, align 8
  %445 = load double, ptr %113, align 8
  %446 = load double, ptr %86, align 8
  %447 = fadd double %445, %446
  %448 = load double, ptr %114, align 8
  %449 = fadd double %447, %448
  %450 = fmul double %449, 3.333300e-01
  store double %450, ptr %82, align 8
  %451 = add nuw nsw i32 %.02125, 1
  %exitcond.not = icmp eq i32 %451, 20
  br i1 %exitcond.not, label %452, label %.preheader22, !llvm.loop !11

452:                                              ; preds = %.preheader22
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @print_array(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
  %2 = tail call ptr @__acrt_iob_func(i32 noundef 2) #7
  %fwrite = tail call i64 @fwrite(ptr nonnull @"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@", i64 22, i64 1, ptr %2)
  %3 = tail call ptr @__acrt_iob_func(i32 noundef 2) #7
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@", ptr noundef nonnull @"??_C@_01FHEEJDEE@A?$AA@") #7
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
  %9 = tail call ptr @__acrt_iob_func(i32 noundef 2) #7
  %fputc = tail call i32 @fputc(i32 10, ptr %9)
  br label %10

10:                                               ; preds = %8, %5
  %11 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %12 = load double, ptr %11, align 8
  %13 = tail call ptr @__acrt_iob_func(i32 noundef 2) #7
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef nonnull @"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@", double noundef %12) #7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 30
  br i1 %exitcond.not, label %15, label %5, !llvm.loop !12

15:                                               ; preds = %10
  %16 = tail call ptr @__acrt_iob_func(i32 noundef 2) #7
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef nonnull @"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@", ptr noundef nonnull @"??_C@_01FHEEJDEE@A?$AA@") #7
  %18 = tail call ptr @__acrt_iob_func(i32 noundef 2) #7
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
  %7 = tail call i32 @__stdio_common_vfprintf(i64 noundef %6, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #7
  ret i32 %7
}

declare dso_local i32 @__stdio_common_vfprintf(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #6

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 24.0.0git (https://github.com/llvm/llvm-project.git 6f4196219399a3502cea3beb2d0c8c28b2241649)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\stencils\\jacobi-1d\\jacobi-1d.c", directory: "C:\\work\\llvm-profitability-research")
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
!12 = distinct !{!12, !8}
