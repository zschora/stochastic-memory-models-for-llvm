; ModuleID = 'C:\work\llvm-profitability-research\.tools\corpus\PolyBench\linear-algebra\kernels\bicg\bicg.c'
source_filename = "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\linear-algebra\\kernels\\bicg\\bicg.c"
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

$"??_C@_01LKDEMHDF@s?$AA@" = comdat any

$"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@" = comdat any

$"??_C@_01EEMJAFIK@?6?$AA@" = comdat any

$"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@" = comdat any

$"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@" = comdat any

$"??_C@_01IIACKFLH@q?$AA@" = comdat any

$"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = comdat any

@"??_C@_00CNPNBAHC@?$AA@" = linkonce_odr dso_local unnamed_addr constant [1 x i8] zeroinitializer, comdat, align 1
@__local_stdio_printf_options._OptionsStorage = internal global i64 0, align 8
@"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", comdat, align 8
@"??_C@_01LKDEMHDF@s?$AA@" = linkonce_odr dso_local unnamed_addr constant [2 x i8] c"s\00", comdat, align 4
@"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"begin dump: %s\00", comdat, align 8
@"??_C@_01EEMJAFIK@?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [2 x i8] c"\0A\00", comdat, align 4
@"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [8 x i8] c"%0.2lf \00", comdat, align 8
@"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", comdat, align 8
@"??_C@_01IIACKFLH@q?$AA@" = linkonce_odr dso_local unnamed_addr constant [2 x i8] c"q\00", comdat, align 4
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
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  store i32 0, ptr %3, align 4
  store ptr %1, ptr %4, align 8
  store i32 %0, ptr %5, align 4
  store i32 42, ptr %6, align 4
  store i32 38, ptr %7, align 4
  %13 = call ptr @polybench_alloc_data(i64 noundef 1596, i32 noundef 8)
  store ptr %13, ptr %8, align 8
  %14 = call ptr @polybench_alloc_data(i64 noundef 38, i32 noundef 8)
  store ptr %14, ptr %9, align 8
  %15 = call ptr @polybench_alloc_data(i64 noundef 42, i32 noundef 8)
  store ptr %15, ptr %10, align 8
  %16 = call ptr @polybench_alloc_data(i64 noundef 38, i32 noundef 8)
  store ptr %16, ptr %11, align 8
  %17 = call ptr @polybench_alloc_data(i64 noundef 42, i32 noundef 8)
  store ptr %17, ptr %12, align 8
  %18 = load ptr, ptr %11, align 8
  %19 = getelementptr inbounds [38 x double], ptr %18, i64 0, i64 0
  %20 = load ptr, ptr %12, align 8
  %21 = getelementptr inbounds [42 x double], ptr %20, i64 0, i64 0
  %22 = load ptr, ptr %8, align 8
  %23 = getelementptr inbounds [42 x [38 x double]], ptr %22, i64 0, i64 0
  %24 = load i32, ptr %6, align 4
  %25 = load i32, ptr %7, align 4
  call void @init_array(i32 noundef %25, i32 noundef %24, ptr noundef %23, ptr noundef %21, ptr noundef %19)
  %26 = load ptr, ptr %12, align 8
  %27 = getelementptr inbounds [42 x double], ptr %26, i64 0, i64 0
  %28 = load ptr, ptr %11, align 8
  %29 = getelementptr inbounds [38 x double], ptr %28, i64 0, i64 0
  %30 = load ptr, ptr %10, align 8
  %31 = getelementptr inbounds [42 x double], ptr %30, i64 0, i64 0
  %32 = load ptr, ptr %9, align 8
  %33 = getelementptr inbounds [38 x double], ptr %32, i64 0, i64 0
  %34 = load ptr, ptr %8, align 8
  %35 = getelementptr inbounds [42 x [38 x double]], ptr %34, i64 0, i64 0
  %36 = load i32, ptr %6, align 4
  %37 = load i32, ptr %7, align 4
  call void @kernel_bicg(i32 noundef %37, i32 noundef %36, ptr noundef %35, ptr noundef %33, ptr noundef %31, ptr noundef %29, ptr noundef %27)
  %38 = load i32, ptr %5, align 4
  %39 = icmp sgt i32 %38, 42
  br i1 %39, label %40, label %53

40:                                               ; preds = %2
  %41 = load ptr, ptr %4, align 8
  %42 = getelementptr inbounds ptr, ptr %41, i64 0
  %43 = load ptr, ptr %42, align 8
  %44 = call i32 @strcmp(ptr noundef %43, ptr noundef @"??_C@_00CNPNBAHC@?$AA@") #5
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %40
  %47 = load ptr, ptr %10, align 8
  %48 = getelementptr inbounds [42 x double], ptr %47, i64 0, i64 0
  %49 = load ptr, ptr %9, align 8
  %50 = getelementptr inbounds [38 x double], ptr %49, i64 0, i64 0
  %51 = load i32, ptr %6, align 4
  %52 = load i32, ptr %7, align 4
  call void @print_array(i32 noundef %52, i32 noundef %51, ptr noundef %50, ptr noundef %48)
  br label %53

53:                                               ; preds = %46, %40, %2
  %54 = load ptr, ptr %8, align 8
  call void @free(ptr noundef %54)
  %55 = load ptr, ptr %9, align 8
  call void @free(ptr noundef %55)
  %56 = load ptr, ptr %10, align 8
  call void @free(ptr noundef %56)
  %57 = load ptr, ptr %11, align 8
  call void @free(ptr noundef %57)
  %58 = load ptr, ptr %12, align 8
  call void @free(ptr noundef %58)
  ret i32 0
}

declare dso_local ptr @polybench_alloc_data(i64 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store ptr %4, ptr %6, align 8
  store ptr %3, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  store i32 %1, ptr %9, align 4
  store i32 %0, ptr %10, align 4
  store i32 0, ptr %11, align 4
  br label %13

13:                                               ; preds = %29, %5
  %14 = load i32, ptr %11, align 4
  %15 = load i32, ptr %10, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %32

17:                                               ; preds = %13
  %18 = load i32, ptr %11, align 4
  %19 = load i32, ptr %10, align 4
  %20 = srem i32 %18, %19
  %21 = sitofp i32 %20 to double
  %22 = load i32, ptr %10, align 4
  %23 = sitofp i32 %22 to double
  %24 = fdiv double %21, %23
  %25 = load ptr, ptr %6, align 8
  %26 = load i32, ptr %11, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds double, ptr %25, i64 %27
  store double %24, ptr %28, align 8
  br label %29

29:                                               ; preds = %17
  %30 = load i32, ptr %11, align 4
  %31 = add i32 %30, 1
  store i32 %31, ptr %11, align 4
  br label %13, !llvm.loop !7

32:                                               ; preds = %13
  store i32 0, ptr %11, align 4
  br label %33

33:                                               ; preds = %75, %32
  %34 = load i32, ptr %11, align 4
  %35 = load i32, ptr %9, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %78

37:                                               ; preds = %33
  %38 = load i32, ptr %11, align 4
  %39 = load i32, ptr %9, align 4
  %40 = srem i32 %38, %39
  %41 = sitofp i32 %40 to double
  %42 = load i32, ptr %9, align 4
  %43 = sitofp i32 %42 to double
  %44 = fdiv double %41, %43
  %45 = load ptr, ptr %7, align 8
  %46 = load i32, ptr %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds double, ptr %45, i64 %47
  store double %44, ptr %48, align 8
  store i32 0, ptr %12, align 4
  br label %49

49:                                               ; preds = %71, %37
  %50 = load i32, ptr %12, align 4
  %51 = load i32, ptr %10, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %74

53:                                               ; preds = %49
  %54 = load i32, ptr %11, align 4
  %55 = load i32, ptr %12, align 4
  %56 = add i32 %55, 1
  %57 = mul i32 %54, %56
  %58 = load i32, ptr %9, align 4
  %59 = srem i32 %57, %58
  %60 = sitofp i32 %59 to double
  %61 = load i32, ptr %9, align 4
  %62 = sitofp i32 %61 to double
  %63 = fdiv double %60, %62
  %64 = load ptr, ptr %8, align 8
  %65 = load i32, ptr %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [38 x double], ptr %64, i64 %66
  %68 = load i32, ptr %12, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [38 x double], ptr %67, i64 0, i64 %69
  store double %63, ptr %70, align 8
  br label %71

71:                                               ; preds = %53
  %72 = load i32, ptr %12, align 4
  %73 = add i32 %72, 1
  store i32 %73, ptr %12, align 4
  br label %49, !llvm.loop !9

74:                                               ; preds = %49
  br label %75

75:                                               ; preds = %74
  %76 = load i32, ptr %11, align 4
  %77 = add i32 %76, 1
  store i32 %77, ptr %11, align 4
  br label %33, !llvm.loop !10

78:                                               ; preds = %33
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_bicg(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #0 {
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
  store i32 0, ptr %15, align 4
  br label %17

17:                                               ; preds = %25, %7
  %18 = load i32, ptr %15, align 4
  %19 = icmp slt i32 %18, 38
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = load ptr, ptr %11, align 8
  %22 = load i32, ptr %15, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds double, ptr %21, i64 %23
  store double 0.000000e+00, ptr %24, align 8
  br label %25

25:                                               ; preds = %20
  %26 = load i32, ptr %15, align 4
  %27 = add i32 %26, 1
  store i32 %27, ptr %15, align 4
  br label %17, !llvm.loop !11

28:                                               ; preds = %17
  store i32 0, ptr %15, align 4
  br label %29

29:                                               ; preds = %91, %28
  %30 = load i32, ptr %15, align 4
  %31 = icmp slt i32 %30, 42
  br i1 %31, label %32, label %94

32:                                               ; preds = %29
  %33 = load ptr, ptr %10, align 8
  %34 = load i32, ptr %15, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds double, ptr %33, i64 %35
  store double 0.000000e+00, ptr %36, align 8
  store i32 0, ptr %16, align 4
  br label %37

37:                                               ; preds = %87, %32
  %38 = load i32, ptr %16, align 4
  %39 = icmp slt i32 %38, 38
  br i1 %39, label %40, label %90

40:                                               ; preds = %37
  %41 = load ptr, ptr %11, align 8
  %42 = load i32, ptr %16, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds double, ptr %41, i64 %43
  %45 = load double, ptr %44, align 8
  %46 = load ptr, ptr %8, align 8
  %47 = load i32, ptr %15, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds double, ptr %46, i64 %48
  %50 = load double, ptr %49, align 8
  %51 = load ptr, ptr %12, align 8
  %52 = load i32, ptr %15, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [38 x double], ptr %51, i64 %53
  %55 = load i32, ptr %16, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [38 x double], ptr %54, i64 0, i64 %56
  %58 = load double, ptr %57, align 8
  %59 = call double @llvm.fmuladd.f64(double %50, double %58, double %45)
  %60 = load ptr, ptr %11, align 8
  %61 = load i32, ptr %16, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds double, ptr %60, i64 %62
  store double %59, ptr %63, align 8
  %64 = load ptr, ptr %10, align 8
  %65 = load i32, ptr %15, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds double, ptr %64, i64 %66
  %68 = load double, ptr %67, align 8
  %69 = load ptr, ptr %12, align 8
  %70 = load i32, ptr %15, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [38 x double], ptr %69, i64 %71
  %73 = load i32, ptr %16, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [38 x double], ptr %72, i64 0, i64 %74
  %76 = load double, ptr %75, align 8
  %77 = load ptr, ptr %9, align 8
  %78 = load i32, ptr %16, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds double, ptr %77, i64 %79
  %81 = load double, ptr %80, align 8
  %82 = call double @llvm.fmuladd.f64(double %76, double %81, double %68)
  %83 = load ptr, ptr %10, align 8
  %84 = load i32, ptr %15, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds double, ptr %83, i64 %85
  store double %82, ptr %86, align 8
  br label %87

87:                                               ; preds = %40
  %88 = load i32, ptr %16, align 4
  %89 = add i32 %88, 1
  store i32 %89, ptr %16, align 4
  br label %37, !llvm.loop !12

90:                                               ; preds = %37
  br label %91

91:                                               ; preds = %90
  %92 = load i32, ptr %15, align 4
  %93 = add i32 %92, 1
  store i32 %93, ptr %15, align 4
  br label %29, !llvm.loop !13

94:                                               ; preds = %29
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @strcmp(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store ptr %3, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  store i32 %1, ptr %7, align 4
  store i32 %0, ptr %8, align 4
  %10 = call ptr @__acrt_iob_func(i32 noundef 2)
  %11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@") #5
  %12 = call ptr @__acrt_iob_func(i32 noundef 2)
  %13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@", ptr noundef @"??_C@_01LKDEMHDF@s?$AA@") #5
  store i32 0, ptr %9, align 4
  br label %14

14:                                               ; preds = %33, %4
  %15 = load i32, ptr %9, align 4
  %16 = load i32, ptr %8, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %36

18:                                               ; preds = %14
  %19 = load i32, ptr %9, align 4
  %20 = srem i32 %19, 20
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = call ptr @__acrt_iob_func(i32 noundef 2)
  %24 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef @"??_C@_01EEMJAFIK@?6?$AA@") #5
  br label %25

25:                                               ; preds = %22, %18
  %26 = load ptr, ptr %6, align 8
  %27 = load i32, ptr %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds double, ptr %26, i64 %28
  %30 = load double, ptr %29, align 8
  %31 = call ptr @__acrt_iob_func(i32 noundef 2)
  %32 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %31, ptr noundef @"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@", double noundef %30) #5
  br label %33

33:                                               ; preds = %25
  %34 = load i32, ptr %9, align 4
  %35 = add i32 %34, 1
  store i32 %35, ptr %9, align 4
  br label %14, !llvm.loop !14

36:                                               ; preds = %14
  %37 = call ptr @__acrt_iob_func(i32 noundef 2)
  %38 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %37, ptr noundef @"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@", ptr noundef @"??_C@_01LKDEMHDF@s?$AA@") #5
  %39 = call ptr @__acrt_iob_func(i32 noundef 2)
  %40 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %39, ptr noundef @"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@", ptr noundef @"??_C@_01IIACKFLH@q?$AA@") #5
  store i32 0, ptr %9, align 4
  br label %41

41:                                               ; preds = %60, %36
  %42 = load i32, ptr %9, align 4
  %43 = load i32, ptr %7, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %63

45:                                               ; preds = %41
  %46 = load i32, ptr %9, align 4
  %47 = srem i32 %46, 20
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = call ptr @__acrt_iob_func(i32 noundef 2)
  %51 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %50, ptr noundef @"??_C@_01EEMJAFIK@?6?$AA@") #5
  br label %52

52:                                               ; preds = %49, %45
  %53 = load ptr, ptr %5, align 8
  %54 = load i32, ptr %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds double, ptr %53, i64 %55
  %57 = load double, ptr %56, align 8
  %58 = call ptr @__acrt_iob_func(i32 noundef 2)
  %59 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %58, ptr noundef @"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@", double noundef %57) #5
  br label %60

60:                                               ; preds = %52
  %61 = load i32, ptr %9, align 4
  %62 = add i32 %61, 1
  store i32 %62, ptr %9, align 4
  br label %41, !llvm.loop !15

63:                                               ; preds = %41
  %64 = call ptr @__acrt_iob_func(i32 noundef 2)
  %65 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %64, ptr noundef @"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@", ptr noundef @"??_C@_01IIACKFLH@q?$AA@") #5
  %66 = call ptr @__acrt_iob_func(i32 noundef 2)
  %67 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %66, ptr noundef @"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@") #5
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
!1 = !DIFile(filename: "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\linear-algebra\\kernels\\bicg\\bicg.c", directory: "C:\\work\\llvm-profitability-research")
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
