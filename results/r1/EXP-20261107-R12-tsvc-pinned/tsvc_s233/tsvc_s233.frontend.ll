; ModuleID = 'C:\work\llvm-profitability-research\benchmarks\tsvc_s233.cpp'
source_filename = "C:\\work\\llvm-profitability-research\\benchmarks\\tsvc_s233.cpp"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc19.51.36260"

%"class.std::chrono::time_point" = type { %"class.std::chrono::duration" }
%"class.std::chrono::duration" = type { i64 }
%"class.std::chrono::duration.0" = type { double }

$"?pin_environment@bench@@YAXXZ" = comdat any

$printf = comdat any

$"?now@steady_clock@chrono@std@@SA?AV?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@23@XZ" = comdat any

$"??$?GUsteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@12@V312@@chrono@std@@YA?AV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@01@AEBV?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@01@0@Z" = comdat any

$"??$?0_JU?$ratio@$00$0DLJKMKAA@@std@@$0A@@?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEAA@AEBV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@12@@Z" = comdat any

$"?count@?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEBANXZ" = comdat any

$fprintf = comdat any

$_vfprintf_l = comdat any

$__local_stdio_printf_options = comdat any

$"??$?0_J$0A@@?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEAA@AEB_J@Z" = comdat any

$"??0?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@chrono@std@@QEAA@AEBV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@12@@Z" = comdat any

$"??$?G_JU?$ratio@$00$0DLJKMKAA@@std@@_JU01@@chrono@std@@YA?AV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@01@AEBV201@0@Z" = comdat any

$"?time_since_epoch@?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@chrono@std@@QEBA?AV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@XZ" = comdat any

$"?count@?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEBA_JXZ" = comdat any

$"??$duration_cast@V?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@_JU?$ratio@$00$0DLJKMKAA@@3@$0A@@chrono@std@@YA?AV?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@01@AEBV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@01@@Z" = comdat any

$"??$?0N$0A@@?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEAA@AEBN@Z" = comdat any

$_Avx2WmemEnabledWeakValue = comdat any

$"??_C@_01FHEEJDEE@A?$AA@" = comdat any

$"??_C@_0P@MAICADEK@CHECK?5?$CF016llx?6?$AA@" = comdat any

$"??_C@_0L@JOFKNBBO@VERIFY?5OK?6?$AA@" = comdat any

$"??_C@_0P@MGLMMHNL@TRIAL?5?$CFd?5?$CF?43f?6?$AA@" = comdat any

$"??_C@_0DB@PKFEENGN@META?5case?$DNtsvc_s233?5config?$DN?$CFs?5re@" = comdat any

$"??_C@_0CO@BEMGKDJM@warning?3?5SetProcessAffinityMask?5@" = comdat any

$"??_C@_0CI@JIDNHJK@warning?3?5SetPriorityClass?5failed@" = comdat any

$"?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA" = comdat any

@_Avx2WmemEnabledWeakValue = weak_odr dso_local global i32 0, comdat, align 4
@"??_C@_01FHEEJDEE@A?$AA@" = linkonce_odr dso_local unnamed_addr constant [2 x i8] c"A\00", comdat, align 4
@g_fn = internal global ptr @s233, align 8
@aa = external dso_local global [256 x [256 x float]], align 16
@bb = external dso_local global [256 x [256 x float]], align 16
@cc = external dso_local global [256 x [256 x float]], align 16
@"??_C@_0P@MAICADEK@CHECK?5?$CF016llx?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"CHECK %016llx\0A\00", comdat, align 8
@"??_C@_0L@JOFKNBBO@VERIFY?5OK?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [11 x i8] c"VERIFY OK\0A\00", comdat, align 8
@"??_C@_0P@MGLMMHNL@TRIAL?5?$CFd?5?$CF?43f?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"TRIAL %d %.3f\0A\00", comdat, align 8
@"??_C@_0DB@PKFEENGN@META?5case?$DNtsvc_s233?5config?$DN?$CFs?5re@" = linkonce_odr dso_local unnamed_addr constant [49 x i8] c"META case=tsvc_s233 config=%s reps=%d trials=%d\0A\00", comdat, align 8
@"??_C@_0CO@BEMGKDJM@warning?3?5SetProcessAffinityMask?5@" = linkonce_odr dso_local unnamed_addr constant [46 x i8] c"warning: SetProcessAffinityMask failed (%lu)\0A\00", comdat, align 8
@"??_C@_0CI@JIDNHJK@warning?3?5SetPriorityClass?5failed@" = linkonce_odr dso_local unnamed_addr constant [40 x i8] c"warning: SetPriorityClass failed (%lu)\0A\00", comdat, align 8
@"?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA" = linkonce_odr dso_local global i64 0, comdat, align 8

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %"class.std::chrono::time_point", align 8
  %13 = alloca i32, align 4
  %14 = alloca %"class.std::chrono::time_point", align 8
  %15 = alloca double, align 8
  %16 = alloca %"class.std::chrono::duration.0", align 8
  %17 = alloca %"class.std::chrono::duration", align 8
  store i32 0, ptr %3, align 4
  store ptr %1, ptr %4, align 8
  store i32 %0, ptr %5, align 4
  %18 = load i32, ptr %5, align 4
  %19 = icmp sgt i32 %18, 1
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load ptr, ptr %4, align 8
  %22 = getelementptr inbounds ptr, ptr %21, i64 1
  %23 = load ptr, ptr %22, align 8
  br label %25

24:                                               ; preds = %2
  br label %25

25:                                               ; preds = %24, %20
  %26 = phi ptr [ %23, %20 ], [ @"??_C@_01FHEEJDEE@A?$AA@", %24 ]
  store ptr %26, ptr %6, align 8
  %27 = load i32, ptr %5, align 4
  %28 = icmp sgt i32 %27, 3
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load ptr, ptr %4, align 8
  %31 = getelementptr inbounds ptr, ptr %30, i64 3
  %32 = load ptr, ptr %31, align 8
  %33 = call i32 @atoi(ptr noundef %32)
  br label %35

34:                                               ; preds = %25
  br label %35

35:                                               ; preds = %34, %29
  %36 = phi i32 [ %33, %29 ], [ 1, %34 ]
  store i32 %36, ptr %7, align 4
  %37 = load i32, ptr %5, align 4
  %38 = icmp sgt i32 %37, 4
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load ptr, ptr %4, align 8
  %41 = getelementptr inbounds ptr, ptr %40, i64 4
  %42 = load ptr, ptr %41, align 8
  %43 = call i32 @atoi(ptr noundef %42)
  br label %45

44:                                               ; preds = %35
  br label %45

45:                                               ; preds = %44, %39
  %46 = phi i32 [ %43, %39 ], [ 5, %44 ]
  store i32 %46, ptr %8, align 4
  call void @"?pin_environment@bench@@YAXXZ"()
  %47 = load atomic volatile ptr, ptr @g_fn acquire, align 8
  store ptr %47, ptr %9, align 8
  %48 = load ptr, ptr %9, align 8
  %49 = call noundef i32 %48()
  %50 = call noundef i64 @"?hash_bytes@@YA_KPEBX_K@Z"(ptr noundef @aa, i64 noundef 262144)
  store i64 %50, ptr %10, align 8
  %51 = call noundef i64 @"?hash_bytes@@YA_KPEBX_K@Z"(ptr noundef @bb, i64 noundef 262144)
  %52 = load i64, ptr %10, align 8
  %53 = xor i64 %52, %51
  store i64 %53, ptr %10, align 8
  %54 = call noundef i64 @"?hash_bytes@@YA_KPEBX_K@Z"(ptr noundef @cc, i64 noundef 262144)
  %55 = load i64, ptr %10, align 8
  %56 = xor i64 %55, %54
  store i64 %56, ptr %10, align 8
  %57 = load i64, ptr %10, align 8
  %58 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@MAICADEK@CHECK?5?$CF016llx?6?$AA@", i64 noundef %57)
  %59 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0L@JOFKNBBO@VERIFY?5OK?6?$AA@")
  store i32 0, ptr %11, align 4
  br label %60

60:                                               ; preds = %84, %45
  %61 = load i32, ptr %11, align 4
  %62 = load i32, ptr %8, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %87

64:                                               ; preds = %60
  call void @"?now@steady_clock@chrono@std@@SA?AV?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@23@XZ"(ptr dead_on_unwind writable sret(%"class.std::chrono::time_point") align 8 %12) #7
  store i32 0, ptr %13, align 4
  br label %65

65:                                               ; preds = %72, %64
  %66 = load i32, ptr %13, align 4
  %67 = load i32, ptr %7, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %65
  %70 = load ptr, ptr %9, align 8
  %71 = call noundef i32 %70()
  br label %72

72:                                               ; preds = %69
  %73 = load i32, ptr %13, align 4
  %74 = add i32 %73, 1
  store i32 %74, ptr %13, align 4
  br label %65, !llvm.loop !17

75:                                               ; preds = %65
  call void @"?now@steady_clock@chrono@std@@SA?AV?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@23@XZ"(ptr dead_on_unwind writable sret(%"class.std::chrono::time_point") align 8 %14) #7
  call void @"??$?GUsteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@12@V312@@chrono@std@@YA?AV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@01@AEBV?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@01@0@Z"(ptr dead_on_unwind writable sret(%"class.std::chrono::duration") align 8 %17, ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %12) #7
  %76 = call noundef ptr @"??$?0_JU?$ratio@$00$0DLJKMKAA@@std@@$0A@@?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEAA@AEBV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@12@@Z"(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %17) #7
  %77 = call noundef double @"?count@?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEBANXZ"(ptr noundef nonnull align 8 dereferenceable(8) %16) #7
  %78 = load i32, ptr %7, align 4
  %79 = sitofp i32 %78 to double
  %80 = fdiv double %77, %79
  store double %80, ptr %15, align 8
  %81 = load double, ptr %15, align 8
  %82 = load i32, ptr %11, align 4
  %83 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@MGLMMHNL@TRIAL?5?$CFd?5?$CF?43f?6?$AA@", i32 noundef %82, double noundef %81)
  br label %84

84:                                               ; preds = %75
  %85 = load i32, ptr %11, align 4
  %86 = add i32 %85, 1
  store i32 %86, ptr %11, align 4
  br label %60, !llvm.loop !19

87:                                               ; preds = %60
  %88 = load i32, ptr %8, align 4
  %89 = load i32, ptr %7, align 4
  %90 = load ptr, ptr %6, align 8
  %91 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0DB@PKFEENGN@META?5case?$DNtsvc_s233?5config?$DN?$CFs?5re@", ptr noundef %90, i32 noundef %89, i32 noundef %88)
  ret i32 0
}

declare dso_local i32 @atoi(ptr noundef) #1

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @"?pin_environment@bench@@YAXXZ"() #2 comdat {
  %1 = call ptr @GetCurrentProcess()
  %2 = call i32 @SetProcessAffinityMask(ptr noundef %1, i64 noundef 4)
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %0
  %5 = call i32 @GetLastError()
  %6 = call ptr @__acrt_iob_func(i32 noundef 2)
  %7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @"??_C@_0CO@BEMGKDJM@warning?3?5SetProcessAffinityMask?5@", i32 noundef %5) #7
  br label %8

8:                                                ; preds = %4, %0
  %9 = call ptr @GetCurrentProcess()
  %10 = call i32 @SetPriorityClass(ptr noundef %9, i32 noundef 128)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = call i32 @GetLastError()
  %14 = call ptr @__acrt_iob_func(i32 noundef 2)
  %15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @"??_C@_0CI@JIDNHJK@warning?3?5SetPriorityClass?5failed@", i32 noundef %13) #7
  br label %16

16:                                               ; preds = %12, %8
  %17 = call i32 @timeBeginPeriod(i32 noundef 1)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal noundef i64 @"?hash_bytes@@YA_KPEBX_K@Z"(ptr noundef %0, i64 noundef %1) #3 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %8 = load ptr, ptr %4, align 8
  store ptr %8, ptr %5, align 8
  store i64 1469598103934665603, ptr %6, align 8
  store i64 0, ptr %7, align 8
  br label %9

9:                                                ; preds = %23, %2
  %10 = load i64, ptr %7, align 8
  %11 = load i64, ptr %3, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = load ptr, ptr %5, align 8
  %15 = load i64, ptr %7, align 8
  %16 = getelementptr inbounds nuw i8, ptr %14, i64 %15
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i64
  %19 = load i64, ptr %6, align 8
  %20 = xor i64 %19, %18
  store i64 %20, ptr %6, align 8
  %21 = load i64, ptr %6, align 8
  %22 = mul i64 %21, 1099511628211
  store i64 %22, ptr %6, align 8
  br label %23

23:                                               ; preds = %13
  %24 = load i64, ptr %7, align 8
  %25 = add i64 %24, 1
  store i64 %25, ptr %7, align 8
  br label %9, !llvm.loop !20

26:                                               ; preds = %9
  %27 = load i64, ptr %6, align 8
  ret i64 %27
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local i32 @printf(ptr noundef %0, ...) #2 comdat {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.va_start.p0(ptr %4)
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %2, align 8
  %7 = call ptr @__acrt_iob_func(i32 noundef 1)
  %8 = call i32 @_vfprintf_l(ptr noundef %7, ptr noundef %6, ptr noundef null, ptr noundef %5)
  store i32 %8, ptr %3, align 4
  call void @llvm.va_end.p0(ptr %4)
  %9 = load i32, ptr %3, align 4
  ret i32 %9
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"?now@steady_clock@chrono@std@@SA?AV?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@23@XZ"(ptr dead_on_unwind noalias writable sret(%"class.std::chrono::time_point") align 8 %0) #3 comdat align 2 {
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %"class.std::chrono::duration", align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %"class.std::chrono::duration", align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %"class.std::chrono::duration", align 8
  %20 = alloca i64, align 8
  store ptr %0, ptr %2, align 8
  %21 = call i64 @_Query_perf_frequency() #7
  store i64 %21, ptr %3, align 8
  %22 = call i64 @_Query_perf_counter() #7
  store i64 %22, ptr %4, align 8
  store i64 10000000, ptr %5, align 8
  store i64 24000000, ptr %6, align 8
  %23 = load i64, ptr %3, align 8
  %24 = icmp eq i64 %23, 10000000
  br i1 %24, label %25, label %30

25:                                               ; preds = %1
  store i64 100, ptr %7, align 8
  %26 = load i64, ptr %4, align 8
  %27 = mul i64 %26, 100
  store i64 %27, ptr %9, align 8
  %28 = call noundef ptr @"??$?0_J$0A@@?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEAA@AEB_J@Z"(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %9) #7
  %29 = call noundef ptr @"??0?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@chrono@std@@QEAA@AEBV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@12@@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %8) #7
  br label %60

30:                                               ; preds = %1
  %31 = load i64, ptr %3, align 8
  %32 = icmp eq i64 %31, 24000000
  br i1 %32, label %33, label %44

33:                                               ; preds = %30
  store i64 41, ptr %10, align 8
  store i64 2, ptr %11, align 8
  store i64 3, ptr %12, align 8
  %34 = load i64, ptr %4, align 8
  %35 = mul i64 %34, 41
  store i64 %35, ptr %13, align 8
  %36 = load i64, ptr %4, align 8
  %37 = mul i64 %36, 2
  %38 = sdiv i64 %37, 3
  store i64 %38, ptr %14, align 8
  %39 = load i64, ptr %13, align 8
  %40 = load i64, ptr %14, align 8
  %41 = add i64 %39, %40
  store i64 %41, ptr %16, align 8
  %42 = call noundef ptr @"??$?0_J$0A@@?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEAA@AEB_J@Z"(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %16) #7
  %43 = call noundef ptr @"??0?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@chrono@std@@QEAA@AEBV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@12@@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %15) #7
  br label %60

44:                                               ; preds = %30
  %45 = load i64, ptr %4, align 8
  %46 = load i64, ptr %3, align 8
  %47 = sdiv i64 %45, %46
  %48 = mul i64 %47, 1000000000
  store i64 %48, ptr %17, align 8
  %49 = load i64, ptr %4, align 8
  %50 = load i64, ptr %3, align 8
  %51 = srem i64 %49, %50
  %52 = mul i64 %51, 1000000000
  %53 = load i64, ptr %3, align 8
  %54 = sdiv i64 %52, %53
  store i64 %54, ptr %18, align 8
  %55 = load i64, ptr %17, align 8
  %56 = load i64, ptr %18, align 8
  %57 = add i64 %55, %56
  store i64 %57, ptr %20, align 8
  %58 = call noundef ptr @"??$?0_J$0A@@?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEAA@AEB_J@Z"(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(8) %20) #7
  %59 = call noundef ptr @"??0?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@chrono@std@@QEAA@AEBV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@12@@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %19) #7
  br label %60

60:                                               ; preds = %44, %33, %25
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"??$?GUsteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@12@V312@@chrono@std@@YA?AV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@01@AEBV?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@01@0@Z"(ptr dead_on_unwind noalias writable sret(%"class.std::chrono::duration") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #3 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %"class.std::chrono::duration", align 8
  %8 = alloca %"class.std::chrono::duration", align 8
  store ptr %0, ptr %4, align 8
  store ptr %2, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %9 = load ptr, ptr %5, align 8, !nonnull !21, !align !22
  call void @"?time_since_epoch@?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@chrono@std@@QEBA?AV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@XZ"(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr dead_on_unwind writable sret(%"class.std::chrono::duration") align 8 %7) #7
  %10 = load ptr, ptr %6, align 8, !nonnull !21, !align !22
  call void @"?time_since_epoch@?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@chrono@std@@QEBA?AV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@XZ"(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr dead_on_unwind writable sret(%"class.std::chrono::duration") align 8 %8) #7
  call void @"??$?G_JU?$ratio@$00$0DLJKMKAA@@std@@_JU01@@chrono@std@@YA?AV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@01@AEBV201@0@Z"(ptr dead_on_unwind writable sret(%"class.std::chrono::duration") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %7) #7
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"??$?0_JU?$ratio@$00$0DLJKMKAA@@std@@$0A@@?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEAA@AEBV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@12@@Z"(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %"class.std::chrono::duration.0", align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = getelementptr inbounds nuw %"class.std::chrono::duration.0", ptr %6, i32 0, i32 0
  %8 = load ptr, ptr %3, align 8, !nonnull !21, !align !22
  call void @"??$duration_cast@V?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@_JU?$ratio@$00$0DLJKMKAA@@3@$0A@@chrono@std@@YA?AV?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@01@AEBV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@01@@Z"(ptr dead_on_unwind writable sret(%"class.std::chrono::duration.0") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %8) #7
  %9 = call noundef double @"?count@?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEBANXZ"(ptr noundef nonnull align 8 dereferenceable(8) %5) #7
  store double %9, ptr %7, align 8
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef double @"?count@?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEBANXZ"(ptr noundef nonnull align 8 dereferenceable(8) %0) #3 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %"class.std::chrono::duration.0", ptr %3, i32 0, i32 0
  %5 = load double, ptr %4, align 8
  ret double %5
}

declare dllimport i32 @SetProcessAffinityMask(ptr noundef, i64 noundef) #1

declare dllimport ptr @GetCurrentProcess() #1

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local i32 @fprintf(ptr noundef %0, ptr noundef %1, ...) #3 comdat {
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

declare dllimport i32 @GetLastError() #1

declare dso_local ptr @__acrt_iob_func(i32 noundef) #1

declare dllimport i32 @SetPriorityClass(ptr noundef, i32 noundef) #1

declare dllimport i32 @timeBeginPeriod(i32 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #4

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local i32 @_vfprintf_l(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #2 comdat {
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

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #4

declare dso_local i32 @__stdio_common_vfprintf(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local ptr @__local_stdio_printf_options() #3 comdat {
  ret ptr @"?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA"
}

declare dso_local i32 @s233() #1

; Function Attrs: nounwind
declare dso_local i64 @_Query_perf_frequency() #5

; Function Attrs: nounwind
declare dso_local i64 @_Query_perf_counter() #5

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"??$?0_J$0A@@?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEAA@AEB_J@Z"(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds nuw %"class.std::chrono::duration", ptr %5, i32 0, i32 0
  %7 = load ptr, ptr %3, align 8, !nonnull !21, !align !22
  %8 = load i64, ptr %7, align 8
  store i64 %8, ptr %6, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"??0?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@chrono@std@@QEAA@AEBV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@12@@Z"(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds nuw %"class.std::chrono::time_point", ptr %5, i32 0, i32 0
  %7 = load ptr, ptr %3, align 8, !nonnull !21, !align !22
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %6, ptr align 8 %7, i64 8, i1 false)
  ret ptr %5
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"??$?G_JU?$ratio@$00$0DLJKMKAA@@std@@_JU01@@chrono@std@@YA?AV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@01@AEBV201@0@Z"(ptr dead_on_unwind noalias writable sret(%"class.std::chrono::duration") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #3 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca %"class.std::chrono::duration", align 8
  %9 = alloca %"class.std::chrono::duration", align 8
  store ptr %0, ptr %4, align 8
  store ptr %2, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %10 = load ptr, ptr %6, align 8, !nonnull !21, !align !22
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %8, ptr align 8 %10, i64 8, i1 false)
  %11 = call noundef i64 @"?count@?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEBA_JXZ"(ptr noundef nonnull align 8 dereferenceable(8) %8) #7
  %12 = load ptr, ptr %5, align 8, !nonnull !21, !align !22
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %9, ptr align 8 %12, i64 8, i1 false)
  %13 = call noundef i64 @"?count@?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEBA_JXZ"(ptr noundef nonnull align 8 dereferenceable(8) %9) #7
  %14 = sub i64 %11, %13
  store i64 %14, ptr %7, align 8
  %15 = call noundef ptr @"??$?0_J$0A@@?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEAA@AEB_J@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %7) #7
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"?time_since_epoch@?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@chrono@std@@QEBA?AV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@XZ"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr dead_on_unwind noalias writable sret(%"class.std::chrono::duration") align 8 %1) #3 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds nuw %"class.std::chrono::time_point", ptr %5, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %1, ptr align 8 %6, i64 8, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @"?count@?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEBA_JXZ"(ptr noundef nonnull align 8 dereferenceable(8) %0) #3 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %"class.std::chrono::duration", ptr %3, i32 0, i32 0
  %5 = load i64, ptr %4, align 8
  ret i64 %5
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"??$duration_cast@V?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@_JU?$ratio@$00$0DLJKMKAA@@3@$0A@@chrono@std@@YA?AV?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@01@AEBV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@01@@Z"(ptr dead_on_unwind noalias writable sret(%"class.std::chrono::duration.0") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #3 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca double, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  store i8 1, ptr %5, align 1
  store i8 1, ptr %6, align 1
  %8 = load ptr, ptr %4, align 8, !nonnull !21, !align !22
  %9 = call noundef i64 @"?count@?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEBA_JXZ"(ptr noundef nonnull align 8 dereferenceable(8) %8) #7
  %10 = sitofp i64 %9 to double
  store double %10, ptr %7, align 8
  %11 = call noundef ptr @"??$?0N$0A@@?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEAA@AEBN@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %7) #7
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"??$?0N$0A@@?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEAA@AEBN@Z"(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds nuw %"class.std::chrono::duration.0", ptr %5, i32 0, i32 0
  %7 = load ptr, ptr %3, align 8, !nonnull !21, !align !22
  %8 = load double, ptr %7, align 8
  store double %8, ptr %6, align 8
  ret ptr %5
}

attributes #0 = { mustprogress noinline norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="alderlake" "target-features"="+adx,+aes,+avx,+avx2,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+pconfig,+pku,+popcnt,+prfchw,+ptwrite,+rdpid,+rdrnd,+rdseed,+sahf,+serialize,+sgx,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+waitpkg,+widekl,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="alderlake" "target-features"="+adx,+aes,+avx,+avx2,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+pconfig,+pku,+popcnt,+prfchw,+ptwrite,+rdpid,+rdrnd,+rdseed,+sahf,+serialize,+sgx,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+waitpkg,+widekl,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #2 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="alderlake" "target-features"="+adx,+aes,+avx,+avx2,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+pconfig,+pku,+popcnt,+prfchw,+ptwrite,+rdpid,+rdrnd,+rdseed,+sahf,+serialize,+sgx,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+waitpkg,+widekl,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="alderlake" "target-features"="+adx,+aes,+avx,+avx2,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+pconfig,+pku,+popcnt,+prfchw,+ptwrite,+rdpid,+rdrnd,+rdseed,+sahf,+serialize,+sgx,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+waitpkg,+widekl,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="alderlake" "target-features"="+adx,+aes,+avx,+avx2,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+pconfig,+pku,+popcnt,+prfchw,+ptwrite,+rdpid,+rdrnd,+rdseed,+sahf,+serialize,+sgx,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+waitpkg,+widekl,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.linker.options = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11, !11}
!llvm.module.flags = !{!12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "clang version 24.0.0git (https://github.com/llvm/llvm-project.git 6f4196219399a3502cea3beb2d0c8c28b2241649)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "C:\\work\\llvm-profitability-research\\benchmarks\\tsvc_s233.cpp", directory: "C:\\work\\llvm-profitability-research")
!2 = !{!"/FAILIFMISMATCH:\22_CRT_STDIO_ISO_WIDE_SPECIFIERS=0\22"}
!3 = !{!"/FAILIFMISMATCH:\22_MSC_VER=1900\22"}
!4 = !{!"/FAILIFMISMATCH:\22_ITERATOR_DEBUG_LEVEL=0\22"}
!5 = !{!"/FAILIFMISMATCH:\22RuntimeLibrary=MT_StaticRelease\22"}
!6 = !{!"/DEFAULTLIB:libcpmt.lib"}
!7 = !{!"/alternatename:_Avx2WmemEnabled=_Avx2WmemEnabledWeakValue"}
!8 = !{!"/FAILIFMISMATCH:\22annotate_string=0\22"}
!9 = !{!"/FAILIFMISMATCH:\22annotate_vector=0\22"}
!10 = !{!"/FAILIFMISMATCH:\22annotate_optional=0\22"}
!11 = !{!"/DEFAULTLIB:uuid.lib"}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 8, !"PIC Level", i32 2}
!14 = !{i32 7, !"uwtable", i32 2}
!15 = !{i32 1, !"MaxTLSAlign", i32 65536}
!16 = !{!"clang version 24.0.0git (https://github.com/llvm/llvm-project.git 6f4196219399a3502cea3beb2d0c8c28b2241649)"}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = distinct !{!19, !18}
!20 = distinct !{!20, !18}
!21 = !{}
!22 = !{i64 8}
