; ModuleID = 'C:\work\llvm-profitability-research\results\r1\EXP-20261107-R12-discovery\polybench\adi\frontend.ll'
source_filename = "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\stencils\\adi\\adi.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc19.51.36260"

$__local_stdio_printf_options = comdat any

$fprintf = comdat any

$_vfprintf_l = comdat any

$"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = comdat any

$"??_C@_01OMGOGALD@u?$AA@" = comdat any

$"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@" = comdat any

$"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@" = comdat any

$"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@" = comdat any

$"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = comdat any

@__local_stdio_printf_options._OptionsStorage = internal global i64 0, align 8
@"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", comdat, align 8
@"??_C@_01OMGOGALD@u?$AA@" = linkonce_odr dso_local unnamed_addr constant [2 x i8] c"u\00", comdat, align 4
@"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"begin dump: %s\00", comdat, align 8
@"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [8 x i8] c"%0.2lf \00", comdat, align 8
@"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", comdat, align 8
@"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", comdat, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 400, i32 noundef 8) #8
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 400, i32 noundef 8) #8
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 400, i32 noundef 8) #8
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 400, i32 noundef 8) #8
  tail call fastcc void @init_array(ptr noundef %3)
  tail call fastcc void @kernel_adi(ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  %7 = icmp sgt i32 %0, 42
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load ptr, ptr %1, align 8
  %strcmpload = load i8, ptr %9, align 1
  %.not = icmp eq i8 %strcmpload, 0
  br i1 %.not, label %10, label %11

10:                                               ; preds = %8
  tail call fastcc void @print_array(ptr noundef %3)
  br label %11

11:                                               ; preds = %10, %8, %2
  tail call void @free(ptr noundef %3)
  tail call void @free(ptr noundef %4)
  tail call void @free(ptr noundef %5)
  tail call void @free(ptr noundef %6)
  ret i32 0
}

declare dso_local ptr @polybench_alloc_data(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: write) uwtable
define internal fastcc void @init_array(ptr nofree noundef writeonly captures(none) %0) unnamed_addr #2 {
vector.ph:
  store double 1.000000e+00, ptr %0, align 8
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store double f0x3FEE666666666666, ptr %1, align 8
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double 9.000000e-01, ptr %3, align 8
  store <2 x double> <double 1.000000e+00, double f0x3FEE666666666666>, ptr %2, align 8
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 184
  store double 8.500000e-01, ptr %4, align 8
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double 8.000000e-01, ptr %6, align 8
  store <2 x double> <double 9.000000e-01, double 8.500000e-01>, ptr %5, align 8
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 200
  store double 7.500000e-01, ptr %7, align 8
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store double f0x3FE6666666666666, ptr %9, align 8
  store <2 x double> <double 8.000000e-01, double 7.500000e-01>, ptr %8, align 8
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 216
  store double 6.500000e-01, ptr %10, align 8
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store double 6.000000e-01, ptr %12, align 8
  store <2 x double> <double f0x3FE6666666666666, double 6.500000e-01>, ptr %11, align 8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 232
  store double 5.500000e-01, ptr %13, align 8
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store double 5.000000e-01, ptr %15, align 8
  store <2 x double> <double 6.000000e-01, double 5.500000e-01>, ptr %14, align 8
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 248
  store double 4.500000e-01, ptr %16, align 8
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store double 4.000000e-01, ptr %18, align 8
  store <2 x double> <double 5.000000e-01, double 4.500000e-01>, ptr %17, align 8
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 264
  store double 3.500000e-01, ptr %19, align 8
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store double 3.000000e-01, ptr %21, align 8
  store <2 x double> <double 4.000000e-01, double 3.500000e-01>, ptr %20, align 8
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 280
  store double 2.500000e-01, ptr %22, align 8
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 128
  store double 2.000000e-01, ptr %24, align 8
  store <2 x double> <double 3.000000e-01, double 2.500000e-01>, ptr %23, align 8
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 296
  store double 1.500000e-01, ptr %25, align 8
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 144
  store double 1.000000e-01, ptr %27, align 8
  store <2 x double> <double 2.000000e-01, double 1.500000e-01>, ptr %26, align 8
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 312
  store <2 x double> <double 5.000000e-02, double 1.050000e+00>, ptr %28, align 8
  store double 1.000000e-01, ptr %29, align 8
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 320
  store double 1.100000e+00, ptr %30, align 8
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 328
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 488
  store double 1.050000e+00, ptr %31, align 8
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 336
  store double 1.000000e+00, ptr %33, align 8
  store <2 x double> <double 1.100000e+00, double 1.050000e+00>, ptr %32, align 8
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 344
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 504
  store double f0x3FEE666666666666, ptr %34, align 8
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 352
  store double 9.000000e-01, ptr %36, align 8
  store <2 x double> <double 1.000000e+00, double f0x3FEE666666666666>, ptr %35, align 8
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 360
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 520
  store double 8.500000e-01, ptr %37, align 8
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 368
  store double 8.000000e-01, ptr %39, align 8
  store <2 x double> <double 9.000000e-01, double 8.500000e-01>, ptr %38, align 8
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 376
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 536
  store double 7.500000e-01, ptr %40, align 8
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 384
  store double f0x3FE6666666666666, ptr %42, align 8
  store <2 x double> <double 8.000000e-01, double 7.500000e-01>, ptr %41, align 8
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 392
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 552
  store double 6.500000e-01, ptr %43, align 8
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 400
  store double 6.000000e-01, ptr %45, align 8
  store <2 x double> <double f0x3FE6666666666666, double 6.500000e-01>, ptr %44, align 8
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 408
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 568
  store double 5.500000e-01, ptr %46, align 8
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 416
  store double 5.000000e-01, ptr %48, align 8
  store <2 x double> <double 6.000000e-01, double 5.500000e-01>, ptr %47, align 8
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 424
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 584
  store double 4.500000e-01, ptr %49, align 8
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 432
  store double 4.000000e-01, ptr %51, align 8
  store <2 x double> <double 5.000000e-01, double 4.500000e-01>, ptr %50, align 8
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 440
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 600
  store double 3.500000e-01, ptr %52, align 8
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 448
  store double 3.000000e-01, ptr %54, align 8
  store <2 x double> <double 4.000000e-01, double 3.500000e-01>, ptr %53, align 8
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 456
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 616
  store double 2.500000e-01, ptr %55, align 8
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 464
  store double 2.000000e-01, ptr %57, align 8
  store <2 x double> <double 3.000000e-01, double 2.500000e-01>, ptr %56, align 8
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 472
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 632
  store <2 x double> <double 1.500000e-01, double 1.150000e+00>, ptr %58, align 8
  store double 2.000000e-01, ptr %59, align 8
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 640
  store double 1.200000e+00, ptr %60, align 8
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 648
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 808
  store double 1.150000e+00, ptr %61, align 8
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 656
  store double 1.100000e+00, ptr %63, align 8
  store <2 x double> <double 1.200000e+00, double 1.150000e+00>, ptr %62, align 8
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 664
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 824
  store double 1.050000e+00, ptr %64, align 8
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 672
  store double 1.000000e+00, ptr %66, align 8
  store <2 x double> <double 1.100000e+00, double 1.050000e+00>, ptr %65, align 8
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 680
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 840
  store double f0x3FEE666666666666, ptr %67, align 8
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 688
  store double 9.000000e-01, ptr %69, align 8
  store <2 x double> <double 1.000000e+00, double f0x3FEE666666666666>, ptr %68, align 8
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 696
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 856
  store double 8.500000e-01, ptr %70, align 8
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 704
  store double 8.000000e-01, ptr %72, align 8
  store <2 x double> <double 9.000000e-01, double 8.500000e-01>, ptr %71, align 8
  %73 = getelementptr inbounds nuw i8, ptr %0, i64 712
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 872
  store double 7.500000e-01, ptr %73, align 8
  %75 = getelementptr inbounds nuw i8, ptr %0, i64 720
  store double f0x3FE6666666666666, ptr %75, align 8
  store <2 x double> <double 8.000000e-01, double 7.500000e-01>, ptr %74, align 8
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 728
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 888
  store double 6.500000e-01, ptr %76, align 8
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 736
  store double 6.000000e-01, ptr %78, align 8
  store <2 x double> <double f0x3FE6666666666666, double 6.500000e-01>, ptr %77, align 8
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 744
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 904
  store double 5.500000e-01, ptr %79, align 8
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 752
  store double 5.000000e-01, ptr %81, align 8
  store <2 x double> <double 6.000000e-01, double 5.500000e-01>, ptr %80, align 8
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 760
  %83 = getelementptr inbounds nuw i8, ptr %0, i64 920
  store double 4.500000e-01, ptr %82, align 8
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 768
  store double 4.000000e-01, ptr %84, align 8
  store <2 x double> <double 5.000000e-01, double 4.500000e-01>, ptr %83, align 8
  %85 = getelementptr inbounds nuw i8, ptr %0, i64 776
  %86 = getelementptr inbounds nuw i8, ptr %0, i64 936
  store double 3.500000e-01, ptr %85, align 8
  %87 = getelementptr inbounds nuw i8, ptr %0, i64 784
  store double 3.000000e-01, ptr %87, align 8
  store <2 x double> <double 4.000000e-01, double 3.500000e-01>, ptr %86, align 8
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 792
  %89 = getelementptr inbounds nuw i8, ptr %0, i64 952
  store <2 x double> <double 2.500000e-01, double 1.250000e+00>, ptr %88, align 8
  store double 3.000000e-01, ptr %89, align 8
  %90 = getelementptr inbounds nuw i8, ptr %0, i64 960
  store double 1.300000e+00, ptr %90, align 8
  %91 = getelementptr inbounds nuw i8, ptr %0, i64 968
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 1128
  store double 1.250000e+00, ptr %91, align 8
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 976
  store double 1.200000e+00, ptr %93, align 8
  store <2 x double> <double 1.300000e+00, double 1.250000e+00>, ptr %92, align 8
  %94 = getelementptr inbounds nuw i8, ptr %0, i64 984
  %95 = getelementptr inbounds nuw i8, ptr %0, i64 1144
  store double 1.150000e+00, ptr %94, align 8
  %96 = getelementptr inbounds nuw i8, ptr %0, i64 992
  store double 1.100000e+00, ptr %96, align 8
  store <2 x double> <double 1.200000e+00, double 1.150000e+00>, ptr %95, align 8
  %97 = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 1160
  store double 1.050000e+00, ptr %97, align 8
  %99 = getelementptr inbounds nuw i8, ptr %0, i64 1008
  store double 1.000000e+00, ptr %99, align 8
  store <2 x double> <double 1.100000e+00, double 1.050000e+00>, ptr %98, align 8
  %100 = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %101 = getelementptr inbounds nuw i8, ptr %0, i64 1176
  store double f0x3FEE666666666666, ptr %100, align 8
  %102 = getelementptr inbounds nuw i8, ptr %0, i64 1024
  store double 9.000000e-01, ptr %102, align 8
  store <2 x double> <double 1.000000e+00, double f0x3FEE666666666666>, ptr %101, align 8
  %103 = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %104 = getelementptr inbounds nuw i8, ptr %0, i64 1192
  store double 8.500000e-01, ptr %103, align 8
  %105 = getelementptr inbounds nuw i8, ptr %0, i64 1040
  store double 8.000000e-01, ptr %105, align 8
  store <2 x double> <double 9.000000e-01, double 8.500000e-01>, ptr %104, align 8
  %106 = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %107 = getelementptr inbounds nuw i8, ptr %0, i64 1208
  store double 7.500000e-01, ptr %106, align 8
  %108 = getelementptr inbounds nuw i8, ptr %0, i64 1056
  store double f0x3FE6666666666666, ptr %108, align 8
  store <2 x double> <double 8.000000e-01, double 7.500000e-01>, ptr %107, align 8
  %109 = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %110 = getelementptr inbounds nuw i8, ptr %0, i64 1224
  store double 6.500000e-01, ptr %109, align 8
  %111 = getelementptr inbounds nuw i8, ptr %0, i64 1072
  store double 6.000000e-01, ptr %111, align 8
  store <2 x double> <double f0x3FE6666666666666, double 6.500000e-01>, ptr %110, align 8
  %112 = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %113 = getelementptr inbounds nuw i8, ptr %0, i64 1240
  store double 5.500000e-01, ptr %112, align 8
  %114 = getelementptr inbounds nuw i8, ptr %0, i64 1088
  store double 5.000000e-01, ptr %114, align 8
  store <2 x double> <double 6.000000e-01, double 5.500000e-01>, ptr %113, align 8
  %115 = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %116 = getelementptr inbounds nuw i8, ptr %0, i64 1256
  store double 4.500000e-01, ptr %115, align 8
  %117 = getelementptr inbounds nuw i8, ptr %0, i64 1104
  store double 4.000000e-01, ptr %117, align 8
  store <2 x double> <double 5.000000e-01, double 4.500000e-01>, ptr %116, align 8
  %118 = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %119 = getelementptr inbounds nuw i8, ptr %0, i64 1272
  store <2 x double> <double 3.500000e-01, double 1.350000e+00>, ptr %118, align 8
  store double 4.000000e-01, ptr %119, align 8
  %120 = getelementptr inbounds nuw i8, ptr %0, i64 1280
  store double 1.400000e+00, ptr %120, align 8
  %121 = getelementptr inbounds nuw i8, ptr %0, i64 1288
  %122 = getelementptr inbounds nuw i8, ptr %0, i64 1448
  store double 1.350000e+00, ptr %121, align 8
  %123 = getelementptr inbounds nuw i8, ptr %0, i64 1296
  store double 1.300000e+00, ptr %123, align 8
  store <2 x double> <double 1.400000e+00, double 1.350000e+00>, ptr %122, align 8
  %124 = getelementptr inbounds nuw i8, ptr %0, i64 1304
  %125 = getelementptr inbounds nuw i8, ptr %0, i64 1464
  store double 1.250000e+00, ptr %124, align 8
  %126 = getelementptr inbounds nuw i8, ptr %0, i64 1312
  store double 1.200000e+00, ptr %126, align 8
  store <2 x double> <double 1.300000e+00, double 1.250000e+00>, ptr %125, align 8
  %127 = getelementptr inbounds nuw i8, ptr %0, i64 1320
  %128 = getelementptr inbounds nuw i8, ptr %0, i64 1480
  store double 1.150000e+00, ptr %127, align 8
  %129 = getelementptr inbounds nuw i8, ptr %0, i64 1328
  store double 1.100000e+00, ptr %129, align 8
  store <2 x double> <double 1.200000e+00, double 1.150000e+00>, ptr %128, align 8
  %130 = getelementptr inbounds nuw i8, ptr %0, i64 1336
  %131 = getelementptr inbounds nuw i8, ptr %0, i64 1496
  store double 1.050000e+00, ptr %130, align 8
  %132 = getelementptr inbounds nuw i8, ptr %0, i64 1344
  store double 1.000000e+00, ptr %132, align 8
  store <2 x double> <double 1.100000e+00, double 1.050000e+00>, ptr %131, align 8
  %133 = getelementptr inbounds nuw i8, ptr %0, i64 1352
  %134 = getelementptr inbounds nuw i8, ptr %0, i64 1512
  store double f0x3FEE666666666666, ptr %133, align 8
  %135 = getelementptr inbounds nuw i8, ptr %0, i64 1360
  store double 9.000000e-01, ptr %135, align 8
  store <2 x double> <double 1.000000e+00, double f0x3FEE666666666666>, ptr %134, align 8
  %136 = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %137 = getelementptr inbounds nuw i8, ptr %0, i64 1528
  store double 8.500000e-01, ptr %136, align 8
  %138 = getelementptr inbounds nuw i8, ptr %0, i64 1376
  store double 8.000000e-01, ptr %138, align 8
  store <2 x double> <double 9.000000e-01, double 8.500000e-01>, ptr %137, align 8
  %139 = getelementptr inbounds nuw i8, ptr %0, i64 1384
  %140 = getelementptr inbounds nuw i8, ptr %0, i64 1544
  store double 7.500000e-01, ptr %139, align 8
  %141 = getelementptr inbounds nuw i8, ptr %0, i64 1392
  store double f0x3FE6666666666666, ptr %141, align 8
  store <2 x double> <double 8.000000e-01, double 7.500000e-01>, ptr %140, align 8
  %142 = getelementptr inbounds nuw i8, ptr %0, i64 1400
  %143 = getelementptr inbounds nuw i8, ptr %0, i64 1560
  store double 6.500000e-01, ptr %142, align 8
  %144 = getelementptr inbounds nuw i8, ptr %0, i64 1408
  store double 6.000000e-01, ptr %144, align 8
  store <2 x double> <double f0x3FE6666666666666, double 6.500000e-01>, ptr %143, align 8
  %145 = getelementptr inbounds nuw i8, ptr %0, i64 1416
  %146 = getelementptr inbounds nuw i8, ptr %0, i64 1576
  store double 5.500000e-01, ptr %145, align 8
  %147 = getelementptr inbounds nuw i8, ptr %0, i64 1424
  store double 5.000000e-01, ptr %147, align 8
  store <2 x double> <double 6.000000e-01, double 5.500000e-01>, ptr %146, align 8
  %148 = getelementptr inbounds nuw i8, ptr %0, i64 1432
  %149 = getelementptr inbounds nuw i8, ptr %0, i64 1592
  store <2 x double> <double 4.500000e-01, double 1.450000e+00>, ptr %148, align 8
  store double 5.000000e-01, ptr %149, align 8
  %150 = getelementptr inbounds nuw i8, ptr %0, i64 1600
  store double 1.500000e+00, ptr %150, align 8
  %151 = getelementptr inbounds nuw i8, ptr %0, i64 1608
  %152 = getelementptr inbounds nuw i8, ptr %0, i64 1768
  store double 1.450000e+00, ptr %151, align 8
  %153 = getelementptr inbounds nuw i8, ptr %0, i64 1616
  store double 1.400000e+00, ptr %153, align 8
  store <2 x double> <double 1.500000e+00, double 1.450000e+00>, ptr %152, align 8
  %154 = getelementptr inbounds nuw i8, ptr %0, i64 1624
  %155 = getelementptr inbounds nuw i8, ptr %0, i64 1784
  store double 1.350000e+00, ptr %154, align 8
  %156 = getelementptr inbounds nuw i8, ptr %0, i64 1632
  store double 1.300000e+00, ptr %156, align 8
  store <2 x double> <double 1.400000e+00, double 1.350000e+00>, ptr %155, align 8
  %157 = getelementptr inbounds nuw i8, ptr %0, i64 1640
  %158 = getelementptr inbounds nuw i8, ptr %0, i64 1800
  store double 1.250000e+00, ptr %157, align 8
  %159 = getelementptr inbounds nuw i8, ptr %0, i64 1648
  store double 1.200000e+00, ptr %159, align 8
  store <2 x double> <double 1.300000e+00, double 1.250000e+00>, ptr %158, align 8
  %160 = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %161 = getelementptr inbounds nuw i8, ptr %0, i64 1816
  store double 1.150000e+00, ptr %160, align 8
  %162 = getelementptr inbounds nuw i8, ptr %0, i64 1664
  store double 1.100000e+00, ptr %162, align 8
  store <2 x double> <double 1.200000e+00, double 1.150000e+00>, ptr %161, align 8
  %163 = getelementptr inbounds nuw i8, ptr %0, i64 1672
  %164 = getelementptr inbounds nuw i8, ptr %0, i64 1832
  store double 1.050000e+00, ptr %163, align 8
  %165 = getelementptr inbounds nuw i8, ptr %0, i64 1680
  store double 1.000000e+00, ptr %165, align 8
  store <2 x double> <double 1.100000e+00, double 1.050000e+00>, ptr %164, align 8
  %166 = getelementptr inbounds nuw i8, ptr %0, i64 1688
  %167 = getelementptr inbounds nuw i8, ptr %0, i64 1848
  store double f0x3FEE666666666666, ptr %166, align 8
  %168 = getelementptr inbounds nuw i8, ptr %0, i64 1696
  store double 9.000000e-01, ptr %168, align 8
  store <2 x double> <double 1.000000e+00, double f0x3FEE666666666666>, ptr %167, align 8
  %169 = getelementptr inbounds nuw i8, ptr %0, i64 1704
  %170 = getelementptr inbounds nuw i8, ptr %0, i64 1864
  store double 8.500000e-01, ptr %169, align 8
  %171 = getelementptr inbounds nuw i8, ptr %0, i64 1712
  store double 8.000000e-01, ptr %171, align 8
  store <2 x double> <double 9.000000e-01, double 8.500000e-01>, ptr %170, align 8
  %172 = getelementptr inbounds nuw i8, ptr %0, i64 1720
  %173 = getelementptr inbounds nuw i8, ptr %0, i64 1880
  store double 7.500000e-01, ptr %172, align 8
  %174 = getelementptr inbounds nuw i8, ptr %0, i64 1728
  store double f0x3FE6666666666666, ptr %174, align 8
  store <2 x double> <double 8.000000e-01, double 7.500000e-01>, ptr %173, align 8
  %175 = getelementptr inbounds nuw i8, ptr %0, i64 1736
  %176 = getelementptr inbounds nuw i8, ptr %0, i64 1896
  store double 6.500000e-01, ptr %175, align 8
  %177 = getelementptr inbounds nuw i8, ptr %0, i64 1744
  store double 6.000000e-01, ptr %177, align 8
  store <2 x double> <double f0x3FE6666666666666, double 6.500000e-01>, ptr %176, align 8
  %178 = getelementptr inbounds nuw i8, ptr %0, i64 1752
  %179 = getelementptr inbounds nuw i8, ptr %0, i64 1912
  store <2 x double> <double 5.500000e-01, double 1.550000e+00>, ptr %178, align 8
  store double 6.000000e-01, ptr %179, align 8
  %180 = getelementptr inbounds nuw i8, ptr %0, i64 1920
  store double 1.600000e+00, ptr %180, align 8
  %181 = getelementptr inbounds nuw i8, ptr %0, i64 1928
  %182 = getelementptr inbounds nuw i8, ptr %0, i64 2088
  store double 1.550000e+00, ptr %181, align 8
  %183 = getelementptr inbounds nuw i8, ptr %0, i64 1936
  store double 1.500000e+00, ptr %183, align 8
  store <2 x double> <double 1.600000e+00, double 1.550000e+00>, ptr %182, align 8
  %184 = getelementptr inbounds nuw i8, ptr %0, i64 1944
  %185 = getelementptr inbounds nuw i8, ptr %0, i64 2104
  store double 1.450000e+00, ptr %184, align 8
  %186 = getelementptr inbounds nuw i8, ptr %0, i64 1952
  store double 1.400000e+00, ptr %186, align 8
  store <2 x double> <double 1.500000e+00, double 1.450000e+00>, ptr %185, align 8
  %187 = getelementptr inbounds nuw i8, ptr %0, i64 1960
  %188 = getelementptr inbounds nuw i8, ptr %0, i64 2120
  store double 1.350000e+00, ptr %187, align 8
  %189 = getelementptr inbounds nuw i8, ptr %0, i64 1968
  store double 1.300000e+00, ptr %189, align 8
  store <2 x double> <double 1.400000e+00, double 1.350000e+00>, ptr %188, align 8
  %190 = getelementptr inbounds nuw i8, ptr %0, i64 1976
  %191 = getelementptr inbounds nuw i8, ptr %0, i64 2136
  store double 1.250000e+00, ptr %190, align 8
  %192 = getelementptr inbounds nuw i8, ptr %0, i64 1984
  store double 1.200000e+00, ptr %192, align 8
  store <2 x double> <double 1.300000e+00, double 1.250000e+00>, ptr %191, align 8
  %193 = getelementptr inbounds nuw i8, ptr %0, i64 1992
  %194 = getelementptr inbounds nuw i8, ptr %0, i64 2152
  store double 1.150000e+00, ptr %193, align 8
  %195 = getelementptr inbounds nuw i8, ptr %0, i64 2000
  store double 1.100000e+00, ptr %195, align 8
  store <2 x double> <double 1.200000e+00, double 1.150000e+00>, ptr %194, align 8
  %196 = getelementptr inbounds nuw i8, ptr %0, i64 2008
  %197 = getelementptr inbounds nuw i8, ptr %0, i64 2168
  store double 1.050000e+00, ptr %196, align 8
  %198 = getelementptr inbounds nuw i8, ptr %0, i64 2016
  store double 1.000000e+00, ptr %198, align 8
  store <2 x double> <double 1.100000e+00, double 1.050000e+00>, ptr %197, align 8
  %199 = getelementptr inbounds nuw i8, ptr %0, i64 2024
  %200 = getelementptr inbounds nuw i8, ptr %0, i64 2184
  store double f0x3FEE666666666666, ptr %199, align 8
  %201 = getelementptr inbounds nuw i8, ptr %0, i64 2032
  store double 9.000000e-01, ptr %201, align 8
  store <2 x double> <double 1.000000e+00, double f0x3FEE666666666666>, ptr %200, align 8
  %202 = getelementptr inbounds nuw i8, ptr %0, i64 2040
  %203 = getelementptr inbounds nuw i8, ptr %0, i64 2200
  store double 8.500000e-01, ptr %202, align 8
  %204 = getelementptr inbounds nuw i8, ptr %0, i64 2048
  store double 8.000000e-01, ptr %204, align 8
  store <2 x double> <double 9.000000e-01, double 8.500000e-01>, ptr %203, align 8
  %205 = getelementptr inbounds nuw i8, ptr %0, i64 2056
  %206 = getelementptr inbounds nuw i8, ptr %0, i64 2216
  store double 7.500000e-01, ptr %205, align 8
  %207 = getelementptr inbounds nuw i8, ptr %0, i64 2064
  store double f0x3FE6666666666666, ptr %207, align 8
  store <2 x double> <double 8.000000e-01, double 7.500000e-01>, ptr %206, align 8
  %208 = getelementptr inbounds nuw i8, ptr %0, i64 2072
  %209 = getelementptr inbounds nuw i8, ptr %0, i64 2232
  store <2 x double> <double 6.500000e-01, double 1.650000e+00>, ptr %208, align 8
  store double f0x3FE6666666666666, ptr %209, align 8
  %210 = getelementptr inbounds nuw i8, ptr %0, i64 2240
  store double 1.700000e+00, ptr %210, align 8
  %211 = getelementptr inbounds nuw i8, ptr %0, i64 2248
  %212 = getelementptr inbounds nuw i8, ptr %0, i64 2408
  store double 1.650000e+00, ptr %211, align 8
  %213 = getelementptr inbounds nuw i8, ptr %0, i64 2256
  store double 1.600000e+00, ptr %213, align 8
  store <2 x double> <double 1.700000e+00, double 1.650000e+00>, ptr %212, align 8
  %214 = getelementptr inbounds nuw i8, ptr %0, i64 2264
  %215 = getelementptr inbounds nuw i8, ptr %0, i64 2424
  store double 1.550000e+00, ptr %214, align 8
  %216 = getelementptr inbounds nuw i8, ptr %0, i64 2272
  store double 1.500000e+00, ptr %216, align 8
  store <2 x double> <double 1.600000e+00, double 1.550000e+00>, ptr %215, align 8
  %217 = getelementptr inbounds nuw i8, ptr %0, i64 2280
  %218 = getelementptr inbounds nuw i8, ptr %0, i64 2440
  store double 1.450000e+00, ptr %217, align 8
  %219 = getelementptr inbounds nuw i8, ptr %0, i64 2288
  store double 1.400000e+00, ptr %219, align 8
  store <2 x double> <double 1.500000e+00, double 1.450000e+00>, ptr %218, align 8
  %220 = getelementptr inbounds nuw i8, ptr %0, i64 2296
  %221 = getelementptr inbounds nuw i8, ptr %0, i64 2456
  store double 1.350000e+00, ptr %220, align 8
  %222 = getelementptr inbounds nuw i8, ptr %0, i64 2304
  store double 1.300000e+00, ptr %222, align 8
  store <2 x double> <double 1.400000e+00, double 1.350000e+00>, ptr %221, align 8
  %223 = getelementptr inbounds nuw i8, ptr %0, i64 2312
  %224 = getelementptr inbounds nuw i8, ptr %0, i64 2472
  store double 1.250000e+00, ptr %223, align 8
  %225 = getelementptr inbounds nuw i8, ptr %0, i64 2320
  store double 1.200000e+00, ptr %225, align 8
  store <2 x double> <double 1.300000e+00, double 1.250000e+00>, ptr %224, align 8
  %226 = getelementptr inbounds nuw i8, ptr %0, i64 2328
  %227 = getelementptr inbounds nuw i8, ptr %0, i64 2488
  store double 1.150000e+00, ptr %226, align 8
  %228 = getelementptr inbounds nuw i8, ptr %0, i64 2336
  store double 1.100000e+00, ptr %228, align 8
  store <2 x double> <double 1.200000e+00, double 1.150000e+00>, ptr %227, align 8
  %229 = getelementptr inbounds nuw i8, ptr %0, i64 2344
  %230 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  store double 1.050000e+00, ptr %229, align 8
  %231 = getelementptr inbounds nuw i8, ptr %0, i64 2352
  store double 1.000000e+00, ptr %231, align 8
  store <2 x double> <double 1.100000e+00, double 1.050000e+00>, ptr %230, align 8
  %232 = getelementptr inbounds nuw i8, ptr %0, i64 2360
  %233 = getelementptr inbounds nuw i8, ptr %0, i64 2520
  store double f0x3FEE666666666666, ptr %232, align 8
  %234 = getelementptr inbounds nuw i8, ptr %0, i64 2368
  store double 9.000000e-01, ptr %234, align 8
  store <2 x double> <double 1.000000e+00, double f0x3FEE666666666666>, ptr %233, align 8
  %235 = getelementptr inbounds nuw i8, ptr %0, i64 2376
  %236 = getelementptr inbounds nuw i8, ptr %0, i64 2536
  store double 8.500000e-01, ptr %235, align 8
  %237 = getelementptr inbounds nuw i8, ptr %0, i64 2384
  store double 8.000000e-01, ptr %237, align 8
  store <2 x double> <double 9.000000e-01, double 8.500000e-01>, ptr %236, align 8
  %238 = getelementptr inbounds nuw i8, ptr %0, i64 2392
  %239 = getelementptr inbounds nuw i8, ptr %0, i64 2552
  store <2 x double> <double 7.500000e-01, double 1.750000e+00>, ptr %238, align 8
  store double 8.000000e-01, ptr %239, align 8
  %240 = getelementptr inbounds nuw i8, ptr %0, i64 2560
  store double 1.800000e+00, ptr %240, align 8
  %241 = getelementptr inbounds nuw i8, ptr %0, i64 2568
  %242 = getelementptr inbounds nuw i8, ptr %0, i64 2728
  store double 1.750000e+00, ptr %241, align 8
  %243 = getelementptr inbounds nuw i8, ptr %0, i64 2576
  store double 1.700000e+00, ptr %243, align 8
  store <2 x double> <double 1.800000e+00, double 1.750000e+00>, ptr %242, align 8
  %244 = getelementptr inbounds nuw i8, ptr %0, i64 2584
  %245 = getelementptr inbounds nuw i8, ptr %0, i64 2744
  store double 1.650000e+00, ptr %244, align 8
  %246 = getelementptr inbounds nuw i8, ptr %0, i64 2592
  store double 1.600000e+00, ptr %246, align 8
  store <2 x double> <double 1.700000e+00, double 1.650000e+00>, ptr %245, align 8
  %247 = getelementptr inbounds nuw i8, ptr %0, i64 2600
  %248 = getelementptr inbounds nuw i8, ptr %0, i64 2760
  store double 1.550000e+00, ptr %247, align 8
  %249 = getelementptr inbounds nuw i8, ptr %0, i64 2608
  store double 1.500000e+00, ptr %249, align 8
  store <2 x double> <double 1.600000e+00, double 1.550000e+00>, ptr %248, align 8
  %250 = getelementptr inbounds nuw i8, ptr %0, i64 2616
  %251 = getelementptr inbounds nuw i8, ptr %0, i64 2776
  store double 1.450000e+00, ptr %250, align 8
  %252 = getelementptr inbounds nuw i8, ptr %0, i64 2624
  store double 1.400000e+00, ptr %252, align 8
  store <2 x double> <double 1.500000e+00, double 1.450000e+00>, ptr %251, align 8
  %253 = getelementptr inbounds nuw i8, ptr %0, i64 2632
  %254 = getelementptr inbounds nuw i8, ptr %0, i64 2792
  store double 1.350000e+00, ptr %253, align 8
  %255 = getelementptr inbounds nuw i8, ptr %0, i64 2640
  store double 1.300000e+00, ptr %255, align 8
  store <2 x double> <double 1.400000e+00, double 1.350000e+00>, ptr %254, align 8
  %256 = getelementptr inbounds nuw i8, ptr %0, i64 2648
  %257 = getelementptr inbounds nuw i8, ptr %0, i64 2808
  store double 1.250000e+00, ptr %256, align 8
  %258 = getelementptr inbounds nuw i8, ptr %0, i64 2656
  store double 1.200000e+00, ptr %258, align 8
  store <2 x double> <double 1.300000e+00, double 1.250000e+00>, ptr %257, align 8
  %259 = getelementptr inbounds nuw i8, ptr %0, i64 2664
  %260 = getelementptr inbounds nuw i8, ptr %0, i64 2824
  store double 1.150000e+00, ptr %259, align 8
  %261 = getelementptr inbounds nuw i8, ptr %0, i64 2672
  store double 1.100000e+00, ptr %261, align 8
  store <2 x double> <double 1.200000e+00, double 1.150000e+00>, ptr %260, align 8
  %262 = getelementptr inbounds nuw i8, ptr %0, i64 2680
  %263 = getelementptr inbounds nuw i8, ptr %0, i64 2840
  store double 1.050000e+00, ptr %262, align 8
  %264 = getelementptr inbounds nuw i8, ptr %0, i64 2688
  store double 1.000000e+00, ptr %264, align 8
  store <2 x double> <double 1.100000e+00, double 1.050000e+00>, ptr %263, align 8
  %265 = getelementptr inbounds nuw i8, ptr %0, i64 2696
  %266 = getelementptr inbounds nuw i8, ptr %0, i64 2856
  store double f0x3FEE666666666666, ptr %265, align 8
  %267 = getelementptr inbounds nuw i8, ptr %0, i64 2704
  store double 9.000000e-01, ptr %267, align 8
  store <2 x double> <double 1.000000e+00, double f0x3FEE666666666666>, ptr %266, align 8
  %268 = getelementptr inbounds nuw i8, ptr %0, i64 2712
  %269 = getelementptr inbounds nuw i8, ptr %0, i64 2872
  store <2 x double> <double 8.500000e-01, double 1.850000e+00>, ptr %268, align 8
  store double 9.000000e-01, ptr %269, align 8
  %270 = getelementptr inbounds nuw i8, ptr %0, i64 2880
  store double 1.900000e+00, ptr %270, align 8
  %271 = getelementptr inbounds nuw i8, ptr %0, i64 2888
  %272 = getelementptr inbounds nuw i8, ptr %0, i64 3048
  store double 1.850000e+00, ptr %271, align 8
  %273 = getelementptr inbounds nuw i8, ptr %0, i64 2896
  store double 1.800000e+00, ptr %273, align 8
  store <2 x double> <double 1.900000e+00, double 1.850000e+00>, ptr %272, align 8
  %274 = getelementptr inbounds nuw i8, ptr %0, i64 2904
  %275 = getelementptr inbounds nuw i8, ptr %0, i64 3064
  store double 1.750000e+00, ptr %274, align 8
  %276 = getelementptr inbounds nuw i8, ptr %0, i64 2912
  store double 1.700000e+00, ptr %276, align 8
  store <2 x double> <double 1.800000e+00, double 1.750000e+00>, ptr %275, align 8
  %277 = getelementptr inbounds nuw i8, ptr %0, i64 2920
  %278 = getelementptr inbounds nuw i8, ptr %0, i64 3080
  store double 1.650000e+00, ptr %277, align 8
  %279 = getelementptr inbounds nuw i8, ptr %0, i64 2928
  store double 1.600000e+00, ptr %279, align 8
  store <2 x double> <double 1.700000e+00, double 1.650000e+00>, ptr %278, align 8
  %280 = getelementptr inbounds nuw i8, ptr %0, i64 2936
  %281 = getelementptr inbounds nuw i8, ptr %0, i64 3096
  store double 1.550000e+00, ptr %280, align 8
  %282 = getelementptr inbounds nuw i8, ptr %0, i64 2944
  store double 1.500000e+00, ptr %282, align 8
  store <2 x double> <double 1.600000e+00, double 1.550000e+00>, ptr %281, align 8
  %283 = getelementptr inbounds nuw i8, ptr %0, i64 2952
  %284 = getelementptr inbounds nuw i8, ptr %0, i64 3112
  store double 1.450000e+00, ptr %283, align 8
  %285 = getelementptr inbounds nuw i8, ptr %0, i64 2960
  store double 1.400000e+00, ptr %285, align 8
  store <2 x double> <double 1.500000e+00, double 1.450000e+00>, ptr %284, align 8
  %286 = getelementptr inbounds nuw i8, ptr %0, i64 2968
  %287 = getelementptr inbounds nuw i8, ptr %0, i64 3128
  store double 1.350000e+00, ptr %286, align 8
  %288 = getelementptr inbounds nuw i8, ptr %0, i64 2976
  store double 1.300000e+00, ptr %288, align 8
  store <2 x double> <double 1.400000e+00, double 1.350000e+00>, ptr %287, align 8
  %289 = getelementptr inbounds nuw i8, ptr %0, i64 2984
  %290 = getelementptr inbounds nuw i8, ptr %0, i64 3144
  store double 1.250000e+00, ptr %289, align 8
  %291 = getelementptr inbounds nuw i8, ptr %0, i64 2992
  store double 1.200000e+00, ptr %291, align 8
  store <2 x double> <double 1.300000e+00, double 1.250000e+00>, ptr %290, align 8
  %292 = getelementptr inbounds nuw i8, ptr %0, i64 3000
  %293 = getelementptr inbounds nuw i8, ptr %0, i64 3160
  store double 1.150000e+00, ptr %292, align 8
  %294 = getelementptr inbounds nuw i8, ptr %0, i64 3008
  store double 1.100000e+00, ptr %294, align 8
  store <2 x double> <double 1.200000e+00, double 1.150000e+00>, ptr %293, align 8
  %295 = getelementptr inbounds nuw i8, ptr %0, i64 3016
  %296 = getelementptr inbounds nuw i8, ptr %0, i64 3176
  store double 1.050000e+00, ptr %295, align 8
  %297 = getelementptr inbounds nuw i8, ptr %0, i64 3024
  store double 1.000000e+00, ptr %297, align 8
  store <2 x double> <double 1.100000e+00, double 1.050000e+00>, ptr %296, align 8
  %298 = getelementptr inbounds nuw i8, ptr %0, i64 3032
  %299 = getelementptr inbounds nuw i8, ptr %0, i64 3192
  store <2 x double> <double f0x3FEE666666666666, double 1.950000e+00>, ptr %298, align 8
  store double 1.000000e+00, ptr %299, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @kernel_adi(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3) unnamed_addr #3 {
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 3040
  br label %.preheader140

.preheader140:                                    ; preds = %4, %309
  %.0151 = phi i32 [ 1, %4 ], [ %310, %309 ]
  br label %.lver.check

.lver.check:                                      ; preds = %.preheader140, %.loopexit
  %indvar = phi i64 [ 0, %.preheader140 ], [ %indvar.next, %.loopexit ]
  %indvars.iv156 = phi i64 [ 1, %.preheader140 ], [ %indvars.iv.next157, %.loopexit ]
  %6 = mul nuw nsw i64 %indvar, 160
  %7 = add nuw i64 %6, 312
  %scevgep = getelementptr i8, ptr %2, i64 %7
  %scevgep1 = getelementptr i8, ptr %3, i64 %7
  %8 = getelementptr [8 x i8], ptr %1, i64 %indvars.iv156
  store double 1.000000e+00, ptr %8, align 8
  %9 = getelementptr inbounds nuw [160 x i8], ptr %2, i64 %indvars.iv156
  store double 0.000000e+00, ptr %9, align 8
  %10 = load double, ptr %8, align 8
  %11 = getelementptr inbounds nuw [160 x i8], ptr %3, i64 %indvars.iv156
  store double %10, ptr %11, align 8
  %invariant.gep = getelementptr [8 x i8], ptr %0, i64 %indvars.iv156
  %bound0 = icmp ult ptr %9, %scevgep1
  %bound1 = icmp ult ptr %11, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.ph.lver.orig, label %.ph

.ph.lver.orig:                                    ; preds = %.lver.check, %.ph.lver.orig
  %indvars.iv.lver.orig = phi i64 [ %indvars.iv.next.lver.orig, %.ph.lver.orig ], [ 1, %.lver.check ]
  %12 = add nsw i64 %indvars.iv.lver.orig, -1
  %13 = getelementptr inbounds [8 x i8], ptr %9, i64 %12
  %14 = load double, ptr %13, align 8
  %15 = tail call double @llvm.fmuladd.f64(double %14, double f0xC033FFFFFFFFFFFF, double f0x40447FFFFFFFFFFF)
  %16 = fdiv double f0x4033FFFFFFFFFFFF, %15
  %17 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %indvars.iv.lver.orig
  store double %16, ptr %17, align 8
  %gep.lver.orig = getelementptr [160 x i8], ptr %invariant.gep, i64 %indvars.iv.lver.orig
  %18 = getelementptr i8, ptr %gep.lver.orig, i64 -8
  %19 = load double, ptr %18, align 8
  %20 = load double, ptr %gep.lver.orig, align 8
  %21 = fmul double %20, f0xC032FFFFFFFFFFFF
  %22 = tail call double @llvm.fmuladd.f64(double %19, double f0x4023FFFFFFFFFFFF, double %21)
  %23 = getelementptr inbounds nuw i8, ptr %gep.lver.orig, i64 8
  %24 = load double, ptr %23, align 8
  %25 = tail call double @llvm.fmuladd.f64(double %24, double f0x4023FFFFFFFFFFFF, double %22)
  %26 = getelementptr inbounds [8 x i8], ptr %11, i64 %12
  %27 = load double, ptr %26, align 8
  %28 = tail call double @llvm.fmuladd.f64(double %27, double f0x4033FFFFFFFFFFFF, double %25)
  %29 = fdiv double %28, %15
  %30 = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %indvars.iv.lver.orig
  store double %29, ptr %30, align 8
  %indvars.iv.next.lver.orig = add nuw nsw i64 %indvars.iv.lver.orig, 1
  %exitcond.not.lver.orig = icmp eq i64 %indvars.iv.next.lver.orig, 19
  br i1 %exitcond.not.lver.orig, label %.loopexit, label %.ph.lver.orig, !llvm.loop !7

.ph:                                              ; preds = %.lver.check
  %load_initial = load double, ptr %9, align 8
  %load_initial3 = load double, ptr %11, align 8
  br label %31

31:                                               ; preds = %.ph, %31
  %store_forwarded4 = phi double [ %load_initial3, %.ph ], [ %44, %31 ]
  %store_forwarded = phi double [ %load_initial, %.ph ], [ %33, %31 ]
  %indvars.iv = phi i64 [ 1, %.ph ], [ %indvars.iv.next, %31 ]
  %32 = tail call double @llvm.fmuladd.f64(double %store_forwarded, double f0xC033FFFFFFFFFFFF, double f0x40447FFFFFFFFFFF)
  %33 = fdiv double f0x4033FFFFFFFFFFFF, %32
  %34 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %indvars.iv
  store double %33, ptr %34, align 8
  %gep = getelementptr [160 x i8], ptr %invariant.gep, i64 %indvars.iv
  %35 = getelementptr i8, ptr %gep, i64 -8
  %36 = load double, ptr %35, align 8
  %37 = load double, ptr %gep, align 8
  %38 = fmul double %37, f0xC032FFFFFFFFFFFF
  %39 = tail call double @llvm.fmuladd.f64(double %36, double f0x4023FFFFFFFFFFFF, double %38)
  %40 = getelementptr inbounds nuw i8, ptr %gep, i64 8
  %41 = load double, ptr %40, align 8
  %42 = tail call double @llvm.fmuladd.f64(double %41, double f0x4023FFFFFFFFFFFF, double %39)
  %43 = tail call double @llvm.fmuladd.f64(double %store_forwarded4, double f0x4033FFFFFFFFFFFF, double %42)
  %44 = fdiv double %43, %32
  %45 = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %indvars.iv
  store double %44, ptr %45, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 19
  br i1 %exitcond.not, label %.loopexit, label %31, !llvm.loop !7

.loopexit:                                        ; preds = %31, %.ph.lver.orig
  %46 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv156
  store double 1.000000e+00, ptr %46, align 8
  %47 = getelementptr inbounds nuw i8, ptr %9, i64 144
  %48 = load double, ptr %47, align 8
  %49 = getelementptr i8, ptr %8, i64 2880
  %50 = getelementptr inbounds nuw i8, ptr %11, i64 144
  %51 = load double, ptr %50, align 8
  %52 = fadd double %48, %51
  store double %52, ptr %49, align 8
  %53 = getelementptr inbounds nuw i8, ptr %9, i64 136
  %54 = load double, ptr %53, align 8
  %55 = getelementptr i8, ptr %8, i64 2720
  %56 = getelementptr inbounds nuw i8, ptr %11, i64 136
  %57 = load double, ptr %56, align 8
  %58 = tail call double @llvm.fmuladd.f64(double %54, double %52, double %57)
  store double %58, ptr %55, align 8
  %59 = getelementptr inbounds nuw i8, ptr %9, i64 128
  %60 = load double, ptr %59, align 8
  %61 = getelementptr i8, ptr %8, i64 2560
  %62 = getelementptr inbounds nuw i8, ptr %11, i64 128
  %63 = load double, ptr %62, align 8
  %64 = tail call double @llvm.fmuladd.f64(double %60, double %58, double %63)
  store double %64, ptr %61, align 8
  %65 = getelementptr inbounds nuw i8, ptr %9, i64 120
  %66 = load double, ptr %65, align 8
  %67 = getelementptr i8, ptr %8, i64 2400
  %68 = getelementptr inbounds nuw i8, ptr %11, i64 120
  %69 = load double, ptr %68, align 8
  %70 = tail call double @llvm.fmuladd.f64(double %66, double %64, double %69)
  store double %70, ptr %67, align 8
  %71 = getelementptr inbounds nuw i8, ptr %9, i64 112
  %72 = load double, ptr %71, align 8
  %73 = getelementptr i8, ptr %8, i64 2240
  %74 = getelementptr inbounds nuw i8, ptr %11, i64 112
  %75 = load double, ptr %74, align 8
  %76 = tail call double @llvm.fmuladd.f64(double %72, double %70, double %75)
  store double %76, ptr %73, align 8
  %77 = getelementptr inbounds nuw i8, ptr %9, i64 104
  %78 = load double, ptr %77, align 8
  %79 = getelementptr i8, ptr %8, i64 2080
  %80 = getelementptr inbounds nuw i8, ptr %11, i64 104
  %81 = load double, ptr %80, align 8
  %82 = tail call double @llvm.fmuladd.f64(double %78, double %76, double %81)
  store double %82, ptr %79, align 8
  %83 = getelementptr inbounds nuw i8, ptr %9, i64 96
  %84 = load double, ptr %83, align 8
  %85 = getelementptr i8, ptr %8, i64 1920
  %86 = getelementptr inbounds nuw i8, ptr %11, i64 96
  %87 = load double, ptr %86, align 8
  %88 = tail call double @llvm.fmuladd.f64(double %84, double %82, double %87)
  store double %88, ptr %85, align 8
  %89 = getelementptr inbounds nuw i8, ptr %9, i64 88
  %90 = load double, ptr %89, align 8
  %91 = getelementptr i8, ptr %8, i64 1760
  %92 = getelementptr inbounds nuw i8, ptr %11, i64 88
  %93 = load double, ptr %92, align 8
  %94 = tail call double @llvm.fmuladd.f64(double %90, double %88, double %93)
  store double %94, ptr %91, align 8
  %95 = getelementptr inbounds nuw i8, ptr %9, i64 80
  %96 = load double, ptr %95, align 8
  %97 = getelementptr i8, ptr %8, i64 1600
  %98 = getelementptr inbounds nuw i8, ptr %11, i64 80
  %99 = load double, ptr %98, align 8
  %100 = tail call double @llvm.fmuladd.f64(double %96, double %94, double %99)
  store double %100, ptr %97, align 8
  %101 = getelementptr inbounds nuw i8, ptr %9, i64 72
  %102 = load double, ptr %101, align 8
  %103 = getelementptr i8, ptr %8, i64 1440
  %104 = getelementptr inbounds nuw i8, ptr %11, i64 72
  %105 = load double, ptr %104, align 8
  %106 = tail call double @llvm.fmuladd.f64(double %102, double %100, double %105)
  store double %106, ptr %103, align 8
  %107 = getelementptr inbounds nuw i8, ptr %9, i64 64
  %108 = load double, ptr %107, align 8
  %109 = getelementptr i8, ptr %8, i64 1280
  %110 = getelementptr inbounds nuw i8, ptr %11, i64 64
  %111 = load double, ptr %110, align 8
  %112 = tail call double @llvm.fmuladd.f64(double %108, double %106, double %111)
  store double %112, ptr %109, align 8
  %113 = getelementptr inbounds nuw i8, ptr %9, i64 56
  %114 = load double, ptr %113, align 8
  %115 = getelementptr i8, ptr %8, i64 1120
  %116 = getelementptr inbounds nuw i8, ptr %11, i64 56
  %117 = load double, ptr %116, align 8
  %118 = tail call double @llvm.fmuladd.f64(double %114, double %112, double %117)
  store double %118, ptr %115, align 8
  %119 = getelementptr inbounds nuw i8, ptr %9, i64 48
  %120 = load double, ptr %119, align 8
  %121 = getelementptr i8, ptr %8, i64 960
  %122 = getelementptr inbounds nuw i8, ptr %11, i64 48
  %123 = load double, ptr %122, align 8
  %124 = tail call double @llvm.fmuladd.f64(double %120, double %118, double %123)
  store double %124, ptr %121, align 8
  %125 = getelementptr inbounds nuw i8, ptr %9, i64 40
  %126 = load double, ptr %125, align 8
  %127 = getelementptr i8, ptr %8, i64 800
  %128 = getelementptr inbounds nuw i8, ptr %11, i64 40
  %129 = load double, ptr %128, align 8
  %130 = tail call double @llvm.fmuladd.f64(double %126, double %124, double %129)
  store double %130, ptr %127, align 8
  %131 = getelementptr inbounds nuw i8, ptr %9, i64 32
  %132 = load double, ptr %131, align 8
  %133 = getelementptr i8, ptr %8, i64 640
  %134 = getelementptr inbounds nuw i8, ptr %11, i64 32
  %135 = load double, ptr %134, align 8
  %136 = tail call double @llvm.fmuladd.f64(double %132, double %130, double %135)
  store double %136, ptr %133, align 8
  %137 = getelementptr inbounds nuw i8, ptr %9, i64 24
  %138 = load double, ptr %137, align 8
  %139 = getelementptr i8, ptr %8, i64 480
  %140 = getelementptr inbounds nuw i8, ptr %11, i64 24
  %141 = load double, ptr %140, align 8
  %142 = tail call double @llvm.fmuladd.f64(double %138, double %136, double %141)
  store double %142, ptr %139, align 8
  %143 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %144 = load double, ptr %143, align 8
  %145 = getelementptr i8, ptr %8, i64 320
  %146 = getelementptr inbounds nuw i8, ptr %11, i64 16
  %147 = load double, ptr %146, align 8
  %148 = tail call double @llvm.fmuladd.f64(double %144, double %142, double %147)
  store double %148, ptr %145, align 8
  %149 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %150 = load double, ptr %149, align 8
  %151 = getelementptr i8, ptr %8, i64 160
  %152 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %153 = load double, ptr %152, align 8
  %154 = tail call double @llvm.fmuladd.f64(double %150, double %148, double %153)
  store double %154, ptr %151, align 8
  %indvars.iv.next157 = add nuw nsw i64 %indvars.iv156, 1
  %exitcond159.not = icmp eq i64 %indvars.iv.next157, 19
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond159.not, label %.lver.check12, label %.lver.check, !llvm.loop !9

.lver.check12:                                    ; preds = %.loopexit, %.loopexit14
  %indvar5 = phi i64 [ %indvar.next6, %.loopexit14 ], [ 0, %.loopexit ]
  %indvars.iv167 = phi i64 [ %indvars.iv.next168, %.loopexit14 ], [ 1, %.loopexit ]
  %155 = mul nuw nsw i64 %indvar5, 160
  %156 = add nuw i64 %155, 312
  %scevgep7 = getelementptr i8, ptr %2, i64 %156
  %scevgep8 = getelementptr i8, ptr %3, i64 %156
  %157 = getelementptr inbounds nuw [160 x i8], ptr %0, i64 %indvars.iv167
  store double 1.000000e+00, ptr %157, align 8
  %158 = getelementptr inbounds nuw [160 x i8], ptr %2, i64 %indvars.iv167
  store double 0.000000e+00, ptr %158, align 8
  %159 = load double, ptr %157, align 8
  %160 = getelementptr inbounds nuw [160 x i8], ptr %3, i64 %indvars.iv167
  store double %159, ptr %160, align 8
  %161 = getelementptr [160 x i8], ptr %1, i64 %indvars.iv167
  %162 = getelementptr i8, ptr %161, i64 -160
  %163 = getelementptr inbounds nuw i8, ptr %161, i64 160
  %bound09 = icmp ult ptr %158, %scevgep8
  %bound110 = icmp ult ptr %160, %scevgep7
  %found.conflict11 = and i1 %bound09, %bound110
  br i1 %found.conflict11, label %.ph13.lver.orig, label %.ph13

.ph13.lver.orig:                                  ; preds = %.lver.check12, %.ph13.lver.orig
  %indvars.iv160.lver.orig = phi i64 [ %indvars.iv.next161.lver.orig, %.ph13.lver.orig ], [ 1, %.lver.check12 ]
  %164 = add nsw i64 %indvars.iv160.lver.orig, -1
  %165 = getelementptr inbounds [8 x i8], ptr %158, i64 %164
  %166 = load double, ptr %165, align 8
  %167 = tail call double @llvm.fmuladd.f64(double %166, double f0xC023FFFFFFFFFFFF, double f0x4034FFFFFFFFFFFF)
  %168 = fdiv double f0x4023FFFFFFFFFFFF, %167
  %169 = getelementptr inbounds nuw [8 x i8], ptr %158, i64 %indvars.iv160.lver.orig
  store double %168, ptr %169, align 8
  %170 = getelementptr inbounds nuw [8 x i8], ptr %162, i64 %indvars.iv160.lver.orig
  %171 = load double, ptr %170, align 8
  %172 = getelementptr inbounds nuw [8 x i8], ptr %161, i64 %indvars.iv160.lver.orig
  %173 = load double, ptr %172, align 8
  %174 = fmul double %173, f0xC0437FFFFFFFFFFF
  %175 = tail call double @llvm.fmuladd.f64(double %171, double f0x4033FFFFFFFFFFFF, double %174)
  %176 = getelementptr inbounds nuw [8 x i8], ptr %163, i64 %indvars.iv160.lver.orig
  %177 = load double, ptr %176, align 8
  %178 = tail call double @llvm.fmuladd.f64(double %177, double f0x4033FFFFFFFFFFFF, double %175)
  %179 = getelementptr inbounds [8 x i8], ptr %160, i64 %164
  %180 = load double, ptr %179, align 8
  %181 = tail call double @llvm.fmuladd.f64(double %180, double f0x4023FFFFFFFFFFFF, double %178)
  %182 = fdiv double %181, %167
  %183 = getelementptr inbounds nuw [8 x i8], ptr %160, i64 %indvars.iv160.lver.orig
  store double %182, ptr %183, align 8
  %indvars.iv.next161.lver.orig = add nuw nsw i64 %indvars.iv160.lver.orig, 1
  %exitcond163.not.lver.orig = icmp eq i64 %indvars.iv.next161.lver.orig, 19
  br i1 %exitcond163.not.lver.orig, label %.loopexit14, label %.ph13.lver.orig, !llvm.loop !10

.ph13:                                            ; preds = %.lver.check12
  %load_initial16 = load double, ptr %158, align 8
  %load_initial18 = load double, ptr %160, align 8
  br label %184

184:                                              ; preds = %.ph13, %184
  %store_forwarded19 = phi double [ %load_initial18, %.ph13 ], [ %198, %184 ]
  %store_forwarded17 = phi double [ %load_initial16, %.ph13 ], [ %186, %184 ]
  %indvars.iv160 = phi i64 [ 1, %.ph13 ], [ %indvars.iv.next161, %184 ]
  %185 = tail call double @llvm.fmuladd.f64(double %store_forwarded17, double f0xC023FFFFFFFFFFFF, double f0x4034FFFFFFFFFFFF)
  %186 = fdiv double f0x4023FFFFFFFFFFFF, %185
  %187 = getelementptr inbounds nuw [8 x i8], ptr %158, i64 %indvars.iv160
  store double %186, ptr %187, align 8
  %188 = getelementptr inbounds nuw [8 x i8], ptr %162, i64 %indvars.iv160
  %189 = load double, ptr %188, align 8
  %190 = getelementptr inbounds nuw [8 x i8], ptr %161, i64 %indvars.iv160
  %191 = load double, ptr %190, align 8
  %192 = fmul double %191, f0xC0437FFFFFFFFFFF
  %193 = tail call double @llvm.fmuladd.f64(double %189, double f0x4033FFFFFFFFFFFF, double %192)
  %194 = getelementptr inbounds nuw [8 x i8], ptr %163, i64 %indvars.iv160
  %195 = load double, ptr %194, align 8
  %196 = tail call double @llvm.fmuladd.f64(double %195, double f0x4033FFFFFFFFFFFF, double %193)
  %197 = tail call double @llvm.fmuladd.f64(double %store_forwarded19, double f0x4023FFFFFFFFFFFF, double %196)
  %198 = fdiv double %197, %185
  %199 = getelementptr inbounds nuw [8 x i8], ptr %160, i64 %indvars.iv160
  store double %198, ptr %199, align 8
  %indvars.iv.next161 = add nuw nsw i64 %indvars.iv160, 1
  %exitcond163.not = icmp eq i64 %indvars.iv.next161, 19
  br i1 %exitcond163.not, label %.loopexit14, label %184, !llvm.loop !10

.loopexit14:                                      ; preds = %184, %.ph13.lver.orig
  %200 = getelementptr inbounds nuw i8, ptr %157, i64 152
  store double 1.000000e+00, ptr %200, align 8
  %201 = getelementptr inbounds nuw i8, ptr %158, i64 144
  %202 = load double, ptr %201, align 8
  %203 = getelementptr inbounds nuw i8, ptr %157, i64 144
  %204 = getelementptr inbounds nuw i8, ptr %160, i64 144
  %205 = load double, ptr %204, align 8
  %206 = fadd double %202, %205
  store double %206, ptr %203, align 8
  %207 = getelementptr inbounds nuw i8, ptr %158, i64 136
  %208 = load double, ptr %207, align 8
  %209 = getelementptr inbounds nuw i8, ptr %157, i64 136
  %210 = getelementptr inbounds nuw i8, ptr %160, i64 136
  %211 = load double, ptr %210, align 8
  %212 = tail call double @llvm.fmuladd.f64(double %208, double %206, double %211)
  store double %212, ptr %209, align 8
  %213 = getelementptr inbounds nuw i8, ptr %158, i64 128
  %214 = load double, ptr %213, align 8
  %215 = getelementptr inbounds nuw i8, ptr %157, i64 128
  %216 = getelementptr inbounds nuw i8, ptr %160, i64 128
  %217 = load double, ptr %216, align 8
  %218 = tail call double @llvm.fmuladd.f64(double %214, double %212, double %217)
  store double %218, ptr %215, align 8
  %219 = getelementptr inbounds nuw i8, ptr %158, i64 120
  %220 = load double, ptr %219, align 8
  %221 = getelementptr inbounds nuw i8, ptr %157, i64 120
  %222 = getelementptr inbounds nuw i8, ptr %160, i64 120
  %223 = load double, ptr %222, align 8
  %224 = tail call double @llvm.fmuladd.f64(double %220, double %218, double %223)
  store double %224, ptr %221, align 8
  %225 = getelementptr inbounds nuw i8, ptr %158, i64 112
  %226 = load double, ptr %225, align 8
  %227 = getelementptr inbounds nuw i8, ptr %157, i64 112
  %228 = getelementptr inbounds nuw i8, ptr %160, i64 112
  %229 = load double, ptr %228, align 8
  %230 = tail call double @llvm.fmuladd.f64(double %226, double %224, double %229)
  store double %230, ptr %227, align 8
  %231 = getelementptr inbounds nuw i8, ptr %158, i64 104
  %232 = load double, ptr %231, align 8
  %233 = getelementptr inbounds nuw i8, ptr %157, i64 104
  %234 = getelementptr inbounds nuw i8, ptr %160, i64 104
  %235 = load double, ptr %234, align 8
  %236 = tail call double @llvm.fmuladd.f64(double %232, double %230, double %235)
  store double %236, ptr %233, align 8
  %237 = getelementptr inbounds nuw i8, ptr %158, i64 96
  %238 = load double, ptr %237, align 8
  %239 = getelementptr inbounds nuw i8, ptr %157, i64 96
  %240 = getelementptr inbounds nuw i8, ptr %160, i64 96
  %241 = load double, ptr %240, align 8
  %242 = tail call double @llvm.fmuladd.f64(double %238, double %236, double %241)
  store double %242, ptr %239, align 8
  %243 = getelementptr inbounds nuw i8, ptr %158, i64 88
  %244 = load double, ptr %243, align 8
  %245 = getelementptr inbounds nuw i8, ptr %157, i64 88
  %246 = getelementptr inbounds nuw i8, ptr %160, i64 88
  %247 = load double, ptr %246, align 8
  %248 = tail call double @llvm.fmuladd.f64(double %244, double %242, double %247)
  store double %248, ptr %245, align 8
  %249 = getelementptr inbounds nuw i8, ptr %158, i64 80
  %250 = load double, ptr %249, align 8
  %251 = getelementptr inbounds nuw i8, ptr %157, i64 80
  %252 = getelementptr inbounds nuw i8, ptr %160, i64 80
  %253 = load double, ptr %252, align 8
  %254 = tail call double @llvm.fmuladd.f64(double %250, double %248, double %253)
  store double %254, ptr %251, align 8
  %255 = getelementptr inbounds nuw i8, ptr %158, i64 72
  %256 = load double, ptr %255, align 8
  %257 = getelementptr inbounds nuw i8, ptr %157, i64 72
  %258 = getelementptr inbounds nuw i8, ptr %160, i64 72
  %259 = load double, ptr %258, align 8
  %260 = tail call double @llvm.fmuladd.f64(double %256, double %254, double %259)
  store double %260, ptr %257, align 8
  %261 = getelementptr inbounds nuw i8, ptr %158, i64 64
  %262 = load double, ptr %261, align 8
  %263 = getelementptr inbounds nuw i8, ptr %157, i64 64
  %264 = getelementptr inbounds nuw i8, ptr %160, i64 64
  %265 = load double, ptr %264, align 8
  %266 = tail call double @llvm.fmuladd.f64(double %262, double %260, double %265)
  store double %266, ptr %263, align 8
  %267 = getelementptr inbounds nuw i8, ptr %158, i64 56
  %268 = load double, ptr %267, align 8
  %269 = getelementptr inbounds nuw i8, ptr %157, i64 56
  %270 = getelementptr inbounds nuw i8, ptr %160, i64 56
  %271 = load double, ptr %270, align 8
  %272 = tail call double @llvm.fmuladd.f64(double %268, double %266, double %271)
  store double %272, ptr %269, align 8
  %273 = getelementptr inbounds nuw i8, ptr %158, i64 48
  %274 = load double, ptr %273, align 8
  %275 = getelementptr inbounds nuw i8, ptr %157, i64 48
  %276 = getelementptr inbounds nuw i8, ptr %160, i64 48
  %277 = load double, ptr %276, align 8
  %278 = tail call double @llvm.fmuladd.f64(double %274, double %272, double %277)
  store double %278, ptr %275, align 8
  %279 = getelementptr inbounds nuw i8, ptr %158, i64 40
  %280 = load double, ptr %279, align 8
  %281 = getelementptr inbounds nuw i8, ptr %157, i64 40
  %282 = getelementptr inbounds nuw i8, ptr %160, i64 40
  %283 = load double, ptr %282, align 8
  %284 = tail call double @llvm.fmuladd.f64(double %280, double %278, double %283)
  store double %284, ptr %281, align 8
  %285 = getelementptr inbounds nuw i8, ptr %158, i64 32
  %286 = load double, ptr %285, align 8
  %287 = getelementptr inbounds nuw i8, ptr %157, i64 32
  %288 = getelementptr inbounds nuw i8, ptr %160, i64 32
  %289 = load double, ptr %288, align 8
  %290 = tail call double @llvm.fmuladd.f64(double %286, double %284, double %289)
  store double %290, ptr %287, align 8
  %291 = getelementptr inbounds nuw i8, ptr %158, i64 24
  %292 = load double, ptr %291, align 8
  %293 = getelementptr inbounds nuw i8, ptr %157, i64 24
  %294 = getelementptr inbounds nuw i8, ptr %160, i64 24
  %295 = load double, ptr %294, align 8
  %296 = tail call double @llvm.fmuladd.f64(double %292, double %290, double %295)
  store double %296, ptr %293, align 8
  %297 = getelementptr inbounds nuw i8, ptr %158, i64 16
  %298 = load double, ptr %297, align 8
  %299 = getelementptr inbounds nuw i8, ptr %157, i64 16
  %300 = getelementptr inbounds nuw i8, ptr %160, i64 16
  %301 = load double, ptr %300, align 8
  %302 = tail call double @llvm.fmuladd.f64(double %298, double %296, double %301)
  store double %302, ptr %299, align 8
  %303 = getelementptr inbounds nuw i8, ptr %158, i64 8
  %304 = load double, ptr %303, align 8
  %305 = getelementptr inbounds nuw i8, ptr %157, i64 8
  %306 = getelementptr inbounds nuw i8, ptr %160, i64 8
  %307 = load double, ptr %306, align 8
  %308 = tail call double @llvm.fmuladd.f64(double %304, double %302, double %307)
  store double %308, ptr %305, align 8
  %indvars.iv.next168 = add nuw nsw i64 %indvars.iv167, 1
  %exitcond170.not = icmp eq i64 %indvars.iv.next168, 19
  %indvar.next6 = add i64 %indvar5, 1
  br i1 %exitcond170.not, label %309, label %.lver.check12, !llvm.loop !11

309:                                              ; preds = %.loopexit14
  %310 = add nuw nsw i32 %.0151, 1
  %exitcond171.not = icmp eq i32 %310, 21
  br i1 %exitcond171.not, label %311, label %.preheader140, !llvm.loop !12

311:                                              ; preds = %309
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @print_array(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
  %2 = tail call ptr @__acrt_iob_func(i32 noundef 2) #8
  %fwrite = tail call i64 @fwrite(ptr nonnull @"??_C@_0BH@BAHBGBOE@?$DN?$DNBEGIN?5DUMP_ARRAYS?$DN?$DN?6?$AA@", i64 22, i64 1, ptr %2)
  %3 = tail call ptr @__acrt_iob_func(i32 noundef 2) #8
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @"??_C@_0P@DECFBDMA@begin?5dump?3?5?$CFs?$AA@", ptr noundef nonnull @"??_C@_01OMGOGALD@u?$AA@") #8
  br label %.preheader

.preheader:                                       ; preds = %1, %19
  %indvars.iv18 = phi i64 [ 0, %1 ], [ %indvars.iv.next19, %19 ]
  %5 = mul nuw nsw i64 %indvars.iv18, 20
  %6 = getelementptr inbounds nuw [160 x i8], ptr %0, i64 %indvars.iv18
  br label %7

7:                                                ; preds = %.preheader, %14
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %14 ]
  %8 = add nuw nsw i64 %indvars.iv, %5
  %9 = trunc nuw nsw i64 %8 to i32
  %10 = urem i32 %9, 20
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = tail call ptr @__acrt_iob_func(i32 noundef 2) #8
  %fputc = tail call i32 @fputc(i32 10, ptr %13)
  br label %14

14:                                               ; preds = %12, %7
  %15 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv
  %16 = load double, ptr %15, align 8
  %17 = tail call ptr @__acrt_iob_func(i32 noundef 2) #8
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @"??_C@_07MNEBLNNN@?$CF0?42lf?5?$AA@", double noundef %16) #8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 20
  br i1 %exitcond.not, label %19, label %7, !llvm.loop !13

19:                                               ; preds = %14
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  %exitcond21.not = icmp eq i64 %indvars.iv.next19, 20
  br i1 %exitcond21.not, label %20, label %.preheader, !llvm.loop !14

20:                                               ; preds = %19
  %21 = tail call ptr @__acrt_iob_func(i32 noundef 2) #8
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @"??_C@_0BB@MKOBOOGF@?6end?5?5?5dump?3?5?$CFs?6?$AA@", ptr noundef nonnull @"??_C@_01OMGOGALD@u?$AA@") #8
  %23 = tail call ptr @__acrt_iob_func(i32 noundef 2) #8
  %fwrite13 = tail call i64 @fwrite(ptr nonnull @"??_C@_0BH@MFLLIFEI@?$DN?$DNEND?5?5?5DUMP_ARRAYS?$DN?$DN?6?$AA@", i64 22, i64 1, ptr %23)
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare dso_local void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #5

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local ptr @__local_stdio_printf_options() local_unnamed_addr #0 comdat {
  ret ptr @__local_stdio_printf_options._OptionsStorage
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i32 @fprintf(ptr noundef %0, ptr noundef %1, ...) local_unnamed_addr #0 comdat {
  %3 = alloca ptr, align 8
  call void @llvm.va_start.p0(ptr nonnull %3)
  %4 = load ptr, ptr %3, align 8
  %5 = call i32 @_vfprintf_l(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef %4)
  call void @llvm.va_end.p0(ptr nonnull %3)
  ret i32 %5
}

declare dso_local ptr @__acrt_iob_func(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i32 @_vfprintf_l(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat {
  %5 = tail call ptr @__local_stdio_printf_options()
  %6 = load i64, ptr %5, align 8
  %7 = tail call i32 @__stdio_common_vfprintf(i64 noundef %6, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #8
  ret i32 %7
}

declare dso_local i32 @__stdio_common_vfprintf(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #7

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #6 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 24.0.0git (https://github.com/llvm/llvm-project.git 6f4196219399a3502cea3beb2d0c8c28b2241649)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "C:\\work\\llvm-profitability-research\\.tools\\corpus\\PolyBench\\stencils\\adi\\adi.c", directory: "C:\\work\\llvm-profitability-research")
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
