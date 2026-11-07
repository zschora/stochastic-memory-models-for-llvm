; ModuleID = 'C:\work\llvm-profitability-research\.tools\corpus\PolyBench\linear-algebra\solvers\ludcmp\ludcmp.c'
source_filename = "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\linear-algebra\\solvers\\ludcmp\\ludcmp.c"
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

$"??_C@_01FJMABOPO@x?$AA@" = comdat any

$"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@" = comdat any

$"??_C@_01EEMJAFIK@?6?$AA@" = comdat any

$"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@" = comdat any

$"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@" = comdat any

$"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = comdat any

@"??_C@_00CNPNBAHC@?$AA@" = linkonce_odr dso_local unnamed_addr constant [1 x i8] zeroinitializer, comdat, align 1
@__local_stdio_printf_options._OptionsStorage = internal global i64 0, align 8
@"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", comdat, align 8
@"??_C@_01FJMABOPO@x?$AA@" = linkonce_odr dso_local unnamed_addr constant [2 x i8] c"x\00", comdat, align 4
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
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  store i32 0, ptr %3, align 4
  store ptr %1, ptr %4, align 8
  store i32 %0, ptr %5, align 4
  store i32 40, ptr %6, align 4
  %11 = call ptr @polybench_alloc_data(i64 noundef 1600, i32 noundef 8)
  store ptr %11, ptr %7, align 8
  %12 = call ptr @polybench_alloc_data(i64 noundef 40, i32 noundef 8)
  store ptr %12, ptr %8, align 8
  %13 = call ptr @polybench_alloc_data(i64 noundef 40, i32 noundef 8)
  store ptr %13, ptr %9, align 8
  %14 = call ptr @polybench_alloc_data(i64 noundef 40, i32 noundef 8)
  store ptr %14, ptr %10, align 8
  %15 = load ptr, ptr %10, align 8
  %16 = getelementptr inbounds [40 x double], ptr %15, i64 0, i64 0
  %17 = load ptr, ptr %9, align 8
  %18 = getelementptr inbounds [40 x double], ptr %17, i64 0, i64 0
  %19 = load ptr, ptr %8, align 8
  %20 = getelementptr inbounds [40 x double], ptr %19, i64 0, i64 0
  %21 = load ptr, ptr %7, align 8
  %22 = getelementptr inbounds [40 x [40 x double]], ptr %21, i64 0, i64 0
  %23 = load i32, ptr %6, align 4
  call void @init_array(i32 noundef %23, ptr noundef %22, ptr noundef %20, ptr noundef %18, ptr noundef %16)
  %24 = load ptr, ptr %10, align 8
  %25 = getelementptr inbounds [40 x double], ptr %24, i64 0, i64 0
  %26 = load ptr, ptr %9, align 8
  %27 = getelementptr inbounds [40 x double], ptr %26, i64 0, i64 0
  %28 = load ptr, ptr %8, align 8
  %29 = getelementptr inbounds [40 x double], ptr %28, i64 0, i64 0
  %30 = load ptr, ptr %7, align 8
  %31 = getelementptr inbounds [40 x [40 x double]], ptr %30, i64 0, i64 0
  %32 = load i32, ptr %6, align 4
  call void @kernel_ludcmp(i32 noundef %32, ptr noundef %31, ptr noundef %29, ptr noundef %27, ptr noundef %25)
  %33 = load i32, ptr %5, align 4
  %34 = icmp sgt i32 %33, 42
  br i1 %34, label %35, label %45

35:                                               ; preds = %2
  %36 = load ptr, ptr %4, align 8
  %37 = getelementptr inbounds ptr, ptr %36, i64 0
  %38 = load ptr, ptr %37, align 8
  %39 = call i32 @strcmp(ptr noundef %38, ptr noundef @"??_C@_00CNPNBAHC@?$AA@") #5
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %35
  %42 = load ptr, ptr %9, align 8
  %43 = getelementptr inbounds [40 x double], ptr %42, i64 0, i64 0
  %44 = load i32, ptr %6, align 4
  call void @print_array(i32 noundef %44, ptr noundef %43)
  br label %45

45:                                               ; preds = %41, %35, %2
  %46 = load ptr, ptr %7, align 8
  call void @free(ptr noundef %46)
  %47 = load ptr, ptr %8, align 8
  call void @free(ptr noundef %47)
  %48 = load ptr, ptr %9, align 8
  call void @free(ptr noundef %48)
  %49 = load ptr, ptr %10, align 8
  call void @free(ptr noundef %49)
  ret i32 0
}

declare dso_local ptr @polybench_alloc_data(i64 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca ptr, align 8
  store ptr %4, ptr %6, align 8
  store ptr %3, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  store ptr %1, ptr %9, align 8
  store i32 %0, ptr %10, align 4
  %18 = load i32, ptr %10, align 4
  %19 = sitofp i32 %18 to double
  store double %19, ptr %13, align 8
  store i32 0, ptr %11, align 4
  br label %20

20:                                               ; preds = %44, %5
  %21 = load i32, ptr %11, align 4
  %22 = load i32, ptr %10, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %47

24:                                               ; preds = %20
  %25 = load ptr, ptr %7, align 8
  %26 = load i32, ptr %11, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds double, ptr %25, i64 %27
  store double 0.000000e+00, ptr %28, align 8
  %29 = load ptr, ptr %6, align 8
  %30 = load i32, ptr %11, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds double, ptr %29, i64 %31
  store double 0.000000e+00, ptr %32, align 8
  %33 = load i32, ptr %11, align 4
  %34 = add i32 %33, 1
  %35 = sitofp i32 %34 to double
  %36 = load double, ptr %13, align 8
  %37 = fdiv double %35, %36
  %38 = fdiv double %37, 2.000000e+00
  %39 = fadd double %38, 4.000000e+00
  %40 = load ptr, ptr %8, align 8
  %41 = load i32, ptr %11, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds double, ptr %40, i64 %42
  store double %39, ptr %43, align 8
  br label %44

44:                                               ; preds = %24
  %45 = load i32, ptr %11, align 4
  %46 = add i32 %45, 1
  store i32 %46, ptr %11, align 4
  br label %20, !llvm.loop !7

47:                                               ; preds = %20
  store i32 0, ptr %11, align 4
  br label %48

48:                                               ; preds = %103, %47
  %49 = load i32, ptr %11, align 4
  %50 = load i32, ptr %10, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %106

52:                                               ; preds = %48
  store i32 0, ptr %12, align 4
  br label %53

53:                                               ; preds = %74, %52
  %54 = load i32, ptr %12, align 4
  %55 = load i32, ptr %11, align 4
  %56 = icmp sle i32 %54, %55
  br i1 %56, label %57, label %77

57:                                               ; preds = %53
  %58 = load i32, ptr %12, align 4
  %59 = sub i32 0, %58
  %60 = load i32, ptr %10, align 4
  %61 = srem i32 %59, %60
  %62 = sitofp i32 %61 to double
  %63 = load i32, ptr %10, align 4
  %64 = sitofp i32 %63 to double
  %65 = fdiv double %62, %64
  %66 = fadd double %65, 1.000000e+00
  %67 = load ptr, ptr %9, align 8
  %68 = load i32, ptr %11, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [40 x double], ptr %67, i64 %69
  %71 = load i32, ptr %12, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [40 x double], ptr %70, i64 0, i64 %72
  store double %66, ptr %73, align 8
  br label %74

74:                                               ; preds = %57
  %75 = load i32, ptr %12, align 4
  %76 = add i32 %75, 1
  store i32 %76, ptr %12, align 4
  br label %53, !llvm.loop !9

77:                                               ; preds = %53
  %78 = load i32, ptr %11, align 4
  %79 = add i32 %78, 1
  store i32 %79, ptr %12, align 4
  br label %80

80:                                               ; preds = %92, %77
  %81 = load i32, ptr %12, align 4
  %82 = load i32, ptr %10, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %95

84:                                               ; preds = %80
  %85 = load ptr, ptr %9, align 8
  %86 = load i32, ptr %11, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [40 x double], ptr %85, i64 %87
  %89 = load i32, ptr %12, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [40 x double], ptr %88, i64 0, i64 %90
  store double 0.000000e+00, ptr %91, align 8
  br label %92

92:                                               ; preds = %84
  %93 = load i32, ptr %12, align 4
  %94 = add i32 %93, 1
  store i32 %94, ptr %12, align 4
  br label %80, !llvm.loop !10

95:                                               ; preds = %80
  %96 = load ptr, ptr %9, align 8
  %97 = load i32, ptr %11, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [40 x double], ptr %96, i64 %98
  %100 = load i32, ptr %11, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [40 x double], ptr %99, i64 0, i64 %101
  store double 1.000000e+00, ptr %102, align 8
  br label %103

103:                                              ; preds = %95
  %104 = load i32, ptr %11, align 4
  %105 = add i32 %104, 1
  store i32 %105, ptr %11, align 4
  br label %48, !llvm.loop !11

106:                                              ; preds = %48
  %107 = call ptr @polybench_alloc_data(i64 noundef 1600, i32 noundef 8)
  store ptr %107, ptr %17, align 8
  store i32 0, ptr %14, align 4
  br label %108

108:                                              ; preds = %129, %106
  %109 = load i32, ptr %14, align 4
  %110 = load i32, ptr %10, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %132

112:                                              ; preds = %108
  store i32 0, ptr %15, align 4
  br label %113

113:                                              ; preds = %125, %112
  %114 = load i32, ptr %15, align 4
  %115 = load i32, ptr %10, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %128

117:                                              ; preds = %113
  %118 = load ptr, ptr %17, align 8
  %119 = load i32, ptr %14, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [40 x [40 x double]], ptr %118, i64 0, i64 %120
  %122 = load i32, ptr %15, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [40 x double], ptr %121, i64 0, i64 %123
  store double 0.000000e+00, ptr %124, align 8
  br label %125

125:                                              ; preds = %117
  %126 = load i32, ptr %15, align 4
  %127 = add i32 %126, 1
  store i32 %127, ptr %15, align 4
  br label %113, !llvm.loop !12

128:                                              ; preds = %113
  br label %129

129:                                              ; preds = %128
  %130 = load i32, ptr %14, align 4
  %131 = add i32 %130, 1
  store i32 %131, ptr %14, align 4
  br label %108, !llvm.loop !13

132:                                              ; preds = %108
  store i32 0, ptr %16, align 4
  br label %133

133:                                              ; preds = %181, %132
  %134 = load i32, ptr %16, align 4
  %135 = load i32, ptr %10, align 4
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %137, label %184

137:                                              ; preds = %133
  store i32 0, ptr %14, align 4
  br label %138

138:                                              ; preds = %177, %137
  %139 = load i32, ptr %14, align 4
  %140 = load i32, ptr %10, align 4
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %142, label %180

142:                                              ; preds = %138
  store i32 0, ptr %15, align 4
  br label %143

143:                                              ; preds = %173, %142
  %144 = load i32, ptr %15, align 4
  %145 = load i32, ptr %10, align 4
  %146 = icmp slt i32 %144, %145
  br i1 %146, label %147, label %176

147:                                              ; preds = %143
  %148 = load ptr, ptr %9, align 8
  %149 = load i32, ptr %14, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [40 x double], ptr %148, i64 %150
  %152 = load i32, ptr %16, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [40 x double], ptr %151, i64 0, i64 %153
  %155 = load double, ptr %154, align 8
  %156 = load ptr, ptr %9, align 8
  %157 = load i32, ptr %15, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [40 x double], ptr %156, i64 %158
  %160 = load i32, ptr %16, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [40 x double], ptr %159, i64 0, i64 %161
  %163 = load double, ptr %162, align 8
  %164 = load ptr, ptr %17, align 8
  %165 = load i32, ptr %14, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [40 x [40 x double]], ptr %164, i64 0, i64 %166
  %168 = load i32, ptr %15, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [40 x double], ptr %167, i64 0, i64 %169
  %171 = load double, ptr %170, align 8
  %172 = call double @llvm.fmuladd.f64(double %155, double %163, double %171)
  store double %172, ptr %170, align 8
  br label %173

173:                                              ; preds = %147
  %174 = load i32, ptr %15, align 4
  %175 = add i32 %174, 1
  store i32 %175, ptr %15, align 4
  br label %143, !llvm.loop !14

176:                                              ; preds = %143
  br label %177

177:                                              ; preds = %176
  %178 = load i32, ptr %14, align 4
  %179 = add i32 %178, 1
  store i32 %179, ptr %14, align 4
  br label %138, !llvm.loop !15

180:                                              ; preds = %138
  br label %181

181:                                              ; preds = %180
  %182 = load i32, ptr %16, align 4
  %183 = add i32 %182, 1
  store i32 %183, ptr %16, align 4
  br label %133, !llvm.loop !16

184:                                              ; preds = %133
  store i32 0, ptr %14, align 4
  br label %185

185:                                              ; preds = %214, %184
  %186 = load i32, ptr %14, align 4
  %187 = load i32, ptr %10, align 4
  %188 = icmp slt i32 %186, %187
  br i1 %188, label %189, label %217

189:                                              ; preds = %185
  store i32 0, ptr %15, align 4
  br label %190

190:                                              ; preds = %210, %189
  %191 = load i32, ptr %15, align 4
  %192 = load i32, ptr %10, align 4
  %193 = icmp slt i32 %191, %192
  br i1 %193, label %194, label %213

194:                                              ; preds = %190
  %195 = load ptr, ptr %17, align 8
  %196 = load i32, ptr %14, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [40 x [40 x double]], ptr %195, i64 0, i64 %197
  %199 = load i32, ptr %15, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds [40 x double], ptr %198, i64 0, i64 %200
  %202 = load double, ptr %201, align 8
  %203 = load ptr, ptr %9, align 8
  %204 = load i32, ptr %14, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds [40 x double], ptr %203, i64 %205
  %207 = load i32, ptr %15, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds [40 x double], ptr %206, i64 0, i64 %208
  store double %202, ptr %209, align 8
  br label %210

210:                                              ; preds = %194
  %211 = load i32, ptr %15, align 4
  %212 = add i32 %211, 1
  store i32 %212, ptr %15, align 4
  br label %190, !llvm.loop !17

213:                                              ; preds = %190
  br label %214

214:                                              ; preds = %213
  %215 = load i32, ptr %14, align 4
  %216 = add i32 %215, 1
  store i32 %216, ptr %14, align 4
  br label %185, !llvm.loop !18

217:                                              ; preds = %185
  %218 = load ptr, ptr %17, align 8
  call void @free(ptr noundef %218)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_ludcmp(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  store ptr %4, ptr %6, align 8
  store ptr %3, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  store ptr %1, ptr %9, align 8
  store i32 %0, ptr %10, align 4
  store i32 0, ptr %11, align 4
  br label %15

15:                                               ; preds = %134, %5
  %16 = load i32, ptr %11, align 4
  %17 = icmp slt i32 %16, 40
  br i1 %17, label %18, label %137

18:                                               ; preds = %15
  store i32 0, ptr %12, align 4
  br label %19

19:                                               ; preds = %77, %18
  %20 = load i32, ptr %12, align 4
  %21 = load i32, ptr %11, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %80

23:                                               ; preds = %19
  %24 = load ptr, ptr %9, align 8
  %25 = load i32, ptr %11, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [40 x double], ptr %24, i64 %26
  %28 = load i32, ptr %12, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [40 x double], ptr %27, i64 0, i64 %29
  %31 = load double, ptr %30, align 8
  store double %31, ptr %14, align 8
  store i32 0, ptr %13, align 4
  br label %32

32:                                               ; preds = %56, %23
  %33 = load i32, ptr %13, align 4
  %34 = load i32, ptr %12, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %59

36:                                               ; preds = %32
  %37 = load ptr, ptr %9, align 8
  %38 = load i32, ptr %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [40 x double], ptr %37, i64 %39
  %41 = load i32, ptr %13, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [40 x double], ptr %40, i64 0, i64 %42
  %44 = load double, ptr %43, align 8
  %45 = load ptr, ptr %9, align 8
  %46 = load i32, ptr %13, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [40 x double], ptr %45, i64 %47
  %49 = load i32, ptr %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [40 x double], ptr %48, i64 0, i64 %50
  %52 = load double, ptr %51, align 8
  %53 = load double, ptr %14, align 8
  %54 = fneg double %44
  %55 = call double @llvm.fmuladd.f64(double %54, double %52, double %53)
  store double %55, ptr %14, align 8
  br label %56

56:                                               ; preds = %36
  %57 = load i32, ptr %13, align 4
  %58 = add i32 %57, 1
  store i32 %58, ptr %13, align 4
  br label %32, !llvm.loop !19

59:                                               ; preds = %32
  %60 = load double, ptr %14, align 8
  %61 = load ptr, ptr %9, align 8
  %62 = load i32, ptr %12, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [40 x double], ptr %61, i64 %63
  %65 = load i32, ptr %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [40 x double], ptr %64, i64 0, i64 %66
  %68 = load double, ptr %67, align 8
  %69 = fdiv double %60, %68
  %70 = load ptr, ptr %9, align 8
  %71 = load i32, ptr %11, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [40 x double], ptr %70, i64 %72
  %74 = load i32, ptr %12, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [40 x double], ptr %73, i64 0, i64 %75
  store double %69, ptr %76, align 8
  br label %77

77:                                               ; preds = %59
  %78 = load i32, ptr %12, align 4
  %79 = add i32 %78, 1
  store i32 %79, ptr %12, align 4
  br label %19, !llvm.loop !20

80:                                               ; preds = %19
  %81 = load i32, ptr %11, align 4
  store i32 %81, ptr %12, align 4
  br label %82

82:                                               ; preds = %130, %80
  %83 = load i32, ptr %12, align 4
  %84 = icmp slt i32 %83, 40
  br i1 %84, label %85, label %133

85:                                               ; preds = %82
  %86 = load ptr, ptr %9, align 8
  %87 = load i32, ptr %11, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [40 x double], ptr %86, i64 %88
  %90 = load i32, ptr %12, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [40 x double], ptr %89, i64 0, i64 %91
  %93 = load double, ptr %92, align 8
  store double %93, ptr %14, align 8
  store i32 0, ptr %13, align 4
  br label %94

94:                                               ; preds = %118, %85
  %95 = load i32, ptr %13, align 4
  %96 = load i32, ptr %11, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %121

98:                                               ; preds = %94
  %99 = load ptr, ptr %9, align 8
  %100 = load i32, ptr %11, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [40 x double], ptr %99, i64 %101
  %103 = load i32, ptr %13, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [40 x double], ptr %102, i64 0, i64 %104
  %106 = load double, ptr %105, align 8
  %107 = load ptr, ptr %9, align 8
  %108 = load i32, ptr %13, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [40 x double], ptr %107, i64 %109
  %111 = load i32, ptr %12, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [40 x double], ptr %110, i64 0, i64 %112
  %114 = load double, ptr %113, align 8
  %115 = load double, ptr %14, align 8
  %116 = fneg double %106
  %117 = call double @llvm.fmuladd.f64(double %116, double %114, double %115)
  store double %117, ptr %14, align 8
  br label %118

118:                                              ; preds = %98
  %119 = load i32, ptr %13, align 4
  %120 = add i32 %119, 1
  store i32 %120, ptr %13, align 4
  br label %94, !llvm.loop !21

121:                                              ; preds = %94
  %122 = load double, ptr %14, align 8
  %123 = load ptr, ptr %9, align 8
  %124 = load i32, ptr %11, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [40 x double], ptr %123, i64 %125
  %127 = load i32, ptr %12, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [40 x double], ptr %126, i64 0, i64 %128
  store double %122, ptr %129, align 8
  br label %130

130:                                              ; preds = %121
  %131 = load i32, ptr %12, align 4
  %132 = add i32 %131, 1
  store i32 %132, ptr %12, align 4
  br label %82, !llvm.loop !22

133:                                              ; preds = %82
  br label %134

134:                                              ; preds = %133
  %135 = load i32, ptr %11, align 4
  %136 = add i32 %135, 1
  store i32 %136, ptr %11, align 4
  br label %15, !llvm.loop !23

137:                                              ; preds = %15
  store i32 0, ptr %11, align 4
  br label %138

138:                                              ; preds = %177, %137
  %139 = load i32, ptr %11, align 4
  %140 = icmp slt i32 %139, 40
  br i1 %140, label %141, label %180

141:                                              ; preds = %138
  %142 = load ptr, ptr %8, align 8
  %143 = load i32, ptr %11, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds double, ptr %142, i64 %144
  %146 = load double, ptr %145, align 8
  store double %146, ptr %14, align 8
  store i32 0, ptr %12, align 4
  br label %147

147:                                              ; preds = %168, %141
  %148 = load i32, ptr %12, align 4
  %149 = load i32, ptr %11, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %171

151:                                              ; preds = %147
  %152 = load ptr, ptr %9, align 8
  %153 = load i32, ptr %11, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [40 x double], ptr %152, i64 %154
  %156 = load i32, ptr %12, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [40 x double], ptr %155, i64 0, i64 %157
  %159 = load double, ptr %158, align 8
  %160 = load ptr, ptr %6, align 8
  %161 = load i32, ptr %12, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds double, ptr %160, i64 %162
  %164 = load double, ptr %163, align 8
  %165 = load double, ptr %14, align 8
  %166 = fneg double %159
  %167 = call double @llvm.fmuladd.f64(double %166, double %164, double %165)
  store double %167, ptr %14, align 8
  br label %168

168:                                              ; preds = %151
  %169 = load i32, ptr %12, align 4
  %170 = add i32 %169, 1
  store i32 %170, ptr %12, align 4
  br label %147, !llvm.loop !24

171:                                              ; preds = %147
  %172 = load double, ptr %14, align 8
  %173 = load ptr, ptr %6, align 8
  %174 = load i32, ptr %11, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds double, ptr %173, i64 %175
  store double %172, ptr %176, align 8
  br label %177

177:                                              ; preds = %171
  %178 = load i32, ptr %11, align 4
  %179 = add i32 %178, 1
  store i32 %179, ptr %11, align 4
  br label %138, !llvm.loop !25

180:                                              ; preds = %138
  store i32 39, ptr %11, align 4
  br label %181

181:                                              ; preds = %230, %180
  %182 = load i32, ptr %11, align 4
  %183 = icmp sge i32 %182, 0
  br i1 %183, label %184, label %233

184:                                              ; preds = %181
  %185 = load ptr, ptr %6, align 8
  %186 = load i32, ptr %11, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds double, ptr %185, i64 %187
  %189 = load double, ptr %188, align 8
  store double %189, ptr %14, align 8
  %190 = load i32, ptr %11, align 4
  %191 = add i32 %190, 1
  store i32 %191, ptr %12, align 4
  br label %192

192:                                              ; preds = %212, %184
  %193 = load i32, ptr %12, align 4
  %194 = icmp slt i32 %193, 40
  br i1 %194, label %195, label %215

195:                                              ; preds = %192
  %196 = load ptr, ptr %9, align 8
  %197 = load i32, ptr %11, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [40 x double], ptr %196, i64 %198
  %200 = load i32, ptr %12, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds [40 x double], ptr %199, i64 0, i64 %201
  %203 = load double, ptr %202, align 8
  %204 = load ptr, ptr %7, align 8
  %205 = load i32, ptr %12, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds double, ptr %204, i64 %206
  %208 = load double, ptr %207, align 8
  %209 = load double, ptr %14, align 8
  %210 = fneg double %203
  %211 = call double @llvm.fmuladd.f64(double %210, double %208, double %209)
  store double %211, ptr %14, align 8
  br label %212

212:                                              ; preds = %195
  %213 = load i32, ptr %12, align 4
  %214 = add i32 %213, 1
  store i32 %214, ptr %12, align 4
  br label %192, !llvm.loop !26

215:                                              ; preds = %192
  %216 = load double, ptr %14, align 8
  %217 = load ptr, ptr %9, align 8
  %218 = load i32, ptr %11, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds [40 x double], ptr %217, i64 %219
  %221 = load i32, ptr %11, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds [40 x double], ptr %220, i64 0, i64 %222
  %224 = load double, ptr %223, align 8
  %225 = fdiv double %216, %224
  %226 = load ptr, ptr %7, align 8
  %227 = load i32, ptr %11, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds double, ptr %226, i64 %228
  store double %225, ptr %229, align 8
  br label %230

230:                                              ; preds = %215
  %231 = load i32, ptr %11, align 4
  %232 = add i32 %231, -1
  store i32 %232, ptr %11, align 4
  br label %181, !llvm.loop !27

233:                                              ; preds = %181
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
  %9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@", ptr noundef @"??_C@_01FJMABOPO@x?$AA@") #5
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
  br label %10, !llvm.loop !28

32:                                               ; preds = %10
  %33 = call ptr @__acrt_iob_func(i32 noundef 2)
  %34 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef @"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@", ptr noundef @"??_C@_01FJMABOPO@x?$AA@") #5
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
!1 = !DIFile(filename: "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\linear-algebra\\solvers\\ludcmp\\ludcmp.c", directory: "C:\\work\\llvm-profitability-research")
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
!25 = distinct !{!25, !8}
!26 = distinct !{!26, !8}
!27 = distinct !{!27, !8}
!28 = distinct !{!28, !8}
