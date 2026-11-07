; ModuleID = 'C:\work\llvm-profitability-research\.tools\corpus\PolyBench\linear-algebra\blas\syrk\syrk.c'
source_filename = "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\linear-algebra\\blas\\syrk\\syrk.c"
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
  store i32 0, ptr %3, align 4
  store ptr %1, ptr %4, align 8
  store i32 %0, ptr %5, align 4
  store i32 30, ptr %6, align 4
  store i32 20, ptr %7, align 4
  %12 = call ptr @polybench_alloc_data(i64 noundef 900, i32 noundef 8)
  store ptr %12, ptr %10, align 8
  %13 = call ptr @polybench_alloc_data(i64 noundef 600, i32 noundef 8)
  store ptr %13, ptr %11, align 8
  %14 = load ptr, ptr %11, align 8
  %15 = getelementptr inbounds [30 x [20 x double]], ptr %14, i64 0, i64 0
  %16 = load ptr, ptr %10, align 8
  %17 = getelementptr inbounds [30 x [30 x double]], ptr %16, i64 0, i64 0
  %18 = load i32, ptr %7, align 4
  %19 = load i32, ptr %6, align 4
  call void @init_array(i32 noundef %19, i32 noundef %18, ptr noundef %8, ptr noundef %9, ptr noundef %17, ptr noundef %15)
  %20 = load ptr, ptr %11, align 8
  %21 = getelementptr inbounds [30 x [20 x double]], ptr %20, i64 0, i64 0
  %22 = load ptr, ptr %10, align 8
  %23 = getelementptr inbounds [30 x [30 x double]], ptr %22, i64 0, i64 0
  %24 = load double, ptr %9, align 8
  %25 = load double, ptr %8, align 8
  %26 = load i32, ptr %7, align 4
  %27 = load i32, ptr %6, align 4
  call void @kernel_syrk(i32 noundef %27, i32 noundef %26, double noundef %25, double noundef %24, ptr noundef %23, ptr noundef %21)
  %28 = load i32, ptr %5, align 4
  %29 = icmp sgt i32 %28, 42
  br i1 %29, label %30, label %40

30:                                               ; preds = %2
  %31 = load ptr, ptr %4, align 8
  %32 = getelementptr inbounds ptr, ptr %31, i64 0
  %33 = load ptr, ptr %32, align 8
  %34 = call i32 @strcmp(ptr noundef %33, ptr noundef @"??_C@_00CNPNBAHC@?$AA@") #5
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %30
  %37 = load ptr, ptr %10, align 8
  %38 = getelementptr inbounds [30 x [30 x double]], ptr %37, i64 0, i64 0
  %39 = load i32, ptr %6, align 4
  call void @print_array(i32 noundef %39, ptr noundef %38)
  br label %40

40:                                               ; preds = %36, %30, %2
  %41 = load ptr, ptr %10, align 8
  call void @free(ptr noundef %41)
  %42 = load ptr, ptr %11, align 8
  call void @free(ptr noundef %42)
  ret i32 0
}

declare dso_local ptr @polybench_alloc_data(i64 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #0 {
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store ptr %5, ptr %7, align 8
  store ptr %4, ptr %8, align 8
  store ptr %3, ptr %9, align 8
  store ptr %2, ptr %10, align 8
  store i32 %1, ptr %11, align 4
  store i32 %0, ptr %12, align 4
  %15 = load ptr, ptr %10, align 8
  store double 1.500000e+00, ptr %15, align 8
  %16 = load ptr, ptr %9, align 8
  store double 1.200000e+00, ptr %16, align 8
  store i32 0, ptr %13, align 4
  br label %17

17:                                               ; preds = %48, %6
  %18 = load i32, ptr %13, align 4
  %19 = load i32, ptr %12, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %51

21:                                               ; preds = %17
  store i32 0, ptr %14, align 4
  br label %22

22:                                               ; preds = %44, %21
  %23 = load i32, ptr %14, align 4
  %24 = load i32, ptr %11, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %47

26:                                               ; preds = %22
  %27 = load i32, ptr %13, align 4
  %28 = load i32, ptr %14, align 4
  %29 = mul i32 %27, %28
  %30 = add i32 %29, 1
  %31 = load i32, ptr %12, align 4
  %32 = srem i32 %30, %31
  %33 = sitofp i32 %32 to double
  %34 = load i32, ptr %12, align 4
  %35 = sitofp i32 %34 to double
  %36 = fdiv double %33, %35
  %37 = load ptr, ptr %7, align 8
  %38 = load i32, ptr %13, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [20 x double], ptr %37, i64 %39
  %41 = load i32, ptr %14, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [20 x double], ptr %40, i64 0, i64 %42
  store double %36, ptr %43, align 8
  br label %44

44:                                               ; preds = %26
  %45 = load i32, ptr %14, align 4
  %46 = add i32 %45, 1
  store i32 %46, ptr %14, align 4
  br label %22, !llvm.loop !7

47:                                               ; preds = %22
  br label %48

48:                                               ; preds = %47
  %49 = load i32, ptr %13, align 4
  %50 = add i32 %49, 1
  store i32 %50, ptr %13, align 4
  br label %17, !llvm.loop !9

51:                                               ; preds = %17
  store i32 0, ptr %13, align 4
  br label %52

52:                                               ; preds = %83, %51
  %53 = load i32, ptr %13, align 4
  %54 = load i32, ptr %12, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %86

56:                                               ; preds = %52
  store i32 0, ptr %14, align 4
  br label %57

57:                                               ; preds = %79, %56
  %58 = load i32, ptr %14, align 4
  %59 = load i32, ptr %12, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %82

61:                                               ; preds = %57
  %62 = load i32, ptr %13, align 4
  %63 = load i32, ptr %14, align 4
  %64 = mul i32 %62, %63
  %65 = add i32 %64, 2
  %66 = load i32, ptr %11, align 4
  %67 = srem i32 %65, %66
  %68 = sitofp i32 %67 to double
  %69 = load i32, ptr %11, align 4
  %70 = sitofp i32 %69 to double
  %71 = fdiv double %68, %70
  %72 = load ptr, ptr %8, align 8
  %73 = load i32, ptr %13, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [30 x double], ptr %72, i64 %74
  %76 = load i32, ptr %14, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [30 x double], ptr %75, i64 0, i64 %77
  store double %71, ptr %78, align 8
  br label %79

79:                                               ; preds = %61
  %80 = load i32, ptr %14, align 4
  %81 = add i32 %80, 1
  store i32 %81, ptr %14, align 4
  br label %57, !llvm.loop !10

82:                                               ; preds = %57
  br label %83

83:                                               ; preds = %82
  %84 = load i32, ptr %13, align 4
  %85 = add i32 %84, 1
  store i32 %85, ptr %13, align 4
  br label %52, !llvm.loop !11

86:                                               ; preds = %52
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_syrk(i32 noundef %0, i32 noundef %1, double noundef %2, double noundef %3, ptr noundef %4, ptr noundef %5) #0 {
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store ptr %5, ptr %7, align 8
  store ptr %4, ptr %8, align 8
  store double %3, ptr %9, align 8
  store double %2, ptr %10, align 8
  store i32 %1, ptr %11, align 4
  store i32 %0, ptr %12, align 4
  store i32 0, ptr %13, align 4
  br label %16

16:                                               ; preds = %83, %6
  %17 = load i32, ptr %13, align 4
  %18 = icmp slt i32 %17, 30
  br i1 %18, label %19, label %86

19:                                               ; preds = %16
  store i32 0, ptr %14, align 4
  br label %20

20:                                               ; preds = %35, %19
  %21 = load i32, ptr %14, align 4
  %22 = load i32, ptr %13, align 4
  %23 = icmp sle i32 %21, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %20
  %25 = load double, ptr %9, align 8
  %26 = load ptr, ptr %8, align 8
  %27 = load i32, ptr %13, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [30 x double], ptr %26, i64 %28
  %30 = load i32, ptr %14, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [30 x double], ptr %29, i64 0, i64 %31
  %33 = load double, ptr %32, align 8
  %34 = fmul double %33, %25
  store double %34, ptr %32, align 8
  br label %35

35:                                               ; preds = %24
  %36 = load i32, ptr %14, align 4
  %37 = add i32 %36, 1
  store i32 %37, ptr %14, align 4
  br label %20, !llvm.loop !12

38:                                               ; preds = %20
  store i32 0, ptr %15, align 4
  br label %39

39:                                               ; preds = %79, %38
  %40 = load i32, ptr %15, align 4
  %41 = icmp slt i32 %40, 20
  br i1 %41, label %42, label %82

42:                                               ; preds = %39
  store i32 0, ptr %14, align 4
  br label %43

43:                                               ; preds = %75, %42
  %44 = load i32, ptr %14, align 4
  %45 = load i32, ptr %13, align 4
  %46 = icmp sle i32 %44, %45
  br i1 %46, label %47, label %78

47:                                               ; preds = %43
  %48 = load double, ptr %10, align 8
  %49 = load ptr, ptr %7, align 8
  %50 = load i32, ptr %13, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [20 x double], ptr %49, i64 %51
  %53 = load i32, ptr %15, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [20 x double], ptr %52, i64 0, i64 %54
  %56 = load double, ptr %55, align 8
  %57 = fmul double %48, %56
  %58 = load ptr, ptr %7, align 8
  %59 = load i32, ptr %14, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [20 x double], ptr %58, i64 %60
  %62 = load i32, ptr %15, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [20 x double], ptr %61, i64 0, i64 %63
  %65 = load double, ptr %64, align 8
  %66 = load ptr, ptr %8, align 8
  %67 = load i32, ptr %13, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [30 x double], ptr %66, i64 %68
  %70 = load i32, ptr %14, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [30 x double], ptr %69, i64 0, i64 %71
  %73 = load double, ptr %72, align 8
  %74 = call double @llvm.fmuladd.f64(double %57, double %65, double %73)
  store double %74, ptr %72, align 8
  br label %75

75:                                               ; preds = %47
  %76 = load i32, ptr %14, align 4
  %77 = add i32 %76, 1
  store i32 %77, ptr %14, align 4
  br label %43, !llvm.loop !13

78:                                               ; preds = %43
  br label %79

79:                                               ; preds = %78
  %80 = load i32, ptr %15, align 4
  %81 = add i32 %80, 1
  store i32 %81, ptr %15, align 4
  br label %39, !llvm.loop !14

82:                                               ; preds = %39
  br label %83

83:                                               ; preds = %82
  %84 = load i32, ptr %13, align 4
  %85 = add i32 %84, 1
  store i32 %85, ptr %13, align 4
  br label %16, !llvm.loop !15

86:                                               ; preds = %16
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
!1 = !DIFile(filename: "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\linear-algebra\\blas\\syrk\\syrk.c", directory: "C:\\work\\llvm-profitability-research")
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
