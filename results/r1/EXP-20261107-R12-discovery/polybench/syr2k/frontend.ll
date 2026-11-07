; ModuleID = 'C:\work\llvm-profitability-research\.tools\corpus\PolyBench\linear-algebra\blas\syr2k\syr2k.c'
source_filename = "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\linear-algebra\\blas\\syr2k\\syr2k.c"
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

$"??_C@_01GFHCPBMG@C?$AA@" = comdat any

$"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@" = comdat any

$"??_C@_01EEMJAFIK@?6?$AA@" = comdat any

$"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@" = comdat any

$"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@" = comdat any

$"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = comdat any

@"??_C@_00CNPNBAHC@?$AA@" = linkonce_odr dso_local unnamed_addr constant [1 x i8] zeroinitializer, comdat, align 1
@__local_stdio_printf_options._OptionsStorage = internal global i64 0, align 8
@"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", comdat, align 8
@"??_C@_01GFHCPBMG@C?$AA@" = linkonce_odr dso_local unnamed_addr constant [2 x i8] c"C\00", comdat, align 4
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
  %9 = alloca double, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  store i32 0, ptr %3, align 4
  store ptr %1, ptr %4, align 8
  store i32 %0, ptr %5, align 4
  store i32 30, ptr %6, align 4
  store i32 20, ptr %7, align 4
  %13 = call ptr @polybench_alloc_data(i64 noundef 900, i32 noundef 8)
  store ptr %13, ptr %10, align 8
  %14 = call ptr @polybench_alloc_data(i64 noundef 600, i32 noundef 8)
  store ptr %14, ptr %11, align 8
  %15 = call ptr @polybench_alloc_data(i64 noundef 600, i32 noundef 8)
  store ptr %15, ptr %12, align 8
  %16 = load ptr, ptr %12, align 8
  %17 = getelementptr inbounds [30 x [20 x double]], ptr %16, i64 0, i64 0
  %18 = load ptr, ptr %11, align 8
  %19 = getelementptr inbounds [30 x [20 x double]], ptr %18, i64 0, i64 0
  %20 = load ptr, ptr %10, align 8
  %21 = getelementptr inbounds [30 x [30 x double]], ptr %20, i64 0, i64 0
  %22 = load i32, ptr %7, align 4
  %23 = load i32, ptr %6, align 4
  call void @init_array(i32 noundef %23, i32 noundef %22, ptr noundef %8, ptr noundef %9, ptr noundef %21, ptr noundef %19, ptr noundef %17)
  %24 = load ptr, ptr %12, align 8
  %25 = getelementptr inbounds [30 x [20 x double]], ptr %24, i64 0, i64 0
  %26 = load ptr, ptr %11, align 8
  %27 = getelementptr inbounds [30 x [20 x double]], ptr %26, i64 0, i64 0
  %28 = load ptr, ptr %10, align 8
  %29 = getelementptr inbounds [30 x [30 x double]], ptr %28, i64 0, i64 0
  %30 = load double, ptr %9, align 8
  %31 = load double, ptr %8, align 8
  %32 = load i32, ptr %7, align 4
  %33 = load i32, ptr %6, align 4
  call void @kernel_syr2k(i32 noundef %33, i32 noundef %32, double noundef %31, double noundef %30, ptr noundef %29, ptr noundef %27, ptr noundef %25)
  %34 = load i32, ptr %5, align 4
  %35 = icmp sgt i32 %34, 42
  br i1 %35, label %36, label %46

36:                                               ; preds = %2
  %37 = load ptr, ptr %4, align 8
  %38 = getelementptr inbounds ptr, ptr %37, i64 0
  %39 = load ptr, ptr %38, align 8
  %40 = call i32 @strcmp(ptr noundef %39, ptr noundef @"??_C@_00CNPNBAHC@?$AA@") #5
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %36
  %43 = load ptr, ptr %10, align 8
  %44 = getelementptr inbounds [30 x [30 x double]], ptr %43, i64 0, i64 0
  %45 = load i32, ptr %6, align 4
  call void @print_array(i32 noundef %45, ptr noundef %44)
  br label %46

46:                                               ; preds = %42, %36, %2
  %47 = load ptr, ptr %10, align 8
  call void @free(ptr noundef %47)
  %48 = load ptr, ptr %11, align 8
  call void @free(ptr noundef %48)
  %49 = load ptr, ptr %12, align 8
  call void @free(ptr noundef %49)
  ret i32 0
}

declare dso_local ptr @polybench_alloc_data(i64 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #0 {
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store ptr %6, ptr %8, align 8
  store ptr %5, ptr %9, align 8
  store ptr %4, ptr %10, align 8
  store ptr %3, ptr %11, align 8
  store ptr %2, ptr %12, align 8
  store i32 %1, ptr %13, align 4
  store i32 %0, ptr %14, align 4
  %17 = load ptr, ptr %12, align 8
  store double 1.500000e+00, ptr %17, align 8
  %18 = load ptr, ptr %11, align 8
  store double 1.200000e+00, ptr %18, align 8
  store i32 0, ptr %15, align 4
  br label %19

19:                                               ; preds = %67, %7
  %20 = load i32, ptr %15, align 4
  %21 = load i32, ptr %14, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %70

23:                                               ; preds = %19
  store i32 0, ptr %16, align 4
  br label %24

24:                                               ; preds = %63, %23
  %25 = load i32, ptr %16, align 4
  %26 = load i32, ptr %13, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %66

28:                                               ; preds = %24
  %29 = load i32, ptr %15, align 4
  %30 = load i32, ptr %16, align 4
  %31 = mul i32 %29, %30
  %32 = add i32 %31, 1
  %33 = load i32, ptr %14, align 4
  %34 = srem i32 %32, %33
  %35 = sitofp i32 %34 to double
  %36 = load i32, ptr %14, align 4
  %37 = sitofp i32 %36 to double
  %38 = fdiv double %35, %37
  %39 = load ptr, ptr %9, align 8
  %40 = load i32, ptr %15, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [20 x double], ptr %39, i64 %41
  %43 = load i32, ptr %16, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [20 x double], ptr %42, i64 0, i64 %44
  store double %38, ptr %45, align 8
  %46 = load i32, ptr %15, align 4
  %47 = load i32, ptr %16, align 4
  %48 = mul i32 %46, %47
  %49 = add i32 %48, 2
  %50 = load i32, ptr %13, align 4
  %51 = srem i32 %49, %50
  %52 = sitofp i32 %51 to double
  %53 = load i32, ptr %13, align 4
  %54 = sitofp i32 %53 to double
  %55 = fdiv double %52, %54
  %56 = load ptr, ptr %8, align 8
  %57 = load i32, ptr %15, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [20 x double], ptr %56, i64 %58
  %60 = load i32, ptr %16, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [20 x double], ptr %59, i64 0, i64 %61
  store double %55, ptr %62, align 8
  br label %63

63:                                               ; preds = %28
  %64 = load i32, ptr %16, align 4
  %65 = add i32 %64, 1
  store i32 %65, ptr %16, align 4
  br label %24, !llvm.loop !7

66:                                               ; preds = %24
  br label %67

67:                                               ; preds = %66
  %68 = load i32, ptr %15, align 4
  %69 = add i32 %68, 1
  store i32 %69, ptr %15, align 4
  br label %19, !llvm.loop !9

70:                                               ; preds = %19
  store i32 0, ptr %15, align 4
  br label %71

71:                                               ; preds = %102, %70
  %72 = load i32, ptr %15, align 4
  %73 = load i32, ptr %14, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %105

75:                                               ; preds = %71
  store i32 0, ptr %16, align 4
  br label %76

76:                                               ; preds = %98, %75
  %77 = load i32, ptr %16, align 4
  %78 = load i32, ptr %14, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %101

80:                                               ; preds = %76
  %81 = load i32, ptr %15, align 4
  %82 = load i32, ptr %16, align 4
  %83 = mul i32 %81, %82
  %84 = add i32 %83, 3
  %85 = load i32, ptr %14, align 4
  %86 = srem i32 %84, %85
  %87 = sitofp i32 %86 to double
  %88 = load i32, ptr %13, align 4
  %89 = sitofp i32 %88 to double
  %90 = fdiv double %87, %89
  %91 = load ptr, ptr %10, align 8
  %92 = load i32, ptr %15, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [30 x double], ptr %91, i64 %93
  %95 = load i32, ptr %16, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [30 x double], ptr %94, i64 0, i64 %96
  store double %90, ptr %97, align 8
  br label %98

98:                                               ; preds = %80
  %99 = load i32, ptr %16, align 4
  %100 = add i32 %99, 1
  store i32 %100, ptr %16, align 4
  br label %76, !llvm.loop !10

101:                                              ; preds = %76
  br label %102

102:                                              ; preds = %101
  %103 = load i32, ptr %15, align 4
  %104 = add i32 %103, 1
  store i32 %104, ptr %15, align 4
  br label %71, !llvm.loop !11

105:                                              ; preds = %71
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_syr2k(i32 noundef %0, i32 noundef %1, double noundef %2, double noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #0 {
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store ptr %6, ptr %8, align 8
  store ptr %5, ptr %9, align 8
  store ptr %4, ptr %10, align 8
  store double %3, ptr %11, align 8
  store double %2, ptr %12, align 8
  store i32 %1, ptr %13, align 4
  store i32 %0, ptr %14, align 4
  store i32 0, ptr %15, align 4
  br label %18

18:                                               ; preds = %105, %7
  %19 = load i32, ptr %15, align 4
  %20 = icmp slt i32 %19, 30
  br i1 %20, label %21, label %108

21:                                               ; preds = %18
  store i32 0, ptr %16, align 4
  br label %22

22:                                               ; preds = %37, %21
  %23 = load i32, ptr %16, align 4
  %24 = load i32, ptr %15, align 4
  %25 = icmp sle i32 %23, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %22
  %27 = load double, ptr %11, align 8
  %28 = load ptr, ptr %10, align 8
  %29 = load i32, ptr %15, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [30 x double], ptr %28, i64 %30
  %32 = load i32, ptr %16, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [30 x double], ptr %31, i64 0, i64 %33
  %35 = load double, ptr %34, align 8
  %36 = fmul double %35, %27
  store double %36, ptr %34, align 8
  br label %37

37:                                               ; preds = %26
  %38 = load i32, ptr %16, align 4
  %39 = add i32 %38, 1
  store i32 %39, ptr %16, align 4
  br label %22, !llvm.loop !12

40:                                               ; preds = %22
  store i32 0, ptr %17, align 4
  br label %41

41:                                               ; preds = %101, %40
  %42 = load i32, ptr %17, align 4
  %43 = icmp slt i32 %42, 20
  br i1 %43, label %44, label %104

44:                                               ; preds = %41
  store i32 0, ptr %16, align 4
  br label %45

45:                                               ; preds = %97, %44
  %46 = load i32, ptr %16, align 4
  %47 = load i32, ptr %15, align 4
  %48 = icmp sle i32 %46, %47
  br i1 %48, label %49, label %100

49:                                               ; preds = %45
  %50 = load ptr, ptr %9, align 8
  %51 = load i32, ptr %16, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [20 x double], ptr %50, i64 %52
  %54 = load i32, ptr %17, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [20 x double], ptr %53, i64 0, i64 %55
  %57 = load double, ptr %56, align 8
  %58 = load double, ptr %12, align 8
  %59 = fmul double %57, %58
  %60 = load ptr, ptr %8, align 8
  %61 = load i32, ptr %15, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [20 x double], ptr %60, i64 %62
  %64 = load i32, ptr %17, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [20 x double], ptr %63, i64 0, i64 %65
  %67 = load double, ptr %66, align 8
  %68 = load ptr, ptr %8, align 8
  %69 = load i32, ptr %16, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [20 x double], ptr %68, i64 %70
  %72 = load i32, ptr %17, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [20 x double], ptr %71, i64 0, i64 %73
  %75 = load double, ptr %74, align 8
  %76 = load double, ptr %12, align 8
  %77 = fmul double %75, %76
  %78 = load ptr, ptr %9, align 8
  %79 = load i32, ptr %15, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [20 x double], ptr %78, i64 %80
  %82 = load i32, ptr %17, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [20 x double], ptr %81, i64 0, i64 %83
  %85 = load double, ptr %84, align 8
  %86 = fmul double %77, %85
  %87 = call double @llvm.fmuladd.f64(double %59, double %67, double %86)
  %88 = load ptr, ptr %10, align 8
  %89 = load i32, ptr %15, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [30 x double], ptr %88, i64 %90
  %92 = load i32, ptr %16, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [30 x double], ptr %91, i64 0, i64 %93
  %95 = load double, ptr %94, align 8
  %96 = fadd double %95, %87
  store double %96, ptr %94, align 8
  br label %97

97:                                               ; preds = %49
  %98 = load i32, ptr %16, align 4
  %99 = add i32 %98, 1
  store i32 %99, ptr %16, align 4
  br label %45, !llvm.loop !13

100:                                              ; preds = %45
  br label %101

101:                                              ; preds = %100
  %102 = load i32, ptr %17, align 4
  %103 = add i32 %102, 1
  store i32 %103, ptr %17, align 4
  br label %41, !llvm.loop !14

104:                                              ; preds = %41
  br label %105

105:                                              ; preds = %104
  %106 = load i32, ptr %15, align 4
  %107 = add i32 %106, 1
  store i32 %107, ptr %15, align 4
  br label %18, !llvm.loop !15

108:                                              ; preds = %18
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
  %10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@", ptr noundef @"??_C@_01GFHCPBMG@C?$AA@") #5
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
  %35 = getelementptr inbounds [30 x double], ptr %32, i64 %34
  %36 = load i32, ptr %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [30 x double], ptr %35, i64 0, i64 %37
  %39 = load double, ptr %38, align 8
  %40 = call ptr @__acrt_iob_func(i32 noundef 2)
  %41 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %40, ptr noundef @"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@", double noundef %39) #5
  br label %42

42:                                               ; preds = %31
  %43 = load i32, ptr %6, align 4
  %44 = add i32 %43, 1
  store i32 %44, ptr %6, align 4
  br label %16, !llvm.loop !16

45:                                               ; preds = %16
  br label %46

46:                                               ; preds = %45
  %47 = load i32, ptr %5, align 4
  %48 = add i32 %47, 1
  store i32 %48, ptr %5, align 4
  br label %11, !llvm.loop !17

49:                                               ; preds = %11
  %50 = call ptr @__acrt_iob_func(i32 noundef 2)
  %51 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %50, ptr noundef @"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@", ptr noundef @"??_C@_01GFHCPBMG@C?$AA@") #5
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
!1 = !DIFile(filename: "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\linear-algebra\\blas\\syr2k\\syr2k.c", directory: "C:\\work\\llvm-profitability-research")
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
