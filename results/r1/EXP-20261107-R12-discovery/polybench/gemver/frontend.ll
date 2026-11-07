; ModuleID = 'C:\work\llvm-profitability-research\.tools\corpus\PolyBench\linear-algebra\blas\gemver\gemver.c'
source_filename = "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\linear-algebra\\blas\\gemver\\gemver.c"
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

$"??_C@_01NOFIACDB@w?$AA@" = comdat any

$"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@" = comdat any

$"??_C@_01EEMJAFIK@?6?$AA@" = comdat any

$"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@" = comdat any

$"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@" = comdat any

$"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = comdat any

@"??_C@_00CNPNBAHC@?$AA@" = linkonce_odr dso_local unnamed_addr constant [1 x i8] zeroinitializer, comdat, align 1
@__local_stdio_printf_options._OptionsStorage = internal global i64 0, align 8
@"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", comdat, align 8
@"??_C@_01NOFIACDB@w?$AA@" = linkonce_odr dso_local unnamed_addr constant [2 x i8] c"w\00", comdat, align 4
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
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  store i32 0, ptr %3, align 4
  store ptr %1, ptr %4, align 8
  store i32 %0, ptr %5, align 4
  store i32 40, ptr %6, align 4
  %18 = call ptr @polybench_alloc_data(i64 noundef 1600, i32 noundef 8)
  store ptr %18, ptr %9, align 8
  %19 = call ptr @polybench_alloc_data(i64 noundef 40, i32 noundef 8)
  store ptr %19, ptr %10, align 8
  %20 = call ptr @polybench_alloc_data(i64 noundef 40, i32 noundef 8)
  store ptr %20, ptr %11, align 8
  %21 = call ptr @polybench_alloc_data(i64 noundef 40, i32 noundef 8)
  store ptr %21, ptr %12, align 8
  %22 = call ptr @polybench_alloc_data(i64 noundef 40, i32 noundef 8)
  store ptr %22, ptr %13, align 8
  %23 = call ptr @polybench_alloc_data(i64 noundef 40, i32 noundef 8)
  store ptr %23, ptr %14, align 8
  %24 = call ptr @polybench_alloc_data(i64 noundef 40, i32 noundef 8)
  store ptr %24, ptr %15, align 8
  %25 = call ptr @polybench_alloc_data(i64 noundef 40, i32 noundef 8)
  store ptr %25, ptr %16, align 8
  %26 = call ptr @polybench_alloc_data(i64 noundef 40, i32 noundef 8)
  store ptr %26, ptr %17, align 8
  %27 = load ptr, ptr %17, align 8
  %28 = getelementptr inbounds [40 x double], ptr %27, i64 0, i64 0
  %29 = load ptr, ptr %16, align 8
  %30 = getelementptr inbounds [40 x double], ptr %29, i64 0, i64 0
  %31 = load ptr, ptr %15, align 8
  %32 = getelementptr inbounds [40 x double], ptr %31, i64 0, i64 0
  %33 = load ptr, ptr %14, align 8
  %34 = getelementptr inbounds [40 x double], ptr %33, i64 0, i64 0
  %35 = load ptr, ptr %13, align 8
  %36 = getelementptr inbounds [40 x double], ptr %35, i64 0, i64 0
  %37 = load ptr, ptr %12, align 8
  %38 = getelementptr inbounds [40 x double], ptr %37, i64 0, i64 0
  %39 = load ptr, ptr %11, align 8
  %40 = getelementptr inbounds [40 x double], ptr %39, i64 0, i64 0
  %41 = load ptr, ptr %10, align 8
  %42 = getelementptr inbounds [40 x double], ptr %41, i64 0, i64 0
  %43 = load ptr, ptr %9, align 8
  %44 = getelementptr inbounds [40 x [40 x double]], ptr %43, i64 0, i64 0
  %45 = load i32, ptr %6, align 4
  call void @init_array(i32 noundef %45, ptr noundef %7, ptr noundef %8, ptr noundef %44, ptr noundef %42, ptr noundef %40, ptr noundef %38, ptr noundef %36, ptr noundef %34, ptr noundef %32, ptr noundef %30, ptr noundef %28)
  %46 = load ptr, ptr %17, align 8
  %47 = getelementptr inbounds [40 x double], ptr %46, i64 0, i64 0
  %48 = load ptr, ptr %16, align 8
  %49 = getelementptr inbounds [40 x double], ptr %48, i64 0, i64 0
  %50 = load ptr, ptr %15, align 8
  %51 = getelementptr inbounds [40 x double], ptr %50, i64 0, i64 0
  %52 = load ptr, ptr %14, align 8
  %53 = getelementptr inbounds [40 x double], ptr %52, i64 0, i64 0
  %54 = load ptr, ptr %13, align 8
  %55 = getelementptr inbounds [40 x double], ptr %54, i64 0, i64 0
  %56 = load ptr, ptr %12, align 8
  %57 = getelementptr inbounds [40 x double], ptr %56, i64 0, i64 0
  %58 = load ptr, ptr %11, align 8
  %59 = getelementptr inbounds [40 x double], ptr %58, i64 0, i64 0
  %60 = load ptr, ptr %10, align 8
  %61 = getelementptr inbounds [40 x double], ptr %60, i64 0, i64 0
  %62 = load ptr, ptr %9, align 8
  %63 = getelementptr inbounds [40 x [40 x double]], ptr %62, i64 0, i64 0
  %64 = load double, ptr %8, align 8
  %65 = load double, ptr %7, align 8
  %66 = load i32, ptr %6, align 4
  call void @kernel_gemver(i32 noundef %66, double noundef %65, double noundef %64, ptr noundef %63, ptr noundef %61, ptr noundef %59, ptr noundef %57, ptr noundef %55, ptr noundef %53, ptr noundef %51, ptr noundef %49, ptr noundef %47)
  %67 = load i32, ptr %5, align 4
  %68 = icmp sgt i32 %67, 42
  br i1 %68, label %69, label %79

69:                                               ; preds = %2
  %70 = load ptr, ptr %4, align 8
  %71 = getelementptr inbounds ptr, ptr %70, i64 0
  %72 = load ptr, ptr %71, align 8
  %73 = call i32 @strcmp(ptr noundef %72, ptr noundef @"??_C@_00CNPNBAHC@?$AA@") #5
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %69
  %76 = load ptr, ptr %14, align 8
  %77 = getelementptr inbounds [40 x double], ptr %76, i64 0, i64 0
  %78 = load i32, ptr %6, align 4
  call void @print_array(i32 noundef %78, ptr noundef %77)
  br label %79

79:                                               ; preds = %75, %69, %2
  %80 = load ptr, ptr %9, align 8
  call void @free(ptr noundef %80)
  %81 = load ptr, ptr %10, align 8
  call void @free(ptr noundef %81)
  %82 = load ptr, ptr %11, align 8
  call void @free(ptr noundef %82)
  %83 = load ptr, ptr %12, align 8
  call void @free(ptr noundef %83)
  %84 = load ptr, ptr %13, align 8
  call void @free(ptr noundef %84)
  %85 = load ptr, ptr %14, align 8
  call void @free(ptr noundef %85)
  %86 = load ptr, ptr %15, align 8
  call void @free(ptr noundef %86)
  %87 = load ptr, ptr %16, align 8
  call void @free(ptr noundef %87)
  %88 = load ptr, ptr %17, align 8
  call void @free(ptr noundef %88)
  ret i32 0
}

declare dso_local ptr @polybench_alloc_data(i64 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11) #0 {
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca ptr, align 8
  %22 = alloca ptr, align 8
  %23 = alloca ptr, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca double, align 8
  store ptr %11, ptr %13, align 8
  store ptr %10, ptr %14, align 8
  store ptr %9, ptr %15, align 8
  store ptr %8, ptr %16, align 8
  store ptr %7, ptr %17, align 8
  store ptr %6, ptr %18, align 8
  store ptr %5, ptr %19, align 8
  store ptr %4, ptr %20, align 8
  store ptr %3, ptr %21, align 8
  store ptr %2, ptr %22, align 8
  store ptr %1, ptr %23, align 8
  store i32 %0, ptr %24, align 4
  %28 = load ptr, ptr %23, align 8
  store double 1.500000e+00, ptr %28, align 8
  %29 = load ptr, ptr %22, align 8
  store double 1.200000e+00, ptr %29, align 8
  %30 = load i32, ptr %24, align 4
  %31 = sitofp i32 %30 to double
  store double %31, ptr %27, align 8
  store i32 0, ptr %25, align 4
  br label %32

32:                                               ; preds = %126, %12
  %33 = load i32, ptr %25, align 4
  %34 = load i32, ptr %24, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %129

36:                                               ; preds = %32
  %37 = load i32, ptr %25, align 4
  %38 = sitofp i32 %37 to double
  %39 = load ptr, ptr %20, align 8
  %40 = load i32, ptr %25, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds double, ptr %39, i64 %41
  store double %38, ptr %42, align 8
  %43 = load i32, ptr %25, align 4
  %44 = add i32 %43, 1
  %45 = sitofp i32 %44 to double
  %46 = load double, ptr %27, align 8
  %47 = fdiv double %45, %46
  %48 = fdiv double %47, 2.000000e+00
  %49 = load ptr, ptr %18, align 8
  %50 = load i32, ptr %25, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds double, ptr %49, i64 %51
  store double %48, ptr %52, align 8
  %53 = load i32, ptr %25, align 4
  %54 = add i32 %53, 1
  %55 = sitofp i32 %54 to double
  %56 = load double, ptr %27, align 8
  %57 = fdiv double %55, %56
  %58 = fdiv double %57, 4.000000e+00
  %59 = load ptr, ptr %19, align 8
  %60 = load i32, ptr %25, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds double, ptr %59, i64 %61
  store double %58, ptr %62, align 8
  %63 = load i32, ptr %25, align 4
  %64 = add i32 %63, 1
  %65 = sitofp i32 %64 to double
  %66 = load double, ptr %27, align 8
  %67 = fdiv double %65, %66
  %68 = fdiv double %67, 6.000000e+00
  %69 = load ptr, ptr %17, align 8
  %70 = load i32, ptr %25, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds double, ptr %69, i64 %71
  store double %68, ptr %72, align 8
  %73 = load i32, ptr %25, align 4
  %74 = add i32 %73, 1
  %75 = sitofp i32 %74 to double
  %76 = load double, ptr %27, align 8
  %77 = fdiv double %75, %76
  %78 = fdiv double %77, 8.000000e+00
  %79 = load ptr, ptr %14, align 8
  %80 = load i32, ptr %25, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds double, ptr %79, i64 %81
  store double %78, ptr %82, align 8
  %83 = load i32, ptr %25, align 4
  %84 = add i32 %83, 1
  %85 = sitofp i32 %84 to double
  %86 = load double, ptr %27, align 8
  %87 = fdiv double %85, %86
  %88 = fdiv double %87, 9.000000e+00
  %89 = load ptr, ptr %13, align 8
  %90 = load i32, ptr %25, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds double, ptr %89, i64 %91
  store double %88, ptr %92, align 8
  %93 = load ptr, ptr %15, align 8
  %94 = load i32, ptr %25, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds double, ptr %93, i64 %95
  store double 0.000000e+00, ptr %96, align 8
  %97 = load ptr, ptr %16, align 8
  %98 = load i32, ptr %25, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds double, ptr %97, i64 %99
  store double 0.000000e+00, ptr %100, align 8
  store i32 0, ptr %26, align 4
  br label %101

101:                                              ; preds = %122, %36
  %102 = load i32, ptr %26, align 4
  %103 = load i32, ptr %24, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %125

105:                                              ; preds = %101
  %106 = load i32, ptr %25, align 4
  %107 = load i32, ptr %26, align 4
  %108 = mul i32 %106, %107
  %109 = load i32, ptr %24, align 4
  %110 = srem i32 %108, %109
  %111 = sitofp i32 %110 to double
  %112 = load i32, ptr %24, align 4
  %113 = sitofp i32 %112 to double
  %114 = fdiv double %111, %113
  %115 = load ptr, ptr %21, align 8
  %116 = load i32, ptr %25, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [40 x double], ptr %115, i64 %117
  %119 = load i32, ptr %26, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [40 x double], ptr %118, i64 0, i64 %120
  store double %114, ptr %121, align 8
  br label %122

122:                                              ; preds = %105
  %123 = load i32, ptr %26, align 4
  %124 = add i32 %123, 1
  store i32 %124, ptr %26, align 4
  br label %101, !llvm.loop !7

125:                                              ; preds = %101
  br label %126

126:                                              ; preds = %125
  %127 = load i32, ptr %25, align 4
  %128 = add i32 %127, 1
  store i32 %128, ptr %25, align 4
  br label %32, !llvm.loop !9

129:                                              ; preds = %32
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_gemver(i32 noundef %0, double noundef %1, double noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11) #0 {
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca ptr, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store ptr %11, ptr %13, align 8
  store ptr %10, ptr %14, align 8
  store ptr %9, ptr %15, align 8
  store ptr %8, ptr %16, align 8
  store ptr %7, ptr %17, align 8
  store ptr %6, ptr %18, align 8
  store ptr %5, ptr %19, align 8
  store ptr %4, ptr %20, align 8
  store ptr %3, ptr %21, align 8
  store double %2, ptr %22, align 8
  store double %1, ptr %23, align 8
  store i32 %0, ptr %24, align 4
  store i32 0, ptr %25, align 4
  br label %27

27:                                               ; preds = %76, %12
  %28 = load i32, ptr %25, align 4
  %29 = icmp slt i32 %28, 40
  br i1 %29, label %30, label %79

30:                                               ; preds = %27
  store i32 0, ptr %26, align 4
  br label %31

31:                                               ; preds = %72, %30
  %32 = load i32, ptr %26, align 4
  %33 = icmp slt i32 %32, 40
  br i1 %33, label %34, label %75

34:                                               ; preds = %31
  %35 = load ptr, ptr %21, align 8
  %36 = load i32, ptr %25, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [40 x double], ptr %35, i64 %37
  %39 = load i32, ptr %26, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [40 x double], ptr %38, i64 0, i64 %40
  %42 = load double, ptr %41, align 8
  %43 = load ptr, ptr %20, align 8
  %44 = load i32, ptr %25, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds double, ptr %43, i64 %45
  %47 = load double, ptr %46, align 8
  %48 = load ptr, ptr %19, align 8
  %49 = load i32, ptr %26, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds double, ptr %48, i64 %50
  %52 = load double, ptr %51, align 8
  %53 = call double @llvm.fmuladd.f64(double %47, double %52, double %42)
  %54 = load ptr, ptr %18, align 8
  %55 = load i32, ptr %25, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds double, ptr %54, i64 %56
  %58 = load double, ptr %57, align 8
  %59 = load ptr, ptr %17, align 8
  %60 = load i32, ptr %26, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds double, ptr %59, i64 %61
  %63 = load double, ptr %62, align 8
  %64 = call double @llvm.fmuladd.f64(double %58, double %63, double %53)
  %65 = load ptr, ptr %21, align 8
  %66 = load i32, ptr %25, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [40 x double], ptr %65, i64 %67
  %69 = load i32, ptr %26, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [40 x double], ptr %68, i64 0, i64 %70
  store double %64, ptr %71, align 8
  br label %72

72:                                               ; preds = %34
  %73 = load i32, ptr %26, align 4
  %74 = add i32 %73, 1
  store i32 %74, ptr %26, align 4
  br label %31, !llvm.loop !10

75:                                               ; preds = %31
  br label %76

76:                                               ; preds = %75
  %77 = load i32, ptr %25, align 4
  %78 = add i32 %77, 1
  store i32 %78, ptr %25, align 4
  br label %27, !llvm.loop !11

79:                                               ; preds = %27
  store i32 0, ptr %25, align 4
  br label %80

80:                                               ; preds = %117, %79
  %81 = load i32, ptr %25, align 4
  %82 = icmp slt i32 %81, 40
  br i1 %82, label %83, label %120

83:                                               ; preds = %80
  store i32 0, ptr %26, align 4
  br label %84

84:                                               ; preds = %113, %83
  %85 = load i32, ptr %26, align 4
  %86 = icmp slt i32 %85, 40
  br i1 %86, label %87, label %116

87:                                               ; preds = %84
  %88 = load ptr, ptr %15, align 8
  %89 = load i32, ptr %25, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds double, ptr %88, i64 %90
  %92 = load double, ptr %91, align 8
  %93 = load double, ptr %22, align 8
  %94 = load ptr, ptr %21, align 8
  %95 = load i32, ptr %26, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [40 x double], ptr %94, i64 %96
  %98 = load i32, ptr %25, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [40 x double], ptr %97, i64 0, i64 %99
  %101 = load double, ptr %100, align 8
  %102 = fmul double %93, %101
  %103 = load ptr, ptr %14, align 8
  %104 = load i32, ptr %26, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds double, ptr %103, i64 %105
  %107 = load double, ptr %106, align 8
  %108 = call double @llvm.fmuladd.f64(double %102, double %107, double %92)
  %109 = load ptr, ptr %15, align 8
  %110 = load i32, ptr %25, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds double, ptr %109, i64 %111
  store double %108, ptr %112, align 8
  br label %113

113:                                              ; preds = %87
  %114 = load i32, ptr %26, align 4
  %115 = add i32 %114, 1
  store i32 %115, ptr %26, align 4
  br label %84, !llvm.loop !12

116:                                              ; preds = %84
  br label %117

117:                                              ; preds = %116
  %118 = load i32, ptr %25, align 4
  %119 = add i32 %118, 1
  store i32 %119, ptr %25, align 4
  br label %80, !llvm.loop !13

120:                                              ; preds = %80
  store i32 0, ptr %25, align 4
  br label %121

121:                                              ; preds = %140, %120
  %122 = load i32, ptr %25, align 4
  %123 = icmp slt i32 %122, 40
  br i1 %123, label %124, label %143

124:                                              ; preds = %121
  %125 = load ptr, ptr %15, align 8
  %126 = load i32, ptr %25, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds double, ptr %125, i64 %127
  %129 = load double, ptr %128, align 8
  %130 = load ptr, ptr %13, align 8
  %131 = load i32, ptr %25, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds double, ptr %130, i64 %132
  %134 = load double, ptr %133, align 8
  %135 = fadd double %129, %134
  %136 = load ptr, ptr %15, align 8
  %137 = load i32, ptr %25, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds double, ptr %136, i64 %138
  store double %135, ptr %139, align 8
  br label %140

140:                                              ; preds = %124
  %141 = load i32, ptr %25, align 4
  %142 = add i32 %141, 1
  store i32 %142, ptr %25, align 4
  br label %121, !llvm.loop !14

143:                                              ; preds = %121
  store i32 0, ptr %25, align 4
  br label %144

144:                                              ; preds = %181, %143
  %145 = load i32, ptr %25, align 4
  %146 = icmp slt i32 %145, 40
  br i1 %146, label %147, label %184

147:                                              ; preds = %144
  store i32 0, ptr %26, align 4
  br label %148

148:                                              ; preds = %177, %147
  %149 = load i32, ptr %26, align 4
  %150 = icmp slt i32 %149, 40
  br i1 %150, label %151, label %180

151:                                              ; preds = %148
  %152 = load ptr, ptr %16, align 8
  %153 = load i32, ptr %25, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds double, ptr %152, i64 %154
  %156 = load double, ptr %155, align 8
  %157 = load double, ptr %23, align 8
  %158 = load ptr, ptr %21, align 8
  %159 = load i32, ptr %25, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [40 x double], ptr %158, i64 %160
  %162 = load i32, ptr %26, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [40 x double], ptr %161, i64 0, i64 %163
  %165 = load double, ptr %164, align 8
  %166 = fmul double %157, %165
  %167 = load ptr, ptr %15, align 8
  %168 = load i32, ptr %26, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds double, ptr %167, i64 %169
  %171 = load double, ptr %170, align 8
  %172 = call double @llvm.fmuladd.f64(double %166, double %171, double %156)
  %173 = load ptr, ptr %16, align 8
  %174 = load i32, ptr %25, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds double, ptr %173, i64 %175
  store double %172, ptr %176, align 8
  br label %177

177:                                              ; preds = %151
  %178 = load i32, ptr %26, align 4
  %179 = add i32 %178, 1
  store i32 %179, ptr %26, align 4
  br label %148, !llvm.loop !15

180:                                              ; preds = %148
  br label %181

181:                                              ; preds = %180
  %182 = load i32, ptr %25, align 4
  %183 = add i32 %182, 1
  store i32 %183, ptr %25, align 4
  br label %144, !llvm.loop !16

184:                                              ; preds = %144
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @strcmp(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %1, ptr %3, align 8
  store i32 %0, ptr %4, align 4
  %6 = call ptr @__acrt_iob_func(i32 noundef 2)
  %7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@") #5
  %8 = call ptr @__acrt_iob_func(i32 noundef 2)
  %9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@", ptr noundef @"??_C@_01NOFIACDB@w?$AA@") #5
  store i32 0, ptr %5, align 4
  br label %10

10:                                               ; preds = %29, %2
  %11 = load i32, ptr %5, align 4
  %12 = load i32, ptr %4, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %32

14:                                               ; preds = %10
  %15 = load i32, ptr %5, align 4
  %16 = srem i32 %15, 20
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = call ptr @__acrt_iob_func(i32 noundef 2)
  %20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef @"??_C@_01EEMJAFIK@?6?$AA@") #5
  br label %21

21:                                               ; preds = %18, %14
  %22 = load ptr, ptr %3, align 8
  %23 = load i32, ptr %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds double, ptr %22, i64 %24
  %26 = load double, ptr %25, align 8
  %27 = call ptr @__acrt_iob_func(i32 noundef 2)
  %28 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %27, ptr noundef @"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@", double noundef %26) #5
  br label %29

29:                                               ; preds = %21
  %30 = load i32, ptr %5, align 4
  %31 = add i32 %30, 1
  store i32 %31, ptr %5, align 4
  br label %10, !llvm.loop !17

32:                                               ; preds = %10
  %33 = call ptr @__acrt_iob_func(i32 noundef 2)
  %34 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef @"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@", ptr noundef @"??_C@_01NOFIACDB@w?$AA@") #5
  %35 = call ptr @__acrt_iob_func(i32 noundef 2)
  %36 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef @"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@") #5
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
!1 = !DIFile(filename: "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\linear-algebra\\blas\\gemver\\gemver.c", directory: "C:\\work\\llvm-profitability-research")
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
