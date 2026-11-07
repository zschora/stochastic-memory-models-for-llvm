; ModuleID = 'C:\work\llvm-profitability-research\results\r1\EXP-20261107-R1A\known_vec\known_vec.frontend.ll'
source_filename = "C:\\work\\llvm-profitability-research\\benchmarks\\known_vec.cpp"
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
%class.anon.0 = type { ptr, ptr, ptr, ptr }
%class.anon.1 = type { ptr, ptr, ptr, ptr, ptr }
%union._LARGE_INTEGER = type { i64 }
%"struct.std::_Fake_allocator" = type { i8 }
%"class.std::bad_array_new_length" = type { %"class.std::bad_alloc" }
%"class.std::bad_alloc" = type { %"class.std::exception" }
%"class.std::exception" = type { ptr, %struct.__std_exception_data }
%struct.__std_exception_data = type { ptr, i8 }

$"?parse_args@bench@@YA?AUArgs@1@HPEAPEAD_KHH@Z" = comdat any

$"?aligned_alloc64@bench@@YAPEAX_K@Z" = comdat any

$"?init_u64@bench@@YAXPEA_K_K1@Z" = comdat any

$"?pin_environment@bench@@YAXXZ" = comdat any

$printf = comdat any

$"?hash_bytes@bench@@YA_KPEBX_K@Z" = comdat any

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

$"??_C@_04IEJGKNJ@body?$AA@" = comdat any

$"??_C@_02GIPFHKNO@OK?$AA@" = comdat any

$"??_C@_04OOEBCMBF@FAIL?$AA@" = comdat any

$"??_C@_0L@OALJHCFB@VERIFY?5?$CFs?6?$AA@" = comdat any

$"??_C@_0P@MAICADEK@CHECK?5?$CF016llx?6?$AA@" = comdat any

$"??_C@_05LABDNII@setup?$AA@" = comdat any

$"??_C@_0BA@MLBOPEBH@known_vec_setup?$AA@" = comdat any

$"??_C@_03CIPBMPOA@hot?$AA@" = comdat any

$"??_C@_0O@IHHGNLMH@known_vec_hot?$AA@" = comdat any

$"??_C@_0P@KNOMFIKG@known_vec_body?$AA@" = comdat any

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
@"??_C@_04IEJGKNJ@body?$AA@" = linkonce_odr dso_local unnamed_addr constant [5 x i8] c"body\00", comdat, align 4
@g_setup = internal global ptr @known_setup, align 8
@g_hot = internal global ptr @known_hot, align 8
@g_body = internal global ptr @known_body, align 8
@"??_C@_02GIPFHKNO@OK?$AA@" = linkonce_odr dso_local unnamed_addr constant [3 x i8] c"OK\00", comdat, align 4
@"??_C@_04OOEBCMBF@FAIL?$AA@" = linkonce_odr dso_local unnamed_addr constant [5 x i8] c"FAIL\00", comdat, align 4
@"??_C@_0L@OALJHCFB@VERIFY?5?$CFs?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [11 x i8] c"VERIFY %s\0A\00", comdat, align 8
@"??_C@_0P@MAICADEK@CHECK?5?$CF016llx?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"CHECK %016llx\0A\00", comdat, align 8
@"??_C@_05LABDNII@setup?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"setup\00", comdat, align 4
@"??_C@_0BA@MLBOPEBH@known_vec_setup?$AA@" = linkonce_odr dso_local unnamed_addr constant [16 x i8] c"known_vec_setup\00", comdat, align 8
@"??_C@_03CIPBMPOA@hot?$AA@" = linkonce_odr dso_local unnamed_addr constant [4 x i8] c"hot\00", comdat, align 4
@"??_C@_0O@IHHGNLMH@known_vec_hot?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"known_vec_hot\00", comdat, align 8
@"??_C@_0P@KNOMFIKG@known_vec_body?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"known_vec_body\00", comdat, align 8
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

@"??_7bad_array_new_length@std@@6B@" = alias ptr, getelementptr inbounds (i8, ptr @0, i64 8)
@"??_7bad_alloc@std@@6B@" = alias ptr, getelementptr inbounds (i8, ptr @1, i64 8)
@"??_7exception@std@@6B@" = alias ptr, getelementptr inbounds (i8, ptr @2, i64 8)
@"??_Eexception@std@@UEAAPEAXI@Z" = weak dso_local unnamed_addr alias ptr (ptr, i32), ptr @"??_Gexception@std@@UEAAPEAXI@Z"
@"??_Ebad_alloc@std@@UEAAPEAXI@Z" = weak dso_local unnamed_addr alias ptr (ptr, i32), ptr @"??_Gbad_alloc@std@@UEAAPEAXI@Z"
@"??_Ebad_array_new_length@std@@UEAAPEAXI@Z" = weak dso_local unnamed_addr alias ptr (ptr, i32), ptr @"??_Gbad_array_new_length@std@@UEAAPEAXI@Z"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @known_setup(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef writeonly captures(none) %1, ptr noalias nofree noundef writeonly captures(none) %2, i32 noundef %3) #0 {
  %5 = icmp sgt i32 %3, 0
  br i1 %5, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %4
  %wide.trip.count = zext nneg i32 %3 to i64
  %xtraiter = and i64 %wide.trip.count, 7
  %6 = icmp ult i32 %3, 8
  br i1 %6, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483640
  br label %.lr.ph

.lr.ph23.preheader.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph23.preheader, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.lr.ph23.preheader.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.7, %.lr.ph23.preheader.unr-lcssa ]
  %lcmp.mod34 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod34)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %7 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.epil
  %8 = load i64, ptr %7, align 8
  %9 = trunc i64 %8 to i8
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.epil
  store i8 %9, ptr %10, align 1
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph23.preheader, label %.lr.ph.epil, !llvm.loop !17

.lr.ph23.preheader:                               ; preds = %.lr.ph.epil, %.lr.ph23.preheader.unr-lcssa
  %wide.trip.count28 = zext nneg i32 %3 to i64
  %min.iters.check = icmp ult i32 %3, 64
  br i1 %min.iters.check, label %.lr.ph23.preheader33, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph23.preheader
  %n.vec = and i64 %wide.trip.count, 2147483584
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %11 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 128
  %13 = getelementptr inbounds nuw i8, ptr %11, i64 256
  %14 = getelementptr inbounds nuw i8, ptr %11, i64 384
  %wide.load = load <16 x i64>, ptr %11, align 8
  %wide.load30 = load <16 x i64>, ptr %12, align 8
  %wide.load31 = load <16 x i64>, ptr %13, align 8
  %wide.load32 = load <16 x i64>, ptr %14, align 8
  %15 = trunc <16 x i64> %wide.load to <16 x i8>
  %16 = trunc <16 x i64> %wide.load30 to <16 x i8>
  %17 = trunc <16 x i64> %wide.load31 to <16 x i8>
  %18 = trunc <16 x i64> %wide.load32 to <16 x i8>
  %19 = getelementptr inbounds nuw i8, ptr %1, i64 %index
  %20 = getelementptr inbounds nuw i8, ptr %19, i64 16
  %21 = getelementptr inbounds nuw i8, ptr %19, i64 32
  %22 = getelementptr inbounds nuw i8, ptr %19, i64 48
  store <16 x i8> %15, ptr %19, align 1
  store <16 x i8> %16, ptr %20, align 1
  store <16 x i8> %17, ptr %21, align 1
  store <16 x i8> %18, ptr %22, align 1
  %index.next = add nuw i64 %index, 64
  %23 = icmp eq i64 %index.next, %n.vec
  br i1 %23, label %middle.block, label %vector.body, !llvm.loop !19

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph23.preheader33

.lr.ph23.preheader33:                             ; preds = %.lr.ph23.preheader, %middle.block
  %indvars.iv25.ph = phi i64 [ 0, %.lr.ph23.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph23

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.7, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %24 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %25 = load i64, ptr %24, align 8
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  store i8 %26, ptr %27, align 1
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %28 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next
  %29 = load i64, ptr %28, align 8
  %30 = trunc i64 %29 to i8
  %31 = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next
  store i8 %30, ptr %31, align 1
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2
  %32 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.1
  %33 = load i64, ptr %32, align 8
  %34 = trunc i64 %33 to i8
  %35 = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next.1
  store i8 %34, ptr %35, align 1
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3
  %36 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.2
  %37 = load i64, ptr %36, align 8
  %38 = trunc i64 %37 to i8
  %39 = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next.2
  store i8 %38, ptr %39, align 1
  %indvars.iv.next.3 = or disjoint i64 %indvars.iv, 4
  %40 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.3
  %41 = load i64, ptr %40, align 8
  %42 = trunc i64 %41 to i8
  %43 = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next.3
  store i8 %42, ptr %43, align 1
  %indvars.iv.next.4 = or disjoint i64 %indvars.iv, 5
  %44 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.4
  %45 = load i64, ptr %44, align 8
  %46 = trunc i64 %45 to i8
  %47 = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next.4
  store i8 %46, ptr %47, align 1
  %indvars.iv.next.5 = or disjoint i64 %indvars.iv, 6
  %48 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.5
  %49 = load i64, ptr %48, align 8
  %50 = trunc i64 %49 to i8
  %51 = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next.5
  store i8 %50, ptr %51, align 1
  %indvars.iv.next.6 = or disjoint i64 %indvars.iv, 7
  %52 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.6
  %53 = load i64, ptr %52, align 8
  %54 = trunc i64 %53 to i8
  %55 = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next.6
  store i8 %54, ptr %55, align 1
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8
  %niter.next.7 = add i64 %niter, 8
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph23.preheader.unr-lcssa, label %.lr.ph, !llvm.loop !24

.lr.ph23:                                         ; preds = %.lr.ph23.preheader33, %.lr.ph23
  %indvars.iv25 = phi i64 [ %indvars.iv.next26, %.lr.ph23 ], [ %indvars.iv25.ph, %.lr.ph23.preheader33 ]
  %56 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv25
  %57 = load i64, ptr %56, align 8
  %58 = trunc i64 %57 to i8
  %59 = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv25
  store i8 %58, ptr %59, align 1
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  %exitcond29.not = icmp eq i64 %indvars.iv.next26, %wide.trip.count28
  br i1 %exitcond29.not, label %._crit_edge, label %.lr.ph23, !llvm.loop !27

._crit_edge:                                      ; preds = %.lr.ph23, %middle.block, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @known_hot(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef writeonly captures(none) %1, i32 noundef %2) #0 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %3
  %wide.trip.count = zext nneg i32 %2 to i64
  %min.iters.check = icmp ult i32 %2, 64
  br i1 %min.iters.check, label %.lr.ph.preheader14, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483584
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %5 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 128
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 256
  %8 = getelementptr inbounds nuw i8, ptr %5, i64 384
  %wide.load = load <16 x i64>, ptr %5, align 8
  %wide.load11 = load <16 x i64>, ptr %6, align 8
  %wide.load12 = load <16 x i64>, ptr %7, align 8
  %wide.load13 = load <16 x i64>, ptr %8, align 8
  %9 = trunc <16 x i64> %wide.load to <16 x i8>
  %10 = trunc <16 x i64> %wide.load11 to <16 x i8>
  %11 = trunc <16 x i64> %wide.load12 to <16 x i8>
  %12 = trunc <16 x i64> %wide.load13 to <16 x i8>
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 %index
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %15 = getelementptr inbounds nuw i8, ptr %13, i64 32
  %16 = getelementptr inbounds nuw i8, ptr %13, i64 48
  store <16 x i8> %9, ptr %13, align 1
  store <16 x i8> %10, ptr %14, align 1
  store <16 x i8> %11, ptr %15, align 1
  store <16 x i8> %12, ptr %16, align 1
  %index.next = add nuw i64 %index, 64
  %17 = icmp eq i64 %index.next, %n.vec
  br i1 %17, label %middle.block, label %vector.body, !llvm.loop !29

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader14

.lr.ph.preheader14:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader14, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader14 ]
  %18 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %19 = load i64, ptr %18, align 8
  %20 = trunc i64 %19 to i8
  %21 = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  store i8 %20, ptr %21, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !30

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @known_body(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef writeonly captures(none) %1, ptr noalias nofree noundef writeonly captures(none) %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = icmp sgt i32 %3, 0
  br i1 %6, label %.lr.ph.preheader, label %._crit_edge44.split

.lr.ph.preheader:                                 ; preds = %5
  %wide.trip.count = zext nneg i32 %3 to i64
  %xtraiter = and i64 %wide.trip.count, 7
  %7 = icmp ult i32 %3, 8
  br i1 %7, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483640
  br label %.lr.ph

.lr.ph40.preheader.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph40.preheader, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.lr.ph40.preheader.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.7, %.lr.ph40.preheader.unr-lcssa ]
  %lcmp.mod78 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod78)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %8 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.epil
  %9 = load i64, ptr %8, align 8
  %10 = trunc i64 %9 to i8
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.epil
  store i8 %10, ptr %11, align 1
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph40.preheader, label %.lr.ph.epil, !llvm.loop !31

.lr.ph40.preheader:                               ; preds = %.lr.ph.epil, %.lr.ph40.preheader.unr-lcssa
  %wide.trip.count49 = zext nneg i32 %3 to i64
  %min.iters.check = icmp ult i32 %3, 64
  br i1 %min.iters.check, label %.lr.ph40.preheader77, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph40.preheader
  %n.vec = and i64 %wide.trip.count, 2147483584
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %12 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 128
  %14 = getelementptr inbounds nuw i8, ptr %12, i64 256
  %15 = getelementptr inbounds nuw i8, ptr %12, i64 384
  %wide.load = load <16 x i64>, ptr %12, align 8
  %wide.load60 = load <16 x i64>, ptr %13, align 8
  %wide.load61 = load <16 x i64>, ptr %14, align 8
  %wide.load62 = load <16 x i64>, ptr %15, align 8
  %16 = trunc <16 x i64> %wide.load to <16 x i8>
  %17 = trunc <16 x i64> %wide.load60 to <16 x i8>
  %18 = trunc <16 x i64> %wide.load61 to <16 x i8>
  %19 = trunc <16 x i64> %wide.load62 to <16 x i8>
  %20 = getelementptr inbounds nuw i8, ptr %1, i64 %index
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 16
  %22 = getelementptr inbounds nuw i8, ptr %20, i64 32
  %23 = getelementptr inbounds nuw i8, ptr %20, i64 48
  store <16 x i8> %16, ptr %20, align 1
  store <16 x i8> %17, ptr %21, align 1
  store <16 x i8> %18, ptr %22, align 1
  store <16 x i8> %19, ptr %23, align 1
  %index.next = add nuw i64 %index, 64
  %24 = icmp eq i64 %index.next, %n.vec
  br i1 %24, label %middle.block, label %vector.body, !llvm.loop !32

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader36, label %.lr.ph40.preheader77

.lr.ph40.preheader77:                             ; preds = %.lr.ph40.preheader, %middle.block
  %indvars.iv46.ph = phi i64 [ 0, %.lr.ph40.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph40

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.7, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %25 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %26 = load i64, ptr %25, align 8
  %27 = trunc i64 %26 to i8
  %28 = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  store i8 %27, ptr %28, align 1
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %29 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next
  %30 = load i64, ptr %29, align 8
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next
  store i8 %31, ptr %32, align 1
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2
  %33 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.1
  %34 = load i64, ptr %33, align 8
  %35 = trunc i64 %34 to i8
  %36 = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next.1
  store i8 %35, ptr %36, align 1
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3
  %37 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.2
  %38 = load i64, ptr %37, align 8
  %39 = trunc i64 %38 to i8
  %40 = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next.2
  store i8 %39, ptr %40, align 1
  %indvars.iv.next.3 = or disjoint i64 %indvars.iv, 4
  %41 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.3
  %42 = load i64, ptr %41, align 8
  %43 = trunc i64 %42 to i8
  %44 = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next.3
  store i8 %43, ptr %44, align 1
  %indvars.iv.next.4 = or disjoint i64 %indvars.iv, 5
  %45 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.4
  %46 = load i64, ptr %45, align 8
  %47 = trunc i64 %46 to i8
  %48 = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next.4
  store i8 %47, ptr %48, align 1
  %indvars.iv.next.5 = or disjoint i64 %indvars.iv, 6
  %49 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.5
  %50 = load i64, ptr %49, align 8
  %51 = trunc i64 %50 to i8
  %52 = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next.5
  store i8 %51, ptr %52, align 1
  %indvars.iv.next.6 = or disjoint i64 %indvars.iv, 7
  %53 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.6
  %54 = load i64, ptr %53, align 8
  %55 = trunc i64 %54 to i8
  %56 = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next.6
  store i8 %55, ptr %56, align 1
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8
  %niter.next.7 = add i64 %niter, 8
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph40.preheader.unr-lcssa, label %.lr.ph, !llvm.loop !24

.preheader36:                                     ; preds = %.lr.ph40, %middle.block
  %57 = icmp sgt i32 %4, 0
  br i1 %57, label %.preheader.preheader, label %._crit_edge44.split

.preheader.preheader:                             ; preds = %.preheader36
  %wide.trip.count54 = zext nneg i32 %3 to i64
  %min.iters.check64 = icmp ult i32 %3, 64
  %n.vec66 = and i64 %wide.trip.count, 2147483584
  %cmp.n75 = icmp eq i64 %n.vec66, %wide.trip.count
  br label %.preheader

.lr.ph40:                                         ; preds = %.lr.ph40.preheader77, %.lr.ph40
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %.lr.ph40 ], [ %indvars.iv46.ph, %.lr.ph40.preheader77 ]
  %58 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv46
  %59 = load i64, ptr %58, align 8
  %60 = trunc i64 %59 to i8
  %61 = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv46
  store i8 %60, ptr %61, align 1
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  %exitcond50.not = icmp eq i64 %indvars.iv.next47, %wide.trip.count49
  br i1 %exitcond50.not, label %.preheader36, label %.lr.ph40, !llvm.loop !33

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.043 = phi i32 [ %79, %._crit_edge ], [ 0, %.preheader.preheader ]
  br i1 %min.iters.check64, label %scalar.ph63.preheader, label %vector.body67

vector.body67:                                    ; preds = %.preheader, %vector.body67
  %index68 = phi i64 [ %index.next73, %vector.body67 ], [ 0, %.preheader ]
  %62 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index68
  %63 = getelementptr inbounds nuw i8, ptr %62, i64 128
  %64 = getelementptr inbounds nuw i8, ptr %62, i64 256
  %65 = getelementptr inbounds nuw i8, ptr %62, i64 384
  %wide.load69 = load <16 x i64>, ptr %62, align 8
  %wide.load70 = load <16 x i64>, ptr %63, align 8
  %wide.load71 = load <16 x i64>, ptr %64, align 8
  %wide.load72 = load <16 x i64>, ptr %65, align 8
  %66 = trunc <16 x i64> %wide.load69 to <16 x i8>
  %67 = trunc <16 x i64> %wide.load70 to <16 x i8>
  %68 = trunc <16 x i64> %wide.load71 to <16 x i8>
  %69 = trunc <16 x i64> %wide.load72 to <16 x i8>
  %70 = getelementptr inbounds nuw i8, ptr %1, i64 %index68
  %71 = getelementptr inbounds nuw i8, ptr %70, i64 16
  %72 = getelementptr inbounds nuw i8, ptr %70, i64 32
  %73 = getelementptr inbounds nuw i8, ptr %70, i64 48
  store <16 x i8> %66, ptr %70, align 1
  store <16 x i8> %67, ptr %71, align 1
  store <16 x i8> %68, ptr %72, align 1
  store <16 x i8> %69, ptr %73, align 1
  %index.next73 = add nuw i64 %index68, 64
  %74 = icmp eq i64 %index.next73, %n.vec66
  br i1 %74, label %middle.block74, label %vector.body67, !llvm.loop !34

middle.block74:                                   ; preds = %vector.body67
  br i1 %cmp.n75, label %._crit_edge, label %scalar.ph63.preheader

scalar.ph63.preheader:                            ; preds = %.preheader, %middle.block74
  %indvars.iv51.ph = phi i64 [ 0, %.preheader ], [ %n.vec66, %middle.block74 ]
  br label %scalar.ph63

scalar.ph63:                                      ; preds = %scalar.ph63.preheader, %scalar.ph63
  %indvars.iv51 = phi i64 [ %indvars.iv.next52, %scalar.ph63 ], [ %indvars.iv51.ph, %scalar.ph63.preheader ]
  %75 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv51
  %76 = load i64, ptr %75, align 8
  %77 = trunc i64 %76 to i8
  %78 = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv51
  store i8 %77, ptr %78, align 1
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1
  %exitcond55.not = icmp eq i64 %indvars.iv.next52, %wide.trip.count54
  br i1 %exitcond55.not, label %._crit_edge, label %scalar.ph63, !llvm.loop !35

._crit_edge:                                      ; preds = %scalar.ph63, %middle.block74
  %79 = add nuw nsw i32 %.043, 1
  %exitcond56.not = icmp eq i32 %79, %4
  br i1 %exitcond56.not, label %._crit_edge44.split, label %.preheader, !llvm.loop !36

._crit_edge44.split:                              ; preds = %._crit_edge, %5, %.preheader36
  ret void
}

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef range(i32 0, 2) i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #1 personality ptr @__CxxFrameHandler3 {
  %3 = alloca %"struct.bench::Args", align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca %class.anon, align 8
  %12 = alloca %class.anon.0, align 8
  %13 = alloca %class.anon.1, align 8
  %14 = icmp sgt i32 %0, 5
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %17 = load ptr, ptr %16, align 8
  br label %18

18:                                               ; preds = %2, %15
  %19 = phi ptr [ %17, %15 ], [ @"??_C@_04IEJGKNJ@body?$AA@", %2 ]
  call void @"?parse_args@bench@@YA?AUArgs@1@HPEAPEAD_KHH@Z"(ptr dead_on_unwind nonnull writable sret(%"struct.bench::Args") align 8 %3, i32 noundef %0, ptr noundef %1, i64 noundef 10000, i32 noundef 32, i32 noundef 9)
  %20 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %21 = load i64, ptr %20, align 8
  store i64 %21, ptr %4, align 8
  %22 = shl i64 %21, 3
  %23 = invoke noundef ptr @"?aligned_alloc64@bench@@YAPEAX_K@Z"(i64 noundef %22)
          to label %24 unwind label %133

24:                                               ; preds = %18
  store ptr %23, ptr %5, align 8
  %25 = invoke noundef ptr @"?aligned_alloc64@bench@@YAPEAX_K@Z"(i64 noundef %21)
          to label %26 unwind label %133

26:                                               ; preds = %24
  store ptr %25, ptr %6, align 8
  %27 = invoke noundef ptr @"?aligned_alloc64@bench@@YAPEAX_K@Z"(i64 noundef %21)
          to label %28 unwind label %133

28:                                               ; preds = %26
  store ptr %27, ptr %7, align 8
  invoke void @"?init_u64@bench@@YAXPEA_K_K1@Z"(ptr noundef %23, i64 noundef %21, i64 noundef 12345)
          to label %29 unwind label %133

29:                                               ; preds = %28
  invoke void @"?pin_environment@bench@@YAXXZ"()
          to label %30 unwind label %133

30:                                               ; preds = %29
  %31 = load atomic volatile ptr, ptr @g_setup acquire, align 8
  store ptr %31, ptr %8, align 8
  %32 = load atomic volatile ptr, ptr @g_hot acquire, align 8
  store ptr %32, ptr %9, align 8
  %33 = load atomic volatile ptr, ptr @g_body acquire, align 8
  store ptr %33, ptr %10, align 8
  %34 = load ptr, ptr %8, align 8
  %35 = load i64, ptr %4, align 8
  %36 = trunc i64 %35 to i32
  %37 = load ptr, ptr %7, align 8
  %38 = load ptr, ptr %6, align 8
  %39 = load ptr, ptr %5, align 8
  invoke void %34(ptr noundef %39, ptr noundef %38, ptr noundef %37, i32 noundef %36)
          to label %.preheader34 unwind label %133

.preheader34:                                     ; preds = %30
  %.not43 = icmp eq i64 %35, 0
  br i1 %.not43, label %._crit_edge, label %.lr.ph

40:                                               ; preds = %47
  %41 = add nuw i64 %.02535, 1
  %exitcond.not = icmp eq i64 %41, %35
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !37

.lr.ph:                                           ; preds = %.preheader34, %40
  %.02535 = phi i64 [ %41, %40 ], [ 0, %.preheader34 ]
  %42 = getelementptr inbounds nuw i8, ptr %38, i64 %.02535
  %43 = load i8, ptr %42, align 1
  %44 = getelementptr inbounds nuw [8 x i8], ptr %39, i64 %.02535
  %45 = load i64, ptr %44, align 8
  %46 = trunc i64 %45 to i8
  %.not = icmp eq i8 %43, %46
  br i1 %.not, label %47, label %._crit_edge

47:                                               ; preds = %.lr.ph
  %48 = getelementptr inbounds nuw i8, ptr %37, i64 %.02535
  %49 = load i8, ptr %48, align 1
  %.not28 = icmp eq i8 %49, %43
  br i1 %.not28, label %40, label %._crit_edge

._crit_edge:                                      ; preds = %40, %47, %.lr.ph, %.preheader34
  %.lcssa = phi i1 [ false, %.preheader34 ], [ true, %.lr.ph ], [ true, %47 ], [ false, %40 ]
  %50 = phi ptr [ @"??_C@_02GIPFHKNO@OK?$AA@", %.preheader34 ], [ @"??_C@_04OOEBCMBF@FAIL?$AA@", %.lr.ph ], [ @"??_C@_04OOEBCMBF@FAIL?$AA@", %47 ], [ @"??_C@_02GIPFHKNO@OK?$AA@", %40 ]
  %51 = invoke i32 (ptr, ...) @printf(ptr noundef nonnull @"??_C@_0L@OALJHCFB@VERIFY?5?$CFs?6?$AA@", ptr noundef nonnull %50)
          to label %52 unwind label %133

52:                                               ; preds = %._crit_edge
  br i1 %.lcssa, label %132, label %53

53:                                               ; preds = %52
  %54 = load i64, ptr %4, align 8
  %55 = load ptr, ptr %6, align 8
  %56 = call noundef i64 @"?hash_bytes@bench@@YA_KPEBX_K@Z"(ptr noundef %55, i64 noundef %54)
  %57 = load ptr, ptr %7, align 8
  %58 = call noundef i64 @"?hash_bytes@bench@@YA_KPEBX_K@Z"(ptr noundef %57, i64 noundef %54)
  %59 = xor i64 %58, %56
  %60 = invoke i32 (ptr, ...) @printf(ptr noundef nonnull @"??_C@_0P@MAICADEK@CHECK?5?$CF016llx?6?$AA@", i64 noundef %59)
          to label %61 unwind label %133

61:                                               ; preds = %53
  %62 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull dereferenceable(6) @"??_C@_05LABDNII@setup?$AA@") #18
  %.not30 = icmp eq i32 %62, 0
  br i1 %.not30, label %.preheader, label %84

.preheader:                                       ; preds = %61, %71
  %.023 = phi i32 [ %72, %71 ], [ 0, %61 ]
  %63 = icmp samesign ult i32 %.023, 16
  br i1 %63, label %64, label %73

64:                                               ; preds = %.preheader
  %65 = load ptr, ptr %8, align 8
  %66 = load i64, ptr %4, align 8
  %67 = trunc i64 %66 to i32
  %68 = load ptr, ptr %7, align 8
  %69 = load ptr, ptr %6, align 8
  %70 = load ptr, ptr %5, align 8
  invoke void %65(ptr noundef %70, ptr noundef %69, ptr noundef %68, i32 noundef %67)
          to label %71 unwind label %133

71:                                               ; preds = %64
  %72 = add nuw nsw i32 %.023, 1
  br label %.preheader, !llvm.loop !38

73:                                               ; preds = %.preheader
  store ptr %8, ptr %11, align 8
  %74 = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %5, ptr %74, align 8
  %75 = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %6, ptr %75, align 8
  %76 = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %7, ptr %76, align 8
  %77 = getelementptr inbounds nuw i8, ptr %11, i64 32
  store ptr %4, ptr %77, align 8
  %78 = getelementptr inbounds nuw i8, ptr %3, i64 44
  %79 = load i32, ptr %78, align 4
  %80 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %81 = load i32, ptr %80, align 8
  %82 = load i64, ptr %4, align 8
  %83 = call noundef ptr @"?c_str@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBAPEBDXZ"(ptr noundef nonnull align 8 dereferenceable(32) %3) #18
  invoke fastcc void @"??$run_trials@V<lambda_0>@?0??main@@9@@bench@@YAXPEBD0_KHHV<lambda_0>@?0??main@@9@@Z"(ptr noundef %83, i64 noundef %82, i32 noundef %81, i32 noundef %79, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(40) %11)
          to label %126 unwind label %133

84:                                               ; preds = %61
  %85 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull dereferenceable(4) @"??_C@_03CIPBMPOA@hot?$AA@") #18
  %.not31 = icmp eq i32 %85, 0
  br i1 %.not31, label %.preheader32, label %.preheader33

.preheader32:                                     ; preds = %84, %93
  %.022 = phi i32 [ %94, %93 ], [ 0, %84 ]
  %86 = icmp samesign ult i32 %.022, 16
  br i1 %86, label %87, label %95

87:                                               ; preds = %.preheader32
  %88 = load ptr, ptr %9, align 8
  %89 = load i64, ptr %4, align 8
  %90 = trunc i64 %89 to i32
  %91 = load ptr, ptr %6, align 8
  %92 = load ptr, ptr %5, align 8
  invoke void %88(ptr noundef %92, ptr noundef %91, i32 noundef %90)
          to label %93 unwind label %133

93:                                               ; preds = %87
  %94 = add nuw nsw i32 %.022, 1
  br label %.preheader32, !llvm.loop !39

95:                                               ; preds = %.preheader32
  store ptr %9, ptr %12, align 8
  %96 = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %5, ptr %96, align 8
  %97 = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %6, ptr %97, align 8
  %98 = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr %4, ptr %98, align 8
  %99 = getelementptr inbounds nuw i8, ptr %3, i64 44
  %100 = load i32, ptr %99, align 4
  %101 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %102 = load i32, ptr %101, align 8
  %103 = load i64, ptr %4, align 8
  %104 = call noundef ptr @"?c_str@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBAPEBDXZ"(ptr noundef nonnull align 8 dereferenceable(32) %3) #18
  invoke fastcc void @"??$run_trials@V<lambda_1>@?0??main@@9@@bench@@YAXPEBD0_KHHV<lambda_1>@?0??main@@9@@Z"(ptr noundef %104, i64 noundef %103, i32 noundef %102, i32 noundef %100, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(32) %12)
          to label %126 unwind label %133

.preheader33:                                     ; preds = %84, %113
  %.0 = phi i32 [ %114, %113 ], [ 0, %84 ]
  %105 = icmp samesign ult i32 %.0, 4
  br i1 %105, label %106, label %115

106:                                              ; preds = %.preheader33
  %107 = load ptr, ptr %10, align 8
  %108 = load i64, ptr %4, align 8
  %109 = trunc i64 %108 to i32
  %110 = load ptr, ptr %7, align 8
  %111 = load ptr, ptr %6, align 8
  %112 = load ptr, ptr %5, align 8
  invoke void %107(ptr noundef %112, ptr noundef %111, ptr noundef %110, i32 noundef %109, i32 noundef 1000)
          to label %113 unwind label %133

113:                                              ; preds = %106
  %114 = add nuw nsw i32 %.0, 1
  br label %.preheader33, !llvm.loop !40

115:                                              ; preds = %.preheader33
  store ptr %10, ptr %13, align 8
  %116 = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %5, ptr %116, align 8
  %117 = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %6, ptr %117, align 8
  %118 = getelementptr inbounds nuw i8, ptr %13, i64 24
  store ptr %7, ptr %118, align 8
  %119 = getelementptr inbounds nuw i8, ptr %13, i64 32
  store ptr %4, ptr %119, align 8
  %120 = getelementptr inbounds nuw i8, ptr %3, i64 44
  %121 = load i32, ptr %120, align 4
  %122 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %123 = load i32, ptr %122, align 8
  %124 = load i64, ptr %4, align 8
  %125 = call noundef ptr @"?c_str@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBAPEBDXZ"(ptr noundef nonnull align 8 dereferenceable(32) %3) #18
  invoke fastcc void @"??$run_trials@V<lambda_2>@?0??main@@9@@bench@@YAXPEBD0_KHHV<lambda_2>@?0??main@@9@@Z"(ptr noundef %125, i64 noundef %124, i32 noundef %123, i32 noundef %121, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(40) %13)
          to label %126 unwind label %133

126:                                              ; preds = %115, %95, %73
  %127 = load ptr, ptr %5, align 8
  invoke void @"?aligned_free@bench@@YAXPEAX@Z"(ptr noundef %127)
          to label %128 unwind label %133

128:                                              ; preds = %126
  %129 = load ptr, ptr %6, align 8
  invoke void @"?aligned_free@bench@@YAXPEAX@Z"(ptr noundef %129)
          to label %130 unwind label %133

130:                                              ; preds = %128
  %131 = load ptr, ptr %7, align 8
  invoke void @"?aligned_free@bench@@YAXPEAX@Z"(ptr noundef %131)
          to label %132 unwind label %133

132:                                              ; preds = %130, %52
  %.024 = phi i32 [ 1, %52 ], [ 0, %130 ]
  call void @"??1Args@bench@@QEAA@XZ"(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #18
  ret i32 %.024

133:                                              ; preds = %115, %95, %73, %130, %128, %126, %106, %87, %64, %53, %._crit_edge, %30, %29, %28, %26, %24, %18
  %134 = cleanuppad within none []
  call void @"??1Args@bench@@QEAA@XZ"(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #18 [ "funclet"(token %134) ]
  cleanupret from %134 unwind to caller
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @"?parse_args@bench@@YA?AUArgs@1@HPEAPEAD_KHH@Z"(ptr dead_on_unwind noalias writable sret(%"struct.bench::Args") align 8 %0, i32 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #2 comdat personality ptr @__CxxFrameHandler3 {
  %7 = tail call noundef ptr @"??0Args@bench@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
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
  call void @"??1Args@bench@@QEAA@XZ"(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #18 [ "funclet"(token %39) ]
  cleanupret from %39 unwind to caller
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @"?aligned_alloc64@bench@@YAPEAX_K@Z"(i64 noundef %0) local_unnamed_addr #2 comdat {
  %2 = tail call noalias ptr @_aligned_malloc(i64 noundef %0, i64 noundef 64)
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %3, label %6

3:                                                ; preds = %1
  %4 = tail call ptr @__acrt_iob_func(i32 noundef 2)
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @"??_C@_0BP@DHDIOGLK@allocation?5failed?5?$CI?$CFzu?5bytes?$CJ?6?$AA@", i64 noundef %0) #18
  tail call void @exit(i32 noundef 2) #19
  unreachable

6:                                                ; preds = %1
  ret ptr %2
}

declare dso_local i32 @__CxxFrameHandler3(...) #3

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @"?init_u64@bench@@YAXPEA_K_K1@Z"(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat {
  %4 = alloca i64, align 8
  store i64 %2, ptr %4, align 8
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %3, %.lr.ph
  %.04 = phi i64 [ %7, %.lr.ph ], [ 0, %3 ]
  %5 = call noundef i64 @"?lcg@bench@@YA_KAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %4)
  %6 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.04
  store i64 %5, ptr %6, align 8
  %7 = add nuw i64 %.04, 1
  %exitcond.not = icmp eq i64 %7, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !41

._crit_edge:                                      ; preds = %.lr.ph, %3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @"?pin_environment@bench@@YAXXZ"() local_unnamed_addr #2 comdat {
  %1 = tail call ptr @GetCurrentProcess()
  %2 = tail call i32 @SetProcessAffinityMask(ptr noundef %1, i64 noundef 4)
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %3, label %7

3:                                                ; preds = %0
  %4 = tail call i32 @GetLastError()
  %5 = tail call ptr @__acrt_iob_func(i32 noundef 2)
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @"??_C@_0CO@BEMGKDJM@warning?3?5SetProcessAffinityMask?5@", i32 noundef %4) #18
  br label %7

7:                                                ; preds = %3, %0
  %8 = tail call ptr @GetCurrentProcess()
  %9 = tail call i32 @SetPriorityClass(ptr noundef %8, i32 noundef 128)
  %.not1 = icmp eq i32 %9, 0
  br i1 %.not1, label %10, label %14

10:                                               ; preds = %7
  %11 = tail call i32 @GetLastError()
  %12 = tail call ptr @__acrt_iob_func(i32 noundef 2)
  %13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef nonnull @"??_C@_0CI@JIDNHJK@warning?3?5SetPriorityClass?5failed@", i32 noundef %11) #18
  br label %14

14:                                               ; preds = %10, %7
  %15 = tail call i32 @timeBeginPeriod(i32 noundef 1)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local i32 @printf(ptr noundef %0, ...) local_unnamed_addr #2 comdat {
  %2 = alloca ptr, align 8
  call void @llvm.va_start.p0(ptr nonnull %2)
  %3 = load ptr, ptr %2, align 8
  %4 = call ptr @__acrt_iob_func(i32 noundef 1)
  %5 = call i32 @_vfprintf_l(ptr noundef %4, ptr noundef %0, ptr noundef null, ptr noundef %3)
  call void @llvm.va_end.p0(ptr nonnull %2)
  ret i32 %5
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @"?hash_bytes@bench@@YA_KPEBX_K@Z"(ptr noundef %0, i64 noundef %1) local_unnamed_addr #4 comdat {
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
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !42

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
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !43

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %2
  %.08.lcssa = phi i64 [ 1469598103934665603, %2 ], [ %50, %._crit_edge.loopexit.unr-lcssa ], [ %56, %.lr.ph.epil ]
  ret i64 %.08.lcssa
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare dso_local i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline norecurse uwtable
define internal fastcc void @"??$run_trials@V<lambda_0>@?0??main@@9@@bench@@YAXPEBD0_KHHV<lambda_0>@?0??main@@9@@Z"(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofreeobj noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %4) unnamed_addr #1 {
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
  br i1 %exitcond7.not, label %._crit_edge.us, label %13, !llvm.loop !44

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
  br i1 %exitcond8.not, label %._crit_edge5, label %.lr.ph.us, !llvm.loop !45

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
  br i1 %exitcond.not, label %._crit_edge5, label %.lr.ph4.split, !llvm.loop !45

._crit_edge5:                                     ; preds = %.lr.ph4.split, %._crit_edge.us, %5
  %34 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0DA@PKGLKAHC@META?5case?$DN?$CFs?5config?$DN?$CFs?5n?$DN?$CFzu?5rep@", ptr noundef nonnull @"??_C@_0BA@MLBOPEBH@known_vec_setup?$AA@", ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"?c_str@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBAPEBDXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 {
  %2 = tail call noundef ptr @"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBAPEBDXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret ptr %2
}

; Function Attrs: mustprogress noinline norecurse uwtable
define internal fastcc void @"??$run_trials@V<lambda_1>@?0??main@@9@@bench@@YAXPEBD0_KHHV<lambda_1>@?0??main@@9@@Z"(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofreeobj noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %4) unnamed_addr #1 {
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
  call fastcc void @"??R<lambda_1>@?0??main@@9@QEBA?A?<auto>@@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %4)
  %14 = add nuw nsw i32 %.0141.us, 1
  %exitcond7.not = icmp eq i32 %14, %2
  br i1 %exitcond7.not, label %._crit_edge.us, label %13, !llvm.loop !46

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
  br i1 %exitcond8.not, label %._crit_edge5, label %.lr.ph.us, !llvm.loop !47

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
  br i1 %exitcond.not, label %._crit_edge5, label %.lr.ph4.split, !llvm.loop !47

._crit_edge5:                                     ; preds = %.lr.ph4.split, %._crit_edge.us, %5
  %34 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0DA@PKGLKAHC@META?5case?$DN?$CFs?5config?$DN?$CFs?5n?$DN?$CFzu?5rep@", ptr noundef nonnull @"??_C@_0O@IHHGNLMH@known_vec_hot?$AA@", ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3)
  ret void
}

; Function Attrs: mustprogress noinline norecurse uwtable
define internal fastcc void @"??$run_trials@V<lambda_2>@?0??main@@9@@bench@@YAXPEBD0_KHHV<lambda_2>@?0??main@@9@@Z"(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofreeobj noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %4) unnamed_addr #1 {
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
  call fastcc void @"??R<lambda_2>@?0??main@@9@QEBA?A?<auto>@@XZ"(ptr noundef nonnull align 8 dereferenceable(40) %4)
  %14 = add nuw nsw i32 %.0141.us, 1
  %exitcond7.not = icmp eq i32 %14, %2
  br i1 %exitcond7.not, label %._crit_edge.us, label %13, !llvm.loop !48

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
  br i1 %exitcond8.not, label %._crit_edge5, label %.lr.ph.us, !llvm.loop !49

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
  br i1 %exitcond.not, label %._crit_edge5, label %.lr.ph4.split, !llvm.loop !49

._crit_edge5:                                     ; preds = %.lr.ph4.split, %._crit_edge.us, %5
  %34 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0DA@PKGLKAHC@META?5case?$DN?$CFs?5config?$DN?$CFs?5n?$DN?$CFzu?5rep@", ptr noundef nonnull @"??_C@_0P@KNOMFIKG@known_vec_body?$AA@", ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @"?aligned_free@bench@@YAXPEAX@Z"(ptr noundef %0) local_unnamed_addr #2 comdat {
  tail call void @_aligned_free(ptr noundef %0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"??1Args@bench@@QEAA@XZ"(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #4 comdat align 2 {
  tail call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"??0Args@bench@@QEAA@XZ"(ptr noundef nonnull returned align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 {
  %2 = tail call noundef ptr @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret ptr %0
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @"??4?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV01@QEBD@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 {
  %3 = tail call noundef nonnull align 8 dereferenceable(32) ptr @"?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1)
  ret ptr %3
}

declare dso_local i64 @_strtoui64(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(read)
declare dso_local i32 @atoi(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull returned align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 personality ptr @__CxxFrameHandler3 {
  %2 = tail call noundef ptr @"??$?0$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_Zero_then_variadic_args_t@1@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 undef) #18
  tail call void @"?_Construct_empty@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0)
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"??$?0$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_Zero_then_variadic_args_t@1@@Z"(ptr noundef nonnull returned align 8 dereferenceable(32) %0, i8 %1) unnamed_addr #4 comdat align 2 {
  %3 = tail call noundef ptr @"??0?$allocator@D@std@@QEAA@XZ"(ptr noundef nonnull align 1 dereferenceable(1) %0) #18
  %4 = tail call noundef ptr @"??0?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"?_Construct_empty@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 {
  %2 = alloca %"struct.std::_Fake_allocator", align 1
  %3 = alloca i8, align 1
  %4 = tail call noundef nonnull align 1 dereferenceable(1) ptr @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %5 = tail call i8 @"??$_Get_proxy_allocator@V?$allocator@D@std@@@std@@YA?AU_Fake_allocator@0@AEBV?$allocator@D@0@@Z"(ptr noundef nonnull align 1 dereferenceable(1) %4) #18
  call void @"?_Alloc_proxy@_Container_base0@std@@QEAAXAEBU_Fake_allocator@2@@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %2) #18
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %6, align 8
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 15, ptr %7, align 8
  call void @"?_Activate_SSO_buffer@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  store i8 0, ptr %3, align 1
  call void @"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %3) #18
  ret void
}

declare dso_local void @__std_terminate() local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"??0?$allocator@D@std@@QEAA@XZ"(ptr noundef nonnull returned align 1 dereferenceable(1) %0) unnamed_addr #4 comdat align 2 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"??0?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull returned align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 {
  %2 = tail call noundef ptr @"??0_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %0) #18
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"??0_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull returned align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"?_Alloc_proxy@_Container_base0@std@@QEAAXAEBU_Fake_allocator@2@@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #4 comdat align 2 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local i8 @"??$_Get_proxy_allocator@V?$allocator@D@std@@@std@@YA?AU_Fake_allocator@0@AEBV?$allocator@D@0@@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #4 comdat {
  ret i8 undef
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 {
  %2 = tail call noundef nonnull align 1 dereferenceable(1) ptr @"?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAAAEAV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"?_Activate_SSO_buffer@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #4 comdat align 2 {
  %3 = load i8, ptr %1, align 1
  store i8 %3, ptr %0, align 1
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @"?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAAAEAV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @"?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 {
  %3 = tail call noundef i64 @"?length@?$_Narrow_char_traits@DH@std@@SA_KQEBD@Z"(ptr noundef %1) #18
  %4 = tail call noundef i64 @"??$_Convert_size@_K_K@std@@YA_K_K@Z"(i64 noundef %3) #18
  %5 = tail call noundef nonnull align 8 dereferenceable(32) ptr @"??$_Assign@D@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@QEBD_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %4)
  ret ptr %5
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @"??$_Assign@D@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@QEBD_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 {
  %4 = alloca i8, align 1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = load i64, ptr %5, align 8
  %.not = icmp ugt i64 %2, %6
  br i1 %.not, label %11, label %7

7:                                                ; preds = %3
  %8 = tail call noundef ptr @"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAPEADXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %9, align 8
  tail call void @"??$_Traits_move_batch@U?$char_traits@D@std@@D@std@@YAXQEADQEBD_K@Z"(ptr noundef %8, ptr noundef %1, i64 noundef %2) #18
  store i8 0, ptr %4, align 1
  %10 = getelementptr inbounds nuw i8, ptr %8, i64 %2
  call void @"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"(ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull align 1 dereferenceable(1) %4) #18
  br label %13

11:                                               ; preds = %3
  %12 = tail call noundef nonnull align 8 dereferenceable(32) ptr @"??$_Reallocate_for@V<lambda_1>@?0???$_Assign@D@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV23@QEBD_K@Z@PEBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_1>@?0???$_Assign@D@01@AEAAAEAV01@QEBD0@Z@PEBD@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %2, i8 undef, ptr noundef %1)
  br label %13

13:                                               ; preds = %11, %7
  %.0 = phi ptr [ %0, %7 ], [ %12, %11 ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @"??$_Convert_size@_K_K@std@@YA_K_K@Z"(i64 noundef %0) local_unnamed_addr #4 comdat {
  ret i64 %0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @"?length@?$_Narrow_char_traits@DH@std@@SA_KQEBD@Z"(ptr noundef %0) local_unnamed_addr #4 comdat align 2 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #18
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAPEADXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 {
  %2 = tail call noundef zeroext i1 @"?_Large_mode_engaged@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBA_NXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8
  %5 = tail call noundef ptr @"??$_Unfancy@D@std@@YAPEADPEAD@Z"(ptr noundef %4) #18
  br label %6

6:                                                ; preds = %3, %1
  %.0 = phi ptr [ %5, %3 ], [ %0, %1 ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"??$_Traits_move_batch@U?$char_traits@D@std@@D@std@@YAXQEADQEBD_K@Z"(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat {
  %4 = tail call noundef ptr @"?move@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(ptr noundef %0, ptr noundef %1, i64 noundef %2) #18
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @"??$_Reallocate_for@V<lambda_1>@?0???$_Assign@D@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV23@QEBD_K@Z@PEBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_1>@?0???$_Assign@D@01@AEAAAEAV01@QEBD0@Z@PEBD@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i8 %2, ptr noundef %3) local_unnamed_addr #2 comdat align 2 {
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = tail call noundef i64 @"?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %8 = icmp ugt i64 %1, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  tail call void @"?_Xlen_string@std@@YAXXZ"() #20
  unreachable

10:                                               ; preds = %4
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %12 = load i64, ptr %11, align 8
  %13 = tail call noundef i64 @"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBA_K_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #18
  store i64 %13, ptr %5, align 8
  %14 = tail call noundef nonnull align 1 dereferenceable(1) ptr @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %15 = call noundef ptr @"??$_Allocate_for_capacity@$0A@@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAPEADAEAV?$allocator@D@1@AEA_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef nonnull align 8 dereferenceable(8) %5)
  store ptr %15, ptr %6, align 8
  call void @"?_Orphan_all@_Container_base0@std@@QEAAXXZ"(ptr noundef nonnull align 1 dereferenceable(1) %0) #18
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %1, ptr %16, align 8
  %17 = load i64, ptr %5, align 8
  store i64 %17, ptr %11, align 8
  %18 = call noundef ptr @"??$_Unfancy@D@std@@YAPEADPEAD@Z"(ptr noundef %15) #18
  call void @"??R<lambda_1>@?0???$_Assign@D@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV12@QEBD_K@Z@SA?A?<auto>@@QEAD10@Z"(ptr noundef %18, i64 noundef %1, ptr noundef %3)
  %19 = icmp ugt i64 %12, 15
  br i1 %19, label %20, label %22

20:                                               ; preds = %10
  %21 = load ptr, ptr %0, align 8
  call void @"?_Deallocate_for_capacity@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAXAEAV?$allocator@D@2@QEAD_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef %21, i64 noundef %12) #18
  store ptr %15, ptr %0, align 8
  br label %23

22:                                               ; preds = %10
  call void @"??$_Construct_in_place@PEADAEBQEAD@std@@YAXAEAPEADAEBQEAD@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %6) #18
  br label %23

23:                                               ; preds = %22, %20
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @"?_Large_mode_engaged@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBA_NXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %3 = load i64, ptr %2, align 8
  %4 = icmp ugt i64 %3, 15
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"??$_Unfancy@D@std@@YAPEADPEAD@Z"(ptr noundef %0) local_unnamed_addr #4 comdat {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"?move@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 {
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %0, ptr align 1 %1, i64 %2, i1 false)
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #9

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @"?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = tail call noundef nonnull align 1 dereferenceable(1) ptr @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBAAEBV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %7 = tail call noundef i64 @"?max_size@?$_Default_allocator_traits@V?$allocator@D@std@@@std@@SA_KAEBV?$allocator@D@2@@Z"(ptr noundef nonnull align 1 dereferenceable(1) %6) #18
  store i64 %7, ptr %2, align 8
  store i64 16, ptr %3, align 8
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @"??$max@_K@std@@YAAEB_KAEB_K0@Z"(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  %9 = load i64, ptr %8, align 8
  %10 = add i64 %9, -1
  store i64 %10, ptr %4, align 8
  %11 = call noundef i64 @"??$_Max_limit@_J@std@@YA_JXZ"() #18
  store i64 %11, ptr %5, align 8
  %12 = call noundef nonnull align 8 dereferenceable(8) ptr @"??$min@_K@std@@YAAEB_KAEB_K0@Z"(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  %13 = load i64, ptr %12, align 8
  ret i64 %13
}

; Function Attrs: mustprogress noinline noreturn uwtable
define linkonce_odr dso_local void @"?_Xlen_string@std@@YAXXZ"() local_unnamed_addr #10 comdat {
  tail call void @"?_Xlength_error@std@@YAXPEBD@Z"(ptr noundef nonnull @"??_C@_0BA@JFNIOLAK@string?5too?5long?$AA@") #20
  unreachable
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBA_K_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
  %3 = tail call noundef i64 @"?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %5 = load i64, ptr %4, align 8
  %6 = tail call noundef i64 @"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CA_K_K00@Z"(i64 noundef %1, i64 noundef %5, i64 noundef %3) #18
  ret i64 %6
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @"??$_Allocate_for_capacity@$0A@@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAPEADAEAV?$allocator@D@1@AEA_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 {
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
define linkonce_odr dso_local void @"?_Orphan_all@_Container_base0@std@@QEAAXXZ"(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #4 comdat align 2 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"??R<lambda_1>@?0???$_Assign@D@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV12@QEBD_K@Z@SA?A?<auto>@@QEAD10@Z"(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 {
  %4 = alloca i8, align 1
  tail call void @"??$_Traits_copy_batch@U?$char_traits@D@std@@D@std@@YAXQEADQEBD_K@Z"(ptr noundef %0, ptr noundef %2, i64 noundef %1) #18
  store i8 0, ptr %4, align 1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  call void @"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %4) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"?_Deallocate_for_capacity@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAXAEAV?$allocator@D@2@QEAD_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 {
  %4 = add i64 %2, 1
  tail call void @"?deallocate@?$allocator@D@std@@QEAAXQEAD_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %4) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"??$_Construct_in_place@PEADAEBQEAD@std@@YAXAEAPEADAEBQEAD@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat {
  %3 = load ptr, ptr %1, align 8
  store ptr %3, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @"?max_size@?$_Default_allocator_traits@V?$allocator@D@std@@@std@@SA_KAEBV?$allocator@D@2@@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #4 comdat align 2 {
  ret i64 -1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBAAEBV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 {
  %2 = tail call noundef nonnull align 1 dereferenceable(1) ptr @"?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEBAAEBV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @"??$max@_K@std@@YAAEB_KAEB_K0@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat {
  %3 = load i64, ptr %0, align 8
  %4 = load i64, ptr %1, align 8
  %5 = icmp ult i64 %3, %4
  %6 = select i1 %5, ptr %1, ptr %0
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @"??$min@_K@std@@YAAEB_KAEB_K0@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat {
  %3 = load i64, ptr %1, align 8
  %4 = load i64, ptr %0, align 8
  %5 = icmp ult i64 %3, %4
  %6 = select i1 %5, ptr %1, ptr %0
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @"??$_Max_limit@_J@std@@YA_JXZ"() local_unnamed_addr #4 comdat {
  ret i64 9223372036854775807
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @"?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEBAAEBV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 {
  ret ptr %0
}

; Function Attrs: noreturn
declare dso_local void @"?_Xlength_error@std@@YAXPEBD@Z"(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CA_K_K00@Z"(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 {
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
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @"??$max@_K@std@@YAAEB_KAEB_K0@Z"(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #18
  %15 = load i64, ptr %14, align 8
  br label %16

16:                                               ; preds = %8, %3, %12
  %.0 = phi i64 [ %15, %12 ], [ %2, %3 ], [ %2, %8 ]
  ret i64 %.0
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @"??$_Allocate_at_least_helper@V?$allocator@D@std@@@std@@YAPEADAEAV?$allocator@D@0@AEA_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat {
  %3 = load i64, ptr %1, align 8
  %4 = tail call noundef ptr @"?allocate@?$allocator@D@std@@QEAAPEAD_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %3)
  ret ptr %4
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @"?allocate@?$allocator@D@std@@QEAAPEAD_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 {
  %3 = tail call noundef i64 @"??$_Get_size_of_n@$00@std@@YA_K_K@Z"(i64 noundef %1)
  %4 = tail call noundef ptr @"??$_Allocate@$0BA@U_Default_allocate_traits@std@@@std@@YAPEAX_K@Z"(i64 noundef %3)
  ret ptr %4
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @"??$_Allocate@$0BA@U_Default_allocate_traits@std@@@std@@YAPEAX_K@Z"(i64 noundef %0) local_unnamed_addr #2 comdat {
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
define linkonce_odr dso_local noundef i64 @"??$_Get_size_of_n@$00@std@@YA_K_K@Z"(i64 noundef %0) local_unnamed_addr #4 comdat {
  ret i64 %0
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @"??$_Allocate_manually_vector_aligned@U_Default_allocate_traits@std@@@std@@YAPEAX_K@Z"(i64 noundef %0) local_unnamed_addr #2 comdat {
  %.not = icmp ult i64 %0, -39
  br i1 %.not, label %3, label %2

2:                                                ; preds = %1
  tail call void @"?_Throw_bad_array_new_length@std@@YAXXZ"() #20
  unreachable

3:                                                ; preds = %1
  %4 = add nuw i64 %0, 39
  %5 = tail call noundef ptr @"?_Allocate@_Default_allocate_traits@std@@SAPEAX_K@Z"(i64 noundef %4)
  %.not9 = icmp eq ptr %5, null
  br i1 %.not9, label %6, label %7

6:                                                ; preds = %3
  tail call void @llvm.trap() #21
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
define linkonce_odr dso_local noundef ptr @"?_Allocate@_Default_allocate_traits@std@@SAPEAX_K@Z"(i64 noundef %0) local_unnamed_addr #2 comdat align 2 {
  %2 = tail call noalias noundef nonnull ptr @"??2@YAPEAX_K@Z"(i64 noundef %0) #22
  ret ptr %2
}

; Function Attrs: mustprogress noinline noreturn uwtable
define linkonce_odr dso_local void @"?_Throw_bad_array_new_length@std@@YAXXZ"() local_unnamed_addr #10 comdat {
  %1 = alloca %"class.std::bad_array_new_length", align 8
  %2 = call noundef ptr @"??0bad_array_new_length@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %1) #18
  call void @_CxxThrowException(ptr nonnull %1, ptr nonnull @"_TI3?AVbad_array_new_length@std@@") #20
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #12

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"??0bad_array_new_length@std@@QEAA@XZ"(ptr noundef nonnull returned align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 {
  %2 = tail call noundef ptr @"??0bad_alloc@std@@AEAA@QEBD@Z"(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull @"??_C@_0BF@KINCDENJ@bad?5array?5new?5length?$AA@") #18
  store ptr @"??_7bad_array_new_length@std@@6B@", ptr %0, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"??0bad_array_new_length@std@@QEAA@AEBV01@@Z"(ptr noundef nonnull returned align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #4 comdat align 2 {
  %3 = tail call noundef ptr @"??0bad_alloc@std@@QEAA@AEBV01@@Z"(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #18
  store ptr @"??_7bad_array_new_length@std@@6B@", ptr %0, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"??0bad_alloc@std@@QEAA@AEBV01@@Z"(ptr noundef nonnull returned align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #4 comdat align 2 {
  %3 = tail call noundef ptr @"??0exception@std@@QEAA@AEBV01@@Z"(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #18
  store ptr @"??_7bad_alloc@std@@6B@", ptr %0, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"??0exception@std@@QEAA@AEBV01@@Z"(ptr noundef nonnull returned align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #4 comdat align 2 personality ptr @__CxxFrameHandler3 {
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
  call void @__std_terminate() #21 [ "funclet"(token %7) ]
  unreachable
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"??1bad_array_new_length@std@@UEAA@XZ"(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 {
  tail call void @"??1bad_alloc@std@@UEAA@XZ"(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #18
  ret void
}

declare dso_local void @_CxxThrowException(ptr, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"??0bad_alloc@std@@AEAA@QEBD@Z"(ptr noundef nonnull returned align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 {
  %3 = tail call noundef ptr @"??0exception@std@@QEAA@QEBDH@Z"(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i32 noundef 1) #18
  store ptr @"??_7bad_alloc@std@@6B@", ptr %0, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"?what@exception@std@@UEBAPEBDXZ"(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %3 = load ptr, ptr %2, align 8
  %.not = icmp eq ptr %3, null
  %spec.select = select i1 %.not, ptr @"??_C@_0BC@EOODALEL@Unknown?5exception?$AA@", ptr %3
  ret ptr %spec.select
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"??0exception@std@@QEAA@QEBDH@Z"(ptr noundef nonnull returned align 8 dereferenceable(24) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #4 comdat align 2 {
  store ptr @"??_7exception@std@@6B@", ptr %0, align 8
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %5, align 8
  store ptr %1, ptr %4, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"??_Gexception@std@@UEAAPEAXI@Z"(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #4 comdat align 2 {
  tail call void @"??1exception@std@@UEAA@XZ"(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #18
  %3 = and i32 %1, 1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @"??3@YAXPEAX_K@Z"(ptr noundef nonnull %0, i64 noundef 24) #23
  br label %6

6:                                                ; preds = %5, %2
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"??1exception@std@@UEAA@XZ"(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__CxxFrameHandler3 {
  store ptr @"??_7exception@std@@6B@", ptr %0, align 8
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @__std_exception_destroy(ptr noundef nonnull %2)
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret void

4:                                                ; preds = %1
  %5 = cleanuppad within none []
  call void @__std_terminate() #21 [ "funclet"(token %5) ]
  unreachable
}

; Function Attrs: nobuiltin nounwind
declare dso_local void @"??3@YAXPEAX_K@Z"(ptr noundef, i64 noundef) local_unnamed_addr #13

declare dso_local void @__std_exception_destroy(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"??_Gbad_alloc@std@@UEAAPEAXI@Z"(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #4 comdat align 2 {
  tail call void @"??1bad_alloc@std@@UEAA@XZ"(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #18
  %3 = and i32 %1, 1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @"??3@YAXPEAX_K@Z"(ptr noundef nonnull %0, i64 noundef 24) #23
  br label %6

6:                                                ; preds = %5, %2
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"??1bad_alloc@std@@UEAA@XZ"(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 {
  tail call void @"??1exception@std@@UEAA@XZ"(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"??_Gbad_array_new_length@std@@UEAAPEAXI@Z"(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #4 comdat align 2 {
  tail call void @"??1bad_array_new_length@std@@UEAA@XZ"(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #18
  %3 = and i32 %1, 1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @"??3@YAXPEAX_K@Z"(ptr noundef nonnull %0, i64 noundef 24) #23
  br label %6

6:                                                ; preds = %5, %2
  ret ptr %0
}

declare dso_local void @__std_exception_copy(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare dso_local noundef nonnull ptr @"??2@YAPEAX_K@Z"(i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"??$_Traits_copy_batch@U?$char_traits@D@std@@D@std@@YAXQEADQEBD_K@Z"(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat {
  %4 = tail call noundef ptr @"?copy@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(ptr noundef %0, ptr noundef %1, i64 noundef %2) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"?copy@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %1, i64 %2, i1 false)
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #9

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"?deallocate@?$allocator@D@std@@QEAAXQEAD_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 {
  tail call void @"??$_Deallocate@$0BA@@std@@YAXPEAX_K@Z"(ptr noundef %1, i64 noundef %2) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"??$_Deallocate@$0BA@@std@@YAXPEAX_K@Z"(ptr noundef %0, i64 noundef %1) local_unnamed_addr #4 comdat personality ptr @__CxxFrameHandler3 {
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
  call void @"??3@YAXPEAX_K@Z"(ptr noundef %8, i64 noundef %9) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"?_Adjust_manually_vector_aligned@std@@YAXAEAPEAXAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat {
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
  tail call void @llvm.trap() #21
  unreachable

11:                                               ; preds = %2
  %12 = inttoptr i64 %7 to ptr
  store ptr %12, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare dso_local i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

declare dso_local noalias ptr @_aligned_malloc(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local i32 @fprintf(ptr noundef %0, ptr noundef %1, ...) local_unnamed_addr #4 comdat {
  %3 = alloca ptr, align 8
  call void @llvm.va_start.p0(ptr nonnull %3)
  %4 = load ptr, ptr %3, align 8
  %5 = call i32 @_vfprintf_l(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef %4) #18
  call void @llvm.va_end.p0(ptr nonnull %3)
  ret i32 %5
}

declare dso_local ptr @__acrt_iob_func(i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree noreturn
declare dso_local void @exit(i32 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #16

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local i32 @_vfprintf_l(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 comdat {
  %5 = tail call ptr @__local_stdio_printf_options()
  %6 = load i64, ptr %5, align 8
  %7 = tail call i32 @__stdio_common_vfprintf(i64 noundef %6, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  ret i32 %7
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #16

declare dso_local i32 @__stdio_common_vfprintf(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local ptr @__local_stdio_printf_options() local_unnamed_addr #4 comdat {
  ret ptr @"?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA"
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @"?lcg@bench@@YA_KAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #4 comdat {
  %2 = load i64, ptr %0, align 8
  %3 = mul i64 %2, 6364136223846793005
  %4 = add i64 %3, 1442695040888963407
  store i64 %4, ptr %0, align 8
  ret i64 %4
}

declare dllimport i32 @SetProcessAffinityMask(ptr noundef, i64 noundef) local_unnamed_addr #6

declare dllimport ptr @GetCurrentProcess() local_unnamed_addr #6

declare dllimport i32 @GetLastError() local_unnamed_addr #6

declare dllimport i32 @SetPriorityClass(ptr noundef, i32 noundef) local_unnamed_addr #6

declare dllimport i32 @timeBeginPeriod(i32 noundef) local_unnamed_addr #6

declare dso_local void @_aligned_free(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #4 comdat align 2 {
  tail call void @"?_Tidy_deallocate@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  tail call void @"??1?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@XZ"(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"?_Tidy_deallocate@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 {
  %2 = alloca i8, align 1
  tail call void @"?_Orphan_all@_Container_base0@std@@QEAAXXZ"(ptr noundef nonnull align 1 dereferenceable(1) %0) #18
  %3 = tail call noundef zeroext i1 @"?_Large_mode_engaged@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBA_NXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  br i1 %3, label %4, label %9

4:                                                ; preds = %1
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %7 = load i64, ptr %6, align 8
  %8 = load ptr, ptr %0, align 8
  tail call void @"?_Deallocate_for_capacity@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAXAEAV?$allocator@D@2@QEAD_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %8, i64 noundef %7) #18
  tail call void @"?_Switch_to_buf@_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(16) %0) #18
  br label %9

9:                                                ; preds = %4, %1
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %10, align 8
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 15, ptr %11, align 8
  store i8 0, ptr %2, align 1
  call void @"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %2) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"??1?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@XZ"(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #4 comdat align 2 {
  tail call void @"??1?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"?_Switch_to_buf@_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #4 comdat align 2 {
  tail call void @"??$_Destroy_in_place@PEAD@std@@YAXAEAPEAD@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"??$_Destroy_in_place@PEAD@std@@YAXAEAPEAD@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #4 comdat {
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"??1?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #4 comdat align 2 {
  tail call void @"??1_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"??1_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBAPEBDXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 {
  %2 = tail call noundef zeroext i1 @"?_Large_mode_engaged@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBA_NXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8
  %5 = tail call noundef ptr @"??$_Unfancy@D@std@@YAPEADPEAD@Z"(ptr noundef %4) #18
  br label %6

6:                                                ; preds = %3, %1
  %.0 = phi ptr [ %5, %3 ], [ %0, %1 ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef double @"?qpc_ns_per_tick@bench@@YANXZ"() local_unnamed_addr #2 comdat {
  %1 = alloca %union._LARGE_INTEGER, align 8
  %2 = call i32 @QueryPerformanceFrequency(ptr noundef nonnull %1)
  %3 = load i64, ptr %1, align 8
  %4 = sitofp i64 %3 to double
  %5 = fdiv double 1.000000e+09, %4
  ret double %5
}

declare dllimport i32 @QueryPerformanceCounter(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline norecurse uwtable
define internal fastcc void @"??R<lambda_0>@?0??main@@9@QEBA?A?<auto>@@XZ"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #1 align 2 {
  %2 = load ptr, ptr %0, align 8, !nonnull !50, !align !51
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %5 = load ptr, ptr %4, align 8, !nonnull !50, !align !51
  %6 = load i64, ptr %5, align 8
  %7 = trunc i64 %6 to i32
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %9 = load ptr, ptr %8, align 8, !nonnull !50, !align !51
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %12 = load ptr, ptr %11, align 8, !nonnull !50, !align !51
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %15 = load ptr, ptr %14, align 8, !nonnull !50, !align !51
  %16 = load ptr, ptr %15, align 8
  tail call void %3(ptr noundef %16, ptr noundef %13, ptr noundef %10, i32 noundef %7)
  ret void
}

declare dllimport i32 @QueryPerformanceFrequency(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline norecurse uwtable
define internal fastcc void @"??R<lambda_1>@?0??main@@9@QEBA?A?<auto>@@XZ"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 align 2 {
  %2 = load ptr, ptr %0, align 8, !nonnull !50, !align !51
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %5 = load ptr, ptr %4, align 8, !nonnull !50, !align !51
  %6 = load i64, ptr %5, align 8
  %7 = trunc i64 %6 to i32
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %9 = load ptr, ptr %8, align 8, !nonnull !50, !align !51
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %12 = load ptr, ptr %11, align 8, !nonnull !50, !align !51
  %13 = load ptr, ptr %12, align 8
  tail call void %3(ptr noundef %13, ptr noundef %10, i32 noundef %7)
  ret void
}

; Function Attrs: mustprogress noinline norecurse uwtable
define internal fastcc void @"??R<lambda_2>@?0??main@@9@QEBA?A?<auto>@@XZ"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #1 align 2 {
  %2 = load ptr, ptr %0, align 8, !nonnull !50, !align !51
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %5 = load ptr, ptr %4, align 8, !nonnull !50, !align !51
  %6 = load i64, ptr %5, align 8
  %7 = trunc i64 %6 to i32
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %9 = load ptr, ptr %8, align 8, !nonnull !50, !align !51
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %12 = load ptr, ptr %11, align 8, !nonnull !50, !align !51
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %15 = load ptr, ptr %14, align 8, !nonnull !50, !align !51
  %16 = load ptr, ptr %15, align 8
  tail call void %3(ptr noundef %16, ptr noundef %13, ptr noundef %10, i32 noundef %7, i32 noundef 1000)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="alderlake" "target-features"="+adx,+aes,+avx,+avx2,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+pconfig,+pku,+popcnt,+prfchw,+ptwrite,+rdpid,+rdrnd,+rdseed,+sahf,+serialize,+sgx,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+waitpkg,+widekl,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { mustprogress noinline norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="alderlake" "target-features"="+adx,+aes,+avx,+avx2,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+pconfig,+pku,+popcnt,+prfchw,+ptwrite,+rdpid,+rdrnd,+rdseed,+sahf,+serialize,+sgx,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+waitpkg,+widekl,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #2 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="alderlake" "target-features"="+adx,+aes,+avx,+avx2,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+pconfig,+pku,+popcnt,+prfchw,+ptwrite,+rdpid,+rdrnd,+rdseed,+sahf,+serialize,+sgx,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+waitpkg,+widekl,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { "target-cpu"="alderlake" }
attributes #4 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="alderlake" "target-features"="+adx,+aes,+avx,+avx2,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+pconfig,+pku,+popcnt,+prfchw,+ptwrite,+rdpid,+rdrnd,+rdseed,+sahf,+serialize,+sgx,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+waitpkg,+widekl,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="alderlake" "target-features"="+adx,+aes,+avx,+avx2,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+pconfig,+pku,+popcnt,+prfchw,+ptwrite,+rdpid,+rdrnd,+rdseed,+sahf,+serialize,+sgx,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+waitpkg,+widekl,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="alderlake" "target-features"="+adx,+aes,+avx,+avx2,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+pconfig,+pku,+popcnt,+prfchw,+ptwrite,+rdpid,+rdrnd,+rdseed,+sahf,+serialize,+sgx,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+waitpkg,+widekl,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="alderlake" "target-features"="+adx,+aes,+avx,+avx2,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+pconfig,+pku,+popcnt,+prfchw,+ptwrite,+rdpid,+rdrnd,+rdseed,+sahf,+serialize,+sgx,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+waitpkg,+widekl,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write) "target-cpu"="alderlake" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "target-cpu"="alderlake" }
attributes #10 = { mustprogress noinline noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="alderlake" "target-features"="+adx,+aes,+avx,+avx2,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+pconfig,+pku,+popcnt,+prfchw,+ptwrite,+rdpid,+rdrnd,+rdseed,+sahf,+serialize,+sgx,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+waitpkg,+widekl,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="alderlake" "target-features"="+adx,+aes,+avx,+avx2,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+pconfig,+pku,+popcnt,+prfchw,+ptwrite,+rdpid,+rdrnd,+rdseed,+sahf,+serialize,+sgx,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+waitpkg,+widekl,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #12 = { cold noreturn nounwind memory(inaccessiblemem: write) "target-cpu"="alderlake" }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="alderlake" "target-features"="+adx,+aes,+avx,+avx2,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+pconfig,+pku,+popcnt,+prfchw,+ptwrite,+rdpid,+rdrnd,+rdseed,+sahf,+serialize,+sgx,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+waitpkg,+widekl,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #14 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="alderlake" "target-features"="+adx,+aes,+avx,+avx2,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+pconfig,+pku,+popcnt,+prfchw,+ptwrite,+rdpid,+rdrnd,+rdseed,+sahf,+serialize,+sgx,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+waitpkg,+widekl,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #15 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="alderlake" "target-features"="+adx,+aes,+avx,+avx2,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+pconfig,+pku,+popcnt,+prfchw,+ptwrite,+rdpid,+rdrnd,+rdseed,+sahf,+serialize,+sgx,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+waitpkg,+widekl,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn "target-cpu"="alderlake" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nounwind }
attributes #19 = { cold noreturn }
attributes #20 = { noreturn }
attributes #21 = { noreturn nounwind }
attributes #22 = { allocsize(0) }
attributes #23 = { builtin nounwind }

!llvm.dbg.cu = !{!0}
!llvm.linker.options = !{!2, !2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!llvm.module.flags = !{!12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "clang version 24.0.0git (https://github.com/llvm/llvm-project.git 6f4196219399a3502cea3beb2d0c8c28b2241649)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "C:\\work\\llvm-profitability-research\\benchmarks\\known_vec.cpp", directory: "C:\\work\\llvm-profitability-research")
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
!16 = !{!"clang version 24.0.0git (https://github.com/llvm/llvm-project.git 6f4196219399a3502cea3beb2d0c8c28b2241649)"}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = distinct !{!19, !20, !21, !22, !23}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!"llvm.loop.isvectorized", i32 1}
!22 = !{!"llvm.loop.vectorize.body", i32 1}
!23 = !{!"llvm.loop.unroll.runtime.disable"}
!24 = distinct !{!24, !20, !25, !26}
!25 = !{!"llvm.loop.vectorize.width", i32 1}
!26 = !{!"llvm.loop.vectorize.scalable.disable"}
!27 = distinct !{!27, !20, !23, !21, !28}
!28 = !{!"llvm.loop.vectorize.epilogue", i32 1}
!29 = distinct !{!29, !20, !21, !22, !23}
!30 = distinct !{!30, !20, !23, !21, !28}
!31 = distinct !{!31, !18}
!32 = distinct !{!32, !20, !21, !22, !23}
!33 = distinct !{!33, !20, !23, !21, !28}
!34 = distinct !{!34, !20, !21, !22, !23}
!35 = distinct !{!35, !20, !23, !21, !28}
!36 = distinct !{!36, !20}
!37 = distinct !{!37, !20}
!38 = distinct !{!38, !20}
!39 = distinct !{!39, !20}
!40 = distinct !{!40, !20}
!41 = distinct !{!41, !20}
!42 = distinct !{!42, !20}
!43 = distinct !{!43, !18}
!44 = distinct !{!44, !20}
!45 = distinct !{!45, !20}
!46 = distinct !{!46, !20}
!47 = distinct !{!47, !20}
!48 = distinct !{!48, !20}
!49 = distinct !{!49, !20}
!50 = !{}
!51 = !{i64 8}
