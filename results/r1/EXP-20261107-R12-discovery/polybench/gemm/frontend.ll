; ModuleID = 'C:\work\llvm-profitability-research\.tools\corpus\PolyBench\linear-algebra\blas\gemm\gemm.c'
source_filename = "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\linear-algebra\\blas\\gemm\\gemm.c"
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
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  store i32 0, ptr %3, align 4
  store ptr %1, ptr %4, align 8
  store i32 %0, ptr %5, align 4
  store i32 20, ptr %6, align 4
  store i32 25, ptr %7, align 4
  store i32 30, ptr %8, align 4
  %14 = call ptr @polybench_alloc_data(i64 noundef 500, i32 noundef 8)
  store ptr %14, ptr %11, align 8
  %15 = call ptr @polybench_alloc_data(i64 noundef 600, i32 noundef 8)
  store ptr %15, ptr %12, align 8
  %16 = call ptr @polybench_alloc_data(i64 noundef 750, i32 noundef 8)
  store ptr %16, ptr %13, align 8
  %17 = load ptr, ptr %13, align 8
  %18 = getelementptr inbounds [30 x [25 x double]], ptr %17, i64 0, i64 0
  %19 = load ptr, ptr %12, align 8
  %20 = getelementptr inbounds [20 x [30 x double]], ptr %19, i64 0, i64 0
  %21 = load ptr, ptr %11, align 8
  %22 = getelementptr inbounds [20 x [25 x double]], ptr %21, i64 0, i64 0
  %23 = load i32, ptr %8, align 4
  %24 = load i32, ptr %7, align 4
  %25 = load i32, ptr %6, align 4
  call void @init_array(i32 noundef %25, i32 noundef %24, i32 noundef %23, ptr noundef %9, ptr noundef %10, ptr noundef %22, ptr noundef %20, ptr noundef %18)
  %26 = load ptr, ptr %13, align 8
  %27 = getelementptr inbounds [30 x [25 x double]], ptr %26, i64 0, i64 0
  %28 = load ptr, ptr %12, align 8
  %29 = getelementptr inbounds [20 x [30 x double]], ptr %28, i64 0, i64 0
  %30 = load ptr, ptr %11, align 8
  %31 = getelementptr inbounds [20 x [25 x double]], ptr %30, i64 0, i64 0
  %32 = load double, ptr %10, align 8
  %33 = load double, ptr %9, align 8
  %34 = load i32, ptr %8, align 4
  %35 = load i32, ptr %7, align 4
  %36 = load i32, ptr %6, align 4
  call void @kernel_gemm(i32 noundef %36, i32 noundef %35, i32 noundef %34, double noundef %33, double noundef %32, ptr noundef %31, ptr noundef %29, ptr noundef %27)
  %37 = load i32, ptr %5, align 4
  %38 = icmp sgt i32 %37, 42
  br i1 %38, label %39, label %50

39:                                               ; preds = %2
  %40 = load ptr, ptr %4, align 8
  %41 = getelementptr inbounds ptr, ptr %40, i64 0
  %42 = load ptr, ptr %41, align 8
  %43 = call i32 @strcmp(ptr noundef %42, ptr noundef @"??_C@_00CNPNBAHC@?$AA@") #5
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %39
  %46 = load ptr, ptr %11, align 8
  %47 = getelementptr inbounds [20 x [25 x double]], ptr %46, i64 0, i64 0
  %48 = load i32, ptr %7, align 4
  %49 = load i32, ptr %6, align 4
  call void @print_array(i32 noundef %49, i32 noundef %48, ptr noundef %47)
  br label %50

50:                                               ; preds = %45, %39, %2
  %51 = load ptr, ptr %11, align 8
  call void @free(ptr noundef %51)
  %52 = load ptr, ptr %12, align 8
  call void @free(ptr noundef %52)
  %53 = load ptr, ptr %13, align 8
  call void @free(ptr noundef %53)
  ret i32 0
}

declare dso_local ptr @polybench_alloc_data(i64 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #0 {
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store ptr %7, ptr %9, align 8
  store ptr %6, ptr %10, align 8
  store ptr %5, ptr %11, align 8
  store ptr %4, ptr %12, align 8
  store ptr %3, ptr %13, align 8
  store i32 %2, ptr %14, align 4
  store i32 %1, ptr %15, align 4
  store i32 %0, ptr %16, align 4
  %19 = load ptr, ptr %13, align 8
  store double 1.500000e+00, ptr %19, align 8
  %20 = load ptr, ptr %12, align 8
  store double 1.200000e+00, ptr %20, align 8
  store i32 0, ptr %17, align 4
  br label %21

21:                                               ; preds = %52, %8
  %22 = load i32, ptr %17, align 4
  %23 = load i32, ptr %16, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %55

25:                                               ; preds = %21
  store i32 0, ptr %18, align 4
  br label %26

26:                                               ; preds = %48, %25
  %27 = load i32, ptr %18, align 4
  %28 = load i32, ptr %15, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %51

30:                                               ; preds = %26
  %31 = load i32, ptr %17, align 4
  %32 = load i32, ptr %18, align 4
  %33 = mul i32 %31, %32
  %34 = add i32 %33, 1
  %35 = load i32, ptr %16, align 4
  %36 = srem i32 %34, %35
  %37 = sitofp i32 %36 to double
  %38 = load i32, ptr %16, align 4
  %39 = sitofp i32 %38 to double
  %40 = fdiv double %37, %39
  %41 = load ptr, ptr %11, align 8
  %42 = load i32, ptr %17, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [25 x double], ptr %41, i64 %43
  %45 = load i32, ptr %18, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [25 x double], ptr %44, i64 0, i64 %46
  store double %40, ptr %47, align 8
  br label %48

48:                                               ; preds = %30
  %49 = load i32, ptr %18, align 4
  %50 = add i32 %49, 1
  store i32 %50, ptr %18, align 4
  br label %26, !llvm.loop !7

51:                                               ; preds = %26
  br label %52

52:                                               ; preds = %51
  %53 = load i32, ptr %17, align 4
  %54 = add i32 %53, 1
  store i32 %54, ptr %17, align 4
  br label %21, !llvm.loop !9

55:                                               ; preds = %21
  store i32 0, ptr %17, align 4
  br label %56

56:                                               ; preds = %87, %55
  %57 = load i32, ptr %17, align 4
  %58 = load i32, ptr %16, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %90

60:                                               ; preds = %56
  store i32 0, ptr %18, align 4
  br label %61

61:                                               ; preds = %83, %60
  %62 = load i32, ptr %18, align 4
  %63 = load i32, ptr %14, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %86

65:                                               ; preds = %61
  %66 = load i32, ptr %17, align 4
  %67 = load i32, ptr %18, align 4
  %68 = add i32 %67, 1
  %69 = mul i32 %66, %68
  %70 = load i32, ptr %14, align 4
  %71 = srem i32 %69, %70
  %72 = sitofp i32 %71 to double
  %73 = load i32, ptr %14, align 4
  %74 = sitofp i32 %73 to double
  %75 = fdiv double %72, %74
  %76 = load ptr, ptr %10, align 8
  %77 = load i32, ptr %17, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [30 x double], ptr %76, i64 %78
  %80 = load i32, ptr %18, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [30 x double], ptr %79, i64 0, i64 %81
  store double %75, ptr %82, align 8
  br label %83

83:                                               ; preds = %65
  %84 = load i32, ptr %18, align 4
  %85 = add i32 %84, 1
  store i32 %85, ptr %18, align 4
  br label %61, !llvm.loop !10

86:                                               ; preds = %61
  br label %87

87:                                               ; preds = %86
  %88 = load i32, ptr %17, align 4
  %89 = add i32 %88, 1
  store i32 %89, ptr %17, align 4
  br label %56, !llvm.loop !11

90:                                               ; preds = %56
  store i32 0, ptr %17, align 4
  br label %91

91:                                               ; preds = %122, %90
  %92 = load i32, ptr %17, align 4
  %93 = load i32, ptr %14, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %125

95:                                               ; preds = %91
  store i32 0, ptr %18, align 4
  br label %96

96:                                               ; preds = %118, %95
  %97 = load i32, ptr %18, align 4
  %98 = load i32, ptr %15, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %121

100:                                              ; preds = %96
  %101 = load i32, ptr %17, align 4
  %102 = load i32, ptr %18, align 4
  %103 = add i32 %102, 2
  %104 = mul i32 %101, %103
  %105 = load i32, ptr %15, align 4
  %106 = srem i32 %104, %105
  %107 = sitofp i32 %106 to double
  %108 = load i32, ptr %15, align 4
  %109 = sitofp i32 %108 to double
  %110 = fdiv double %107, %109
  %111 = load ptr, ptr %9, align 8
  %112 = load i32, ptr %17, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [25 x double], ptr %111, i64 %113
  %115 = load i32, ptr %18, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [25 x double], ptr %114, i64 0, i64 %116
  store double %110, ptr %117, align 8
  br label %118

118:                                              ; preds = %100
  %119 = load i32, ptr %18, align 4
  %120 = add i32 %119, 1
  store i32 %120, ptr %18, align 4
  br label %96, !llvm.loop !12

121:                                              ; preds = %96
  br label %122

122:                                              ; preds = %121
  %123 = load i32, ptr %17, align 4
  %124 = add i32 %123, 1
  store i32 %124, ptr %17, align 4
  br label %91, !llvm.loop !13

125:                                              ; preds = %91
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_gemm(i32 noundef %0, i32 noundef %1, i32 noundef %2, double noundef %3, double noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #0 {
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store ptr %7, ptr %9, align 8
  store ptr %6, ptr %10, align 8
  store ptr %5, ptr %11, align 8
  store double %4, ptr %12, align 8
  store double %3, ptr %13, align 8
  store i32 %2, ptr %14, align 4
  store i32 %1, ptr %15, align 4
  store i32 %0, ptr %16, align 4
  store i32 0, ptr %17, align 4
  br label %20

20:                                               ; preds = %85, %8
  %21 = load i32, ptr %17, align 4
  %22 = icmp slt i32 %21, 20
  br i1 %22, label %23, label %88

23:                                               ; preds = %20
  store i32 0, ptr %18, align 4
  br label %24

24:                                               ; preds = %38, %23
  %25 = load i32, ptr %18, align 4
  %26 = icmp slt i32 %25, 25
  br i1 %26, label %27, label %41

27:                                               ; preds = %24
  %28 = load double, ptr %12, align 8
  %29 = load ptr, ptr %11, align 8
  %30 = load i32, ptr %17, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [25 x double], ptr %29, i64 %31
  %33 = load i32, ptr %18, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [25 x double], ptr %32, i64 0, i64 %34
  %36 = load double, ptr %35, align 8
  %37 = fmul double %36, %28
  store double %37, ptr %35, align 8
  br label %38

38:                                               ; preds = %27
  %39 = load i32, ptr %18, align 4
  %40 = add i32 %39, 1
  store i32 %40, ptr %18, align 4
  br label %24, !llvm.loop !14

41:                                               ; preds = %24
  store i32 0, ptr %19, align 4
  br label %42

42:                                               ; preds = %81, %41
  %43 = load i32, ptr %19, align 4
  %44 = icmp slt i32 %43, 30
  br i1 %44, label %45, label %84

45:                                               ; preds = %42
  store i32 0, ptr %18, align 4
  br label %46

46:                                               ; preds = %77, %45
  %47 = load i32, ptr %18, align 4
  %48 = icmp slt i32 %47, 25
  br i1 %48, label %49, label %80

49:                                               ; preds = %46
  %50 = load double, ptr %13, align 8
  %51 = load ptr, ptr %10, align 8
  %52 = load i32, ptr %17, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [30 x double], ptr %51, i64 %53
  %55 = load i32, ptr %19, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [30 x double], ptr %54, i64 0, i64 %56
  %58 = load double, ptr %57, align 8
  %59 = fmul double %50, %58
  %60 = load ptr, ptr %9, align 8
  %61 = load i32, ptr %19, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [25 x double], ptr %60, i64 %62
  %64 = load i32, ptr %18, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [25 x double], ptr %63, i64 0, i64 %65
  %67 = load double, ptr %66, align 8
  %68 = load ptr, ptr %11, align 8
  %69 = load i32, ptr %17, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [25 x double], ptr %68, i64 %70
  %72 = load i32, ptr %18, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [25 x double], ptr %71, i64 0, i64 %73
  %75 = load double, ptr %74, align 8
  %76 = call double @llvm.fmuladd.f64(double %59, double %67, double %75)
  store double %76, ptr %74, align 8
  br label %77

77:                                               ; preds = %49
  %78 = load i32, ptr %18, align 4
  %79 = add i32 %78, 1
  store i32 %79, ptr %18, align 4
  br label %46, !llvm.loop !15

80:                                               ; preds = %46
  br label %81

81:                                               ; preds = %80
  %82 = load i32, ptr %19, align 4
  %83 = add i32 %82, 1
  store i32 %83, ptr %19, align 4
  br label %42, !llvm.loop !16

84:                                               ; preds = %42
  br label %85

85:                                               ; preds = %84
  %86 = load i32, ptr %17, align 4
  %87 = add i32 %86, 1
  store i32 %87, ptr %17, align 4
  br label %20, !llvm.loop !17

88:                                               ; preds = %20
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @strcmp(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %2, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  store i32 %0, ptr %6, align 4
  %9 = call ptr @__acrt_iob_func(i32 noundef 2)
  %10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@") #5
  %11 = call ptr @__acrt_iob_func(i32 noundef 2)
  %12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef @"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@", ptr noundef @"??_C@_01GFHCPBMG@C?$AA@") #5
  store i32 0, ptr %7, align 4
  br label %13

13:                                               ; preds = %48, %3
  %14 = load i32, ptr %7, align 4
  %15 = load i32, ptr %6, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %51

17:                                               ; preds = %13
  store i32 0, ptr %8, align 4
  br label %18

18:                                               ; preds = %44, %17
  %19 = load i32, ptr %8, align 4
  %20 = load i32, ptr %5, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %47

22:                                               ; preds = %18
  %23 = load i32, ptr %7, align 4
  %24 = load i32, ptr %6, align 4
  %25 = mul i32 %23, %24
  %26 = load i32, ptr %8, align 4
  %27 = add i32 %25, %26
  %28 = srem i32 %27, 20
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = call ptr @__acrt_iob_func(i32 noundef 2)
  %32 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %31, ptr noundef @"??_C@_01EEMJAFIK@?6?$AA@") #5
  br label %33

33:                                               ; preds = %30, %22
  %34 = load ptr, ptr %4, align 8
  %35 = load i32, ptr %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [25 x double], ptr %34, i64 %36
  %38 = load i32, ptr %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [25 x double], ptr %37, i64 0, i64 %39
  %41 = load double, ptr %40, align 8
  %42 = call ptr @__acrt_iob_func(i32 noundef 2)
  %43 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %42, ptr noundef @"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@", double noundef %41) #5
  br label %44

44:                                               ; preds = %33
  %45 = load i32, ptr %8, align 4
  %46 = add i32 %45, 1
  store i32 %46, ptr %8, align 4
  br label %18, !llvm.loop !18

47:                                               ; preds = %18
  br label %48

48:                                               ; preds = %47
  %49 = load i32, ptr %7, align 4
  %50 = add i32 %49, 1
  store i32 %50, ptr %7, align 4
  br label %13, !llvm.loop !19

51:                                               ; preds = %13
  %52 = call ptr @__acrt_iob_func(i32 noundef 2)
  %53 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %52, ptr noundef @"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@", ptr noundef @"??_C@_01GFHCPBMG@C?$AA@") #5
  %54 = call ptr @__acrt_iob_func(i32 noundef 2)
  %55 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %54, ptr noundef @"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@") #5
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
!1 = !DIFile(filename: "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\linear-algebra\\blas\\gemm\\gemm.c", directory: "C:\\work\\llvm-profitability-research")
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
