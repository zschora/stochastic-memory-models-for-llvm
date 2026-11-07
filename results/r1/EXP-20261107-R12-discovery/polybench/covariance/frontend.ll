; ModuleID = 'C:\work\llvm-profitability-research\.tools\corpus\PolyBench\datamining\covariance\covariance.c'
source_filename = "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\datamining\\covariance\\covariance.c"
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

$"??_C@_03MNMGCKGD@cov?$AA@" = comdat any

$"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@" = comdat any

$"??_C@_01EEMJAFIK@?6?$AA@" = comdat any

$"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@" = comdat any

$"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@" = comdat any

$"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = comdat any

@"??_C@_00CNPNBAHC@?$AA@" = linkonce_odr dso_local unnamed_addr constant [1 x i8] zeroinitializer, comdat, align 1
@__local_stdio_printf_options._OptionsStorage = internal global i64 0, align 8
@"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", comdat, align 8
@"??_C@_03MNMGCKGD@cov?$AA@" = linkonce_odr dso_local unnamed_addr constant [4 x i8] c"cov\00", comdat, align 4
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
  store i32 0, ptr %3, align 4
  store ptr %1, ptr %4, align 8
  store i32 %0, ptr %5, align 4
  store i32 32, ptr %6, align 4
  store i32 28, ptr %7, align 4
  %12 = call ptr @polybench_alloc_data(i64 noundef 896, i32 noundef 8)
  store ptr %12, ptr %9, align 8
  %13 = call ptr @polybench_alloc_data(i64 noundef 784, i32 noundef 8)
  store ptr %13, ptr %10, align 8
  %14 = call ptr @polybench_alloc_data(i64 noundef 28, i32 noundef 8)
  store ptr %14, ptr %11, align 8
  %15 = load ptr, ptr %9, align 8
  %16 = getelementptr inbounds [32 x [28 x double]], ptr %15, i64 0, i64 0
  %17 = load i32, ptr %6, align 4
  %18 = load i32, ptr %7, align 4
  call void @init_array(i32 noundef %18, i32 noundef %17, ptr noundef %8, ptr noundef %16)
  %19 = load ptr, ptr %11, align 8
  %20 = getelementptr inbounds [28 x double], ptr %19, i64 0, i64 0
  %21 = load ptr, ptr %10, align 8
  %22 = getelementptr inbounds [28 x [28 x double]], ptr %21, i64 0, i64 0
  %23 = load ptr, ptr %9, align 8
  %24 = getelementptr inbounds [32 x [28 x double]], ptr %23, i64 0, i64 0
  %25 = load double, ptr %8, align 8
  %26 = load i32, ptr %6, align 4
  %27 = load i32, ptr %7, align 4
  call void @kernel_covariance(i32 noundef %27, i32 noundef %26, double noundef %25, ptr noundef %24, ptr noundef %22, ptr noundef %20)
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
  %38 = getelementptr inbounds [28 x [28 x double]], ptr %37, i64 0, i64 0
  %39 = load i32, ptr %7, align 4
  call void @print_array(i32 noundef %39, ptr noundef %38)
  br label %40

40:                                               ; preds = %36, %30, %2
  %41 = load ptr, ptr %9, align 8
  call void @free(ptr noundef %41)
  %42 = load ptr, ptr %10, align 8
  call void @free(ptr noundef %42)
  %43 = load ptr, ptr %11, align 8
  call void @free(ptr noundef %43)
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
  %11 = load i32, ptr %7, align 4
  %12 = sitofp i32 %11 to double
  %13 = load ptr, ptr %6, align 8
  store double %12, ptr %13, align 8
  store i32 0, ptr %9, align 4
  br label %14

14:                                               ; preds = %39, %4
  %15 = load i32, ptr %9, align 4
  %16 = icmp slt i32 %15, 32
  br i1 %16, label %17, label %42

17:                                               ; preds = %14
  store i32 0, ptr %10, align 4
  br label %18

18:                                               ; preds = %35, %17
  %19 = load i32, ptr %10, align 4
  %20 = icmp slt i32 %19, 28
  br i1 %20, label %21, label %38

21:                                               ; preds = %18
  %22 = load i32, ptr %9, align 4
  %23 = sitofp i32 %22 to double
  %24 = load i32, ptr %10, align 4
  %25 = sitofp i32 %24 to double
  %26 = fmul double %23, %25
  %27 = fdiv double %26, 2.800000e+01
  %28 = load ptr, ptr %5, align 8
  %29 = load i32, ptr %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [28 x double], ptr %28, i64 %30
  %32 = load i32, ptr %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [28 x double], ptr %31, i64 0, i64 %33
  store double %27, ptr %34, align 8
  br label %35

35:                                               ; preds = %21
  %36 = load i32, ptr %10, align 4
  %37 = add i32 %36, 1
  store i32 %37, ptr %10, align 4
  br label %18, !llvm.loop !7

38:                                               ; preds = %18
  br label %39

39:                                               ; preds = %38
  %40 = load i32, ptr %9, align 4
  %41 = add i32 %40, 1
  store i32 %41, ptr %9, align 4
  br label %14, !llvm.loop !9

42:                                               ; preds = %14
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_covariance(i32 noundef %0, i32 noundef %1, double noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #0 {
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store ptr %5, ptr %7, align 8
  store ptr %4, ptr %8, align 8
  store ptr %3, ptr %9, align 8
  store double %2, ptr %10, align 8
  store i32 %1, ptr %11, align 4
  store i32 %0, ptr %12, align 4
  store i32 0, ptr %14, align 4
  br label %16

16:                                               ; preds = %53, %6
  %17 = load i32, ptr %14, align 4
  %18 = icmp slt i32 %17, 28
  br i1 %18, label %19, label %56

19:                                               ; preds = %16
  %20 = load ptr, ptr %7, align 8
  %21 = load i32, ptr %14, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds double, ptr %20, i64 %22
  store double 0.000000e+00, ptr %23, align 8
  store i32 0, ptr %13, align 4
  br label %24

24:                                               ; preds = %42, %19
  %25 = load i32, ptr %13, align 4
  %26 = icmp slt i32 %25, 32
  br i1 %26, label %27, label %45

27:                                               ; preds = %24
  %28 = load ptr, ptr %9, align 8
  %29 = load i32, ptr %13, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [28 x double], ptr %28, i64 %30
  %32 = load i32, ptr %14, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [28 x double], ptr %31, i64 0, i64 %33
  %35 = load double, ptr %34, align 8
  %36 = load ptr, ptr %7, align 8
  %37 = load i32, ptr %14, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds double, ptr %36, i64 %38
  %40 = load double, ptr %39, align 8
  %41 = fadd double %40, %35
  store double %41, ptr %39, align 8
  br label %42

42:                                               ; preds = %27
  %43 = load i32, ptr %13, align 4
  %44 = add i32 %43, 1
  store i32 %44, ptr %13, align 4
  br label %24, !llvm.loop !10

45:                                               ; preds = %24
  %46 = load double, ptr %10, align 8
  %47 = load ptr, ptr %7, align 8
  %48 = load i32, ptr %14, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds double, ptr %47, i64 %49
  %51 = load double, ptr %50, align 8
  %52 = fdiv double %51, %46
  store double %52, ptr %50, align 8
  br label %53

53:                                               ; preds = %45
  %54 = load i32, ptr %14, align 4
  %55 = add i32 %54, 1
  store i32 %55, ptr %14, align 4
  br label %16, !llvm.loop !11

56:                                               ; preds = %16
  store i32 0, ptr %13, align 4
  br label %57

57:                                               ; preds = %83, %56
  %58 = load i32, ptr %13, align 4
  %59 = icmp slt i32 %58, 32
  br i1 %59, label %60, label %86

60:                                               ; preds = %57
  store i32 0, ptr %14, align 4
  br label %61

61:                                               ; preds = %79, %60
  %62 = load i32, ptr %14, align 4
  %63 = icmp slt i32 %62, 28
  br i1 %63, label %64, label %82

64:                                               ; preds = %61
  %65 = load ptr, ptr %7, align 8
  %66 = load i32, ptr %14, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds double, ptr %65, i64 %67
  %69 = load double, ptr %68, align 8
  %70 = load ptr, ptr %9, align 8
  %71 = load i32, ptr %13, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [28 x double], ptr %70, i64 %72
  %74 = load i32, ptr %14, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [28 x double], ptr %73, i64 0, i64 %75
  %77 = load double, ptr %76, align 8
  %78 = fsub double %77, %69
  store double %78, ptr %76, align 8
  br label %79

79:                                               ; preds = %64
  %80 = load i32, ptr %14, align 4
  %81 = add i32 %80, 1
  store i32 %81, ptr %14, align 4
  br label %61, !llvm.loop !12

82:                                               ; preds = %61
  br label %83

83:                                               ; preds = %82
  %84 = load i32, ptr %13, align 4
  %85 = add i32 %84, 1
  store i32 %85, ptr %13, align 4
  br label %57, !llvm.loop !13

86:                                               ; preds = %57
  store i32 0, ptr %13, align 4
  br label %87

87:                                               ; preds = %166, %86
  %88 = load i32, ptr %13, align 4
  %89 = icmp slt i32 %88, 28
  br i1 %89, label %90, label %169

90:                                               ; preds = %87
  %91 = load i32, ptr %13, align 4
  store i32 %91, ptr %14, align 4
  br label %92

92:                                               ; preds = %162, %90
  %93 = load i32, ptr %14, align 4
  %94 = icmp slt i32 %93, 28
  br i1 %94, label %95, label %165

95:                                               ; preds = %92
  %96 = load ptr, ptr %8, align 8
  %97 = load i32, ptr %13, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [28 x double], ptr %96, i64 %98
  %100 = load i32, ptr %14, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [28 x double], ptr %99, i64 0, i64 %101
  store double 0.000000e+00, ptr %102, align 8
  store i32 0, ptr %15, align 4
  br label %103

103:                                              ; preds = %132, %95
  %104 = load i32, ptr %15, align 4
  %105 = icmp slt i32 %104, 32
  br i1 %105, label %106, label %135

106:                                              ; preds = %103
  %107 = load ptr, ptr %9, align 8
  %108 = load i32, ptr %15, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [28 x double], ptr %107, i64 %109
  %111 = load i32, ptr %13, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [28 x double], ptr %110, i64 0, i64 %112
  %114 = load double, ptr %113, align 8
  %115 = load ptr, ptr %9, align 8
  %116 = load i32, ptr %15, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [28 x double], ptr %115, i64 %117
  %119 = load i32, ptr %14, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [28 x double], ptr %118, i64 0, i64 %120
  %122 = load double, ptr %121, align 8
  %123 = load ptr, ptr %8, align 8
  %124 = load i32, ptr %13, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [28 x double], ptr %123, i64 %125
  %127 = load i32, ptr %14, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [28 x double], ptr %126, i64 0, i64 %128
  %130 = load double, ptr %129, align 8
  %131 = call double @llvm.fmuladd.f64(double %114, double %122, double %130)
  store double %131, ptr %129, align 8
  br label %132

132:                                              ; preds = %106
  %133 = load i32, ptr %15, align 4
  %134 = add i32 %133, 1
  store i32 %134, ptr %15, align 4
  br label %103, !llvm.loop !14

135:                                              ; preds = %103
  %136 = load double, ptr %10, align 8
  %137 = fsub double %136, 1.000000e+00
  %138 = load ptr, ptr %8, align 8
  %139 = load i32, ptr %13, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [28 x double], ptr %138, i64 %140
  %142 = load i32, ptr %14, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [28 x double], ptr %141, i64 0, i64 %143
  %145 = load double, ptr %144, align 8
  %146 = fdiv double %145, %137
  store double %146, ptr %144, align 8
  %147 = load ptr, ptr %8, align 8
  %148 = load i32, ptr %13, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [28 x double], ptr %147, i64 %149
  %151 = load i32, ptr %14, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [28 x double], ptr %150, i64 0, i64 %152
  %154 = load double, ptr %153, align 8
  %155 = load ptr, ptr %8, align 8
  %156 = load i32, ptr %14, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [28 x double], ptr %155, i64 %157
  %159 = load i32, ptr %13, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [28 x double], ptr %158, i64 0, i64 %160
  store double %154, ptr %161, align 8
  br label %162

162:                                              ; preds = %135
  %163 = load i32, ptr %14, align 4
  %164 = add i32 %163, 1
  store i32 %164, ptr %14, align 4
  br label %92, !llvm.loop !15

165:                                              ; preds = %92
  br label %166

166:                                              ; preds = %165
  %167 = load i32, ptr %13, align 4
  %168 = add i32 %167, 1
  store i32 %168, ptr %13, align 4
  br label %87, !llvm.loop !16

169:                                              ; preds = %87
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
  %10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@", ptr noundef @"??_C@_03MNMGCKGD@cov?$AA@") #5
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
  br label %16, !llvm.loop !17

45:                                               ; preds = %16
  br label %46

46:                                               ; preds = %45
  %47 = load i32, ptr %5, align 4
  %48 = add i32 %47, 1
  store i32 %48, ptr %5, align 4
  br label %11, !llvm.loop !18

49:                                               ; preds = %11
  %50 = call ptr @__acrt_iob_func(i32 noundef 2)
  %51 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %50, ptr noundef @"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@", ptr noundef @"??_C@_03MNMGCKGD@cov?$AA@") #5
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
!1 = !DIFile(filename: "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\datamining\\covariance\\covariance.c", directory: "C:\\work\\llvm-profitability-research")
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
