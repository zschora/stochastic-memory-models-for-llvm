; ModuleID = 'C:\work\llvm-profitability-research\.tools\corpus\PolyBench\stencils\jacobi-2d\jacobi-2d.c'
source_filename = "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\stencils\\jacobi-2d\\jacobi-2d.c"
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
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store i32 0, ptr %3, align 4
  store ptr %1, ptr %4, align 8
  store i32 %0, ptr %5, align 4
  store i32 30, ptr %6, align 4
  store i32 20, ptr %7, align 4
  %10 = call ptr @polybench_alloc_data(i64 noundef 900, i32 noundef 8)
  store ptr %10, ptr %8, align 8
  %11 = call ptr @polybench_alloc_data(i64 noundef 900, i32 noundef 8)
  store ptr %11, ptr %9, align 8
  %12 = load ptr, ptr %9, align 8
  %13 = getelementptr inbounds [30 x [30 x double]], ptr %12, i64 0, i64 0
  %14 = load ptr, ptr %8, align 8
  %15 = getelementptr inbounds [30 x [30 x double]], ptr %14, i64 0, i64 0
  %16 = load i32, ptr %6, align 4
  call void @init_array(i32 noundef %16, ptr noundef %15, ptr noundef %13)
  %17 = load ptr, ptr %9, align 8
  %18 = getelementptr inbounds [30 x [30 x double]], ptr %17, i64 0, i64 0
  %19 = load ptr, ptr %8, align 8
  %20 = getelementptr inbounds [30 x [30 x double]], ptr %19, i64 0, i64 0
  %21 = load i32, ptr %6, align 4
  %22 = load i32, ptr %7, align 4
  call void @kernel_jacobi_2d(i32 noundef %22, i32 noundef %21, ptr noundef %20, ptr noundef %18)
  %23 = load i32, ptr %5, align 4
  %24 = icmp sgt i32 %23, 42
  br i1 %24, label %25, label %35

25:                                               ; preds = %2
  %26 = load ptr, ptr %4, align 8
  %27 = getelementptr inbounds ptr, ptr %26, i64 0
  %28 = load ptr, ptr %27, align 8
  %29 = call i32 @strcmp(ptr noundef %28, ptr noundef @"??_C@_00CNPNBAHC@?$AA@") #5
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %25
  %32 = load ptr, ptr %8, align 8
  %33 = getelementptr inbounds [30 x [30 x double]], ptr %32, i64 0, i64 0
  %34 = load i32, ptr %6, align 4
  call void @print_array(i32 noundef %34, ptr noundef %33)
  br label %35

35:                                               ; preds = %31, %25, %2
  %36 = load ptr, ptr %8, align 8
  call void @free(ptr noundef %36)
  %37 = load ptr, ptr %9, align 8
  call void @free(ptr noundef %37)
  ret i32 0
}

declare dso_local ptr @polybench_alloc_data(i64 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %2, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i32 %0, ptr %6, align 4
  store i32 0, ptr %7, align 4
  br label %9

9:                                                ; preds = %55, %3
  %10 = load i32, ptr %7, align 4
  %11 = load i32, ptr %6, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %58

13:                                               ; preds = %9
  store i32 0, ptr %8, align 4
  br label %14

14:                                               ; preds = %51, %13
  %15 = load i32, ptr %8, align 4
  %16 = load i32, ptr %6, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %54

18:                                               ; preds = %14
  %19 = load i32, ptr %7, align 4
  %20 = sitofp i32 %19 to double
  %21 = load i32, ptr %8, align 4
  %22 = add i32 %21, 2
  %23 = sitofp i32 %22 to double
  %24 = call double @llvm.fmuladd.f64(double %20, double %23, double 2.000000e+00)
  %25 = load i32, ptr %6, align 4
  %26 = sitofp i32 %25 to double
  %27 = fdiv double %24, %26
  %28 = load ptr, ptr %5, align 8
  %29 = load i32, ptr %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [30 x double], ptr %28, i64 %30
  %32 = load i32, ptr %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [30 x double], ptr %31, i64 0, i64 %33
  store double %27, ptr %34, align 8
  %35 = load i32, ptr %7, align 4
  %36 = sitofp i32 %35 to double
  %37 = load i32, ptr %8, align 4
  %38 = add i32 %37, 3
  %39 = sitofp i32 %38 to double
  %40 = call double @llvm.fmuladd.f64(double %36, double %39, double 3.000000e+00)
  %41 = load i32, ptr %6, align 4
  %42 = sitofp i32 %41 to double
  %43 = fdiv double %40, %42
  %44 = load ptr, ptr %4, align 8
  %45 = load i32, ptr %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [30 x double], ptr %44, i64 %46
  %48 = load i32, ptr %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [30 x double], ptr %47, i64 0, i64 %49
  store double %43, ptr %50, align 8
  br label %51

51:                                               ; preds = %18
  %52 = load i32, ptr %8, align 4
  %53 = add i32 %52, 1
  store i32 %53, ptr %8, align 4
  br label %14, !llvm.loop !7

54:                                               ; preds = %14
  br label %55

55:                                               ; preds = %54
  %56 = load i32, ptr %7, align 4
  %57 = add i32 %56, 1
  store i32 %57, ptr %7, align 4
  br label %9, !llvm.loop !9

58:                                               ; preds = %9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_jacobi_2d(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store ptr %3, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  store i32 %1, ptr %7, align 4
  store i32 %0, ptr %8, align 4
  store i32 0, ptr %9, align 4
  br label %12

12:                                               ; preds = %160, %4
  %13 = load i32, ptr %9, align 4
  %14 = icmp slt i32 %13, 20
  br i1 %14, label %15, label %163

15:                                               ; preds = %12
  store i32 1, ptr %10, align 4
  br label %16

16:                                               ; preds = %84, %15
  %17 = load i32, ptr %10, align 4
  %18 = icmp slt i32 %17, 29
  br i1 %18, label %19, label %87

19:                                               ; preds = %16
  store i32 1, ptr %11, align 4
  br label %20

20:                                               ; preds = %80, %19
  %21 = load i32, ptr %11, align 4
  %22 = icmp slt i32 %21, 29
  br i1 %22, label %23, label %83

23:                                               ; preds = %20
  %24 = load ptr, ptr %6, align 8
  %25 = load i32, ptr %10, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [30 x double], ptr %24, i64 %26
  %28 = load i32, ptr %11, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [30 x double], ptr %27, i64 0, i64 %29
  %31 = load double, ptr %30, align 8
  %32 = load ptr, ptr %6, align 8
  %33 = load i32, ptr %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [30 x double], ptr %32, i64 %34
  %36 = load i32, ptr %11, align 4
  %37 = sub i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [30 x double], ptr %35, i64 0, i64 %38
  %40 = load double, ptr %39, align 8
  %41 = fadd double %31, %40
  %42 = load ptr, ptr %6, align 8
  %43 = load i32, ptr %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [30 x double], ptr %42, i64 %44
  %46 = load i32, ptr %11, align 4
  %47 = add i32 1, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [30 x double], ptr %45, i64 0, i64 %48
  %50 = load double, ptr %49, align 8
  %51 = fadd double %41, %50
  %52 = load ptr, ptr %6, align 8
  %53 = load i32, ptr %10, align 4
  %54 = add i32 1, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [30 x double], ptr %52, i64 %55
  %57 = load i32, ptr %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [30 x double], ptr %56, i64 0, i64 %58
  %60 = load double, ptr %59, align 8
  %61 = fadd double %51, %60
  %62 = load ptr, ptr %6, align 8
  %63 = load i32, ptr %10, align 4
  %64 = sub i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [30 x double], ptr %62, i64 %65
  %67 = load i32, ptr %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [30 x double], ptr %66, i64 0, i64 %68
  %70 = load double, ptr %69, align 8
  %71 = fadd double %61, %70
  %72 = fmul double 2.000000e-01, %71
  %73 = load ptr, ptr %5, align 8
  %74 = load i32, ptr %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [30 x double], ptr %73, i64 %75
  %77 = load i32, ptr %11, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [30 x double], ptr %76, i64 0, i64 %78
  store double %72, ptr %79, align 8
  br label %80

80:                                               ; preds = %23
  %81 = load i32, ptr %11, align 4
  %82 = add i32 %81, 1
  store i32 %82, ptr %11, align 4
  br label %20, !llvm.loop !10

83:                                               ; preds = %20
  br label %84

84:                                               ; preds = %83
  %85 = load i32, ptr %10, align 4
  %86 = add i32 %85, 1
  store i32 %86, ptr %10, align 4
  br label %16, !llvm.loop !11

87:                                               ; preds = %16
  store i32 1, ptr %10, align 4
  br label %88

88:                                               ; preds = %156, %87
  %89 = load i32, ptr %10, align 4
  %90 = icmp slt i32 %89, 29
  br i1 %90, label %91, label %159

91:                                               ; preds = %88
  store i32 1, ptr %11, align 4
  br label %92

92:                                               ; preds = %152, %91
  %93 = load i32, ptr %11, align 4
  %94 = icmp slt i32 %93, 29
  br i1 %94, label %95, label %155

95:                                               ; preds = %92
  %96 = load ptr, ptr %5, align 8
  %97 = load i32, ptr %10, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [30 x double], ptr %96, i64 %98
  %100 = load i32, ptr %11, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [30 x double], ptr %99, i64 0, i64 %101
  %103 = load double, ptr %102, align 8
  %104 = load ptr, ptr %5, align 8
  %105 = load i32, ptr %10, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [30 x double], ptr %104, i64 %106
  %108 = load i32, ptr %11, align 4
  %109 = sub i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [30 x double], ptr %107, i64 0, i64 %110
  %112 = load double, ptr %111, align 8
  %113 = fadd double %103, %112
  %114 = load ptr, ptr %5, align 8
  %115 = load i32, ptr %10, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [30 x double], ptr %114, i64 %116
  %118 = load i32, ptr %11, align 4
  %119 = add i32 1, %118
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [30 x double], ptr %117, i64 0, i64 %120
  %122 = load double, ptr %121, align 8
  %123 = fadd double %113, %122
  %124 = load ptr, ptr %5, align 8
  %125 = load i32, ptr %10, align 4
  %126 = add i32 1, %125
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [30 x double], ptr %124, i64 %127
  %129 = load i32, ptr %11, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [30 x double], ptr %128, i64 0, i64 %130
  %132 = load double, ptr %131, align 8
  %133 = fadd double %123, %132
  %134 = load ptr, ptr %5, align 8
  %135 = load i32, ptr %10, align 4
  %136 = sub i32 %135, 1
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [30 x double], ptr %134, i64 %137
  %139 = load i32, ptr %11, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [30 x double], ptr %138, i64 0, i64 %140
  %142 = load double, ptr %141, align 8
  %143 = fadd double %133, %142
  %144 = fmul double 2.000000e-01, %143
  %145 = load ptr, ptr %6, align 8
  %146 = load i32, ptr %10, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [30 x double], ptr %145, i64 %147
  %149 = load i32, ptr %11, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [30 x double], ptr %148, i64 0, i64 %150
  store double %144, ptr %151, align 8
  br label %152

152:                                              ; preds = %95
  %153 = load i32, ptr %11, align 4
  %154 = add i32 %153, 1
  store i32 %154, ptr %11, align 4
  br label %92, !llvm.loop !12

155:                                              ; preds = %92
  br label %156

156:                                              ; preds = %155
  %157 = load i32, ptr %10, align 4
  %158 = add i32 %157, 1
  store i32 %158, ptr %10, align 4
  br label %88, !llvm.loop !13

159:                                              ; preds = %88
  br label %160

160:                                              ; preds = %159
  %161 = load i32, ptr %9, align 4
  %162 = add i32 %161, 1
  store i32 %162, ptr %9, align 4
  br label %12, !llvm.loop !14

163:                                              ; preds = %12
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
  %10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@", ptr noundef @"??_C@_01FHEEJDEE@A?$AA@") #5
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
  br label %16, !llvm.loop !15

45:                                               ; preds = %16
  br label %46

46:                                               ; preds = %45
  %47 = load i32, ptr %5, align 4
  %48 = add i32 %47, 1
  store i32 %48, ptr %5, align 4
  br label %11, !llvm.loop !16

49:                                               ; preds = %11
  %50 = call ptr @__acrt_iob_func(i32 noundef 2)
  %51 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %50, ptr noundef @"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@", ptr noundef @"??_C@_01FHEEJDEE@A?$AA@") #5
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
!1 = !DIFile(filename: "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\stencils\\jacobi-2d\\jacobi-2d.c", directory: "C:\\work\\llvm-profitability-research")
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
