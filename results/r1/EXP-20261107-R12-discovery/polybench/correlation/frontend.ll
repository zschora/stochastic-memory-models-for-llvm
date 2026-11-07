; ModuleID = 'C:\work\llvm-profitability-research\.tools\corpus\PolyBench\datamining\correlation\correlation.c'
source_filename = "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\datamining\\correlation\\correlation.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc19.51.36260"

$sprintf = comdat any

$vsprintf = comdat any

$_snprintf = comdat any

$_vsnprintf = comdat any

$_vsprintf_l = comdat any

$_vsnprintf_l = comdat any

$__local_stdio_printf_options = comdat any

$fprintf = comdat any

$_vfprintf_l = comdat any

$"??_C@_00CNPNBAHC@?$AA@" = comdat any

$"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = comdat any

$"??_C@_04MOHGEFGA@corr?$AA@" = comdat any

$"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@" = comdat any

$"??_C@_01EEMJAFIK@?6?$AA@" = comdat any

$"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@" = comdat any

$"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@" = comdat any

$"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = comdat any

@"??_C@_00CNPNBAHC@?$AA@" = linkonce_odr dso_local unnamed_addr constant [1 x i8] zeroinitializer, comdat, align 1
@__local_stdio_printf_options._OptionsStorage = internal global i64 0, align 8
@"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", comdat, align 8
@"??_C@_04MOHGEFGA@corr?$AA@" = linkonce_odr dso_local unnamed_addr constant [5 x i8] c"corr\00", comdat, align 4
@"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"begin dump: %s\00", comdat, align 8
@"??_C@_01EEMJAFIK@?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [2 x i8] c"\0A\00", comdat, align 4
@"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [8 x i8] c"%0.2lf \00", comdat, align 8
@"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", comdat, align 8
@"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", comdat, align 8

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i32 @sprintf(ptr noundef %0, ptr noundef %1, ...) #0 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.va_start.p0(ptr %6)
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %3, align 8
  %9 = load ptr, ptr %4, align 8
  %10 = call i32 @_vsprintf_l(ptr noundef %9, ptr noundef %8, ptr noundef null, ptr noundef %7)
  store i32 %10, ptr %5, align 4
  call void @llvm.va_end.p0(ptr %6)
  %11 = load i32, ptr %5, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i32 @vsprintf(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = call i32 @_vsnprintf_l(ptr noundef %9, i64 noundef -1, ptr noundef %8, ptr noundef null, ptr noundef %7)
  ret i32 %10
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i32 @_snprintf(ptr noundef %0, i64 noundef %1, ptr noundef %2, ...) #0 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  call void @llvm.va_start.p0(ptr %8)
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr %4, align 8
  %11 = load i64, ptr %5, align 8
  %12 = load ptr, ptr %6, align 8
  %13 = call i32 @_vsnprintf(ptr noundef %12, i64 noundef %11, ptr noundef %10, ptr noundef %9)
  store i32 %13, ptr %7, align 4
  call void @llvm.va_end.p0(ptr %8)
  %14 = load i32, ptr %7, align 4
  ret i32 %14
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i32 @_vsnprintf(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) #0 comdat {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  store ptr %3, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  store i64 %1, ptr %7, align 8
  store ptr %0, ptr %8, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = load ptr, ptr %6, align 8
  %11 = load i64, ptr %7, align 8
  %12 = load ptr, ptr %8, align 8
  %13 = call i32 @_vsnprintf_l(ptr noundef %12, i64 noundef %11, ptr noundef %10, ptr noundef null, ptr noundef %9)
  ret i32 %13
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  store i32 0, ptr %3, align 4
  store ptr %1, ptr %4, align 8
  store i32 %0, ptr %5, align 4
  store i32 32, ptr %6, align 4
  store i32 28, ptr %7, align 4
  %13 = call ptr @polybench_alloc_data(i64 noundef 896, i32 noundef 8)
  store ptr %13, ptr %9, align 8
  %14 = call ptr @polybench_alloc_data(i64 noundef 784, i32 noundef 8)
  store ptr %14, ptr %10, align 8
  %15 = call ptr @polybench_alloc_data(i64 noundef 28, i32 noundef 8)
  store ptr %15, ptr %11, align 8
  %16 = call ptr @polybench_alloc_data(i64 noundef 28, i32 noundef 8)
  store ptr %16, ptr %12, align 8
  %17 = load ptr, ptr %9, align 8
  %18 = getelementptr inbounds [32 x [28 x double]], ptr %17, i64 0, i64 0
  %19 = load i32, ptr %6, align 4
  %20 = load i32, ptr %7, align 4
  call void @init_array(i32 noundef %20, i32 noundef %19, ptr noundef %8, ptr noundef %18)
  %21 = load ptr, ptr %12, align 8
  %22 = getelementptr inbounds [28 x double], ptr %21, i64 0, i64 0
  %23 = load ptr, ptr %11, align 8
  %24 = getelementptr inbounds [28 x double], ptr %23, i64 0, i64 0
  %25 = load ptr, ptr %10, align 8
  %26 = getelementptr inbounds [28 x [28 x double]], ptr %25, i64 0, i64 0
  %27 = load ptr, ptr %9, align 8
  %28 = getelementptr inbounds [32 x [28 x double]], ptr %27, i64 0, i64 0
  %29 = load double, ptr %8, align 8
  %30 = load i32, ptr %6, align 4
  %31 = load i32, ptr %7, align 4
  call void @kernel_correlation(i32 noundef %31, i32 noundef %30, double noundef %29, ptr noundef %28, ptr noundef %26, ptr noundef %24, ptr noundef %22)
  %32 = load i32, ptr %5, align 4
  %33 = icmp sgt i32 %32, 42
  br i1 %33, label %34, label %44

34:                                               ; preds = %2
  %35 = load ptr, ptr %4, align 8
  %36 = getelementptr inbounds ptr, ptr %35, i64 0
  %37 = load ptr, ptr %36, align 8
  %38 = call i32 @strcmp(ptr noundef %37, ptr noundef @"??_C@_00CNPNBAHC@?$AA@") #5
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %34
  %41 = load ptr, ptr %10, align 8
  %42 = getelementptr inbounds [28 x [28 x double]], ptr %41, i64 0, i64 0
  %43 = load i32, ptr %7, align 4
  call void @print_array(i32 noundef %43, ptr noundef %42)
  br label %44

44:                                               ; preds = %40, %34, %2
  %45 = load ptr, ptr %9, align 8
  call void @free(ptr noundef %45)
  %46 = load ptr, ptr %10, align 8
  call void @free(ptr noundef %46)
  %47 = load ptr, ptr %11, align 8
  call void @free(ptr noundef %47)
  %48 = load ptr, ptr %12, align 8
  call void @free(ptr noundef %48)
  ret i32 0
}

declare dso_local ptr @polybench_alloc_data(i64 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store ptr %3, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  store i32 %1, ptr %7, align 4
  store i32 %0, ptr %8, align 4
  %11 = load ptr, ptr %6, align 8
  store double 3.200000e+01, ptr %11, align 8
  store i32 0, ptr %9, align 4
  br label %12

12:                                               ; preds = %39, %4
  %13 = load i32, ptr %9, align 4
  %14 = icmp slt i32 %13, 32
  br i1 %14, label %15, label %42

15:                                               ; preds = %12
  store i32 0, ptr %10, align 4
  br label %16

16:                                               ; preds = %35, %15
  %17 = load i32, ptr %10, align 4
  %18 = icmp slt i32 %17, 28
  br i1 %18, label %19, label %38

19:                                               ; preds = %16
  %20 = load i32, ptr %9, align 4
  %21 = load i32, ptr %10, align 4
  %22 = mul i32 %20, %21
  %23 = sitofp i32 %22 to double
  %24 = fdiv double %23, 2.800000e+01
  %25 = load i32, ptr %9, align 4
  %26 = sitofp i32 %25 to double
  %27 = fadd double %24, %26
  %28 = load ptr, ptr %5, align 8
  %29 = load i32, ptr %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [28 x double], ptr %28, i64 %30
  %32 = load i32, ptr %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [28 x double], ptr %31, i64 0, i64 %33
  store double %27, ptr %34, align 8
  br label %35

35:                                               ; preds = %19
  %36 = load i32, ptr %10, align 4
  %37 = add i32 %36, 1
  store i32 %37, ptr %10, align 4
  br label %16, !llvm.loop !7

38:                                               ; preds = %16
  br label %39

39:                                               ; preds = %38
  %40 = load i32, ptr %9, align 4
  %41 = add i32 %40, 1
  store i32 %41, ptr %9, align 4
  br label %12, !llvm.loop !9

42:                                               ; preds = %12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_correlation(i32 noundef %0, i32 noundef %1, double noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #0 {
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca double, align 8
  store ptr %6, ptr %8, align 8
  store ptr %5, ptr %9, align 8
  store ptr %4, ptr %10, align 8
  store ptr %3, ptr %11, align 8
  store double %2, ptr %12, align 8
  store i32 %1, ptr %13, align 4
  store i32 %0, ptr %14, align 4
  store double 1.000000e-01, ptr %18, align 8
  store i32 0, ptr %16, align 4
  br label %19

19:                                               ; preds = %56, %7
  %20 = load i32, ptr %16, align 4
  %21 = icmp slt i32 %20, 28
  br i1 %21, label %22, label %59

22:                                               ; preds = %19
  %23 = load ptr, ptr %9, align 8
  %24 = load i32, ptr %16, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds double, ptr %23, i64 %25
  store double 0.000000e+00, ptr %26, align 8
  store i32 0, ptr %15, align 4
  br label %27

27:                                               ; preds = %45, %22
  %28 = load i32, ptr %15, align 4
  %29 = icmp slt i32 %28, 32
  br i1 %29, label %30, label %48

30:                                               ; preds = %27
  %31 = load ptr, ptr %11, align 8
  %32 = load i32, ptr %15, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [28 x double], ptr %31, i64 %33
  %35 = load i32, ptr %16, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [28 x double], ptr %34, i64 0, i64 %36
  %38 = load double, ptr %37, align 8
  %39 = load ptr, ptr %9, align 8
  %40 = load i32, ptr %16, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds double, ptr %39, i64 %41
  %43 = load double, ptr %42, align 8
  %44 = fadd double %43, %38
  store double %44, ptr %42, align 8
  br label %45

45:                                               ; preds = %30
  %46 = load i32, ptr %15, align 4
  %47 = add i32 %46, 1
  store i32 %47, ptr %15, align 4
  br label %27, !llvm.loop !10

48:                                               ; preds = %27
  %49 = load double, ptr %12, align 8
  %50 = load ptr, ptr %9, align 8
  %51 = load i32, ptr %16, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds double, ptr %50, i64 %52
  %54 = load double, ptr %53, align 8
  %55 = fdiv double %54, %49
  store double %55, ptr %53, align 8
  br label %56

56:                                               ; preds = %48
  %57 = load i32, ptr %16, align 4
  %58 = add i32 %57, 1
  store i32 %58, ptr %16, align 4
  br label %19, !llvm.loop !11

59:                                               ; preds = %19
  store i32 0, ptr %16, align 4
  br label %60

60:                                               ; preds = %147, %59
  %61 = load i32, ptr %16, align 4
  %62 = icmp slt i32 %61, 28
  br i1 %62, label %63, label %150

63:                                               ; preds = %60
  %64 = load ptr, ptr %8, align 8
  %65 = load i32, ptr %16, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds double, ptr %64, i64 %66
  store double 0.000000e+00, ptr %67, align 8
  store i32 0, ptr %15, align 4
  br label %68

68:                                               ; preds = %106, %63
  %69 = load i32, ptr %15, align 4
  %70 = icmp slt i32 %69, 32
  br i1 %70, label %71, label %109

71:                                               ; preds = %68
  %72 = load ptr, ptr %11, align 8
  %73 = load i32, ptr %15, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [28 x double], ptr %72, i64 %74
  %76 = load i32, ptr %16, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [28 x double], ptr %75, i64 0, i64 %77
  %79 = load double, ptr %78, align 8
  %80 = load ptr, ptr %9, align 8
  %81 = load i32, ptr %16, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds double, ptr %80, i64 %82
  %84 = load double, ptr %83, align 8
  %85 = fsub double %79, %84
  %86 = load ptr, ptr %11, align 8
  %87 = load i32, ptr %15, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [28 x double], ptr %86, i64 %88
  %90 = load i32, ptr %16, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [28 x double], ptr %89, i64 0, i64 %91
  %93 = load double, ptr %92, align 8
  %94 = load ptr, ptr %9, align 8
  %95 = load i32, ptr %16, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds double, ptr %94, i64 %96
  %98 = load double, ptr %97, align 8
  %99 = fsub double %93, %98
  %100 = load ptr, ptr %8, align 8
  %101 = load i32, ptr %16, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds double, ptr %100, i64 %102
  %104 = load double, ptr %103, align 8
  %105 = call double @llvm.fmuladd.f64(double %85, double %99, double %104)
  store double %105, ptr %103, align 8
  br label %106

106:                                              ; preds = %71
  %107 = load i32, ptr %15, align 4
  %108 = add i32 %107, 1
  store i32 %108, ptr %15, align 4
  br label %68, !llvm.loop !12

109:                                              ; preds = %68
  %110 = load double, ptr %12, align 8
  %111 = load ptr, ptr %8, align 8
  %112 = load i32, ptr %16, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds double, ptr %111, i64 %113
  %115 = load double, ptr %114, align 8
  %116 = fdiv double %115, %110
  store double %116, ptr %114, align 8
  %117 = load ptr, ptr %8, align 8
  %118 = load i32, ptr %16, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds double, ptr %117, i64 %119
  %121 = load double, ptr %120, align 8
  %122 = call double @sqrt(double noundef %121) #5
  %123 = load ptr, ptr %8, align 8
  %124 = load i32, ptr %16, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds double, ptr %123, i64 %125
  store double %122, ptr %126, align 8
  %127 = load ptr, ptr %8, align 8
  %128 = load i32, ptr %16, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds double, ptr %127, i64 %129
  %131 = load double, ptr %130, align 8
  %132 = load double, ptr %18, align 8
  %133 = fcmp ole double %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %109
  br label %141

135:                                              ; preds = %109
  %136 = load ptr, ptr %8, align 8
  %137 = load i32, ptr %16, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds double, ptr %136, i64 %138
  %140 = load double, ptr %139, align 8
  br label %141

141:                                              ; preds = %135, %134
  %142 = phi double [ 1.000000e+00, %134 ], [ %140, %135 ]
  %143 = load ptr, ptr %8, align 8
  %144 = load i32, ptr %16, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds double, ptr %143, i64 %145
  store double %142, ptr %146, align 8
  br label %147

147:                                              ; preds = %141
  %148 = load i32, ptr %16, align 4
  %149 = add i32 %148, 1
  store i32 %149, ptr %16, align 4
  br label %60, !llvm.loop !13

150:                                              ; preds = %60
  store i32 0, ptr %15, align 4
  br label %151

151:                                              ; preds = %194, %150
  %152 = load i32, ptr %15, align 4
  %153 = icmp slt i32 %152, 32
  br i1 %153, label %154, label %197

154:                                              ; preds = %151
  store i32 0, ptr %16, align 4
  br label %155

155:                                              ; preds = %190, %154
  %156 = load i32, ptr %16, align 4
  %157 = icmp slt i32 %156, 28
  br i1 %157, label %158, label %193

158:                                              ; preds = %155
  %159 = load ptr, ptr %9, align 8
  %160 = load i32, ptr %16, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds double, ptr %159, i64 %161
  %163 = load double, ptr %162, align 8
  %164 = load ptr, ptr %11, align 8
  %165 = load i32, ptr %15, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [28 x double], ptr %164, i64 %166
  %168 = load i32, ptr %16, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [28 x double], ptr %167, i64 0, i64 %169
  %171 = load double, ptr %170, align 8
  %172 = fsub double %171, %163
  store double %172, ptr %170, align 8
  %173 = load double, ptr %12, align 8
  %174 = call double @sqrt(double noundef %173) #5
  %175 = load ptr, ptr %8, align 8
  %176 = load i32, ptr %16, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds double, ptr %175, i64 %177
  %179 = load double, ptr %178, align 8
  %180 = fmul double %174, %179
  %181 = load ptr, ptr %11, align 8
  %182 = load i32, ptr %15, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [28 x double], ptr %181, i64 %183
  %185 = load i32, ptr %16, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds [28 x double], ptr %184, i64 0, i64 %186
  %188 = load double, ptr %187, align 8
  %189 = fdiv double %188, %180
  store double %189, ptr %187, align 8
  br label %190

190:                                              ; preds = %158
  %191 = load i32, ptr %16, align 4
  %192 = add i32 %191, 1
  store i32 %192, ptr %16, align 4
  br label %155, !llvm.loop !14

193:                                              ; preds = %155
  br label %194

194:                                              ; preds = %193
  %195 = load i32, ptr %15, align 4
  %196 = add i32 %195, 1
  store i32 %196, ptr %15, align 4
  br label %151, !llvm.loop !15

197:                                              ; preds = %151
  store i32 0, ptr %15, align 4
  br label %198

198:                                              ; preds = %274, %197
  %199 = load i32, ptr %15, align 4
  %200 = icmp slt i32 %199, 27
  br i1 %200, label %201, label %277

201:                                              ; preds = %198
  %202 = load ptr, ptr %10, align 8
  %203 = load i32, ptr %15, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds [28 x double], ptr %202, i64 %204
  %206 = load i32, ptr %15, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds [28 x double], ptr %205, i64 0, i64 %207
  store double 1.000000e+00, ptr %208, align 8
  %209 = load i32, ptr %15, align 4
  %210 = add i32 %209, 1
  store i32 %210, ptr %16, align 4
  br label %211

211:                                              ; preds = %270, %201
  %212 = load i32, ptr %16, align 4
  %213 = icmp slt i32 %212, 28
  br i1 %213, label %214, label %273

214:                                              ; preds = %211
  %215 = load ptr, ptr %10, align 8
  %216 = load i32, ptr %15, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds [28 x double], ptr %215, i64 %217
  %219 = load i32, ptr %16, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds [28 x double], ptr %218, i64 0, i64 %220
  store double 0.000000e+00, ptr %221, align 8
  store i32 0, ptr %17, align 4
  br label %222

222:                                              ; preds = %251, %214
  %223 = load i32, ptr %17, align 4
  %224 = icmp slt i32 %223, 32
  br i1 %224, label %225, label %254

225:                                              ; preds = %222
  %226 = load ptr, ptr %11, align 8
  %227 = load i32, ptr %17, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds [28 x double], ptr %226, i64 %228
  %230 = load i32, ptr %15, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds [28 x double], ptr %229, i64 0, i64 %231
  %233 = load double, ptr %232, align 8
  %234 = load ptr, ptr %11, align 8
  %235 = load i32, ptr %17, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds [28 x double], ptr %234, i64 %236
  %238 = load i32, ptr %16, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds [28 x double], ptr %237, i64 0, i64 %239
  %241 = load double, ptr %240, align 8
  %242 = load ptr, ptr %10, align 8
  %243 = load i32, ptr %15, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds [28 x double], ptr %242, i64 %244
  %246 = load i32, ptr %16, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds [28 x double], ptr %245, i64 0, i64 %247
  %249 = load double, ptr %248, align 8
  %250 = call double @llvm.fmuladd.f64(double %233, double %241, double %249)
  store double %250, ptr %248, align 8
  br label %251

251:                                              ; preds = %225
  %252 = load i32, ptr %17, align 4
  %253 = add i32 %252, 1
  store i32 %253, ptr %17, align 4
  br label %222, !llvm.loop !16

254:                                              ; preds = %222
  %255 = load ptr, ptr %10, align 8
  %256 = load i32, ptr %15, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds [28 x double], ptr %255, i64 %257
  %259 = load i32, ptr %16, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds [28 x double], ptr %258, i64 0, i64 %260
  %262 = load double, ptr %261, align 8
  %263 = load ptr, ptr %10, align 8
  %264 = load i32, ptr %16, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds [28 x double], ptr %263, i64 %265
  %267 = load i32, ptr %15, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds [28 x double], ptr %266, i64 0, i64 %268
  store double %262, ptr %269, align 8
  br label %270

270:                                              ; preds = %254
  %271 = load i32, ptr %16, align 4
  %272 = add i32 %271, 1
  store i32 %272, ptr %16, align 4
  br label %211, !llvm.loop !17

273:                                              ; preds = %211
  br label %274

274:                                              ; preds = %273
  %275 = load i32, ptr %15, align 4
  %276 = add i32 %275, 1
  store i32 %276, ptr %15, align 4
  br label %198, !llvm.loop !18

277:                                              ; preds = %198
  %278 = load ptr, ptr %10, align 8
  %279 = getelementptr inbounds [28 x double], ptr %278, i64 27
  %280 = getelementptr inbounds [28 x double], ptr %279, i64 0, i64 27
  store double 1.000000e+00, ptr %280, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @strcmp(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %1, ptr %3, align 8
  store i32 %0, ptr %4, align 4
  %7 = call ptr @__acrt_iob_func(i32 noundef 2)
  %8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@") #5
  %9 = call ptr @__acrt_iob_func(i32 noundef 2)
  %10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@", ptr noundef @"??_C@_04MOHGEFGA@corr?$AA@") #5
  store i32 0, ptr %5, align 4
  br label %11

11:                                               ; preds = %46, %2
  %12 = load i32, ptr %5, align 4
  %13 = load i32, ptr %4, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %49

15:                                               ; preds = %11
  store i32 0, ptr %6, align 4
  br label %16

16:                                               ; preds = %42, %15
  %17 = load i32, ptr %6, align 4
  %18 = load i32, ptr %4, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %45

20:                                               ; preds = %16
  %21 = load i32, ptr %5, align 4
  %22 = load i32, ptr %4, align 4
  %23 = mul i32 %21, %22
  %24 = load i32, ptr %6, align 4
  %25 = add i32 %23, %24
  %26 = srem i32 %25, 20
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = call ptr @__acrt_iob_func(i32 noundef 2)
  %30 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef @"??_C@_01EEMJAFIK@?6?$AA@") #5
  br label %31

31:                                               ; preds = %28, %20
  %32 = load ptr, ptr %3, align 8
  %33 = load i32, ptr %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [28 x double], ptr %32, i64 %34
  %36 = load i32, ptr %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [28 x double], ptr %35, i64 0, i64 %37
  %39 = load double, ptr %38, align 8
  %40 = call ptr @__acrt_iob_func(i32 noundef 2)
  %41 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %40, ptr noundef @"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@", double noundef %39) #5
  br label %42

42:                                               ; preds = %31
  %43 = load i32, ptr %6, align 4
  %44 = add i32 %43, 1
  store i32 %44, ptr %6, align 4
  br label %16, !llvm.loop !19

45:                                               ; preds = %16
  br label %46

46:                                               ; preds = %45
  %47 = load i32, ptr %5, align 4
  %48 = add i32 %47, 1
  store i32 %48, ptr %5, align 4
  br label %11, !llvm.loop !20

49:                                               ; preds = %11
  %50 = call ptr @__acrt_iob_func(i32 noundef 2)
  %51 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %50, ptr noundef @"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@", ptr noundef @"??_C@_04MOHGEFGA@corr?$AA@") #5
  %52 = call ptr @__acrt_iob_func(i32 noundef 2)
  %53 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %52, ptr noundef @"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@") #5
  ret void
}

declare dso_local void @free(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #3

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i32 @_vsprintf_l(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 comdat {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %3, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %0, ptr %8, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = load ptr, ptr %6, align 8
  %11 = load ptr, ptr %7, align 8
  %12 = load ptr, ptr %8, align 8
  %13 = call i32 @_vsnprintf_l(ptr noundef %12, i64 noundef -1, ptr noundef %11, ptr noundef %10, ptr noundef %9)
  ret i32 %13
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #3

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i32 @_vsnprintf_l(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 comdat {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  store ptr %4, ptr %6, align 8
  store ptr %3, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  store i64 %1, ptr %9, align 8
  store ptr %0, ptr %10, align 8
  %12 = load ptr, ptr %6, align 8
  %13 = load ptr, ptr %7, align 8
  %14 = load ptr, ptr %8, align 8
  %15 = load i64, ptr %9, align 8
  %16 = load ptr, ptr %10, align 8
  %17 = call ptr @__local_stdio_printf_options()
  %18 = load i64, ptr %17, align 8
  %19 = or i64 %18, 1
  %20 = call i32 @__stdio_common_vsprintf(i64 noundef %19, ptr noundef %16, i64 noundef %15, ptr noundef %14, ptr noundef %13, ptr noundef %12)
  store i32 %20, ptr %11, align 4
  %21 = load i32, ptr %11, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %5
  br label %26

24:                                               ; preds = %5
  %25 = load i32, ptr %11, align 4
  br label %26

26:                                               ; preds = %24, %23
  %27 = phi i32 [ -1, %23 ], [ %25, %24 ]
  ret i32 %27
}

declare dso_local i32 @__stdio_common_vsprintf(i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local ptr @__local_stdio_printf_options() #0 comdat {
  ret ptr @__local_stdio_printf_options._OptionsStorage
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: nounwind
declare dso_local double @sqrt(double noundef) #2

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i32 @fprintf(ptr noundef %0, ptr noundef %1, ...) #0 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.va_start.p0(ptr %6)
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %3, align 8
  %9 = load ptr, ptr %4, align 8
  %10 = call i32 @_vfprintf_l(ptr noundef %9, ptr noundef %8, ptr noundef null, ptr noundef %7)
  store i32 %10, ptr %5, align 4
  call void @llvm.va_end.p0(ptr %6)
  %11 = load i32, ptr %5, align 4
  ret i32 %11
}

declare dso_local ptr @__acrt_iob_func(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i32 @_vfprintf_l(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 comdat {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %3, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %0, ptr %8, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = load ptr, ptr %6, align 8
  %11 = load ptr, ptr %7, align 8
  %12 = load ptr, ptr %8, align 8
  %13 = call ptr @__local_stdio_printf_options()
  %14 = load i64, ptr %13, align 8
  %15 = call i32 @__stdio_common_vfprintf(i64 noundef %14, ptr noundef %12, ptr noundef %11, ptr noundef %10, ptr noundef %9)
  ret i32 %15
}

declare dso_local i32 @__stdio_common_vfprintf(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 24.0.0git (https://github.com/llvm/llvm-project.git 6f4196219399a3502cea3beb2d0c8c28b2241649)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\datamining\\correlation\\correlation.c", directory: "C:\\work\\llvm-profitability-research")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"MaxTLSAlign", i32 65536}
!6 = !{!"clang version 24.0.0git (https://github.com/llvm/llvm-project.git 6f4196219399a3502cea3beb2d0c8c28b2241649)"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !8}
!12 = distinct !{!12, !8}
!13 = distinct !{!13, !8}
!14 = distinct !{!14, !8}
!15 = distinct !{!15, !8}
!16 = distinct !{!16, !8}
!17 = distinct !{!17, !8}
!18 = distinct !{!18, !8}
!19 = distinct !{!19, !8}
!20 = distinct !{!20, !8}
