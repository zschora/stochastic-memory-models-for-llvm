; ModuleID = 'C:\work\llvm-profitability-research\.work\producer_consumer\producer_consumer.input.ll'
source_filename = "C:\\work\\llvm-profitability-research\\benchmarks\\producer_consumer.cpp"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc19.51.36260"

%rtti.TypeDescriptor30 = type { ptr, ptr, [31 x i8] }
%eh.CatchableType = type { i32, i32, i32, i32, i32, i32, i32 }
%rtti.TypeDescriptor19 = type { ptr, ptr, [20 x i8] }
%eh.CatchableTypeArray.3 = type { i32, [3 x i32] }
%eh.ThrowInfo = type { i32, i32, i32, i32 }
%rtti.CompleteObjectLocator = type { i32, i32, i32, i32, i32, i32 }
%rtti.ClassHierarchyDescriptor = type { i32, i32, i32, i32 }
%rtti.BaseClassDescriptor = type { i32, i32, i32, i32, i32, i32, i32 }
%"struct.bench::Args" = type { %"class.std::basic_string", i64, i32, i32 }
%"class.std::basic_string" = type { %"class.std::_Compressed_pair" }
%"class.std::_Compressed_pair" = type { %"class.std::_String_val" }
%"class.std::_String_val" = type { %"union.std::_String_val<std::_Simple_types<char>>::_Bxty", i64, i64 }
%"union.std::_String_val<std::_Simple_types<char>>::_Bxty" = type { ptr, [8 x i8] }
%class.anon = type { ptr, ptr, ptr, ptr, ptr }
%union._LARGE_INTEGER = type { i64 }
%"struct.std::_Fake_allocator" = type { i8 }
%"class.std::bad_array_new_length" = type { %"class.std::bad_alloc" }
%"class.std::bad_alloc" = type { %"class.std::exception" }
%"class.std::exception" = type { ptr, %struct.__std_exception_data }
%struct.__std_exception_data = type { ptr, i8 }

$"?parse_args@bench@@YA?AUArgs@1@HPEAPEAD_KHH@Z" = comdat any

$"?aligned_alloc64@bench@@YAPEAX_K@Z" = comdat any

$"?init_f64@bench@@YAXPEAN_K1@Z" = comdat any

$"?close_enough@bench@@YA_NNN@Z" = comdat any

$printf = comdat any

$"?hash_bytes@bench@@YA_KPEBX_K@Z" = comdat any

$"?pin_environment@bench@@YAXXZ" = comdat any

$"?c_str@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBAPEBDXZ" = comdat any

$"?aligned_free@bench@@YAXPEAX@Z" = comdat any

$"??1Args@bench@@QEAA@XZ" = comdat any

$"??0Args@bench@@QEAA@XZ" = comdat any

$"??4?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV01@QEBD@Z" = comdat any

$"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ" = comdat any

$"??$?0$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_Zero_then_variadic_args_t@1@@Z" = comdat any

$"?_Construct_empty@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ" = comdat any

$"??0?$allocator@D@std@@QEAA@XZ" = comdat any

$"??0?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ" = comdat any

$"??0_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ" = comdat any

$"?_Alloc_proxy@_Container_base0@std@@QEAAXAEBU_Fake_allocator@2@@Z" = comdat any

$"??$_Get_proxy_allocator@V?$allocator@D@std@@@std@@YA?AU_Fake_allocator@0@AEBV?$allocator@D@0@@Z" = comdat any

$"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ" = comdat any

$"?_Activate_SSO_buffer@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAXXZ" = comdat any

$"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z" = comdat any

$"?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAAAEAV?$allocator@D@2@XZ" = comdat any

$"?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD@Z" = comdat any

$"??$_Assign@D@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@QEBD_K@Z" = comdat any

$"??$_Convert_size@_K_K@std@@YA_K_K@Z" = comdat any

$"?length@?$_Narrow_char_traits@DH@std@@SA_KQEBD@Z" = comdat any

$"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAPEADXZ" = comdat any

$"??$_Traits_move_batch@U?$char_traits@D@std@@D@std@@YAXQEADQEBD_K@Z" = comdat any

$"??$_Reallocate_for@V<lambda_1>@?0???$_Assign@D@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV23@QEBD_K@Z@PEBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_1>@?0???$_Assign@D@01@AEAAAEAV01@QEBD0@Z@PEBD@Z" = comdat any

$"?_Large_mode_engaged@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBA_NXZ" = comdat any

$"??$_Unfancy@D@std@@YAPEADPEAD@Z" = comdat any

$"?move@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z" = comdat any

$"?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ" = comdat any

$"?_Xlen_string@std@@YAXXZ" = comdat any

$"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBA_K_K@Z" = comdat any

$"??$_Allocate_for_capacity@$0A@@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAPEADAEAV?$allocator@D@1@AEA_K@Z" = comdat any

$"?_Orphan_all@_Container_base0@std@@QEAAXXZ" = comdat any

$"??R<lambda_1>@?0???$_Assign@D@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV12@QEBD_K@Z@SA?A?<auto>@@QEAD10@Z" = comdat any

$"?_Deallocate_for_capacity@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAXAEAV?$allocator@D@2@QEAD_K@Z" = comdat any

$"??$_Construct_in_place@PEADAEBQEAD@std@@YAXAEAPEADAEBQEAD@Z" = comdat any

$"?max_size@?$_Default_allocator_traits@V?$allocator@D@std@@@std@@SA_KAEBV?$allocator@D@2@@Z" = comdat any

$"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBAAEBV?$allocator@D@2@XZ" = comdat any

$"??$max@_K@std@@YAAEB_KAEB_K0@Z" = comdat any

$"??$min@_K@std@@YAAEB_KAEB_K0@Z" = comdat any

$"??$_Max_limit@_J@std@@YA_JXZ" = comdat any

$"?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEBAAEBV?$allocator@D@2@XZ" = comdat any

$"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CA_K_K00@Z" = comdat any

$"??$_Allocate_at_least_helper@V?$allocator@D@std@@@std@@YAPEADAEAV?$allocator@D@0@AEA_K@Z" = comdat any

$"?allocate@?$allocator@D@std@@QEAAPEAD_K@Z" = comdat any

$"??$_Allocate@$0BA@U_Default_allocate_traits@std@@@std@@YAPEAX_K@Z" = comdat any

$"??$_Get_size_of_n@$00@std@@YA_K_K@Z" = comdat any

$"??$_Allocate_manually_vector_aligned@U_Default_allocate_traits@std@@@std@@YAPEAX_K@Z" = comdat any

$"?_Allocate@_Default_allocate_traits@std@@SAPEAX_K@Z" = comdat any

$"?_Throw_bad_array_new_length@std@@YAXXZ" = comdat any

$"??0bad_array_new_length@std@@QEAA@XZ" = comdat any

$"??0bad_array_new_length@std@@QEAA@AEBV01@@Z" = comdat any

$"??0bad_alloc@std@@QEAA@AEBV01@@Z" = comdat any

$"??0exception@std@@QEAA@AEBV01@@Z" = comdat any

$"??1bad_array_new_length@std@@UEAA@XZ" = comdat any

$"??0bad_alloc@std@@AEAA@QEBD@Z" = comdat any

$"?what@exception@std@@UEBAPEBDXZ" = comdat any

$"??0exception@std@@QEAA@QEBDH@Z" = comdat any

$"??_Gexception@std@@UEAAPEAXI@Z" = comdat any

$"??1exception@std@@UEAA@XZ" = comdat any

$"??_Gbad_alloc@std@@UEAAPEAXI@Z" = comdat any

$"??1bad_alloc@std@@UEAA@XZ" = comdat any

$"??_Gbad_array_new_length@std@@UEAAPEAXI@Z" = comdat any

$"??$_Traits_copy_batch@U?$char_traits@D@std@@D@std@@YAXQEADQEBD_K@Z" = comdat any

$"?copy@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z" = comdat any

$"?deallocate@?$allocator@D@std@@QEAAXQEAD_K@Z" = comdat any

$"??$_Deallocate@$0BA@@std@@YAXPEAX_K@Z" = comdat any

$"?_Adjust_manually_vector_aligned@std@@YAXAEAPEAXAEA_K@Z" = comdat any

$fprintf = comdat any

$_vfprintf_l = comdat any

$__local_stdio_printf_options = comdat any

$"?lcg@bench@@YA_KAEA_K@Z" = comdat any

$"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ" = comdat any

$"?_Tidy_deallocate@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ" = comdat any

$"??1?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@XZ" = comdat any

$"?_Switch_to_buf@_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAXXZ" = comdat any

$"??$_Destroy_in_place@PEAD@std@@YAXAEAPEAD@Z" = comdat any

$"??1?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ" = comdat any

$"??1_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ" = comdat any

$"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBAPEBDXZ" = comdat any

$"?qpc_ns_per_tick@bench@@YANXZ" = comdat any

$_Avx2WmemEnabledWeakValue = comdat any

$"??_C@_02GIPFHKNO@OK?$AA@" = comdat any

$"??_C@_04OOEBCMBF@FAIL?$AA@" = comdat any

$"??_C@_0L@OALJHCFB@VERIFY?5?$CFs?6?$AA@" = comdat any

$"??_C@_0P@MAICADEK@CHECK?5?$CF016llx?6?$AA@" = comdat any

$"??_C@_0BC@IMMJGDFL@producer_consumer?$AA@" = comdat any

$"??_C@_07CIFAGBMG@unknown?$AA@" = comdat any

$"??_C@_0BA@JFNIOLAK@string?5too?5long?$AA@" = comdat any

$"??_R0?AVbad_array_new_length@std@@@8" = comdat any

$"_CT??_R0?AVbad_array_new_length@std@@@8??0bad_array_new_length@std@@QEAA@AEBV01@@Z24" = comdat any

$"??_R0?AVbad_alloc@std@@@8" = comdat any

$"_CT??_R0?AVbad_alloc@std@@@8??0bad_alloc@std@@QEAA@AEBV01@@Z24" = comdat any

$"??_R0?AVexception@std@@@8" = comdat any

$"_CT??_R0?AVexception@std@@@8??0exception@std@@QEAA@AEBV01@@Z24" = comdat any

$"_CTA3?AVbad_array_new_length@std@@" = comdat any

$"_TI3?AVbad_array_new_length@std@@" = comdat any

$"??_C@_0BF@KINCDENJ@bad?5array?5new?5length?$AA@" = comdat any

$"??_7bad_array_new_length@std@@6B@" = comdat largest

$"??_R4bad_array_new_length@std@@6B@" = comdat any

$"??_R3bad_array_new_length@std@@8" = comdat any

$"??_R2bad_array_new_length@std@@8" = comdat any

$"??_R1A@?0A@EA@bad_array_new_length@std@@8" = comdat any

$"??_R1A@?0A@EA@bad_alloc@std@@8" = comdat any

$"??_R3bad_alloc@std@@8" = comdat any

$"??_R2bad_alloc@std@@8" = comdat any

$"??_R1A@?0A@EA@exception@std@@8" = comdat any

$"??_R3exception@std@@8" = comdat any

$"??_R2exception@std@@8" = comdat any

$"??_7bad_alloc@std@@6B@" = comdat largest

$"??_R4bad_alloc@std@@6B@" = comdat any

$"??_7exception@std@@6B@" = comdat largest

$"??_R4exception@std@@6B@" = comdat any

$"??_C@_0BC@EOODALEL@Unknown?5exception?$AA@" = comdat any

$"??_C@_0BP@DHDIOGLK@allocation?5failed?5?$CI?$CFzu?5bytes?$CJ?6?$AA@" = comdat any

$"?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA" = comdat any

$"??_C@_0CO@BEMGKDJM@warning?3?5SetProcessAffinityMask?5@" = comdat any

$"??_C@_0CI@JIDNHJK@warning?3?5SetPriorityClass?5failed@" = comdat any

$"??_C@_0P@MGLMMHNL@TRIAL?5?$CFd?5?$CF?43f?6?$AA@" = comdat any

$"??_C@_0DA@PKGLKAHC@META?5case?$DN?$CFs?5config?$DN?$CFs?5n?$DN?$CFzu?5rep@" = comdat any

@_Avx2WmemEnabledWeakValue = weak_odr dso_local local_unnamed_addr global i32 0, comdat, align 4
@g_fn = internal global ptr @pc_kernel, align 8
@"??_C@_02GIPFHKNO@OK?$AA@" = linkonce_odr dso_local unnamed_addr constant [3 x i8] c"OK\00", comdat, align 4
@"??_C@_04OOEBCMBF@FAIL?$AA@" = linkonce_odr dso_local unnamed_addr constant [5 x i8] c"FAIL\00", comdat, align 4
@"??_C@_0L@OALJHCFB@VERIFY?5?$CFs?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [11 x i8] c"VERIFY %s\0A\00", comdat, align 8
@"??_C@_0P@MAICADEK@CHECK?5?$CF016llx?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"CHECK %016llx\0A\00", comdat, align 8
@"??_C@_0BC@IMMJGDFL@producer_consumer?$AA@" = linkonce_odr dso_local unnamed_addr constant [18 x i8] c"producer_consumer\00", comdat, align 8
@"??_C@_07CIFAGBMG@unknown?$AA@" = linkonce_odr dso_local unnamed_addr constant [8 x i8] c"unknown\00", comdat, align 8
@"??_C@_0BA@JFNIOLAK@string?5too?5long?$AA@" = linkonce_odr dso_local unnamed_addr constant [16 x i8] c"string too long\00", comdat, align 8
@"??_7type_info@@6B@" = external constant ptr
@"??_R0?AVbad_array_new_length@std@@@8" = linkonce_odr global %rtti.TypeDescriptor30 { ptr @"??_7type_info@@6B@", ptr null, [31 x i8] c".?AVbad_array_new_length@std@@\00" }, comdat
@__ImageBase = external dso_local constant i8
@"_CT??_R0?AVbad_array_new_length@std@@@8??0bad_array_new_length@std@@QEAA@AEBV01@@Z24" = linkonce_odr unnamed_addr constant %eh.CatchableType { i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AVbad_array_new_length@std@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 0, i32 -1, i32 0, i32 24, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??0bad_array_new_length@std@@QEAA@AEBV01@@Z" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, section ".xdata", comdat
@"??_R0?AVbad_alloc@std@@@8" = linkonce_odr global %rtti.TypeDescriptor19 { ptr @"??_7type_info@@6B@", ptr null, [20 x i8] c".?AVbad_alloc@std@@\00" }, comdat
@"_CT??_R0?AVbad_alloc@std@@@8??0bad_alloc@std@@QEAA@AEBV01@@Z24" = linkonce_odr unnamed_addr constant %eh.CatchableType { i32 16, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AVbad_alloc@std@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 0, i32 -1, i32 0, i32 24, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??0bad_alloc@std@@QEAA@AEBV01@@Z" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, section ".xdata", comdat
@"??_R0?AVexception@std@@@8" = linkonce_odr global %rtti.TypeDescriptor19 { ptr @"??_7type_info@@6B@", ptr null, [20 x i8] c".?AVexception@std@@\00" }, comdat
@"_CT??_R0?AVexception@std@@@8??0exception@std@@QEAA@AEBV01@@Z24" = linkonce_odr unnamed_addr constant %eh.CatchableType { i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AVexception@std@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 0, i32 -1, i32 0, i32 24, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??0exception@std@@QEAA@AEBV01@@Z" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, section ".xdata", comdat
@"_CTA3?AVbad_array_new_length@std@@" = linkonce_odr unnamed_addr constant %eh.CatchableTypeArray.3 { i32 3, [3 x i32] [i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"_CT??_R0?AVbad_array_new_length@std@@@8??0bad_array_new_length@std@@QEAA@AEBV01@@Z24" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"_CT??_R0?AVbad_alloc@std@@@8??0bad_alloc@std@@QEAA@AEBV01@@Z24" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"_CT??_R0?AVexception@std@@@8??0exception@std@@QEAA@AEBV01@@Z24" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32)] }, section ".xdata", comdat
@"_TI3?AVbad_array_new_length@std@@" = linkonce_odr unnamed_addr constant %eh.ThrowInfo { i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??1bad_array_new_length@std@@UEAA@XZ" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"_CTA3?AVbad_array_new_length@std@@" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, section ".xdata", comdat
@"??_C@_0BF@KINCDENJ@bad?5array?5new?5length?$AA@" = linkonce_odr dso_local unnamed_addr constant [21 x i8] c"bad array new length\00", comdat, align 8
@0 = private constant { [3 x ptr] } { [3 x ptr] [ptr @"??_R4bad_array_new_length@std@@6B@", ptr @"??_Ebad_array_new_length@std@@UEAAPEAXI@Z", ptr @"?what@exception@std@@UEBAPEBDXZ"] }, comdat($"??_7bad_array_new_length@std@@6B@")
@"??_R4bad_array_new_length@std@@6B@" = linkonce_odr constant %rtti.CompleteObjectLocator { i32 1, i32 0, i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AVbad_array_new_length@std@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R3bad_array_new_length@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R4bad_array_new_length@std@@6B@" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, comdat
@"??_R3bad_array_new_length@std@@8" = linkonce_odr constant %rtti.ClassHierarchyDescriptor { i32 0, i32 0, i32 3, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R2bad_array_new_length@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, comdat
@"??_R2bad_array_new_length@std@@8" = linkonce_odr constant [4 x i32] [i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R1A@?0A@EA@bad_array_new_length@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R1A@?0A@EA@bad_alloc@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R1A@?0A@EA@exception@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 0], comdat
@"??_R1A@?0A@EA@bad_array_new_length@std@@8" = linkonce_odr constant %rtti.BaseClassDescriptor { i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AVbad_array_new_length@std@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 2, i32 0, i32 -1, i32 0, i32 64, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R3bad_array_new_length@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, comdat
@"??_R1A@?0A@EA@bad_alloc@std@@8" = linkonce_odr constant %rtti.BaseClassDescriptor { i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AVbad_alloc@std@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 1, i32 0, i32 -1, i32 0, i32 64, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R3bad_alloc@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, comdat
@"??_R3bad_alloc@std@@8" = linkonce_odr constant %rtti.ClassHierarchyDescriptor { i32 0, i32 0, i32 2, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R2bad_alloc@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, comdat
@"??_R2bad_alloc@std@@8" = linkonce_odr constant [3 x i32] [i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R1A@?0A@EA@bad_alloc@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R1A@?0A@EA@exception@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 0], comdat
@"??_R1A@?0A@EA@exception@std@@8" = linkonce_odr constant %rtti.BaseClassDescriptor { i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AVexception@std@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 0, i32 0, i32 -1, i32 0, i32 64, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R3exception@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, comdat
@"??_R3exception@std@@8" = linkonce_odr constant %rtti.ClassHierarchyDescriptor { i32 0, i32 0, i32 1, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R2exception@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, comdat
@"??_R2exception@std@@8" = linkonce_odr constant [2 x i32] [i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R1A@?0A@EA@exception@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 0], comdat
@1 = private constant { [3 x ptr] } { [3 x ptr] [ptr @"??_R4bad_alloc@std@@6B@", ptr @"??_Ebad_alloc@std@@UEAAPEAXI@Z", ptr @"?what@exception@std@@UEBAPEBDXZ"] }, comdat($"??_7bad_alloc@std@@6B@")
@"??_R4bad_alloc@std@@6B@" = linkonce_odr constant %rtti.CompleteObjectLocator { i32 1, i32 0, i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AVbad_alloc@std@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R3bad_alloc@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R4bad_alloc@std@@6B@" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, comdat
@2 = private constant { [3 x ptr] } { [3 x ptr] [ptr @"??_R4exception@std@@6B@", ptr @"??_Eexception@std@@UEAAPEAXI@Z", ptr @"?what@exception@std@@UEBAPEBDXZ"] }, comdat($"??_7exception@std@@6B@")
@"??_R4exception@std@@6B@" = linkonce_odr constant %rtti.CompleteObjectLocator { i32 1, i32 0, i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AVexception@std@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R3exception@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R4exception@std@@6B@" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, comdat
@"??_C@_0BC@EOODALEL@Unknown?5exception?$AA@" = linkonce_odr dso_local unnamed_addr constant [18 x i8] c"Unknown exception\00", comdat, align 8
@"??_C@_0BP@DHDIOGLK@allocation?5failed?5?$CI?$CFzu?5bytes?$CJ?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [31 x i8] c"allocation failed (%zu bytes)\0A\00", comdat, align 8
@"?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA" = linkonce_odr dso_local global i64 0, comdat, align 8
@"??_C@_0CO@BEMGKDJM@warning?3?5SetProcessAffinityMask?5@" = linkonce_odr dso_local unnamed_addr constant [46 x i8] c"warning: SetProcessAffinityMask failed (%lu)\0A\00", comdat, align 8
@"??_C@_0CI@JIDNHJK@warning?3?5SetPriorityClass?5failed@" = linkonce_odr dso_local unnamed_addr constant [40 x i8] c"warning: SetPriorityClass failed (%lu)\0A\00", comdat, align 8
@"??_C@_0P@MGLMMHNL@TRIAL?5?$CFd?5?$CF?43f?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"TRIAL %d %.3f\0A\00", comdat, align 8
@"??_C@_0DA@PKGLKAHC@META?5case?$DN?$CFs?5config?$DN?$CFs?5n?$DN?$CFzu?5rep@" = linkonce_odr dso_local unnamed_addr constant [48 x i8] c"META case=%s config=%s n=%zu reps=%d trials=%d\0A\00", comdat, align 8

@"??_7bad_array_new_length@std@@6B@" = alias ptr, getelementptr inbounds ({ [3 x ptr] }, ptr @0, i32 0, i32 0, i32 1)
@"??_7bad_alloc@std@@6B@" = alias ptr, getelementptr inbounds ({ [3 x ptr] }, ptr @1, i32 0, i32 0, i32 1)
@"??_7exception@std@@6B@" = alias ptr, getelementptr inbounds ({ [3 x ptr] }, ptr @2, i32 0, i32 0, i32 1)
@"??_Eexception@std@@UEAAPEAXI@Z" = weak dso_local unnamed_addr alias ptr (ptr, i32), ptr @"??_Gexception@std@@UEAAPEAXI@Z"
@"??_Ebad_alloc@std@@UEAAPEAXI@Z" = weak dso_local unnamed_addr alias ptr (ptr, i32), ptr @"??_Gbad_alloc@std@@UEAAPEAXI@Z"
@"??_Ebad_array_new_length@std@@UEAAPEAXI@Z" = weak dso_local unnamed_addr alias ptr (ptr, i32), ptr @"??_Gbad_array_new_length@std@@UEAAPEAXI@Z"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @pc_kernel(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef writeonly captures(none) %1, ptr noalias nofree noundef captures(none) %2, i64 noundef %3) #0 {
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %4
  %min.iters.check = icmp ult i64 %3, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check20 = icmp ult i64 %3, 16
  br i1 %min.iters.check20, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %5 = and i64 %3, 12
  %n.vec = and i64 %3, -16
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %6 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 32
  %8 = getelementptr inbounds nuw i8, ptr %6, i64 64
  %9 = getelementptr inbounds nuw i8, ptr %6, i64 96
  %wide.load = load <4 x double>, ptr %6, align 8
  %wide.load21 = load <4 x double>, ptr %7, align 8
  %wide.load22 = load <4 x double>, ptr %8, align 8
  %wide.load23 = load <4 x double>, ptr %9, align 8
  %10 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load, <4 x double> splat (double 1.500000e+00), <4 x double> splat (double 2.000000e+00))
  %11 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load21, <4 x double> splat (double 1.500000e+00), <4 x double> splat (double 2.000000e+00))
  %12 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load22, <4 x double> splat (double 1.500000e+00), <4 x double> splat (double 2.000000e+00))
  %13 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load23, <4 x double> splat (double 1.500000e+00), <4 x double> splat (double 2.000000e+00))
  %14 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 32
  %16 = getelementptr inbounds nuw i8, ptr %14, i64 64
  %17 = getelementptr inbounds nuw i8, ptr %14, i64 96
  store <4 x double> %10, ptr %14, align 8
  store <4 x double> %11, ptr %15, align 8
  store <4 x double> %12, ptr %16, align 8
  store <4 x double> %13, ptr %17, align 8
  %index.next = add nuw i64 %index, 16
  %18 = icmp eq i64 %index.next, %n.vec
  br i1 %18, label %middle.block, label %vector.body, !llvm.loop !17

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %iter.check43, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %5, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !22

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec24 = and i64 %3, -4
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index25 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next27, %vec.epilog.vector.body ]
  %19 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index25
  %wide.load26 = load <4 x double>, ptr %19, align 8
  %20 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load26, <4 x double> splat (double 1.500000e+00), <4 x double> splat (double 2.000000e+00))
  %21 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index25
  store <4 x double> %20, ptr %21, align 8
  %index.next27 = add nuw i64 %index25, 4
  %22 = icmp eq i64 %index.next27, %n.vec24
  br i1 %22, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !23

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n28 = icmp eq i64 %3, %n.vec24
  br i1 %cmp.n28, label %iter.check43, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.01315.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec24, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.01315 = phi i64 [ %27, %.lr.ph ], [ %.01315.ph, %.lr.ph.preheader ]
  %23 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01315
  %24 = load double, ptr %23, align 8
  %25 = tail call double @llvm.fmuladd.f64(double %24, double 1.500000e+00, double 2.000000e+00)
  %26 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.01315
  store double %25, ptr %26, align 8
  %27 = add nuw i64 %.01315, 1
  %exitcond.not = icmp eq i64 %27, %3
  br i1 %exitcond.not, label %iter.check43, label %.lr.ph, !llvm.loop !25

iter.check43:                                     ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  %min.iters.check29 = icmp ult i64 %3, 4
  br i1 %min.iters.check29, label %.lr.ph17.preheader, label %vector.main.loop.iter.check30

vector.main.loop.iter.check30:                    ; preds = %iter.check43
  %min.iters.check31 = icmp ult i64 %3, 16
  br i1 %min.iters.check31, label %vec.epilog.ph47, label %vector.ph32

vector.ph32:                                      ; preds = %vector.main.loop.iter.check30
  %28 = and i64 %3, 12
  %n.vec33 = and i64 %3, -16
  br label %vector.body34

vector.body34:                                    ; preds = %vector.ph32, %vector.body34
  %index35 = phi i64 [ 0, %vector.ph32 ], [ %index.next40, %vector.body34 ]
  %29 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index35
  %30 = getelementptr inbounds nuw i8, ptr %29, i64 32
  %31 = getelementptr inbounds nuw i8, ptr %29, i64 64
  %32 = getelementptr inbounds nuw i8, ptr %29, i64 96
  %wide.load36 = load <4 x double>, ptr %29, align 8
  %wide.load37 = load <4 x double>, ptr %30, align 8
  %wide.load38 = load <4 x double>, ptr %31, align 8
  %wide.load39 = load <4 x double>, ptr %32, align 8
  %33 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load36, <4 x double> splat (double 5.000000e-01), <4 x double> splat (double -1.000000e+00))
  %34 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load37, <4 x double> splat (double 5.000000e-01), <4 x double> splat (double -1.000000e+00))
  %35 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load38, <4 x double> splat (double 5.000000e-01), <4 x double> splat (double -1.000000e+00))
  %36 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load39, <4 x double> splat (double 5.000000e-01), <4 x double> splat (double -1.000000e+00))
  %37 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index35
  %38 = getelementptr inbounds nuw i8, ptr %37, i64 32
  %39 = getelementptr inbounds nuw i8, ptr %37, i64 64
  %40 = getelementptr inbounds nuw i8, ptr %37, i64 96
  store <4 x double> %33, ptr %37, align 8
  store <4 x double> %34, ptr %38, align 8
  store <4 x double> %35, ptr %39, align 8
  store <4 x double> %36, ptr %40, align 8
  %index.next40 = add nuw i64 %index35, 16
  %41 = icmp eq i64 %index.next40, %n.vec33
  br i1 %41, label %middle.block41, label %vector.body34, !llvm.loop !26

middle.block41:                                   ; preds = %vector.body34
  %cmp.n42 = icmp eq i64 %3, %n.vec33
  br i1 %cmp.n42, label %._crit_edge, label %vec.epilog.iter.check44

vec.epilog.iter.check44:                          ; preds = %middle.block41
  %min.epilog.iters.check46 = icmp eq i64 %28, 0
  br i1 %min.epilog.iters.check46, label %.lr.ph17.preheader, label %vec.epilog.ph47, !prof !22

vec.epilog.ph47:                                  ; preds = %vector.main.loop.iter.check30, %vec.epilog.iter.check44
  %vec.epilog.resume.val48 = phi i64 [ %n.vec33, %vec.epilog.iter.check44 ], [ 0, %vector.main.loop.iter.check30 ]
  %n.vec49 = and i64 %3, -4
  br label %vec.epilog.vector.body50

vec.epilog.vector.body50:                         ; preds = %vec.epilog.vector.body50, %vec.epilog.ph47
  %index51 = phi i64 [ %vec.epilog.resume.val48, %vec.epilog.ph47 ], [ %index.next53, %vec.epilog.vector.body50 ]
  %42 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index51
  %wide.load52 = load <4 x double>, ptr %42, align 8
  %43 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load52, <4 x double> splat (double 5.000000e-01), <4 x double> splat (double -1.000000e+00))
  %44 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index51
  store <4 x double> %43, ptr %44, align 8
  %index.next53 = add nuw i64 %index51, 4
  %45 = icmp eq i64 %index.next53, %n.vec49
  br i1 %45, label %vec.epilog.middle.block54, label %vec.epilog.vector.body50, !llvm.loop !27

vec.epilog.middle.block54:                        ; preds = %vec.epilog.vector.body50
  %cmp.n55 = icmp eq i64 %3, %n.vec49
  br i1 %cmp.n55, label %._crit_edge, label %.lr.ph17.preheader

.lr.ph17.preheader:                               ; preds = %iter.check43, %vec.epilog.iter.check44, %vec.epilog.middle.block54
  %.016.ph = phi i64 [ 0, %iter.check43 ], [ %n.vec33, %vec.epilog.iter.check44 ], [ %n.vec49, %vec.epilog.middle.block54 ]
  br label %.lr.ph17

.lr.ph17:                                         ; preds = %.lr.ph17.preheader, %.lr.ph17
  %.016 = phi i64 [ %50, %.lr.ph17 ], [ %.016.ph, %.lr.ph17.preheader ]
  %46 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.016
  %47 = load double, ptr %46, align 8
  %48 = tail call double @llvm.fmuladd.f64(double %47, double 5.000000e-01, double -1.000000e+00)
  %49 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.016
  store double %48, ptr %49, align 8
  %50 = add nuw i64 %.016, 1
  %exitcond19.not = icmp eq i64 %50, %3
  br i1 %exitcond19.not, label %._crit_edge, label %.lr.ph17, !llvm.loop !28

._crit_edge:                                      ; preds = %.lr.ph17, %middle.block41, %vec.epilog.middle.block54, %4
  ret void
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef range(i32 0, 2) i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 personality ptr @__CxxFrameHandler3 {
  %3 = alloca %"struct.bench::Args", align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %class.anon, align 8
  call void @"?parse_args@bench@@YA?AUArgs@1@HPEAPEAD_KHH@Z"(ptr dead_on_unwind nonnull writable sret(%"struct.bench::Args") align 8 %3, i32 noundef %0, ptr noundef %1, i64 noundef 65536, i32 noundef 64, i32 noundef 9)
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %11 = load i64, ptr %10, align 8
  store i64 %11, ptr %4, align 8
  %12 = shl i64 %11, 3
  %13 = invoke noundef ptr @"?aligned_alloc64@bench@@YAPEAX_K@Z"(i64 noundef %12)
          to label %14 unwind label %70

14:                                               ; preds = %2
  store ptr %13, ptr %5, align 8
  %15 = invoke noundef ptr @"?aligned_alloc64@bench@@YAPEAX_K@Z"(i64 noundef %12)
          to label %16 unwind label %70

16:                                               ; preds = %14
  store ptr %15, ptr %6, align 8
  %17 = invoke noundef ptr @"?aligned_alloc64@bench@@YAPEAX_K@Z"(i64 noundef %12)
          to label %18 unwind label %70

18:                                               ; preds = %16
  store ptr %17, ptr %7, align 8
  invoke void @"?init_f64@bench@@YAXPEAN_K1@Z"(ptr noundef %13, i64 noundef %11, i64 noundef 12345)
          to label %19 unwind label %70

19:                                               ; preds = %18
  invoke void @"?init_f64@bench@@YAXPEAN_K1@Z"(ptr noundef %17, i64 noundef %11, i64 noundef 999)
          to label %20 unwind label %70

20:                                               ; preds = %19
  %21 = load atomic volatile ptr, ptr @g_fn acquire, align 8
  store ptr %21, ptr %8, align 8
  %22 = load i64, ptr %4, align 8
  %23 = load ptr, ptr %7, align 8
  %24 = load ptr, ptr %6, align 8
  %25 = load ptr, ptr %5, align 8
  invoke void %21(ptr noundef %25, ptr noundef %24, ptr noundef %23, i64 noundef %22)
          to label %.preheader14 unwind label %70

.preheader14:                                     ; preds = %20
  %.not = icmp eq i64 %22, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

26:                                               ; preds = %.lr.ph
  %27 = add nuw i64 %.01215, 1
  %28 = icmp ult i64 %27, %22
  br i1 %28, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !29

.lr.ph:                                           ; preds = %.preheader14, %26
  %.01215 = phi i64 [ %27, %26 ], [ 0, %.preheader14 ]
  %29 = getelementptr inbounds nuw [8 x i8], ptr %25, i64 %.01215
  %30 = load double, ptr %29, align 8
  %31 = call double @llvm.fmuladd.f64(double %30, double 1.500000e+00, double 2.000000e+00)
  %32 = call double @llvm.fmuladd.f64(double %31, double 5.000000e-01, double -1.000000e+00)
  %33 = getelementptr inbounds nuw [8 x i8], ptr %24, i64 %.01215
  %34 = load double, ptr %33, align 8
  %35 = call noundef zeroext i1 @"?close_enough@bench@@YA_NNN@Z"(double noundef %34, double noundef %32)
  br i1 %35, label %26, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %.lr.ph, %26
  %.ph = phi ptr [ @"??_C@_04OOEBCMBF@FAIL?$AA@", %.lr.ph ], [ @"??_C@_02GIPFHKNO@OK?$AA@", %26 ]
  %.lcssa.ph = xor i1 %35, true
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader14
  %.lcssa = phi i1 [ false, %.preheader14 ], [ %.lcssa.ph, %._crit_edge.loopexit ]
  %36 = phi ptr [ @"??_C@_02GIPFHKNO@OK?$AA@", %.preheader14 ], [ %.ph, %._crit_edge.loopexit ]
  %37 = invoke i32 (ptr, ...) @printf(ptr noundef nonnull @"??_C@_0L@OALJHCFB@VERIFY?5?$CFs?6?$AA@", ptr noundef nonnull %36)
          to label %38 unwind label %70

38:                                               ; preds = %._crit_edge
  br i1 %.lcssa, label %69, label %39

39:                                               ; preds = %38
  %40 = load i64, ptr %4, align 8
  %41 = shl i64 %40, 3
  %42 = load ptr, ptr %6, align 8
  %43 = call noundef i64 @"?hash_bytes@bench@@YA_KPEBX_K@Z"(ptr noundef %42, i64 noundef %41)
  %44 = invoke i32 (ptr, ...) @printf(ptr noundef nonnull @"??_C@_0P@MAICADEK@CHECK?5?$CF016llx?6?$AA@", i64 noundef %43)
          to label %45 unwind label %70

45:                                               ; preds = %39
  invoke void @"?pin_environment@bench@@YAXXZ"()
          to label %.preheader unwind label %70

.preheader:                                       ; preds = %45, %51
  %.0 = phi i32 [ %52, %51 ], [ 0, %45 ]
  %46 = icmp samesign ult i32 %.0, 16
  br i1 %46, label %47, label %53

47:                                               ; preds = %.preheader
  %48 = load ptr, ptr %8, align 8
  %49 = load ptr, ptr %7, align 8
  %50 = load ptr, ptr %5, align 8
  invoke void %48(ptr noundef %50, ptr noundef %42, ptr noundef %49, i64 noundef %40)
          to label %51 unwind label %70

51:                                               ; preds = %47
  %52 = add nuw nsw i32 %.0, 1
  br label %.preheader, !llvm.loop !30

53:                                               ; preds = %.preheader
  store ptr %8, ptr %9, align 8
  %54 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %5, ptr %54, align 8
  %55 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %6, ptr %55, align 8
  %56 = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %7, ptr %56, align 8
  %57 = getelementptr inbounds nuw i8, ptr %9, i64 32
  store ptr %4, ptr %57, align 8
  %58 = getelementptr inbounds nuw i8, ptr %3, i64 44
  %59 = load i32, ptr %58, align 4
  %60 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %61 = load i32, ptr %60, align 8
  %62 = call noundef ptr @"?c_str@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBAPEBDXZ"(ptr noundef nonnull align 8 dereferenceable(32) %3) #20
  invoke fastcc void @"??$run_trials@V<lambda_0>@?0??main@@9@@bench@@YAXPEBD0_KHHV<lambda_0>@?0??main@@9@@Z"(ptr noundef %62, i64 noundef %40, i32 noundef %61, i32 noundef %59, ptr noundef align 8 dead_on_return %9)
          to label %63 unwind label %70

63:                                               ; preds = %53
  %64 = load ptr, ptr %5, align 8
  invoke void @"?aligned_free@bench@@YAXPEAX@Z"(ptr noundef %64)
          to label %65 unwind label %70

65:                                               ; preds = %63
  %66 = load ptr, ptr %6, align 8
  invoke void @"?aligned_free@bench@@YAXPEAX@Z"(ptr noundef %66)
          to label %67 unwind label %70

67:                                               ; preds = %65
  %68 = load ptr, ptr %7, align 8
  invoke void @"?aligned_free@bench@@YAXPEAX@Z"(ptr noundef %68)
          to label %69 unwind label %70

69:                                               ; preds = %67, %38
  %.011 = phi i32 [ 1, %38 ], [ 0, %67 ]
  call void @"??1Args@bench@@QEAA@XZ"(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #20
  ret i32 %.011

70:                                               ; preds = %53, %67, %65, %63, %47, %45, %39, %._crit_edge, %20, %19, %18, %16, %14, %2
  %71 = cleanuppad within none []
  call void @"??1Args@bench@@QEAA@XZ"(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #20 [ "funclet"(token %71) ]
  cleanupret from %71 unwind to caller
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @"?parse_args@bench@@YA?AUArgs@1@HPEAPEAD_KHH@Z"(ptr dead_on_unwind noalias writable sret(%"struct.bench::Args") align 8 %0, i32 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #3 comdat personality ptr @__CxxFrameHandler3 {
  %7 = tail call noundef ptr @"??0Args@bench@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  %8 = icmp sgt i32 %1, 1
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %11 = load ptr, ptr %10, align 8
  br label %12

12:                                               ; preds = %6, %9
  %13 = phi ptr [ %11, %9 ], [ @"??_C@_07CIFAGBMG@unknown?$AA@", %6 ]
  %14 = invoke noundef nonnull align 8 dereferenceable(32) ptr @"??4?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV01@QEBD@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %13)
          to label %15 unwind label %38

15:                                               ; preds = %12
  %16 = icmp sgt i32 %1, 2
  br i1 %16, label %18, label %.thread

.thread:                                          ; preds = %15
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %3, ptr %17, align 8
  br label %.thread11

18:                                               ; preds = %15
  %19 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %20 = load ptr, ptr %19, align 8
  %21 = invoke i64 @_strtoui64(ptr noundef %20, ptr noundef null, i32 noundef 10)
          to label %22 unwind label %38

22:                                               ; preds = %18
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %21, ptr %23, align 8
  %.not = icmp eq i32 %1, 3
  br i1 %.not, label %.thread11, label %25

.thread11:                                        ; preds = %.thread, %22
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %4, ptr %24, align 8
  br label %35

25:                                               ; preds = %22
  %26 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %27 = load ptr, ptr %26, align 8
  %28 = tail call i32 @atoi(ptr noundef %27)
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %28, ptr %29, align 8
  %30 = icmp samesign ugt i32 %1, 4
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %33 = load ptr, ptr %32, align 8
  %34 = tail call i32 @atoi(ptr noundef %33)
  br label %35

35:                                               ; preds = %.thread11, %25, %31
  %36 = phi i32 [ %34, %31 ], [ %5, %25 ], [ %5, %.thread11 ]
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %36, ptr %37, align 4
  ret void

38:                                               ; preds = %18, %12
  %39 = cleanuppad within none []
  call void @"??1Args@bench@@QEAA@XZ"(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #20 [ "funclet"(token %39) ]
  cleanupret from %39 unwind to caller
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @"?aligned_alloc64@bench@@YAPEAX_K@Z"(i64 noundef %0) local_unnamed_addr #3 comdat {
  %2 = tail call noalias ptr @_aligned_malloc(i64 noundef %0, i64 noundef 64)
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %3, label %6

3:                                                ; preds = %1
  %4 = tail call ptr @__acrt_iob_func(i32 noundef 2)
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @"??_C@_0BP@DHDIOGLK@allocation?5failed?5?$CI?$CFzu?5bytes?$CJ?6?$AA@", i64 noundef %0) #20
  tail call void @exit(i32 noundef 2) #21
  unreachable

6:                                                ; preds = %1
  ret ptr %2
}

declare dso_local i32 @__CxxFrameHandler3(...) #4

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @"?init_f64@bench@@YAXPEAN_K1@Z"(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 comdat {
  %4 = alloca i64, align 8
  store i64 %2, ptr %4, align 8
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %3, %.lr.ph
  %.05 = phi i64 [ %9, %.lr.ph ], [ 0, %3 ]
  %5 = call noundef i64 @"?lcg@bench@@YA_KAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %4)
  %6 = sitofp i64 %5 to double
  %7 = fmul nnan double %6, f0x3C00000000000000
  %8 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.05
  store double %7, ptr %8, align 8
  %9 = add nuw i64 %.05, 1
  %exitcond.not = icmp eq i64 %9, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !31

._crit_edge:                                      ; preds = %.lr.ph, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @"?close_enough@bench@@YA_NNN@Z"(double noundef %0, double noundef %1) local_unnamed_addr #5 comdat {
  %3 = fsub double %0, %1
  %4 = tail call double @llvm.fabs.f64(double %3)
  %5 = tail call double @llvm.fabs.f64(double %0)
  %6 = fadd double %5, 1.000000e+00
  %7 = tail call double @llvm.fabs.f64(double %1)
  %8 = fadd double %6, %7
  %9 = fmul double %8, 1.000000e-09
  %10 = fcmp ole double %4, %9
  ret i1 %10
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local i32 @printf(ptr noundef %0, ...) local_unnamed_addr #3 comdat {
  %2 = alloca ptr, align 8
  call void @llvm.va_start.p0(ptr nonnull %2)
  %3 = load ptr, ptr %2, align 8
  %4 = call ptr @__acrt_iob_func(i32 noundef 1)
  %5 = call i32 @_vfprintf_l(ptr noundef %4, ptr noundef %0, ptr noundef null, ptr noundef %3)
  call void @llvm.va_end.p0(ptr nonnull %2)
  ret i32 %5
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @"?hash_bytes@bench@@YA_KPEBX_K@Z"(ptr noundef %0, i64 noundef %1) local_unnamed_addr #5 comdat {
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %2
  %xtraiter = and i64 %1, 7
  %3 = icmp ult i64 %1, 8
  br i1 %3, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %1, -8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.010 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %51, %.lr.ph ]
  %.089 = phi i64 [ 1469598103934665603, %.lr.ph.preheader.new ], [ %50, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 %.010
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i64
  %7 = xor i64 %.089, %6
  %8 = mul i64 %7, 1099511628211
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 %.010
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 1
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i64
  %13 = xor i64 %8, %12
  %14 = mul i64 %13, 1099511628211
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 %.010
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 2
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i64
  %19 = xor i64 %14, %18
  %20 = mul i64 %19, 1099511628211
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 %.010
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 3
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i64
  %25 = xor i64 %20, %24
  %26 = mul i64 %25, 1099511628211
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 %.010
  %28 = getelementptr inbounds nuw i8, ptr %27, i64 4
  %29 = load i8, ptr %28, align 1
  %30 = zext i8 %29 to i64
  %31 = xor i64 %26, %30
  %32 = mul i64 %31, 1099511628211
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 %.010
  %34 = getelementptr inbounds nuw i8, ptr %33, i64 5
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i64
  %37 = xor i64 %32, %36
  %38 = mul i64 %37, 1099511628211
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 %.010
  %40 = getelementptr inbounds nuw i8, ptr %39, i64 6
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i64
  %43 = xor i64 %38, %42
  %44 = mul i64 %43, 1099511628211
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 %.010
  %46 = getelementptr inbounds nuw i8, ptr %45, i64 7
  %47 = load i8, ptr %46, align 1
  %48 = zext i8 %47 to i64
  %49 = xor i64 %44, %48
  %50 = mul i64 %49, 1099511628211
  %51 = add nuw i64 %.010, 8
  %niter.next.7 = add nuw i64 %niter, 8
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !32

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.010.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %51, %._crit_edge.loopexit.unr-lcssa ]
  %.089.epil.init = phi i64 [ 1469598103934665603, %.lr.ph.preheader ], [ %50, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod12 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod12)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.010.epil = phi i64 [ %57, %.lr.ph.epil ], [ %.010.epil.init, %.lr.ph.epil.preheader ]
  %.089.epil = phi i64 [ %56, %.lr.ph.epil ], [ %.089.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 %.010.epil
  %53 = load i8, ptr %52, align 1
  %54 = zext i8 %53 to i64
  %55 = xor i64 %.089.epil, %54
  %56 = mul i64 %55, 1099511628211
  %57 = add nuw i64 %.010.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !33

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %2
  %.08.lcssa = phi i64 [ 1469598103934665603, %2 ], [ %50, %._crit_edge.loopexit.unr-lcssa ], [ %56, %.lr.ph.epil ]
  ret i64 %.08.lcssa
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @"?pin_environment@bench@@YAXXZ"() local_unnamed_addr #3 comdat {
  %1 = tail call ptr @GetCurrentProcess()
  %2 = tail call i32 @SetProcessAffinityMask(ptr noundef %1, i64 noundef 4)
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %3, label %7

3:                                                ; preds = %0
  %4 = tail call i32 @GetLastError()
  %5 = tail call ptr @__acrt_iob_func(i32 noundef 2)
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @"??_C@_0CO@BEMGKDJM@warning?3?5SetProcessAffinityMask?5@", i32 noundef %4) #20
  br label %7

7:                                                ; preds = %3, %0
  %8 = tail call ptr @GetCurrentProcess()
  %9 = tail call i32 @SetPriorityClass(ptr noundef %8, i32 noundef 128)
  %.not1 = icmp eq i32 %9, 0
  br i1 %.not1, label %10, label %14

10:                                               ; preds = %7
  %11 = tail call i32 @GetLastError()
  %12 = tail call ptr @__acrt_iob_func(i32 noundef 2)
  %13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef nonnull @"??_C@_0CI@JIDNHJK@warning?3?5SetPriorityClass?5failed@", i32 noundef %11) #20
  br label %14

14:                                               ; preds = %10, %7
  %15 = tail call i32 @timeBeginPeriod(i32 noundef 1)
  ret void
}

; Function Attrs: mustprogress noinline norecurse uwtable
define internal fastcc void @"??$run_trials@V<lambda_0>@?0??main@@9@@bench@@YAXPEBD0_KHHV<lambda_0>@?0??main@@9@@Z"(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return %4) unnamed_addr #2 {
  %6 = alloca %union._LARGE_INTEGER, align 8
  %7 = alloca %union._LARGE_INTEGER, align 8
  %8 = tail call noundef double @"?qpc_ns_per_tick@bench@@YANXZ"()
  %9 = icmp sgt i32 %3, 0
  br i1 %9, label %.lr.ph4, label %._crit_edge5

.lr.ph4:                                          ; preds = %5
  %10 = icmp sgt i32 %2, 0
  %11 = sitofp i32 %2 to double
  br i1 %10, label %.lr.ph.us, label %.lr.ph4.split

.lr.ph.us:                                        ; preds = %.lr.ph4, %._crit_edge.us
  %.02.us = phi i32 [ %23, %._crit_edge.us ], [ 0, %.lr.ph4 ]
  %12 = call i32 @QueryPerformanceCounter(ptr noundef nonnull %6)
  br label %13

13:                                               ; preds = %.lr.ph.us, %13
  %.0141.us = phi i32 [ 0, %.lr.ph.us ], [ %14, %13 ]
  call fastcc void @"??R<lambda_0>@?0??main@@9@QEBA?A?<auto>@@XZ"(ptr noundef nonnull align 8 dereferenceable(40) %4)
  %14 = add nuw nsw i32 %.0141.us, 1
  %exitcond7.not = icmp eq i32 %14, %2
  br i1 %exitcond7.not, label %._crit_edge.us, label %13, !llvm.loop !35

._crit_edge.us:                                   ; preds = %13
  %15 = call i32 @QueryPerformanceCounter(ptr noundef nonnull %7)
  %16 = load i64, ptr %7, align 8
  %17 = load i64, ptr %6, align 8
  %18 = sub i64 %16, %17
  %19 = sitofp i64 %18 to double
  %20 = fmul double %8, %19
  %21 = fdiv double %20, %11
  %22 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0P@MGLMMHNL@TRIAL?5?$CFd?5?$CF?43f?6?$AA@", i32 noundef %.02.us, double noundef %21)
  %23 = add nuw nsw i32 %.02.us, 1
  %exitcond8.not = icmp eq i32 %23, %3
  br i1 %exitcond8.not, label %._crit_edge5, label %.lr.ph.us, !llvm.loop !36

.lr.ph4.split:                                    ; preds = %.lr.ph4, %.lr.ph4.split
  %.02 = phi i32 [ %33, %.lr.ph4.split ], [ 0, %.lr.ph4 ]
  %24 = call i32 @QueryPerformanceCounter(ptr noundef nonnull %6)
  %25 = call i32 @QueryPerformanceCounter(ptr noundef nonnull %7)
  %26 = load i64, ptr %7, align 8
  %27 = load i64, ptr %6, align 8
  %28 = sub i64 %26, %27
  %29 = sitofp i64 %28 to double
  %30 = fmul double %8, %29
  %31 = fdiv double %30, %11
  %32 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0P@MGLMMHNL@TRIAL?5?$CFd?5?$CF?43f?6?$AA@", i32 noundef %.02, double noundef %31)
  %33 = add nuw nsw i32 %.02, 1
  %exitcond.not = icmp eq i32 %33, %3
  br i1 %exitcond.not, label %._crit_edge5, label %.lr.ph4.split, !llvm.loop !36

._crit_edge5:                                     ; preds = %.lr.ph4.split, %._crit_edge.us, %5
  %34 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0DA@PKGLKAHC@META?5case?$DN?$CFs?5config?$DN?$CFs?5n?$DN?$CFzu?5rep@", ptr noundef nonnull @"??_C@_0BC@IMMJGDFL@producer_consumer?$AA@", ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"?c_str@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBAPEBDXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 {
  %2 = tail call noundef ptr @"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBAPEBDXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #20
  ret ptr %2
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @"?aligned_free@bench@@YAXPEAX@Z"(ptr noundef %0) local_unnamed_addr #3 comdat {
  tail call void @_aligned_free(ptr noundef %0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"??1Args@bench@@QEAA@XZ"(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #5 comdat align 2 {
  tail call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"??0Args@bench@@QEAA@XZ"(ptr noundef nonnull returned align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 {
  %2 = tail call noundef ptr @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #20
  ret ptr %0
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @"??4?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV01@QEBD@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 {
  %3 = tail call noundef nonnull align 8 dereferenceable(32) ptr @"?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1)
  ret ptr %3
}

declare dso_local i64 @_strtoui64(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(read)
declare dso_local i32 @atoi(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull returned align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 personality ptr @__CxxFrameHandler3 {
  %2 = tail call noundef ptr @"??$?0$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_Zero_then_variadic_args_t@1@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 undef) #20
  tail call void @"?_Construct_empty@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0)
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"??$?0$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_Zero_then_variadic_args_t@1@@Z"(ptr noundef nonnull returned align 8 dereferenceable(32) %0, i8 %1) unnamed_addr #5 comdat align 2 {
  %3 = tail call noundef ptr @"??0?$allocator@D@std@@QEAA@XZ"(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  %4 = tail call noundef ptr @"??0?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #20
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"?_Construct_empty@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 {
  %2 = alloca %"struct.std::_Fake_allocator", align 1
  %3 = alloca i8, align 1
  %4 = tail call noundef nonnull align 1 dereferenceable(1) ptr @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #20
  %5 = tail call i8 @"??$_Get_proxy_allocator@V?$allocator@D@std@@@std@@YA?AU_Fake_allocator@0@AEBV?$allocator@D@0@@Z"(ptr noundef nonnull align 1 dereferenceable(1) %4) #20
  call void @"?_Alloc_proxy@_Container_base0@std@@QEAAXAEBU_Fake_allocator@2@@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %2) #20
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %6, align 8
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 15, ptr %7, align 8
  call void @"?_Activate_SSO_buffer@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #20
  store i8 0, ptr %3, align 1
  call void @"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %3) #20
  ret void
}

declare dso_local void @__std_terminate() local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"??0?$allocator@D@std@@QEAA@XZ"(ptr noundef nonnull returned align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"??0?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull returned align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 {
  %2 = tail call noundef ptr @"??0_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %0) #20
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"??0_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull returned align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"?_Alloc_proxy@_Container_base0@std@@QEAAXAEBU_Fake_allocator@2@@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #5 comdat align 2 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local i8 @"??$_Get_proxy_allocator@V?$allocator@D@std@@@std@@YA?AU_Fake_allocator@0@AEBV?$allocator@D@0@@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #5 comdat {
  ret i8 undef
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 {
  %2 = tail call noundef nonnull align 1 dereferenceable(1) ptr @"?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAAAEAV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #20
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"?_Activate_SSO_buffer@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #5 comdat align 2 {
  %3 = load i8, ptr %1, align 1
  store i8 %3, ptr %0, align 1
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @"?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAAAEAV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @"?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 {
  %3 = tail call noundef i64 @"?length@?$_Narrow_char_traits@DH@std@@SA_KQEBD@Z"(ptr noundef %1) #20
  %4 = tail call noundef i64 @"??$_Convert_size@_K_K@std@@YA_K_K@Z"(i64 noundef %3) #20
  %5 = tail call noundef nonnull align 8 dereferenceable(32) ptr @"??$_Assign@D@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@QEBD_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %4)
  ret ptr %5
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @"??$_Assign@D@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@QEBD_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 {
  %4 = alloca i8, align 1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = load i64, ptr %5, align 8
  %.not = icmp ugt i64 %2, %6
  br i1 %.not, label %11, label %7

7:                                                ; preds = %3
  %8 = tail call noundef ptr @"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAPEADXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #20
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %9, align 8
  tail call void @"??$_Traits_move_batch@U?$char_traits@D@std@@D@std@@YAXQEADQEBD_K@Z"(ptr noundef %8, ptr noundef %1, i64 noundef %2) #20
  store i8 0, ptr %4, align 1
  %10 = getelementptr inbounds nuw i8, ptr %8, i64 %2
  call void @"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"(ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull align 1 dereferenceable(1) %4) #20
  br label %13

11:                                               ; preds = %3
  %12 = tail call noundef nonnull align 8 dereferenceable(32) ptr @"??$_Reallocate_for@V<lambda_1>@?0???$_Assign@D@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV23@QEBD_K@Z@PEBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_1>@?0???$_Assign@D@01@AEAAAEAV01@QEBD0@Z@PEBD@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %2, i8 undef, ptr noundef %1)
  br label %13

13:                                               ; preds = %11, %7
  %.0 = phi ptr [ %0, %7 ], [ %12, %11 ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @"??$_Convert_size@_K_K@std@@YA_K_K@Z"(i64 noundef %0) local_unnamed_addr #5 comdat {
  ret i64 %0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @"?length@?$_Narrow_char_traits@DH@std@@SA_KQEBD@Z"(ptr noundef %0) local_unnamed_addr #5 comdat align 2 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #20
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAPEADXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 {
  %2 = tail call noundef zeroext i1 @"?_Large_mode_engaged@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBA_NXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #20
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8
  %5 = tail call noundef ptr @"??$_Unfancy@D@std@@YAPEADPEAD@Z"(ptr noundef %4) #20
  br label %6

6:                                                ; preds = %3, %1
  %.0 = phi ptr [ %5, %3 ], [ %0, %1 ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"??$_Traits_move_batch@U?$char_traits@D@std@@D@std@@YAXQEADQEBD_K@Z"(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat {
  %4 = tail call noundef ptr @"?move@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(ptr noundef %0, ptr noundef %1, i64 noundef %2) #20
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @"??$_Reallocate_for@V<lambda_1>@?0???$_Assign@D@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV23@QEBD_K@Z@PEBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_1>@?0???$_Assign@D@01@AEAAAEAV01@QEBD0@Z@PEBD@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i8 %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 {
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = tail call noundef i64 @"?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #20
  %8 = icmp ugt i64 %1, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  tail call void @"?_Xlen_string@std@@YAXXZ"() #22
  unreachable

10:                                               ; preds = %4
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %12 = load i64, ptr %11, align 8
  %13 = tail call noundef i64 @"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBA_K_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #20
  store i64 %13, ptr %5, align 8
  %14 = tail call noundef nonnull align 1 dereferenceable(1) ptr @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #20
  %15 = call noundef ptr @"??$_Allocate_for_capacity@$0A@@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAPEADAEAV?$allocator@D@1@AEA_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef nonnull align 8 dereferenceable(8) %5)
  store ptr %15, ptr %6, align 8
  call void @"?_Orphan_all@_Container_base0@std@@QEAAXXZ"(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %1, ptr %16, align 8
  %17 = load i64, ptr %5, align 8
  store i64 %17, ptr %11, align 8
  %18 = call noundef ptr @"??$_Unfancy@D@std@@YAPEADPEAD@Z"(ptr noundef %15) #20
  call void @"??R<lambda_1>@?0???$_Assign@D@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV12@QEBD_K@Z@SA?A?<auto>@@QEAD10@Z"(ptr noundef %18, i64 noundef %1, ptr noundef %3)
  %19 = icmp ugt i64 %12, 15
  br i1 %19, label %20, label %22

20:                                               ; preds = %10
  %21 = load ptr, ptr %0, align 8
  call void @"?_Deallocate_for_capacity@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAXAEAV?$allocator@D@2@QEAD_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef %21, i64 noundef %12) #20
  store ptr %15, ptr %0, align 8
  br label %23

22:                                               ; preds = %10
  call void @"??$_Construct_in_place@PEADAEBQEAD@std@@YAXAEAPEADAEBQEAD@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %6) #20
  br label %23

23:                                               ; preds = %22, %20
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @"?_Large_mode_engaged@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBA_NXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %3 = load i64, ptr %2, align 8
  %4 = icmp ugt i64 %3, 15
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"??$_Unfancy@D@std@@YAPEADPEAD@Z"(ptr noundef %0) local_unnamed_addr #5 comdat {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"?move@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 {
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %0, ptr align 1 %1, i64 %2, i1 false)
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #9

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @"?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = tail call noundef nonnull align 1 dereferenceable(1) ptr @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBAAEBV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #20
  %7 = tail call noundef i64 @"?max_size@?$_Default_allocator_traits@V?$allocator@D@std@@@std@@SA_KAEBV?$allocator@D@2@@Z"(ptr noundef nonnull align 1 dereferenceable(1) %6) #20
  store i64 %7, ptr %2, align 8
  store i64 16, ptr %3, align 8
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @"??$max@_K@std@@YAAEB_KAEB_K0@Z"(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #20
  %9 = load i64, ptr %8, align 8
  %10 = add i64 %9, -1
  store i64 %10, ptr %4, align 8
  %11 = call noundef i64 @"??$_Max_limit@_J@std@@YA_JXZ"() #20
  store i64 %11, ptr %5, align 8
  %12 = call noundef nonnull align 8 dereferenceable(8) ptr @"??$min@_K@std@@YAAEB_KAEB_K0@Z"(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  %13 = load i64, ptr %12, align 8
  ret i64 %13
}

; Function Attrs: mustprogress noinline noreturn uwtable
define linkonce_odr dso_local void @"?_Xlen_string@std@@YAXXZ"() local_unnamed_addr #10 comdat {
  tail call void @"?_Xlength_error@std@@YAXPEBD@Z"(ptr noundef nonnull @"??_C@_0BA@JFNIOLAK@string?5too?5long?$AA@") #22
  unreachable
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBA_K_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 {
  %3 = tail call noundef i64 @"?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #20
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %5 = load i64, ptr %4, align 8
  %6 = tail call noundef i64 @"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CA_K_K00@Z"(i64 noundef %1, i64 noundef %5, i64 noundef %3) #20
  ret i64 %6
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @"??$_Allocate_for_capacity@$0A@@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAPEADAEAV?$allocator@D@1@AEA_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 {
  %3 = load i64, ptr %1, align 8
  %4 = add i64 %3, 1
  store i64 %4, ptr %1, align 8
  %5 = tail call noundef ptr @"??$_Allocate_at_least_helper@V?$allocator@D@std@@@std@@YAPEADAEAV?$allocator@D@0@AEA_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %6 = load i64, ptr %1, align 8
  %7 = add i64 %6, -1
  store i64 %7, ptr %1, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"?_Orphan_all@_Container_base0@std@@QEAAXXZ"(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #5 comdat align 2 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"??R<lambda_1>@?0???$_Assign@D@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV12@QEBD_K@Z@SA?A?<auto>@@QEAD10@Z"(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #5 comdat align 2 {
  %4 = alloca i8, align 1
  tail call void @"??$_Traits_copy_batch@U?$char_traits@D@std@@D@std@@YAXQEADQEBD_K@Z"(ptr noundef %0, ptr noundef %2, i64 noundef %1) #20
  store i8 0, ptr %4, align 1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  call void @"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %4) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"?_Deallocate_for_capacity@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAXAEAV?$allocator@D@2@QEAD_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 {
  %4 = add i64 %2, 1
  tail call void @"?deallocate@?$allocator@D@std@@QEAAXQEAD_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %4) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"??$_Construct_in_place@PEADAEBQEAD@std@@YAXAEAPEADAEBQEAD@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat {
  %3 = load ptr, ptr %1, align 8
  store ptr %3, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @"?max_size@?$_Default_allocator_traits@V?$allocator@D@std@@@std@@SA_KAEBV?$allocator@D@2@@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #5 comdat align 2 {
  ret i64 -1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBAAEBV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 {
  %2 = tail call noundef nonnull align 1 dereferenceable(1) ptr @"?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEBAAEBV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #20
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @"??$max@_K@std@@YAAEB_KAEB_K0@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat {
  %3 = load i64, ptr %0, align 8
  %4 = load i64, ptr %1, align 8
  %5 = icmp ult i64 %3, %4
  %6 = select i1 %5, ptr %1, ptr %0
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @"??$min@_K@std@@YAAEB_KAEB_K0@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat {
  %3 = load i64, ptr %1, align 8
  %4 = load i64, ptr %0, align 8
  %5 = icmp ult i64 %3, %4
  %6 = select i1 %5, ptr %1, ptr %0
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @"??$_Max_limit@_J@std@@YA_JXZ"() local_unnamed_addr #5 comdat {
  ret i64 9223372036854775807
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @"?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEBAAEBV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 {
  ret ptr %0
}

; Function Attrs: noreturn
declare dso_local void @"?_Xlength_error@std@@YAXPEBD@Z"(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CA_K_K00@Z"(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = or i64 %0, 15
  store i64 %6, ptr %4, align 8
  %7 = icmp ugt i64 %6, %2
  br i1 %7, label %16, label %8

8:                                                ; preds = %3
  %9 = lshr i64 %1, 1
  %10 = sub i64 %2, %9
  %11 = icmp ugt i64 %1, %10
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = add i64 %9, %1
  store i64 %13, ptr %5, align 8
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @"??$max@_K@std@@YAAEB_KAEB_K0@Z"(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #20
  %15 = load i64, ptr %14, align 8
  br label %16

16:                                               ; preds = %8, %3, %12
  %.0 = phi i64 [ %15, %12 ], [ %2, %3 ], [ %2, %8 ]
  ret i64 %.0
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @"??$_Allocate_at_least_helper@V?$allocator@D@std@@@std@@YAPEADAEAV?$allocator@D@0@AEA_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat {
  %3 = load i64, ptr %1, align 8
  %4 = tail call noundef ptr @"?allocate@?$allocator@D@std@@QEAAPEAD_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %3)
  ret ptr %4
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @"?allocate@?$allocator@D@std@@QEAAPEAD_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 {
  %3 = tail call noundef i64 @"??$_Get_size_of_n@$00@std@@YA_K_K@Z"(i64 noundef %1)
  %4 = tail call noundef ptr @"??$_Allocate@$0BA@U_Default_allocate_traits@std@@@std@@YAPEAX_K@Z"(i64 noundef %3)
  ret ptr %4
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @"??$_Allocate@$0BA@U_Default_allocate_traits@std@@@std@@YAPEAX_K@Z"(i64 noundef %0) local_unnamed_addr #3 comdat {
  %2 = icmp eq i64 %0, 0
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = icmp ugt i64 %0, 4095
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call noundef ptr @"??$_Allocate_manually_vector_aligned@U_Default_allocate_traits@std@@@std@@YAPEAX_K@Z"(i64 noundef %0)
  br label %9

7:                                                ; preds = %3
  %8 = tail call noundef ptr @"?_Allocate@_Default_allocate_traits@std@@SAPEAX_K@Z"(i64 noundef %0)
  br label %9

9:                                                ; preds = %1, %7, %5
  %.0 = phi ptr [ %8, %7 ], [ %6, %5 ], [ null, %1 ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @"??$_Get_size_of_n@$00@std@@YA_K_K@Z"(i64 noundef %0) local_unnamed_addr #5 comdat {
  ret i64 %0
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @"??$_Allocate_manually_vector_aligned@U_Default_allocate_traits@std@@@std@@YAPEAX_K@Z"(i64 noundef %0) local_unnamed_addr #3 comdat {
  %.not = icmp ult i64 %0, -39
  br i1 %.not, label %3, label %2

2:                                                ; preds = %1
  tail call void @"?_Throw_bad_array_new_length@std@@YAXXZ"() #22
  unreachable

3:                                                ; preds = %1
  %4 = add nuw i64 %0, 39
  %5 = tail call noundef ptr @"?_Allocate@_Default_allocate_traits@std@@SAPEAX_K@Z"(i64 noundef %4)
  %.not9 = icmp eq ptr %5, null
  br i1 %.not9, label %6, label %7

6:                                                ; preds = %3
  tail call void @llvm.trap()
  unreachable

7:                                                ; preds = %3
  %8 = ptrtoint ptr %5 to i64
  %9 = add i64 %8, 39
  %10 = and i64 %9, -32
  %11 = inttoptr i64 %10 to ptr
  %12 = getelementptr inbounds i8, ptr %11, i64 -8
  store i64 %8, ptr %12, align 8
  ret ptr %11
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @"?_Allocate@_Default_allocate_traits@std@@SAPEAX_K@Z"(i64 noundef %0) local_unnamed_addr #3 comdat align 2 {
  %2 = tail call noalias noundef nonnull ptr @"??2@YAPEAX_K@Z"(i64 noundef %0) #23
  ret ptr %2
}

; Function Attrs: mustprogress noinline noreturn uwtable
define linkonce_odr dso_local void @"?_Throw_bad_array_new_length@std@@YAXXZ"() local_unnamed_addr #10 comdat {
  %1 = alloca %"class.std::bad_array_new_length", align 8
  %2 = call noundef ptr @"??0bad_array_new_length@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  call void @_CxxThrowException(ptr nonnull %1, ptr nonnull @"_TI3?AVbad_array_new_length@std@@") #22
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #12

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"??0bad_array_new_length@std@@QEAA@XZ"(ptr noundef nonnull returned align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 {
  %2 = tail call noundef ptr @"??0bad_alloc@std@@AEAA@QEBD@Z"(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull @"??_C@_0BF@KINCDENJ@bad?5array?5new?5length?$AA@") #20
  store ptr @"??_7bad_array_new_length@std@@6B@", ptr %0, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"??0bad_array_new_length@std@@QEAA@AEBV01@@Z"(ptr noundef nonnull returned align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #5 comdat align 2 {
  %3 = tail call noundef ptr @"??0bad_alloc@std@@QEAA@AEBV01@@Z"(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  store ptr @"??_7bad_array_new_length@std@@6B@", ptr %0, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"??0bad_alloc@std@@QEAA@AEBV01@@Z"(ptr noundef nonnull returned align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #5 comdat align 2 {
  %3 = tail call noundef ptr @"??0exception@std@@QEAA@AEBV01@@Z"(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  store ptr @"??_7bad_alloc@std@@6B@", ptr %0, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"??0exception@std@@QEAA@AEBV01@@Z"(ptr noundef nonnull returned align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #5 comdat align 2 personality ptr @__CxxFrameHandler3 {
  store ptr @"??_7exception@std@@6B@", ptr %0, align 8
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @__std_exception_copy(ptr noundef nonnull %4, ptr noundef nonnull %3)
          to label %5 unwind label %6

5:                                                ; preds = %2
  ret ptr %0

6:                                                ; preds = %2
  %7 = cleanuppad within none []
  call void @__std_terminate() #24 [ "funclet"(token %7) ]
  unreachable
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"??1bad_array_new_length@std@@UEAA@XZ"(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 {
  tail call void @"??1bad_alloc@std@@UEAA@XZ"(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #20
  ret void
}

declare dso_local void @_CxxThrowException(ptr, ptr) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"??0bad_alloc@std@@AEAA@QEBD@Z"(ptr noundef nonnull returned align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 {
  %3 = tail call noundef ptr @"??0exception@std@@QEAA@QEBDH@Z"(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i32 noundef 1) #20
  store ptr @"??_7bad_alloc@std@@6B@", ptr %0, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"?what@exception@std@@UEBAPEBDXZ"(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %3 = load ptr, ptr %2, align 8
  %.not = icmp eq ptr %3, null
  %spec.select = select i1 %.not, ptr @"??_C@_0BC@EOODALEL@Unknown?5exception?$AA@", ptr %3
  ret ptr %spec.select
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"??0exception@std@@QEAA@QEBDH@Z"(ptr noundef nonnull returned align 8 dereferenceable(24) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #5 comdat align 2 {
  store ptr @"??_7exception@std@@6B@", ptr %0, align 8
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %5, align 8
  store ptr %1, ptr %4, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"??_Gexception@std@@UEAAPEAXI@Z"(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #5 comdat align 2 {
  tail call void @"??1exception@std@@UEAA@XZ"(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #20
  %3 = and i32 %1, 1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @"??3@YAXPEAX_K@Z"(ptr noundef nonnull %0, i64 noundef 24) #25
  br label %6

6:                                                ; preds = %5, %2
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"??1exception@std@@UEAA@XZ"(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__CxxFrameHandler3 {
  store ptr @"??_7exception@std@@6B@", ptr %0, align 8
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @__std_exception_destroy(ptr noundef nonnull %2)
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret void

4:                                                ; preds = %1
  %5 = cleanuppad within none []
  call void @__std_terminate() #24 [ "funclet"(token %5) ]
  unreachable
}

; Function Attrs: nobuiltin nounwind
declare dso_local void @"??3@YAXPEAX_K@Z"(ptr noundef, i64 noundef) local_unnamed_addr #13

declare dso_local void @__std_exception_destroy(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"??_Gbad_alloc@std@@UEAAPEAXI@Z"(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #5 comdat align 2 {
  tail call void @"??1bad_alloc@std@@UEAA@XZ"(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #20
  %3 = and i32 %1, 1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @"??3@YAXPEAX_K@Z"(ptr noundef nonnull %0, i64 noundef 24) #25
  br label %6

6:                                                ; preds = %5, %2
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"??1bad_alloc@std@@UEAA@XZ"(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 {
  tail call void @"??1exception@std@@UEAA@XZ"(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"??_Gbad_array_new_length@std@@UEAAPEAXI@Z"(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #5 comdat align 2 {
  tail call void @"??1bad_array_new_length@std@@UEAA@XZ"(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #20
  %3 = and i32 %1, 1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @"??3@YAXPEAX_K@Z"(ptr noundef nonnull %0, i64 noundef 24) #25
  br label %6

6:                                                ; preds = %5, %2
  ret ptr %0
}

declare dso_local void @__std_exception_copy(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare dso_local noundef nonnull ptr @"??2@YAPEAX_K@Z"(i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"??$_Traits_copy_batch@U?$char_traits@D@std@@D@std@@YAXQEADQEBD_K@Z"(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat {
  %4 = tail call noundef ptr @"?copy@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(ptr noundef %0, ptr noundef %1, i64 noundef %2) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"?copy@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %1, i64 %2, i1 false)
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #9

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"?deallocate@?$allocator@D@std@@QEAAXQEAD_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 {
  tail call void @"??$_Deallocate@$0BA@@std@@YAXPEAX_K@Z"(ptr noundef %1, i64 noundef %2) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"??$_Deallocate@$0BA@@std@@YAXPEAX_K@Z"(ptr noundef %0, i64 noundef %1) local_unnamed_addr #5 comdat personality ptr @__CxxFrameHandler3 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store i64 %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = icmp ugt i64 %1, 4095
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  call void @"?_Adjust_manually_vector_aligned@std@@YAXAEAPEAXAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %.pre = load i64, ptr %3, align 8
  %.pre1 = load ptr, ptr %4, align 8
  br label %7

7:                                                ; preds = %6, %2
  %8 = phi ptr [ %.pre1, %6 ], [ %0, %2 ]
  %9 = phi i64 [ %.pre, %6 ], [ %1, %2 ]
  call void @"??3@YAXPEAX_K@Z"(ptr noundef %8, i64 noundef %9) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"?_Adjust_manually_vector_aligned@std@@YAXAEAPEAXAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat {
  %3 = load i64, ptr %1, align 8
  %4 = add i64 %3, 39
  store i64 %4, ptr %1, align 8
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr inbounds i8, ptr %5, i64 -8
  %7 = load i64, ptr %6, align 8
  %8 = ptrtoint ptr %5 to i64
  %reass.sub = sub i64 %8, %7
  %9 = add i64 %reass.sub, -8
  %or.cond = icmp ult i64 %9, 32
  br i1 %or.cond, label %11, label %10

10:                                               ; preds = %2
  tail call void @llvm.trap()
  unreachable

11:                                               ; preds = %2
  %12 = inttoptr i64 %7 to ptr
  store ptr %12, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare dso_local i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #15

declare dso_local noalias ptr @_aligned_malloc(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local i32 @fprintf(ptr noundef %0, ptr noundef %1, ...) local_unnamed_addr #5 comdat {
  %3 = alloca ptr, align 8
  call void @llvm.va_start.p0(ptr nonnull %3)
  %4 = load ptr, ptr %3, align 8
  %5 = call i32 @_vfprintf_l(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef %4) #20
  call void @llvm.va_end.p0(ptr nonnull %3)
  ret i32 %5
}

declare dso_local ptr @__acrt_iob_func(i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree noreturn
declare dso_local void @exit(i32 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #17

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local i32 @_vfprintf_l(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat {
  %5 = tail call ptr @__local_stdio_printf_options()
  %6 = load i64, ptr %5, align 8
  %7 = tail call i32 @__stdio_common_vfprintf(i64 noundef %6, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  ret i32 %7
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #17

declare dso_local i32 @__stdio_common_vfprintf(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local ptr @__local_stdio_printf_options() local_unnamed_addr #5 comdat {
  ret ptr @"?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA"
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @"?lcg@bench@@YA_KAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat {
  %2 = load i64, ptr %0, align 8
  %3 = mul i64 %2, 6364136223846793005
  %4 = add i64 %3, 1442695040888963407
  store i64 %4, ptr %0, align 8
  ret i64 %4
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

declare dllimport i32 @SetProcessAffinityMask(ptr noundef, i64 noundef) local_unnamed_addr #6

declare dllimport ptr @GetCurrentProcess() local_unnamed_addr #6

declare dllimport i32 @GetLastError() local_unnamed_addr #6

declare dllimport i32 @SetPriorityClass(ptr noundef, i32 noundef) local_unnamed_addr #6

declare dllimport i32 @timeBeginPeriod(i32 noundef) local_unnamed_addr #6

declare dso_local void @_aligned_free(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #5 comdat align 2 {
  tail call void @"?_Tidy_deallocate@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #20
  tail call void @"??1?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@XZ"(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"?_Tidy_deallocate@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 {
  %2 = alloca i8, align 1
  tail call void @"?_Orphan_all@_Container_base0@std@@QEAAXXZ"(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  %3 = tail call noundef zeroext i1 @"?_Large_mode_engaged@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBA_NXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #20
  br i1 %3, label %4, label %9

4:                                                ; preds = %1
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #20
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %7 = load i64, ptr %6, align 8
  %8 = load ptr, ptr %0, align 8
  tail call void @"?_Deallocate_for_capacity@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAXAEAV?$allocator@D@2@QEAD_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %8, i64 noundef %7) #20
  tail call void @"?_Switch_to_buf@_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(16) %0) #20
  br label %9

9:                                                ; preds = %4, %1
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %10, align 8
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 15, ptr %11, align 8
  store i8 0, ptr %2, align 1
  call void @"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %2) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"??1?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@XZ"(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #5 comdat align 2 {
  tail call void @"??1?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"?_Switch_to_buf@_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #5 comdat align 2 {
  tail call void @"??$_Destroy_in_place@PEAD@std@@YAXAEAPEAD@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"??$_Destroy_in_place@PEAD@std@@YAXAEAPEAD@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat {
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"??1?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #5 comdat align 2 {
  tail call void @"??1_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"??1_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBAPEBDXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 {
  %2 = tail call noundef zeroext i1 @"?_Large_mode_engaged@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBA_NXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #20
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8
  %5 = tail call noundef ptr @"??$_Unfancy@D@std@@YAPEADPEAD@Z"(ptr noundef %4) #20
  br label %6

6:                                                ; preds = %3, %1
  %.0 = phi ptr [ %5, %3 ], [ %0, %1 ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef double @"?qpc_ns_per_tick@bench@@YANXZ"() local_unnamed_addr #3 comdat {
  %1 = alloca %union._LARGE_INTEGER, align 8
  %2 = call i32 @QueryPerformanceFrequency(ptr noundef nonnull %1)
  %3 = load i64, ptr %1, align 8
  %4 = sitofp i64 %3 to double
  %5 = fdiv double 1.000000e+09, %4
  ret double %5
}

declare dllimport i32 @QueryPerformanceCounter(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline norecurse uwtable
define internal fastcc void @"??R<lambda_0>@?0??main@@9@QEBA?A?<auto>@@XZ"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #2 align 2 {
  %2 = load ptr, ptr %0, align 8, !nonnull !37, !align !38
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %5 = load ptr, ptr %4, align 8, !nonnull !37, !align !38
  %6 = load i64, ptr %5, align 8
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %8 = load ptr, ptr %7, align 8, !nonnull !37, !align !38
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %11 = load ptr, ptr %10, align 8, !nonnull !37, !align !38
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %14 = load ptr, ptr %13, align 8, !nonnull !37, !align !38
  %15 = load ptr, ptr %14, align 8
  tail call void %3(ptr noundef %15, ptr noundef %12, ptr noundef %9, i64 noundef %6)
  ret void
}

declare dllimport i32 @QueryPerformanceFrequency(ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="alderlake" "target-features"="+adx,+aes,+avx,+avx2,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+pconfig,+pku,+popcnt,+prfchw,+ptwrite,+rdpid,+rdrnd,+rdseed,+sahf,+serialize,+sgx,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+waitpkg,+widekl,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) "target-cpu"="alderlake" }
attributes #2 = { mustprogress noinline norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="alderlake" "target-features"="+adx,+aes,+avx,+avx2,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+pconfig,+pku,+popcnt,+prfchw,+ptwrite,+rdpid,+rdrnd,+rdseed,+sahf,+serialize,+sgx,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+waitpkg,+widekl,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="alderlake" "target-features"="+adx,+aes,+avx,+avx2,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+pconfig,+pku,+popcnt,+prfchw,+ptwrite,+rdpid,+rdrnd,+rdseed,+sahf,+serialize,+sgx,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+waitpkg,+widekl,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { "target-cpu"="alderlake" }
attributes #5 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="alderlake" "target-features"="+adx,+aes,+avx,+avx2,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+pconfig,+pku,+popcnt,+prfchw,+ptwrite,+rdpid,+rdrnd,+rdseed,+sahf,+serialize,+sgx,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+waitpkg,+widekl,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="alderlake" "target-features"="+adx,+aes,+avx,+avx2,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+pconfig,+pku,+popcnt,+prfchw,+ptwrite,+rdpid,+rdrnd,+rdseed,+sahf,+serialize,+sgx,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+waitpkg,+widekl,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="alderlake" "target-features"="+adx,+aes,+avx,+avx2,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+pconfig,+pku,+popcnt,+prfchw,+ptwrite,+rdpid,+rdrnd,+rdseed,+sahf,+serialize,+sgx,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+waitpkg,+widekl,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write) "target-cpu"="alderlake" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "target-cpu"="alderlake" }
attributes #10 = { mustprogress noinline noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="alderlake" "target-features"="+adx,+aes,+avx,+avx2,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+pconfig,+pku,+popcnt,+prfchw,+ptwrite,+rdpid,+rdrnd,+rdseed,+sahf,+serialize,+sgx,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+waitpkg,+widekl,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="alderlake" "target-features"="+adx,+aes,+avx,+avx2,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+pconfig,+pku,+popcnt,+prfchw,+ptwrite,+rdpid,+rdrnd,+rdseed,+sahf,+serialize,+sgx,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+waitpkg,+widekl,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #12 = { cold noreturn nounwind memory(inaccessiblemem: write) "target-cpu"="alderlake" }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="alderlake" "target-features"="+adx,+aes,+avx,+avx2,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+pconfig,+pku,+popcnt,+prfchw,+ptwrite,+rdpid,+rdrnd,+rdseed,+sahf,+serialize,+sgx,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+waitpkg,+widekl,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #14 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="alderlake" "target-features"="+adx,+aes,+avx,+avx2,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+pconfig,+pku,+popcnt,+prfchw,+ptwrite,+rdpid,+rdrnd,+rdseed,+sahf,+serialize,+sgx,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+waitpkg,+widekl,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="alderlake" "target-features"="+adx,+aes,+avx,+avx2,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+pconfig,+pku,+popcnt,+prfchw,+ptwrite,+rdpid,+rdrnd,+rdseed,+sahf,+serialize,+sgx,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+waitpkg,+widekl,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #16 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="alderlake" "target-features"="+adx,+aes,+avx,+avx2,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+pconfig,+pku,+popcnt,+prfchw,+ptwrite,+rdpid,+rdrnd,+rdseed,+sahf,+serialize,+sgx,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+waitpkg,+widekl,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn "target-cpu"="alderlake" }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nounwind }
attributes #21 = { cold noreturn }
attributes #22 = { noreturn }
attributes #23 = { allocsize(0) }
attributes #24 = { noreturn nounwind }
attributes #25 = { builtin nounwind }

!llvm.dbg.cu = !{!0}
!llvm.linker.options = !{!2, !2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!llvm.module.flags = !{!12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "clang version 23.1.5 (https://github.com/llvm/llvm-project 392dfff97d29b59d77e5cac6d4b6ef2585fe7117)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "C:\\work\\llvm-profitability-research\\benchmarks\\producer_consumer.cpp", directory: "C:\\work\\llvm-profitability-research")
!2 = !{!"/DEFAULTLIB:uuid.lib"}
!3 = !{!"/FAILIFMISMATCH:\22_MSC_VER=1900\22"}
!4 = !{!"/FAILIFMISMATCH:\22_ITERATOR_DEBUG_LEVEL=0\22"}
!5 = !{!"/FAILIFMISMATCH:\22RuntimeLibrary=MT_StaticRelease\22"}
!6 = !{!"/DEFAULTLIB:libcpmt.lib"}
!7 = !{!"/FAILIFMISMATCH:\22_CRT_STDIO_ISO_WIDE_SPECIFIERS=0\22"}
!8 = !{!"/FAILIFMISMATCH:\22annotate_string=0\22"}
!9 = !{!"/FAILIFMISMATCH:\22annotate_vector=0\22"}
!10 = !{!"/FAILIFMISMATCH:\22annotate_optional=0\22"}
!11 = !{!"/alternatename:_Avx2WmemEnabled=_Avx2WmemEnabledWeakValue"}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 8, !"PIC Level", i32 2}
!14 = !{i32 7, !"uwtable", i32 2}
!15 = !{i32 1, !"MaxTLSAlign", i32 65536}
!16 = !{!"clang version 23.1.5 (https://github.com/llvm/llvm-project 392dfff97d29b59d77e5cac6d4b6ef2585fe7117)"}
!17 = distinct !{!17, !18, !19, !20, !21}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!"llvm.loop.isvectorized", i32 1}
!20 = !{!"llvm.loop.vectorize.body", i32 1}
!21 = !{!"llvm.loop.unroll.runtime.disable"}
!22 = !{!"branch_weights", i32 4, i32 12}
!23 = distinct !{!23, !18, !19, !24, !20, !21}
!24 = !{!"llvm.loop.vectorize.epilogue", i32 1}
!25 = distinct !{!25, !18, !21, !19, !24, !24}
!26 = distinct !{!26, !18, !19, !20, !21}
!27 = distinct !{!27, !18, !19, !24, !20, !21}
!28 = distinct !{!28, !18, !21, !19, !24, !24}
!29 = distinct !{!29, !18}
!30 = distinct !{!30, !18}
!31 = distinct !{!31, !18}
!32 = distinct !{!32, !18}
!33 = distinct !{!33, !34}
!34 = !{!"llvm.loop.unroll.disable"}
!35 = distinct !{!35, !18}
!36 = distinct !{!36, !18}
!37 = !{}
!38 = !{i64 8}
