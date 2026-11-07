; ModuleID = 'C:\work\llvm-profitability-research\.tools\corpus\PolyBench\stencils\fdtd-2d\fdtd-2d.c'
source_filename = "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\stencils\\fdtd-2d\\fdtd-2d.c"
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

$"??_C@_02KJEENMNI@ex?$AA@" = comdat any

$"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@" = comdat any

$"??_C@_01EEMJAFIK@?6?$AA@" = comdat any

$"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@" = comdat any

$"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@" = comdat any

$"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = comdat any

$"??_C@_02LAFPONJJ@ey?$AA@" = comdat any

$"??_C@_02JDKKCNAJ@hz?$AA@" = comdat any

@"??_C@_00CNPNBAHC@?$AA@" = linkonce_odr dso_local unnamed_addr constant [1 x i8] zeroinitializer, comdat, align 1
@__local_stdio_printf_options._OptionsStorage = internal global i64 0, align 8
@"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", comdat, align 8
@"??_C@_02KJEENMNI@ex?$AA@" = linkonce_odr dso_local unnamed_addr constant [3 x i8] c"ex\00", comdat, align 4
@"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"begin dump: %s\00", comdat, align 8
@"??_C@_01EEMJAFIK@?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [2 x i8] c"\0A\00", comdat, align 4
@"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [8 x i8] c"%0.2lf \00", comdat, align 8
@"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", comdat, align 8
@"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", comdat, align 8
@"??_C@_02LAFPONJJ@ey?$AA@" = linkonce_odr dso_local unnamed_addr constant [3 x i8] c"ey\00", comdat, align 4
@"??_C@_02JDKKCNAJ@hz?$AA@" = linkonce_odr dso_local unnamed_addr constant [3 x i8] c"hz\00", comdat, align 4

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
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  store i32 0, ptr %3, align 4
  store ptr %1, ptr %4, align 8
  store i32 %0, ptr %5, align 4
  store i32 20, ptr %6, align 4
  store i32 20, ptr %7, align 4
  store i32 30, ptr %8, align 4
  %13 = call ptr @polybench_alloc_data(i64 noundef 600, i32 noundef 8)
  store ptr %13, ptr %9, align 8
  %14 = call ptr @polybench_alloc_data(i64 noundef 600, i32 noundef 8)
  store ptr %14, ptr %10, align 8
  %15 = call ptr @polybench_alloc_data(i64 noundef 600, i32 noundef 8)
  store ptr %15, ptr %11, align 8
  %16 = call ptr @polybench_alloc_data(i64 noundef 20, i32 noundef 8)
  store ptr %16, ptr %12, align 8
  %17 = load ptr, ptr %12, align 8
  %18 = getelementptr inbounds [20 x double], ptr %17, i64 0, i64 0
  %19 = load ptr, ptr %11, align 8
  %20 = getelementptr inbounds [20 x [30 x double]], ptr %19, i64 0, i64 0
  %21 = load ptr, ptr %10, align 8
  %22 = getelementptr inbounds [20 x [30 x double]], ptr %21, i64 0, i64 0
  %23 = load ptr, ptr %9, align 8
  %24 = getelementptr inbounds [20 x [30 x double]], ptr %23, i64 0, i64 0
  %25 = load i32, ptr %8, align 4
  %26 = load i32, ptr %7, align 4
  %27 = load i32, ptr %6, align 4
  call void @init_array(i32 noundef %27, i32 noundef %26, i32 noundef %25, ptr noundef %24, ptr noundef %22, ptr noundef %20, ptr noundef %18)
  %28 = load ptr, ptr %12, align 8
  %29 = getelementptr inbounds [20 x double], ptr %28, i64 0, i64 0
  %30 = load ptr, ptr %11, align 8
  %31 = getelementptr inbounds [20 x [30 x double]], ptr %30, i64 0, i64 0
  %32 = load ptr, ptr %10, align 8
  %33 = getelementptr inbounds [20 x [30 x double]], ptr %32, i64 0, i64 0
  %34 = load ptr, ptr %9, align 8
  %35 = getelementptr inbounds [20 x [30 x double]], ptr %34, i64 0, i64 0
  %36 = load i32, ptr %8, align 4
  %37 = load i32, ptr %7, align 4
  %38 = load i32, ptr %6, align 4
  call void @kernel_fdtd_2d(i32 noundef %38, i32 noundef %37, i32 noundef %36, ptr noundef %35, ptr noundef %33, ptr noundef %31, ptr noundef %29)
  %39 = load i32, ptr %5, align 4
  %40 = icmp sgt i32 %39, 42
  br i1 %40, label %41, label %56

41:                                               ; preds = %2
  %42 = load ptr, ptr %4, align 8
  %43 = getelementptr inbounds ptr, ptr %42, i64 0
  %44 = load ptr, ptr %43, align 8
  %45 = call i32 @strcmp(ptr noundef %44, ptr noundef @"??_C@_00CNPNBAHC@?$AA@") #5
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %41
  %48 = load ptr, ptr %11, align 8
  %49 = getelementptr inbounds [20 x [30 x double]], ptr %48, i64 0, i64 0
  %50 = load ptr, ptr %10, align 8
  %51 = getelementptr inbounds [20 x [30 x double]], ptr %50, i64 0, i64 0
  %52 = load ptr, ptr %9, align 8
  %53 = getelementptr inbounds [20 x [30 x double]], ptr %52, i64 0, i64 0
  %54 = load i32, ptr %8, align 4
  %55 = load i32, ptr %7, align 4
  call void @print_array(i32 noundef %55, i32 noundef %54, ptr noundef %53, ptr noundef %51, ptr noundef %49)
  br label %56

56:                                               ; preds = %47, %41, %2
  %57 = load ptr, ptr %9, align 8
  call void @free(ptr noundef %57)
  %58 = load ptr, ptr %10, align 8
  call void @free(ptr noundef %58)
  %59 = load ptr, ptr %11, align 8
  call void @free(ptr noundef %59)
  %60 = load ptr, ptr %12, align 8
  call void @free(ptr noundef %60)
  ret i32 0
}

declare dso_local ptr @polybench_alloc_data(i64 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #0 {
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store ptr %6, ptr %8, align 8
  store ptr %5, ptr %9, align 8
  store ptr %4, ptr %10, align 8
  store ptr %3, ptr %11, align 8
  store i32 %2, ptr %12, align 4
  store i32 %1, ptr %13, align 4
  store i32 %0, ptr %14, align 4
  store i32 0, ptr %15, align 4
  br label %17

17:                                               ; preds = %28, %7
  %18 = load i32, ptr %15, align 4
  %19 = load i32, ptr %14, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %17
  %22 = load i32, ptr %15, align 4
  %23 = sitofp i32 %22 to double
  %24 = load ptr, ptr %8, align 8
  %25 = load i32, ptr %15, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds double, ptr %24, i64 %26
  store double %23, ptr %27, align 8
  br label %28

28:                                               ; preds = %21
  %29 = load i32, ptr %15, align 4
  %30 = add i32 %29, 1
  store i32 %30, ptr %15, align 4
  br label %17, !llvm.loop !7

31:                                               ; preds = %17
  store i32 0, ptr %15, align 4
  br label %32

32:                                               ; preds = %94, %31
  %33 = load i32, ptr %15, align 4
  %34 = load i32, ptr %13, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %97

36:                                               ; preds = %32
  store i32 0, ptr %16, align 4
  br label %37

37:                                               ; preds = %90, %36
  %38 = load i32, ptr %16, align 4
  %39 = load i32, ptr %12, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %93

41:                                               ; preds = %37
  %42 = load i32, ptr %15, align 4
  %43 = sitofp i32 %42 to double
  %44 = load i32, ptr %16, align 4
  %45 = add i32 %44, 1
  %46 = sitofp i32 %45 to double
  %47 = fmul double %43, %46
  %48 = load i32, ptr %13, align 4
  %49 = sitofp i32 %48 to double
  %50 = fdiv double %47, %49
  %51 = load ptr, ptr %11, align 8
  %52 = load i32, ptr %15, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [30 x double], ptr %51, i64 %53
  %55 = load i32, ptr %16, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [30 x double], ptr %54, i64 0, i64 %56
  store double %50, ptr %57, align 8
  %58 = load i32, ptr %15, align 4
  %59 = sitofp i32 %58 to double
  %60 = load i32, ptr %16, align 4
  %61 = add i32 %60, 2
  %62 = sitofp i32 %61 to double
  %63 = fmul double %59, %62
  %64 = load i32, ptr %12, align 4
  %65 = sitofp i32 %64 to double
  %66 = fdiv double %63, %65
  %67 = load ptr, ptr %10, align 8
  %68 = load i32, ptr %15, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [30 x double], ptr %67, i64 %69
  %71 = load i32, ptr %16, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [30 x double], ptr %70, i64 0, i64 %72
  store double %66, ptr %73, align 8
  %74 = load i32, ptr %15, align 4
  %75 = sitofp i32 %74 to double
  %76 = load i32, ptr %16, align 4
  %77 = add i32 %76, 3
  %78 = sitofp i32 %77 to double
  %79 = fmul double %75, %78
  %80 = load i32, ptr %13, align 4
  %81 = sitofp i32 %80 to double
  %82 = fdiv double %79, %81
  %83 = load ptr, ptr %9, align 8
  %84 = load i32, ptr %15, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [30 x double], ptr %83, i64 %85
  %87 = load i32, ptr %16, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [30 x double], ptr %86, i64 0, i64 %88
  store double %82, ptr %89, align 8
  br label %90

90:                                               ; preds = %41
  %91 = load i32, ptr %16, align 4
  %92 = add i32 %91, 1
  store i32 %92, ptr %16, align 4
  br label %37, !llvm.loop !9

93:                                               ; preds = %37
  br label %94

94:                                               ; preds = %93
  %95 = load i32, ptr %15, align 4
  %96 = add i32 %95, 1
  store i32 %96, ptr %15, align 4
  br label %32, !llvm.loop !10

97:                                               ; preds = %32
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_fdtd_2d(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #0 {
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store ptr %6, ptr %8, align 8
  store ptr %5, ptr %9, align 8
  store ptr %4, ptr %10, align 8
  store ptr %3, ptr %11, align 8
  store i32 %2, ptr %12, align 4
  store i32 %1, ptr %13, align 4
  store i32 %0, ptr %14, align 4
  store i32 0, ptr %15, align 4
  br label %18

18:                                               ; preds = %209, %7
  %19 = load i32, ptr %15, align 4
  %20 = icmp slt i32 %19, 20
  br i1 %20, label %21, label %212

21:                                               ; preds = %18
  store i32 0, ptr %17, align 4
  br label %22

22:                                               ; preds = %36, %21
  %23 = load i32, ptr %17, align 4
  %24 = icmp slt i32 %23, 30
  br i1 %24, label %25, label %39

25:                                               ; preds = %22
  %26 = load ptr, ptr %8, align 8
  %27 = load i32, ptr %15, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds double, ptr %26, i64 %28
  %30 = load double, ptr %29, align 8
  %31 = load ptr, ptr %10, align 8
  %32 = getelementptr inbounds [30 x double], ptr %31, i64 0
  %33 = load i32, ptr %17, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [30 x double], ptr %32, i64 0, i64 %34
  store double %30, ptr %35, align 8
  br label %36

36:                                               ; preds = %25
  %37 = load i32, ptr %17, align 4
  %38 = add i32 %37, 1
  store i32 %38, ptr %17, align 4
  br label %22, !llvm.loop !11

39:                                               ; preds = %22
  store i32 1, ptr %16, align 4
  br label %40

40:                                               ; preds = %86, %39
  %41 = load i32, ptr %16, align 4
  %42 = icmp slt i32 %41, 20
  br i1 %42, label %43, label %89

43:                                               ; preds = %40
  store i32 0, ptr %17, align 4
  br label %44

44:                                               ; preds = %82, %43
  %45 = load i32, ptr %17, align 4
  %46 = icmp slt i32 %45, 30
  br i1 %46, label %47, label %85

47:                                               ; preds = %44
  %48 = load ptr, ptr %10, align 8
  %49 = load i32, ptr %16, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [30 x double], ptr %48, i64 %50
  %52 = load i32, ptr %17, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [30 x double], ptr %51, i64 0, i64 %53
  %55 = load double, ptr %54, align 8
  %56 = load ptr, ptr %9, align 8
  %57 = load i32, ptr %16, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [30 x double], ptr %56, i64 %58
  %60 = load i32, ptr %17, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [30 x double], ptr %59, i64 0, i64 %61
  %63 = load double, ptr %62, align 8
  %64 = load ptr, ptr %9, align 8
  %65 = load i32, ptr %16, align 4
  %66 = sub i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [30 x double], ptr %64, i64 %67
  %69 = load i32, ptr %17, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [30 x double], ptr %68, i64 0, i64 %70
  %72 = load double, ptr %71, align 8
  %73 = fsub double %63, %72
  %74 = call double @llvm.fmuladd.f64(double -5.000000e-01, double %73, double %55)
  %75 = load ptr, ptr %10, align 8
  %76 = load i32, ptr %16, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [30 x double], ptr %75, i64 %77
  %79 = load i32, ptr %17, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [30 x double], ptr %78, i64 0, i64 %80
  store double %74, ptr %81, align 8
  br label %82

82:                                               ; preds = %47
  %83 = load i32, ptr %17, align 4
  %84 = add i32 %83, 1
  store i32 %84, ptr %17, align 4
  br label %44, !llvm.loop !12

85:                                               ; preds = %44
  br label %86

86:                                               ; preds = %85
  %87 = load i32, ptr %16, align 4
  %88 = add i32 %87, 1
  store i32 %88, ptr %16, align 4
  br label %40, !llvm.loop !13

89:                                               ; preds = %40
  store i32 0, ptr %16, align 4
  br label %90

90:                                               ; preds = %136, %89
  %91 = load i32, ptr %16, align 4
  %92 = icmp slt i32 %91, 20
  br i1 %92, label %93, label %139

93:                                               ; preds = %90
  store i32 1, ptr %17, align 4
  br label %94

94:                                               ; preds = %132, %93
  %95 = load i32, ptr %17, align 4
  %96 = icmp slt i32 %95, 30
  br i1 %96, label %97, label %135

97:                                               ; preds = %94
  %98 = load ptr, ptr %11, align 8
  %99 = load i32, ptr %16, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [30 x double], ptr %98, i64 %100
  %102 = load i32, ptr %17, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [30 x double], ptr %101, i64 0, i64 %103
  %105 = load double, ptr %104, align 8
  %106 = load ptr, ptr %9, align 8
  %107 = load i32, ptr %16, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [30 x double], ptr %106, i64 %108
  %110 = load i32, ptr %17, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [30 x double], ptr %109, i64 0, i64 %111
  %113 = load double, ptr %112, align 8
  %114 = load ptr, ptr %9, align 8
  %115 = load i32, ptr %16, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [30 x double], ptr %114, i64 %116
  %118 = load i32, ptr %17, align 4
  %119 = sub i32 %118, 1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [30 x double], ptr %117, i64 0, i64 %120
  %122 = load double, ptr %121, align 8
  %123 = fsub double %113, %122
  %124 = call double @llvm.fmuladd.f64(double -5.000000e-01, double %123, double %105)
  %125 = load ptr, ptr %11, align 8
  %126 = load i32, ptr %16, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [30 x double], ptr %125, i64 %127
  %129 = load i32, ptr %17, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [30 x double], ptr %128, i64 0, i64 %130
  store double %124, ptr %131, align 8
  br label %132

132:                                              ; preds = %97
  %133 = load i32, ptr %17, align 4
  %134 = add i32 %133, 1
  store i32 %134, ptr %17, align 4
  br label %94, !llvm.loop !14

135:                                              ; preds = %94
  br label %136

136:                                              ; preds = %135
  %137 = load i32, ptr %16, align 4
  %138 = add i32 %137, 1
  store i32 %138, ptr %16, align 4
  br label %90, !llvm.loop !15

139:                                              ; preds = %90
  store i32 0, ptr %16, align 4
  br label %140

140:                                              ; preds = %205, %139
  %141 = load i32, ptr %16, align 4
  %142 = icmp slt i32 %141, 19
  br i1 %142, label %143, label %208

143:                                              ; preds = %140
  store i32 0, ptr %17, align 4
  br label %144

144:                                              ; preds = %201, %143
  %145 = load i32, ptr %17, align 4
  %146 = icmp slt i32 %145, 29
  br i1 %146, label %147, label %204

147:                                              ; preds = %144
  %148 = load ptr, ptr %9, align 8
  %149 = load i32, ptr %16, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [30 x double], ptr %148, i64 %150
  %152 = load i32, ptr %17, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [30 x double], ptr %151, i64 0, i64 %153
  %155 = load double, ptr %154, align 8
  %156 = load ptr, ptr %11, align 8
  %157 = load i32, ptr %16, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [30 x double], ptr %156, i64 %158
  %160 = load i32, ptr %17, align 4
  %161 = add i32 %160, 1
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [30 x double], ptr %159, i64 0, i64 %162
  %164 = load double, ptr %163, align 8
  %165 = load ptr, ptr %11, align 8
  %166 = load i32, ptr %16, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [30 x double], ptr %165, i64 %167
  %169 = load i32, ptr %17, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [30 x double], ptr %168, i64 0, i64 %170
  %172 = load double, ptr %171, align 8
  %173 = fsub double %164, %172
  %174 = load ptr, ptr %10, align 8
  %175 = load i32, ptr %16, align 4
  %176 = add i32 %175, 1
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [30 x double], ptr %174, i64 %177
  %179 = load i32, ptr %17, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [30 x double], ptr %178, i64 0, i64 %180
  %182 = load double, ptr %181, align 8
  %183 = fadd double %173, %182
  %184 = load ptr, ptr %10, align 8
  %185 = load i32, ptr %16, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds [30 x double], ptr %184, i64 %186
  %188 = load i32, ptr %17, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [30 x double], ptr %187, i64 0, i64 %189
  %191 = load double, ptr %190, align 8
  %192 = fsub double %183, %191
  %193 = call double @llvm.fmuladd.f64(double f0xBFE6666666666666, double %192, double %155)
  %194 = load ptr, ptr %9, align 8
  %195 = load i32, ptr %16, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds [30 x double], ptr %194, i64 %196
  %198 = load i32, ptr %17, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [30 x double], ptr %197, i64 0, i64 %199
  store double %193, ptr %200, align 8
  br label %201

201:                                              ; preds = %147
  %202 = load i32, ptr %17, align 4
  %203 = add i32 %202, 1
  store i32 %203, ptr %17, align 4
  br label %144, !llvm.loop !16

204:                                              ; preds = %144
  br label %205

205:                                              ; preds = %204
  %206 = load i32, ptr %16, align 4
  %207 = add i32 %206, 1
  store i32 %207, ptr %16, align 4
  br label %140, !llvm.loop !17

208:                                              ; preds = %140
  br label %209

209:                                              ; preds = %208
  %210 = load i32, ptr %15, align 4
  %211 = add i32 %210, 1
  store i32 %211, ptr %15, align 4
  br label %18, !llvm.loop !18

212:                                              ; preds = %18
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @strcmp(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
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
  %13 = call ptr @__acrt_iob_func(i32 noundef 2)
  %14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@") #5
  %15 = call ptr @__acrt_iob_func(i32 noundef 2)
  %16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@", ptr noundef @"??_C@_02KJEENMNI@ex?$AA@") #5
  store i32 0, ptr %11, align 4
  br label %17

17:                                               ; preds = %52, %5
  %18 = load i32, ptr %11, align 4
  %19 = load i32, ptr %10, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %55

21:                                               ; preds = %17
  store i32 0, ptr %12, align 4
  br label %22

22:                                               ; preds = %48, %21
  %23 = load i32, ptr %12, align 4
  %24 = load i32, ptr %9, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %51

26:                                               ; preds = %22
  %27 = load i32, ptr %11, align 4
  %28 = load i32, ptr %10, align 4
  %29 = mul i32 %27, %28
  %30 = load i32, ptr %12, align 4
  %31 = add i32 %29, %30
  %32 = srem i32 %31, 20
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = call ptr @__acrt_iob_func(i32 noundef 2)
  %36 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef @"??_C@_01EEMJAFIK@?6?$AA@") #5
  br label %37

37:                                               ; preds = %34, %26
  %38 = load ptr, ptr %8, align 8
  %39 = load i32, ptr %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [30 x double], ptr %38, i64 %40
  %42 = load i32, ptr %12, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [30 x double], ptr %41, i64 0, i64 %43
  %45 = load double, ptr %44, align 8
  %46 = call ptr @__acrt_iob_func(i32 noundef 2)
  %47 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %46, ptr noundef @"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@", double noundef %45) #5
  br label %48

48:                                               ; preds = %37
  %49 = load i32, ptr %12, align 4
  %50 = add i32 %49, 1
  store i32 %50, ptr %12, align 4
  br label %22, !llvm.loop !19

51:                                               ; preds = %22
  br label %52

52:                                               ; preds = %51
  %53 = load i32, ptr %11, align 4
  %54 = add i32 %53, 1
  store i32 %54, ptr %11, align 4
  br label %17, !llvm.loop !20

55:                                               ; preds = %17
  %56 = call ptr @__acrt_iob_func(i32 noundef 2)
  %57 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %56, ptr noundef @"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@", ptr noundef @"??_C@_02KJEENMNI@ex?$AA@") #5
  %58 = call ptr @__acrt_iob_func(i32 noundef 2)
  %59 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %58, ptr noundef @"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@") #5
  %60 = call ptr @__acrt_iob_func(i32 noundef 2)
  %61 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %60, ptr noundef @"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@", ptr noundef @"??_C@_02LAFPONJJ@ey?$AA@") #5
  store i32 0, ptr %11, align 4
  br label %62

62:                                               ; preds = %97, %55
  %63 = load i32, ptr %11, align 4
  %64 = load i32, ptr %10, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %100

66:                                               ; preds = %62
  store i32 0, ptr %12, align 4
  br label %67

67:                                               ; preds = %93, %66
  %68 = load i32, ptr %12, align 4
  %69 = load i32, ptr %9, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %96

71:                                               ; preds = %67
  %72 = load i32, ptr %11, align 4
  %73 = load i32, ptr %10, align 4
  %74 = mul i32 %72, %73
  %75 = load i32, ptr %12, align 4
  %76 = add i32 %74, %75
  %77 = srem i32 %76, 20
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %71
  %80 = call ptr @__acrt_iob_func(i32 noundef 2)
  %81 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %80, ptr noundef @"??_C@_01EEMJAFIK@?6?$AA@") #5
  br label %82

82:                                               ; preds = %79, %71
  %83 = load ptr, ptr %7, align 8
  %84 = load i32, ptr %11, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [30 x double], ptr %83, i64 %85
  %87 = load i32, ptr %12, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [30 x double], ptr %86, i64 0, i64 %88
  %90 = load double, ptr %89, align 8
  %91 = call ptr @__acrt_iob_func(i32 noundef 2)
  %92 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %91, ptr noundef @"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@", double noundef %90) #5
  br label %93

93:                                               ; preds = %82
  %94 = load i32, ptr %12, align 4
  %95 = add i32 %94, 1
  store i32 %95, ptr %12, align 4
  br label %67, !llvm.loop !21

96:                                               ; preds = %67
  br label %97

97:                                               ; preds = %96
  %98 = load i32, ptr %11, align 4
  %99 = add i32 %98, 1
  store i32 %99, ptr %11, align 4
  br label %62, !llvm.loop !22

100:                                              ; preds = %62
  %101 = call ptr @__acrt_iob_func(i32 noundef 2)
  %102 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %101, ptr noundef @"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@", ptr noundef @"??_C@_02LAFPONJJ@ey?$AA@") #5
  %103 = call ptr @__acrt_iob_func(i32 noundef 2)
  %104 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %103, ptr noundef @"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@", ptr noundef @"??_C@_02JDKKCNAJ@hz?$AA@") #5
  store i32 0, ptr %11, align 4
  br label %105

105:                                              ; preds = %140, %100
  %106 = load i32, ptr %11, align 4
  %107 = load i32, ptr %10, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %143

109:                                              ; preds = %105
  store i32 0, ptr %12, align 4
  br label %110

110:                                              ; preds = %136, %109
  %111 = load i32, ptr %12, align 4
  %112 = load i32, ptr %9, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %139

114:                                              ; preds = %110
  %115 = load i32, ptr %11, align 4
  %116 = load i32, ptr %10, align 4
  %117 = mul i32 %115, %116
  %118 = load i32, ptr %12, align 4
  %119 = add i32 %117, %118
  %120 = srem i32 %119, 20
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %114
  %123 = call ptr @__acrt_iob_func(i32 noundef 2)
  %124 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %123, ptr noundef @"??_C@_01EEMJAFIK@?6?$AA@") #5
  br label %125

125:                                              ; preds = %122, %114
  %126 = load ptr, ptr %6, align 8
  %127 = load i32, ptr %11, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [30 x double], ptr %126, i64 %128
  %130 = load i32, ptr %12, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [30 x double], ptr %129, i64 0, i64 %131
  %133 = load double, ptr %132, align 8
  %134 = call ptr @__acrt_iob_func(i32 noundef 2)
  %135 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %134, ptr noundef @"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@", double noundef %133) #5
  br label %136

136:                                              ; preds = %125
  %137 = load i32, ptr %12, align 4
  %138 = add i32 %137, 1
  store i32 %138, ptr %12, align 4
  br label %110, !llvm.loop !23

139:                                              ; preds = %110
  br label %140

140:                                              ; preds = %139
  %141 = load i32, ptr %11, align 4
  %142 = add i32 %141, 1
  store i32 %142, ptr %11, align 4
  br label %105, !llvm.loop !24

143:                                              ; preds = %105
  %144 = call ptr @__acrt_iob_func(i32 noundef 2)
  %145 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %144, ptr noundef @"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@", ptr noundef @"??_C@_02JDKKCNAJ@hz?$AA@") #5
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
!1 = !DIFile(filename: "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\stencils\\fdtd-2d\\fdtd-2d.c", directory: "C:\\work\\llvm-profitability-research")
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
!21 = distinct !{!21, !8}
!22 = distinct !{!22, !8}
!23 = distinct !{!23, !8}
!24 = distinct !{!24, !8}
