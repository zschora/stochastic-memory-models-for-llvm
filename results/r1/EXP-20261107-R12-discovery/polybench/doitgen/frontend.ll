; ModuleID = 'C:\work\llvm-profitability-research\.tools\corpus\PolyBench\linear-algebra\kernels\doitgen\doitgen.c'
source_filename = "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\linear-algebra\\kernels\\doitgen\\doitgen.c"
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

$"??_C@_01FHEEJDEE@A?$AA@" = comdat any

$"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@" = comdat any

$"??_C@_01EEMJAFIK@?6?$AA@" = comdat any

$"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@" = comdat any

$"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@" = comdat any

$"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = comdat any

@"??_C@_00CNPNBAHC@?$AA@" = linkonce_odr dso_local unnamed_addr constant [1 x i8] zeroinitializer, comdat, align 1
@__local_stdio_printf_options._OptionsStorage = internal global i64 0, align 8
@"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", comdat, align 8
@"??_C@_01FHEEJDEE@A?$AA@" = linkonce_odr dso_local unnamed_addr constant [2 x i8] c"A\00", comdat, align 4
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
define dso_local void @kernel_doitgen(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #0 {
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store ptr %5, ptr %7, align 8
  store ptr %4, ptr %8, align 8
  store ptr %3, ptr %9, align 8
  store i32 %2, ptr %10, align 4
  store i32 %1, ptr %11, align 4
  store i32 %0, ptr %12, align 4
  store i32 0, ptr %13, align 4
  br label %17

17:                                               ; preds = %97, %6
  %18 = load i32, ptr %13, align 4
  %19 = icmp slt i32 %18, 10
  br i1 %19, label %20, label %100

20:                                               ; preds = %17
  store i32 0, ptr %14, align 4
  br label %21

21:                                               ; preds = %93, %20
  %22 = load i32, ptr %14, align 4
  %23 = icmp slt i32 %22, 8
  br i1 %23, label %24, label %96

24:                                               ; preds = %21
  store i32 0, ptr %15, align 4
  br label %25

25:                                               ; preds = %66, %24
  %26 = load i32, ptr %15, align 4
  %27 = icmp slt i32 %26, 12
  br i1 %27, label %28, label %69

28:                                               ; preds = %25
  %29 = load ptr, ptr %7, align 8
  %30 = load i32, ptr %15, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds double, ptr %29, i64 %31
  store double 0.000000e+00, ptr %32, align 8
  store i32 0, ptr %16, align 4
  br label %33

33:                                               ; preds = %62, %28
  %34 = load i32, ptr %16, align 4
  %35 = icmp slt i32 %34, 12
  br i1 %35, label %36, label %65

36:                                               ; preds = %33
  %37 = load ptr, ptr %9, align 8
  %38 = load i32, ptr %13, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [8 x [12 x double]], ptr %37, i64 %39
  %41 = load i32, ptr %14, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [8 x [12 x double]], ptr %40, i64 0, i64 %42
  %44 = load i32, ptr %16, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [12 x double], ptr %43, i64 0, i64 %45
  %47 = load double, ptr %46, align 8
  %48 = load ptr, ptr %8, align 8
  %49 = load i32, ptr %16, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [12 x double], ptr %48, i64 %50
  %52 = load i32, ptr %15, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [12 x double], ptr %51, i64 0, i64 %53
  %55 = load double, ptr %54, align 8
  %56 = load ptr, ptr %7, align 8
  %57 = load i32, ptr %15, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds double, ptr %56, i64 %58
  %60 = load double, ptr %59, align 8
  %61 = call double @llvm.fmuladd.f64(double %47, double %55, double %60)
  store double %61, ptr %59, align 8
  br label %62

62:                                               ; preds = %36
  %63 = load i32, ptr %16, align 4
  %64 = add i32 %63, 1
  store i32 %64, ptr %16, align 4
  br label %33, !llvm.loop !7

65:                                               ; preds = %33
  br label %66

66:                                               ; preds = %65
  %67 = load i32, ptr %15, align 4
  %68 = add i32 %67, 1
  store i32 %68, ptr %15, align 4
  br label %25, !llvm.loop !9

69:                                               ; preds = %25
  store i32 0, ptr %15, align 4
  br label %70

70:                                               ; preds = %89, %69
  %71 = load i32, ptr %15, align 4
  %72 = icmp slt i32 %71, 12
  br i1 %72, label %73, label %92

73:                                               ; preds = %70
  %74 = load ptr, ptr %7, align 8
  %75 = load i32, ptr %15, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds double, ptr %74, i64 %76
  %78 = load double, ptr %77, align 8
  %79 = load ptr, ptr %9, align 8
  %80 = load i32, ptr %13, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [8 x [12 x double]], ptr %79, i64 %81
  %83 = load i32, ptr %14, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [8 x [12 x double]], ptr %82, i64 0, i64 %84
  %86 = load i32, ptr %15, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [12 x double], ptr %85, i64 0, i64 %87
  store double %78, ptr %88, align 8
  br label %89

89:                                               ; preds = %73
  %90 = load i32, ptr %15, align 4
  %91 = add i32 %90, 1
  store i32 %91, ptr %15, align 4
  br label %70, !llvm.loop !10

92:                                               ; preds = %70
  br label %93

93:                                               ; preds = %92
  %94 = load i32, ptr %14, align 4
  %95 = add i32 %94, 1
  store i32 %95, ptr %14, align 4
  br label %21, !llvm.loop !11

96:                                               ; preds = %21
  br label %97

97:                                               ; preds = %96
  %98 = load i32, ptr %13, align 4
  %99 = add i32 %98, 1
  store i32 %99, ptr %13, align 4
  br label %17, !llvm.loop !12

100:                                              ; preds = %17
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  store i32 0, ptr %3, align 4
  store ptr %1, ptr %4, align 8
  store i32 %0, ptr %5, align 4
  store i32 10, ptr %6, align 4
  store i32 8, ptr %7, align 4
  store i32 12, ptr %8, align 4
  %12 = call ptr @polybench_alloc_data(i64 noundef 960, i32 noundef 8)
  store ptr %12, ptr %9, align 8
  %13 = call ptr @polybench_alloc_data(i64 noundef 12, i32 noundef 8)
  store ptr %13, ptr %10, align 8
  %14 = call ptr @polybench_alloc_data(i64 noundef 144, i32 noundef 8)
  store ptr %14, ptr %11, align 8
  %15 = load ptr, ptr %11, align 8
  %16 = getelementptr inbounds [12 x [12 x double]], ptr %15, i64 0, i64 0
  %17 = load ptr, ptr %9, align 8
  %18 = getelementptr inbounds [10 x [8 x [12 x double]]], ptr %17, i64 0, i64 0
  %19 = load i32, ptr %8, align 4
  %20 = load i32, ptr %7, align 4
  %21 = load i32, ptr %6, align 4
  call void @init_array(i32 noundef %21, i32 noundef %20, i32 noundef %19, ptr noundef %18, ptr noundef %16)
  %22 = load ptr, ptr %10, align 8
  %23 = getelementptr inbounds [12 x double], ptr %22, i64 0, i64 0
  %24 = load ptr, ptr %11, align 8
  %25 = getelementptr inbounds [12 x [12 x double]], ptr %24, i64 0, i64 0
  %26 = load ptr, ptr %9, align 8
  %27 = getelementptr inbounds [10 x [8 x [12 x double]]], ptr %26, i64 0, i64 0
  %28 = load i32, ptr %8, align 4
  %29 = load i32, ptr %7, align 4
  %30 = load i32, ptr %6, align 4
  call void @kernel_doitgen(i32 noundef %30, i32 noundef %29, i32 noundef %28, ptr noundef %27, ptr noundef %25, ptr noundef %23)
  %31 = load i32, ptr %5, align 4
  %32 = icmp sgt i32 %31, 42
  br i1 %32, label %33, label %45

33:                                               ; preds = %2
  %34 = load ptr, ptr %4, align 8
  %35 = getelementptr inbounds ptr, ptr %34, i64 0
  %36 = load ptr, ptr %35, align 8
  %37 = call i32 @strcmp(ptr noundef %36, ptr noundef @"??_C@_00CNPNBAHC@?$AA@") #5
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %33
  %40 = load ptr, ptr %9, align 8
  %41 = getelementptr inbounds [10 x [8 x [12 x double]]], ptr %40, i64 0, i64 0
  %42 = load i32, ptr %8, align 4
  %43 = load i32, ptr %7, align 4
  %44 = load i32, ptr %6, align 4
  call void @print_array(i32 noundef %44, i32 noundef %43, i32 noundef %42, ptr noundef %41)
  br label %45

45:                                               ; preds = %39, %33, %2
  %46 = load ptr, ptr %9, align 8
  call void @free(ptr noundef %46)
  %47 = load ptr, ptr %10, align 8
  call void @free(ptr noundef %47)
  %48 = load ptr, ptr %11, align 8
  call void @free(ptr noundef %48)
  ret i32 0
}

declare dso_local ptr @polybench_alloc_data(i64 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store ptr %4, ptr %6, align 8
  store ptr %3, ptr %7, align 8
  store i32 %2, ptr %8, align 4
  store i32 %1, ptr %9, align 4
  store i32 %0, ptr %10, align 4
  store i32 0, ptr %11, align 4
  br label %14

14:                                               ; preds = %58, %5
  %15 = load i32, ptr %11, align 4
  %16 = load i32, ptr %10, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %61

18:                                               ; preds = %14
  store i32 0, ptr %12, align 4
  br label %19

19:                                               ; preds = %54, %18
  %20 = load i32, ptr %12, align 4
  %21 = load i32, ptr %9, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %57

23:                                               ; preds = %19
  store i32 0, ptr %13, align 4
  br label %24

24:                                               ; preds = %50, %23
  %25 = load i32, ptr %13, align 4
  %26 = load i32, ptr %8, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %53

28:                                               ; preds = %24
  %29 = load i32, ptr %11, align 4
  %30 = load i32, ptr %12, align 4
  %31 = mul i32 %29, %30
  %32 = load i32, ptr %13, align 4
  %33 = add i32 %31, %32
  %34 = load i32, ptr %8, align 4
  %35 = srem i32 %33, %34
  %36 = sitofp i32 %35 to double
  %37 = load i32, ptr %8, align 4
  %38 = sitofp i32 %37 to double
  %39 = fdiv double %36, %38
  %40 = load ptr, ptr %7, align 8
  %41 = load i32, ptr %11, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [8 x [12 x double]], ptr %40, i64 %42
  %44 = load i32, ptr %12, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [8 x [12 x double]], ptr %43, i64 0, i64 %45
  %47 = load i32, ptr %13, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [12 x double], ptr %46, i64 0, i64 %48
  store double %39, ptr %49, align 8
  br label %50

50:                                               ; preds = %28
  %51 = load i32, ptr %13, align 4
  %52 = add i32 %51, 1
  store i32 %52, ptr %13, align 4
  br label %24, !llvm.loop !13

53:                                               ; preds = %24
  br label %54

54:                                               ; preds = %53
  %55 = load i32, ptr %12, align 4
  %56 = add i32 %55, 1
  store i32 %56, ptr %12, align 4
  br label %19, !llvm.loop !14

57:                                               ; preds = %19
  br label %58

58:                                               ; preds = %57
  %59 = load i32, ptr %11, align 4
  %60 = add i32 %59, 1
  store i32 %60, ptr %11, align 4
  br label %14, !llvm.loop !15

61:                                               ; preds = %14
  store i32 0, ptr %11, align 4
  br label %62

62:                                               ; preds = %92, %61
  %63 = load i32, ptr %11, align 4
  %64 = load i32, ptr %8, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %95

66:                                               ; preds = %62
  store i32 0, ptr %12, align 4
  br label %67

67:                                               ; preds = %88, %66
  %68 = load i32, ptr %12, align 4
  %69 = load i32, ptr %8, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %91

71:                                               ; preds = %67
  %72 = load i32, ptr %11, align 4
  %73 = load i32, ptr %12, align 4
  %74 = mul i32 %72, %73
  %75 = load i32, ptr %8, align 4
  %76 = srem i32 %74, %75
  %77 = sitofp i32 %76 to double
  %78 = load i32, ptr %8, align 4
  %79 = sitofp i32 %78 to double
  %80 = fdiv double %77, %79
  %81 = load ptr, ptr %6, align 8
  %82 = load i32, ptr %11, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [12 x double], ptr %81, i64 %83
  %85 = load i32, ptr %12, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [12 x double], ptr %84, i64 0, i64 %86
  store double %80, ptr %87, align 8
  br label %88

88:                                               ; preds = %71
  %89 = load i32, ptr %12, align 4
  %90 = add i32 %89, 1
  store i32 %90, ptr %12, align 4
  br label %67, !llvm.loop !16

91:                                               ; preds = %67
  br label %92

92:                                               ; preds = %91
  %93 = load i32, ptr %11, align 4
  %94 = add i32 %93, 1
  store i32 %94, ptr %11, align 4
  br label %62, !llvm.loop !17

95:                                               ; preds = %62
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @strcmp(ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store ptr %3, ptr %5, align 8
  store i32 %2, ptr %6, align 4
  store i32 %1, ptr %7, align 4
  store i32 %0, ptr %8, align 4
  %12 = call ptr @__acrt_iob_func(i32 noundef 2)
  %13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@") #5
  %14 = call ptr @__acrt_iob_func(i32 noundef 2)
  %15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@", ptr noundef @"??_C@_01FHEEJDEE@A?$AA@") #5
  store i32 0, ptr %9, align 4
  br label %16

16:                                               ; preds = %69, %4
  %17 = load i32, ptr %9, align 4
  %18 = load i32, ptr %8, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %72

20:                                               ; preds = %16
  store i32 0, ptr %10, align 4
  br label %21

21:                                               ; preds = %65, %20
  %22 = load i32, ptr %10, align 4
  %23 = load i32, ptr %7, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %68

25:                                               ; preds = %21
  store i32 0, ptr %11, align 4
  br label %26

26:                                               ; preds = %61, %25
  %27 = load i32, ptr %11, align 4
  %28 = load i32, ptr %6, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %64

30:                                               ; preds = %26
  %31 = load i32, ptr %9, align 4
  %32 = load i32, ptr %7, align 4
  %33 = mul i32 %31, %32
  %34 = load i32, ptr %6, align 4
  %35 = mul i32 %33, %34
  %36 = load i32, ptr %10, align 4
  %37 = load i32, ptr %6, align 4
  %38 = mul i32 %36, %37
  %39 = add i32 %35, %38
  %40 = load i32, ptr %11, align 4
  %41 = add i32 %39, %40
  %42 = srem i32 %41, 20
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %30
  %45 = call ptr @__acrt_iob_func(i32 noundef 2)
  %46 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %45, ptr noundef @"??_C@_01EEMJAFIK@?6?$AA@") #5
  br label %47

47:                                               ; preds = %44, %30
  %48 = load ptr, ptr %5, align 8
  %49 = load i32, ptr %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [8 x [12 x double]], ptr %48, i64 %50
  %52 = load i32, ptr %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [8 x [12 x double]], ptr %51, i64 0, i64 %53
  %55 = load i32, ptr %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [12 x double], ptr %54, i64 0, i64 %56
  %58 = load double, ptr %57, align 8
  %59 = call ptr @__acrt_iob_func(i32 noundef 2)
  %60 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %59, ptr noundef @"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@", double noundef %58) #5
  br label %61

61:                                               ; preds = %47
  %62 = load i32, ptr %11, align 4
  %63 = add i32 %62, 1
  store i32 %63, ptr %11, align 4
  br label %26, !llvm.loop !18

64:                                               ; preds = %26
  br label %65

65:                                               ; preds = %64
  %66 = load i32, ptr %10, align 4
  %67 = add i32 %66, 1
  store i32 %67, ptr %10, align 4
  br label %21, !llvm.loop !19

68:                                               ; preds = %21
  br label %69

69:                                               ; preds = %68
  %70 = load i32, ptr %9, align 4
  %71 = add i32 %70, 1
  store i32 %71, ptr %9, align 4
  br label %16, !llvm.loop !20

72:                                               ; preds = %16
  %73 = call ptr @__acrt_iob_func(i32 noundef 2)
  %74 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %73, ptr noundef @"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@", ptr noundef @"??_C@_01FHEEJDEE@A?$AA@") #5
  %75 = call ptr @__acrt_iob_func(i32 noundef 2)
  %76 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %75, ptr noundef @"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@") #5
  ret void
}

declare dso_local void @free(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #4

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
declare void @llvm.va_end.p0(ptr) #4

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

declare dso_local i32 @__stdio_common_vsprintf(i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local ptr @__local_stdio_printf_options() #0 comdat {
  ret ptr @__local_stdio_printf_options._OptionsStorage
}

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

declare dso_local ptr @__acrt_iob_func(i32 noundef) #2

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

declare dso_local i32 @__stdio_common_vfprintf(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 24.0.0git (https://github.com/llvm/llvm-project.git 6f4196219399a3502cea3beb2d0c8c28b2241649)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\linear-algebra\\kernels\\doitgen\\doitgen.c", directory: "C:\\work\\llvm-profitability-research")
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
