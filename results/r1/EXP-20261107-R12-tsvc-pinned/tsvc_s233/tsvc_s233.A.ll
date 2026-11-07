; ModuleID = 'C:\work\llvm-profitability-research\results\r1\EXP-20261107-R12-tsvc-pinned\tsvc_s233\tsvc_s233.linked.ll'
source_filename = "llvm-link"
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

$"??$duration_cast@V?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@_JU?$ratio@$00$0DLJKMKAA@@3@$0A@@chrono@std@@YA?AV?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@01@AEBV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@01@@Z" = comdat any

$"?count@?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEBA_JXZ" = comdat any

$"??$?0N$0A@@?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEAA@AEBN@Z" = comdat any

$"?time_since_epoch@?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@chrono@std@@QEBA?AV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@XZ" = comdat any

$"??$?G_JU?$ratio@$00$0DLJKMKAA@@std@@_JU01@@chrono@std@@YA?AV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@01@AEBV201@0@Z" = comdat any

$"??$?0_J$0A@@?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEAA@AEB_J@Z" = comdat any

$"??0?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@chrono@std@@QEAA@AEBV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@12@@Z" = comdat any

$_vfprintf_l = comdat any

$__local_stdio_printf_options = comdat any

$fprintf = comdat any

$s471s = comdat any

$f = comdat any

$_Avx2WmemEnabledWeakValue = comdat any

$"??_C@_01FHEEJDEE@A?$AA@" = comdat any

$"??_C@_0P@MAICADEK@CHECK?5?$CF016llx?6?$AA@" = comdat any

$"??_C@_0P@MGLMMHNL@TRIAL?5?$CFd?5?$CF?43f?6?$AA@" = comdat any

$"??_C@_0DB@PKFEENGN@META?5case?$DNtsvc_s233?5config?$DN?$CFs?5re@" = comdat any

$"??_C@_0CO@BEMGKDJM@warning?3?5SetProcessAffinityMask?5@" = comdat any

$"??_C@_0CI@JIDNHJK@warning?3?5SetPriorityClass?5failed@" = comdat any

$"?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA" = comdat any

$"??_C@_04OMBDKOCD@?$CFf?5?6?$AA@" = comdat any

$"??_C@_05CDGOKACG@s000?5?$AA@" = comdat any

$"??_C@_05KHHAIEME@s111?5?$AA@" = comdat any

$"??_C@_05KFDGDKJN@s112?5?$AA@" = comdat any

$"??_C@_05KEPEFAKK@s113?5?$AA@" = comdat any

$"??_C@_05KBLLEGCP@s114?5?$AA@" = comdat any

$"??_C@_05KAHJCMBI@s115?5?$AA@" = comdat any

$"??_C@_05KCDPJCEB@s116?5?$AA@" = comdat any

$"??_C@_05KIKBLPEL@s118?5?$AA@" = comdat any

$"??_C@_05KJGDNFHM@s119?5?$AA@" = comdat any

$"??_C@_05LFMFCLCK@s121?5?$AA@" = comdat any

$"??_C@_05LHIDJFHD@s122?5?$AA@" = comdat any

$"??_C@_05LGEBPPEE@s123?5?$AA@" = comdat any

$"??_C@_05LDAOOJMB@s124?5?$AA@" = comdat any

$"??_C@_05LCMMIDPG@s125?5?$AA@" = comdat any

$"??_C@_05LAIKDNKP@s126?5?$AA@" = comdat any

$"??_C@_05LBEIFHJI@s127?5?$AA@" = comdat any

$"??_C@_05LKBEBAKF@s128?5?$AA@" = comdat any

$"??_C@_05NHJEMEP@s131?5?$AA@" = comdat any

$"??_C@_05PDPPCBG@s132?5?$AA@" = comdat any

$"??_C@_05JAKOHEPG@s141?5?$AA@" = comdat any

$"??_C@_05CIBCBDJD@s151?5?$AA@" = comdat any

$"??_C@_05CKFEKNMK@s152?5?$AA@" = comdat any

$"??_C@_05DKKHLMHN@s161?5?$AA@" = comdat any

$"??_C@_05DIOBACCE@s162?5?$AA@" = comdat any

$"??_C@_05ICBLNLBI@s171?5?$AA@" = comdat any

$"??_C@_05IAFNGFEB@s172?5?$AA@" = comdat any

$"??_C@_05IBJPAPHG@s173?5?$AA@" = comdat any

$"??_C@_05IENABJPD@s174?5?$AA@" = comdat any

$"??_C@_05IFBCHDME@s175?5?$AA@" = comdat any

$"??_C@_05IHFEMNJN@s176?5?$AA@" = comdat any

$"??_C@_05OANAPOBE@s211?5?$AA@" = comdat any

$"??_C@_05OCJGEAEN@s212?5?$AA@" = comdat any

$"??_C@_05PCGFFBPK@s221?5?$AA@" = comdat any

$"??_C@_05PACDOPKD@s222?5?$AA@" = comdat any

$"??_C@_05EKNJDGJP@s231?5?$AA@" = comdat any

$"??_C@_05EIJPIIMG@s232?5?$AA@" = comdat any

$"??_C@_05EJFNOCPB@s233?5?$AA@" = comdat any

$"??_C@_05EMBCPEHE@s234?5?$AA@" = comdat any

$"??_C@_05ENNAJOED@s235?5?$AA@" = comdat any

$"??_C@_05NHAOAOCG@s241?5?$AA@" = comdat any

$"??_C@_05NFEILAHP@s242?5?$AA@" = comdat any

$"??_C@_05NEIKNKEI@s243?5?$AA@" = comdat any

$"??_C@_05NBMFMMMN@s244?5?$AA@" = comdat any

$"??_C@_05GPLCGJED@s251?5?$AA@" = comdat any

$"??_C@_05GNPENHBK@s252?5?$AA@" = comdat any

$"??_C@_05GMDGLNCN@s253?5?$AA@" = comdat any

$"??_C@_05GJHJKLKI@s254?5?$AA@" = comdat any

$"??_C@_05GILLMBJP@s255?5?$AA@" = comdat any

$"??_C@_05GKPNHPMG@s256?5?$AA@" = comdat any

$"??_C@_05GLDPBFPB@s257?5?$AA@" = comdat any

$"??_C@_05GAGDFCMM@s258?5?$AA@" = comdat any

$"??_C@_05HNAHMGKN@s261?5?$AA@" = comdat any

$"??_C@_05MFLLKBMI@s271?5?$AA@" = comdat any

$"??_C@_05MHPNBPJB@s272?5?$AA@" = comdat any

$"??_C@_05MGDPHFKG@s273?5?$AA@" = comdat any

$"??_C@_05MDHAGDCD@s274?5?$AA@" = comdat any

$"??_C@_05MCLCAJBE@s275?5?$AA@" = comdat any

$"??_C@_05MAPELHEN@s276?5?$AA@" = comdat any

$"??_C@_05MBDGNNHK@s277?5?$AA@" = comdat any

$"??_C@_05MKGKJKEH@s278?5?$AA@" = comdat any

$"??_C@_05MLKIPAHA@s279?5?$AA@" = comdat any

$"??_C@_05IPHJLDJJ@s2710?$AA@" = comdat any

$"??_C@_05JGGCICNI@s2711?$AA@" = comdat any

$"??_C@_05LNEPNBBL@s2712?$AA@" = comdat any

$"??_C@_05JNNILBJO@s281?5?$AA@" = comdat any

$"??_C@_05CFGENGPL@s291?5?$AA@" = comdat any

$"??_C@_05CHCCGIKC@s292?5?$AA@" = comdat any

$"??_C@_05CGOAACJF@s293?5?$AA@" = comdat any

$"??_C@_05LCMLLHDD@s2101?$AA@" = comdat any

$"??_C@_05JJOGOEPA@s2102?$AA@" = comdat any

$"??_C@_05LDAJNNAE@s2111?$AA@" = comdat any

$"??_C@_05NNLANHKE@s311?5?$AA@" = comdat any

$"??_C@_05NPPGGJPN@s312?5?$AA@" = comdat any

$"??_C@_05NODEADMK@s313?5?$AA@" = comdat any

$"??_C@_05NLHLBFEP@s314?5?$AA@" = comdat any

$"??_C@_05NKLJHPHI@s315?5?$AA@" = comdat any

$"??_C@_05NIPPMBCB@s316?5?$AA@" = comdat any

$"??_C@_05NJDNKLBG@s317?5?$AA@" = comdat any

$"??_C@_05NCGBOMCL@s318?5?$AA@" = comdat any

$"??_C@_05NDKDIGBM@s319?5?$AA@" = comdat any

$"??_C@_05JHHCMFPF@s3110?$AA@" = comdat any

$"??_C@_05IOGJPELE@s3111?$AA@" = comdat any

$"??_C@_05KFEEKHHH@s3112?$AA@" = comdat any

$"??_C@_05LMFPJGDG@s3113?$AA@" = comdat any

$"??_C@_05MPAFHIEK@s321?5?$AA@" = comdat any

$"??_C@_05MNEDMGBD@s322?5?$AA@" = comdat any

$"??_C@_05MMIBKMCE@s323?5?$AA@" = comdat any

$"??_C@_05HHLJBPCP@s331?5?$AA@" = comdat any

$"??_C@_05HFPPKBHG@s332?5?$AA@" = comdat any

$"??_C@_05OKGOCHJG@s341?5?$AA@" = comdat any

$"??_C@_05OICIJJMP@s342?5?$AA@" = comdat any

$"??_C@_05OJOKPDPI@s343?5?$AA@" = comdat any

$"??_C@_05FCNCEAPD@s351?5?$AA@" = comdat any

$"??_C@_05FAJEPOKK@s352?5?$AA@" = comdat any

$"??_C@_05FBFGJEJN@s353?5?$AA@" = comdat any

$"??_C@_05GPJAALLE@s411?5?$AA@" = comdat any

$"??_C@_05GNNGLFON@s412?5?$AA@" = comdat any

$"??_C@_05GMBENPNK@s413?5?$AA@" = comdat any

$"??_C@_05GJFLMJFP@s414?5?$AA@" = comdat any

$"??_C@_05GIJJKDGI@s415?5?$AA@" = comdat any

$"??_C@_05HNCFKEFK@s421?5?$AA@" = comdat any

$"??_C@_05HPGDBKAD@s422?5?$AA@" = comdat any

$"??_C@_05HOKBHADE@s423?5?$AA@" = comdat any

$"??_C@_05HLOOGGLB@s424?5?$AA@" = comdat any

$"??_C@_05MFJJMDDP@s431?5?$AA@" = comdat any

$"??_C@_05MHNPHNGG@s432?5?$AA@" = comdat any

$"??_C@_05FIEOPLIG@s441?5?$AA@" = comdat any

$"??_C@_05FKAIEFNP@s442?5?$AA@" = comdat any

$"??_C@_05FLMKCPOI@s443?5?$AA@" = comdat any

$"??_C@_05OAPCJMOD@s451?5?$AA@" = comdat any

$"??_C@_05OCLECCLK@s452?5?$AA@" = comdat any

$"??_C@_05ODHGEIIN@s453?5?$AA@" = comdat any

$"??_C@_05EKPLFEGI@s471?5?$AA@" = comdat any

$"??_C@_05BCJIEEDO@s481?5?$AA@" = comdat any

$"??_C@_05BANOPKGH@s482?5?$AA@" = comdat any

$"??_C@_05KKCECDFL@s491?5?$AA@" = comdat any

$"??_C@_05BHGEHLGH@s4112?$AA@" = comdat any

$"??_C@_05OHPEKCG@s4113?$AA@" = comdat any

$"??_C@_05EBDONMOB@s4114?$AA@" = comdat any

$"??_C@_05FICFONKA@s4115?$AA@" = comdat any

$"??_C@_05HDAILOGD@s4116?$AA@" = comdat any

$"??_C@_05GKBDIPCC@s4117?$AA@" = comdat any

$"??_C@_05DOAPJGPN@s4121?$AA@" = comdat any

$"??_C@_03IDIMFPN@va?7?$AA@" = comdat any

$"??_C@_05DMCMEDIF@vag?5?5?$AA@" = comdat any

$"??_C@_05ODFHIDEN@vas?5?5?$AA@" = comdat any

$"??_C@_05LEOAGPCB@vif?5?5?$AA@" = comdat any

$"??_C@_05IJAJMNEN@vpv?5?5?$AA@" = comdat any

$"??_C@_05HMIJGLIN@vtv?5?5?$AA@" = comdat any

$"??_C@_05OFNLBPD@vpvtv?$AA@" = comdat any

$"??_C@_05HDCKEFLG@vpvts?$AA@" = comdat any

$"??_C@_05JFEBJCP@vpvpv?$AA@" = comdat any

$"??_C@_05PLNNBHDD@vtvtv?$AA@" = comdat any

$"??_C@_05CMNDDJDG@vsumr?$AA@" = comdat any

$"??_C@_05NCEAFNKA@vdotr?$AA@" = comdat any

$"??_C@_05NBAAOLGE@vbor?5?$AA@" = comdat any

$"??_C@_0O@DPAFHEGA@S000?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@LILIDOEK@S111?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0BA@DDHEPEEE@S1111?7?5?$CF?42f?5?7?7?5?$AA@" = comdat any

$"??_C@_0O@CBFKFIEL@S112?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0BA@EEOKCGLE@S1112?7?5?$CF?42f?5?7?7?5?$AA@" = comdat any

$"??_C@_0O@OANEIHIL@S113?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0P@BEOLDIGE@S1113?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@MJOPJCAI@S114?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@IGBENMI@S115?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0P@PMFOPCCH@S1115?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@JBIDCLMJ@S116?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@MDPFAAMP@S118?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0P@FDJECOM@S119?7?5?$CF?42f?5?7?7?5?$AA@" = comdat any

$"??_C@_0BA@DFHIICLK@S1119?7?5?$CF?42f?5?7?7?5?$AA@" = comdat any

$"??_C@_0O@MPCGOMLK@S121?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@FGMEIKLL@S122?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@JHEKFFHL@S123?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@LOHBEAPI@S124?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@HPPPJPDI@S125?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@OGBNPJDJ@S126?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@CHJDCGPJ@S127?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@LEGLNCDP@S128?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@FEIDKANF@S131?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@MNGBMGNE@S132?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@CABLEJFK@S141?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@LLLOAFDF@S151?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@CCFMGDDE@S152?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@MMCANHMF@S161?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0P@DIBPGICK@S1161?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@FFMCLBME@S162?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@FHIFJLKK@S171?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@MOGHPNKL@S172?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@POJCCGL@S173?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@CGNCDHOI@S174?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@OHFMOICI@S175?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@HOLOIOCJ@S176?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@FHCFCIE@S211?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@JMJADEIF@S212?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0P@KJCBFEKK@S1213?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@HCOMIAHE@S221?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0P@IGNDDPJL@S1221?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@OLAOOGHF@S222?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@OJEJMMBL@S231?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@HAKLKKBK@S232?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0P@IEJEBFPF@S1232?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@LBCFHFNK@S233?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0P@DJHLOPOO@S2233?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@FJJALPJJ@S235?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@JNNBCFJE@S241?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@EDDEDJF@S242?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@MFLNJMFF@S243?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@OMIGIJNG@S244?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0P@BILJDGDJ@S1244?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0P@GENIBDOC@S2244?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@GHEGJPL@S251?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0P@PCELNGBE@S1251?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0P@IOCKPDMP@S2251?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0P@BDCFBCLJ@S3251?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@JPJGAPPK@S252?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@FOBINADK@S253?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@HHCDMFLJ@S254?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@LGKNBKHJ@S255?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@CPEPHMHI@S256?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@OOMBKDLI@S257?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@HNDJFHHO@S258?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@HBOKLLAL@S261?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@OKEPPHGE@S271?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@HDKNJBGF@S272?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@LCCDEOKF@S273?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@JLBIFLCG@S274?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@FKJGIEOG@S275?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0P@NCMIBONC@S2275?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@MDHEOCOH@S276?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@CPKDNCH@S277?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@JBACMJOB@S278?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@FAIMBGCB@S279?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0P@KELDKJMO@S1279?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0P@FBINKEGD@S2710?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0P@JAADHLKD@S2711?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0P@JOBBNKC@S2712?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@JINLGIBF@S281?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0P@GMOENHPK@S1281?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@DHOCEHK@S291?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@JKJMECHL@S292?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@FLBCJNLL@S293?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0P@KLEDOIBB@S2101?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0P@DCKBIOBA@S2102?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0P@DAOGKEHO@S2111?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@NIOEILAB@S311?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0BA@NEEAPAGC@S31111?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@EBAGONAA@S312?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@IAIIDCMA@S313?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@KJLDCHED@S314?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@GIDNPIID@S315?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@PBNPJOIC@S316?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@DAFBEBEC@S317?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@KDKJLFIE@S318?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@GCCHGKEE@S319?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0P@GMGHJKMI@S3110?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0BA@FMCGFKJO@S13110?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0P@KNOJEFAI@S3111?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0P@DEALCDAJ@S3112?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0P@PFIFPMMJ@S3113?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@KPHKFJPB@S321?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@DGJIDPPA@S322?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@PHBGOADA@S323?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@DENPBFJO@S331?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@KNDNHDJP@S332?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@EAEHPMBB@S341?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@NJKFJKBA@S342?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@BICLEFNA@S343?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@NLOCLAHO@S351?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0P@CPNNAPJB@S1351?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@ECAANGHP@S352?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@IDIOAJLP@S353?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@NCAJFPKJ@S421?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0P@CGDGOAEG@S1421?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@ELOLDJKI@S422?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@IKGFOGGI@S423?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@KDFOPDOL@S424?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@EJKMBDMG@S431?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@DNDEPKEJ@S441?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@KENGJMEI@S442?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@GFFIEDII@S443?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@KGJBLGCG@S451?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@DPHDNACH@S452?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@POPNAPOH@S453?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@EKKKCILJ@S471?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@DIDOLHMI@S481?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@KBNMNBMJ@S482?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@KDJLPLKH@S491?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0P@FBMGIJMJ@S4112?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0P@JAEIFGAJ@S4113?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0P@LJHDEDIK@S4114?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0P@HIPNJMEK@S4115?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0P@OBBPPKEL@S4116?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0P@CAJBCFIL@S4117?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0P@LPLKDNDI@S4121?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0M@KPBGNIFF@va?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0N@FBJDDFNB@vag?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0N@EPLMICJI@vas?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0N@JGBBJMOP@vif?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0N@KJFGIPEJ@vpv?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0N@KKFALEDG@vtv?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0P@LMDOEMEI@vpvtv?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0P@MNGJOAAK@vpvts?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0P@LPDIHHDH@vpvpv?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0P@KFJCMDFD@vtvtv?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0P@FMPNKBLC@vsumr?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0P@EAGLCAIP@vdotr?7?5?$CF?42f?5?7?7?$AA@" = comdat any

$"??_C@_0O@NPNPIFLM@vbor?7?5?$CF?42f?5?7?7?$AA@" = comdat any

@_Avx2WmemEnabledWeakValue = weak_odr dso_local local_unnamed_addr global i32 0, comdat, align 4
@"??_C@_01FHEEJDEE@A?$AA@" = linkonce_odr dso_local unnamed_addr constant [2 x i8] c"A\00", comdat, align 4
@g_fn = internal global ptr @s233, align 8
@"??_C@_0P@MAICADEK@CHECK?5?$CF016llx?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"CHECK %016llx\0A\00", comdat, align 8
@"??_C@_0P@MGLMMHNL@TRIAL?5?$CFd?5?$CF?43f?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"TRIAL %d %.3f\0A\00", comdat, align 8
@"??_C@_0DB@PKFEENGN@META?5case?$DNtsvc_s233?5config?$DN?$CFs?5re@" = linkonce_odr dso_local unnamed_addr constant [49 x i8] c"META case=tsvc_s233 config=%s reps=%d trials=%d\0A\00", comdat, align 8
@"??_C@_0CO@BEMGKDJM@warning?3?5SetProcessAffinityMask?5@" = linkonce_odr dso_local unnamed_addr constant [46 x i8] c"warning: SetProcessAffinityMask failed (%lu)\0A\00", comdat, align 8
@"??_C@_0CI@JIDNHJK@warning?3?5SetPriorityClass?5failed@" = linkonce_odr dso_local unnamed_addr constant [40 x i8] c"warning: SetPriorityClass failed (%lu)\0A\00", comdat, align 8
@"?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA" = linkonce_odr dso_local global i64 0, comdat, align 8
@a = dso_local global [32000 x float] zeroinitializer, align 16
@b = dso_local global [32000 x float] zeroinitializer, align 16
@c = dso_local global [32000 x float] zeroinitializer, align 16
@d = dso_local global [32000 x float] zeroinitializer, align 16
@e = dso_local global [32000 x float] zeroinitializer, align 16
@aa = dso_local global [256 x [256 x float]] zeroinitializer, align 16
@bb = dso_local global [256 x [256 x float]] zeroinitializer, align 16
@cc = dso_local global [256 x [256 x float]] zeroinitializer, align 16
@array = dso_local global [65536 x float] zeroinitializer, align 16
@"??_C@_04OMBDKOCD@?$CFf?5?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [5 x i8] c"%f \0A\00", comdat, align 4
@temp = dso_local local_unnamed_addr global float 0.000000e+00, align 4
@"??_C@_05CDGOKACG@s000?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s000 \00", comdat, align 4
@X = dso_local local_unnamed_addr global [32000 x float] zeroinitializer, align 16
@Y = dso_local local_unnamed_addr global [32000 x float] zeroinitializer, align 16
@Z = dso_local local_unnamed_addr global [32000 x float] zeroinitializer, align 16
@U = dso_local local_unnamed_addr global [32000 x float] zeroinitializer, align 16
@V = dso_local local_unnamed_addr global [32000 x float] zeroinitializer, align 16
@"??_C@_05KHHAIEME@s111?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s111 \00", comdat, align 4
@"??_C@_05KFDGDKJN@s112?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s112 \00", comdat, align 4
@"??_C@_05KEPEFAKK@s113?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s113 \00", comdat, align 4
@"??_C@_05KBLLEGCP@s114?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s114 \00", comdat, align 4
@"??_C@_05KAHJCMBI@s115?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s115 \00", comdat, align 4
@"??_C@_05KCDPJCEB@s116?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s116 \00", comdat, align 4
@"??_C@_05KIKBLPEL@s118?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s118 \00", comdat, align 4
@"??_C@_05KJGDNFHM@s119?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s119 \00", comdat, align 4
@"??_C@_05LFMFCLCK@s121?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s121 \00", comdat, align 4
@"??_C@_05LHIDJFHD@s122?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s122 \00", comdat, align 4
@"??_C@_05LGEBPPEE@s123?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s123 \00", comdat, align 4
@"??_C@_05LDAOOJMB@s124?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s124 \00", comdat, align 4
@"??_C@_05LCMMIDPG@s125?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s125 \00", comdat, align 4
@"??_C@_05LAIKDNKP@s126?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s126 \00", comdat, align 4
@"??_C@_05LBEIFHJI@s127?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s127 \00", comdat, align 4
@"??_C@_05LKBEBAKF@s128?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s128 \00", comdat, align 4
@"??_C@_05NHJEMEP@s131?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s131 \00", comdat, align 4
@"??_C@_05PDPPCBG@s132?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s132 \00", comdat, align 4
@"??_C@_05JAKOHEPG@s141?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s141 \00", comdat, align 4
@"??_C@_05CIBCBDJD@s151?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s151 \00", comdat, align 4
@"??_C@_05CKFEKNMK@s152?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s152 \00", comdat, align 4
@"??_C@_05DKKHLMHN@s161?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s161 \00", comdat, align 4
@"??_C@_05DIOBACCE@s162?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s162 \00", comdat, align 4
@"??_C@_05ICBLNLBI@s171?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s171 \00", comdat, align 4
@"??_C@_05IAFNGFEB@s172?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s172 \00", comdat, align 4
@"??_C@_05IBJPAPHG@s173?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s173 \00", comdat, align 4
@"??_C@_05IENABJPD@s174?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s174 \00", comdat, align 4
@"??_C@_05IFBCHDME@s175?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s175 \00", comdat, align 4
@"??_C@_05IHFEMNJN@s176?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s176 \00", comdat, align 4
@"??_C@_05OANAPOBE@s211?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s211 \00", comdat, align 4
@"??_C@_05OCJGEAEN@s212?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s212 \00", comdat, align 4
@"??_C@_05PCGFFBPK@s221?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s221 \00", comdat, align 4
@"??_C@_05PACDOPKD@s222?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s222 \00", comdat, align 4
@"??_C@_05EKNJDGJP@s231?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s231 \00", comdat, align 4
@"??_C@_05EIJPIIMG@s232?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s232 \00", comdat, align 4
@"??_C@_05EJFNOCPB@s233?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s233 \00", comdat, align 4
@"??_C@_05EMBCPEHE@s234?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s234 \00", comdat, align 4
@"??_C@_05ENNAJOED@s235?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s235 \00", comdat, align 4
@"??_C@_05NHAOAOCG@s241?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s241 \00", comdat, align 4
@"??_C@_05NFEILAHP@s242?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s242 \00", comdat, align 4
@"??_C@_05NEIKNKEI@s243?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s243 \00", comdat, align 4
@"??_C@_05NBMFMMMN@s244?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s244 \00", comdat, align 4
@"??_C@_05GPLCGJED@s251?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s251 \00", comdat, align 4
@"??_C@_05GNPENHBK@s252?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s252 \00", comdat, align 4
@"??_C@_05GMDGLNCN@s253?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s253 \00", comdat, align 4
@"??_C@_05GJHJKLKI@s254?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s254 \00", comdat, align 4
@"??_C@_05GILLMBJP@s255?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s255 \00", comdat, align 4
@"??_C@_05GKPNHPMG@s256?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s256 \00", comdat, align 4
@"??_C@_05GLDPBFPB@s257?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s257 \00", comdat, align 4
@"??_C@_05GAGDFCMM@s258?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s258 \00", comdat, align 4
@"??_C@_05HNAHMGKN@s261?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s261 \00", comdat, align 4
@"??_C@_05MFLLKBMI@s271?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s271 \00", comdat, align 4
@"??_C@_05MHPNBPJB@s272?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s272 \00", comdat, align 4
@"??_C@_05MGDPHFKG@s273?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s273 \00", comdat, align 4
@"??_C@_05MDHAGDCD@s274?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s274 \00", comdat, align 4
@"??_C@_05MCLCAJBE@s275?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s275 \00", comdat, align 4
@"??_C@_05MAPELHEN@s276?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s276 \00", comdat, align 4
@"??_C@_05MBDGNNHK@s277?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s277 \00", comdat, align 4
@"??_C@_05MKGKJKEH@s278?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s278 \00", comdat, align 4
@"??_C@_05MLKIPAHA@s279?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s279 \00", comdat, align 4
@"??_C@_05IPHJLDJJ@s2710?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s2710\00", comdat, align 4
@"??_C@_05JGGCICNI@s2711?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s2711\00", comdat, align 4
@"??_C@_05LNEPNBBL@s2712?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s2712\00", comdat, align 4
@"??_C@_05JNNILBJO@s281?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s281 \00", comdat, align 4
@"??_C@_05CFGENGPL@s291?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s291 \00", comdat, align 4
@"??_C@_05CHCCGIKC@s292?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s292 \00", comdat, align 4
@"??_C@_05CGOAACJF@s293?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s293 \00", comdat, align 4
@"??_C@_05LCMLLHDD@s2101?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s2101\00", comdat, align 4
@"??_C@_05JJOGOEPA@s2102?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s2102\00", comdat, align 4
@"??_C@_05LDAJNNAE@s2111?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s2111\00", comdat, align 4
@"??_C@_05NNLANHKE@s311?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s311 \00", comdat, align 4
@"??_C@_05NPPGGJPN@s312?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s312 \00", comdat, align 4
@"??_C@_05NODEADMK@s313?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s313 \00", comdat, align 4
@"??_C@_05NLHLBFEP@s314?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s314 \00", comdat, align 4
@"??_C@_05NKLJHPHI@s315?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s315 \00", comdat, align 4
@"??_C@_05NIPPMBCB@s316?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s316 \00", comdat, align 4
@"??_C@_05NJDNKLBG@s317?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s317 \00", comdat, align 4
@"??_C@_05NCGBOMCL@s318?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s318 \00", comdat, align 4
@"??_C@_05NDKDIGBM@s319?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s319 \00", comdat, align 4
@"??_C@_05JHHCMFPF@s3110?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s3110\00", comdat, align 4
@"??_C@_05IOGJPELE@s3111?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s3111\00", comdat, align 4
@"??_C@_05KFEEKHHH@s3112?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s3112\00", comdat, align 4
@"??_C@_05LMFPJGDG@s3113?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s3113\00", comdat, align 4
@"??_C@_05MPAFHIEK@s321?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s321 \00", comdat, align 4
@"??_C@_05MNEDMGBD@s322?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s322 \00", comdat, align 4
@"??_C@_05MMIBKMCE@s323?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s323 \00", comdat, align 4
@"??_C@_05HHLJBPCP@s331?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s331 \00", comdat, align 4
@"??_C@_05HFPPKBHG@s332?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s332 \00", comdat, align 4
@"??_C@_05OKGOCHJG@s341?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s341 \00", comdat, align 4
@"??_C@_05OICIJJMP@s342?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s342 \00", comdat, align 4
@"??_C@_05OJOKPDPI@s343?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s343 \00", comdat, align 4
@"??_C@_05FCNCEAPD@s351?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s351 \00", comdat, align 4
@"??_C@_05FAJEPOKK@s352?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s352 \00", comdat, align 4
@"??_C@_05FBFGJEJN@s353?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s353 \00", comdat, align 4
@"??_C@_05GPJAALLE@s411?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s411 \00", comdat, align 4
@"??_C@_05GNNGLFON@s412?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s412 \00", comdat, align 4
@"??_C@_05GMBENPNK@s413?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s413 \00", comdat, align 4
@"??_C@_05GJFLMJFP@s414?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s414 \00", comdat, align 4
@"??_C@_05GIJJKDGI@s415?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s415 \00", comdat, align 4
@"??_C@_05HNCFKEFK@s421?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s421 \00", comdat, align 4
@"??_C@_05HPGDBKAD@s422?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s422 \00", comdat, align 4
@"??_C@_05HOKBHADE@s423?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s423 \00", comdat, align 4
@"??_C@_05HLOOGGLB@s424?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s424 \00", comdat, align 4
@"??_C@_05MFJJMDDP@s431?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s431 \00", comdat, align 4
@"??_C@_05MHNPHNGG@s432?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s432 \00", comdat, align 4
@"??_C@_05FIEOPLIG@s441?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s441 \00", comdat, align 4
@"??_C@_05FKAIEFNP@s442?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s442 \00", comdat, align 4
@"??_C@_05FLMKCPOI@s443?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s443 \00", comdat, align 4
@"??_C@_05OAPCJMOD@s451?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s451 \00", comdat, align 4
@"??_C@_05OCLECCLK@s452?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s452 \00", comdat, align 4
@"??_C@_05ODHGEIIN@s453?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s453 \00", comdat, align 4
@"??_C@_05EKPLFEGI@s471?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s471 \00", comdat, align 4
@"??_C@_05BCJIEEDO@s481?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s481 \00", comdat, align 4
@"??_C@_05BANOPKGH@s482?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s482 \00", comdat, align 4
@"??_C@_05KKCECDFL@s491?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s491 \00", comdat, align 4
@"??_C@_05BHGEHLGH@s4112?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s4112\00", comdat, align 4
@"??_C@_05OHPEKCG@s4113?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s4113\00", comdat, align 4
@"??_C@_05EBDONMOB@s4114?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s4114\00", comdat, align 4
@"??_C@_05FICFONKA@s4115?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s4115\00", comdat, align 4
@"??_C@_05HDAILOGD@s4116?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s4116\00", comdat, align 4
@"??_C@_05GKBDIPCC@s4117?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s4117\00", comdat, align 4
@"??_C@_05DOAPJGPN@s4121?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s4121\00", comdat, align 4
@"??_C@_03IDIMFPN@va?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [4 x i8] c"va\09\00", comdat, align 4
@"??_C@_05DMCMEDIF@vag?5?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"vag  \00", comdat, align 4
@"??_C@_05ODFHIDEN@vas?5?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"vas  \00", comdat, align 4
@"??_C@_05LEOAGPCB@vif?5?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"vif  \00", comdat, align 4
@"??_C@_05IJAJMNEN@vpv?5?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"vpv  \00", comdat, align 4
@"??_C@_05HMIJGLIN@vtv?5?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"vtv  \00", comdat, align 4
@"??_C@_05OFNLBPD@vpvtv?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"vpvtv\00", comdat, align 4
@"??_C@_05HDCKEFLG@vpvts?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"vpvts\00", comdat, align 4
@"??_C@_05JFEBJCP@vpvpv?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"vpvpv\00", comdat, align 4
@"??_C@_05PLNNBHDD@vtvtv?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"vtvtv\00", comdat, align 4
@"??_C@_05CMNDDJDG@vsumr?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"vsumr\00", comdat, align 4
@"??_C@_05NCEAFNKA@vdotr?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"vdotr\00", comdat, align 4
@"??_C@_05NBAAOLGE@vbor?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"vbor \00", comdat, align 4
@"??_C@_0O@DPAFHEGA@S000?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S000\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@LILIDOEK@S111?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S111\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0BA@DDHEPEEE@S1111?7?5?$CF?42f?5?7?7?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [16 x i8] c"S1111\09 %.2f \09\09 \00", comdat, align 8
@"??_C@_0O@CBFKFIEL@S112?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S112\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0BA@EEOKCGLE@S1112?7?5?$CF?42f?5?7?7?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [16 x i8] c"S1112\09 %.2f \09\09 \00", comdat, align 8
@"??_C@_0O@OANEIHIL@S113?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S113\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0P@BEOLDIGE@S1113?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"S1113\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@MJOPJCAI@S114?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S114\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@IGBENMI@S115?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S115\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0P@PMFOPCCH@S1115?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"S1115\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@JBIDCLMJ@S116?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S116\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@MDPFAAMP@S118?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S118\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0P@FDJECOM@S119?7?5?$CF?42f?5?7?7?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"S119\09 %.2f \09\09 \00", comdat, align 8
@"??_C@_0BA@DFHIICLK@S1119?7?5?$CF?42f?5?7?7?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [16 x i8] c"S1119\09 %.2f \09\09 \00", comdat, align 8
@"??_C@_0O@MPCGOMLK@S121?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S121\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@FGMEIKLL@S122?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S122\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@JHEKFFHL@S123?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S123\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@LOHBEAPI@S124?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S124\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@HPPPJPDI@S125?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S125\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@OGBNPJDJ@S126?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S126\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@CHJDCGPJ@S127?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S127\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@LEGLNCDP@S128?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S128\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@FEIDKANF@S131?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S131\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@MNGBMGNE@S132?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S132\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@CABLEJFK@S141?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S141\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@LLLOAFDF@S151?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S151\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@CCFMGDDE@S152?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S152\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@MMCANHMF@S161?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S161\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0P@DIBPGICK@S1161?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"S1161\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@FFMCLBME@S162?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S162\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@FHIFJLKK@S171?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S171\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@MOGHPNKL@S172?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S172\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@POJCCGL@S173?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S173\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@CGNCDHOI@S174?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S174\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@OHFMOICI@S175?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S175\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@HOLOIOCJ@S176?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S176\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@FHCFCIE@S211?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S211\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@JMJADEIF@S212?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S212\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0P@KJCBFEKK@S1213?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"S1213\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@HCOMIAHE@S221?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S221\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0P@IGNDDPJL@S1221?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"S1221\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@OLAOOGHF@S222?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S222\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@OJEJMMBL@S231?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S231\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@HAKLKKBK@S232?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S232\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0P@IEJEBFPF@S1232?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"S1232\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@LBCFHFNK@S233?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S233\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0P@DJHLOPOO@S2233?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"S2233\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@FJJALPJJ@S235?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S235\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@JNNBCFJE@S241?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S241\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@EDDEDJF@S242?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S242\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@MFLNJMFF@S243?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S243\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@OMIGIJNG@S244?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S244\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0P@BILJDGDJ@S1244?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"S1244\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0P@GENIBDOC@S2244?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"S2244\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@GHEGJPL@S251?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S251\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0P@PCELNGBE@S1251?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"S1251\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0P@IOCKPDMP@S2251?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"S2251\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0P@BDCFBCLJ@S3251?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"S3251\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@JPJGAPPK@S252?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S252\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@FOBINADK@S253?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S253\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@HHCDMFLJ@S254?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S254\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@LGKNBKHJ@S255?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S255\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@CPEPHMHI@S256?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S256\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@OOMBKDLI@S257?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S257\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@HNDJFHHO@S258?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S258\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@HBOKLLAL@S261?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S261\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@OKEPPHGE@S271?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S271\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@HDKNJBGF@S272?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S272\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@LCCDEOKF@S273?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S273\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@JLBIFLCG@S274?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S274\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@FKJGIEOG@S275?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S275\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0P@NCMIBONC@S2275?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"S2275\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@MDHEOCOH@S276?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S276\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@CPKDNCH@S277?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S277\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@JBACMJOB@S278?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S278\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@FAIMBGCB@S279?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S279\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0P@KELDKJMO@S1279?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"S1279\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0P@FBINKEGD@S2710?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"S2710\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0P@JAADHLKD@S2711?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"S2711\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0P@JOBBNKC@S2712?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"S2712\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@JINLGIBF@S281?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S281\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0P@GMOENHPK@S1281?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"S1281\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@DHOCEHK@S291?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S291\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@JKJMECHL@S292?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S292\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@FLBCJNLL@S293?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S293\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0P@KLEDOIBB@S2101?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"S2101\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0P@DCKBIOBA@S2102?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"S2102\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0P@DAOGKEHO@S2111?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"S2111\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@NIOEILAB@S311?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S311\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0BA@NEEAPAGC@S31111?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [16 x i8] c"S31111\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@EBAGONAA@S312?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S312\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@IAIIDCMA@S313?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S313\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@KJLDCHED@S314?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S314\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@GIDNPIID@S315?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S315\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@PBNPJOIC@S316?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S316\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@DAFBEBEC@S317?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S317\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@KDKJLFIE@S318?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S318\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@GCCHGKEE@S319?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S319\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0P@GMGHJKMI@S3110?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"S3110\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0BA@FMCGFKJO@S13110?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [16 x i8] c"S13110\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0P@KNOJEFAI@S3111?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"S3111\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0P@DEALCDAJ@S3112?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"S3112\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0P@PFIFPMMJ@S3113?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"S3113\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@KPHKFJPB@S321?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S321\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@DGJIDPPA@S322?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S322\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@PHBGOADA@S323?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S323\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@DENPBFJO@S331?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S331\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@KNDNHDJP@S332?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S332\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@EAEHPMBB@S341?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S341\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@NJKFJKBA@S342?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S342\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@BICLEFNA@S343?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S343\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@NLOCLAHO@S351?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S351\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0P@CPNNAPJB@S1351?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"S1351\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@ECAANGHP@S352?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S352\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@IDIOAJLP@S353?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S353\09 %.2f \09\09\00", comdat, align 8
@xx = dso_local local_unnamed_addr global ptr null, align 8
@yy = dso_local local_unnamed_addr global ptr null, align 8
@"??_C@_0O@NCAJFPKJ@S421?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S421\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0P@CGDGOAEG@S1421?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"S1421\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@ELOLDJKI@S422?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S422\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@IKGFOGGI@S423?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S423\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@KDFOPDOL@S424?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S424\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@EJKMBDMG@S431?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S431\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@DNDEPKEJ@S441?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S441\09 %.2f \09\09\00", comdat, align 8
@indx = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16
@"??_C@_0O@KENGJMEI@S442?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S442\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@GFFIEDII@S443?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S443\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@KGJBLGCG@S451?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S451\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@DPHDNACH@S452?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S452\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@POPNAPOH@S453?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S453\09 %.2f \09\09\00", comdat, align 8
@x = dso_local global [32000 x float] zeroinitializer, align 16
@"??_C@_0O@EKKKCILJ@S471?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S471\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@DIDOLHMI@S481?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S481\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@KBNMNBMJ@S482?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S482\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@KDJLPLKH@S491?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S491\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0P@FBMGIJMJ@S4112?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"S4112\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0P@JAEIFGAJ@S4113?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"S4113\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0P@LJHDEDIK@S4114?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"S4114\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0P@HIPNJMEK@S4115?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"S4115\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0P@OBBPPKEL@S4116?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"S4116\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0P@CAJBCFIL@S4117?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"S4117\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0P@LPLKDNDI@S4121?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"S4121\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0M@KPBGNIFF@va?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [12 x i8] c"va\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0N@FBJDDFNB@vag?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [13 x i8] c"vag\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0N@EPLMICJI@vas?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [13 x i8] c"vas\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0N@JGBBJMOP@vif?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [13 x i8] c"vif\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0N@KJFGIPEJ@vpv?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [13 x i8] c"vpv\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0N@KKFALEDG@vtv?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [13 x i8] c"vtv\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0P@LMDOEMEI@vpvtv?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"vpvtv\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0P@MNGJOAAK@vpvts?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"vpvts\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0P@LPDIHHDH@vpvpv?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"vpvpv\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0P@KFJCMDFD@vtvtv?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"vtvtv\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0P@FMPNKBLC@vsumr?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"vsumr\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0P@EAGLCAIP@vdotr?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"vdotr\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@NPNPIFLM@vbor?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"vbor\09 %.2f \09\09\00", comdat, align 8
@temp_int = dso_local local_unnamed_addr global i32 0, align 4
@tt = dso_local local_unnamed_addr global [256 x [256 x float]] zeroinitializer, align 16
@str = private unnamed_addr constant [10 x i8] c"VERIFY OK\00", align 1
@str.1 = private unnamed_addr constant [29 x i8] c"Loop \09 Time(Sec) \09 Checksum \00", align 1
@switch.table.s442 = private unnamed_addr constant [3 x ptr] [ptr @c, ptr @d, ptr @e], align 8

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
  %3 = alloca %"class.std::chrono::time_point", align 8
  %4 = alloca %"class.std::chrono::time_point", align 8
  %5 = alloca %"class.std::chrono::duration.0", align 8
  %6 = alloca %"class.std::chrono::duration", align 8
  %7 = icmp sgt i32 %0, 1
  br i1 %7, label %8, label %.thread25

8:                                                ; preds = %2
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %10 = load ptr, ptr %9, align 8
  %11 = icmp samesign ugt i32 %0, 3
  br i1 %11, label %12, label %.thread25

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %14 = load ptr, ptr %13, align 8
  %15 = tail call i32 @atoi(ptr noundef %14)
  %.not = icmp eq i32 %0, 4
  br i1 %.not, label %.thread25, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %18 = load ptr, ptr %17, align 8
  %19 = tail call i32 @atoi(ptr noundef %18)
  br label %.thread25

.thread25:                                        ; preds = %2, %8, %12, %16
  %20 = phi i32 [ %15, %16 ], [ %15, %12 ], [ 1, %8 ], [ 1, %2 ]
  %21 = phi ptr [ %10, %16 ], [ %10, %12 ], [ %10, %8 ], [ @"??_C@_01FHEEJDEE@A?$AA@", %2 ]
  %22 = phi i32 [ %19, %16 ], [ 5, %12 ], [ 5, %8 ], [ 5, %2 ]
  %.fr30 = freeze i32 %20
  tail call void @"?pin_environment@bench@@YAXXZ"()
  %23 = load atomic volatile ptr, ptr @g_fn acquire, align 8
  %24 = tail call noundef i32 %23()
  %25 = tail call fastcc noundef i64 @"?hash_bytes@@YA_KPEBX_K@Z"(ptr noundef nonnull @aa)
  %26 = tail call fastcc noundef i64 @"?hash_bytes@@YA_KPEBX_K@Z"(ptr noundef nonnull @bb)
  %27 = xor i64 %26, %25
  %28 = tail call fastcc noundef i64 @"?hash_bytes@@YA_KPEBX_K@Z"(ptr noundef nonnull @cc)
  %29 = xor i64 %27, %28
  %30 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0P@MAICADEK@CHECK?5?$CF016llx?6?$AA@", i64 noundef %29)
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %31 = icmp sgt i32 %22, 0
  br i1 %31, label %.lr.ph28, label %._crit_edge29

.lr.ph28:                                         ; preds = %.thread25
  %32 = icmp sgt i32 %.fr30, 0
  %33 = sitofp i32 %.fr30 to double
  br i1 %32, label %.lr.ph.us, label %.lr.ph28.split

.lr.ph.us:                                        ; preds = %.lr.ph28, %._crit_edge.us
  %.027.us = phi i32 [ %41, %._crit_edge.us ], [ 0, %.lr.ph28 ]
  call void @"?now@steady_clock@chrono@std@@SA?AV?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@23@XZ"(ptr dead_on_unwind nonnull writable sret(%"class.std::chrono::time_point") align 8 %3) #27
  br label %34

34:                                               ; preds = %.lr.ph.us, %34
  %.02226.us = phi i32 [ 0, %.lr.ph.us ], [ %36, %34 ]
  %35 = call noundef i32 %23()
  %36 = add nuw nsw i32 %.02226.us, 1
  %exitcond32.not = icmp eq i32 %36, %.fr30
  br i1 %exitcond32.not, label %._crit_edge.us, label %34, !llvm.loop !21

._crit_edge.us:                                   ; preds = %34
  call void @"?now@steady_clock@chrono@std@@SA?AV?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@23@XZ"(ptr dead_on_unwind nonnull writable sret(%"class.std::chrono::time_point") align 8 %4) #27
  call void @"??$?GUsteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@12@V312@@chrono@std@@YA?AV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@01@AEBV?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@01@0@Z"(ptr dead_on_unwind nonnull writable sret(%"class.std::chrono::duration") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3) #27
  %37 = call noundef ptr @"??$?0_JU?$ratio@$00$0DLJKMKAA@@std@@$0A@@?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEAA@AEBV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@12@@Z"(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) #27
  %38 = call noundef double @"?count@?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEBANXZ"(ptr noundef nonnull align 8 dereferenceable(8) %5) #27
  %39 = fdiv double %38, %33
  %40 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0P@MGLMMHNL@TRIAL?5?$CFd?5?$CF?43f?6?$AA@", i32 noundef %.027.us, double noundef %39)
  %41 = add nuw nsw i32 %.027.us, 1
  %exitcond33.not = icmp eq i32 %41, %22
  br i1 %exitcond33.not, label %._crit_edge29, label %.lr.ph.us, !llvm.loop !23

.lr.ph28.split:                                   ; preds = %.lr.ph28, %.lr.ph28.split
  %.027 = phi i32 [ %46, %.lr.ph28.split ], [ 0, %.lr.ph28 ]
  call void @"?now@steady_clock@chrono@std@@SA?AV?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@23@XZ"(ptr dead_on_unwind nonnull writable sret(%"class.std::chrono::time_point") align 8 %3) #27
  call void @"?now@steady_clock@chrono@std@@SA?AV?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@23@XZ"(ptr dead_on_unwind nonnull writable sret(%"class.std::chrono::time_point") align 8 %4) #27
  call void @"??$?GUsteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@12@V312@@chrono@std@@YA?AV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@01@AEBV?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@01@0@Z"(ptr dead_on_unwind nonnull writable sret(%"class.std::chrono::duration") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3) #27
  %42 = call noundef ptr @"??$?0_JU?$ratio@$00$0DLJKMKAA@@std@@$0A@@?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEAA@AEBV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@12@@Z"(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) #27
  %43 = call noundef double @"?count@?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEBANXZ"(ptr noundef nonnull align 8 dereferenceable(8) %5) #27
  %44 = fdiv double %43, %33
  %45 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0P@MGLMMHNL@TRIAL?5?$CFd?5?$CF?43f?6?$AA@", i32 noundef %.027, double noundef %44)
  %46 = add nuw nsw i32 %.027, 1
  %exitcond.not = icmp eq i32 %46, %22
  br i1 %exitcond.not, label %._crit_edge29, label %.lr.ph28.split, !llvm.loop !23

._crit_edge29:                                    ; preds = %.lr.ph28.split, %._crit_edge.us, %.thread25
  %47 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0DB@PKFEENGN@META?5case?$DNtsvc_s233?5config?$DN?$CFs?5re@", ptr noundef %21, i32 noundef %.fr30, i32 noundef %22)
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(read)
declare dso_local i32 @atoi(ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @"?pin_environment@bench@@YAXXZ"() local_unnamed_addr #2 comdat {
  %1 = tail call ptr @GetCurrentProcess()
  %2 = tail call i32 @SetProcessAffinityMask(ptr noundef %1, i64 noundef 4)
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %3, label %7

3:                                                ; preds = %0
  %4 = tail call i32 @GetLastError()
  %5 = tail call ptr @__acrt_iob_func(i32 noundef 2)
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @"??_C@_0CO@BEMGKDJM@warning?3?5SetProcessAffinityMask?5@", i32 noundef %4) #27
  br label %7

7:                                                ; preds = %3, %0
  %8 = tail call ptr @GetCurrentProcess()
  %9 = tail call i32 @SetPriorityClass(ptr noundef %8, i32 noundef 128)
  %.not1 = icmp eq i32 %9, 0
  br i1 %.not1, label %10, label %14

10:                                               ; preds = %7
  %11 = tail call i32 @GetLastError()
  %12 = tail call ptr @__acrt_iob_func(i32 noundef 2)
  %13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef nonnull @"??_C@_0CI@JIDNHJK@warning?3?5SetPriorityClass?5failed@", i32 noundef %11) #27
  br label %14

14:                                               ; preds = %10, %7
  %15 = tail call i32 @timeBeginPeriod(i32 noundef 1)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef i64 @"?hash_bytes@@YA_KPEBX_K@Z"(ptr nofree noundef readonly captures(none) %0) unnamed_addr #3 {
  br label %2

2:                                                ; preds = %2, %1
  %.010 = phi i64 [ 0, %1 ], [ %98, %2 ]
  %.089 = phi i64 [ 1469598103934665603, %1 ], [ %97, %2 ]
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 %.010
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i64
  %6 = xor i64 %.089, %5
  %7 = mul i64 %6, 1099511628211
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 %.010
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 1
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i64
  %12 = xor i64 %7, %11
  %13 = mul i64 %12, 1099511628211
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 %.010
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 2
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i64
  %18 = xor i64 %13, %17
  %19 = mul i64 %18, 1099511628211
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 %.010
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 3
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i64
  %24 = xor i64 %19, %23
  %25 = mul i64 %24, 1099511628211
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 %.010
  %27 = getelementptr inbounds nuw i8, ptr %26, i64 4
  %28 = load i8, ptr %27, align 1
  %29 = zext i8 %28 to i64
  %30 = xor i64 %25, %29
  %31 = mul i64 %30, 1099511628211
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 %.010
  %33 = getelementptr inbounds nuw i8, ptr %32, i64 5
  %34 = load i8, ptr %33, align 1
  %35 = zext i8 %34 to i64
  %36 = xor i64 %31, %35
  %37 = mul i64 %36, 1099511628211
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 %.010
  %39 = getelementptr inbounds nuw i8, ptr %38, i64 6
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i64
  %42 = xor i64 %37, %41
  %43 = mul i64 %42, 1099511628211
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 %.010
  %45 = getelementptr inbounds nuw i8, ptr %44, i64 7
  %46 = load i8, ptr %45, align 1
  %47 = zext i8 %46 to i64
  %48 = xor i64 %43, %47
  %49 = mul i64 %48, 1099511628211
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 %.010
  %51 = getelementptr inbounds nuw i8, ptr %50, i64 8
  %52 = load i8, ptr %51, align 1
  %53 = zext i8 %52 to i64
  %54 = xor i64 %49, %53
  %55 = mul i64 %54, 1099511628211
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 %.010
  %57 = getelementptr inbounds nuw i8, ptr %56, i64 9
  %58 = load i8, ptr %57, align 1
  %59 = zext i8 %58 to i64
  %60 = xor i64 %55, %59
  %61 = mul i64 %60, 1099511628211
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 %.010
  %63 = getelementptr inbounds nuw i8, ptr %62, i64 10
  %64 = load i8, ptr %63, align 1
  %65 = zext i8 %64 to i64
  %66 = xor i64 %61, %65
  %67 = mul i64 %66, 1099511628211
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 %.010
  %69 = getelementptr inbounds nuw i8, ptr %68, i64 11
  %70 = load i8, ptr %69, align 1
  %71 = zext i8 %70 to i64
  %72 = xor i64 %67, %71
  %73 = mul i64 %72, 1099511628211
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 %.010
  %75 = getelementptr inbounds nuw i8, ptr %74, i64 12
  %76 = load i8, ptr %75, align 1
  %77 = zext i8 %76 to i64
  %78 = xor i64 %73, %77
  %79 = mul i64 %78, 1099511628211
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 %.010
  %81 = getelementptr inbounds nuw i8, ptr %80, i64 13
  %82 = load i8, ptr %81, align 1
  %83 = zext i8 %82 to i64
  %84 = xor i64 %79, %83
  %85 = mul i64 %84, 1099511628211
  %86 = getelementptr inbounds nuw i8, ptr %0, i64 %.010
  %87 = getelementptr inbounds nuw i8, ptr %86, i64 14
  %88 = load i8, ptr %87, align 1
  %89 = zext i8 %88 to i64
  %90 = xor i64 %85, %89
  %91 = mul i64 %90, 1099511628211
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 %.010
  %93 = getelementptr inbounds nuw i8, ptr %92, i64 15
  %94 = load i8, ptr %93, align 1
  %95 = zext i8 %94 to i64
  %96 = xor i64 %91, %95
  %97 = mul i64 %96, 1099511628211
  %98 = add nuw nsw i64 %.010, 16
  %exitcond.not.15 = icmp eq i64 %98, 262144
  br i1 %exitcond.not.15, label %99, label %2, !llvm.loop !24

99:                                               ; preds = %2
  ret i64 %97
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
define linkonce_odr dso_local void @"?now@steady_clock@chrono@std@@SA?AV?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@23@XZ"(ptr dead_on_unwind noalias writable sret(%"class.std::chrono::time_point") align 8 %0) local_unnamed_addr #4 comdat align 2 {
  %2 = alloca %"class.std::chrono::duration", align 8
  %3 = alloca i64, align 8
  %4 = alloca %"class.std::chrono::duration", align 8
  %5 = alloca i64, align 8
  %6 = alloca %"class.std::chrono::duration", align 8
  %7 = alloca i64, align 8
  %8 = tail call i64 @_Query_perf_frequency() #27
  %9 = tail call i64 @_Query_perf_counter() #27
  switch i64 %8, label %19 [
    i64 10000000, label %10
    i64 24000000, label %13
  ]

10:                                               ; preds = %1
  %11 = mul i64 %9, 100
  store i64 %11, ptr %3, align 8
  %12 = call noundef ptr @"??$?0_J$0A@@?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEAA@AEB_J@Z"(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #27
  br label %27

13:                                               ; preds = %1
  %14 = mul i64 %9, 41
  %15 = shl i64 %9, 1
  %16 = sdiv i64 %15, 3
  %17 = add i64 %16, %14
  store i64 %17, ptr %5, align 8
  %18 = call noundef ptr @"??$?0_J$0A@@?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEAA@AEB_J@Z"(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #27
  br label %27

19:                                               ; preds = %1
  %20 = sdiv i64 %9, %8
  %21 = mul i64 %20, 1000000000
  %22 = srem i64 %9, %8
  %23 = mul i64 %22, 1000000000
  %24 = sdiv i64 %23, %8
  %25 = add i64 %24, %21
  store i64 %25, ptr %7, align 8
  %26 = call noundef ptr @"??$?0_J$0A@@?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEAA@AEB_J@Z"(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) #27
  br label %27

27:                                               ; preds = %19, %13, %10
  %.sink = phi ptr [ %6, %19 ], [ %4, %13 ], [ %2, %10 ]
  %28 = call noundef ptr @"??0?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@chrono@std@@QEAA@AEBV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@12@@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %.sink) #27
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"??$?GUsteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@12@V312@@chrono@std@@YA?AV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@01@AEBV?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@01@0@Z"(ptr dead_on_unwind noalias writable sret(%"class.std::chrono::duration") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat {
  %4 = alloca %"class.std::chrono::duration", align 8
  %5 = alloca %"class.std::chrono::duration", align 8
  call void @"?time_since_epoch@?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@chrono@std@@QEBA?AV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@XZ"(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr dead_on_unwind nonnull writable sret(%"class.std::chrono::duration") align 8 %4) #27
  call void @"?time_since_epoch@?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@chrono@std@@QEBA?AV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@XZ"(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr dead_on_unwind nonnull writable sret(%"class.std::chrono::duration") align 8 %5) #27
  call void @"??$?G_JU?$ratio@$00$0DLJKMKAA@@std@@_JU01@@chrono@std@@YA?AV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@01@AEBV201@0@Z"(ptr dead_on_unwind writable sret(%"class.std::chrono::duration") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #27
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"??$?0_JU?$ratio@$00$0DLJKMKAA@@std@@$0A@@?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEAA@AEBV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@12@@Z"(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #4 comdat align 2 {
  %3 = alloca %"class.std::chrono::duration.0", align 8
  call void @"??$duration_cast@V?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@_JU?$ratio@$00$0DLJKMKAA@@3@$0A@@chrono@std@@YA?AV?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@01@AEBV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@01@@Z"(ptr dead_on_unwind nonnull writable sret(%"class.std::chrono::duration.0") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #27
  %4 = call noundef double @"?count@?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEBANXZ"(ptr noundef nonnull align 8 dereferenceable(8) %3) #27
  store double %4, ptr %0, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef double @"?count@?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEBANXZ"(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #4 comdat align 2 {
  %2 = load double, ptr %0, align 8
  ret double %2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"??$duration_cast@V?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@_JU?$ratio@$00$0DLJKMKAA@@3@$0A@@chrono@std@@YA?AV?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@01@AEBV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@01@@Z"(ptr dead_on_unwind noalias writable sret(%"class.std::chrono::duration.0") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat {
  %3 = alloca double, align 8
  %4 = tail call noundef i64 @"?count@?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEBA_JXZ"(ptr noundef nonnull align 8 dereferenceable(8) %1) #27
  %5 = sitofp i64 %4 to double
  store double %5, ptr %3, align 8
  %6 = call noundef ptr @"??$?0N$0A@@?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEAA@AEBN@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #27
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @"?count@?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEBA_JXZ"(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #4 comdat align 2 {
  %2 = load i64, ptr %0, align 8
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"??$?0N$0A@@?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEAA@AEBN@Z"(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #4 comdat align 2 {
  %3 = load double, ptr %1, align 8
  store double %3, ptr %0, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"?time_since_epoch@?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@chrono@std@@QEBA?AV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@XZ"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr dead_on_unwind noalias writable sret(%"class.std::chrono::duration") align 8 %1) local_unnamed_addr #4 comdat align 2 {
  %3 = load i64, ptr %0, align 8
  store i64 %3, ptr %1, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"??$?G_JU?$ratio@$00$0DLJKMKAA@@std@@_JU01@@chrono@std@@YA?AV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@01@AEBV201@0@Z"(ptr dead_on_unwind noalias writable sret(%"class.std::chrono::duration") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat {
  %4 = alloca i64, align 8
  %5 = alloca %"class.std::chrono::duration", align 8
  %6 = alloca %"class.std::chrono::duration", align 8
  %7 = load i64, ptr %1, align 8
  store i64 %7, ptr %5, align 8
  %8 = call noundef i64 @"?count@?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEBA_JXZ"(ptr noundef nonnull align 8 dereferenceable(8) %5) #27
  %9 = load i64, ptr %2, align 8
  store i64 %9, ptr %6, align 8
  %10 = call noundef i64 @"?count@?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEBA_JXZ"(ptr noundef nonnull align 8 dereferenceable(8) %6) #27
  %11 = sub i64 %8, %10
  store i64 %11, ptr %4, align 8
  %12 = call noundef ptr @"??$?0_J$0A@@?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEAA@AEB_J@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %4) #27
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"??$?0_J$0A@@?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEAA@AEB_J@Z"(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #4 comdat align 2 {
  %3 = load i64, ptr %1, align 8
  store i64 %3, ptr %0, align 8
  ret ptr %0
}

; Function Attrs: nounwind
declare dso_local i64 @_Query_perf_frequency() local_unnamed_addr #6

; Function Attrs: nounwind
declare dso_local i64 @_Query_perf_counter() local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"??0?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@chrono@std@@QEAA@AEBV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@12@@Z"(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #4 comdat align 2 {
  %3 = load i64, ptr %1, align 8
  store i64 %3, ptr %0, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #7

declare dso_local ptr @__acrt_iob_func(i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local i32 @_vfprintf_l(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 comdat {
  %5 = tail call ptr @__local_stdio_printf_options()
  %6 = load i64, ptr %5, align 8
  %7 = tail call i32 @__stdio_common_vfprintf(i64 noundef %6, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  ret i32 %7
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #7

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local ptr @__local_stdio_printf_options() local_unnamed_addr #4 comdat {
  ret ptr @"?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA"
}

declare dso_local i32 @__stdio_common_vfprintf(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

declare dllimport ptr @GetCurrentProcess() local_unnamed_addr #8

declare dllimport i32 @SetProcessAffinityMask(ptr noundef, i64 noundef) local_unnamed_addr #8

declare dllimport i32 @GetLastError() local_unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local i32 @fprintf(ptr noundef %0, ptr noundef %1, ...) local_unnamed_addr #4 comdat {
  %3 = alloca ptr, align 8
  call void @llvm.va_start.p0(ptr nonnull %3)
  %4 = load ptr, ptr %3, align 8
  %5 = call i32 @_vfprintf_l(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef %4) #27
  call void @llvm.va_end.p0(ptr nonnull %3)
  ret i32 %5
}

declare dllimport i32 @SetPriorityClass(ptr noundef, i32 noundef) local_unnamed_addr #8

declare dllimport i32 @timeBeginPeriod(i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: write) uwtable
define dso_local noundef i32 @set1d(ptr nofree noundef writeonly captures(none) %0, float noundef %1, i32 noundef %2) local_unnamed_addr #9 {
  switch i32 %2, label %.preheader [
    i32 -1, label %vector.body40
    i32 -2, label %vector.body
  ]

vector.body:                                      ; preds = %3, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %3 ]
  %vec.ind = phi <4 x i64> [ %vec.ind.next, %vector.body ], [ <i64 0, i64 1, i64 2, i64 3>, %3 ]
  %4 = add nuw nsw <4 x i64> %vec.ind, splat (i64 1)
  %5 = mul nuw nsw <4 x i64> %4, %4
  %6 = trunc nuw <4 x i64> %5 to <4 x i32>
  %7 = uitofp nneg <4 x i32> %6 to <4 x float>
  %8 = fdiv <4 x float> splat (float 1.000000e+00), %7
  %9 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index
  store <4 x float> %8, ptr %9, align 4
  %index.next = add nuw i64 %index, 4
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 4)
  %10 = icmp eq i64 %index.next, 32000
  br i1 %10, label %.loopexit, label %vector.body, !llvm.loop !25

vector.body40:                                    ; preds = %3, %vector.body40
  %index41 = phi i64 [ %index.next43.1, %vector.body40 ], [ 0, %3 ]
  %vec.ind42 = phi <4 x i64> [ %vec.ind.next44.1, %vector.body40 ], [ <i64 0, i64 1, i64 2, i64 3>, %3 ]
  %11 = trunc <4 x i64> %vec.ind42 to <4 x i32>
  %12 = add <4 x i32> %11, splat (i32 1)
  %13 = uitofp nneg <4 x i32> %12 to <4 x float>
  %14 = fdiv <4 x float> splat (float 1.000000e+00), %13
  %15 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index41
  store <4 x float> %14, ptr %15, align 4
  %16 = trunc <4 x i64> %vec.ind42 to <4 x i32>
  %17 = add <4 x i32> %16, splat (i32 5)
  %18 = uitofp nneg <4 x i32> %17 to <4 x float>
  %19 = fdiv <4 x float> splat (float 1.000000e+00), %18
  %20 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index41
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 16
  store <4 x float> %19, ptr %21, align 4
  %index.next43.1 = add nuw nsw i64 %index41, 8
  %vec.ind.next44.1 = add nuw nsw <4 x i64> %vec.ind42, splat (i64 8)
  %22 = icmp eq i64 %index.next43.1, 32000
  br i1 %22, label %.loopexit, label %vector.body40, !llvm.loop !29

.preheader:                                       ; preds = %3, %.preheader
  %.027 = phi i32 [ %25, %.preheader ], [ 0, %3 ]
  %23 = sext i32 %.027 to i64
  %24 = getelementptr inbounds [4 x i8], ptr %0, i64 %23
  store float %1, ptr %24, align 4
  %25 = add i32 %.027, %2
  %26 = icmp slt i32 %25, 32000
  br i1 %26, label %.preheader, label %.loopexit, !llvm.loop !30

.loopexit:                                        ; preds = %vector.body, %vector.body40, %.preheader
  ret i32 0
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: write) uwtable
define dso_local noundef i32 @set1ds(i32 %0, ptr nofree noundef writeonly captures(none) %1, float noundef %2, i32 noundef %3) local_unnamed_addr #9 {
  switch i32 %3, label %.preheader [
    i32 -1, label %vector.body40
    i32 -2, label %vector.body
  ]

vector.body:                                      ; preds = %4, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %4 ]
  %vec.ind = phi <4 x i64> [ %vec.ind.next, %vector.body ], [ <i64 0, i64 1, i64 2, i64 3>, %4 ]
  %5 = add nuw nsw <4 x i64> %vec.ind, splat (i64 1)
  %6 = mul nuw nsw <4 x i64> %5, %5
  %7 = trunc nuw <4 x i64> %6 to <4 x i32>
  %8 = uitofp nneg <4 x i32> %7 to <4 x float>
  %9 = fdiv <4 x float> splat (float 1.000000e+00), %8
  %10 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  store <4 x float> %9, ptr %10, align 4
  %index.next = add nuw i64 %index, 4
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 4)
  %11 = icmp eq i64 %index.next, 32000
  br i1 %11, label %.loopexit, label %vector.body, !llvm.loop !31

vector.body40:                                    ; preds = %4, %vector.body40
  %index41 = phi i64 [ %index.next43.1, %vector.body40 ], [ 0, %4 ]
  %vec.ind42 = phi <4 x i64> [ %vec.ind.next44.1, %vector.body40 ], [ <i64 0, i64 1, i64 2, i64 3>, %4 ]
  %12 = trunc <4 x i64> %vec.ind42 to <4 x i32>
  %13 = add <4 x i32> %12, splat (i32 1)
  %14 = uitofp nneg <4 x i32> %13 to <4 x float>
  %15 = fdiv <4 x float> splat (float 1.000000e+00), %14
  %16 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index41
  store <4 x float> %15, ptr %16, align 4
  %17 = trunc <4 x i64> %vec.ind42 to <4 x i32>
  %18 = add <4 x i32> %17, splat (i32 5)
  %19 = uitofp nneg <4 x i32> %18 to <4 x float>
  %20 = fdiv <4 x float> splat (float 1.000000e+00), %19
  %21 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index41
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 16
  store <4 x float> %20, ptr %22, align 4
  %index.next43.1 = add nuw nsw i64 %index41, 8
  %vec.ind.next44.1 = add nuw nsw <4 x i64> %vec.ind42, splat (i64 8)
  %23 = icmp eq i64 %index.next43.1, 32000
  br i1 %23, label %.loopexit, label %vector.body40, !llvm.loop !32

.preheader:                                       ; preds = %4, %.preheader
  %.027 = phi i32 [ %26, %.preheader ], [ 0, %4 ]
  %24 = sext i32 %.027 to i64
  %25 = getelementptr inbounds [4 x i8], ptr %1, i64 %24
  store float %2, ptr %25, align 4
  %26 = add i32 %.027, %3
  %27 = icmp slt i32 %26, 32000
  br i1 %27, label %.preheader, label %.loopexit, !llvm.loop !33

.loopexit:                                        ; preds = %vector.body, %vector.body40, %.preheader
  ret i32 0
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: write) uwtable
define dso_local noundef i32 @set2d(ptr nofree noundef writeonly captures(none) %0, float noundef %1, i32 noundef %2) local_unnamed_addr #9 {
  switch i32 %2, label %.preheader [
    i32 -1, label %.preheader34
    i32 -2, label %.preheader37
  ]

.preheader34:                                     ; preds = %3, %.preheader34
  %indvars.iv57 = phi i64 [ %indvars.iv.next58, %.preheader34 ], [ 0, %3 ]
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1
  %4 = trunc nuw nsw i64 %indvars.iv.next58 to i32
  %5 = uitofp nneg i32 %4 to float
  %6 = fdiv float 1.000000e+00, %5
  %broadcast.splatinsert70 = insertelement <4 x float> poison, float %6, i64 0
  %broadcast.splat71 = shufflevector <4 x float> %broadcast.splatinsert70, <4 x float> poison, <4 x i32> zeroinitializer
  %7 = getelementptr inbounds nuw [1024 x i8], ptr %0, i64 %indvars.iv57
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store <4 x float> %broadcast.splat71, ptr %7, align 4
  store <4 x float> %broadcast.splat71, ptr %8, align 4
  %9 = getelementptr inbounds nuw i8, ptr %7, i64 32
  %10 = getelementptr inbounds nuw i8, ptr %7, i64 48
  store <4 x float> %broadcast.splat71, ptr %9, align 4
  store <4 x float> %broadcast.splat71, ptr %10, align 4
  %11 = getelementptr inbounds nuw i8, ptr %7, i64 64
  %12 = getelementptr inbounds nuw i8, ptr %7, i64 80
  store <4 x float> %broadcast.splat71, ptr %11, align 4
  store <4 x float> %broadcast.splat71, ptr %12, align 4
  %13 = getelementptr inbounds nuw i8, ptr %7, i64 96
  %14 = getelementptr inbounds nuw i8, ptr %7, i64 112
  store <4 x float> %broadcast.splat71, ptr %13, align 4
  store <4 x float> %broadcast.splat71, ptr %14, align 4
  %15 = getelementptr inbounds nuw i8, ptr %7, i64 128
  %16 = getelementptr inbounds nuw i8, ptr %7, i64 144
  store <4 x float> %broadcast.splat71, ptr %15, align 4
  store <4 x float> %broadcast.splat71, ptr %16, align 4
  %17 = getelementptr inbounds nuw i8, ptr %7, i64 160
  %18 = getelementptr inbounds nuw i8, ptr %7, i64 176
  store <4 x float> %broadcast.splat71, ptr %17, align 4
  store <4 x float> %broadcast.splat71, ptr %18, align 4
  %19 = getelementptr inbounds nuw i8, ptr %7, i64 192
  %20 = getelementptr inbounds nuw i8, ptr %7, i64 208
  store <4 x float> %broadcast.splat71, ptr %19, align 4
  store <4 x float> %broadcast.splat71, ptr %20, align 4
  %21 = getelementptr inbounds nuw i8, ptr %7, i64 224
  %22 = getelementptr inbounds nuw i8, ptr %7, i64 240
  store <4 x float> %broadcast.splat71, ptr %21, align 4
  store <4 x float> %broadcast.splat71, ptr %22, align 4
  %23 = getelementptr inbounds nuw i8, ptr %7, i64 256
  %24 = getelementptr inbounds nuw i8, ptr %7, i64 272
  store <4 x float> %broadcast.splat71, ptr %23, align 4
  store <4 x float> %broadcast.splat71, ptr %24, align 4
  %25 = getelementptr inbounds nuw i8, ptr %7, i64 288
  %26 = getelementptr inbounds nuw i8, ptr %7, i64 304
  store <4 x float> %broadcast.splat71, ptr %25, align 4
  store <4 x float> %broadcast.splat71, ptr %26, align 4
  %27 = getelementptr inbounds nuw i8, ptr %7, i64 320
  %28 = getelementptr inbounds nuw i8, ptr %7, i64 336
  store <4 x float> %broadcast.splat71, ptr %27, align 4
  store <4 x float> %broadcast.splat71, ptr %28, align 4
  %29 = getelementptr inbounds nuw i8, ptr %7, i64 352
  %30 = getelementptr inbounds nuw i8, ptr %7, i64 368
  store <4 x float> %broadcast.splat71, ptr %29, align 4
  store <4 x float> %broadcast.splat71, ptr %30, align 4
  %31 = getelementptr inbounds nuw i8, ptr %7, i64 384
  %32 = getelementptr inbounds nuw i8, ptr %7, i64 400
  store <4 x float> %broadcast.splat71, ptr %31, align 4
  store <4 x float> %broadcast.splat71, ptr %32, align 4
  %33 = getelementptr inbounds nuw i8, ptr %7, i64 416
  %34 = getelementptr inbounds nuw i8, ptr %7, i64 432
  store <4 x float> %broadcast.splat71, ptr %33, align 4
  store <4 x float> %broadcast.splat71, ptr %34, align 4
  %35 = getelementptr inbounds nuw i8, ptr %7, i64 448
  %36 = getelementptr inbounds nuw i8, ptr %7, i64 464
  store <4 x float> %broadcast.splat71, ptr %35, align 4
  store <4 x float> %broadcast.splat71, ptr %36, align 4
  %37 = getelementptr inbounds nuw i8, ptr %7, i64 480
  %38 = getelementptr inbounds nuw i8, ptr %7, i64 496
  store <4 x float> %broadcast.splat71, ptr %37, align 4
  store <4 x float> %broadcast.splat71, ptr %38, align 4
  %39 = getelementptr inbounds nuw i8, ptr %7, i64 512
  %40 = getelementptr inbounds nuw i8, ptr %7, i64 528
  store <4 x float> %broadcast.splat71, ptr %39, align 4
  store <4 x float> %broadcast.splat71, ptr %40, align 4
  %41 = getelementptr inbounds nuw i8, ptr %7, i64 544
  %42 = getelementptr inbounds nuw i8, ptr %7, i64 560
  store <4 x float> %broadcast.splat71, ptr %41, align 4
  store <4 x float> %broadcast.splat71, ptr %42, align 4
  %43 = getelementptr inbounds nuw i8, ptr %7, i64 576
  %44 = getelementptr inbounds nuw i8, ptr %7, i64 592
  store <4 x float> %broadcast.splat71, ptr %43, align 4
  store <4 x float> %broadcast.splat71, ptr %44, align 4
  %45 = getelementptr inbounds nuw i8, ptr %7, i64 608
  %46 = getelementptr inbounds nuw i8, ptr %7, i64 624
  store <4 x float> %broadcast.splat71, ptr %45, align 4
  store <4 x float> %broadcast.splat71, ptr %46, align 4
  %47 = getelementptr inbounds nuw i8, ptr %7, i64 640
  %48 = getelementptr inbounds nuw i8, ptr %7, i64 656
  store <4 x float> %broadcast.splat71, ptr %47, align 4
  store <4 x float> %broadcast.splat71, ptr %48, align 4
  %49 = getelementptr inbounds nuw i8, ptr %7, i64 672
  %50 = getelementptr inbounds nuw i8, ptr %7, i64 688
  store <4 x float> %broadcast.splat71, ptr %49, align 4
  store <4 x float> %broadcast.splat71, ptr %50, align 4
  %51 = getelementptr inbounds nuw i8, ptr %7, i64 704
  %52 = getelementptr inbounds nuw i8, ptr %7, i64 720
  store <4 x float> %broadcast.splat71, ptr %51, align 4
  store <4 x float> %broadcast.splat71, ptr %52, align 4
  %53 = getelementptr inbounds nuw i8, ptr %7, i64 736
  %54 = getelementptr inbounds nuw i8, ptr %7, i64 752
  store <4 x float> %broadcast.splat71, ptr %53, align 4
  store <4 x float> %broadcast.splat71, ptr %54, align 4
  %55 = getelementptr inbounds nuw i8, ptr %7, i64 768
  %56 = getelementptr inbounds nuw i8, ptr %7, i64 784
  store <4 x float> %broadcast.splat71, ptr %55, align 4
  store <4 x float> %broadcast.splat71, ptr %56, align 4
  %57 = getelementptr inbounds nuw i8, ptr %7, i64 800
  %58 = getelementptr inbounds nuw i8, ptr %7, i64 816
  store <4 x float> %broadcast.splat71, ptr %57, align 4
  store <4 x float> %broadcast.splat71, ptr %58, align 4
  %59 = getelementptr inbounds nuw i8, ptr %7, i64 832
  %60 = getelementptr inbounds nuw i8, ptr %7, i64 848
  store <4 x float> %broadcast.splat71, ptr %59, align 4
  store <4 x float> %broadcast.splat71, ptr %60, align 4
  %61 = getelementptr inbounds nuw i8, ptr %7, i64 864
  %62 = getelementptr inbounds nuw i8, ptr %7, i64 880
  store <4 x float> %broadcast.splat71, ptr %61, align 4
  store <4 x float> %broadcast.splat71, ptr %62, align 4
  %63 = getelementptr inbounds nuw i8, ptr %7, i64 896
  %64 = getelementptr inbounds nuw i8, ptr %7, i64 912
  store <4 x float> %broadcast.splat71, ptr %63, align 4
  store <4 x float> %broadcast.splat71, ptr %64, align 4
  %65 = getelementptr inbounds nuw i8, ptr %7, i64 928
  %66 = getelementptr inbounds nuw i8, ptr %7, i64 944
  store <4 x float> %broadcast.splat71, ptr %65, align 4
  store <4 x float> %broadcast.splat71, ptr %66, align 4
  %67 = getelementptr inbounds nuw i8, ptr %7, i64 960
  %68 = getelementptr inbounds nuw i8, ptr %7, i64 976
  store <4 x float> %broadcast.splat71, ptr %67, align 4
  store <4 x float> %broadcast.splat71, ptr %68, align 4
  %69 = getelementptr inbounds nuw i8, ptr %7, i64 992
  %70 = getelementptr inbounds nuw i8, ptr %7, i64 1008
  store <4 x float> %broadcast.splat71, ptr %69, align 4
  store <4 x float> %broadcast.splat71, ptr %70, align 4
  %exitcond60.not = icmp eq i64 %indvars.iv.next58, 256
  br i1 %exitcond60.not, label %.loopexit, label %.preheader34, !llvm.loop !34

.preheader37:                                     ; preds = %3, %.preheader37
  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %.preheader37 ], [ 0, %3 ]
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
  %71 = mul nuw nsw i64 %indvars.iv.next50, %indvars.iv.next50
  %72 = trunc nuw i64 %71 to i32
  %73 = uitofp nneg i32 %72 to float
  %74 = fdiv float 1.000000e+00, %73
  %broadcast.splatinsert = insertelement <4 x float> poison, float %74, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %75 = getelementptr inbounds nuw [1024 x i8], ptr %0, i64 %indvars.iv49
  %76 = getelementptr inbounds nuw i8, ptr %75, i64 16
  store <4 x float> %broadcast.splat, ptr %75, align 4
  store <4 x float> %broadcast.splat, ptr %76, align 4
  %77 = getelementptr inbounds nuw i8, ptr %75, i64 32
  %78 = getelementptr inbounds nuw i8, ptr %75, i64 48
  store <4 x float> %broadcast.splat, ptr %77, align 4
  store <4 x float> %broadcast.splat, ptr %78, align 4
  %79 = getelementptr inbounds nuw i8, ptr %75, i64 64
  %80 = getelementptr inbounds nuw i8, ptr %75, i64 80
  store <4 x float> %broadcast.splat, ptr %79, align 4
  store <4 x float> %broadcast.splat, ptr %80, align 4
  %81 = getelementptr inbounds nuw i8, ptr %75, i64 96
  %82 = getelementptr inbounds nuw i8, ptr %75, i64 112
  store <4 x float> %broadcast.splat, ptr %81, align 4
  store <4 x float> %broadcast.splat, ptr %82, align 4
  %83 = getelementptr inbounds nuw i8, ptr %75, i64 128
  %84 = getelementptr inbounds nuw i8, ptr %75, i64 144
  store <4 x float> %broadcast.splat, ptr %83, align 4
  store <4 x float> %broadcast.splat, ptr %84, align 4
  %85 = getelementptr inbounds nuw i8, ptr %75, i64 160
  %86 = getelementptr inbounds nuw i8, ptr %75, i64 176
  store <4 x float> %broadcast.splat, ptr %85, align 4
  store <4 x float> %broadcast.splat, ptr %86, align 4
  %87 = getelementptr inbounds nuw i8, ptr %75, i64 192
  %88 = getelementptr inbounds nuw i8, ptr %75, i64 208
  store <4 x float> %broadcast.splat, ptr %87, align 4
  store <4 x float> %broadcast.splat, ptr %88, align 4
  %89 = getelementptr inbounds nuw i8, ptr %75, i64 224
  %90 = getelementptr inbounds nuw i8, ptr %75, i64 240
  store <4 x float> %broadcast.splat, ptr %89, align 4
  store <4 x float> %broadcast.splat, ptr %90, align 4
  %91 = getelementptr inbounds nuw i8, ptr %75, i64 256
  %92 = getelementptr inbounds nuw i8, ptr %75, i64 272
  store <4 x float> %broadcast.splat, ptr %91, align 4
  store <4 x float> %broadcast.splat, ptr %92, align 4
  %93 = getelementptr inbounds nuw i8, ptr %75, i64 288
  %94 = getelementptr inbounds nuw i8, ptr %75, i64 304
  store <4 x float> %broadcast.splat, ptr %93, align 4
  store <4 x float> %broadcast.splat, ptr %94, align 4
  %95 = getelementptr inbounds nuw i8, ptr %75, i64 320
  %96 = getelementptr inbounds nuw i8, ptr %75, i64 336
  store <4 x float> %broadcast.splat, ptr %95, align 4
  store <4 x float> %broadcast.splat, ptr %96, align 4
  %97 = getelementptr inbounds nuw i8, ptr %75, i64 352
  %98 = getelementptr inbounds nuw i8, ptr %75, i64 368
  store <4 x float> %broadcast.splat, ptr %97, align 4
  store <4 x float> %broadcast.splat, ptr %98, align 4
  %99 = getelementptr inbounds nuw i8, ptr %75, i64 384
  %100 = getelementptr inbounds nuw i8, ptr %75, i64 400
  store <4 x float> %broadcast.splat, ptr %99, align 4
  store <4 x float> %broadcast.splat, ptr %100, align 4
  %101 = getelementptr inbounds nuw i8, ptr %75, i64 416
  %102 = getelementptr inbounds nuw i8, ptr %75, i64 432
  store <4 x float> %broadcast.splat, ptr %101, align 4
  store <4 x float> %broadcast.splat, ptr %102, align 4
  %103 = getelementptr inbounds nuw i8, ptr %75, i64 448
  %104 = getelementptr inbounds nuw i8, ptr %75, i64 464
  store <4 x float> %broadcast.splat, ptr %103, align 4
  store <4 x float> %broadcast.splat, ptr %104, align 4
  %105 = getelementptr inbounds nuw i8, ptr %75, i64 480
  %106 = getelementptr inbounds nuw i8, ptr %75, i64 496
  store <4 x float> %broadcast.splat, ptr %105, align 4
  store <4 x float> %broadcast.splat, ptr %106, align 4
  %107 = getelementptr inbounds nuw i8, ptr %75, i64 512
  %108 = getelementptr inbounds nuw i8, ptr %75, i64 528
  store <4 x float> %broadcast.splat, ptr %107, align 4
  store <4 x float> %broadcast.splat, ptr %108, align 4
  %109 = getelementptr inbounds nuw i8, ptr %75, i64 544
  %110 = getelementptr inbounds nuw i8, ptr %75, i64 560
  store <4 x float> %broadcast.splat, ptr %109, align 4
  store <4 x float> %broadcast.splat, ptr %110, align 4
  %111 = getelementptr inbounds nuw i8, ptr %75, i64 576
  %112 = getelementptr inbounds nuw i8, ptr %75, i64 592
  store <4 x float> %broadcast.splat, ptr %111, align 4
  store <4 x float> %broadcast.splat, ptr %112, align 4
  %113 = getelementptr inbounds nuw i8, ptr %75, i64 608
  %114 = getelementptr inbounds nuw i8, ptr %75, i64 624
  store <4 x float> %broadcast.splat, ptr %113, align 4
  store <4 x float> %broadcast.splat, ptr %114, align 4
  %115 = getelementptr inbounds nuw i8, ptr %75, i64 640
  %116 = getelementptr inbounds nuw i8, ptr %75, i64 656
  store <4 x float> %broadcast.splat, ptr %115, align 4
  store <4 x float> %broadcast.splat, ptr %116, align 4
  %117 = getelementptr inbounds nuw i8, ptr %75, i64 672
  %118 = getelementptr inbounds nuw i8, ptr %75, i64 688
  store <4 x float> %broadcast.splat, ptr %117, align 4
  store <4 x float> %broadcast.splat, ptr %118, align 4
  %119 = getelementptr inbounds nuw i8, ptr %75, i64 704
  %120 = getelementptr inbounds nuw i8, ptr %75, i64 720
  store <4 x float> %broadcast.splat, ptr %119, align 4
  store <4 x float> %broadcast.splat, ptr %120, align 4
  %121 = getelementptr inbounds nuw i8, ptr %75, i64 736
  %122 = getelementptr inbounds nuw i8, ptr %75, i64 752
  store <4 x float> %broadcast.splat, ptr %121, align 4
  store <4 x float> %broadcast.splat, ptr %122, align 4
  %123 = getelementptr inbounds nuw i8, ptr %75, i64 768
  %124 = getelementptr inbounds nuw i8, ptr %75, i64 784
  store <4 x float> %broadcast.splat, ptr %123, align 4
  store <4 x float> %broadcast.splat, ptr %124, align 4
  %125 = getelementptr inbounds nuw i8, ptr %75, i64 800
  %126 = getelementptr inbounds nuw i8, ptr %75, i64 816
  store <4 x float> %broadcast.splat, ptr %125, align 4
  store <4 x float> %broadcast.splat, ptr %126, align 4
  %127 = getelementptr inbounds nuw i8, ptr %75, i64 832
  %128 = getelementptr inbounds nuw i8, ptr %75, i64 848
  store <4 x float> %broadcast.splat, ptr %127, align 4
  store <4 x float> %broadcast.splat, ptr %128, align 4
  %129 = getelementptr inbounds nuw i8, ptr %75, i64 864
  %130 = getelementptr inbounds nuw i8, ptr %75, i64 880
  store <4 x float> %broadcast.splat, ptr %129, align 4
  store <4 x float> %broadcast.splat, ptr %130, align 4
  %131 = getelementptr inbounds nuw i8, ptr %75, i64 896
  %132 = getelementptr inbounds nuw i8, ptr %75, i64 912
  store <4 x float> %broadcast.splat, ptr %131, align 4
  store <4 x float> %broadcast.splat, ptr %132, align 4
  %133 = getelementptr inbounds nuw i8, ptr %75, i64 928
  %134 = getelementptr inbounds nuw i8, ptr %75, i64 944
  store <4 x float> %broadcast.splat, ptr %133, align 4
  store <4 x float> %broadcast.splat, ptr %134, align 4
  %135 = getelementptr inbounds nuw i8, ptr %75, i64 960
  %136 = getelementptr inbounds nuw i8, ptr %75, i64 976
  store <4 x float> %broadcast.splat, ptr %135, align 4
  store <4 x float> %broadcast.splat, ptr %136, align 4
  %137 = getelementptr inbounds nuw i8, ptr %75, i64 992
  %138 = getelementptr inbounds nuw i8, ptr %75, i64 1008
  store <4 x float> %broadcast.splat, ptr %137, align 4
  store <4 x float> %broadcast.splat, ptr %138, align 4
  %exitcond52.not = icmp eq i64 %indvars.iv.next50, 256
  br i1 %exitcond52.not, label %.loopexit, label %.preheader37, !llvm.loop !35

.preheader:                                       ; preds = %3, %152
  %indvars.iv61 = phi i64 [ %indvars.iv.next62.1, %152 ], [ 0, %3 ]
  %139 = getelementptr inbounds nuw [1024 x i8], ptr %0, i64 %indvars.iv61
  br label %140

140:                                              ; preds = %.preheader, %140
  %.044 = phi i32 [ 0, %.preheader ], [ %143, %140 ]
  %141 = sext i32 %.044 to i64
  %142 = getelementptr inbounds [4 x i8], ptr %139, i64 %141
  store float %1, ptr %142, align 4
  %143 = add i32 %.044, %2
  %144 = icmp slt i32 %143, 256
  br i1 %144, label %140, label %.preheader.1, !llvm.loop !36

.preheader.1:                                     ; preds = %140
  %145 = getelementptr inbounds nuw [1024 x i8], ptr %0, i64 %indvars.iv61
  %146 = getelementptr inbounds nuw i8, ptr %145, i64 1024
  br label %147

147:                                              ; preds = %147, %.preheader.1
  %.044.1 = phi i32 [ 0, %.preheader.1 ], [ %150, %147 ]
  %148 = sext i32 %.044.1 to i64
  %149 = getelementptr inbounds [4 x i8], ptr %146, i64 %148
  store float %1, ptr %149, align 4
  %150 = add i32 %.044.1, %2
  %151 = icmp slt i32 %150, 256
  br i1 %151, label %147, label %152, !llvm.loop !36

152:                                              ; preds = %147
  %indvars.iv.next62.1 = add nuw nsw i64 %indvars.iv61, 2
  %exitcond64.not.1 = icmp eq i64 %indvars.iv.next62.1, 256
  br i1 %exitcond64.not.1, label %.loopexit, label %.preheader, !llvm.loop !37

.loopexit:                                        ; preds = %.preheader37, %.preheader34, %152
  ret i32 0
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local float @sum1d(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #10 {
  br label %2

2:                                                ; preds = %2, %1
  %indvars.iv = phi i64 [ 0, %1 ], [ %indvars.iv.next.7, %2 ]
  %.056 = phi float [ 0.000000e+00, %1 ], [ %33, %2 ]
  %3 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %4 = load float, ptr %3, align 4
  %5 = fadd float %.056, %4
  %6 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 4
  %8 = load float, ptr %7, align 4
  %9 = fadd float %5, %8
  %10 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %12 = load float, ptr %11, align 4
  %13 = fadd float %9, %12
  %14 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 12
  %16 = load float, ptr %15, align 4
  %17 = fadd float %13, %16
  %18 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 16
  %20 = load float, ptr %19, align 4
  %21 = fadd float %17, %20
  %22 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %23 = getelementptr inbounds nuw i8, ptr %22, i64 20
  %24 = load float, ptr %23, align 4
  %25 = fadd float %21, %24
  %26 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %27 = getelementptr inbounds nuw i8, ptr %26, i64 24
  %28 = load float, ptr %27, align 4
  %29 = fadd float %25, %28
  %30 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %31 = getelementptr inbounds nuw i8, ptr %30, i64 28
  %32 = load float, ptr %31, align 4
  %33 = fadd float %29, %32
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7, 32000
  br i1 %exitcond.not.7, label %34, label %2, !llvm.loop !38

34:                                               ; preds = %2
  ret float %33
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @check(i32 noundef %0) local_unnamed_addr #11 {
  br label %2

2:                                                ; preds = %1, %2
  %indvars.iv = phi i64 [ 0, %1 ], [ %indvars.iv.next, %2 ]
  %.08588 = phi float [ 0.000000e+00, %1 ], [ %6, %2 ]
  %3 = phi <4 x float> [ zeroinitializer, %1 ], [ %19, %2 ]
  %4 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv
  %5 = load float, ptr %4, align 4
  %6 = fadd float %.08588, %5
  %7 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %indvars.iv
  %8 = load float, ptr %7, align 4
  %9 = getelementptr inbounds nuw [4 x i8], ptr @c, i64 %indvars.iv
  %10 = load float, ptr %9, align 4
  %11 = getelementptr inbounds nuw [4 x i8], ptr @d, i64 %indvars.iv
  %12 = load float, ptr %11, align 4
  %13 = getelementptr inbounds nuw [4 x i8], ptr @e, i64 %indvars.iv
  %14 = load float, ptr %13, align 4
  %15 = insertelement <4 x float> poison, float %14, i64 0
  %16 = insertelement <4 x float> %15, float %12, i64 1
  %17 = insertelement <4 x float> %16, float %10, i64 2
  %18 = insertelement <4 x float> %17, float %8, i64 3
  %19 = fadd <4 x float> %3, %18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32000
  br i1 %exitcond.not, label %.preheader86, label %2, !llvm.loop !39

.preheader86:                                     ; preds = %2, %46
  %indvars.iv117 = phi i64 [ %indvars.iv.next118, %46 ], [ 0, %2 ]
  %.075100 = phi float [ %45, %46 ], [ 0.000000e+00, %2 ]
  %20 = phi <2 x float> [ %42, %46 ], [ zeroinitializer, %2 ]
  %21 = getelementptr inbounds nuw [1024 x i8], ptr @aa, i64 %indvars.iv117
  %22 = getelementptr inbounds nuw [1024 x i8], ptr @bb, i64 %indvars.iv117
  %23 = getelementptr inbounds nuw [1024 x i8], ptr @cc, i64 %indvars.iv117
  br label %24

24:                                               ; preds = %24, %.preheader86
  %indvars.iv113 = phi i64 [ 0, %.preheader86 ], [ %indvars.iv.next114.1, %24 ]
  %.196 = phi float [ %.075100, %.preheader86 ], [ %45, %24 ]
  %25 = phi <2 x float> [ %20, %.preheader86 ], [ %42, %24 ]
  %26 = getelementptr inbounds nuw [4 x i8], ptr %21, i64 %indvars.iv113
  %27 = load float, ptr %26, align 8
  %28 = getelementptr inbounds nuw [4 x i8], ptr %22, i64 %indvars.iv113
  %29 = load float, ptr %28, align 8
  %30 = insertelement <2 x float> poison, float %29, i64 0
  %31 = insertelement <2 x float> %30, float %27, i64 1
  %32 = fadd <2 x float> %25, %31
  %33 = getelementptr inbounds nuw [4 x i8], ptr %23, i64 %indvars.iv113
  %34 = load float, ptr %33, align 8
  %35 = fadd float %.196, %34
  %indvars.iv.next114 = or disjoint i64 %indvars.iv113, 1
  %36 = getelementptr inbounds nuw [4 x i8], ptr %21, i64 %indvars.iv.next114
  %37 = load float, ptr %36, align 4
  %38 = getelementptr inbounds nuw [4 x i8], ptr %22, i64 %indvars.iv.next114
  %39 = load float, ptr %38, align 4
  %40 = insertelement <2 x float> poison, float %39, i64 0
  %41 = insertelement <2 x float> %40, float %37, i64 1
  %42 = fadd <2 x float> %32, %41
  %43 = getelementptr inbounds nuw [4 x i8], ptr %23, i64 %indvars.iv.next114
  %44 = load float, ptr %43, align 4
  %45 = fadd float %35, %44
  %indvars.iv.next114.1 = add nuw nsw i64 %indvars.iv113, 2
  %exitcond116.not.1 = icmp eq i64 %indvars.iv.next114.1, 256
  br i1 %exitcond116.not.1, label %46, label %24, !llvm.loop !40

46:                                               ; preds = %24
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1
  %exitcond120.not = icmp eq i64 %indvars.iv.next118, 256
  br i1 %exitcond120.not, label %.preheader, label %.preheader86, !llvm.loop !41

.preheader:                                       ; preds = %46, %.preheader
  %indvars.iv121 = phi i64 [ %indvars.iv.next122.3, %.preheader ], [ 0, %46 ]
  %.072102 = phi float [ %61, %.preheader ], [ 0.000000e+00, %46 ]
  %47 = getelementptr inbounds nuw [4 x i8], ptr @array, i64 %indvars.iv121
  %48 = load float, ptr %47, align 16
  %49 = fadd float %.072102, %48
  %50 = getelementptr inbounds nuw [4 x i8], ptr @array, i64 %indvars.iv121
  %51 = getelementptr inbounds nuw i8, ptr %50, i64 4
  %52 = load float, ptr %51, align 4
  %53 = fadd float %49, %52
  %54 = getelementptr inbounds nuw [4 x i8], ptr @array, i64 %indvars.iv121
  %55 = getelementptr inbounds nuw i8, ptr %54, i64 8
  %56 = load float, ptr %55, align 8
  %57 = fadd float %53, %56
  %58 = getelementptr inbounds nuw [4 x i8], ptr @array, i64 %indvars.iv121
  %59 = getelementptr inbounds nuw i8, ptr %58, i64 12
  %60 = load float, ptr %59, align 4
  %61 = fadd float %57, %60
  %indvars.iv.next122.3 = add nuw nsw i64 %indvars.iv121, 4
  %exitcond124.not.3 = icmp eq i64 %indvars.iv.next122.3, 65536
  br i1 %exitcond124.not.3, label %62, label %.preheader, !llvm.loop !42

62:                                               ; preds = %.preheader
  switch i32 %0, label %106 [
    i32 1, label %.sink.split
    i32 2, label %63
    i32 3, label %65
    i32 4, label %67
    i32 5, label %69
    i32 11, label %71
    i32 22, label %73
    i32 33, label %75
    i32 0, label %76
    i32 12, label %77
    i32 25, label %80
    i32 13, label %82
    i32 123, label %85
    i32 1122, label %90
    i32 112233, label %92
    i32 111, label %95
    i32 -1, label %98
    i32 -12, label %100
  ]

63:                                               ; preds = %62
  %64 = extractelement <4 x float> %19, i64 3
  br label %.sink.split

65:                                               ; preds = %62
  %66 = extractelement <4 x float> %19, i64 2
  br label %.sink.split

67:                                               ; preds = %62
  %68 = extractelement <4 x float> %19, i64 1
  br label %.sink.split

69:                                               ; preds = %62
  %70 = extractelement <4 x float> %19, i64 0
  br label %.sink.split

71:                                               ; preds = %62
  %72 = extractelement <2 x float> %42, i64 1
  br label %.sink.split

73:                                               ; preds = %62
  %74 = extractelement <2 x float> %42, i64 0
  br label %.sink.split

75:                                               ; preds = %62
  br label %.sink.split

76:                                               ; preds = %62
  br label %.sink.split

77:                                               ; preds = %62
  %78 = extractelement <4 x float> %19, i64 3
  %79 = fadd float %6, %78
  br label %.sink.split

80:                                               ; preds = %62
  %shift = shufflevector <4 x float> %19, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <4 x float> %shift, %19
  %81 = extractelement <4 x float> %foldExtExtBinop, i64 0
  br label %.sink.split

82:                                               ; preds = %62
  %83 = extractelement <4 x float> %19, i64 2
  %84 = fadd float %6, %83
  br label %.sink.split

85:                                               ; preds = %62
  %86 = extractelement <4 x float> %19, i64 3
  %87 = fadd float %6, %86
  %88 = extractelement <4 x float> %19, i64 2
  %89 = fadd float %87, %88
  br label %.sink.split

90:                                               ; preds = %62
  %shift143 = shufflevector <2 x float> %42, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop144 = fadd <2 x float> %shift143, %42
  %91 = extractelement <2 x float> %foldExtExtBinop144, i64 0
  br label %.sink.split

92:                                               ; preds = %62
  %shift146 = shufflevector <2 x float> %42, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop147 = fadd <2 x float> %shift146, %42
  %93 = extractelement <2 x float> %foldExtExtBinop147, i64 0
  %94 = fadd float %93, %45
  br label %.sink.split

95:                                               ; preds = %62
  %96 = extractelement <2 x float> %42, i64 1
  %97 = fadd float %6, %96
  br label %.sink.split

98:                                               ; preds = %62
  %99 = load float, ptr @temp, align 4
  br label %.sink.split

100:                                              ; preds = %62
  %101 = load float, ptr @temp, align 4
  %102 = extractelement <4 x float> %19, i64 3
  %103 = fadd float %102, %101
  br label %.sink.split

.sink.split:                                      ; preds = %62, %100, %63, %65, %67, %69, %71, %73, %75, %76, %77, %80, %82, %85, %90, %92, %95, %98
  %.sink133 = phi float [ %99, %98 ], [ %97, %95 ], [ %94, %92 ], [ %91, %90 ], [ %89, %85 ], [ %84, %82 ], [ %81, %80 ], [ %79, %77 ], [ %61, %76 ], [ %45, %75 ], [ %74, %73 ], [ %72, %71 ], [ %70, %69 ], [ %68, %67 ], [ %66, %65 ], [ %64, %63 ], [ %103, %100 ], [ %6, %62 ]
  %104 = fpext float %.sink133 to double
  %105 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_04OMBDKOCD@?$CFf?5?6?$AA@", double noundef %104) #27
  br label %106

106:                                              ; preds = %.sink.split, %62
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(write, argmem: read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @init(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #12 {
  %2 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05CDGOKACG@s000?5?$AA@") #27
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %vector.body, label %20

vector.body:                                      ; preds = %1, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %1 ]
  %vec.ind = phi <4 x i64> [ %vec.ind.next, %vector.body ], [ <i64 0, i64 1, i64 2, i64 3>, %1 ]
  %vec.ind1071 = phi <4 x i32> [ %vec.ind.next1075, %vector.body ], [ <i32 0, i32 1, i32 2, i32 3>, %1 ]
  %vec.ind1072 = phi <4 x i32> [ %vec.ind.next1076, %vector.body ], [ <i32 0, i32 1, i32 2, i32 3>, %1 ]
  %vec.ind1073 = phi <4 x i32> [ %vec.ind.next1077, %vector.body ], [ <i32 0, i32 1, i32 2, i32 3>, %1 ]
  %vec.ind1074 = phi <4 x i32> [ %vec.ind.next1078, %vector.body ], [ <i32 0, i32 1, i32 2, i32 3>, %1 ]
  %3 = trunc <4 x i64> %vec.ind to <4 x i32>
  %4 = add <4 x i32> %3, splat (i32 1)
  %5 = uitofp nneg <4 x i32> %4 to <4 x float>
  %6 = getelementptr inbounds nuw [4 x i8], ptr @X, i64 %index
  store <4 x float> %5, ptr %6, align 16
  %7 = add <4 x i32> %vec.ind1071, splat (i32 2)
  %8 = uitofp nneg <4 x i32> %7 to <4 x float>
  %9 = getelementptr inbounds nuw [4 x i8], ptr @Y, i64 %index
  store <4 x float> %8, ptr %9, align 16
  %10 = add <4 x i32> %vec.ind1072, splat (i32 3)
  %11 = uitofp nneg <4 x i32> %10 to <4 x float>
  %12 = getelementptr inbounds nuw [4 x i8], ptr @Z, i64 %index
  store <4 x float> %11, ptr %12, align 16
  %13 = add <4 x i32> %vec.ind1073, splat (i32 4)
  %14 = uitofp nneg <4 x i32> %13 to <4 x float>
  %15 = getelementptr inbounds nuw [4 x i8], ptr @U, i64 %index
  store <4 x float> %14, ptr %15, align 16
  %16 = add <4 x i32> %vec.ind1074, splat (i32 5)
  %17 = uitofp nneg <4 x i32> %16 to <4 x float>
  %18 = getelementptr inbounds nuw [4 x i8], ptr @V, i64 %index
  store <4 x float> %17, ptr %18, align 16
  %index.next = add nuw i64 %index, 4
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 4)
  %vec.ind.next1075 = add <4 x i32> %vec.ind1071, splat (i32 4)
  %vec.ind.next1076 = add <4 x i32> %vec.ind1072, splat (i32 4)
  %vec.ind.next1077 = add <4 x i32> %vec.ind1073, splat (i32 4)
  %vec.ind.next1078 = add <4 x i32> %vec.ind1074, splat (i32 4)
  %19 = icmp eq i64 %index.next, 32000
  br i1 %19, label %.loopexit, label %vector.body, !llvm.loop !43

20:                                               ; preds = %1
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05KHHAIEME@s111?5?$AA@") #27
  %.not934 = icmp eq i32 %21, 0
  br i1 %.not934, label %22, label %28

22:                                               ; preds = %20
  %23 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 1.000000e+00, i32 noundef 1)
  %24 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 0.000000e+00, i32 noundef -2)
  %25 = tail call i32 @set1d(ptr noundef nonnull @c, float noundef 0.000000e+00, i32 noundef -2)
  %26 = tail call i32 @set1d(ptr noundef nonnull @d, float noundef 0.000000e+00, i32 noundef -2)
  %27 = tail call i32 @set1d(ptr noundef nonnull @e, float noundef 0.000000e+00, i32 noundef -2)
  br label %.loopexit

28:                                               ; preds = %20
  %29 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05KFDGDKJN@s112?5?$AA@") #27
  %.not935 = icmp eq i32 %29, 0
  br i1 %.not935, label %30, label %33

30:                                               ; preds = %28
  %31 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 1.000000e+00, i32 noundef 1)
  %32 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 0.000000e+00, i32 noundef -2)
  br label %.loopexit

33:                                               ; preds = %28
  %34 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05KEPEFAKK@s113?5?$AA@") #27
  %.not936 = icmp eq i32 %34, 0
  br i1 %.not936, label %35, label %38

35:                                               ; preds = %33
  %36 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 1.000000e+00, i32 noundef 1)
  %37 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 0.000000e+00, i32 noundef -2)
  br label %.loopexit

38:                                               ; preds = %33
  %39 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05KBLLEGCP@s114?5?$AA@") #27
  %.not937 = icmp eq i32 %39, 0
  br i1 %.not937, label %40, label %43

40:                                               ; preds = %38
  %41 = tail call i32 @set2d(ptr noundef nonnull @aa, float noundef 0.000000e+00, i32 noundef -1)
  %42 = tail call i32 @set2d(ptr noundef nonnull @bb, float noundef 0.000000e+00, i32 noundef -2)
  br label %.loopexit

43:                                               ; preds = %38
  %44 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05KAHJCMBI@s115?5?$AA@") #27
  %.not938 = icmp eq i32 %44, 0
  br i1 %.not938, label %45, label %50

45:                                               ; preds = %43
  %46 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 1.000000e+00, i32 noundef 1)
  %47 = tail call i32 @set2d(ptr noundef nonnull @aa, float noundef f0x358637BD, i32 noundef 1)
  %48 = tail call i32 @set2d(ptr noundef nonnull @bb, float noundef f0x358637BD, i32 noundef 1)
  %49 = tail call i32 @set2d(ptr noundef nonnull @cc, float noundef f0x358637BD, i32 noundef 1)
  br label %.loopexit

50:                                               ; preds = %43
  %51 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05KCDPJCEB@s116?5?$AA@") #27
  %.not939 = icmp eq i32 %51, 0
  br i1 %.not939, label %52, label %54

52:                                               ; preds = %50
  %53 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 1.000000e+00, i32 noundef 1)
  br label %.loopexit

54:                                               ; preds = %50
  %55 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05KIKBLPEL@s118?5?$AA@") #27
  %.not940 = icmp eq i32 %55, 0
  br i1 %.not940, label %56, label %59

56:                                               ; preds = %54
  %57 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 1.000000e+00, i32 noundef 1)
  %58 = tail call i32 @set2d(ptr noundef nonnull @bb, float noundef f0x358637BD, i32 noundef 1)
  br label %.loopexit

59:                                               ; preds = %54
  %60 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05KJGDNFHM@s119?5?$AA@") #27
  %.not941 = icmp eq i32 %60, 0
  br i1 %.not941, label %61, label %64

61:                                               ; preds = %59
  %62 = tail call i32 @set2d(ptr noundef nonnull @aa, float noundef 1.000000e+00, i32 noundef 1)
  %63 = tail call i32 @set2d(ptr noundef nonnull @bb, float noundef 0.000000e+00, i32 noundef -2)
  br label %.loopexit

64:                                               ; preds = %59
  %65 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05LFMFCLCK@s121?5?$AA@") #27
  %.not942 = icmp eq i32 %65, 0
  br i1 %.not942, label %66, label %69

66:                                               ; preds = %64
  %67 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 1.000000e+00, i32 noundef 1)
  %68 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 0.000000e+00, i32 noundef -2)
  br label %.loopexit

69:                                               ; preds = %64
  %70 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05LHIDJFHD@s122?5?$AA@") #27
  %.not943 = icmp eq i32 %70, 0
  br i1 %.not943, label %71, label %74

71:                                               ; preds = %69
  %72 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 1.000000e+00, i32 noundef 1)
  %73 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 0.000000e+00, i32 noundef -2)
  br label %.loopexit

74:                                               ; preds = %69
  %75 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05LGEBPPEE@s123?5?$AA@") #27
  %.not944 = icmp eq i32 %75, 0
  br i1 %.not944, label %76, label %82

76:                                               ; preds = %74
  %77 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 0.000000e+00, i32 noundef 1)
  %78 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 1.000000e+00, i32 noundef 1)
  %79 = tail call i32 @set1d(ptr noundef nonnull @c, float noundef 1.000000e+00, i32 noundef 1)
  %80 = tail call i32 @set1d(ptr noundef nonnull @d, float noundef 0.000000e+00, i32 noundef -1)
  %81 = tail call i32 @set1d(ptr noundef nonnull @e, float noundef 0.000000e+00, i32 noundef -1)
  br label %.loopexit

82:                                               ; preds = %74
  %83 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05LDAOOJMB@s124?5?$AA@") #27
  %.not945 = icmp eq i32 %83, 0
  br i1 %.not945, label %84, label %90

84:                                               ; preds = %82
  %85 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 0.000000e+00, i32 noundef 1)
  %86 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 1.000000e+00, i32 noundef 1)
  %87 = tail call i32 @set1d(ptr noundef nonnull @c, float noundef 1.000000e+00, i32 noundef 1)
  %88 = tail call i32 @set1d(ptr noundef nonnull @d, float noundef 0.000000e+00, i32 noundef -1)
  %89 = tail call i32 @set1d(ptr noundef nonnull @e, float noundef 0.000000e+00, i32 noundef -1)
  br label %.loopexit

90:                                               ; preds = %82
  %91 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05LCMMIDPG@s125?5?$AA@") #27
  %.not946 = icmp eq i32 %91, 0
  br i1 %.not946, label %92, label %97

92:                                               ; preds = %90
  %93 = tail call i32 @set1ds(i32 poison, ptr noundef nonnull @array, float noundef 0.000000e+00, i32 noundef 1)
  %94 = tail call i32 @set2d(ptr noundef nonnull @aa, float noundef 1.000000e+00, i32 noundef 1)
  %95 = tail call i32 @set2d(ptr noundef nonnull @bb, float noundef 5.000000e-01, i32 noundef 1)
  %96 = tail call i32 @set2d(ptr noundef nonnull @cc, float noundef 2.000000e+00, i32 noundef 1)
  br label %.loopexit

97:                                               ; preds = %90
  %98 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05LAIKDNKP@s126?5?$AA@") #27
  %.not947 = icmp eq i32 %98, 0
  br i1 %.not947, label %99, label %103

99:                                               ; preds = %97
  %100 = tail call i32 @set2d(ptr noundef nonnull @bb, float noundef 1.000000e+00, i32 noundef 1)
  %101 = tail call i32 @set1ds(i32 poison, ptr noundef nonnull @array, float noundef 0.000000e+00, i32 noundef -1)
  %102 = tail call i32 @set2d(ptr noundef nonnull @cc, float noundef 0.000000e+00, i32 noundef -1)
  br label %.loopexit

103:                                              ; preds = %97
  %104 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05LBEIFHJI@s127?5?$AA@") #27
  %.not948 = icmp eq i32 %104, 0
  br i1 %.not948, label %105, label %111

105:                                              ; preds = %103
  %106 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 0.000000e+00, i32 noundef 1)
  %107 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 1.000000e+00, i32 noundef 1)
  %108 = tail call i32 @set1d(ptr noundef nonnull @c, float noundef 0.000000e+00, i32 noundef -1)
  %109 = tail call i32 @set1d(ptr noundef nonnull @d, float noundef 0.000000e+00, i32 noundef -1)
  %110 = tail call i32 @set1d(ptr noundef nonnull @e, float noundef 0.000000e+00, i32 noundef -1)
  br label %.loopexit

111:                                              ; preds = %103
  %112 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05LKBEBAKF@s128?5?$AA@") #27
  %.not949 = icmp eq i32 %112, 0
  br i1 %.not949, label %113, label %118

113:                                              ; preds = %111
  %114 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 0.000000e+00, i32 noundef 1)
  %115 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 2.000000e+00, i32 noundef 1)
  %116 = tail call i32 @set1d(ptr noundef nonnull @c, float noundef 1.000000e+00, i32 noundef 1)
  %117 = tail call i32 @set1d(ptr noundef nonnull @d, float noundef 1.000000e+00, i32 noundef 1)
  br label %.loopexit

118:                                              ; preds = %111
  %119 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05NHJEMEP@s131?5?$AA@") #27
  %.not950 = icmp eq i32 %119, 0
  br i1 %.not950, label %120, label %123

120:                                              ; preds = %118
  %121 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 1.000000e+00, i32 noundef 1)
  %122 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 0.000000e+00, i32 noundef -2)
  br label %.loopexit

123:                                              ; preds = %118
  %124 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05PDPPCBG@s132?5?$AA@") #27
  %.not951 = icmp eq i32 %124, 0
  br i1 %.not951, label %125, label %129

125:                                              ; preds = %123
  %126 = tail call i32 @set2d(ptr noundef nonnull @aa, float noundef 1.000000e+00, i32 noundef 1)
  %127 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 0.000000e+00, i32 noundef -1)
  %128 = tail call i32 @set1d(ptr noundef nonnull @c, float noundef 0.000000e+00, i32 noundef -1)
  br label %.loopexit

129:                                              ; preds = %123
  %130 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05JAKOHEPG@s141?5?$AA@") #27
  %.not952 = icmp eq i32 %130, 0
  br i1 %.not952, label %131, label %134

131:                                              ; preds = %129
  %132 = tail call i32 @set1ds(i32 poison, ptr noundef nonnull @array, float noundef 1.000000e+00, i32 noundef 1)
  %133 = tail call i32 @set2d(ptr noundef nonnull @bb, float noundef 0.000000e+00, i32 noundef -2)
  br label %.loopexit

134:                                              ; preds = %129
  %135 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05CIBCBDJD@s151?5?$AA@") #27
  %.not953 = icmp eq i32 %135, 0
  br i1 %.not953, label %136, label %139

136:                                              ; preds = %134
  %137 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 1.000000e+00, i32 noundef 1)
  %138 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 0.000000e+00, i32 noundef -2)
  br label %.loopexit

139:                                              ; preds = %134
  %140 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05CKFEKNMK@s152?5?$AA@") #27
  %.not954 = icmp eq i32 %140, 0
  br i1 %.not954, label %141, label %147

141:                                              ; preds = %139
  %142 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 1.000000e+00, i32 noundef 1)
  %143 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 0.000000e+00, i32 noundef 1)
  %144 = tail call i32 @set1d(ptr noundef nonnull @c, float noundef 0.000000e+00, i32 noundef -1)
  %145 = tail call i32 @set1d(ptr noundef nonnull @d, float noundef 0.000000e+00, i32 noundef -1)
  %146 = tail call i32 @set1d(ptr noundef nonnull @e, float noundef 0.000000e+00, i32 noundef -1)
  br label %.loopexit

147:                                              ; preds = %139
  %148 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05DKKHLMHN@s161?5?$AA@") #27
  %.not955 = icmp eq i32 %148, 0
  br i1 %.not955, label %149, label %156

149:                                              ; preds = %147
  %150 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 1.000000e+00, i32 noundef 1)
  %151 = tail call i32 @set1ds(i32 poison, ptr noundef nonnull @b, float noundef 1.000000e+00, i32 noundef 2)
  %152 = tail call i32 @set1ds(i32 poison, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @b, i64 4), float noundef -1.000000e+00, i32 noundef 2)
  %153 = tail call i32 @set1d(ptr noundef nonnull @c, float noundef 1.000000e+00, i32 noundef 1)
  %154 = tail call i32 @set1d(ptr noundef nonnull @d, float noundef 0.000000e+00, i32 noundef -1)
  %155 = tail call i32 @set1d(ptr noundef nonnull @e, float noundef 0.000000e+00, i32 noundef -1)
  br label %.loopexit

156:                                              ; preds = %147
  %157 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05DIOBACCE@s162?5?$AA@") #27
  %.not956 = icmp eq i32 %157, 0
  br i1 %.not956, label %158, label %162

158:                                              ; preds = %156
  %159 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 1.000000e+00, i32 noundef 1)
  %160 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 0.000000e+00, i32 noundef -1)
  %161 = tail call i32 @set1d(ptr noundef nonnull @c, float noundef 0.000000e+00, i32 noundef -1)
  br label %.loopexit

162:                                              ; preds = %156
  %163 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05ICBLNLBI@s171?5?$AA@") #27
  %.not957 = icmp eq i32 %163, 0
  br i1 %.not957, label %164, label %167

164:                                              ; preds = %162
  %165 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 1.000000e+00, i32 noundef 1)
  %166 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 0.000000e+00, i32 noundef -2)
  br label %.loopexit

167:                                              ; preds = %162
  %168 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05IAFNGFEB@s172?5?$AA@") #27
  %.not958 = icmp eq i32 %168, 0
  br i1 %.not958, label %169, label %172

169:                                              ; preds = %167
  %170 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 1.000000e+00, i32 noundef 1)
  %171 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 0.000000e+00, i32 noundef -2)
  br label %.loopexit

172:                                              ; preds = %167
  %173 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05IBJPAPHG@s173?5?$AA@") #27
  %.not959 = icmp eq i32 %173, 0
  br i1 %.not959, label %174, label %177

174:                                              ; preds = %172
  %175 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 1.000000e+00, i32 noundef 1)
  %176 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 0.000000e+00, i32 noundef -2)
  br label %.loopexit

177:                                              ; preds = %172
  %178 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05IENABJPD@s174?5?$AA@") #27
  %.not960 = icmp eq i32 %178, 0
  br i1 %.not960, label %179, label %182

179:                                              ; preds = %177
  %180 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 1.000000e+00, i32 noundef 1)
  %181 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 0.000000e+00, i32 noundef -2)
  br label %.loopexit

182:                                              ; preds = %177
  %183 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05IFBCHDME@s175?5?$AA@") #27
  %.not961 = icmp eq i32 %183, 0
  br i1 %.not961, label %184, label %187

184:                                              ; preds = %182
  %185 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 1.000000e+00, i32 noundef 1)
  %186 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 0.000000e+00, i32 noundef -2)
  br label %.loopexit

187:                                              ; preds = %182
  %188 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05IHFEMNJN@s176?5?$AA@") #27
  %.not962 = icmp eq i32 %188, 0
  br i1 %.not962, label %189, label %193

189:                                              ; preds = %187
  %190 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 1.000000e+00, i32 noundef 1)
  %191 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 0.000000e+00, i32 noundef -1)
  %192 = tail call i32 @set1d(ptr noundef nonnull @c, float noundef 0.000000e+00, i32 noundef -1)
  br label %.loopexit

193:                                              ; preds = %187
  %194 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05OANAPOBE@s211?5?$AA@") #27
  %.not963 = icmp eq i32 %194, 0
  br i1 %.not963, label %195, label %201

195:                                              ; preds = %193
  %196 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 0.000000e+00, i32 noundef 1)
  %197 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 1.000000e+00, i32 noundef 1)
  %198 = tail call i32 @set1d(ptr noundef nonnull @c, float noundef 0.000000e+00, i32 noundef -1)
  %199 = tail call i32 @set1d(ptr noundef nonnull @d, float noundef 0.000000e+00, i32 noundef -1)
  %200 = tail call i32 @set1d(ptr noundef nonnull @e, float noundef 0.000000e+00, i32 noundef -1)
  br label %.loopexit

201:                                              ; preds = %193
  %202 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05OCJGEAEN@s212?5?$AA@") #27
  %.not964 = icmp eq i32 %202, 0
  br i1 %.not964, label %203, label %208

203:                                              ; preds = %201
  %204 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 0.000000e+00, i32 noundef -1)
  %205 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 1.000000e+00, i32 noundef 1)
  %206 = tail call i32 @set1d(ptr noundef nonnull @c, float noundef 1.000000e+00, i32 noundef 1)
  %207 = tail call i32 @set1d(ptr noundef nonnull @d, float noundef 0.000000e+00, i32 noundef -1)
  br label %.loopexit

208:                                              ; preds = %201
  %209 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05PCGFFBPK@s221?5?$AA@") #27
  %.not965 = icmp eq i32 %209, 0
  br i1 %.not965, label %210, label %215

210:                                              ; preds = %208
  %211 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 1.000000e+00, i32 noundef 1)
  %212 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 0.000000e+00, i32 noundef -1)
  %213 = tail call i32 @set1d(ptr noundef nonnull @c, float noundef 0.000000e+00, i32 noundef -1)
  %214 = tail call i32 @set1d(ptr noundef nonnull @d, float noundef 0.000000e+00, i32 noundef -1)
  br label %.loopexit

215:                                              ; preds = %208
  %216 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05PACDOPKD@s222?5?$AA@") #27
  %.not966 = icmp eq i32 %216, 0
  br i1 %.not966, label %217, label %221

217:                                              ; preds = %215
  %218 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 0.000000e+00, i32 noundef 1)
  %219 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 1.000000e+00, i32 noundef 1)
  %220 = tail call i32 @set1d(ptr noundef nonnull @c, float noundef 1.000000e+00, i32 noundef 1)
  br label %.loopexit

221:                                              ; preds = %215
  %222 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05EKNJDGJP@s231?5?$AA@") #27
  %.not967 = icmp eq i32 %222, 0
  br i1 %.not967, label %223, label %226

223:                                              ; preds = %221
  %224 = tail call i32 @set2d(ptr noundef nonnull @aa, float noundef 1.000000e+00, i32 noundef 1)
  %225 = tail call i32 @set2d(ptr noundef nonnull @bb, float noundef 0.000000e+00, i32 noundef -2)
  br label %.loopexit

226:                                              ; preds = %221
  %227 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05EIJPIIMG@s232?5?$AA@") #27
  %.not968 = icmp eq i32 %227, 0
  br i1 %.not968, label %228, label %231

228:                                              ; preds = %226
  %229 = tail call i32 @set2d(ptr noundef nonnull @aa, float noundef 1.000000e+00, i32 noundef 1)
  %230 = tail call i32 @set2d(ptr noundef nonnull @bb, float noundef 0.000000e+00, i32 noundef 1)
  br label %.loopexit

231:                                              ; preds = %226
  %232 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05EJFNOCPB@s233?5?$AA@") #27
  %.not969 = icmp eq i32 %232, 0
  br i1 %.not969, label %233, label %237

233:                                              ; preds = %231
  %234 = tail call i32 @set2d(ptr noundef nonnull @aa, float noundef 0.000000e+00, i32 noundef -1)
  %235 = tail call i32 @set2d(ptr noundef nonnull @bb, float noundef 0.000000e+00, i32 noundef -1)
  %236 = tail call i32 @set2d(ptr noundef nonnull @cc, float noundef 0.000000e+00, i32 noundef -1)
  br label %.loopexit

237:                                              ; preds = %231
  %238 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05EMBCPEHE@s234?5?$AA@") #27
  %.not970 = icmp eq i32 %238, 0
  br i1 %.not970, label %239, label %243

239:                                              ; preds = %237
  %240 = tail call i32 @set2d(ptr noundef nonnull @aa, float noundef 1.000000e+00, i32 noundef 1)
  %241 = tail call i32 @set2d(ptr noundef nonnull @bb, float noundef 0.000000e+00, i32 noundef -1)
  %242 = tail call i32 @set2d(ptr noundef nonnull @cc, float noundef 0.000000e+00, i32 noundef -1)
  br label %.loopexit

243:                                              ; preds = %237
  %244 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05ENNAJOED@s235?5?$AA@") #27
  %.not971 = icmp eq i32 %244, 0
  br i1 %.not971, label %245, label %251

245:                                              ; preds = %243
  %246 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 1.000000e+00, i32 noundef 1)
  %247 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 0.000000e+00, i32 noundef -1)
  %248 = tail call i32 @set1d(ptr noundef nonnull @c, float noundef 0.000000e+00, i32 noundef -1)
  %249 = tail call i32 @set2d(ptr noundef nonnull @aa, float noundef 1.000000e+00, i32 noundef 1)
  %250 = tail call i32 @set2d(ptr noundef nonnull @bb, float noundef 0.000000e+00, i32 noundef -2)
  br label %.loopexit

251:                                              ; preds = %243
  %252 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05NHAOAOCG@s241?5?$AA@") #27
  %.not972 = icmp eq i32 %252, 0
  br i1 %.not972, label %253, label %258

253:                                              ; preds = %251
  %254 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 1.000000e+00, i32 noundef 1)
  %255 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 1.000000e+00, i32 noundef 1)
  %256 = tail call i32 @set1d(ptr noundef nonnull @c, float noundef 1.000000e+00, i32 noundef 1)
  %257 = tail call i32 @set1d(ptr noundef nonnull @d, float noundef 1.000000e+00, i32 noundef 1)
  br label %.loopexit

258:                                              ; preds = %251
  %259 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05NFEILAHP@s242?5?$AA@") #27
  %.not973 = icmp eq i32 %259, 0
  br i1 %.not973, label %260, label %265

260:                                              ; preds = %258
  %261 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef f0x358637BD, i32 noundef 1)
  %262 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef f0x358637BD, i32 noundef 1)
  %263 = tail call i32 @set1d(ptr noundef nonnull @c, float noundef f0x358637BD, i32 noundef 1)
  %264 = tail call i32 @set1d(ptr noundef nonnull @d, float noundef f0x358637BD, i32 noundef 1)
  br label %.loopexit

265:                                              ; preds = %258
  %266 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05NEIKNKEI@s243?5?$AA@") #27
  %.not974 = icmp eq i32 %266, 0
  br i1 %.not974, label %267, label %273

267:                                              ; preds = %265
  %268 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 0.000000e+00, i32 noundef 1)
  %269 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 1.000000e+00, i32 noundef 1)
  %270 = tail call i32 @set1d(ptr noundef nonnull @c, float noundef 0.000000e+00, i32 noundef -1)
  %271 = tail call i32 @set1d(ptr noundef nonnull @d, float noundef 0.000000e+00, i32 noundef -1)
  %272 = tail call i32 @set1d(ptr noundef nonnull @e, float noundef 0.000000e+00, i32 noundef -1)
  br label %.loopexit

273:                                              ; preds = %265
  %274 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05NBMFMMMN@s244?5?$AA@") #27
  %.not975 = icmp eq i32 %274, 0
  br i1 %.not975, label %275, label %280

275:                                              ; preds = %273
  %276 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 0.000000e+00, i32 noundef 1)
  %277 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 1.000000e+00, i32 noundef 1)
  %278 = tail call i32 @set1d(ptr noundef nonnull @c, float noundef f0x358637BD, i32 noundef 1)
  %279 = tail call i32 @set1d(ptr noundef nonnull @d, float noundef f0x358637BD, i32 noundef 1)
  br label %.loopexit

280:                                              ; preds = %273
  %281 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05GPLCGJED@s251?5?$AA@") #27
  %.not976 = icmp eq i32 %281, 0
  br i1 %.not976, label %282, label %288

282:                                              ; preds = %280
  %283 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 0.000000e+00, i32 noundef 1)
  %284 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 1.000000e+00, i32 noundef 1)
  %285 = tail call i32 @set1d(ptr noundef nonnull @c, float noundef 0.000000e+00, i32 noundef -1)
  %286 = tail call i32 @set1d(ptr noundef nonnull @d, float noundef 0.000000e+00, i32 noundef -1)
  %287 = tail call i32 @set1d(ptr noundef nonnull @e, float noundef 0.000000e+00, i32 noundef -1)
  br label %.loopexit

288:                                              ; preds = %280
  %289 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05GNPENHBK@s252?5?$AA@") #27
  %.not977 = icmp eq i32 %289, 0
  br i1 %.not977, label %290, label %294

290:                                              ; preds = %288
  %291 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 0.000000e+00, i32 noundef 1)
  %292 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 1.000000e+00, i32 noundef 1)
  %293 = tail call i32 @set1d(ptr noundef nonnull @c, float noundef 1.000000e+00, i32 noundef 1)
  br label %.loopexit

294:                                              ; preds = %288
  %295 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05GMDGLNCN@s253?5?$AA@") #27
  %.not978 = icmp eq i32 %295, 0
  br i1 %.not978, label %296, label %301

296:                                              ; preds = %294
  %297 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 1.000000e+00, i32 noundef 1)
  %298 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef f0x358637BD, i32 noundef 1)
  %299 = tail call i32 @set1d(ptr noundef nonnull @c, float noundef 1.000000e+00, i32 noundef 1)
  %300 = tail call i32 @set1d(ptr noundef nonnull @d, float noundef 0.000000e+00, i32 noundef -1)
  br label %.loopexit

301:                                              ; preds = %294
  %302 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05GJHJKLKI@s254?5?$AA@") #27
  %.not979 = icmp eq i32 %302, 0
  br i1 %.not979, label %303, label %306

303:                                              ; preds = %301
  %304 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 0.000000e+00, i32 noundef 1)
  %305 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 1.000000e+00, i32 noundef 1)
  br label %.loopexit

306:                                              ; preds = %301
  %307 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05GILLMBJP@s255?5?$AA@") #27
  %.not980 = icmp eq i32 %307, 0
  br i1 %.not980, label %308, label %311

308:                                              ; preds = %306
  %309 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 0.000000e+00, i32 noundef 1)
  %310 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 1.000000e+00, i32 noundef 1)
  br label %.loopexit

311:                                              ; preds = %306
  %312 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05GKPNHPMG@s256?5?$AA@") #27
  %.not981 = icmp eq i32 %312, 0
  br i1 %.not981, label %313, label %317

313:                                              ; preds = %311
  %314 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 1.000000e+00, i32 noundef 1)
  %315 = tail call i32 @set2d(ptr noundef nonnull @aa, float noundef 2.000000e+00, i32 noundef 1)
  %316 = tail call i32 @set2d(ptr noundef nonnull @bb, float noundef 1.000000e+00, i32 noundef 1)
  br label %.loopexit

317:                                              ; preds = %311
  %318 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05GLDPBFPB@s257?5?$AA@") #27
  %.not982 = icmp eq i32 %318, 0
  br i1 %.not982, label %319, label %323

319:                                              ; preds = %317
  %320 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 1.000000e+00, i32 noundef 1)
  %321 = tail call i32 @set2d(ptr noundef nonnull @aa, float noundef 2.000000e+00, i32 noundef 1)
  %322 = tail call i32 @set2d(ptr noundef nonnull @bb, float noundef 1.000000e+00, i32 noundef 1)
  br label %.loopexit

323:                                              ; preds = %317
  %324 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05GAGDFCMM@s258?5?$AA@") #27
  %.not983 = icmp eq i32 %324, 0
  br i1 %.not983, label %325, label %332

325:                                              ; preds = %323
  %326 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 0.000000e+00, i32 noundef -1)
  %327 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 0.000000e+00, i32 noundef 1)
  %328 = tail call i32 @set1d(ptr noundef nonnull @c, float noundef 0.000000e+00, i32 noundef -1)
  %329 = tail call i32 @set1d(ptr noundef nonnull @d, float noundef 0.000000e+00, i32 noundef -1)
  %330 = tail call i32 @set1d(ptr noundef nonnull @e, float noundef 0.000000e+00, i32 noundef 1)
  %331 = tail call i32 @set2d(ptr noundef nonnull @aa, float noundef 0.000000e+00, i32 noundef -1)
  br label %.loopexit

332:                                              ; preds = %323
  %333 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05HNAHMGKN@s261?5?$AA@") #27
  %.not984 = icmp eq i32 %333, 0
  br i1 %.not984, label %334, label %339

334:                                              ; preds = %332
  %335 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 1.000000e+00, i32 noundef 1)
  %336 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 0.000000e+00, i32 noundef -2)
  %337 = tail call i32 @set1d(ptr noundef nonnull @c, float noundef 0.000000e+00, i32 noundef -2)
  %338 = tail call i32 @set1d(ptr noundef nonnull @d, float noundef 1.000000e+00, i32 noundef 1)
  br label %.loopexit

339:                                              ; preds = %332
  %340 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05MFLLKBMI@s271?5?$AA@") #27
  %.not985 = icmp eq i32 %340, 0
  br i1 %.not985, label %341, label %345

341:                                              ; preds = %339
  %342 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 1.000000e+00, i32 noundef 1)
  %343 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 0.000000e+00, i32 noundef -1)
  %344 = tail call i32 @set1d(ptr noundef nonnull @c, float noundef 0.000000e+00, i32 noundef -1)
  br label %.loopexit

345:                                              ; preds = %339
  %346 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05MHPNBPJB@s272?5?$AA@") #27
  %.not986 = icmp eq i32 %346, 0
  br i1 %.not986, label %347, label %353

347:                                              ; preds = %345
  %348 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 1.000000e+00, i32 noundef 1)
  %349 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 1.000000e+00, i32 noundef 1)
  %350 = tail call i32 @set1d(ptr noundef nonnull @c, float noundef 0.000000e+00, i32 noundef -1)
  %351 = tail call i32 @set1d(ptr noundef nonnull @d, float noundef 0.000000e+00, i32 noundef -1)
  %352 = tail call i32 @set1d(ptr noundef nonnull @e, float noundef 2.000000e+00, i32 noundef 1)
  br label %.loopexit

353:                                              ; preds = %345
  %354 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05MGDPHFKG@s273?5?$AA@") #27
  %.not987 = icmp eq i32 %354, 0
  br i1 %.not987, label %355, label %361

355:                                              ; preds = %353
  %356 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 1.000000e+00, i32 noundef 1)
  %357 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 1.000000e+00, i32 noundef 1)
  %358 = tail call i32 @set1d(ptr noundef nonnull @c, float noundef 1.000000e+00, i32 noundef 1)
  %359 = tail call i32 @set1d(ptr noundef nonnull @d, float noundef f0x358637BD, i32 noundef 1)
  %360 = tail call i32 @set1d(ptr noundef nonnull @e, float noundef 0.000000e+00, i32 noundef -1)
  br label %.loopexit

361:                                              ; preds = %353
  %362 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05MDHAGDCD@s274?5?$AA@") #27
  %.not988 = icmp eq i32 %362, 0
  br i1 %.not988, label %363, label %369

363:                                              ; preds = %361
  %364 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 0.000000e+00, i32 noundef 1)
  %365 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 1.000000e+00, i32 noundef 1)
  %366 = tail call i32 @set1d(ptr noundef nonnull @c, float noundef 1.000000e+00, i32 noundef 1)
  %367 = tail call i32 @set1d(ptr noundef nonnull @d, float noundef 0.000000e+00, i32 noundef -1)
  %368 = tail call i32 @set1d(ptr noundef nonnull @e, float noundef 0.000000e+00, i32 noundef -1)
  br label %.loopexit

369:                                              ; preds = %361
  %370 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05MCLCAJBE@s275?5?$AA@") #27
  %.not989 = icmp eq i32 %370, 0
  br i1 %.not989, label %371, label %375

371:                                              ; preds = %369
  %372 = tail call i32 @set2d(ptr noundef nonnull @aa, float noundef 1.000000e+00, i32 noundef 1)
  %373 = tail call i32 @set2d(ptr noundef nonnull @bb, float noundef f0x358637BD, i32 noundef 1)
  %374 = tail call i32 @set2d(ptr noundef nonnull @cc, float noundef f0x358637BD, i32 noundef 1)
  br label %.loopexit

375:                                              ; preds = %369
  %376 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05MAPELHEN@s276?5?$AA@") #27
  %.not990 = icmp eq i32 %376, 0
  br i1 %.not990, label %377, label %382

377:                                              ; preds = %375
  %378 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 1.000000e+00, i32 noundef 1)
  %379 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 0.000000e+00, i32 noundef -1)
  %380 = tail call i32 @set1d(ptr noundef nonnull @c, float noundef 0.000000e+00, i32 noundef -1)
  %381 = tail call i32 @set1d(ptr noundef nonnull @d, float noundef 0.000000e+00, i32 noundef -1)
  br label %.loopexit

382:                                              ; preds = %375
  %383 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05MBDGNNHK@s277?5?$AA@") #27
  %.not991 = icmp eq i32 %383, 0
  br i1 %.not991, label %384, label %391

384:                                              ; preds = %382
  %385 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 1.000000e+00, i32 noundef 1)
  %386 = tail call i32 @set1ds(i32 poison, ptr noundef nonnull @b, float noundef 1.000000e+00, i32 noundef 1)
  %387 = tail call i32 @set1ds(i32 poison, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @b, i64 64000), float noundef -1.000000e+00, i32 noundef 1)
  %388 = tail call i32 @set1d(ptr noundef nonnull @c, float noundef 0.000000e+00, i32 noundef -1)
  %389 = tail call i32 @set1d(ptr noundef nonnull @d, float noundef 0.000000e+00, i32 noundef -1)
  %390 = tail call i32 @set1d(ptr noundef nonnull @e, float noundef 0.000000e+00, i32 noundef -1)
  br label %.loopexit

391:                                              ; preds = %382
  %392 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05MKGKJKEH@s278?5?$AA@") #27
  %.not992 = icmp eq i32 %392, 0
  br i1 %.not992, label %393, label %400

393:                                              ; preds = %391
  %394 = tail call i32 @set1ds(i32 poison, ptr noundef nonnull @a, float noundef -1.000000e+00, i32 noundef 1)
  %395 = tail call i32 @set1ds(i32 poison, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @a, i64 64000), float noundef 1.000000e+00, i32 noundef 1)
  %396 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 1.000000e+00, i32 noundef 1)
  %397 = tail call i32 @set1d(ptr noundef nonnull @c, float noundef 0.000000e+00, i32 noundef -1)
  %398 = tail call i32 @set1d(ptr noundef nonnull @d, float noundef 0.000000e+00, i32 noundef -1)
  %399 = tail call i32 @set1d(ptr noundef nonnull @e, float noundef 0.000000e+00, i32 noundef -1)
  br label %.loopexit

400:                                              ; preds = %391
  %401 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05MLKIPAHA@s279?5?$AA@") #27
  %.not993 = icmp eq i32 %401, 0
  br i1 %.not993, label %402, label %409

402:                                              ; preds = %400
  %403 = tail call i32 @set1ds(i32 poison, ptr noundef nonnull @a, float noundef -1.000000e+00, i32 noundef 1)
  %404 = tail call i32 @set1ds(i32 poison, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @a, i64 64000), float noundef 1.000000e+00, i32 noundef 1)
  %405 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 1.000000e+00, i32 noundef 1)
  %406 = tail call i32 @set1d(ptr noundef nonnull @c, float noundef 0.000000e+00, i32 noundef -1)
  %407 = tail call i32 @set1d(ptr noundef nonnull @d, float noundef 0.000000e+00, i32 noundef -1)
  %408 = tail call i32 @set1d(ptr noundef nonnull @e, float noundef 0.000000e+00, i32 noundef -1)
  br label %.loopexit

409:                                              ; preds = %400
  %410 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05IPHJLDJJ@s2710?$AA@") #27
  %.not994 = icmp eq i32 %410, 0
  br i1 %.not994, label %411, label %417

411:                                              ; preds = %409
  %412 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 1.000000e+00, i32 noundef 1)
  %413 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 1.000000e+00, i32 noundef 1)
  %414 = tail call i32 @set1d(ptr noundef nonnull @c, float noundef 0.000000e+00, i32 noundef -1)
  %415 = tail call i32 @set1d(ptr noundef nonnull @d, float noundef 0.000000e+00, i32 noundef -1)
  %416 = tail call i32 @set1d(ptr noundef nonnull @e, float noundef 0.000000e+00, i32 noundef -1)
  br label %.loopexit

417:                                              ; preds = %409
  %418 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05JGGCICNI@s2711?$AA@") #27
  %.not995 = icmp eq i32 %418, 0
  br i1 %.not995, label %419, label %423

419:                                              ; preds = %417
  %420 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 1.000000e+00, i32 noundef 1)
  %421 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 0.000000e+00, i32 noundef -1)
  %422 = tail call i32 @set1d(ptr noundef nonnull @c, float noundef 0.000000e+00, i32 noundef -1)
  br label %.loopexit

423:                                              ; preds = %417
  %424 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05LNEPNBBL@s2712?$AA@") #27
  %.not996 = icmp eq i32 %424, 0
  br i1 %.not996, label %425, label %429

425:                                              ; preds = %423
  %426 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 1.000000e+00, i32 noundef 1)
  %427 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 0.000000e+00, i32 noundef -1)
  %428 = tail call i32 @set1d(ptr noundef nonnull @c, float noundef 0.000000e+00, i32 noundef -1)
  br label %.loopexit

429:                                              ; preds = %423
  %430 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05JNNILBJO@s281?5?$AA@") #27
  %.not997 = icmp eq i32 %430, 0
  br i1 %.not997, label %431, label %435

431:                                              ; preds = %429
  %432 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 0.000000e+00, i32 noundef 1)
  %433 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 1.000000e+00, i32 noundef 1)
  %434 = tail call i32 @set1d(ptr noundef nonnull @c, float noundef 1.000000e+00, i32 noundef 1)
  br label %.loopexit

435:                                              ; preds = %429
  %436 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05CFGENGPL@s291?5?$AA@") #27
  %.not998 = icmp eq i32 %436, 0
  br i1 %.not998, label %437, label %440

437:                                              ; preds = %435
  %438 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 0.000000e+00, i32 noundef 1)
  %439 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 1.000000e+00, i32 noundef 1)
  br label %.loopexit

440:                                              ; preds = %435
  %441 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05CHCCGIKC@s292?5?$AA@") #27
  %.not999 = icmp eq i32 %441, 0
  br i1 %.not999, label %442, label %445

442:                                              ; preds = %440
  %443 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 0.000000e+00, i32 noundef 1)
  %444 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 1.000000e+00, i32 noundef 1)
  br label %.loopexit

445:                                              ; preds = %440
  %446 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05CGOAACJF@s293?5?$AA@") #27
  %.not1000 = icmp eq i32 %446, 0
  br i1 %.not1000, label %447, label %449

447:                                              ; preds = %445
  %448 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 0.000000e+00, i32 noundef -1)
  br label %.loopexit

449:                                              ; preds = %445
  %450 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05LCMLLHDD@s2101?$AA@") #27
  %.not1001 = icmp eq i32 %450, 0
  br i1 %.not1001, label %451, label %455

451:                                              ; preds = %449
  %452 = tail call i32 @set2d(ptr noundef nonnull @aa, float noundef 1.000000e+00, i32 noundef 1)
  %453 = tail call i32 @set2d(ptr noundef nonnull @bb, float noundef 0.000000e+00, i32 noundef -1)
  %454 = tail call i32 @set2d(ptr noundef nonnull @cc, float noundef 0.000000e+00, i32 noundef -1)
  br label %.loopexit

455:                                              ; preds = %449
  %456 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05JJOGOEPA@s2102?$AA@") #27
  %.not1002 = icmp eq i32 %456, 0
  br i1 %.not1002, label %457, label %459

457:                                              ; preds = %455
  %458 = tail call i32 @set2d(ptr noundef nonnull @aa, float noundef 0.000000e+00, i32 noundef 1)
  br label %.loopexit

459:                                              ; preds = %455
  %460 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05LDAJNNAE@s2111?$AA@") #27
  %.not1003 = icmp eq i32 %460, 0
  br i1 %.not1003, label %461, label %463

461:                                              ; preds = %459
  %462 = tail call i32 @set2d(ptr noundef nonnull @aa, float noundef 0.000000e+00, i32 noundef 1)
  br label %.loopexit

463:                                              ; preds = %459
  %464 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05NNLANHKE@s311?5?$AA@") #27
  %.not1004 = icmp eq i32 %464, 0
  br i1 %.not1004, label %465, label %467

465:                                              ; preds = %463
  %466 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 0.000000e+00, i32 noundef -1)
  br label %.loopexit

467:                                              ; preds = %463
  %468 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05NPPGGJPN@s312?5?$AA@") #27
  %.not1005 = icmp eq i32 %468, 0
  br i1 %.not1005, label %469, label %471

469:                                              ; preds = %467
  %470 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef f0x3F800008, i32 noundef 1)
  br label %.loopexit

471:                                              ; preds = %467
  %472 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05NODEADMK@s313?5?$AA@") #27
  %.not1006 = icmp eq i32 %472, 0
  br i1 %.not1006, label %473, label %476

473:                                              ; preds = %471
  %474 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 0.000000e+00, i32 noundef -1)
  %475 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 0.000000e+00, i32 noundef -1)
  br label %.loopexit

476:                                              ; preds = %471
  %477 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05NLHLBFEP@s314?5?$AA@") #27
  %.not1007 = icmp eq i32 %477, 0
  br i1 %.not1007, label %478, label %480

478:                                              ; preds = %476
  %479 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 0.000000e+00, i32 noundef -1)
  br label %.loopexit

480:                                              ; preds = %476
  %481 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05NKLJHPHI@s315?5?$AA@") #27
  %.not1008 = icmp eq i32 %481, 0
  br i1 %.not1008, label %482, label %484

482:                                              ; preds = %480
  %483 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 0.000000e+00, i32 noundef -1)
  br label %.loopexit

484:                                              ; preds = %480
  %485 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05NIPPMBCB@s316?5?$AA@") #27
  %.not1009 = icmp eq i32 %485, 0
  br i1 %.not1009, label %486, label %488

486:                                              ; preds = %484
  %487 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 0.000000e+00, i32 noundef -1)
  br label %.loopexit

488:                                              ; preds = %484
  %489 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05NJDNKLBG@s317?5?$AA@") #27
  %.not1010 = icmp eq i32 %489, 0
  br i1 %.not1010, label %.loopexit, label %490

490:                                              ; preds = %488
  %491 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05NCGBOMCL@s318?5?$AA@") #27
  %.not1011 = icmp eq i32 %491, 0
  br i1 %.not1011, label %492, label %494

492:                                              ; preds = %490
  %493 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 0.000000e+00, i32 noundef -1)
  store float -2.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @a, i64 127996), align 4
  br label %.loopexit

494:                                              ; preds = %490
  %495 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05NDKDIGBM@s319?5?$AA@") #27
  %.not1012 = icmp eq i32 %495, 0
  br i1 %.not1012, label %496, label %502

496:                                              ; preds = %494
  %497 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 0.000000e+00, i32 noundef 1)
  %498 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 0.000000e+00, i32 noundef 1)
  %499 = tail call i32 @set1d(ptr noundef nonnull @c, float noundef 0.000000e+00, i32 noundef -1)
  %500 = tail call i32 @set1d(ptr noundef nonnull @d, float noundef 0.000000e+00, i32 noundef -1)
  %501 = tail call i32 @set1d(ptr noundef nonnull @e, float noundef 0.000000e+00, i32 noundef -1)
  br label %.loopexit

502:                                              ; preds = %494
  %503 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05JHHCMFPF@s3110?$AA@") #27
  %.not1013 = icmp eq i32 %503, 0
  br i1 %.not1013, label %504, label %506

504:                                              ; preds = %502
  %505 = tail call i32 @set2d(ptr noundef nonnull @aa, float noundef 0.000000e+00, i32 noundef -1)
  store float 2.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @aa, i64 262140), align 4
  br label %.loopexit

506:                                              ; preds = %502
  %507 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05IOGJPELE@s3111?$AA@") #27
  %.not1014 = icmp eq i32 %507, 0
  br i1 %.not1014, label %508, label %510

508:                                              ; preds = %506
  %509 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 0.000000e+00, i32 noundef -1)
  br label %.loopexit

510:                                              ; preds = %506
  %511 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05KFEEKHHH@s3112?$AA@") #27
  %.not1015 = icmp eq i32 %511, 0
  br i1 %.not1015, label %512, label %515

512:                                              ; preds = %510
  %513 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 0.000000e+00, i32 noundef -2)
  %514 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 0.000000e+00, i32 noundef 1)
  br label %.loopexit

515:                                              ; preds = %510
  %516 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05LMFPJGDG@s3113?$AA@") #27
  %.not1016 = icmp eq i32 %516, 0
  br i1 %.not1016, label %517, label %519

517:                                              ; preds = %515
  %518 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 0.000000e+00, i32 noundef -1)
  store float -2.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @a, i64 127996), align 4
  br label %.loopexit

519:                                              ; preds = %515
  %520 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05MPAFHIEK@s321?5?$AA@") #27
  %.not1017 = icmp eq i32 %520, 0
  br i1 %.not1017, label %521, label %524

521:                                              ; preds = %519
  %522 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 1.000000e+00, i32 noundef 1)
  %523 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 0.000000e+00, i32 noundef 1)
  br label %.loopexit

524:                                              ; preds = %519
  %525 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05MNEDMGBD@s322?5?$AA@") #27
  %.not1018 = icmp eq i32 %525, 0
  br i1 %.not1018, label %526, label %530

526:                                              ; preds = %524
  %527 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 1.000000e+00, i32 noundef 1)
  %528 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 0.000000e+00, i32 noundef 1)
  %529 = tail call i32 @set1d(ptr noundef nonnull @c, float noundef 0.000000e+00, i32 noundef 1)
  br label %.loopexit

530:                                              ; preds = %524
  %531 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05MMIBKMCE@s323?5?$AA@") #27
  %.not1019 = icmp eq i32 %531, 0
  br i1 %.not1019, label %532, label %538

532:                                              ; preds = %530
  %533 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 1.000000e+00, i32 noundef 1)
  %534 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 1.000000e+00, i32 noundef 1)
  %535 = tail call i32 @set1d(ptr noundef nonnull @c, float noundef 0.000000e+00, i32 noundef -1)
  %536 = tail call i32 @set1d(ptr noundef nonnull @d, float noundef 0.000000e+00, i32 noundef -1)
  %537 = tail call i32 @set1d(ptr noundef nonnull @e, float noundef 0.000000e+00, i32 noundef -1)
  br label %.loopexit

538:                                              ; preds = %530
  %539 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05HHLJBPCP@s331?5?$AA@") #27
  %.not1020 = icmp eq i32 %539, 0
  br i1 %.not1020, label %540, label %542

540:                                              ; preds = %538
  %541 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 0.000000e+00, i32 noundef -1)
  store float -1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @a, i64 127996), align 4
  br label %.loopexit

542:                                              ; preds = %538
  %543 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05HFPPKBHG@s332?5?$AA@") #27
  %.not1021 = icmp eq i32 %543, 0
  br i1 %.not1021, label %544, label %546

544:                                              ; preds = %542
  %545 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 0.000000e+00, i32 noundef -2)
  store float 2.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @a, i64 127996), align 4
  br label %.loopexit

546:                                              ; preds = %542
  %547 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05OKGOCHJG@s341?5?$AA@") #27
  %.not1022 = icmp eq i32 %547, 0
  br i1 %.not1022, label %548, label %551

548:                                              ; preds = %546
  %549 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 0.000000e+00, i32 noundef 1)
  %550 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 0.000000e+00, i32 noundef -1)
  br label %.loopexit

551:                                              ; preds = %546
  %552 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05OICIJJMP@s342?5?$AA@") #27
  %.not1023 = icmp eq i32 %552, 0
  br i1 %.not1023, label %553, label %556

553:                                              ; preds = %551
  %554 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 0.000000e+00, i32 noundef -1)
  %555 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 0.000000e+00, i32 noundef -1)
  br label %.loopexit

556:                                              ; preds = %551
  %557 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05OJOKPDPI@s343?5?$AA@") #27
  %.not1024 = icmp eq i32 %557, 0
  br i1 %.not1024, label %558, label %561

558:                                              ; preds = %556
  %559 = tail call i32 @set2d(ptr noundef nonnull @aa, float noundef 0.000000e+00, i32 noundef -1)
  %560 = tail call i32 @set2d(ptr noundef nonnull @bb, float noundef 1.000000e+00, i32 noundef 1)
  br label %.loopexit

561:                                              ; preds = %556
  %562 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05FCNCEAPD@s351?5?$AA@") #27
  %.not1025 = icmp eq i32 %562, 0
  br i1 %.not1025, label %563, label %566

563:                                              ; preds = %561
  %564 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 1.000000e+00, i32 noundef 1)
  %565 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 1.000000e+00, i32 noundef 1)
  store float 1.000000e+00, ptr @c, align 16
  br label %.loopexit

566:                                              ; preds = %561
  %567 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05FAJEPOKK@s352?5?$AA@") #27
  %.not1026 = icmp eq i32 %567, 0
  br i1 %.not1026, label %568, label %571

568:                                              ; preds = %566
  %569 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 0.000000e+00, i32 noundef -1)
  %570 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 0.000000e+00, i32 noundef -1)
  br label %.loopexit

571:                                              ; preds = %566
  %572 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05FBFGJEJN@s353?5?$AA@") #27
  %.not1027 = icmp eq i32 %572, 0
  br i1 %.not1027, label %573, label %576

573:                                              ; preds = %571
  %574 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 1.000000e+00, i32 noundef 1)
  %575 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 1.000000e+00, i32 noundef 1)
  store float 1.000000e+00, ptr @c, align 16
  br label %.loopexit

576:                                              ; preds = %571
  %577 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05GPJAALLE@s411?5?$AA@") #27
  %.not1028 = icmp eq i32 %577, 0
  br i1 %.not1028, label %578, label %582

578:                                              ; preds = %576
  %579 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 1.000000e+00, i32 noundef 1)
  %580 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 0.000000e+00, i32 noundef -1)
  %581 = tail call i32 @set1d(ptr noundef nonnull @c, float noundef 0.000000e+00, i32 noundef -1)
  br label %.loopexit

582:                                              ; preds = %576
  %583 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05GNNGLFON@s412?5?$AA@") #27
  %.not1029 = icmp eq i32 %583, 0
  br i1 %.not1029, label %584, label %588

584:                                              ; preds = %582
  %585 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 1.000000e+00, i32 noundef 1)
  %586 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 0.000000e+00, i32 noundef -1)
  %587 = tail call i32 @set1d(ptr noundef nonnull @c, float noundef 0.000000e+00, i32 noundef -1)
  br label %.loopexit

588:                                              ; preds = %582
  %589 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05GMBENPNK@s413?5?$AA@") #27
  %.not1030 = icmp eq i32 %589, 0
  br i1 %.not1030, label %590, label %596

590:                                              ; preds = %588
  %591 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 0.000000e+00, i32 noundef 1)
  %592 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 1.000000e+00, i32 noundef 1)
  %593 = tail call i32 @set1d(ptr noundef nonnull @c, float noundef 1.000000e+00, i32 noundef 1)
  %594 = tail call i32 @set1d(ptr noundef nonnull @d, float noundef 0.000000e+00, i32 noundef -1)
  %595 = tail call i32 @set1d(ptr noundef nonnull @e, float noundef 0.000000e+00, i32 noundef -1)
  br label %.loopexit

596:                                              ; preds = %588
  %597 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05GJFLMJFP@s414?5?$AA@") #27
  %.not1031 = icmp eq i32 %597, 0
  br i1 %.not1031, label %598, label %602

598:                                              ; preds = %596
  %599 = tail call i32 @set2d(ptr noundef nonnull @aa, float noundef 1.000000e+00, i32 noundef 1)
  %600 = tail call i32 @set2d(ptr noundef nonnull @bb, float noundef 0.000000e+00, i32 noundef -1)
  %601 = tail call i32 @set2d(ptr noundef nonnull @cc, float noundef 0.000000e+00, i32 noundef -1)
  br label %.loopexit

602:                                              ; preds = %596
  %603 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05GIJJKDGI@s415?5?$AA@") #27
  %.not1032 = icmp eq i32 %603, 0
  br i1 %.not1032, label %604, label %608

604:                                              ; preds = %602
  %605 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 1.000000e+00, i32 noundef 1)
  %606 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 0.000000e+00, i32 noundef -1)
  %607 = tail call i32 @set1d(ptr noundef nonnull @c, float noundef 0.000000e+00, i32 noundef -1)
  store float -1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @a, i64 127996), align 4
  br label %.loopexit

608:                                              ; preds = %602
  %609 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05HNCFKEFK@s421?5?$AA@") #27
  %.not1033 = icmp eq i32 %609, 0
  br i1 %.not1033, label %610, label %612

610:                                              ; preds = %608
  %611 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 0.000000e+00, i32 noundef -2)
  br label %.loopexit

612:                                              ; preds = %608
  %613 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05HPGDBKAD@s422?5?$AA@") #27
  %.not1034 = icmp eq i32 %613, 0
  br i1 %.not1034, label %614, label %617

614:                                              ; preds = %612
  %615 = tail call i32 @set1d(ptr noundef nonnull @array, float noundef 1.000000e+00, i32 noundef 1)
  %616 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 0.000000e+00, i32 noundef -2)
  br label %.loopexit

617:                                              ; preds = %612
  %618 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05HOKBHADE@s423?5?$AA@") #27
  %.not1035 = icmp eq i32 %618, 0
  br i1 %.not1035, label %619, label %622

619:                                              ; preds = %617
  %620 = tail call i32 @set1d(ptr noundef nonnull @array, float noundef 0.000000e+00, i32 noundef 1)
  %621 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 0.000000e+00, i32 noundef -2)
  br label %.loopexit

622:                                              ; preds = %617
  %623 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05HLOOGGLB@s424?5?$AA@") #27
  %.not1036 = icmp eq i32 %623, 0
  br i1 %.not1036, label %624, label %627

624:                                              ; preds = %622
  %625 = tail call i32 @set1d(ptr noundef nonnull @array, float noundef 1.000000e+00, i32 noundef 1)
  %626 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 0.000000e+00, i32 noundef -2)
  br label %.loopexit

627:                                              ; preds = %622
  %628 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05MFJJMDDP@s431?5?$AA@") #27
  %.not1037 = icmp eq i32 %628, 0
  br i1 %.not1037, label %629, label %632

629:                                              ; preds = %627
  %630 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 1.000000e+00, i32 noundef 1)
  %631 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 0.000000e+00, i32 noundef -2)
  br label %.loopexit

632:                                              ; preds = %627
  %633 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05MHNPHNGG@s432?5?$AA@") #27
  %.not1038 = icmp eq i32 %633, 0
  br i1 %.not1038, label %634, label %637

634:                                              ; preds = %632
  %635 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 1.000000e+00, i32 noundef 1)
  %636 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 0.000000e+00, i32 noundef -2)
  br label %.loopexit

637:                                              ; preds = %632
  %638 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05FIEOPLIG@s441?5?$AA@") #27
  %.not1039 = icmp eq i32 %638, 0
  br i1 %.not1039, label %639, label %646

639:                                              ; preds = %637
  %640 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 1.000000e+00, i32 noundef 1)
  %641 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 0.000000e+00, i32 noundef -1)
  %642 = tail call i32 @set1d(ptr noundef nonnull @c, float noundef 0.000000e+00, i32 noundef -1)
  %643 = tail call i32 @set1ds(i32 poison, ptr noundef nonnull @d, float noundef -1.000000e+00, i32 noundef 1)
  %644 = tail call i32 @set1ds(i32 poison, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @d, i64 42664), float noundef 0.000000e+00, i32 noundef 1)
  %645 = tail call i32 @set1ds(i32 poison, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @d, i64 85332), float noundef 1.000000e+00, i32 noundef 1)
  br label %.loopexit

646:                                              ; preds = %637
  %647 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05FKAIEFNP@s442?5?$AA@") #27
  %.not1040 = icmp eq i32 %647, 0
  br i1 %.not1040, label %648, label %654

648:                                              ; preds = %646
  %649 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 1.000000e+00, i32 noundef 1)
  %650 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 0.000000e+00, i32 noundef -1)
  %651 = tail call i32 @set1d(ptr noundef nonnull @c, float noundef 0.000000e+00, i32 noundef -1)
  %652 = tail call i32 @set1d(ptr noundef nonnull @d, float noundef 0.000000e+00, i32 noundef -1)
  %653 = tail call i32 @set1d(ptr noundef nonnull @e, float noundef 0.000000e+00, i32 noundef -1)
  br label %.loopexit

654:                                              ; preds = %646
  %655 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05FLMKCPOI@s443?5?$AA@") #27
  %.not1041 = icmp eq i32 %655, 0
  br i1 %.not1041, label %656, label %660

656:                                              ; preds = %654
  %657 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 1.000000e+00, i32 noundef 1)
  %658 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 0.000000e+00, i32 noundef -1)
  %659 = tail call i32 @set1d(ptr noundef nonnull @c, float noundef 0.000000e+00, i32 noundef -1)
  br label %.loopexit

660:                                              ; preds = %654
  %661 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05OAPCJMOD@s451?5?$AA@") #27
  %.not1042 = icmp eq i32 %661, 0
  br i1 %.not1042, label %662, label %665

662:                                              ; preds = %660
  %663 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 0.000000e+00, i32 noundef -1)
  %664 = tail call i32 @set1d(ptr noundef nonnull @c, float noundef 0.000000e+00, i32 noundef -1)
  br label %.loopexit

665:                                              ; preds = %660
  %666 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05OCLECCLK@s452?5?$AA@") #27
  %.not1043 = icmp eq i32 %666, 0
  br i1 %.not1043, label %667, label %671

667:                                              ; preds = %665
  %668 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 0.000000e+00, i32 noundef 1)
  %669 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 1.000000e+00, i32 noundef 1)
  %670 = tail call i32 @set1d(ptr noundef nonnull @c, float noundef f0x358637BD, i32 noundef 1)
  br label %.loopexit

671:                                              ; preds = %665
  %672 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05ODHGEIIN@s453?5?$AA@") #27
  %.not1044 = icmp eq i32 %672, 0
  br i1 %.not1044, label %673, label %676

673:                                              ; preds = %671
  %674 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 0.000000e+00, i32 noundef 1)
  %675 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 0.000000e+00, i32 noundef -2)
  br label %.loopexit

676:                                              ; preds = %671
  %677 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05EKPLFEGI@s471?5?$AA@") #27
  %.not1045 = icmp eq i32 %677, 0
  br i1 %.not1045, label %678, label %684

678:                                              ; preds = %676
  %679 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 1.000000e+00, i32 noundef 1)
  %680 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 1.000000e+00, i32 noundef 1)
  %681 = tail call i32 @set1d(ptr noundef nonnull @c, float noundef 1.000000e+00, i32 noundef 1)
  %682 = tail call i32 @set1d(ptr noundef nonnull @d, float noundef 0.000000e+00, i32 noundef -1)
  %683 = tail call i32 @set1d(ptr noundef nonnull @e, float noundef 0.000000e+00, i32 noundef -1)
  br label %.loopexit

684:                                              ; preds = %676
  %685 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05BCJIEEDO@s481?5?$AA@") #27
  %.not1046 = icmp eq i32 %685, 0
  br i1 %.not1046, label %686, label %691

686:                                              ; preds = %684
  %687 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 1.000000e+00, i32 noundef 1)
  %688 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 0.000000e+00, i32 noundef -1)
  %689 = tail call i32 @set1d(ptr noundef nonnull @c, float noundef 0.000000e+00, i32 noundef -1)
  %690 = tail call i32 @set1d(ptr noundef nonnull @d, float noundef 0.000000e+00, i32 noundef -1)
  br label %.loopexit

691:                                              ; preds = %684
  %692 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05BANOPKGH@s482?5?$AA@") #27
  %.not1047 = icmp eq i32 %692, 0
  br i1 %.not1047, label %693, label %697

693:                                              ; preds = %691
  %694 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 1.000000e+00, i32 noundef 1)
  %695 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 0.000000e+00, i32 noundef -1)
  %696 = tail call i32 @set1d(ptr noundef nonnull @c, float noundef 0.000000e+00, i32 noundef -1)
  br label %.loopexit

697:                                              ; preds = %691
  %698 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05KKCECDFL@s491?5?$AA@") #27
  %.not1048 = icmp eq i32 %698, 0
  br i1 %.not1048, label %699, label %704

699:                                              ; preds = %697
  %700 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 0.000000e+00, i32 noundef 1)
  %701 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 1.000000e+00, i32 noundef 1)
  %702 = tail call i32 @set1d(ptr noundef nonnull @c, float noundef 0.000000e+00, i32 noundef -1)
  %703 = tail call i32 @set1d(ptr noundef nonnull @d, float noundef 0.000000e+00, i32 noundef -1)
  br label %.loopexit

704:                                              ; preds = %697
  %705 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05BHGEHLGH@s4112?$AA@") #27
  %.not1049 = icmp eq i32 %705, 0
  br i1 %.not1049, label %706, label %709

706:                                              ; preds = %704
  %707 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 1.000000e+00, i32 noundef 1)
  %708 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 0.000000e+00, i32 noundef -1)
  br label %.loopexit

709:                                              ; preds = %704
  %710 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05OHPEKCG@s4113?$AA@") #27
  %.not1050 = icmp eq i32 %710, 0
  br i1 %.not1050, label %711, label %715

711:                                              ; preds = %709
  %712 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 0.000000e+00, i32 noundef 1)
  %713 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 1.000000e+00, i32 noundef 1)
  %714 = tail call i32 @set1d(ptr noundef nonnull @c, float noundef 0.000000e+00, i32 noundef -2)
  br label %.loopexit

715:                                              ; preds = %709
  %716 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05EBDONMOB@s4114?$AA@") #27
  %.not1051 = icmp eq i32 %716, 0
  br i1 %.not1051, label %717, label %722

717:                                              ; preds = %715
  %718 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 0.000000e+00, i32 noundef 1)
  %719 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 1.000000e+00, i32 noundef 1)
  %720 = tail call i32 @set1d(ptr noundef nonnull @c, float noundef 0.000000e+00, i32 noundef -1)
  %721 = tail call i32 @set1d(ptr noundef nonnull @d, float noundef 0.000000e+00, i32 noundef -1)
  br label %.loopexit

722:                                              ; preds = %715
  %723 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05FICFONKA@s4115?$AA@") #27
  %.not1052 = icmp eq i32 %723, 0
  br i1 %.not1052, label %724, label %727

724:                                              ; preds = %722
  %725 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 0.000000e+00, i32 noundef -1)
  %726 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 0.000000e+00, i32 noundef -1)
  br label %.loopexit

727:                                              ; preds = %722
  %728 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05HDAILOGD@s4116?$AA@") #27
  %.not1053 = icmp eq i32 %728, 0
  br i1 %.not1053, label %729, label %732

729:                                              ; preds = %727
  %730 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 0.000000e+00, i32 noundef -1)
  %731 = tail call i32 @set2d(ptr noundef nonnull @aa, float noundef 0.000000e+00, i32 noundef -1)
  br label %.loopexit

732:                                              ; preds = %727
  %733 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05GKBDIPCC@s4117?$AA@") #27
  %.not1054 = icmp eq i32 %733, 0
  br i1 %.not1054, label %734, label %739

734:                                              ; preds = %732
  %735 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 0.000000e+00, i32 noundef 1)
  %736 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 1.000000e+00, i32 noundef 1)
  %737 = tail call i32 @set1d(ptr noundef nonnull @c, float noundef 0.000000e+00, i32 noundef -1)
  %738 = tail call i32 @set1d(ptr noundef nonnull @d, float noundef 0.000000e+00, i32 noundef -1)
  br label %.loopexit

739:                                              ; preds = %732
  %740 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05DOAPJGPN@s4121?$AA@") #27
  %.not1055 = icmp eq i32 %740, 0
  br i1 %.not1055, label %741, label %745

741:                                              ; preds = %739
  %742 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 1.000000e+00, i32 noundef 1)
  %743 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 0.000000e+00, i32 noundef -1)
  %744 = tail call i32 @set1d(ptr noundef nonnull @c, float noundef 0.000000e+00, i32 noundef -1)
  br label %.loopexit

745:                                              ; preds = %739
  %746 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @"??_C@_03IDIMFPN@va?7?$AA@") #27
  %.not1056 = icmp eq i32 %746, 0
  br i1 %.not1056, label %747, label %750

747:                                              ; preds = %745
  %748 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 0.000000e+00, i32 noundef 1)
  %749 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 0.000000e+00, i32 noundef -2)
  br label %.loopexit

750:                                              ; preds = %745
  %751 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05DMCMEDIF@vag?5?5?$AA@") #27
  %.not1057 = icmp eq i32 %751, 0
  br i1 %.not1057, label %752, label %755

752:                                              ; preds = %750
  %753 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 0.000000e+00, i32 noundef 1)
  %754 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 0.000000e+00, i32 noundef -2)
  br label %.loopexit

755:                                              ; preds = %750
  %756 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05ODFHIDEN@vas?5?5?$AA@") #27
  %.not1058 = icmp eq i32 %756, 0
  br i1 %.not1058, label %757, label %760

757:                                              ; preds = %755
  %758 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 0.000000e+00, i32 noundef 1)
  %759 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 0.000000e+00, i32 noundef -2)
  br label %.loopexit

760:                                              ; preds = %755
  %761 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05LEOAGPCB@vif?5?5?$AA@") #27
  %.not1059 = icmp eq i32 %761, 0
  br i1 %.not1059, label %762, label %765

762:                                              ; preds = %760
  %763 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 0.000000e+00, i32 noundef 1)
  %764 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 0.000000e+00, i32 noundef -2)
  br label %.loopexit

765:                                              ; preds = %760
  %766 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05IJAJMNEN@vpv?5?5?$AA@") #27
  %.not1060 = icmp eq i32 %766, 0
  br i1 %.not1060, label %767, label %770

767:                                              ; preds = %765
  %768 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 0.000000e+00, i32 noundef 1)
  %769 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 0.000000e+00, i32 noundef -2)
  br label %.loopexit

770:                                              ; preds = %765
  %771 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05HMIJGLIN@vtv?5?5?$AA@") #27
  %.not1061 = icmp eq i32 %771, 0
  br i1 %.not1061, label %772, label %775

772:                                              ; preds = %770
  %773 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 1.000000e+00, i32 noundef 1)
  %774 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 1.000000e+00, i32 noundef 1)
  br label %.loopexit

775:                                              ; preds = %770
  %776 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05OFNLBPD@vpvtv?$AA@") #27
  %.not1062 = icmp eq i32 %776, 0
  br i1 %.not1062, label %777, label %781

777:                                              ; preds = %775
  %778 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 1.000000e+00, i32 noundef 1)
  %779 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 0.000000e+00, i32 noundef -1)
  %780 = tail call i32 @set1d(ptr noundef nonnull @c, float noundef 0.000000e+00, i32 noundef -1)
  br label %.loopexit

781:                                              ; preds = %775
  %782 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05HDCKEFLG@vpvts?$AA@") #27
  %.not1063 = icmp eq i32 %782, 0
  br i1 %.not1063, label %783, label %786

783:                                              ; preds = %781
  %784 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 1.000000e+00, i32 noundef 1)
  %785 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 0.000000e+00, i32 noundef -2)
  br label %.loopexit

786:                                              ; preds = %781
  %787 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05JFEBJCP@vpvpv?$AA@") #27
  %.not1064 = icmp eq i32 %787, 0
  br i1 %.not1064, label %788, label %792

788:                                              ; preds = %786
  %789 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 0.000000e+00, i32 noundef -2)
  %790 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 1.000000e+00, i32 noundef 1)
  %791 = tail call i32 @set1d(ptr noundef nonnull @c, float noundef -1.000000e+00, i32 noundef 1)
  br label %.loopexit

792:                                              ; preds = %786
  %793 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05PLNNBHDD@vtvtv?$AA@") #27
  %.not1065 = icmp eq i32 %793, 0
  br i1 %.not1065, label %794, label %798

794:                                              ; preds = %792
  %795 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 1.000000e+00, i32 noundef 1)
  %796 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 2.000000e+00, i32 noundef 1)
  %797 = tail call i32 @set1d(ptr noundef nonnull @c, float noundef 5.000000e-01, i32 noundef 1)
  br label %.loopexit

798:                                              ; preds = %792
  %799 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05CMNDDJDG@vsumr?$AA@") #27
  %.not1066 = icmp eq i32 %799, 0
  br i1 %.not1066, label %800, label %802

800:                                              ; preds = %798
  %801 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 0.000000e+00, i32 noundef -1)
  br label %.loopexit

802:                                              ; preds = %798
  %803 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05NCEAFNKA@vdotr?$AA@") #27
  %.not1067 = icmp eq i32 %803, 0
  br i1 %.not1067, label %804, label %807

804:                                              ; preds = %802
  %805 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 0.000000e+00, i32 noundef -1)
  %806 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 0.000000e+00, i32 noundef -1)
  br label %.loopexit

807:                                              ; preds = %802
  %808 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @"??_C@_05NBAAOLGE@vbor?5?$AA@") #27
  %.not1068 = icmp eq i32 %808, 0
  br i1 %.not1068, label %809, label %.loopexit

809:                                              ; preds = %807
  %810 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 0.000000e+00, i32 noundef -1)
  %811 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 0.000000e+00, i32 noundef -1)
  %812 = tail call i32 @set1d(ptr noundef nonnull @c, float noundef 1.000000e+00, i32 noundef -1)
  %813 = tail call i32 @set1d(ptr noundef nonnull @d, float noundef 2.000000e+00, i32 noundef -1)
  %814 = tail call i32 @set1d(ptr noundef nonnull @e, float noundef 5.000000e-01, i32 noundef -1)
  %815 = tail call i32 @set2d(ptr noundef nonnull @aa, float noundef 0.000000e+00, i32 noundef -1)
  br label %.loopexit

.loopexit:                                        ; preds = %vector.body, %22, %35, %45, %56, %66, %76, %92, %105, %120, %131, %141, %158, %169, %179, %189, %203, %217, %228, %239, %253, %267, %282, %296, %308, %319, %334, %347, %363, %377, %393, %411, %425, %437, %447, %457, %465, %473, %482, %488, %496, %508, %517, %526, %540, %548, %558, %568, %578, %590, %604, %614, %624, %634, %648, %662, %673, %686, %699, %711, %724, %734, %747, %757, %767, %777, %788, %800, %809, %807, %804, %794, %783, %772, %762, %752, %741, %729, %717, %706, %693, %678, %667, %656, %639, %629, %619, %610, %598, %584, %573, %563, %553, %544, %532, %521, %512, %504, %492, %486, %478, %469, %461, %451, %442, %431, %419, %402, %384, %371, %355, %341, %325, %313, %303, %290, %275, %260, %245, %233, %223, %210, %195, %184, %174, %164, %149, %136, %125, %113, %99, %84, %71, %61, %52, %40, %30
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare dso_local i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s000() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05CDGOKACG@s000?5?$AA@")
  %2 = tail call i32 @clock() #27
  br label %vector.ph

vector.ph:                                        ; preds = %middle.block, %0
  %.0911 = phi i32 [ 0, %0 ], [ %16, %middle.block ]
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %3 = getelementptr inbounds nuw [4 x i8], ptr @Y, i64 %index
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %wide.load = load <4 x float>, ptr %3, align 16
  %wide.load14 = load <4 x float>, ptr %4, align 16
  %5 = fadd <4 x float> %wide.load, splat (float 1.000000e+00)
  %6 = fadd <4 x float> %wide.load14, splat (float 1.000000e+00)
  %7 = getelementptr inbounds nuw [4 x i8], ptr @X, i64 %index
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store <4 x float> %5, ptr %7, align 16
  store <4 x float> %6, ptr %8, align 16
  %index.next = or disjoint i64 %index, 8
  %9 = getelementptr inbounds nuw [4 x i8], ptr @Y, i64 %index.next
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %wide.load.1 = load <4 x float>, ptr %9, align 16
  %wide.load14.1 = load <4 x float>, ptr %10, align 16
  %11 = fadd <4 x float> %wide.load.1, splat (float 1.000000e+00)
  %12 = fadd <4 x float> %wide.load14.1, splat (float 1.000000e+00)
  %13 = getelementptr inbounds nuw [4 x i8], ptr @X, i64 %index.next
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 16
  store <4 x float> %11, ptr %13, align 16
  store <4 x float> %12, ptr %14, align 16
  %index.next.1 = add nuw nsw i64 %index, 16
  %15 = icmp eq i64 %index.next.1, 32000
  br i1 %15, label %middle.block, label %vector.body, !llvm.loop !44

middle.block:                                     ; preds = %vector.body
  %16 = add nuw nsw i32 %.0911, 1
  %exitcond13.not = icmp eq i32 %16, 512
  br i1 %exitcond13.not, label %17, label %vector.ph, !llvm.loop !45

17:                                               ; preds = %middle.block
  %18 = tail call i32 @clock() #27
  %19 = sub i32 %18, %2
  %20 = sitofp i32 %19 to double
  %21 = fdiv double %20, 1.000000e+06
  %22 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@DPAFHEGA@S000?7?5?$CF?42f?5?7?7?$AA@", double noundef %21) #27
  tail call void @check(i32 noundef 1)
  ret i32 0
}

declare dso_local i32 @clock() local_unnamed_addr #14

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @dummy(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readnone captures(none) %3, ptr nofree noundef readnone captures(none) %4, ptr nofree noundef readnone captures(none) %5, ptr nofree noundef readnone captures(none) %6, ptr nofree noundef readnone captures(none) %7, float noundef %8) local_unnamed_addr #15 {
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s111() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05KHHAIEME@s111?5?$AA@")
  %2 = tail call i32 @clock() #27
  br label %.preheader

.preheader:                                       ; preds = %0, %17
  %.01012 = phi i32 [ 0, %0 ], [ %18, %17 ]
  br label %3

3:                                                ; preds = %3, %.preheader
  %indvars.iv = phi i64 [ 1, %.preheader ], [ %indvars.iv.next.1, %3 ]
  %4 = getelementptr [4 x i8], ptr @a, i64 %indvars.iv
  %5 = getelementptr i8, ptr %4, i64 -4
  %6 = load float, ptr %5, align 4
  %7 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %indvars.iv
  %8 = load float, ptr %7, align 4
  %9 = fadd float %6, %8
  store float %9, ptr %4, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2
  %10 = getelementptr [4 x i8], ptr @a, i64 %indvars.iv.next
  %11 = getelementptr i8, ptr %10, i64 -4
  %12 = load float, ptr %11, align 4
  %13 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %indvars.iv.next
  %14 = load float, ptr %13, align 4
  %15 = fadd float %12, %14
  store float %15, ptr %10, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 4
  %16 = icmp samesign ult i64 %indvars.iv, 31996
  br i1 %16, label %3, label %17, !llvm.loop !46

17:                                               ; preds = %3
  %18 = add nuw nsw i32 %.01012, 1
  %exitcond.not = icmp eq i32 %18, 512
  br i1 %exitcond.not, label %19, label %.preheader, !llvm.loop !47

19:                                               ; preds = %17
  %20 = tail call i32 @clock() #27
  %21 = sub i32 %20, %2
  %22 = sitofp i32 %21 to double
  %23 = fdiv double %22, 1.000000e+06
  %24 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@LILIDOEK@S111?7?5?$CF?42f?5?7?7?$AA@", double noundef %23) #27
  tail call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s1111() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05KHHAIEME@s111?5?$AA@")
  %2 = tail call i32 @clock() #27
  br label %vector.ph

vector.ph:                                        ; preds = %middle.block, %0
  %.01820 = phi i32 [ 0, %0 ], [ %27, %middle.block ]
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %3 = getelementptr inbounds nuw [4 x i8], ptr @c, i64 %index
  %wide.load = load <4 x float>, ptr %3, align 16
  %4 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %index
  %wide.load23 = load <4 x float>, ptr %4, align 16
  %5 = getelementptr inbounds nuw [4 x i8], ptr @d, i64 %index
  %wide.load24 = load <4 x float>, ptr %5, align 16
  %6 = fmul <4 x float> %wide.load23, %wide.load24
  %7 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %wide.load23, <4 x float> %6)
  %8 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %wide.load, <4 x float> %7)
  %9 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load24, <4 x float> %wide.load23, <4 x float> %8)
  %10 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load24, <4 x float> %wide.load, <4 x float> %9)
  %11 = shl nuw nsw i64 %index, 3
  %12 = shl i64 %index, 3
  %13 = shl i64 %index, 3
  %14 = shl i64 %index, 3
  %15 = getelementptr inbounds nuw i8, ptr @a, i64 %11
  %16 = getelementptr inbounds nuw i8, ptr @a, i64 %12
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 8
  %18 = getelementptr inbounds nuw i8, ptr @a, i64 %13
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 16
  %20 = getelementptr inbounds nuw i8, ptr @a, i64 %14
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 24
  %22 = extractelement <4 x float> %10, i64 0
  store float %22, ptr %15, align 16
  %23 = extractelement <4 x float> %10, i64 1
  store float %23, ptr %17, align 8
  %24 = extractelement <4 x float> %10, i64 2
  store float %24, ptr %19, align 16
  %25 = extractelement <4 x float> %10, i64 3
  store float %25, ptr %21, align 8
  %index.next = add nuw i64 %index, 4
  %26 = icmp eq i64 %index.next, 16000
  br i1 %26, label %middle.block, label %vector.body, !llvm.loop !48

middle.block:                                     ; preds = %vector.body
  %27 = add nuw nsw i32 %.01820, 1
  %exitcond22.not = icmp eq i32 %27, 512
  br i1 %exitcond22.not, label %28, label %vector.ph, !llvm.loop !49

28:                                               ; preds = %middle.block
  %29 = tail call i32 @clock() #27
  %30 = sub i32 %29, %2
  %31 = sitofp i32 %30 to double
  %32 = fdiv double %31, 1.000000e+06
  %33 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0BA@DDHEPEEE@S1111?7?5?$CF?42f?5?7?7?5?$AA@", double noundef %32) #27
  tail call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #16

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s112() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05KFDGDKJN@s112?5?$AA@")
  %2 = tail call i32 @clock() #27
  %3 = load float, ptr getelementptr inbounds nuw (i8, ptr @b, i64 24), align 8
  %4 = load float, ptr getelementptr inbounds nuw (i8, ptr @b, i64 20), align 4
  %5 = load float, ptr getelementptr inbounds nuw (i8, ptr @b, i64 16), align 16
  %6 = load float, ptr getelementptr inbounds nuw (i8, ptr @b, i64 12), align 4
  %7 = load float, ptr getelementptr inbounds nuw (i8, ptr @b, i64 8), align 8
  %8 = load float, ptr getelementptr inbounds nuw (i8, ptr @b, i64 4), align 4
  %9 = load float, ptr @b, align 16
  br label %vector.ph

vector.ph:                                        ; preds = %scalar.ph, %0
  %.01012 = phi i32 [ 0, %0 ], [ %47, %scalar.ph ]
  br label %vector.body

vector.body:                                      ; preds = %vector.body.1, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body.1 ]
  %10 = sub nuw nsw i64 31998, %index
  %11 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %10
  %12 = getelementptr inbounds i8, ptr %11, i64 -12
  %13 = getelementptr inbounds i8, ptr %11, i64 -28
  %wide.load = load <4 x float>, ptr %12, align 4
  %wide.load14 = load <4 x float>, ptr %13, align 4
  %14 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %10
  %15 = getelementptr inbounds i8, ptr %14, i64 -12
  %16 = getelementptr inbounds i8, ptr %14, i64 -28
  %wide.load15 = load <4 x float>, ptr %15, align 4
  %wide.load16 = load <4 x float>, ptr %16, align 4
  %17 = fadd <4 x float> %wide.load, %wide.load15
  %18 = fadd <4 x float> %wide.load14, %wide.load16
  %19 = getelementptr inbounds i8, ptr %11, i64 -8
  %20 = getelementptr inbounds i8, ptr %11, i64 -24
  store <4 x float> %17, ptr %19, align 16
  store <4 x float> %18, ptr %20, align 16
  %21 = icmp eq i64 %index, 31984
  br i1 %21, label %scalar.ph, label %vector.body.1

vector.body.1:                                    ; preds = %vector.body
  %22 = sub nuw nsw i64 31990, %index
  %23 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %22
  %24 = getelementptr inbounds i8, ptr %23, i64 -12
  %25 = getelementptr inbounds i8, ptr %23, i64 -28
  %wide.load.1 = load <4 x float>, ptr %24, align 4
  %wide.load14.1 = load <4 x float>, ptr %25, align 4
  %26 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %22
  %27 = getelementptr inbounds i8, ptr %26, i64 -12
  %28 = getelementptr inbounds i8, ptr %26, i64 -28
  %wide.load15.1 = load <4 x float>, ptr %27, align 4
  %wide.load16.1 = load <4 x float>, ptr %28, align 4
  %29 = fadd <4 x float> %wide.load.1, %wide.load15.1
  %30 = fadd <4 x float> %wide.load14.1, %wide.load16.1
  %31 = getelementptr inbounds i8, ptr %23, i64 -8
  %32 = getelementptr inbounds i8, ptr %23, i64 -24
  store <4 x float> %29, ptr %31, align 16
  store <4 x float> %30, ptr %32, align 16
  %index.next.1 = add nuw nsw i64 %index, 16
  br label %vector.body

scalar.ph:                                        ; preds = %vector.body
  %33 = load float, ptr getelementptr inbounds nuw (i8, ptr @a, i64 24), align 8
  %34 = fadd float %33, %3
  store float %34, ptr getelementptr inbounds nuw (i8, ptr @a, i64 28), align 4
  %35 = load float, ptr getelementptr inbounds nuw (i8, ptr @a, i64 20), align 4
  %36 = fadd float %35, %4
  store float %36, ptr getelementptr inbounds nuw (i8, ptr @a, i64 24), align 8
  %37 = load float, ptr getelementptr inbounds nuw (i8, ptr @a, i64 16), align 16
  %38 = fadd float %37, %5
  store float %38, ptr getelementptr inbounds nuw (i8, ptr @a, i64 20), align 4
  %39 = load float, ptr getelementptr inbounds nuw (i8, ptr @a, i64 12), align 4
  %40 = fadd float %39, %6
  store float %40, ptr getelementptr inbounds nuw (i8, ptr @a, i64 16), align 16
  %41 = load float, ptr getelementptr inbounds nuw (i8, ptr @a, i64 8), align 8
  %42 = fadd float %41, %7
  store float %42, ptr getelementptr inbounds nuw (i8, ptr @a, i64 12), align 4
  %43 = load float, ptr getelementptr inbounds nuw (i8, ptr @a, i64 4), align 4
  %44 = fadd float %43, %8
  store float %44, ptr getelementptr inbounds nuw (i8, ptr @a, i64 8), align 8
  %45 = load float, ptr @a, align 16
  %46 = fadd float %45, %9
  store float %46, ptr getelementptr inbounds nuw (i8, ptr @a, i64 4), align 4
  %47 = add nuw nsw i32 %.01012, 1
  %exitcond.not = icmp eq i32 %47, 768
  br i1 %exitcond.not, label %48, label %vector.ph, !llvm.loop !50

48:                                               ; preds = %scalar.ph
  %49 = tail call i32 @clock() #27
  %50 = sub i32 %49, %2
  %51 = sitofp i32 %50 to double
  %52 = fdiv double %51, 1.000000e+06
  %53 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@CBFKFIEL@S112?7?5?$CF?42f?5?7?7?$AA@", double noundef %52) #27
  tail call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s1112() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05KFDGDKJN@s112?5?$AA@")
  %2 = tail call i32 @clock() #27
  br label %vector.ph

vector.ph:                                        ; preds = %middle.block, %0
  %.0911 = phi i32 [ 0, %0 ], [ %22, %middle.block ]
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %3 = sub nuw nsw i64 31999, %index
  %4 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %3
  %5 = getelementptr inbounds i8, ptr %4, i64 -12
  %6 = getelementptr inbounds i8, ptr %4, i64 -28
  %wide.load = load <4 x float>, ptr %5, align 16
  %wide.load13 = load <4 x float>, ptr %6, align 16
  %7 = fadd <4 x float> %wide.load, splat (float 1.000000e+00)
  %8 = fadd <4 x float> %wide.load13, splat (float 1.000000e+00)
  %9 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %3
  %10 = getelementptr inbounds i8, ptr %9, i64 -12
  %11 = getelementptr inbounds i8, ptr %9, i64 -28
  store <4 x float> %7, ptr %10, align 16
  store <4 x float> %8, ptr %11, align 16
  %12 = sub nuw nsw i64 31991, %index
  %13 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %12
  %14 = getelementptr inbounds i8, ptr %13, i64 -12
  %15 = getelementptr inbounds i8, ptr %13, i64 -28
  %wide.load.1 = load <4 x float>, ptr %14, align 16
  %wide.load13.1 = load <4 x float>, ptr %15, align 16
  %16 = fadd <4 x float> %wide.load.1, splat (float 1.000000e+00)
  %17 = fadd <4 x float> %wide.load13.1, splat (float 1.000000e+00)
  %18 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %12
  %19 = getelementptr inbounds i8, ptr %18, i64 -12
  %20 = getelementptr inbounds i8, ptr %18, i64 -28
  store <4 x float> %16, ptr %19, align 16
  store <4 x float> %17, ptr %20, align 16
  %index.next.1 = add nuw nsw i64 %index, 16
  %21 = icmp eq i64 %index.next.1, 32000
  br i1 %21, label %middle.block, label %vector.body, !llvm.loop !51

middle.block:                                     ; preds = %vector.body
  %22 = add nuw nsw i32 %.0911, 1
  %exitcond.not = icmp eq i32 %22, 768
  br i1 %exitcond.not, label %23, label %vector.ph, !llvm.loop !52

23:                                               ; preds = %middle.block
  %24 = tail call i32 @clock() #27
  %25 = sub i32 %24, %2
  %26 = sitofp i32 %25 to double
  %27 = fdiv double %26, 1.000000e+06
  %28 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0BA@EEOKCGLE@S1112?7?5?$CF?42f?5?7?7?5?$AA@", double noundef %27) #27
  tail call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s113() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05KEPEFAKK@s113?5?$AA@")
  %2 = tail call i32 @clock() #27
  %3 = load float, ptr @a, align 16
  %broadcast.splatinsert = insertelement <4 x float> poison, float %3, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %4 = load float, ptr getelementptr inbounds nuw (i8, ptr @b, i64 127972), align 4
  %5 = fadd float %3, %4
  %6 = load float, ptr getelementptr inbounds nuw (i8, ptr @b, i64 127976), align 8
  %7 = fadd float %3, %6
  %8 = load float, ptr getelementptr inbounds nuw (i8, ptr @b, i64 127980), align 4
  %9 = fadd float %3, %8
  %10 = load float, ptr getelementptr inbounds nuw (i8, ptr @b, i64 127984), align 16
  %11 = fadd float %3, %10
  %12 = load float, ptr getelementptr inbounds nuw (i8, ptr @b, i64 127988), align 4
  %13 = fadd float %3, %12
  %14 = load float, ptr getelementptr inbounds nuw (i8, ptr @b, i64 127992), align 8
  %15 = fadd float %3, %14
  %16 = load float, ptr getelementptr inbounds nuw (i8, ptr @b, i64 127996), align 4
  %17 = fadd float %3, %16
  br label %vector.ph

vector.ph:                                        ; preds = %scalar.ph, %0
  %.0911 = phi i32 [ 0, %0 ], [ %33, %scalar.ph ]
  br label %vector.body

vector.body:                                      ; preds = %vector.body.1, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body.1 ]
  %18 = or disjoint i64 %index, 1
  %19 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %18
  %20 = getelementptr inbounds nuw i8, ptr %19, i64 16
  %wide.load = load <4 x float>, ptr %19, align 4
  %wide.load14 = load <4 x float>, ptr %20, align 4
  %21 = fadd <4 x float> %broadcast.splat, %wide.load
  %22 = fadd <4 x float> %broadcast.splat, %wide.load14
  %23 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %18
  %24 = getelementptr inbounds nuw i8, ptr %23, i64 16
  store <4 x float> %21, ptr %23, align 4
  store <4 x float> %22, ptr %24, align 4
  %25 = icmp eq i64 %index, 31984
  br i1 %25, label %scalar.ph, label %vector.body.1

vector.body.1:                                    ; preds = %vector.body
  %26 = or disjoint i64 %index, 9
  %27 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %26
  %28 = getelementptr inbounds nuw i8, ptr %27, i64 16
  %wide.load.1 = load <4 x float>, ptr %27, align 4
  %wide.load14.1 = load <4 x float>, ptr %28, align 4
  %29 = fadd <4 x float> %broadcast.splat, %wide.load.1
  %30 = fadd <4 x float> %broadcast.splat, %wide.load14.1
  %31 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %26
  %32 = getelementptr inbounds nuw i8, ptr %31, i64 16
  store <4 x float> %29, ptr %31, align 4
  store <4 x float> %30, ptr %32, align 4
  %index.next.1 = add nuw nsw i64 %index, 16
  br label %vector.body

scalar.ph:                                        ; preds = %vector.body
  store float %5, ptr getelementptr inbounds nuw (i8, ptr @a, i64 127972), align 4
  store float %7, ptr getelementptr inbounds nuw (i8, ptr @a, i64 127976), align 8
  store float %9, ptr getelementptr inbounds nuw (i8, ptr @a, i64 127980), align 4
  store float %11, ptr getelementptr inbounds nuw (i8, ptr @a, i64 127984), align 16
  store float %13, ptr getelementptr inbounds nuw (i8, ptr @a, i64 127988), align 4
  store float %15, ptr getelementptr inbounds nuw (i8, ptr @a, i64 127992), align 8
  store float %17, ptr getelementptr inbounds nuw (i8, ptr @a, i64 127996), align 4
  %33 = add nuw nsw i32 %.0911, 1
  %exitcond13.not = icmp eq i32 %33, 1024
  br i1 %exitcond13.not, label %34, label %vector.ph, !llvm.loop !53

34:                                               ; preds = %scalar.ph
  %35 = tail call i32 @clock() #27
  %36 = sub i32 %35, %2
  %37 = sitofp i32 %36 to double
  %38 = fdiv double %37, 1.000000e+06
  %39 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@OANEIHIL@S113?7?5?$CF?42f?5?7?7?$AA@", double noundef %38) #27
  tail call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s1113() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05KEPEFAKK@s113?5?$AA@")
  %2 = tail call i32 @clock() #27
  br label %.preheader

.preheader:                                       ; preds = %0, %14
  %.0911 = phi i32 [ 0, %0 ], [ %15, %14 ]
  br label %3

3:                                                ; preds = %3, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %3 ]
  %4 = load float, ptr getelementptr inbounds nuw (i8, ptr @a, i64 64000), align 16
  %5 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %indvars.iv
  %6 = load float, ptr %5, align 8
  %7 = fadd float %4, %6
  %8 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv
  store float %7, ptr %8, align 8
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %9 = load float, ptr getelementptr inbounds nuw (i8, ptr @a, i64 64000), align 16
  %10 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %indvars.iv.next
  %11 = load float, ptr %10, align 4
  %12 = fadd float %9, %11
  %13 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv.next
  store float %12, ptr %13, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 32000
  br i1 %exitcond.not.1, label %14, label %3, !llvm.loop !54

14:                                               ; preds = %3
  %15 = add nuw nsw i32 %.0911, 1
  %exitcond13.not = icmp eq i32 %15, 512
  br i1 %exitcond13.not, label %16, label %.preheader, !llvm.loop !55

16:                                               ; preds = %14
  %17 = tail call i32 @clock() #27
  %18 = sub i32 %17, %2
  %19 = sitofp i32 %18 to double
  %20 = fdiv double %19, 1.000000e+06
  %21 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0P@BEOLDIGE@S1113?7?5?$CF?42f?5?7?7?$AA@", double noundef %20) #27
  tail call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s114() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05KBLLEGCP@s114?5?$AA@")
  %2 = tail call i32 @clock() #27
  br label %.preheader18

.preheader18:                                     ; preds = %0, %22
  %.01721 = phi i32 [ 0, %0 ], [ %23, %22 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader18, %._crit_edge
  %indvars.iv23 = phi i64 [ 0, %.preheader18 ], [ %indvars.iv.next24, %._crit_edge ]
  %.not = icmp eq i64 %indvars.iv23, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr @aa, i64 %indvars.iv23
  %3 = getelementptr inbounds nuw [1024 x i8], ptr @bb, i64 %indvars.iv23
  %4 = getelementptr inbounds nuw [1024 x i8], ptr @aa, i64 %indvars.iv23
  %xtraiter = and i64 %indvars.iv23, 1
  %5 = icmp eq i64 %indvars.iv23, 1
  br i1 %5, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %indvars.iv23, 9223372036854775806
  br label %6

6:                                                ; preds = %6, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %6 ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %6 ]
  %gep = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep, i64 %indvars.iv
  %7 = load float, ptr %gep, align 4
  %8 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %9 = load float, ptr %8, align 8
  %10 = fadd float %7, %9
  %11 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  store float %10, ptr %11, align 8
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %gep.1 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %12 = load float, ptr %gep.1, align 4
  %13 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next
  %14 = load float, ptr %13, align 4
  %15 = fadd float %12, %14
  %16 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next
  store float %15, ptr %16, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %6, !llvm.loop !56

._crit_edge.loopexit.unr-lcssa:                   ; preds = %6
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod28 = trunc i64 %indvars.iv23 to i1
  tail call void @llvm.assume(i1 %lcmp.mod28)
  %gep.epil = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep, i64 %indvars.iv.epil.init
  %17 = load float, ptr %gep.epil, align 4
  %18 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.epil.init
  %19 = load float, ptr %18, align 4
  %20 = fadd float %17, %19
  %21 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.epil.init
  store float %20, ptr %21, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  %exitcond26.not = icmp eq i64 %indvars.iv.next24, 256
  br i1 %exitcond26.not, label %22, label %.preheader, !llvm.loop !57

22:                                               ; preds = %._crit_edge
  %23 = add nuw nsw i32 %.01721, 1
  %exitcond27.not = icmp eq i32 %23, 200
  br i1 %exitcond27.not, label %24, label %.preheader18, !llvm.loop !58

24:                                               ; preds = %22
  %25 = tail call i32 @clock() #27
  %26 = sub i32 %25, %2
  %27 = sitofp i32 %26 to double
  %28 = fdiv double %27, 1.000000e+06
  %29 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@MJOPJCAI@S114?7?5?$CF?42f?5?7?7?$AA@", double noundef %28) #27
  tail call void @check(i32 noundef 11)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s115() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05KAHJCMBI@s115?5?$AA@")
  %2 = tail call i32 @clock() #27
  br label %.preheader

.preheader:                                       ; preds = %0, %27
  %.01518 = phi i32 [ 0, %0 ], [ %28, %27 ]
  br label %3

.loopexit:                                        ; preds = %scalar.ph, %middle.block, %3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond25.not = icmp eq i64 %indvars.iv.next23, 256
  br i1 %exitcond25.not, label %27, label %3, !llvm.loop !59

3:                                                ; preds = %.preheader, %.loopexit
  %indvars.iv22 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next23, %.loopexit ]
  %indvars.iv = phi i64 [ 1, %.preheader ], [ %indvars.iv.next, %.loopexit ]
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  %4 = icmp samesign ult i64 %indvars.iv22, 255
  br i1 %4, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %3
  %5 = getelementptr inbounds nuw [1024 x i8], ptr @aa, i64 %indvars.iv22
  %6 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv22
  %7 = sub nuw nsw i64 255, %indvars.iv22
  %min.iters.check = icmp samesign ugt i64 %indvars.iv22, 247
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %7, 248
  %8 = add nuw i64 %indvars.iv, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %9 = add nuw i64 %indvars.iv, %index
  %10 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %9
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %wide.load = load <4 x float>, ptr %10, align 4
  %wide.load27 = load <4 x float>, ptr %11, align 4
  %12 = load float, ptr %6, align 4
  %broadcast.splatinsert = insertelement <4 x float> poison, float %12, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %13 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %9
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %wide.load28 = load <4 x float>, ptr %13, align 4
  %wide.load29 = load <4 x float>, ptr %14, align 4
  %15 = fneg <4 x float> %wide.load
  %16 = fneg <4 x float> %wide.load27
  %17 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %15, <4 x float> %broadcast.splat, <4 x float> %wide.load28)
  %18 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %16, <4 x float> %broadcast.splat, <4 x float> %wide.load29)
  store <4 x float> %17, ptr %13, align 4
  store <4 x float> %18, ptr %14, align 4
  %index.next = add nuw i64 %index, 8
  %19 = icmp eq i64 %index.next, %n.vec
  br i1 %19, label %middle.block, label %vector.body, !llvm.loop !60

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %7, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv19.ph = phi i64 [ %indvars.iv, %.lr.ph ], [ %8, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv19 = phi i64 [ %indvars.iv.next20, %scalar.ph ], [ %indvars.iv19.ph, %scalar.ph.preheader ]
  %20 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv19
  %21 = load float, ptr %20, align 4
  %22 = load float, ptr %6, align 4
  %23 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv19
  %24 = load float, ptr %23, align 4
  %25 = fneg float %21
  %26 = tail call float @llvm.fmuladd.f32(float %25, float %22, float %24)
  store float %26, ptr %23, align 4
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next20, 256
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !61

27:                                               ; preds = %.loopexit
  %28 = add nuw nsw i32 %.01518, 1
  %exitcond26.not = icmp eq i32 %28, 1000
  br i1 %exitcond26.not, label %29, label %.preheader, !llvm.loop !63

29:                                               ; preds = %27
  %30 = tail call i32 @clock() #27
  %31 = sub i32 %30, %2
  %32 = sitofp i32 %31 to double
  %33 = fdiv double %32, 1.000000e+06
  %34 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@IGBENMI@S115?7?5?$CF?42f?5?7?7?$AA@", double noundef %33) #27
  tail call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s1115() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05KAHJCMBI@s115?5?$AA@")
  %2 = tail call i32 @clock() #27
  br label %.preheader19

.preheader19:                                     ; preds = %0, %43
  %.01822 = phi i32 [ 0, %0 ], [ %44, %43 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader19, %middle.block
  %indvars.iv24 = phi i64 [ 0, %.preheader19 ], [ %indvars.iv.next25, %middle.block ]
  %3 = getelementptr inbounds nuw [1024 x i8], ptr @aa, i64 %indvars.iv24
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr @cc, i64 %indvars.iv24
  %4 = getelementptr inbounds nuw [1024 x i8], ptr @bb, i64 %indvars.iv24
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.preheader
  %index = phi i64 [ 0, %.preheader ], [ %index.next, %vector.body ]
  %5 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %wide.load = load <4 x float>, ptr %5, align 16
  %wide.load29 = load <4 x float>, ptr %6, align 16
  %7 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep, i64 %index
  %8 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep, i64 %index
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 1024
  %10 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep, i64 %index
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 2048
  %12 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep, i64 %index
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 3072
  %14 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep, i64 %index
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 4096
  %16 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep, i64 %index
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 5120
  %18 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep, i64 %index
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 6144
  %20 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep, i64 %index
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 7168
  %22 = load float, ptr %7, align 4
  %23 = load float, ptr %9, align 4
  %24 = load float, ptr %11, align 4
  %25 = load float, ptr %13, align 4
  %26 = insertelement <4 x float> poison, float %22, i64 0
  %27 = insertelement <4 x float> %26, float %23, i64 1
  %28 = insertelement <4 x float> %27, float %24, i64 2
  %29 = insertelement <4 x float> %28, float %25, i64 3
  %30 = load float, ptr %15, align 4
  %31 = load float, ptr %17, align 4
  %32 = load float, ptr %19, align 4
  %33 = load float, ptr %21, align 4
  %34 = insertelement <4 x float> poison, float %30, i64 0
  %35 = insertelement <4 x float> %34, float %31, i64 1
  %36 = insertelement <4 x float> %35, float %32, i64 2
  %37 = insertelement <4 x float> %36, float %33, i64 3
  %38 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index
  %39 = getelementptr inbounds nuw i8, ptr %38, i64 16
  %wide.load30 = load <4 x float>, ptr %38, align 16
  %wide.load31 = load <4 x float>, ptr %39, align 16
  %40 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %29, <4 x float> %wide.load30)
  %41 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load29, <4 x float> %37, <4 x float> %wide.load31)
  store <4 x float> %40, ptr %5, align 16
  store <4 x float> %41, ptr %6, align 16
  %index.next = add nuw i64 %index, 8
  %42 = icmp eq i64 %index.next, 256
  br i1 %42, label %middle.block, label %vector.body, !llvm.loop !64

middle.block:                                     ; preds = %vector.body
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1
  %exitcond27.not = icmp eq i64 %indvars.iv.next25, 256
  br i1 %exitcond27.not, label %43, label %.preheader, !llvm.loop !65

43:                                               ; preds = %middle.block
  %44 = add nuw nsw i32 %.01822, 1
  %exitcond28.not = icmp eq i32 %44, 100
  br i1 %exitcond28.not, label %45, label %.preheader19, !llvm.loop !66

45:                                               ; preds = %43
  %46 = tail call i32 @clock() #27
  %47 = sub i32 %46, %2
  %48 = sitofp i32 %47 to double
  %49 = fdiv double %48, 1.000000e+06
  %50 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0P@PMFOPCCH@S1115?7?5?$CF?42f?5?7?7?$AA@", double noundef %49) #27
  tail call void @check(i32 noundef 11)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s116() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05KCDPJCEB@s116?5?$AA@")
  %2 = tail call i32 @clock() #27
  br label %.preheader

.preheader:                                       ; preds = %0, %29
  %.02224 = phi i32 [ 0, %0 ], [ %30, %29 ]
  %.pre = load float, ptr @a, align 16
  br label %3

3:                                                ; preds = %17, %.preheader
  %4 = phi float [ %.pre, %.preheader ], [ %27, %17 ]
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %17 ]
  %5 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 4
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %8 = load float, ptr %7, align 8
  %9 = load <4 x float>, ptr %6, align 4
  %10 = insertelement <4 x float> poison, float %4, i64 0
  %11 = shufflevector <4 x float> %10, <4 x float> %9, <4 x i32> <i32 0, i32 4, i32 5, i32 6>
  %12 = fmul <4 x float> %9, %11
  store <4 x float> %12, ptr %5, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 5
  %13 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv.next
  %14 = load float, ptr %13, align 4
  %15 = fmul float %8, %14
  store float %15, ptr %7, align 8
  %16 = icmp samesign ult i64 %indvars.iv, 31990
  br i1 %16, label %17, label %29

17:                                               ; preds = %3
  %18 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv.next
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 4
  %20 = getelementptr inbounds nuw i8, ptr %18, i64 16
  %21 = load float, ptr %20, align 4
  %22 = load <4 x float>, ptr %19, align 8
  %23 = insertelement <4 x float> poison, float %14, i64 0
  %24 = shufflevector <4 x float> %23, <4 x float> %22, <4 x i32> <i32 0, i32 4, i32 5, i32 6>
  %25 = fmul <4 x float> %22, %24
  store <4 x float> %25, ptr %18, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 10
  %26 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv.next.1
  %27 = load float, ptr %26, align 8
  %28 = fmul float %21, %27
  store float %28, ptr %20, align 4
  br label %3

29:                                               ; preds = %3
  %30 = add nuw nsw i32 %.02224, 1
  %exitcond.not = icmp eq i32 %30, 2560
  br i1 %exitcond.not, label %31, label %.preheader, !llvm.loop !67

31:                                               ; preds = %29
  %32 = tail call i32 @clock() #27
  %33 = sub i32 %32, %2
  %34 = sitofp i32 %33 to double
  %35 = fdiv double %34, 1.000000e+06
  %36 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@JBIDCLMJ@S116?7?5?$CF?42f?5?7?7?$AA@", double noundef %35) #27
  tail call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s118() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05KIKBLPEL@s118?5?$AA@")
  %2 = tail call i32 @clock() #27
  br label %.preheader17

.preheader17:                                     ; preds = %0, %25
  %.01620 = phi i32 [ 0, %0 ], [ %26, %25 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader17, %24
  %indvar = phi i64 [ 0, %.preheader17 ], [ %indvar.next, %24 ]
  %indvars.iv22 = phi i64 [ 1, %.preheader17 ], [ %indvars.iv.next23, %24 ]
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr @bb, i64 %indvars.iv22
  %3 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv22
  %.promoted = load float, ptr %3, align 4
  %4 = getelementptr [4 x i8], ptr @a, i64 %indvars.iv22
  %xtraiter = and i64 %indvars.iv22, 1
  %5 = icmp eq i64 %indvar, 0
  br i1 %5, label %.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader
  %unroll_iter = and i64 %indvars.iv22, 9223372036854775806
  br label %6

6:                                                ; preds = %6, %.preheader.new
  %indvars.iv = phi i64 [ 0, %.preheader.new ], [ %indvars.iv.next.1, %6 ]
  %7 = phi float [ %.promoted, %.preheader.new ], [ %18, %6 ]
  %niter = phi i64 [ 0, %.preheader.new ], [ %niter.next.1, %6 ]
  %gep = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep, i64 %indvars.iv
  %8 = load float, ptr %gep, align 4
  %9 = xor i64 %indvars.iv, -1
  %10 = getelementptr [4 x i8], ptr %4, i64 %9
  %11 = load float, ptr %10, align 4
  %12 = tail call float @llvm.fmuladd.f32(float %8, float %11, float %7)
  %13 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep, i64 %indvars.iv
  %gep.1 = getelementptr inbounds nuw i8, ptr %13, i64 1024
  %14 = load float, ptr %gep.1, align 4
  %15 = xor i64 %indvars.iv, -2
  %16 = getelementptr [4 x i8], ptr %4, i64 %15
  %17 = load float, ptr %16, align 4
  %18 = tail call float @llvm.fmuladd.f32(float %14, float %17, float %12)
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %6, !llvm.loop !68

.unr-lcssa:                                       ; preds = %6
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %24, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %.unr-lcssa ]
  %.epil.init = phi float [ %.promoted, %.preheader ], [ %18, %.unr-lcssa ]
  %lcmp.mod28 = trunc i64 %indvars.iv22 to i1
  tail call void @llvm.assume(i1 %lcmp.mod28)
  %gep.epil = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep, i64 %indvars.iv.epil.init
  %19 = load float, ptr %gep.epil, align 4
  %20 = xor i64 %indvars.iv.epil.init, -1
  %21 = getelementptr [4 x i8], ptr %4, i64 %20
  %22 = load float, ptr %21, align 4
  %23 = tail call float @llvm.fmuladd.f32(float %19, float %22, float %.epil.init)
  br label %24

24:                                               ; preds = %.unr-lcssa, %.epil.preheader
  %.lcssa = phi float [ %18, %.unr-lcssa ], [ %23, %.epil.preheader ]
  store float %.lcssa, ptr %3, align 4
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  %exitcond25.not = icmp eq i64 %indvars.iv.next23, 256
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond25.not, label %25, label %.preheader, !llvm.loop !69

25:                                               ; preds = %24
  %26 = add nuw nsw i32 %.01620, 1
  %exitcond26.not = icmp eq i32 %26, 200
  br i1 %exitcond26.not, label %27, label %.preheader17, !llvm.loop !70

27:                                               ; preds = %25
  %28 = tail call i32 @clock() #27
  %29 = sub i32 %28, %2
  %30 = sitofp i32 %29 to double
  %31 = fdiv double %30, 1.000000e+06
  %32 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@MDPFAAMP@S118?7?5?$CF?42f?5?7?7?$AA@", double noundef %31) #27
  tail call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s119() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05KJGDNFHM@s119?5?$AA@")
  %2 = tail call i32 @clock() #27
  br label %.preheader17

.preheader17:                                     ; preds = %0, %66
  %.01620 = phi i32 [ 0, %0 ], [ %67, %66 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader17, %scalar.ph
  %indvars.iv22 = phi i64 [ 1, %.preheader17 ], [ %indvars.iv.next23, %scalar.ph ]
  %3 = getelementptr [1024 x i8], ptr @aa, i64 %indvars.iv22
  %4 = getelementptr inbounds nuw [1024 x i8], ptr @bb, i64 %indvars.iv22
  br label %vector.body

vector.body:                                      ; preds = %vector.body.1, %.preheader
  %index = phi i64 [ 0, %.preheader ], [ %index.next.1, %vector.body.1 ]
  %5 = or disjoint i64 %index, 1
  %6 = getelementptr [4 x i8], ptr %3, i64 %5
  %7 = getelementptr i8, ptr %6, i64 -1028
  %8 = getelementptr i8, ptr %6, i64 -1012
  %wide.load = load <4 x float>, ptr %7, align 16
  %wide.load27 = load <4 x float>, ptr %8, align 16
  %9 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %5
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %wide.load28 = load <4 x float>, ptr %9, align 4
  %wide.load29 = load <4 x float>, ptr %10, align 4
  %11 = fadd <4 x float> %wide.load, %wide.load28
  %12 = fadd <4 x float> %wide.load27, %wide.load29
  %13 = getelementptr i8, ptr %6, i64 16
  store <4 x float> %11, ptr %6, align 4
  store <4 x float> %12, ptr %13, align 4
  %14 = icmp eq i64 %index, 240
  br i1 %14, label %scalar.ph, label %vector.body.1

vector.body.1:                                    ; preds = %vector.body
  %15 = or disjoint i64 %index, 9
  %16 = getelementptr [4 x i8], ptr %3, i64 %15
  %17 = getelementptr i8, ptr %16, i64 -1028
  %18 = getelementptr i8, ptr %16, i64 -1012
  %wide.load.1 = load <4 x float>, ptr %17, align 16
  %wide.load27.1 = load <4 x float>, ptr %18, align 16
  %19 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %15
  %20 = getelementptr inbounds nuw i8, ptr %19, i64 16
  %wide.load28.1 = load <4 x float>, ptr %19, align 4
  %wide.load29.1 = load <4 x float>, ptr %20, align 4
  %21 = fadd <4 x float> %wide.load.1, %wide.load28.1
  %22 = fadd <4 x float> %wide.load27.1, %wide.load29.1
  %23 = getelementptr i8, ptr %16, i64 16
  store <4 x float> %21, ptr %16, align 4
  store <4 x float> %22, ptr %23, align 4
  %index.next.1 = add nuw nsw i64 %index, 16
  br label %vector.body

scalar.ph:                                        ; preds = %vector.body
  %24 = getelementptr i8, ptr %3, i64 996
  %25 = getelementptr i8, ptr %3, i64 -32
  %26 = load float, ptr %25, align 16
  %27 = getelementptr inbounds nuw i8, ptr %4, i64 996
  %28 = load float, ptr %27, align 4
  %29 = fadd float %26, %28
  store float %29, ptr %24, align 4
  %30 = getelementptr i8, ptr %3, i64 1000
  %31 = getelementptr i8, ptr %3, i64 -28
  %32 = load float, ptr %31, align 4
  %33 = getelementptr inbounds nuw i8, ptr %4, i64 1000
  %34 = load float, ptr %33, align 8
  %35 = fadd float %32, %34
  store float %35, ptr %30, align 8
  %36 = getelementptr i8, ptr %3, i64 1004
  %37 = getelementptr i8, ptr %3, i64 -24
  %38 = load float, ptr %37, align 8
  %39 = getelementptr inbounds nuw i8, ptr %4, i64 1004
  %40 = load float, ptr %39, align 4
  %41 = fadd float %38, %40
  store float %41, ptr %36, align 4
  %42 = getelementptr i8, ptr %3, i64 1008
  %43 = getelementptr i8, ptr %3, i64 -20
  %44 = load float, ptr %43, align 4
  %45 = getelementptr inbounds nuw i8, ptr %4, i64 1008
  %46 = load float, ptr %45, align 16
  %47 = fadd float %44, %46
  store float %47, ptr %42, align 16
  %48 = getelementptr i8, ptr %3, i64 1012
  %49 = getelementptr i8, ptr %3, i64 -16
  %50 = load float, ptr %49, align 16
  %51 = getelementptr inbounds nuw i8, ptr %4, i64 1012
  %52 = load float, ptr %51, align 4
  %53 = fadd float %50, %52
  store float %53, ptr %48, align 4
  %54 = getelementptr i8, ptr %3, i64 1016
  %55 = getelementptr i8, ptr %3, i64 -12
  %56 = load float, ptr %55, align 4
  %57 = getelementptr inbounds nuw i8, ptr %4, i64 1016
  %58 = load float, ptr %57, align 8
  %59 = fadd float %56, %58
  store float %59, ptr %54, align 8
  %60 = getelementptr i8, ptr %3, i64 1020
  %61 = getelementptr i8, ptr %3, i64 -8
  %62 = load float, ptr %61, align 8
  %63 = getelementptr inbounds nuw i8, ptr %4, i64 1020
  %64 = load float, ptr %63, align 4
  %65 = fadd float %62, %64
  store float %65, ptr %60, align 4
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  %exitcond25.not = icmp eq i64 %indvars.iv.next23, 256
  br i1 %exitcond25.not, label %66, label %.preheader, !llvm.loop !71

66:                                               ; preds = %scalar.ph
  %67 = add nuw nsw i32 %.01620, 1
  %exitcond26.not = icmp eq i32 %67, 200
  br i1 %exitcond26.not, label %68, label %.preheader17, !llvm.loop !72

68:                                               ; preds = %66
  %69 = tail call i32 @clock() #27
  %70 = sub i32 %69, %2
  %71 = sitofp i32 %70 to double
  %72 = fdiv double %71, 1.000000e+06
  %73 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0P@FDJECOM@S119?7?5?$CF?42f?5?7?7?5?$AA@", double noundef %72) #27
  tail call void @check(i32 noundef 11)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s1119() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05KJGDNFHM@s119?5?$AA@")
  %2 = tail call i32 @clock() #27
  br label %.preheader17

.preheader17:                                     ; preds = %0, %23
  %.01620 = phi i32 [ 0, %0 ], [ %24, %23 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader17, %middle.block
  %indvars.iv22 = phi i64 [ 1, %.preheader17 ], [ %indvars.iv.next23, %middle.block ]
  %3 = getelementptr [1024 x i8], ptr @aa, i64 %indvars.iv22
  %4 = getelementptr i8, ptr %3, i64 -1024
  %5 = getelementptr inbounds nuw [1024 x i8], ptr @bb, i64 %indvars.iv22
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.preheader
  %index = phi i64 [ 0, %.preheader ], [ %index.next.1, %vector.body ]
  %6 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %wide.load = load <4 x float>, ptr %6, align 16
  %wide.load27 = load <4 x float>, ptr %7, align 16
  %8 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %index
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %wide.load28 = load <4 x float>, ptr %8, align 16
  %wide.load29 = load <4 x float>, ptr %9, align 16
  %10 = fadd <4 x float> %wide.load, %wide.load28
  %11 = fadd <4 x float> %wide.load27, %wide.load29
  %12 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 16
  store <4 x float> %10, ptr %12, align 16
  store <4 x float> %11, ptr %13, align 16
  %index.next = or disjoint i64 %index, 8
  %14 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index.next
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %wide.load.1 = load <4 x float>, ptr %14, align 16
  %wide.load27.1 = load <4 x float>, ptr %15, align 16
  %16 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %index.next
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 16
  %wide.load28.1 = load <4 x float>, ptr %16, align 16
  %wide.load29.1 = load <4 x float>, ptr %17, align 16
  %18 = fadd <4 x float> %wide.load.1, %wide.load28.1
  %19 = fadd <4 x float> %wide.load27.1, %wide.load29.1
  %20 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index.next
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 16
  store <4 x float> %18, ptr %20, align 16
  store <4 x float> %19, ptr %21, align 16
  %index.next.1 = add nuw nsw i64 %index, 16
  %22 = icmp eq i64 %index.next.1, 256
  br i1 %22, label %middle.block, label %vector.body, !llvm.loop !73

middle.block:                                     ; preds = %vector.body
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  %exitcond25.not = icmp eq i64 %indvars.iv.next23, 256
  br i1 %exitcond25.not, label %23, label %.preheader, !llvm.loop !74

23:                                               ; preds = %middle.block
  %24 = add nuw nsw i32 %.01620, 1
  %exitcond26.not = icmp eq i32 %24, 200
  br i1 %exitcond26.not, label %25, label %.preheader17, !llvm.loop !75

25:                                               ; preds = %23
  %26 = tail call i32 @clock() #27
  %27 = sub i32 %26, %2
  %28 = sitofp i32 %27 to double
  %29 = fdiv double %28, 1.000000e+06
  %30 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0BA@DFHIICLK@S1119?7?5?$CF?42f?5?7?7?5?$AA@", double noundef %29) #27
  tail call void @check(i32 noundef 11)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s121() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05LFMFCLCK@s121?5?$AA@")
  %2 = tail call i32 @clock() #27
  %3 = load float, ptr getelementptr inbounds nuw (i8, ptr @b, i64 127968), align 16
  %4 = load float, ptr getelementptr inbounds nuw (i8, ptr @b, i64 127972), align 4
  %5 = load float, ptr getelementptr inbounds nuw (i8, ptr @b, i64 127976), align 8
  %6 = load float, ptr getelementptr inbounds nuw (i8, ptr @b, i64 127980), align 4
  %7 = load float, ptr getelementptr inbounds nuw (i8, ptr @b, i64 127984), align 16
  %8 = load float, ptr getelementptr inbounds nuw (i8, ptr @b, i64 127988), align 4
  %9 = load float, ptr getelementptr inbounds nuw (i8, ptr @b, i64 127992), align 8
  br label %vector.ph

vector.ph:                                        ; preds = %scalar.ph, %0
  %.01113 = phi i32 [ 0, %0 ], [ %43, %scalar.ph ]
  br label %vector.body

vector.body:                                      ; preds = %vector.body.1, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body.1 ]
  %10 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %index
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 4
  %12 = getelementptr inbounds nuw i8, ptr %10, i64 20
  %wide.load = load <4 x float>, ptr %11, align 4
  %wide.load16 = load <4 x float>, ptr %12, align 4
  %13 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %index
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %wide.load17 = load <4 x float>, ptr %13, align 16
  %wide.load18 = load <4 x float>, ptr %14, align 16
  %15 = fadd <4 x float> %wide.load, %wide.load17
  %16 = fadd <4 x float> %wide.load16, %wide.load18
  %17 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %index
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 16
  store <4 x float> %15, ptr %17, align 16
  store <4 x float> %16, ptr %18, align 16
  %19 = icmp eq i64 %index, 31984
  br i1 %19, label %scalar.ph, label %vector.body.1

vector.body.1:                                    ; preds = %vector.body
  %index.next = or disjoint i64 %index, 8
  %20 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %index.next
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 4
  %22 = getelementptr inbounds nuw i8, ptr %20, i64 20
  %wide.load.1 = load <4 x float>, ptr %21, align 4
  %wide.load16.1 = load <4 x float>, ptr %22, align 4
  %23 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %index.next
  %24 = getelementptr inbounds nuw i8, ptr %23, i64 16
  %wide.load17.1 = load <4 x float>, ptr %23, align 16
  %wide.load18.1 = load <4 x float>, ptr %24, align 16
  %25 = fadd <4 x float> %wide.load.1, %wide.load17.1
  %26 = fadd <4 x float> %wide.load16.1, %wide.load18.1
  %27 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %index.next
  %28 = getelementptr inbounds nuw i8, ptr %27, i64 16
  store <4 x float> %25, ptr %27, align 16
  store <4 x float> %26, ptr %28, align 16
  %index.next.1 = add nuw nsw i64 %index, 16
  br label %vector.body

scalar.ph:                                        ; preds = %vector.body
  %29 = load float, ptr getelementptr inbounds nuw (i8, ptr @a, i64 127972), align 4
  %30 = fadd float %29, %3
  store float %30, ptr getelementptr inbounds nuw (i8, ptr @a, i64 127968), align 16
  %31 = load float, ptr getelementptr inbounds nuw (i8, ptr @a, i64 127976), align 8
  %32 = fadd float %31, %4
  store float %32, ptr getelementptr inbounds nuw (i8, ptr @a, i64 127972), align 4
  %33 = load float, ptr getelementptr inbounds nuw (i8, ptr @a, i64 127980), align 4
  %34 = fadd float %33, %5
  store float %34, ptr getelementptr inbounds nuw (i8, ptr @a, i64 127976), align 8
  %35 = load float, ptr getelementptr inbounds nuw (i8, ptr @a, i64 127984), align 16
  %36 = fadd float %35, %6
  store float %36, ptr getelementptr inbounds nuw (i8, ptr @a, i64 127980), align 4
  %37 = load float, ptr getelementptr inbounds nuw (i8, ptr @a, i64 127988), align 4
  %38 = fadd float %37, %7
  store float %38, ptr getelementptr inbounds nuw (i8, ptr @a, i64 127984), align 16
  %39 = load float, ptr getelementptr inbounds nuw (i8, ptr @a, i64 127992), align 8
  %40 = fadd float %39, %8
  store float %40, ptr getelementptr inbounds nuw (i8, ptr @a, i64 127988), align 4
  %41 = load float, ptr getelementptr inbounds nuw (i8, ptr @a, i64 127996), align 4
  %42 = fadd float %41, %9
  store float %42, ptr getelementptr inbounds nuw (i8, ptr @a, i64 127992), align 8
  %43 = add nuw nsw i32 %.01113, 1
  %exitcond15.not = icmp eq i32 %43, 768
  br i1 %exitcond15.not, label %44, label %vector.ph, !llvm.loop !76

44:                                               ; preds = %scalar.ph
  %45 = tail call i32 @clock() #27
  %46 = sub i32 %45, %2
  %47 = sitofp i32 %46 to double
  %48 = fdiv double %47, 1.000000e+06
  %49 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@MPCGOMLK@S121?7?5?$CF?42f?5?7?7?$AA@", double noundef %48) #27
  tail call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s122(i32 noundef %0, i32 noundef %1) local_unnamed_addr #11 {
  %3 = tail call i32 @init(ptr noundef nonnull @"??_C@_05LHIDJFHD@s122?5?$AA@")
  %4 = tail call i32 @clock() #27
  %5 = add i32 %0, -1
  %6 = icmp slt i32 %5, 32000
  br i1 %6, label %.lr.ph, label %.split18

.lr.ph:                                           ; preds = %2, %._crit_edge
  %.01317 = phi i32 [ %19, %._crit_edge ], [ 0, %2 ]
  br label %7

7:                                                ; preds = %.lr.ph, %7
  %.016 = phi i32 [ %5, %.lr.ph ], [ %17, %7 ]
  %.01415 = phi i32 [ 0, %.lr.ph ], [ %8, %7 ]
  %8 = add i32 %.01415, 1
  %9 = sub i32 31999, %.01415
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [4 x i8], ptr @b, i64 %10
  %12 = load float, ptr %11, align 4
  %13 = sext i32 %.016 to i64
  %14 = getelementptr inbounds [4 x i8], ptr @a, i64 %13
  %15 = load float, ptr %14, align 4
  %16 = fadd float %12, %15
  store float %16, ptr %14, align 4
  %17 = add i32 %.016, %1
  %18 = icmp slt i32 %17, 32000
  br i1 %18, label %7, label %._crit_edge, !llvm.loop !77

._crit_edge:                                      ; preds = %7
  %19 = add nuw nsw i32 %.01317, 1
  %exitcond.not = icmp eq i32 %19, 256
  br i1 %exitcond.not, label %.split18, label %.lr.ph, !llvm.loop !78

.split18:                                         ; preds = %._crit_edge, %2
  %20 = tail call i32 @clock() #27
  %21 = sub i32 %20, %4
  %22 = sitofp i32 %21 to double
  %23 = fdiv double %22, 1.000000e+06
  %24 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@FGMEIKLL@S122?7?5?$CF?42f?5?7?7?$AA@", double noundef %23) #27
  tail call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s123() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05LGEBPPEE@s123?5?$AA@")
  %2 = tail call i32 @clock() #27
  br label %.preheader

.preheader:                                       ; preds = %0, %23
  %.01823 = phi i32 [ 0, %0 ], [ %24, %23 ]
  br label %3

3:                                                ; preds = %.preheader, %22
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %22 ]
  %.01921 = phi i32 [ -1, %.preheader ], [ %.1, %22 ]
  %4 = add i32 %.01921, 1
  %5 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %indvars.iv
  %6 = load float, ptr %5, align 4
  %7 = getelementptr inbounds nuw [4 x i8], ptr @d, i64 %indvars.iv
  %8 = load float, ptr %7, align 4
  %9 = getelementptr inbounds nuw [4 x i8], ptr @e, i64 %indvars.iv
  %10 = load float, ptr %9, align 4
  %11 = tail call float @llvm.fmuladd.f32(float %8, float %10, float %6)
  %12 = sext i32 %4 to i64
  %13 = getelementptr inbounds [4 x i8], ptr @a, i64 %12
  store float %11, ptr %13, align 4
  %14 = getelementptr inbounds nuw [4 x i8], ptr @c, i64 %indvars.iv
  %15 = load float, ptr %14, align 4
  %16 = fcmp ogt float %15, 0.000000e+00
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = add i32 %.01921, 2
  %19 = tail call float @llvm.fmuladd.f32(float %8, float %10, float %15)
  %20 = sext i32 %18 to i64
  %21 = getelementptr inbounds [4 x i8], ptr @a, i64 %20
  store float %19, ptr %21, align 4
  br label %22

22:                                               ; preds = %3, %17
  %.1 = phi i32 [ %18, %17 ], [ %4, %3 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16000
  br i1 %exitcond.not, label %23, label %3, !llvm.loop !79

23:                                               ; preds = %22
  %24 = add nuw nsw i32 %.01823, 1
  %exitcond25.not = icmp eq i32 %24, 256
  br i1 %exitcond25.not, label %25, label %.preheader, !llvm.loop !80

25:                                               ; preds = %23
  %26 = tail call i32 @clock() #27
  %27 = sub i32 %26, %2
  %28 = sitofp i32 %27 to double
  %29 = fdiv double %28, 1.000000e+06
  %30 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@JHEKFFHL@S123?7?5?$CF?42f?5?7?7?$AA@", double noundef %29) #27
  tail call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s124() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05LDAOOJMB@s124?5?$AA@")
  %2 = tail call i32 @clock() #27
  br label %vector.ph

vector.ph:                                        ; preds = %middle.block, %0
  %.01823 = phi i32 [ 0, %0 ], [ %18, %middle.block ]
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %3 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %index
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %wide.load = load <4 x float>, ptr %3, align 16
  %wide.load34 = load <4 x float>, ptr %4, align 16
  %5 = fcmp ogt <4 x float> %wide.load, zeroinitializer
  %6 = fcmp ogt <4 x float> %wide.load34, zeroinitializer
  %7 = getelementptr inbounds nuw [4 x i8], ptr @c, i64 %index
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %wide.load35 = load <4 x float>, ptr %7, align 16
  %wide.load36 = load <4 x float>, ptr %8, align 16
  %predphi = select <4 x i1> %5, <4 x float> %wide.load, <4 x float> %wide.load35
  %predphi37 = select <4 x i1> %6, <4 x float> %wide.load34, <4 x float> %wide.load36
  %9 = getelementptr inbounds nuw [4 x i8], ptr @d, i64 %index
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %wide.load38 = load <4 x float>, ptr %9, align 16
  %wide.load39 = load <4 x float>, ptr %10, align 16
  %11 = getelementptr inbounds nuw [4 x i8], ptr @e, i64 %index
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 16
  %wide.load40 = load <4 x float>, ptr %11, align 16
  %wide.load41 = load <4 x float>, ptr %12, align 16
  %13 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load38, <4 x float> %wide.load40, <4 x float> %predphi)
  %14 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load39, <4 x float> %wide.load41, <4 x float> %predphi37)
  %15 = getelementptr inbounds [4 x i8], ptr @a, i64 %index
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 16
  store <4 x float> %13, ptr %15, align 16
  store <4 x float> %14, ptr %16, align 16
  %index.next = add nuw i64 %index, 8
  %17 = icmp eq i64 %index.next, 32000
  br i1 %17, label %middle.block, label %vector.body, !llvm.loop !81

middle.block:                                     ; preds = %vector.body
  %18 = add nuw nsw i32 %.01823, 1
  %exitcond28.not = icmp eq i32 %18, 256
  br i1 %exitcond28.not, label %19, label %vector.ph, !llvm.loop !82

19:                                               ; preds = %middle.block
  %20 = tail call i32 @clock() #27
  %21 = sub i32 %20, %2
  %22 = sitofp i32 %21 to double
  %23 = fdiv double %22, 1.000000e+06
  %24 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@LOHBEAPI@S124?7?5?$CF?42f?5?7?7?$AA@", double noundef %23) #27
  tail call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s125() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05LCMMIDPG@s125?5?$AA@")
  %2 = tail call i32 @clock() #27
  br label %.preheader20

.preheader20:                                     ; preds = %0, %43
  %.01825 = phi i32 [ 0, %0 ], [ %44, %43 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader20, %middle.block
  %indvars.iv27 = phi i64 [ 0, %.preheader20 ], [ %indvars.iv.next28, %middle.block ]
  %.01923 = phi i32 [ -1, %.preheader20 ], [ %.lcssa, %middle.block ]
  %3 = getelementptr inbounds nuw [1024 x i8], ptr @aa, i64 %indvars.iv27
  %4 = getelementptr inbounds nuw [1024 x i8], ptr @bb, i64 %indvars.iv27
  %5 = getelementptr inbounds nuw [1024 x i8], ptr @cc, i64 %indvars.iv27
  %6 = add i32 %.01923, 1
  %7 = add i32 %.01923, 256
  %8 = icmp slt i32 %7, %6
  br i1 %8, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %.preheader
  %9 = add i32 %.01923, 256
  %invariant.op = add i32 %.01923, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %10 = trunc i64 %index to i32
  %.reass = add i32 %10, %invariant.op
  %11 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 16
  %wide.load = load <4 x float>, ptr %11, align 16
  %wide.load32 = load <4 x float>, ptr %12, align 16
  %13 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %wide.load33 = load <4 x float>, ptr %13, align 16
  %wide.load34 = load <4 x float>, ptr %14, align 16
  %15 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %index
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %wide.load35 = load <4 x float>, ptr %15, align 16
  %wide.load36 = load <4 x float>, ptr %16, align 16
  %17 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load33, <4 x float> %wide.load35, <4 x float> %wide.load)
  %18 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load34, <4 x float> %wide.load36, <4 x float> %wide.load32)
  %19 = sext i32 %.reass to i64
  %20 = getelementptr inbounds [4 x i8], ptr @array, i64 %19
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 16
  store <4 x float> %17, ptr %20, align 4
  store <4 x float> %18, ptr %21, align 4
  %index.next = add nuw i64 %index, 8
  %22 = icmp eq i64 %index.next, 256
  br i1 %22, label %middle.block, label %vector.body, !llvm.loop !83

scalar.ph:                                        ; preds = %.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ 0, %.preheader ]
  %.121 = phi i32 [ %33, %scalar.ph ], [ %.01923, %.preheader ]
  %23 = add i32 %.121, 1
  %24 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %25 = load float, ptr %24, align 8
  %26 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  %27 = load float, ptr %26, align 8
  %28 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv
  %29 = load float, ptr %28, align 8
  %30 = tail call float @llvm.fmuladd.f32(float %27, float %29, float %25)
  %31 = sext i32 %23 to i64
  %32 = getelementptr inbounds [4 x i8], ptr @array, i64 %31
  store float %30, ptr %32, align 4
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %33 = add i32 %.121, 2
  %34 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next
  %35 = load float, ptr %34, align 4
  %36 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next
  %37 = load float, ptr %36, align 4
  %38 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.next
  %39 = load float, ptr %38, align 4
  %40 = tail call float @llvm.fmuladd.f32(float %37, float %39, float %35)
  %41 = sext i32 %33 to i64
  %42 = getelementptr inbounds [4 x i8], ptr @array, i64 %41
  store float %40, ptr %42, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 256
  br i1 %exitcond.not.1, label %middle.block, label %scalar.ph, !llvm.loop !84

middle.block:                                     ; preds = %vector.body, %scalar.ph
  %.lcssa = phi i32 [ %33, %scalar.ph ], [ %9, %vector.body ]
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  %exitcond30.not = icmp eq i64 %indvars.iv.next28, 256
  br i1 %exitcond30.not, label %43, label %.preheader, !llvm.loop !85

43:                                               ; preds = %middle.block
  %44 = add nuw nsw i32 %.01825, 1
  %exitcond31.not = icmp eq i32 %44, 100
  br i1 %exitcond31.not, label %45, label %.preheader20, !llvm.loop !86

45:                                               ; preds = %43
  %46 = tail call i32 @clock() #27
  %47 = sub i32 %46, %2
  %48 = sitofp i32 %47 to double
  %49 = fdiv double %48, 1.000000e+06
  %50 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@HPPPJPDI@S125?7?5?$CF?42f?5?7?7?$AA@", double noundef %49) #27
  tail call void @check(i32 noundef 0)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s126() local_unnamed_addr #11 {
.preheader21:
  %0 = tail call i32 @init(ptr noundef nonnull @"??_C@_05LAIKDNKP@s126?5?$AA@")
  %1 = tail call i32 @clock() #27
  br label %.preheader

.preheader:                                       ; preds = %.preheader21, %15
  %indvars.iv28 = phi i64 [ 0, %.preheader21 ], [ %indvars.iv.next29, %15 ]
  %.02024 = phi i32 [ 1, %.preheader21 ], [ %16, %15 ]
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr @cc, i64 %indvars.iv28
  br label %2

2:                                                ; preds = %.preheader, %2
  %indvars.iv = phi i64 [ 1, %.preheader ], [ %indvars.iv.next, %2 ]
  %.122 = phi i32 [ %.02024, %.preheader ], [ %14, %2 ]
  %3 = getelementptr [1024 x i8], ptr @bb, i64 %indvars.iv
  %4 = getelementptr i8, ptr %3, i64 -1024
  %5 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv28
  %6 = load float, ptr %5, align 4
  %7 = add i32 %.122, -1
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [4 x i8], ptr @array, i64 %8
  %10 = load float, ptr %9, align 4
  %gep = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep, i64 %indvars.iv
  %11 = load float, ptr %gep, align 4
  %12 = tail call float @llvm.fmuladd.f32(float %10, float %11, float %6)
  %13 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv28
  store float %12, ptr %13, align 4
  %14 = add i32 %.122, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 256
  br i1 %exitcond.not, label %15, label %2, !llvm.loop !87

15:                                               ; preds = %2
  %16 = add i32 %.122, 2
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1
  %exitcond31.not = icmp eq i64 %indvars.iv.next29, 256
  br i1 %exitcond31.not, label %.preheader.1, label %.preheader, !llvm.loop !88

.preheader.1:                                     ; preds = %15, %30
  %indvars.iv28.1 = phi i64 [ %indvars.iv.next29.1, %30 ], [ 0, %15 ]
  %.02024.1 = phi i32 [ %31, %30 ], [ 1, %15 ]
  %invariant.gep.1 = getelementptr inbounds nuw [4 x i8], ptr @cc, i64 %indvars.iv28.1
  br label %17

17:                                               ; preds = %17, %.preheader.1
  %indvars.iv.1 = phi i64 [ 1, %.preheader.1 ], [ %indvars.iv.next.1, %17 ]
  %.122.1 = phi i32 [ %.02024.1, %.preheader.1 ], [ %29, %17 ]
  %18 = getelementptr [1024 x i8], ptr @bb, i64 %indvars.iv.1
  %19 = getelementptr i8, ptr %18, i64 -1024
  %20 = getelementptr inbounds nuw [4 x i8], ptr %19, i64 %indvars.iv28.1
  %21 = load float, ptr %20, align 4
  %22 = add i32 %.122.1, -1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [4 x i8], ptr @array, i64 %23
  %25 = load float, ptr %24, align 4
  %gep.1 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep.1, i64 %indvars.iv.1
  %26 = load float, ptr %gep.1, align 4
  %27 = tail call float @llvm.fmuladd.f32(float %25, float %26, float %21)
  %28 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %indvars.iv28.1
  store float %27, ptr %28, align 4
  %29 = add i32 %.122.1, 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1
  %exitcond.1.not = icmp eq i64 %indvars.iv.next.1, 256
  br i1 %exitcond.1.not, label %30, label %17, !llvm.loop !87

30:                                               ; preds = %17
  %31 = add i32 %.122.1, 2
  %indvars.iv.next29.1 = add nuw nsw i64 %indvars.iv28.1, 1
  %exitcond31.1.not = icmp eq i64 %indvars.iv.next29.1, 256
  br i1 %exitcond31.1.not, label %.preheader.2, label %.preheader.1, !llvm.loop !88

.preheader.2:                                     ; preds = %30, %45
  %indvars.iv28.2 = phi i64 [ %indvars.iv.next29.2, %45 ], [ 0, %30 ]
  %.02024.2 = phi i32 [ %46, %45 ], [ 1, %30 ]
  %invariant.gep.2 = getelementptr inbounds nuw [4 x i8], ptr @cc, i64 %indvars.iv28.2
  br label %32

32:                                               ; preds = %32, %.preheader.2
  %indvars.iv.2 = phi i64 [ 1, %.preheader.2 ], [ %indvars.iv.next.2, %32 ]
  %.122.2 = phi i32 [ %.02024.2, %.preheader.2 ], [ %44, %32 ]
  %33 = getelementptr [1024 x i8], ptr @bb, i64 %indvars.iv.2
  %34 = getelementptr i8, ptr %33, i64 -1024
  %35 = getelementptr inbounds nuw [4 x i8], ptr %34, i64 %indvars.iv28.2
  %36 = load float, ptr %35, align 4
  %37 = add i32 %.122.2, -1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [4 x i8], ptr @array, i64 %38
  %40 = load float, ptr %39, align 4
  %gep.2 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep.2, i64 %indvars.iv.2
  %41 = load float, ptr %gep.2, align 4
  %42 = tail call float @llvm.fmuladd.f32(float %40, float %41, float %36)
  %43 = getelementptr inbounds nuw [4 x i8], ptr %33, i64 %indvars.iv28.2
  store float %42, ptr %43, align 4
  %44 = add i32 %.122.2, 1
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, 1
  %exitcond.2.not = icmp eq i64 %indvars.iv.next.2, 256
  br i1 %exitcond.2.not, label %45, label %32, !llvm.loop !87

45:                                               ; preds = %32
  %46 = add i32 %.122.2, 2
  %indvars.iv.next29.2 = add nuw nsw i64 %indvars.iv28.2, 1
  %exitcond31.2.not = icmp eq i64 %indvars.iv.next29.2, 256
  br i1 %exitcond31.2.not, label %.preheader.3, label %.preheader.2, !llvm.loop !88

.preheader.3:                                     ; preds = %45, %60
  %indvars.iv28.3 = phi i64 [ %indvars.iv.next29.3, %60 ], [ 0, %45 ]
  %.02024.3 = phi i32 [ %61, %60 ], [ 1, %45 ]
  %invariant.gep.3 = getelementptr inbounds nuw [4 x i8], ptr @cc, i64 %indvars.iv28.3
  br label %47

47:                                               ; preds = %47, %.preheader.3
  %indvars.iv.3 = phi i64 [ 1, %.preheader.3 ], [ %indvars.iv.next.3, %47 ]
  %.122.3 = phi i32 [ %.02024.3, %.preheader.3 ], [ %59, %47 ]
  %48 = getelementptr [1024 x i8], ptr @bb, i64 %indvars.iv.3
  %49 = getelementptr i8, ptr %48, i64 -1024
  %50 = getelementptr inbounds nuw [4 x i8], ptr %49, i64 %indvars.iv28.3
  %51 = load float, ptr %50, align 4
  %52 = add i32 %.122.3, -1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [4 x i8], ptr @array, i64 %53
  %55 = load float, ptr %54, align 4
  %gep.3 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep.3, i64 %indvars.iv.3
  %56 = load float, ptr %gep.3, align 4
  %57 = tail call float @llvm.fmuladd.f32(float %55, float %56, float %51)
  %58 = getelementptr inbounds nuw [4 x i8], ptr %48, i64 %indvars.iv28.3
  store float %57, ptr %58, align 4
  %59 = add i32 %.122.3, 1
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.3, 1
  %exitcond.3.not = icmp eq i64 %indvars.iv.next.3, 256
  br i1 %exitcond.3.not, label %60, label %47, !llvm.loop !87

60:                                               ; preds = %47
  %61 = add i32 %.122.3, 2
  %indvars.iv.next29.3 = add nuw nsw i64 %indvars.iv28.3, 1
  %exitcond31.3.not = icmp eq i64 %indvars.iv.next29.3, 256
  br i1 %exitcond31.3.not, label %.preheader.4, label %.preheader.3, !llvm.loop !88

.preheader.4:                                     ; preds = %60, %75
  %indvars.iv28.4 = phi i64 [ %indvars.iv.next29.4, %75 ], [ 0, %60 ]
  %.02024.4 = phi i32 [ %76, %75 ], [ 1, %60 ]
  %invariant.gep.4 = getelementptr inbounds nuw [4 x i8], ptr @cc, i64 %indvars.iv28.4
  br label %62

62:                                               ; preds = %62, %.preheader.4
  %indvars.iv.4 = phi i64 [ 1, %.preheader.4 ], [ %indvars.iv.next.4, %62 ]
  %.122.4 = phi i32 [ %.02024.4, %.preheader.4 ], [ %74, %62 ]
  %63 = getelementptr [1024 x i8], ptr @bb, i64 %indvars.iv.4
  %64 = getelementptr i8, ptr %63, i64 -1024
  %65 = getelementptr inbounds nuw [4 x i8], ptr %64, i64 %indvars.iv28.4
  %66 = load float, ptr %65, align 4
  %67 = add i32 %.122.4, -1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [4 x i8], ptr @array, i64 %68
  %70 = load float, ptr %69, align 4
  %gep.4 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep.4, i64 %indvars.iv.4
  %71 = load float, ptr %gep.4, align 4
  %72 = tail call float @llvm.fmuladd.f32(float %70, float %71, float %66)
  %73 = getelementptr inbounds nuw [4 x i8], ptr %63, i64 %indvars.iv28.4
  store float %72, ptr %73, align 4
  %74 = add i32 %.122.4, 1
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv.4, 1
  %exitcond.4.not = icmp eq i64 %indvars.iv.next.4, 256
  br i1 %exitcond.4.not, label %75, label %62, !llvm.loop !87

75:                                               ; preds = %62
  %76 = add i32 %.122.4, 2
  %indvars.iv.next29.4 = add nuw nsw i64 %indvars.iv28.4, 1
  %exitcond31.4.not = icmp eq i64 %indvars.iv.next29.4, 256
  br i1 %exitcond31.4.not, label %.preheader.5, label %.preheader.4, !llvm.loop !88

.preheader.5:                                     ; preds = %75, %90
  %indvars.iv28.5 = phi i64 [ %indvars.iv.next29.5, %90 ], [ 0, %75 ]
  %.02024.5 = phi i32 [ %91, %90 ], [ 1, %75 ]
  %invariant.gep.5 = getelementptr inbounds nuw [4 x i8], ptr @cc, i64 %indvars.iv28.5
  br label %77

77:                                               ; preds = %77, %.preheader.5
  %indvars.iv.5 = phi i64 [ 1, %.preheader.5 ], [ %indvars.iv.next.5, %77 ]
  %.122.5 = phi i32 [ %.02024.5, %.preheader.5 ], [ %89, %77 ]
  %78 = getelementptr [1024 x i8], ptr @bb, i64 %indvars.iv.5
  %79 = getelementptr i8, ptr %78, i64 -1024
  %80 = getelementptr inbounds nuw [4 x i8], ptr %79, i64 %indvars.iv28.5
  %81 = load float, ptr %80, align 4
  %82 = add i32 %.122.5, -1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [4 x i8], ptr @array, i64 %83
  %85 = load float, ptr %84, align 4
  %gep.5 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep.5, i64 %indvars.iv.5
  %86 = load float, ptr %gep.5, align 4
  %87 = tail call float @llvm.fmuladd.f32(float %85, float %86, float %81)
  %88 = getelementptr inbounds nuw [4 x i8], ptr %78, i64 %indvars.iv28.5
  store float %87, ptr %88, align 4
  %89 = add i32 %.122.5, 1
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv.5, 1
  %exitcond.5.not = icmp eq i64 %indvars.iv.next.5, 256
  br i1 %exitcond.5.not, label %90, label %77, !llvm.loop !87

90:                                               ; preds = %77
  %91 = add i32 %.122.5, 2
  %indvars.iv.next29.5 = add nuw nsw i64 %indvars.iv28.5, 1
  %exitcond31.5.not = icmp eq i64 %indvars.iv.next29.5, 256
  br i1 %exitcond31.5.not, label %.preheader.6, label %.preheader.5, !llvm.loop !88

.preheader.6:                                     ; preds = %90, %105
  %indvars.iv28.6 = phi i64 [ %indvars.iv.next29.6, %105 ], [ 0, %90 ]
  %.02024.6 = phi i32 [ %106, %105 ], [ 1, %90 ]
  %invariant.gep.6 = getelementptr inbounds nuw [4 x i8], ptr @cc, i64 %indvars.iv28.6
  br label %92

92:                                               ; preds = %92, %.preheader.6
  %indvars.iv.6 = phi i64 [ 1, %.preheader.6 ], [ %indvars.iv.next.6, %92 ]
  %.122.6 = phi i32 [ %.02024.6, %.preheader.6 ], [ %104, %92 ]
  %93 = getelementptr [1024 x i8], ptr @bb, i64 %indvars.iv.6
  %94 = getelementptr i8, ptr %93, i64 -1024
  %95 = getelementptr inbounds nuw [4 x i8], ptr %94, i64 %indvars.iv28.6
  %96 = load float, ptr %95, align 4
  %97 = add i32 %.122.6, -1
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [4 x i8], ptr @array, i64 %98
  %100 = load float, ptr %99, align 4
  %gep.6 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep.6, i64 %indvars.iv.6
  %101 = load float, ptr %gep.6, align 4
  %102 = tail call float @llvm.fmuladd.f32(float %100, float %101, float %96)
  %103 = getelementptr inbounds nuw [4 x i8], ptr %93, i64 %indvars.iv28.6
  store float %102, ptr %103, align 4
  %104 = add i32 %.122.6, 1
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv.6, 1
  %exitcond.6.not = icmp eq i64 %indvars.iv.next.6, 256
  br i1 %exitcond.6.not, label %105, label %92, !llvm.loop !87

105:                                              ; preds = %92
  %106 = add i32 %.122.6, 2
  %indvars.iv.next29.6 = add nuw nsw i64 %indvars.iv28.6, 1
  %exitcond31.6.not = icmp eq i64 %indvars.iv.next29.6, 256
  br i1 %exitcond31.6.not, label %.preheader.7, label %.preheader.6, !llvm.loop !88

.preheader.7:                                     ; preds = %105, %120
  %indvars.iv28.7 = phi i64 [ %indvars.iv.next29.7, %120 ], [ 0, %105 ]
  %.02024.7 = phi i32 [ %121, %120 ], [ 1, %105 ]
  %invariant.gep.7 = getelementptr inbounds nuw [4 x i8], ptr @cc, i64 %indvars.iv28.7
  br label %107

107:                                              ; preds = %107, %.preheader.7
  %indvars.iv.7 = phi i64 [ 1, %.preheader.7 ], [ %indvars.iv.next.7, %107 ]
  %.122.7 = phi i32 [ %.02024.7, %.preheader.7 ], [ %119, %107 ]
  %108 = getelementptr [1024 x i8], ptr @bb, i64 %indvars.iv.7
  %109 = getelementptr i8, ptr %108, i64 -1024
  %110 = getelementptr inbounds nuw [4 x i8], ptr %109, i64 %indvars.iv28.7
  %111 = load float, ptr %110, align 4
  %112 = add i32 %.122.7, -1
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [4 x i8], ptr @array, i64 %113
  %115 = load float, ptr %114, align 4
  %gep.7 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep.7, i64 %indvars.iv.7
  %116 = load float, ptr %gep.7, align 4
  %117 = tail call float @llvm.fmuladd.f32(float %115, float %116, float %111)
  %118 = getelementptr inbounds nuw [4 x i8], ptr %108, i64 %indvars.iv28.7
  store float %117, ptr %118, align 4
  %119 = add i32 %.122.7, 1
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv.7, 1
  %exitcond.7.not = icmp eq i64 %indvars.iv.next.7, 256
  br i1 %exitcond.7.not, label %120, label %107, !llvm.loop !87

120:                                              ; preds = %107
  %121 = add i32 %.122.7, 2
  %indvars.iv.next29.7 = add nuw nsw i64 %indvars.iv28.7, 1
  %exitcond31.7.not = icmp eq i64 %indvars.iv.next29.7, 256
  br i1 %exitcond31.7.not, label %.preheader.8, label %.preheader.7, !llvm.loop !88

.preheader.8:                                     ; preds = %120, %135
  %indvars.iv28.8 = phi i64 [ %indvars.iv.next29.8, %135 ], [ 0, %120 ]
  %.02024.8 = phi i32 [ %136, %135 ], [ 1, %120 ]
  %invariant.gep.8 = getelementptr inbounds nuw [4 x i8], ptr @cc, i64 %indvars.iv28.8
  br label %122

122:                                              ; preds = %122, %.preheader.8
  %indvars.iv.8 = phi i64 [ 1, %.preheader.8 ], [ %indvars.iv.next.8, %122 ]
  %.122.8 = phi i32 [ %.02024.8, %.preheader.8 ], [ %134, %122 ]
  %123 = getelementptr [1024 x i8], ptr @bb, i64 %indvars.iv.8
  %124 = getelementptr i8, ptr %123, i64 -1024
  %125 = getelementptr inbounds nuw [4 x i8], ptr %124, i64 %indvars.iv28.8
  %126 = load float, ptr %125, align 4
  %127 = add i32 %.122.8, -1
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [4 x i8], ptr @array, i64 %128
  %130 = load float, ptr %129, align 4
  %gep.8 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep.8, i64 %indvars.iv.8
  %131 = load float, ptr %gep.8, align 4
  %132 = tail call float @llvm.fmuladd.f32(float %130, float %131, float %126)
  %133 = getelementptr inbounds nuw [4 x i8], ptr %123, i64 %indvars.iv28.8
  store float %132, ptr %133, align 4
  %134 = add i32 %.122.8, 1
  %indvars.iv.next.8 = add nuw nsw i64 %indvars.iv.8, 1
  %exitcond.8.not = icmp eq i64 %indvars.iv.next.8, 256
  br i1 %exitcond.8.not, label %135, label %122, !llvm.loop !87

135:                                              ; preds = %122
  %136 = add i32 %.122.8, 2
  %indvars.iv.next29.8 = add nuw nsw i64 %indvars.iv28.8, 1
  %exitcond31.8.not = icmp eq i64 %indvars.iv.next29.8, 256
  br i1 %exitcond31.8.not, label %.preheader.9, label %.preheader.8, !llvm.loop !88

.preheader.9:                                     ; preds = %135, %150
  %indvars.iv28.9 = phi i64 [ %indvars.iv.next29.9, %150 ], [ 0, %135 ]
  %.02024.9 = phi i32 [ %151, %150 ], [ 1, %135 ]
  %invariant.gep.9 = getelementptr inbounds nuw [4 x i8], ptr @cc, i64 %indvars.iv28.9
  br label %137

137:                                              ; preds = %137, %.preheader.9
  %indvars.iv.9 = phi i64 [ 1, %.preheader.9 ], [ %indvars.iv.next.9, %137 ]
  %.122.9 = phi i32 [ %.02024.9, %.preheader.9 ], [ %149, %137 ]
  %138 = getelementptr [1024 x i8], ptr @bb, i64 %indvars.iv.9
  %139 = getelementptr i8, ptr %138, i64 -1024
  %140 = getelementptr inbounds nuw [4 x i8], ptr %139, i64 %indvars.iv28.9
  %141 = load float, ptr %140, align 4
  %142 = add i32 %.122.9, -1
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [4 x i8], ptr @array, i64 %143
  %145 = load float, ptr %144, align 4
  %gep.9 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep.9, i64 %indvars.iv.9
  %146 = load float, ptr %gep.9, align 4
  %147 = tail call float @llvm.fmuladd.f32(float %145, float %146, float %141)
  %148 = getelementptr inbounds nuw [4 x i8], ptr %138, i64 %indvars.iv28.9
  store float %147, ptr %148, align 4
  %149 = add i32 %.122.9, 1
  %indvars.iv.next.9 = add nuw nsw i64 %indvars.iv.9, 1
  %exitcond.9.not = icmp eq i64 %indvars.iv.next.9, 256
  br i1 %exitcond.9.not, label %150, label %137, !llvm.loop !87

150:                                              ; preds = %137
  %151 = add i32 %.122.9, 2
  %indvars.iv.next29.9 = add nuw nsw i64 %indvars.iv28.9, 1
  %exitcond31.9.not = icmp eq i64 %indvars.iv.next29.9, 256
  br i1 %exitcond31.9.not, label %152, label %.preheader.9, !llvm.loop !88

152:                                              ; preds = %150
  %153 = tail call i32 @clock() #27
  %154 = sub i32 %153, %1
  %155 = sitofp i32 %154 to double
  %156 = fdiv double %155, 1.000000e+06
  %157 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@OGBNPJDJ@S126?7?5?$CF?42f?5?7?7?$AA@", double noundef %156) #27
  tail call void @check(i32 noundef 22)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s127() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05LBEIFHJI@s127?5?$AA@")
  %2 = tail call i32 @clock() #27
  br label %vector.ph

vector.ph:                                        ; preds = %middle.block, %0
  %.01721 = phi i32 [ 0, %0 ], [ %11, %middle.block ]
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %3 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %index
  %wide.load = load <4 x float>, ptr %3, align 16
  %4 = getelementptr inbounds nuw [4 x i8], ptr @c, i64 %index
  %wide.load28 = load <4 x float>, ptr %4, align 16
  %5 = getelementptr inbounds nuw [4 x i8], ptr @d, i64 %index
  %wide.load29 = load <4 x float>, ptr %5, align 16
  %6 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load28, <4 x float> %wide.load29, <4 x float> %wide.load)
  %.idx = shl i64 %index, 3
  %7 = getelementptr i8, ptr @a, i64 %.idx
  %8 = getelementptr inbounds nuw [4 x i8], ptr @e, i64 %index
  %wide.load30 = load <4 x float>, ptr %8, align 16
  %9 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load29, <4 x float> %wide.load30, <4 x float> %wide.load)
  %interleaved.vec = shufflevector <4 x float> %6, <4 x float> %9, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec, ptr %7, align 16
  %index.next = add nuw i64 %index, 4
  %10 = icmp eq i64 %index.next, 16000
  br i1 %10, label %middle.block, label %vector.body, !llvm.loop !89

middle.block:                                     ; preds = %vector.body
  %11 = add nuw nsw i32 %.01721, 1
  %exitcond27.not = icmp eq i32 %11, 512
  br i1 %exitcond27.not, label %12, label %vector.ph, !llvm.loop !90

12:                                               ; preds = %middle.block
  %13 = tail call i32 @clock() #27
  %14 = sub i32 %13, %2
  %15 = sitofp i32 %14 to double
  %16 = fdiv double %15, 1.000000e+06
  %17 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@CHJDCGPJ@S127?7?5?$CF?42f?5?7?7?$AA@", double noundef %16) #27
  tail call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s128() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05LKBEBAKF@s128?5?$AA@")
  %2 = tail call i32 @clock() #27
  %3 = load float, ptr getelementptr inbounds nuw (i8, ptr @d, i64 63984), align 16
  %4 = load float, ptr getelementptr inbounds nuw (i8, ptr @c, i64 127968), align 16
  %5 = load float, ptr getelementptr inbounds nuw (i8, ptr @d, i64 63988), align 4
  %6 = load float, ptr getelementptr inbounds nuw (i8, ptr @c, i64 127976), align 8
  %7 = load float, ptr getelementptr inbounds nuw (i8, ptr @d, i64 63992), align 8
  %8 = load float, ptr getelementptr inbounds nuw (i8, ptr @c, i64 127984), align 16
  %9 = load float, ptr getelementptr inbounds nuw (i8, ptr @d, i64 63996), align 4
  %10 = load float, ptr getelementptr inbounds nuw (i8, ptr @c, i64 127992), align 8
  br label %vector.ph

vector.ph:                                        ; preds = %scalar.ph, %0
  %.01519 = phi i32 [ 0, %0 ], [ %41, %scalar.ph ]
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %11 = shl i64 %index, 1
  %12 = getelementptr inbounds [4 x i8], ptr @b, i64 %11
  %13 = getelementptr [4 x i8], ptr @b, i64 %11
  %14 = getelementptr i8, ptr %13, i64 8
  %15 = getelementptr [4 x i8], ptr @b, i64 %11
  %16 = getelementptr i8, ptr %15, i64 16
  %17 = getelementptr [4 x i8], ptr @b, i64 %11
  %18 = getelementptr i8, ptr %17, i64 24
  %wide.vec = load <8 x float>, ptr %12, align 16
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %19 = getelementptr inbounds nuw [4 x i8], ptr @d, i64 %index
  %wide.load = load <4 x float>, ptr %19, align 16
  %20 = fsub <4 x float> %strided.vec, %wide.load
  %21 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %index
  store <4 x float> %20, ptr %21, align 16
  %22 = getelementptr inbounds [4 x i8], ptr @c, i64 %11
  %wide.vec26 = load <8 x float>, ptr %22, align 16
  %strided.vec27 = shufflevector <8 x float> %wide.vec26, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %23 = fadd <4 x float> %20, %strided.vec27
  %24 = extractelement <4 x float> %23, i64 0
  store float %24, ptr %12, align 16
  %25 = extractelement <4 x float> %23, i64 1
  store float %25, ptr %14, align 8
  %26 = extractelement <4 x float> %23, i64 2
  store float %26, ptr %16, align 16
  %27 = extractelement <4 x float> %23, i64 3
  store float %27, ptr %18, align 8
  %index.next = add nuw i64 %index, 4
  %28 = icmp eq i64 %index.next, 15996
  br i1 %28, label %scalar.ph, label %vector.body, !llvm.loop !91

scalar.ph:                                        ; preds = %vector.body
  %29 = load float, ptr getelementptr inbounds nuw (i8, ptr @b, i64 127968), align 16
  %30 = fsub float %29, %3
  store float %30, ptr getelementptr inbounds nuw (i8, ptr @a, i64 63984), align 16
  %31 = fadd float %30, %4
  store float %31, ptr getelementptr inbounds nuw (i8, ptr @b, i64 127968), align 16
  %32 = load float, ptr getelementptr inbounds nuw (i8, ptr @b, i64 127976), align 8
  %33 = fsub float %32, %5
  store float %33, ptr getelementptr inbounds nuw (i8, ptr @a, i64 63988), align 4
  %34 = fadd float %33, %6
  store float %34, ptr getelementptr inbounds nuw (i8, ptr @b, i64 127976), align 8
  %35 = load float, ptr getelementptr inbounds nuw (i8, ptr @b, i64 127984), align 16
  %36 = fsub float %35, %7
  store float %36, ptr getelementptr inbounds nuw (i8, ptr @a, i64 63992), align 8
  %37 = fadd float %36, %8
  store float %37, ptr getelementptr inbounds nuw (i8, ptr @b, i64 127984), align 16
  %38 = load float, ptr getelementptr inbounds nuw (i8, ptr @b, i64 127992), align 8
  %39 = fsub float %38, %9
  store float %39, ptr getelementptr inbounds nuw (i8, ptr @a, i64 63996), align 4
  %40 = fadd float %39, %10
  store float %40, ptr getelementptr inbounds nuw (i8, ptr @b, i64 127992), align 8
  %41 = add nuw nsw i32 %.01519, 1
  %exitcond25.not = icmp eq i32 %41, 512
  br i1 %exitcond25.not, label %42, label %vector.ph, !llvm.loop !92

42:                                               ; preds = %scalar.ph
  %43 = tail call i32 @clock() #27
  %44 = sub i32 %43, %2
  %45 = sitofp i32 %44 to double
  %46 = fdiv double %45, 1.000000e+06
  %47 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@LEGLNCDP@S128?7?5?$CF?42f?5?7?7?$AA@", double noundef %46) #27
  tail call void @check(i32 noundef 12)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s131() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05NHJEMEP@s131?5?$AA@")
  %2 = tail call i32 @clock() #27
  %3 = load float, ptr getelementptr inbounds nuw (i8, ptr @b, i64 127968), align 16
  %4 = load float, ptr getelementptr inbounds nuw (i8, ptr @b, i64 127972), align 4
  %5 = load float, ptr getelementptr inbounds nuw (i8, ptr @b, i64 127976), align 8
  %6 = load float, ptr getelementptr inbounds nuw (i8, ptr @b, i64 127980), align 4
  %7 = load float, ptr getelementptr inbounds nuw (i8, ptr @b, i64 127984), align 16
  %8 = load float, ptr getelementptr inbounds nuw (i8, ptr @b, i64 127988), align 4
  %9 = load float, ptr getelementptr inbounds nuw (i8, ptr @b, i64 127992), align 8
  br label %vector.ph

vector.ph:                                        ; preds = %scalar.ph, %0
  %.01113 = phi i32 [ 0, %0 ], [ %43, %scalar.ph ]
  br label %vector.body

vector.body:                                      ; preds = %vector.body.1, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body.1 ]
  %10 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %index
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 4
  %12 = getelementptr inbounds nuw i8, ptr %10, i64 20
  %wide.load = load <4 x float>, ptr %11, align 4
  %wide.load16 = load <4 x float>, ptr %12, align 4
  %13 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %index
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %wide.load17 = load <4 x float>, ptr %13, align 16
  %wide.load18 = load <4 x float>, ptr %14, align 16
  %15 = fadd <4 x float> %wide.load, %wide.load17
  %16 = fadd <4 x float> %wide.load16, %wide.load18
  %17 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %index
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 16
  store <4 x float> %15, ptr %17, align 16
  store <4 x float> %16, ptr %18, align 16
  %19 = icmp eq i64 %index, 31984
  br i1 %19, label %scalar.ph, label %vector.body.1

vector.body.1:                                    ; preds = %vector.body
  %index.next = or disjoint i64 %index, 8
  %20 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %index.next
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 4
  %22 = getelementptr inbounds nuw i8, ptr %20, i64 20
  %wide.load.1 = load <4 x float>, ptr %21, align 4
  %wide.load16.1 = load <4 x float>, ptr %22, align 4
  %23 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %index.next
  %24 = getelementptr inbounds nuw i8, ptr %23, i64 16
  %wide.load17.1 = load <4 x float>, ptr %23, align 16
  %wide.load18.1 = load <4 x float>, ptr %24, align 16
  %25 = fadd <4 x float> %wide.load.1, %wide.load17.1
  %26 = fadd <4 x float> %wide.load16.1, %wide.load18.1
  %27 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %index.next
  %28 = getelementptr inbounds nuw i8, ptr %27, i64 16
  store <4 x float> %25, ptr %27, align 16
  store <4 x float> %26, ptr %28, align 16
  %index.next.1 = add nuw nsw i64 %index, 16
  br label %vector.body

scalar.ph:                                        ; preds = %vector.body
  %29 = load float, ptr getelementptr inbounds nuw (i8, ptr @a, i64 127972), align 4
  %30 = fadd float %29, %3
  store float %30, ptr getelementptr inbounds nuw (i8, ptr @a, i64 127968), align 16
  %31 = load float, ptr getelementptr inbounds nuw (i8, ptr @a, i64 127976), align 8
  %32 = fadd float %31, %4
  store float %32, ptr getelementptr inbounds nuw (i8, ptr @a, i64 127972), align 4
  %33 = load float, ptr getelementptr inbounds nuw (i8, ptr @a, i64 127980), align 4
  %34 = fadd float %33, %5
  store float %34, ptr getelementptr inbounds nuw (i8, ptr @a, i64 127976), align 8
  %35 = load float, ptr getelementptr inbounds nuw (i8, ptr @a, i64 127984), align 16
  %36 = fadd float %35, %6
  store float %36, ptr getelementptr inbounds nuw (i8, ptr @a, i64 127980), align 4
  %37 = load float, ptr getelementptr inbounds nuw (i8, ptr @a, i64 127988), align 4
  %38 = fadd float %37, %7
  store float %38, ptr getelementptr inbounds nuw (i8, ptr @a, i64 127984), align 16
  %39 = load float, ptr getelementptr inbounds nuw (i8, ptr @a, i64 127992), align 8
  %40 = fadd float %39, %8
  store float %40, ptr getelementptr inbounds nuw (i8, ptr @a, i64 127988), align 4
  %41 = load float, ptr getelementptr inbounds nuw (i8, ptr @a, i64 127996), align 4
  %42 = fadd float %41, %9
  store float %42, ptr getelementptr inbounds nuw (i8, ptr @a, i64 127992), align 8
  %43 = add nuw nsw i32 %.01113, 1
  %exitcond15.not = icmp eq i32 %43, 1280
  br i1 %exitcond15.not, label %44, label %vector.ph, !llvm.loop !93

44:                                               ; preds = %scalar.ph
  %45 = tail call i32 @clock() #27
  %46 = sub i32 %45, %2
  %47 = sitofp i32 %46 to double
  %48 = fdiv double %47, 1.000000e+06
  %49 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@FEIDKANF@S131?7?5?$CF?42f?5?7?7?$AA@", double noundef %48) #27
  tail call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s132() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05PDPPCBG@s132?5?$AA@")
  %2 = tail call i32 @clock() #27
  %3 = load float, ptr getelementptr inbounds nuw (i8, ptr @c, i64 4), align 4
  %broadcast.splatinsert = insertelement <4 x float> poison, float %3, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %4 = load float, ptr getelementptr inbounds nuw (i8, ptr @b, i64 996), align 4
  %5 = load float, ptr getelementptr inbounds nuw (i8, ptr @b, i64 1000), align 8
  %6 = load float, ptr getelementptr inbounds nuw (i8, ptr @b, i64 1004), align 4
  %7 = load float, ptr getelementptr inbounds nuw (i8, ptr @b, i64 1008), align 16
  %8 = load float, ptr getelementptr inbounds nuw (i8, ptr @b, i64 1012), align 4
  %9 = load float, ptr getelementptr inbounds nuw (i8, ptr @b, i64 1016), align 8
  %10 = load float, ptr getelementptr inbounds nuw (i8, ptr @b, i64 1020), align 4
  br label %vector.ph

vector.ph:                                        ; preds = %scalar.ph, %0
  %.01416 = phi i32 [ 0, %0 ], [ %36, %scalar.ph ]
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %11 = or disjoint i64 %index, 1
  %12 = getelementptr [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @aa, i64 1024), i64 %11
  %13 = getelementptr i8, ptr %12, i64 -4
  %14 = getelementptr i8, ptr %12, i64 12
  %wide.load = load <4 x float>, ptr %13, align 16
  %wide.load19 = load <4 x float>, ptr %14, align 16
  %15 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %11
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %wide.load20 = load <4 x float>, ptr %15, align 4
  %wide.load21 = load <4 x float>, ptr %16, align 4
  %17 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load20, <4 x float> %broadcast.splat, <4 x float> %wide.load)
  %18 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load21, <4 x float> %broadcast.splat, <4 x float> %wide.load19)
  %19 = getelementptr inbounds nuw [4 x i8], ptr @aa, i64 %11
  %20 = getelementptr inbounds nuw i8, ptr %19, i64 16
  store <4 x float> %17, ptr %19, align 4
  store <4 x float> %18, ptr %20, align 4
  %index.next = add nuw i64 %index, 8
  %21 = icmp eq i64 %index.next, 248
  br i1 %21, label %scalar.ph, label %vector.body, !llvm.loop !94

scalar.ph:                                        ; preds = %vector.body
  %22 = load float, ptr getelementptr inbounds nuw (i8, ptr @aa, i64 2016), align 16
  %23 = tail call float @llvm.fmuladd.f32(float %4, float %3, float %22)
  store float %23, ptr getelementptr inbounds nuw (i8, ptr @aa, i64 996), align 4
  %24 = load float, ptr getelementptr inbounds nuw (i8, ptr @aa, i64 2020), align 4
  %25 = tail call float @llvm.fmuladd.f32(float %5, float %3, float %24)
  store float %25, ptr getelementptr inbounds nuw (i8, ptr @aa, i64 1000), align 8
  %26 = load float, ptr getelementptr inbounds nuw (i8, ptr @aa, i64 2024), align 8
  %27 = tail call float @llvm.fmuladd.f32(float %6, float %3, float %26)
  store float %27, ptr getelementptr inbounds nuw (i8, ptr @aa, i64 1004), align 4
  %28 = load float, ptr getelementptr inbounds nuw (i8, ptr @aa, i64 2028), align 4
  %29 = tail call float @llvm.fmuladd.f32(float %7, float %3, float %28)
  store float %29, ptr getelementptr inbounds nuw (i8, ptr @aa, i64 1008), align 16
  %30 = load float, ptr getelementptr inbounds nuw (i8, ptr @aa, i64 2032), align 16
  %31 = tail call float @llvm.fmuladd.f32(float %8, float %3, float %30)
  store float %31, ptr getelementptr inbounds nuw (i8, ptr @aa, i64 1012), align 4
  %32 = load float, ptr getelementptr inbounds nuw (i8, ptr @aa, i64 2036), align 4
  %33 = tail call float @llvm.fmuladd.f32(float %9, float %3, float %32)
  store float %33, ptr getelementptr inbounds nuw (i8, ptr @aa, i64 1016), align 8
  %34 = load float, ptr getelementptr inbounds nuw (i8, ptr @aa, i64 2040), align 8
  %35 = tail call float @llvm.fmuladd.f32(float %10, float %3, float %34)
  store float %35, ptr getelementptr inbounds nuw (i8, ptr @aa, i64 1020), align 4
  %36 = add nuw nsw i32 %.01416, 1
  %exitcond18.not = icmp eq i32 %36, 102400
  br i1 %exitcond18.not, label %37, label %vector.ph, !llvm.loop !95

37:                                               ; preds = %scalar.ph
  %38 = tail call i32 @clock() #27
  %39 = sub i32 %38, %2
  %40 = sitofp i32 %39 to double
  %41 = fdiv double %40, 1.000000e+06
  %42 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@MNGBMGNE@S132?7?5?$CF?42f?5?7?7?$AA@", double noundef %41) #27
  tail call void @check(i32 noundef 11)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s141() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05JAKOHEPG@s141?5?$AA@")
  %2 = tail call i32 @clock() #27
  br label %.preheader

.preheader:                                       ; preds = %0, %31
  %.01924 = phi i32 [ 0, %0 ], [ %32, %31 ]
  br label %3

.loopexit:                                        ; preds = %.new, %.prol.loopexit
  %exitcond29.not = icmp eq i64 %indvars.iv.next, 256
  br i1 %exitcond29.not, label %31, label %3, !llvm.loop !96

3:                                                ; preds = %.preheader, %.loopexit
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %.loopexit ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %4 = mul i64 %indvars.iv.next, %indvars.iv
  %5 = trunc i64 %4 to i32
  %6 = lshr i32 %5, 1
  %7 = trunc nuw nsw i64 %indvars.iv to i32
  %8 = add nuw nsw i32 %6, %7
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr @bb, i64 %indvars.iv
  %xtraiter = and i64 %indvars.iv, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %3
  %gep.prol = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep, i64 %indvars.iv
  %9 = load float, ptr %gep.prol, align 4
  %10 = sext i32 %8 to i64
  %11 = getelementptr inbounds [4 x i8], ptr @array, i64 %10
  %12 = load float, ptr %11, align 4
  %13 = fadd float %9, %12
  store float %13, ptr %11, align 4
  %indvars.iv.next26.prol = add nuw nsw i64 %indvars.iv, 1
  %14 = trunc nuw nsw i64 %indvars.iv.next26.prol to i32
  %15 = add i32 %8, %14
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %3
  %indvars.iv25.unr = phi i64 [ %indvars.iv, %3 ], [ %indvars.iv.next26.prol, %.prol.loopexit.unr-lcssa ]
  %.02021.unr = phi i32 [ %8, %3 ], [ %15, %.prol.loopexit.unr-lcssa ]
  %16 = icmp eq i64 %indvars.iv, 255
  br i1 %16, label %.loopexit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %indvars.iv25 = phi i64 [ %indvars.iv.next26.1, %.new ], [ %indvars.iv25.unr, %.prol.loopexit ]
  %.02021 = phi i32 [ %30, %.new ], [ %.02021.unr, %.prol.loopexit ]
  %gep = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep, i64 %indvars.iv25
  %17 = load float, ptr %gep, align 4
  %18 = sext i32 %.02021 to i64
  %19 = getelementptr inbounds [4 x i8], ptr @array, i64 %18
  %20 = load float, ptr %19, align 4
  %21 = fadd float %17, %20
  store float %21, ptr %19, align 4
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  %22 = trunc nuw nsw i64 %indvars.iv.next26 to i32
  %23 = add i32 %.02021, %22
  %gep.1 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep, i64 %indvars.iv.next26
  %24 = load float, ptr %gep.1, align 4
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds [4 x i8], ptr @array, i64 %25
  %27 = load float, ptr %26, align 4
  %28 = fadd float %24, %27
  store float %28, ptr %26, align 4
  %indvars.iv.next26.1 = add nuw nsw i64 %indvars.iv25, 2
  %29 = trunc nuw nsw i64 %indvars.iv.next26.1 to i32
  %30 = add i32 %23, %29
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next26.1, 256
  br i1 %exitcond.not.1, label %.loopexit, label %.new, !llvm.loop !97

31:                                               ; preds = %.loopexit
  %32 = add nuw nsw i32 %.01924, 1
  %exitcond30.not = icmp eq i32 %32, 200
  br i1 %exitcond30.not, label %33, label %.preheader, !llvm.loop !98

33:                                               ; preds = %31
  %34 = tail call i32 @clock() #27
  %35 = sub i32 %34, %2
  %36 = sitofp i32 %35 to double
  %37 = fdiv double %36, 1.000000e+06
  %38 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@CABLEJFK@S141?7?5?$CF?42f?5?7?7?$AA@", double noundef %37) #27
  tail call void @check(i32 noundef 0)
  ret i32 0
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef i32 @s151s(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #17 {
vector.scevcheck:
  %3 = icmp sgt i32 %2, 2147451649
  br i1 %3, label %scalar.ph.prol, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %4 = ptrtoaddr ptr %0 to i64
  %5 = ptrtoaddr ptr %1 to i64
  %6 = sext i32 %2 to i64
  %7 = shl nsw i64 %6, 2
  %diff.check = icmp ugt i64 %7, -32
  %8 = sub i64 %5, %4
  %diff.check11 = icmp ugt i64 %8, -32
  %conflict.rdx = or i1 %diff.check, %diff.check11
  br i1 %conflict.rdx, label %scalar.ph.prol, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body.1
  %index = phi i64 [ %index.next.1, %vector.body.1 ], [ 0, %vector.memcheck ]
  %9 = trunc nuw nsw i64 %index to i32
  %10 = add i32 %2, %9
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [4 x i8], ptr %0, i64 %11
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 16
  %wide.load = load <4 x float>, ptr %12, align 4
  %wide.load12 = load <4 x float>, ptr %13, align 4
  %14 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %wide.load13 = load <4 x float>, ptr %14, align 4
  %wide.load14 = load <4 x float>, ptr %15, align 4
  %16 = fadd <4 x float> %wide.load, %wide.load13
  %17 = fadd <4 x float> %wide.load12, %wide.load14
  %18 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 16
  store <4 x float> %16, ptr %18, align 4
  store <4 x float> %17, ptr %19, align 4
  %20 = icmp eq i64 %index, 31984
  br i1 %20, label %scalar.ph.prol, label %vector.body.1

vector.body.1:                                    ; preds = %vector.body
  %index.next = or disjoint i64 %index, 8
  %21 = trunc nuw nsw i64 %index.next to i32
  %22 = add i32 %2, %21
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [4 x i8], ptr %0, i64 %23
  %25 = getelementptr inbounds nuw i8, ptr %24, i64 16
  %wide.load.1 = load <4 x float>, ptr %24, align 4
  %wide.load12.1 = load <4 x float>, ptr %25, align 4
  %26 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index.next
  %27 = getelementptr inbounds nuw i8, ptr %26, i64 16
  %wide.load13.1 = load <4 x float>, ptr %26, align 4
  %wide.load14.1 = load <4 x float>, ptr %27, align 4
  %28 = fadd <4 x float> %wide.load.1, %wide.load13.1
  %29 = fadd <4 x float> %wide.load12.1, %wide.load14.1
  %30 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index.next
  %31 = getelementptr inbounds nuw i8, ptr %30, i64 16
  store <4 x float> %28, ptr %30, align 4
  store <4 x float> %29, ptr %31, align 4
  %index.next.1 = add nuw nsw i64 %index, 16
  br label %vector.body

scalar.ph.prol:                                   ; preds = %vector.body, %vector.memcheck, %vector.scevcheck
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 31992, %vector.body ]
  %32 = trunc nuw nsw i64 %indvars.iv.ph to i32
  %33 = add i32 %2, %32
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [4 x i8], ptr %0, i64 %34
  %36 = load float, ptr %35, align 4
  %37 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.ph
  %38 = load float, ptr %37, align 4
  %39 = fadd float %36, %38
  %40 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.ph
  store float %39, ptr %40, align 4
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.prol
  %indvars.iv = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.next.1, %scalar.ph ]
  %41 = trunc nuw nsw i64 %indvars.iv to i32
  %42 = add i32 %2, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [4 x i8], ptr %0, i64 %43
  %45 = load float, ptr %44, align 4
  %46 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %47 = load float, ptr %46, align 4
  %48 = fadd float %45, %47
  %49 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store float %48, ptr %49, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %50 = trunc nuw nsw i64 %indvars.iv.next to i32
  %51 = add i32 %2, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [4 x i8], ptr %0, i64 %52
  %54 = load float, ptr %53, align 4
  %55 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %56 = load float, ptr %55, align 4
  %57 = fadd float %54, %56
  %58 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next
  store float %57, ptr %58, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 31999
  br i1 %exitcond.not.1, label %.unr-lcssa, label %scalar.ph, !llvm.loop !99

.unr-lcssa:                                       ; preds = %scalar.ph
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s151() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05CIBCBDJD@s151?5?$AA@")
  %2 = tail call i32 @clock() #27
  br label %3

3:                                                ; preds = %0, %3
  %.05 = phi i32 [ 0, %0 ], [ %5, %3 ]
  %4 = tail call i32 @s151s(ptr noundef nonnull @a, ptr noundef nonnull @b, i32 noundef 1)
  %5 = add nuw nsw i32 %.05, 1
  %exitcond.not = icmp eq i32 %5, 1280
  br i1 %exitcond.not, label %6, label %3, !llvm.loop !100

6:                                                ; preds = %3
  %7 = tail call i32 @clock() #27
  %8 = sub i32 %7, %2
  %9 = sitofp i32 %8 to double
  %10 = fdiv double %9, 1.000000e+06
  %11 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@LLLOAFDF@S151?7?5?$CF?42f?5?7?7?$AA@", double noundef %10) #27
  tail call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @s152s(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #18 {
  %5 = sext i32 %3 to i64
  %6 = getelementptr inbounds [4 x i8], ptr %1, i64 %5
  %7 = load float, ptr %6, align 4
  %8 = getelementptr inbounds [4 x i8], ptr %2, i64 %5
  %9 = load float, ptr %8, align 4
  %10 = getelementptr inbounds [4 x i8], ptr %0, i64 %5
  %11 = load float, ptr %10, align 4
  %12 = tail call float @llvm.fmuladd.f32(float %7, float %9, float %11)
  store float %12, ptr %10, align 4
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s152() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05CKFEKNMK@s152?5?$AA@")
  %2 = tail call i32 @clock() #27
  br label %.preheader

.preheader:                                       ; preds = %0, %12
  %.01113 = phi i32 [ 0, %0 ], [ %13, %12 ]
  br label %3

3:                                                ; preds = %.preheader, %3
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %3 ]
  %4 = getelementptr inbounds nuw [4 x i8], ptr @d, i64 %indvars.iv
  %5 = load float, ptr %4, align 4
  %6 = getelementptr inbounds nuw [4 x i8], ptr @e, i64 %indvars.iv
  %7 = load float, ptr %6, align 4
  %8 = fmul float %5, %7
  %9 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %indvars.iv
  store float %8, ptr %9, align 4
  %10 = trunc nuw nsw i64 %indvars.iv to i32
  %11 = tail call i32 @s152s(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, i32 noundef %10)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32000
  br i1 %exitcond.not, label %12, label %3, !llvm.loop !101

12:                                               ; preds = %3
  %13 = add nuw nsw i32 %.01113, 1
  %exitcond15.not = icmp eq i32 %13, 256
  br i1 %exitcond15.not, label %14, label %.preheader, !llvm.loop !102

14:                                               ; preds = %12
  %15 = tail call i32 @clock() #27
  %16 = sub i32 %15, %2
  %17 = sitofp i32 %16 to double
  %18 = fdiv double %17, 1.000000e+06
  %19 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@CCFMGDDE@S152?7?5?$CF?42f?5?7?7?$AA@", double noundef %18) #27
  tail call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s161() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05DKKHLMHN@s161?5?$AA@")
  %2 = tail call i32 @clock() #27
  br label %.preheader

.preheader:                                       ; preds = %0, %23
  %.01618 = phi i32 [ 0, %0 ], [ %24, %23 ]
  br label %3

3:                                                ; preds = %.preheader, %22
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %22 ]
  %4 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %indvars.iv
  %5 = load float, ptr %4, align 4
  %6 = fcmp olt float %5, 0.000000e+00
  %7 = getelementptr inbounds nuw [4 x i8], ptr @d, i64 %indvars.iv
  %8 = load float, ptr %7, align 4
  br i1 %6, label %16, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds nuw [4 x i8], ptr @c, i64 %indvars.iv
  %11 = load float, ptr %10, align 4
  %12 = getelementptr inbounds nuw [4 x i8], ptr @e, i64 %indvars.iv
  %13 = load float, ptr %12, align 4
  %14 = tail call float @llvm.fmuladd.f32(float %8, float %13, float %11)
  %15 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv
  store float %14, ptr %15, align 4
  br label %22

16:                                               ; preds = %3
  %17 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv
  %18 = load float, ptr %17, align 4
  %19 = tail call float @llvm.fmuladd.f32(float %8, float %8, float %18)
  %20 = getelementptr inbounds nuw [4 x i8], ptr @c, i64 %indvars.iv
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 4
  store float %19, ptr %21, align 4
  br label %22

22:                                               ; preds = %9, %16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 31999
  br i1 %exitcond.not, label %23, label %3, !llvm.loop !103

23:                                               ; preds = %22
  %24 = add nuw nsw i32 %.01618, 1
  %exitcond20.not = icmp eq i32 %24, 128
  br i1 %exitcond20.not, label %25, label %.preheader, !llvm.loop !104

25:                                               ; preds = %23
  %26 = tail call i32 @clock() #27
  %27 = sub i32 %26, %2
  %28 = sitofp i32 %27 to double
  %29 = fdiv double %28, 1.000000e+06
  %30 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@MMCANHMF@S161?7?5?$CF?42f?5?7?7?$AA@", double noundef %29) #27
  tail call void @check(i32 noundef 13)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s1161() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05DKKHLMHN@s161?5?$AA@")
  %2 = tail call i32 @clock() #27
  br label %.preheader

.preheader:                                       ; preds = %0, %21
  %.01619 = phi i32 [ 0, %0 ], [ %22, %21 ]
  br label %3

3:                                                ; preds = %.preheader, %19
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %19 ]
  %4 = getelementptr inbounds nuw [4 x i8], ptr @c, i64 %indvars.iv
  %5 = load float, ptr %4, align 4
  %6 = fcmp olt float %5, 0.000000e+00
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw [4 x i8], ptr @d, i64 %indvars.iv
  %9 = load float, ptr %8, align 4
  %10 = getelementptr inbounds nuw [4 x i8], ptr @e, i64 %indvars.iv
  %11 = load float, ptr %10, align 4
  %12 = tail call float @llvm.fmuladd.f32(float %9, float %11, float %5)
  br label %19

13:                                               ; preds = %3
  %14 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv
  %15 = load float, ptr %14, align 4
  %16 = getelementptr inbounds nuw [4 x i8], ptr @d, i64 %indvars.iv
  %17 = load float, ptr %16, align 4
  %18 = tail call float @llvm.fmuladd.f32(float %17, float %17, float %15)
  br label %19

19:                                               ; preds = %7, %13
  %a.sink = phi ptr [ @a, %7 ], [ @b, %13 ]
  %.sink = phi float [ %12, %7 ], [ %18, %13 ]
  %20 = getelementptr inbounds nuw [4 x i8], ptr %a.sink, i64 %indvars.iv
  store float %.sink, ptr %20, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 31999
  br i1 %exitcond.not, label %21, label %3, !llvm.loop !105

21:                                               ; preds = %19
  %22 = add nuw nsw i32 %.01619, 1
  %exitcond21.not = icmp eq i32 %22, 256
  br i1 %exitcond21.not, label %23, label %.preheader, !llvm.loop !106

23:                                               ; preds = %21
  %24 = tail call i32 @clock() #27
  %25 = sub i32 %24, %2
  %26 = sitofp i32 %25 to double
  %27 = fdiv double %26, 1.000000e+06
  %28 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0P@DIBPGICK@S1161?7?5?$CF?42f?5?7?7?$AA@", double noundef %27) #27
  tail call void @check(i32 noundef 13)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s162(i32 noundef %0) local_unnamed_addr #11 {
  %2 = tail call i32 @init(ptr noundef nonnull @"??_C@_05DIOBACCE@s162?5?$AA@")
  %3 = tail call i32 @clock() #27
  %4 = icmp sgt i32 %0, 0
  br i1 %4, label %vector.scevcheck.preheader, label %.split17

vector.scevcheck.preheader:                       ; preds = %1
  %5 = icmp sgt i32 %0, 2147451649
  br label %vector.scevcheck

vector.scevcheck:                                 ; preds = %vector.scevcheck.preheader, %.loopexit
  %.01316 = phi i32 [ %31, %.loopexit ], [ 0, %vector.scevcheck.preheader ]
  br i1 %5, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.scevcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.scevcheck ]
  %6 = trunc i64 %index to i32
  %7 = add i32 %0, %6
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [4 x i8], ptr @a, i64 %8
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %wide.load = load <4 x float>, ptr %9, align 4
  %wide.load21 = load <4 x float>, ptr %10, align 4
  %11 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %index
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 16
  %wide.load22 = load <4 x float>, ptr %11, align 16
  %wide.load23 = load <4 x float>, ptr %12, align 16
  %13 = getelementptr inbounds nuw [4 x i8], ptr @c, i64 %index
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %wide.load24 = load <4 x float>, ptr %13, align 16
  %wide.load25 = load <4 x float>, ptr %14, align 16
  %15 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load22, <4 x float> %wide.load24, <4 x float> %wide.load)
  %16 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load23, <4 x float> %wide.load25, <4 x float> %wide.load21)
  %17 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %index
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 16
  store <4 x float> %15, ptr %17, align 16
  store <4 x float> %16, ptr %18, align 16
  %index.next = add nuw i64 %index, 8
  %19 = icmp eq i64 %index.next, 31992
  br i1 %19, label %scalar.ph.preheader, label %vector.body, !llvm.loop !107

scalar.ph.preheader:                              ; preds = %vector.body, %vector.scevcheck
  %indvars.iv.ph = phi i64 [ 0, %vector.scevcheck ], [ 31992, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ]
  %20 = trunc i64 %indvars.iv to i32
  %21 = add i32 %0, %20
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [4 x i8], ptr @a, i64 %22
  %24 = load float, ptr %23, align 4
  %25 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %indvars.iv
  %26 = load float, ptr %25, align 4
  %27 = getelementptr inbounds nuw [4 x i8], ptr @c, i64 %indvars.iv
  %28 = load float, ptr %27, align 4
  %29 = tail call float @llvm.fmuladd.f32(float %26, float %28, float %24)
  %30 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv
  store float %29, ptr %30, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 31999
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !108

.loopexit:                                        ; preds = %scalar.ph
  %31 = add nuw nsw i32 %.01316, 1
  %exitcond19.not = icmp eq i32 %31, 256
  br i1 %exitcond19.not, label %.split17, label %vector.scevcheck, !llvm.loop !109

.split17:                                         ; preds = %.loopexit, %1
  %32 = tail call i32 @clock() #27
  %33 = sub i32 %32, %3
  %34 = sitofp i32 %33 to double
  %35 = fdiv double %34, 1.000000e+06
  %36 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@FFMCLBME@S162?7?5?$CF?42f?5?7?7?$AA@", double noundef %35) #27
  tail call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s171(i32 noundef %0) local_unnamed_addr #11 {
  %2 = tail call i32 @init(ptr noundef nonnull @"??_C@_05ICBLNLBI@s171?5?$AA@")
  %3 = tail call i32 @clock() #27
  %ident.check.not = icmp eq i32 %0, 1
  br label %vector.scevcheck

vector.scevcheck:                                 ; preds = %middle.block, %1
  %.01012 = phi i32 [ 0, %1 ], [ %33, %middle.block ]
  br i1 %ident.check.not, label %vector.body, label %scalar.ph

vector.body:                                      ; preds = %vector.scevcheck, %vector.body
  %index = phi i64 [ %index.next.1, %vector.body ], [ 0, %vector.scevcheck ]
  %4 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %index
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %wide.load = load <4 x float>, ptr %4, align 16
  %wide.load15 = load <4 x float>, ptr %5, align 16
  %6 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %index
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %wide.load16 = load <4 x float>, ptr %6, align 16
  %wide.load17 = load <4 x float>, ptr %7, align 16
  %8 = fadd <4 x float> %wide.load, %wide.load16
  %9 = fadd <4 x float> %wide.load15, %wide.load17
  store <4 x float> %8, ptr %6, align 16
  store <4 x float> %9, ptr %7, align 16
  %index.next = or disjoint i64 %index, 8
  %10 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %index.next
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %wide.load.1 = load <4 x float>, ptr %10, align 16
  %wide.load15.1 = load <4 x float>, ptr %11, align 16
  %12 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %index.next
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 16
  %wide.load16.1 = load <4 x float>, ptr %12, align 16
  %wide.load17.1 = load <4 x float>, ptr %13, align 16
  %14 = fadd <4 x float> %wide.load.1, %wide.load16.1
  %15 = fadd <4 x float> %wide.load15.1, %wide.load17.1
  store <4 x float> %14, ptr %12, align 16
  store <4 x float> %15, ptr %13, align 16
  %index.next.1 = add nuw nsw i64 %index, 16
  %16 = icmp eq i64 %index.next.1, 32000
  br i1 %16, label %middle.block, label %vector.body, !llvm.loop !110

scalar.ph:                                        ; preds = %vector.scevcheck, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ 0, %vector.scevcheck ]
  %17 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %indvars.iv
  %18 = load float, ptr %17, align 8
  %19 = trunc nuw nsw i64 %indvars.iv to i32
  %20 = mul i32 %0, %19
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [4 x i8], ptr @a, i64 %21
  %23 = load float, ptr %22, align 8
  %24 = fadd float %18, %23
  store float %24, ptr %22, align 8
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %25 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %indvars.iv.next
  %26 = load float, ptr %25, align 4
  %27 = trunc nuw nsw i64 %indvars.iv.next to i32
  %28 = mul i32 %0, %27
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [4 x i8], ptr @a, i64 %29
  %31 = load float, ptr %30, align 4
  %32 = fadd float %26, %31
  store float %32, ptr %30, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 32000
  br i1 %exitcond.not.1, label %middle.block, label %scalar.ph, !llvm.loop !111

middle.block:                                     ; preds = %scalar.ph, %vector.body
  %33 = add nuw nsw i32 %.01012, 1
  %exitcond14.not = icmp eq i32 %33, 256
  br i1 %exitcond14.not, label %34, label %vector.scevcheck, !llvm.loop !112

34:                                               ; preds = %middle.block
  %35 = tail call i32 @clock() #27
  %36 = sub i32 %35, %3
  %37 = sitofp i32 %36 to double
  %38 = fdiv double %37, 1.000000e+06
  %39 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@FHIFJLKK@S171?7?5?$CF?42f?5?7?7?$AA@", double noundef %38) #27
  tail call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s172(i32 noundef %0, i32 noundef %1) local_unnamed_addr #11 {
  %3 = tail call i32 @init(ptr noundef nonnull @"??_C@_05IAFNGFEB@s172?5?$AA@")
  %4 = tail call i32 @clock() #27
  %5 = add i32 %0, -1
  %6 = icmp slt i32 %5, 32000
  br i1 %6, label %.lr.ph, label %.split14

.lr.ph:                                           ; preds = %2, %._crit_edge.1
  %.01113 = phi i32 [ %24, %._crit_edge.1 ], [ 0, %2 ]
  br label %7

7:                                                ; preds = %.lr.ph, %7
  %.012 = phi i32 [ %5, %.lr.ph ], [ %14, %7 ]
  %8 = sext i32 %.012 to i64
  %9 = getelementptr inbounds [4 x i8], ptr @b, i64 %8
  %10 = load float, ptr %9, align 4
  %11 = getelementptr inbounds [4 x i8], ptr @a, i64 %8
  %12 = load float, ptr %11, align 4
  %13 = fadd float %10, %12
  store float %13, ptr %11, align 4
  %14 = add i32 %.012, %1
  %15 = icmp slt i32 %14, 32000
  br i1 %15, label %7, label %._crit_edge, !llvm.loop !113

._crit_edge:                                      ; preds = %7, %._crit_edge
  %.012.1 = phi i32 [ %22, %._crit_edge ], [ %5, %7 ]
  %16 = sext i32 %.012.1 to i64
  %17 = getelementptr inbounds [4 x i8], ptr @b, i64 %16
  %18 = load float, ptr %17, align 4
  %19 = getelementptr inbounds [4 x i8], ptr @a, i64 %16
  %20 = load float, ptr %19, align 4
  %21 = fadd float %18, %20
  store float %21, ptr %19, align 4
  %22 = add i32 %.012.1, %1
  %23 = icmp slt i32 %22, 32000
  br i1 %23, label %._crit_edge, label %._crit_edge.1, !llvm.loop !113

._crit_edge.1:                                    ; preds = %._crit_edge
  %24 = add nuw nsw i32 %.01113, 2
  %exitcond.not.1 = icmp eq i32 %24, 256
  br i1 %exitcond.not.1, label %.split14, label %.lr.ph, !llvm.loop !114

.split14:                                         ; preds = %._crit_edge.1, %2
  %25 = tail call i32 @clock() #27
  %26 = sub i32 %25, %4
  %27 = sitofp i32 %26 to double
  %28 = fdiv double %27, 1.000000e+06
  %29 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@MOGHPNKL@S172?7?5?$CF?42f?5?7?7?$AA@", double noundef %28) #27
  tail call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s173() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05IBJPAPHG@s173?5?$AA@")
  %2 = tail call i32 @clock() #27
  br label %vector.ph

vector.ph:                                        ; preds = %middle.block, %0
  %.01113 = phi i32 [ 0, %0 ], [ %20, %middle.block ]
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %3 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %index
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %wide.load = load <4 x float>, ptr %3, align 16
  %wide.load16 = load <4 x float>, ptr %4, align 16
  %5 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %index
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %wide.load17 = load <4 x float>, ptr %5, align 16
  %wide.load18 = load <4 x float>, ptr %6, align 16
  %7 = fadd <4 x float> %wide.load, %wide.load17
  %8 = fadd <4 x float> %wide.load16, %wide.load18
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 64000
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 64016
  store <4 x float> %7, ptr %9, align 16
  store <4 x float> %8, ptr %10, align 16
  %index.next = or disjoint i64 %index, 8
  %11 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %index.next
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 16
  %wide.load.1 = load <4 x float>, ptr %11, align 16
  %wide.load16.1 = load <4 x float>, ptr %12, align 16
  %13 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %index.next
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %wide.load17.1 = load <4 x float>, ptr %13, align 16
  %wide.load18.1 = load <4 x float>, ptr %14, align 16
  %15 = fadd <4 x float> %wide.load.1, %wide.load17.1
  %16 = fadd <4 x float> %wide.load16.1, %wide.load18.1
  %17 = getelementptr inbounds nuw i8, ptr %11, i64 64000
  %18 = getelementptr inbounds nuw i8, ptr %11, i64 64016
  store <4 x float> %15, ptr %17, align 16
  store <4 x float> %16, ptr %18, align 16
  %index.next.1 = add nuw nsw i64 %index, 16
  %19 = icmp eq i64 %index.next.1, 16000
  br i1 %19, label %middle.block, label %vector.body, !llvm.loop !115

middle.block:                                     ; preds = %vector.body
  %20 = add nuw nsw i32 %.01113, 1
  %exitcond15.not = icmp eq i32 %20, 2560
  br i1 %exitcond15.not, label %21, label %vector.ph, !llvm.loop !116

21:                                               ; preds = %middle.block
  %22 = tail call i32 @clock() #27
  %23 = sub i32 %22, %2
  %24 = sitofp i32 %23 to double
  %25 = fdiv double %24, 1.000000e+06
  %26 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@POJCCGL@S173?7?5?$CF?42f?5?7?7?$AA@", double noundef %25) #27
  tail call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s174(i32 noundef %0) local_unnamed_addr #11 {
  %2 = tail call i32 @init(ptr noundef nonnull @"??_C@_05IENABJPD@s174?5?$AA@")
  %3 = tail call i32 @clock() #27
  %4 = icmp sgt i32 %0, 0
  br i1 %4, label %.preheader.preheader, label %.split16

.preheader.preheader:                             ; preds = %1
  %5 = zext nneg i32 %0 to i64
  %6 = add nsw i64 %5, -1
  %min.iters.check = icmp ult i32 %0, 8
  %7 = trunc nsw i64 %6 to i32
  %8 = add i32 %0, %7
  %9 = icmp slt i32 %8, %0
  %10 = icmp ugt i64 %6, 4294967295
  %11 = or i1 %9, %10
  %n.vec = and i64 %5, 2147483640
  %cmp.n = icmp eq i64 %n.vec, %5
  %xtraiter = and i64 %5, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %12 = add nsw i64 %5, -1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.01215 = phi i32 [ %53, %._crit_edge ], [ 0, %.preheader.preheader ]
  %brmerge = select i1 %min.iters.check, i1 true, i1 %11
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ]
  %13 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %index
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %wide.load = load <4 x float>, ptr %13, align 16
  %wide.load20 = load <4 x float>, ptr %14, align 16
  %15 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %index
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %wide.load21 = load <4 x float>, ptr %15, align 16
  %wide.load22 = load <4 x float>, ptr %16, align 16
  %17 = fadd <4 x float> %wide.load, %wide.load21
  %18 = fadd <4 x float> %wide.load20, %wide.load22
  %19 = trunc i64 %index to i32
  %20 = add i32 %0, %19
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [4 x i8], ptr @a, i64 %21
  %23 = getelementptr inbounds nuw i8, ptr %22, i64 16
  store <4 x float> %17, ptr %22, align 4
  store <4 x float> %18, ptr %23, align 4
  %index.next = add nuw i64 %index, 8
  %24 = icmp eq i64 %index.next, %n.vec
  br i1 %24, label %middle.block, label %vector.body, !llvm.loop !117

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ]
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %25 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv.ph
  %26 = load float, ptr %25, align 16
  %27 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %indvars.iv.ph
  %28 = load float, ptr %27, align 16
  %29 = fadd float %26, %28
  %30 = trunc nuw nsw i64 %indvars.iv.ph to i32
  %31 = add nuw i32 %0, %30
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [4 x i8], ptr @a, i64 %32
  store float %29, ptr %33, align 4
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %34 = icmp eq i64 %indvars.iv.ph, %12
  br i1 %34, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ]
  %35 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv
  %36 = load float, ptr %35, align 4
  %37 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %indvars.iv
  %38 = load float, ptr %37, align 4
  %39 = fadd float %36, %38
  %40 = trunc i64 %indvars.iv to i32
  %41 = add i32 %0, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [4 x i8], ptr @a, i64 %42
  store float %39, ptr %43, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %44 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv.next
  %45 = load float, ptr %44, align 4
  %46 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %indvars.iv.next
  %47 = load float, ptr %46, align 4
  %48 = fadd float %45, %47
  %49 = trunc i64 %indvars.iv.next to i32
  %50 = add i32 %0, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [4 x i8], ptr @a, i64 %51
  store float %48, ptr %52, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %5
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !118

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %53 = add nuw nsw i32 %.01215, 1
  %exitcond18.not = icmp eq i32 %53, 2560
  br i1 %exitcond18.not, label %.split16, label %.preheader, !llvm.loop !119

.split16:                                         ; preds = %._crit_edge, %1
  %54 = tail call i32 @clock() #27
  %55 = sub i32 %54, %3
  %56 = sitofp i32 %55 to double
  %57 = fdiv double %56, 1.000000e+06
  %58 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@CGNCDHOI@S174?7?5?$CF?42f?5?7?7?$AA@", double noundef %57) #27
  tail call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s175(i32 noundef %0) local_unnamed_addr #11 {
  %2 = tail call i32 @init(ptr noundef nonnull @"??_C@_05IFBCHDME@s175?5?$AA@")
  %3 = tail call i32 @clock() #27
  br label %.preheader

.preheader:                                       ; preds = %1, %15
  %.01214 = phi i32 [ 0, %1 ], [ %16, %15 ]
  br label %4

4:                                                ; preds = %.preheader, %4
  %.013 = phi i32 [ 0, %.preheader ], [ %5, %4 ]
  %5 = add i32 %.013, %0
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [4 x i8], ptr @a, i64 %6
  %8 = load float, ptr %7, align 4
  %9 = sext i32 %.013 to i64
  %10 = getelementptr inbounds [4 x i8], ptr @b, i64 %9
  %11 = load float, ptr %10, align 4
  %12 = fadd float %8, %11
  %13 = getelementptr inbounds [4 x i8], ptr @a, i64 %9
  store float %12, ptr %13, align 4
  %14 = icmp slt i32 %5, 31999
  br i1 %14, label %4, label %15, !llvm.loop !120

15:                                               ; preds = %4
  %16 = add nuw nsw i32 %.01214, 1
  %exitcond.not = icmp eq i32 %16, 256
  br i1 %exitcond.not, label %17, label %.preheader, !llvm.loop !121

17:                                               ; preds = %15
  %18 = tail call i32 @clock() #27
  %19 = sub i32 %18, %3
  %20 = sitofp i32 %19 to double
  %21 = fdiv double %20, 1.000000e+06
  %22 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@OHFMOICI@S175?7?5?$CF?42f?5?7?7?$AA@", double noundef %21) #27
  tail call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s176() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05IHFEMNJN@s176?5?$AA@")
  %2 = tail call i32 @clock() #27
  %3 = tail call i32 @clock() #27
  %4 = sub i32 %3, %2
  %5 = sitofp i32 %4 to double
  %6 = fdiv double %5, 1.000000e+06
  %7 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@HOLOIOCJ@S176?7?5?$CF?42f?5?7?7?$AA@", double noundef %6) #27
  tail call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s211() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05OANAPOBE@s211?5?$AA@")
  %2 = tail call i32 @clock() #27
  br label %.preheader

.preheader:                                       ; preds = %0, %17
  %.01517 = phi i32 [ 0, %0 ], [ %18, %17 ]
  %load_initial = load float, ptr @b, align 16
  br label %3

3:                                                ; preds = %.preheader, %3
  %store_forwarded = phi float [ %load_initial, %.preheader ], [ %16, %3 ]
  %indvars.iv = phi i64 [ 1, %.preheader ], [ %indvars.iv.next, %3 ]
  %4 = getelementptr [4 x i8], ptr @b, i64 %indvars.iv
  %5 = getelementptr inbounds nuw [4 x i8], ptr @c, i64 %indvars.iv
  %6 = load float, ptr %5, align 4
  %7 = getelementptr inbounds nuw [4 x i8], ptr @d, i64 %indvars.iv
  %8 = load float, ptr %7, align 4
  %9 = tail call float @llvm.fmuladd.f32(float %6, float %8, float %store_forwarded)
  %10 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv
  store float %9, ptr %10, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %11 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %indvars.iv.next
  %12 = load float, ptr %11, align 4
  %13 = getelementptr inbounds nuw [4 x i8], ptr @e, i64 %indvars.iv
  %14 = load float, ptr %13, align 4
  %15 = fneg float %14
  %16 = tail call float @llvm.fmuladd.f32(float %15, float %8, float %12)
  store float %16, ptr %4, align 4
  %exitcond.not = icmp eq i64 %indvars.iv.next, 31999
  br i1 %exitcond.not, label %17, label %3, !llvm.loop !122

17:                                               ; preds = %3
  %18 = add nuw nsw i32 %.01517, 1
  %exitcond19.not = icmp eq i32 %18, 256
  br i1 %exitcond19.not, label %19, label %.preheader, !llvm.loop !123

19:                                               ; preds = %17
  %20 = tail call i32 @clock() #27
  %21 = sub i32 %20, %2
  %22 = sitofp i32 %21 to double
  %23 = fdiv double %22, 1.000000e+06
  %24 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@FHCFCIE@S211?7?5?$CF?42f?5?7?7?$AA@", double noundef %23) #27
  tail call void @check(i32 noundef 12)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s212() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05OCJGEAEN@s212?5?$AA@")
  %2 = tail call i32 @clock() #27
  br label %.preheader

.preheader:                                       ; preds = %0, %16
  %.01214 = phi i32 [ 0, %0 ], [ %17, %16 ]
  %.pre = load float, ptr @a, align 16
  br label %3

3:                                                ; preds = %.preheader, %3
  %4 = phi float [ %.pre, %.preheader ], [ %10, %3 ]
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %3 ]
  %5 = getelementptr inbounds nuw [4 x i8], ptr @c, i64 %indvars.iv
  %6 = load float, ptr %5, align 4
  %7 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv
  %8 = fmul float %6, %4
  store float %8, ptr %7, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %9 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv.next
  %10 = load float, ptr %9, align 4
  %11 = getelementptr inbounds nuw [4 x i8], ptr @d, i64 %indvars.iv
  %12 = load float, ptr %11, align 4
  %13 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %indvars.iv
  %14 = load float, ptr %13, align 4
  %15 = tail call float @llvm.fmuladd.f32(float %10, float %12, float %14)
  store float %15, ptr %13, align 4
  %exitcond.not = icmp eq i64 %indvars.iv.next, 31999
  br i1 %exitcond.not, label %16, label %3, !llvm.loop !124

16:                                               ; preds = %3
  %17 = add nuw nsw i32 %.01214, 1
  %exitcond16.not = icmp eq i32 %17, 256
  br i1 %exitcond16.not, label %18, label %.preheader, !llvm.loop !125

18:                                               ; preds = %16
  %19 = tail call i32 @clock() #27
  %20 = sub i32 %19, %2
  %21 = sitofp i32 %20 to double
  %22 = fdiv double %21, 1.000000e+06
  %23 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@JMJADEIF@S212?7?5?$CF?42f?5?7?7?$AA@", double noundef %22) #27
  tail call void @check(i32 noundef 12)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s1213() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05OCJGEAEN@s212?5?$AA@")
  %2 = tail call i32 @clock() #27
  br label %.preheader

.preheader:                                       ; preds = %0, %14
  %.01315 = phi i32 [ 0, %0 ], [ %15, %14 ]
  %load_initial = load float, ptr @b, align 16
  br label %3

3:                                                ; preds = %.preheader, %3
  %store_forwarded = phi float [ %load_initial, %.preheader ], [ %13, %3 ]
  %indvars.iv = phi i64 [ 1, %.preheader ], [ %indvars.iv.next, %3 ]
  %4 = getelementptr [4 x i8], ptr @b, i64 %indvars.iv
  %5 = getelementptr inbounds nuw [4 x i8], ptr @c, i64 %indvars.iv
  %6 = load float, ptr %5, align 4
  %7 = fadd float %store_forwarded, %6
  %8 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv
  store float %7, ptr %8, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %9 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv.next
  %10 = load float, ptr %9, align 4
  %11 = getelementptr inbounds nuw [4 x i8], ptr @d, i64 %indvars.iv
  %12 = load float, ptr %11, align 4
  %13 = fmul float %10, %12
  store float %13, ptr %4, align 4
  %exitcond.not = icmp eq i64 %indvars.iv.next, 31999
  br i1 %exitcond.not, label %14, label %3, !llvm.loop !126

14:                                               ; preds = %3
  %15 = add nuw nsw i32 %.01315, 1
  %exitcond17.not = icmp eq i32 %15, 256
  br i1 %exitcond17.not, label %16, label %.preheader, !llvm.loop !127

16:                                               ; preds = %14
  %17 = tail call i32 @clock() #27
  %18 = sub i32 %17, %2
  %19 = sitofp i32 %18 to double
  %20 = fdiv double %19, 1.000000e+06
  %21 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0P@KJCBFEKK@S1213?7?5?$CF?42f?5?7?7?$AA@", double noundef %20) #27
  tail call void @check(i32 noundef 12)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s221() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05PCGFFBPK@s221?5?$AA@")
  %2 = tail call i32 @clock() #27
  br label %.preheader

.preheader:                                       ; preds = %0, %14
  %.01416 = phi i32 [ 0, %0 ], [ %15, %14 ]
  %load_initial = load float, ptr @b, align 16
  br label %3

3:                                                ; preds = %.preheader, %3
  %store_forwarded = phi float [ %load_initial, %.preheader ], [ %13, %3 ]
  %indvars.iv = phi i64 [ 1, %.preheader ], [ %indvars.iv.next, %3 ]
  %4 = getelementptr inbounds nuw [4 x i8], ptr @c, i64 %indvars.iv
  %5 = load float, ptr %4, align 4
  %6 = getelementptr inbounds nuw [4 x i8], ptr @d, i64 %indvars.iv
  %7 = load float, ptr %6, align 4
  %8 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv
  %9 = load float, ptr %8, align 4
  %10 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %9)
  store float %10, ptr %8, align 4
  %11 = getelementptr [4 x i8], ptr @b, i64 %indvars.iv
  %12 = fadd float %10, %store_forwarded
  %13 = fadd float %7, %12
  store float %13, ptr %11, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32000
  br i1 %exitcond.not, label %14, label %3, !llvm.loop !128

14:                                               ; preds = %3
  %15 = add nuw nsw i32 %.01416, 1
  %exitcond18.not = icmp eq i32 %15, 128
  br i1 %exitcond18.not, label %16, label %.preheader, !llvm.loop !129

16:                                               ; preds = %14
  %17 = tail call i32 @clock() #27
  %18 = sub i32 %17, %2
  %19 = sitofp i32 %18 to double
  %20 = fdiv double %19, 1.000000e+06
  %21 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@HCOMIAHE@S221?7?5?$CF?42f?5?7?7?$AA@", double noundef %20) #27
  tail call void @check(i32 noundef 12)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s1221() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05PCGFFBPK@s221?5?$AA@")
  %2 = tail call i32 @clock() #27
  br label %vector.ph

vector.ph:                                        ; preds = %middle.block, %0
  %.01012 = phi i32 [ 0, %0 ], [ %12, %middle.block ]
  %load_initial = load <4 x float>, ptr @b, align 16
  br label %vector.body

vector.body:                                      ; preds = %vector.body.1, %vector.ph
  %store_forwarded = phi <4 x float> [ %load_initial, %vector.ph ], [ %11, %vector.body.1 ]
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body.1 ]
  %3 = or disjoint i64 %index, 4
  %4 = getelementptr [4 x i8], ptr @b, i64 %3
  %5 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %3
  %wide.load15 = load <4 x float>, ptr %5, align 16
  %6 = fadd <4 x float> %store_forwarded, %wide.load15
  store <4 x float> %6, ptr %4, align 16
  %7 = icmp eq i64 %index, 31992
  br i1 %7, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.body
  %8 = add nuw nsw i64 %index, 8
  %9 = getelementptr [4 x i8], ptr @b, i64 %8
  %10 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %8
  %wide.load15.1 = load <4 x float>, ptr %10, align 16
  %11 = fadd <4 x float> %6, %wide.load15.1
  store <4 x float> %11, ptr %9, align 16
  %index.next.1 = add nuw nsw i64 %index, 8
  br label %vector.body

middle.block:                                     ; preds = %vector.body
  %12 = add nuw nsw i32 %.01012, 1
  %exitcond14.not = icmp eq i32 %12, 256
  br i1 %exitcond14.not, label %13, label %vector.ph, !llvm.loop !130

13:                                               ; preds = %middle.block
  %14 = tail call i32 @clock() #27
  %15 = sub i32 %14, %2
  %16 = sitofp i32 %15 to double
  %17 = fdiv double %16, 1.000000e+06
  %18 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0P@IGNDDPJL@S1221?7?5?$CF?42f?5?7?7?$AA@", double noundef %17) #27
  tail call void @check(i32 noundef 12)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s222() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05PACDOPKD@s222?5?$AA@")
  %2 = tail call i32 @clock() #27
  br label %.preheader

.preheader:                                       ; preds = %0, %15
  %.01618 = phi i32 [ 0, %0 ], [ %16, %15 ]
  %load_initial = load float, ptr @e, align 16
  br label %3

3:                                                ; preds = %.preheader, %3
  %store_forwarded = phi float [ %load_initial, %.preheader ], [ %12, %3 ]
  %indvars.iv = phi i64 [ 1, %.preheader ], [ %indvars.iv.next, %3 ]
  %4 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %indvars.iv
  %5 = load float, ptr %4, align 4
  %6 = getelementptr inbounds nuw [4 x i8], ptr @c, i64 %indvars.iv
  %7 = load float, ptr %6, align 4
  %8 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv
  %9 = load float, ptr %8, align 4
  %10 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %9)
  %11 = getelementptr [4 x i8], ptr @e, i64 %indvars.iv
  %12 = fmul float %store_forwarded, %store_forwarded
  store float %12, ptr %11, align 4
  %13 = fneg float %5
  %14 = tail call float @llvm.fmuladd.f32(float %13, float %7, float %10)
  store float %14, ptr %8, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32000
  br i1 %exitcond.not, label %15, label %3, !llvm.loop !131

15:                                               ; preds = %3
  %16 = add nuw nsw i32 %.01618, 1
  %exitcond20.not = icmp eq i32 %16, 128
  br i1 %exitcond20.not, label %17, label %.preheader, !llvm.loop !132

17:                                               ; preds = %15
  %18 = tail call i32 @clock() #27
  %19 = sub i32 %18, %2
  %20 = sitofp i32 %19 to double
  %21 = fdiv double %20, 1.000000e+06
  %22 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@OLAOOGHF@S222?7?5?$CF?42f?5?7?7?$AA@", double noundef %21) #27
  tail call void @check(i32 noundef 12)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s231() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05EKNJDGJP@s231?5?$AA@")
  %2 = tail call i32 @clock() #27
  br label %.preheader17

.preheader17:                                     ; preds = %0, %26
  %.01620 = phi i32 [ 0, %0 ], [ %27, %26 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader17, %25
  %indvars.iv22 = phi i64 [ 0, %.preheader17 ], [ %indvars.iv.next23, %25 ]
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr @bb, i64 %indvars.iv22
  br label %3

3:                                                ; preds = %3, %.preheader
  %indvars.iv = phi i64 [ 1, %.preheader ], [ %indvars.iv.next.2, %3 ]
  %4 = getelementptr [1024 x i8], ptr @aa, i64 %indvars.iv
  %5 = getelementptr i8, ptr %4, i64 -1024
  %6 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv22
  %7 = load float, ptr %6, align 4
  %gep = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep, i64 %indvars.iv
  %8 = load float, ptr %gep, align 4
  %9 = fadd float %7, %8
  %10 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv22
  store float %9, ptr %10, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %11 = getelementptr [1024 x i8], ptr @aa, i64 %indvars.iv.next
  %12 = getelementptr i8, ptr %11, i64 -1024
  %13 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %indvars.iv22
  %14 = load float, ptr %13, align 4
  %gep.1 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %15 = load float, ptr %gep.1, align 4
  %16 = fadd float %14, %15
  %17 = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv22
  store float %16, ptr %17, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %18 = getelementptr [1024 x i8], ptr @aa, i64 %indvars.iv.next.1
  %19 = getelementptr i8, ptr %18, i64 -1024
  %20 = getelementptr inbounds nuw [4 x i8], ptr %19, i64 %indvars.iv22
  %21 = load float, ptr %20, align 4
  %gep.2 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep, i64 %indvars.iv.next.1
  %22 = load float, ptr %gep.2, align 4
  %23 = fadd float %21, %22
  %24 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %indvars.iv22
  store float %23, ptr %24, align 4
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3
  %exitcond.not.2 = icmp eq i64 %indvars.iv.next.2, 256
  br i1 %exitcond.not.2, label %25, label %3, !llvm.loop !133

25:                                               ; preds = %3
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  %exitcond25.not = icmp eq i64 %indvars.iv.next23, 256
  br i1 %exitcond25.not, label %26, label %.preheader, !llvm.loop !134

26:                                               ; preds = %25
  %27 = add nuw nsw i32 %.01620, 1
  %exitcond26.not = icmp eq i32 %27, 100
  br i1 %exitcond26.not, label %28, label %.preheader17, !llvm.loop !135

28:                                               ; preds = %26
  %29 = tail call i32 @clock() #27
  %30 = sub i32 %29, %2
  %31 = sitofp i32 %30 to double
  %32 = fdiv double %31, 1.000000e+06
  %33 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@OJEJMMBL@S231?7?5?$CF?42f?5?7?7?$AA@", double noundef %32) #27
  tail call void @check(i32 noundef 11)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s232() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05EIJPIIMG@s232?5?$AA@")
  %2 = tail call i32 @clock() #27
  br label %.preheader20

.preheader20:                                     ; preds = %0, %29
  %.01923 = phi i32 [ 0, %0 ], [ %30, %29 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader20, %.epilog-lcssa
  %indvar = phi i64 [ 0, %.preheader20 ], [ %indvar.next, %.epilog-lcssa ]
  %indvars.iv29 = phi i64 [ 1, %.preheader20 ], [ %indvars.iv.next30, %.epilog-lcssa ]
  %3 = add i64 %indvar, 1
  %4 = getelementptr inbounds nuw [1024 x i8], ptr @aa, i64 %indvars.iv29
  %5 = getelementptr inbounds nuw [1024 x i8], ptr @bb, i64 %indvars.iv29
  %load_initial = load float, ptr %4, align 16
  %xtraiter = and i64 %3, 3
  %6 = icmp ult i64 %indvar, 3
  br i1 %6, label %.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader
  %unroll_iter = and i64 %3, -4
  br label %7

7:                                                ; preds = %7, %.preheader.new
  %store_forwarded = phi float [ %load_initial, %.preheader.new ], [ %23, %7 ]
  %indvars.iv = phi i64 [ 1, %.preheader.new ], [ %indvars.iv.next.3, %7 ]
  %niter = phi i64 [ 0, %.preheader.new ], [ %niter.next.3, %7 ]
  %8 = getelementptr [4 x i8], ptr %4, i64 %indvars.iv
  %9 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv
  %10 = load float, ptr %9, align 4
  %11 = tail call float @llvm.fmuladd.f32(float %store_forwarded, float %store_forwarded, float %10)
  store float %11, ptr %8, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %12 = getelementptr [4 x i8], ptr %4, i64 %indvars.iv.next
  %13 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.next
  %14 = load float, ptr %13, align 4
  %15 = tail call float @llvm.fmuladd.f32(float %11, float %11, float %14)
  store float %15, ptr %12, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %16 = getelementptr [4 x i8], ptr %4, i64 %indvars.iv.next.1
  %17 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.next.1
  %18 = load float, ptr %17, align 4
  %19 = tail call float @llvm.fmuladd.f32(float %15, float %15, float %18)
  store float %19, ptr %16, align 4
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3
  %20 = getelementptr [4 x i8], ptr %4, i64 %indvars.iv.next.2
  %21 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.next.2
  %22 = load float, ptr %21, align 4
  %23 = tail call float @llvm.fmuladd.f32(float %19, float %19, float %22)
  store float %23, ptr %20, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %niter.next.3 = add nuw i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %7, !llvm.loop !136

.unr-lcssa:                                       ; preds = %7
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader
  %store_forwarded.epil.init = phi float [ %load_initial, %.preheader ], [ %23, %.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ 1, %.preheader ], [ %indvars.iv.next.3, %.unr-lcssa ]
  %lcmp.mod36 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod36)
  br label %24

24:                                               ; preds = %24, %.epil.preheader
  %store_forwarded.epil = phi float [ %store_forwarded.epil.init, %.epil.preheader ], [ %28, %24 ]
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %24 ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %24 ]
  %25 = getelementptr [4 x i8], ptr %4, i64 %indvars.iv.epil
  %26 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.epil
  %27 = load float, ptr %26, align 4
  %28 = tail call float @llvm.fmuladd.f32(float %store_forwarded.epil, float %store_forwarded.epil, float %27)
  store float %28, ptr %25, align 4
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %24, !llvm.loop !137

.epilog-lcssa:                                    ; preds = %24, %.unr-lcssa
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  %exitcond34.not = icmp eq i64 %indvars.iv.next30, 256
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond34.not, label %29, label %.preheader, !llvm.loop !139

29:                                               ; preds = %.epilog-lcssa
  %30 = add nuw nsw i32 %.01923, 1
  %exitcond35.not = icmp eq i32 %30, 100
  br i1 %exitcond35.not, label %31, label %.preheader20, !llvm.loop !140

31:                                               ; preds = %29
  %32 = tail call i32 @clock() #27
  %33 = sub i32 %32, %2
  %34 = sitofp i32 %33 to double
  %35 = fdiv double %34, 1.000000e+06
  %36 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@HAKLKKBK@S232?7?5?$CF?42f?5?7?7?$AA@", double noundef %35) #27
  tail call void @check(i32 noundef 11)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s1232() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05EIJPIIMG@s232?5?$AA@")
  %2 = tail call i32 @clock() #27
  br label %.preheader18

.preheader18:                                     ; preds = %0, %13
  %.01725 = phi i32 [ 0, %0 ], [ %14, %13 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader18, %.unr-lcssa
  %indvars.iv = phi i64 [ 0, %.preheader18 ], [ %indvars.iv.next, %.unr-lcssa ]
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr @bb, i64 %indvars.iv
  %invariant.gep20 = getelementptr inbounds nuw [4 x i8], ptr @cc, i64 %indvars.iv
  %invariant.gep22 = getelementptr inbounds nuw [4 x i8], ptr @aa, i64 %indvars.iv
  %xtraiter = and i64 %indvars.iv, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.preheader
  %gep.prol = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep, i64 %indvars.iv
  %3 = load float, ptr %gep.prol, align 4
  %gep21.prol = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep20, i64 %indvars.iv
  %4 = load float, ptr %gep21.prol, align 4
  %5 = fadd float %3, %4
  %gep23.prol = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep22, i64 %indvars.iv
  store float %5, ptr %gep23.prol, align 4
  %indvars.iv.next27.prol = add nuw nsw i64 %indvars.iv, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.preheader
  %indvars.iv26.unr = phi i64 [ %indvars.iv, %.preheader ], [ %indvars.iv.next27.prol, %.prol.loopexit.unr-lcssa ]
  %6 = icmp eq i64 %indvars.iv, 255
  br i1 %6, label %.unr-lcssa, label %.preheader.new

.preheader.new:                                   ; preds = %.prol.loopexit, %.preheader.new
  %indvars.iv26 = phi i64 [ %indvars.iv.next27.1, %.preheader.new ], [ %indvars.iv26.unr, %.prol.loopexit ]
  %gep = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep, i64 %indvars.iv26
  %7 = load float, ptr %gep, align 4
  %gep21 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep20, i64 %indvars.iv26
  %8 = load float, ptr %gep21, align 4
  %9 = fadd float %7, %8
  %gep23 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep22, i64 %indvars.iv26
  store float %9, ptr %gep23, align 4
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  %gep.1 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep, i64 %indvars.iv.next27
  %10 = load float, ptr %gep.1, align 4
  %gep21.1 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep20, i64 %indvars.iv.next27
  %11 = load float, ptr %gep21.1, align 4
  %12 = fadd float %10, %11
  %gep23.1 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep22, i64 %indvars.iv.next27
  store float %12, ptr %gep23.1, align 4
  %indvars.iv.next27.1 = add nuw nsw i64 %indvars.iv26, 2
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next27.1, 256
  br i1 %exitcond.not.1, label %.unr-lcssa, label %.preheader.new, !llvm.loop !141

.unr-lcssa:                                       ; preds = %.preheader.new, %.prol.loopexit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond30.not = icmp eq i64 %indvars.iv.next, 256
  br i1 %exitcond30.not, label %13, label %.preheader, !llvm.loop !142

13:                                               ; preds = %.unr-lcssa
  %14 = add nuw nsw i32 %.01725, 1
  %exitcond31.not = icmp eq i32 %14, 100
  br i1 %exitcond31.not, label %15, label %.preheader18, !llvm.loop !143

15:                                               ; preds = %13
  %16 = tail call i32 @clock() #27
  %17 = sub i32 %16, %2
  %18 = sitofp i32 %17 to double
  %19 = fdiv double %18, 1.000000e+06
  %20 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0P@IEJEBFPF@S1232?7?5?$CF?42f?5?7?7?$AA@", double noundef %19) #27
  tail call void @check(i32 noundef 11)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s233() #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05EJFNOCPB@s233?5?$AA@")
  %2 = tail call i32 @clock() #27
  br label %.preheader27

.preheader27:                                     ; preds = %0, %39
  %.02535 = phi i32 [ 0, %0 ], [ %40, %39 ]
  br label %.preheader26

.preheader26:                                     ; preds = %.preheader27, %38
  %indvars.iv41 = phi i64 [ 1, %.preheader27 ], [ %indvars.iv.next42, %38 ]
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr @cc, i64 %indvars.iv41
  br label %3

.preheader:                                       ; preds = %3
  %invariant.gep29 = getelementptr [4 x i8], ptr @bb, i64 %indvars.iv41
  br label %25

3:                                                ; preds = %3, %.preheader26
  %indvars.iv = phi i64 [ 1, %.preheader26 ], [ %indvars.iv.next.2, %3 ]
  %4 = getelementptr [1024 x i8], ptr @aa, i64 %indvars.iv
  %5 = getelementptr i8, ptr %4, i64 -1024
  %6 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv41
  %7 = load float, ptr %6, align 4
  %gep = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep, i64 %indvars.iv
  %8 = load float, ptr %gep, align 4
  %9 = fadd float %7, %8
  %10 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv41
  store float %9, ptr %10, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %11 = getelementptr [1024 x i8], ptr @aa, i64 %indvars.iv.next
  %12 = getelementptr i8, ptr %11, i64 -1024
  %13 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %indvars.iv41
  %14 = load float, ptr %13, align 4
  %gep.1 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %15 = load float, ptr %gep.1, align 4
  %16 = fadd float %14, %15
  %17 = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv41
  store float %16, ptr %17, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %18 = getelementptr [1024 x i8], ptr @aa, i64 %indvars.iv.next.1
  %19 = getelementptr i8, ptr %18, i64 -1024
  %20 = getelementptr inbounds nuw [4 x i8], ptr %19, i64 %indvars.iv41
  %21 = load float, ptr %20, align 4
  %gep.2 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep, i64 %indvars.iv.next.1
  %22 = load float, ptr %gep.2, align 4
  %23 = fadd float %21, %22
  %24 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %indvars.iv41
  store float %23, ptr %24, align 4
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3
  %exitcond.not.2 = icmp eq i64 %indvars.iv.next.2, 256
  br i1 %exitcond.not.2, label %.preheader, label %3, !llvm.loop !144

25:                                               ; preds = %25, %.preheader
  %indvars.iv37 = phi i64 [ 1, %.preheader ], [ %indvars.iv.next38.2, %25 ]
  %gep30 = getelementptr [1024 x i8], ptr %invariant.gep29, i64 %indvars.iv37
  %26 = getelementptr i8, ptr %gep30, i64 -4
  %27 = load float, ptr %26, align 4
  %gep32 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep, i64 %indvars.iv37
  %28 = load float, ptr %gep32, align 4
  %29 = fadd float %27, %28
  store float %29, ptr %gep30, align 4
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1
  %gep30.1 = getelementptr [1024 x i8], ptr %invariant.gep29, i64 %indvars.iv.next38
  %30 = getelementptr i8, ptr %gep30.1, i64 -4
  %31 = load float, ptr %30, align 4
  %gep32.1 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep, i64 %indvars.iv.next38
  %32 = load float, ptr %gep32.1, align 4
  %33 = fadd float %31, %32
  store float %33, ptr %gep30.1, align 4
  %indvars.iv.next38.1 = add nuw nsw i64 %indvars.iv37, 2
  %gep30.2 = getelementptr [1024 x i8], ptr %invariant.gep29, i64 %indvars.iv.next38.1
  %34 = getelementptr i8, ptr %gep30.2, i64 -4
  %35 = load float, ptr %34, align 4
  %gep32.2 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep, i64 %indvars.iv.next38.1
  %36 = load float, ptr %gep32.2, align 4
  %37 = fadd float %35, %36
  store float %37, ptr %gep30.2, align 4
  %indvars.iv.next38.2 = add nuw nsw i64 %indvars.iv37, 3
  %exitcond40.not.2 = icmp eq i64 %indvars.iv.next38.2, 256
  br i1 %exitcond40.not.2, label %38, label %25, !llvm.loop !145

38:                                               ; preds = %25
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  %exitcond44.not = icmp eq i64 %indvars.iv.next42, 256
  br i1 %exitcond44.not, label %39, label %.preheader26, !llvm.loop !146

39:                                               ; preds = %38
  %40 = add nuw nsw i32 %.02535, 1
  %exitcond45.not = icmp eq i32 %40, 100
  br i1 %exitcond45.not, label %41, label %.preheader27, !llvm.loop !147

41:                                               ; preds = %39
  %42 = tail call i32 @clock() #27
  %43 = sub i32 %42, %2
  %44 = sitofp i32 %43 to double
  %45 = fdiv double %44, 1.000000e+06
  %46 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@LBCFHFNK@S233?7?5?$CF?42f?5?7?7?$AA@", double noundef %45) #27
  tail call void @check(i32 noundef 1122)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s2233() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05EJFNOCPB@s233?5?$AA@")
  %2 = tail call i32 @clock() #27
  br label %.preheader27

.preheader27:                                     ; preds = %0, %89
  %.02531 = phi i32 [ 0, %0 ], [ %90, %89 ]
  br label %.preheader26

.preheader26:                                     ; preds = %.preheader27, %scalar.ph
  %indvars.iv37 = phi i64 [ 1, %.preheader27 ], [ %indvars.iv.next38, %scalar.ph ]
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr @cc, i64 %indvars.iv37
  br label %25

.preheader:                                       ; preds = %25
  %3 = getelementptr [1024 x i8], ptr @bb, i64 %indvars.iv37
  %4 = getelementptr i8, ptr %3, i64 -1024
  %5 = getelementptr inbounds nuw [1024 x i8], ptr @cc, i64 %indvars.iv37
  br label %vector.body

vector.body:                                      ; preds = %vector.body.1, %.preheader
  %index = phi i64 [ 0, %.preheader ], [ %index.next.1, %vector.body.1 ]
  %6 = or disjoint i64 %index, 1
  %7 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %6
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %wide.load = load <4 x float>, ptr %7, align 4
  %wide.load42 = load <4 x float>, ptr %8, align 4
  %9 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %6
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %wide.load43 = load <4 x float>, ptr %9, align 4
  %wide.load44 = load <4 x float>, ptr %10, align 4
  %11 = fadd <4 x float> %wide.load, %wide.load43
  %12 = fadd <4 x float> %wide.load42, %wide.load44
  %13 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %6
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 16
  store <4 x float> %11, ptr %13, align 4
  store <4 x float> %12, ptr %14, align 4
  %15 = icmp eq i64 %index, 240
  br i1 %15, label %scalar.ph, label %vector.body.1

vector.body.1:                                    ; preds = %vector.body
  %16 = or disjoint i64 %index, 9
  %17 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %16
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 16
  %wide.load.1 = load <4 x float>, ptr %17, align 4
  %wide.load42.1 = load <4 x float>, ptr %18, align 4
  %19 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %16
  %20 = getelementptr inbounds nuw i8, ptr %19, i64 16
  %wide.load43.1 = load <4 x float>, ptr %19, align 4
  %wide.load44.1 = load <4 x float>, ptr %20, align 4
  %21 = fadd <4 x float> %wide.load.1, %wide.load43.1
  %22 = fadd <4 x float> %wide.load42.1, %wide.load44.1
  %23 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %16
  %24 = getelementptr inbounds nuw i8, ptr %23, i64 16
  store <4 x float> %21, ptr %23, align 4
  store <4 x float> %22, ptr %24, align 4
  %index.next.1 = add nuw nsw i64 %index, 16
  br label %vector.body

25:                                               ; preds = %25, %.preheader26
  %indvars.iv = phi i64 [ 1, %.preheader26 ], [ %indvars.iv.next.2, %25 ]
  %26 = getelementptr [1024 x i8], ptr @aa, i64 %indvars.iv
  %27 = getelementptr i8, ptr %26, i64 -1024
  %28 = getelementptr inbounds nuw [4 x i8], ptr %27, i64 %indvars.iv37
  %29 = load float, ptr %28, align 4
  %gep = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep, i64 %indvars.iv
  %30 = load float, ptr %gep, align 4
  %31 = fadd float %29, %30
  %32 = getelementptr inbounds nuw [4 x i8], ptr %26, i64 %indvars.iv37
  store float %31, ptr %32, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %33 = getelementptr [1024 x i8], ptr @aa, i64 %indvars.iv.next
  %34 = getelementptr i8, ptr %33, i64 -1024
  %35 = getelementptr inbounds nuw [4 x i8], ptr %34, i64 %indvars.iv37
  %36 = load float, ptr %35, align 4
  %gep.1 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %37 = load float, ptr %gep.1, align 4
  %38 = fadd float %36, %37
  %39 = getelementptr inbounds nuw [4 x i8], ptr %33, i64 %indvars.iv37
  store float %38, ptr %39, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %40 = getelementptr [1024 x i8], ptr @aa, i64 %indvars.iv.next.1
  %41 = getelementptr i8, ptr %40, i64 -1024
  %42 = getelementptr inbounds nuw [4 x i8], ptr %41, i64 %indvars.iv37
  %43 = load float, ptr %42, align 4
  %gep.2 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep, i64 %indvars.iv.next.1
  %44 = load float, ptr %gep.2, align 4
  %45 = fadd float %43, %44
  %46 = getelementptr inbounds nuw [4 x i8], ptr %40, i64 %indvars.iv37
  store float %45, ptr %46, align 4
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3
  %exitcond.not.2 = icmp eq i64 %indvars.iv.next.2, 256
  br i1 %exitcond.not.2, label %.preheader, label %25, !llvm.loop !148

scalar.ph:                                        ; preds = %vector.body
  %47 = getelementptr i8, ptr %3, i64 -28
  %48 = load float, ptr %47, align 4
  %49 = getelementptr inbounds nuw i8, ptr %5, i64 996
  %50 = load float, ptr %49, align 4
  %51 = fadd float %48, %50
  %52 = getelementptr inbounds nuw i8, ptr %3, i64 996
  store float %51, ptr %52, align 4
  %53 = getelementptr i8, ptr %3, i64 -24
  %54 = load float, ptr %53, align 8
  %55 = getelementptr inbounds nuw i8, ptr %5, i64 1000
  %56 = load float, ptr %55, align 8
  %57 = fadd float %54, %56
  %58 = getelementptr inbounds nuw i8, ptr %3, i64 1000
  store float %57, ptr %58, align 8
  %59 = getelementptr i8, ptr %3, i64 -20
  %60 = load float, ptr %59, align 4
  %61 = getelementptr inbounds nuw i8, ptr %5, i64 1004
  %62 = load float, ptr %61, align 4
  %63 = fadd float %60, %62
  %64 = getelementptr inbounds nuw i8, ptr %3, i64 1004
  store float %63, ptr %64, align 4
  %65 = getelementptr i8, ptr %3, i64 -16
  %66 = load float, ptr %65, align 16
  %67 = getelementptr inbounds nuw i8, ptr %5, i64 1008
  %68 = load float, ptr %67, align 16
  %69 = fadd float %66, %68
  %70 = getelementptr inbounds nuw i8, ptr %3, i64 1008
  store float %69, ptr %70, align 16
  %71 = getelementptr i8, ptr %3, i64 -12
  %72 = load float, ptr %71, align 4
  %73 = getelementptr inbounds nuw i8, ptr %5, i64 1012
  %74 = load float, ptr %73, align 4
  %75 = fadd float %72, %74
  %76 = getelementptr inbounds nuw i8, ptr %3, i64 1012
  store float %75, ptr %76, align 4
  %77 = getelementptr i8, ptr %3, i64 -8
  %78 = load float, ptr %77, align 8
  %79 = getelementptr inbounds nuw i8, ptr %5, i64 1016
  %80 = load float, ptr %79, align 8
  %81 = fadd float %78, %80
  %82 = getelementptr inbounds nuw i8, ptr %3, i64 1016
  store float %81, ptr %82, align 8
  %83 = getelementptr i8, ptr %3, i64 -4
  %84 = load float, ptr %83, align 4
  %85 = getelementptr inbounds nuw i8, ptr %5, i64 1020
  %86 = load float, ptr %85, align 4
  %87 = fadd float %84, %86
  %88 = getelementptr inbounds nuw i8, ptr %3, i64 1020
  store float %87, ptr %88, align 4
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1
  %exitcond40.not = icmp eq i64 %indvars.iv.next38, 256
  br i1 %exitcond40.not, label %89, label %.preheader26, !llvm.loop !149

89:                                               ; preds = %scalar.ph
  %90 = add nuw nsw i32 %.02531, 1
  %exitcond41.not = icmp eq i32 %90, 100
  br i1 %exitcond41.not, label %91, label %.preheader27, !llvm.loop !150

91:                                               ; preds = %89
  %92 = tail call i32 @clock() #27
  %93 = sub i32 %92, %2
  %94 = sitofp i32 %93 to double
  %95 = fdiv double %94, 1.000000e+06
  %96 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0P@DJHLOPOO@S2233?7?5?$CF?42f?5?7?7?$AA@", double noundef %95) #27
  tail call void @check(i32 noundef 1122)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s235() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05ENNAJOED@s235?5?$AA@")
  %2 = tail call i32 @clock() #27
  br label %.preheader

.preheader:                                       ; preds = %0, %28
  %.02023 = phi i32 [ 0, %0 ], [ %29, %28 ]
  br label %3

3:                                                ; preds = %.preheader, %27
  %indvars.iv25 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next26, %27 ]
  %4 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %indvars.iv25
  %5 = load float, ptr %4, align 4
  %6 = getelementptr inbounds nuw [4 x i8], ptr @c, i64 %indvars.iv25
  %7 = load float, ptr %6, align 4
  %8 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv25
  %9 = load float, ptr %8, align 4
  %10 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %9)
  store float %10, ptr %8, align 4
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr @bb, i64 %indvars.iv25
  br label %11

11:                                               ; preds = %19, %3
  %indvars.iv = phi i64 [ 1, %3 ], [ %indvars.iv.next.1, %19 ]
  %12 = getelementptr [1024 x i8], ptr @aa, i64 %indvars.iv
  %13 = getelementptr i8, ptr %12, i64 -1024
  %14 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %indvars.iv25
  %15 = load float, ptr %14, align 4
  %gep = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep, i64 %indvars.iv
  %16 = load float, ptr %gep, align 4
  %17 = tail call float @llvm.fmuladd.f32(float %16, float %10, float %15)
  %18 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %indvars.iv25
  store float %17, ptr %18, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 256
  br i1 %exitcond.not, label %27, label %19

19:                                               ; preds = %11
  %20 = getelementptr [1024 x i8], ptr @aa, i64 %indvars.iv.next
  %21 = getelementptr i8, ptr %20, i64 -1024
  %22 = getelementptr inbounds nuw [4 x i8], ptr %21, i64 %indvars.iv25
  %23 = load float, ptr %22, align 4
  %gep.1 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %24 = load float, ptr %gep.1, align 4
  %25 = tail call float @llvm.fmuladd.f32(float %24, float %10, float %23)
  %26 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %indvars.iv25
  store float %25, ptr %26, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  br label %11

27:                                               ; preds = %11
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  %exitcond28.not = icmp eq i64 %indvars.iv.next26, 256
  br i1 %exitcond28.not, label %28, label %3, !llvm.loop !151

28:                                               ; preds = %27
  %29 = add nuw nsw i32 %.02023, 1
  %exitcond29.not = icmp eq i32 %29, 200
  br i1 %exitcond29.not, label %30, label %.preheader, !llvm.loop !152

30:                                               ; preds = %28
  %31 = tail call i32 @clock() #27
  %32 = sub i32 %31, %2
  %33 = sitofp i32 %32 to double
  %34 = fdiv double %33, 1.000000e+06
  %35 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@FJJALPJJ@S235?7?5?$CF?42f?5?7?7?$AA@", double noundef %34) #27
  tail call void @check(i32 noundef 111)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s241() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05NHAOAOCG@s241?5?$AA@")
  %2 = tail call i32 @clock() #27
  br label %.preheader

.preheader:                                       ; preds = %0, %17
  %.01517 = phi i32 [ 0, %0 ], [ %18, %17 ]
  br label %3

3:                                                ; preds = %.preheader, %3
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %3 ]
  %4 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %indvars.iv
  %5 = load float, ptr %4, align 4
  %6 = getelementptr inbounds nuw [4 x i8], ptr @c, i64 %indvars.iv
  %7 = load float, ptr %6, align 4
  %8 = fmul float %5, %7
  %9 = getelementptr inbounds nuw [4 x i8], ptr @d, i64 %indvars.iv
  %10 = load float, ptr %9, align 4
  %11 = fmul float %8, %10
  %12 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv
  store float %11, ptr %12, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %13 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv.next
  %14 = load float, ptr %13, align 4
  %15 = fmul float %11, %14
  %16 = fmul float %10, %15
  store float %16, ptr %4, align 4
  %exitcond.not = icmp eq i64 %indvars.iv.next, 31999
  br i1 %exitcond.not, label %17, label %3, !llvm.loop !153

17:                                               ; preds = %3
  %18 = add nuw nsw i32 %.01517, 1
  %exitcond19.not = icmp eq i32 %18, 512
  br i1 %exitcond19.not, label %19, label %.preheader, !llvm.loop !154

19:                                               ; preds = %17
  %20 = tail call i32 @clock() #27
  %21 = sub i32 %20, %2
  %22 = sitofp i32 %21 to double
  %23 = fdiv double %22, 1.000000e+06
  %24 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@JNNBCFJE@S241?7?5?$CF?42f?5?7?7?$AA@", double noundef %23) #27
  tail call void @check(i32 noundef 12)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s242(float noundef %0, float noundef %1) local_unnamed_addr #11 {
  %3 = tail call i32 @init(ptr noundef nonnull @"??_C@_05NFEILAHP@s242?5?$AA@")
  %4 = tail call i32 @clock() #27
  br label %.preheader

.preheader:                                       ; preds = %2, %18
  %.01416 = phi i32 [ 0, %2 ], [ %19, %18 ]
  %load_initial = load float, ptr @a, align 16
  br label %5

5:                                                ; preds = %.preheader, %5
  %store_forwarded = phi float [ %load_initial, %.preheader ], [ %17, %5 ]
  %indvars.iv = phi i64 [ 1, %.preheader ], [ %indvars.iv.next, %5 ]
  %6 = getelementptr [4 x i8], ptr @a, i64 %indvars.iv
  %7 = fadd float %0, %store_forwarded
  %8 = fadd float %1, %7
  %9 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %indvars.iv
  %10 = load float, ptr %9, align 4
  %11 = fadd float %10, %8
  %12 = getelementptr inbounds nuw [4 x i8], ptr @c, i64 %indvars.iv
  %13 = load float, ptr %12, align 4
  %14 = fadd float %13, %11
  %15 = getelementptr inbounds nuw [4 x i8], ptr @d, i64 %indvars.iv
  %16 = load float, ptr %15, align 4
  %17 = fadd float %16, %14
  store float %17, ptr %6, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32000
  br i1 %exitcond.not, label %18, label %5, !llvm.loop !155

18:                                               ; preds = %5
  %19 = add nuw nsw i32 %.01416, 1
  %exitcond18.not = icmp eq i32 %19, 51
  br i1 %exitcond18.not, label %20, label %.preheader, !llvm.loop !156

20:                                               ; preds = %18
  %21 = tail call i32 @clock() #27
  %22 = sub i32 %21, %4
  %23 = sitofp i32 %22 to double
  %24 = fdiv double %23, 1.000000e+06
  %25 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@EDDEDJF@S242?7?5?$CF?42f?5?7?7?$AA@", double noundef %24) #27
  tail call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s243() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05NEIKNKEI@s243?5?$AA@")
  %2 = tail call i32 @clock() #27
  %3 = load float, ptr getelementptr inbounds nuw (i8, ptr @c, i64 127984), align 16
  %4 = load float, ptr getelementptr inbounds nuw (i8, ptr @d, i64 127984), align 16
  %5 = load float, ptr getelementptr inbounds nuw (i8, ptr @e, i64 127984), align 16
  %6 = load float, ptr getelementptr inbounds nuw (i8, ptr @c, i64 127988), align 4
  %7 = load float, ptr getelementptr inbounds nuw (i8, ptr @d, i64 127988), align 4
  %8 = load float, ptr getelementptr inbounds nuw (i8, ptr @e, i64 127988), align 4
  %9 = load float, ptr getelementptr inbounds nuw (i8, ptr @c, i64 127992), align 8
  %10 = load float, ptr getelementptr inbounds nuw (i8, ptr @d, i64 127992), align 8
  %11 = load float, ptr getelementptr inbounds nuw (i8, ptr @e, i64 127992), align 8
  br label %vector.ph

vector.ph:                                        ; preds = %scalar.ph, %0
  %.01921 = phi i32 [ 0, %0 ], [ %38, %scalar.ph ]
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %12 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %index
  %wide.load = load <4 x float>, ptr %12, align 16
  %13 = getelementptr inbounds nuw [4 x i8], ptr @c, i64 %index
  %wide.load24 = load <4 x float>, ptr %13, align 16
  %14 = getelementptr inbounds nuw [4 x i8], ptr @d, i64 %index
  %wide.load25 = load <4 x float>, ptr %14, align 16
  %15 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load24, <4 x float> %wide.load25, <4 x float> %wide.load)
  %16 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %index
  %17 = getelementptr inbounds nuw [4 x i8], ptr @e, i64 %index
  %wide.load26 = load <4 x float>, ptr %17, align 16
  %18 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load25, <4 x float> %wide.load26, <4 x float> %15)
  store <4 x float> %18, ptr %12, align 16
  %19 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %index
  %20 = getelementptr inbounds nuw i8, ptr %19, i64 4
  %wide.load27 = load <4 x float>, ptr %20, align 4
  %21 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load27, <4 x float> %wide.load25, <4 x float> %18)
  store <4 x float> %21, ptr %16, align 16
  %index.next = add nuw i64 %index, 4
  %22 = icmp eq i64 %index.next, 31996
  br i1 %22, label %scalar.ph, label %vector.body, !llvm.loop !157

scalar.ph:                                        ; preds = %vector.body
  %23 = load float, ptr getelementptr inbounds nuw (i8, ptr @b, i64 127984), align 16
  %24 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %23)
  %25 = tail call float @llvm.fmuladd.f32(float %4, float %5, float %24)
  store float %25, ptr getelementptr inbounds nuw (i8, ptr @b, i64 127984), align 16
  %26 = load float, ptr getelementptr inbounds nuw (i8, ptr @a, i64 127988), align 4
  %27 = tail call float @llvm.fmuladd.f32(float %26, float %4, float %25)
  store float %27, ptr getelementptr inbounds nuw (i8, ptr @a, i64 127984), align 16
  %28 = load float, ptr getelementptr inbounds nuw (i8, ptr @b, i64 127988), align 4
  %29 = tail call float @llvm.fmuladd.f32(float %6, float %7, float %28)
  %30 = tail call float @llvm.fmuladd.f32(float %7, float %8, float %29)
  store float %30, ptr getelementptr inbounds nuw (i8, ptr @b, i64 127988), align 4
  %31 = load float, ptr getelementptr inbounds nuw (i8, ptr @a, i64 127992), align 8
  %32 = tail call float @llvm.fmuladd.f32(float %31, float %7, float %30)
  store float %32, ptr getelementptr inbounds nuw (i8, ptr @a, i64 127988), align 4
  %33 = load float, ptr getelementptr inbounds nuw (i8, ptr @b, i64 127992), align 8
  %34 = tail call float @llvm.fmuladd.f32(float %9, float %10, float %33)
  %35 = tail call float @llvm.fmuladd.f32(float %10, float %11, float %34)
  store float %35, ptr getelementptr inbounds nuw (i8, ptr @b, i64 127992), align 8
  %36 = load float, ptr getelementptr inbounds nuw (i8, ptr @a, i64 127996), align 4
  %37 = tail call float @llvm.fmuladd.f32(float %36, float %10, float %35)
  store float %37, ptr getelementptr inbounds nuw (i8, ptr @a, i64 127992), align 8
  %38 = add nuw nsw i32 %.01921, 1
  %exitcond23.not = icmp eq i32 %38, 256
  br i1 %exitcond23.not, label %39, label %vector.ph, !llvm.loop !158

39:                                               ; preds = %scalar.ph
  %40 = tail call i32 @clock() #27
  %41 = sub i32 %40, %2
  %42 = sitofp i32 %41 to double
  %43 = fdiv double %42, 1.000000e+06
  %44 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@MFLNJMFF@S243?7?5?$CF?42f?5?7?7?$AA@", double noundef %43) #27
  tail call void @check(i32 noundef 12)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s244() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05NBMFMMMN@s244?5?$AA@")
  %2 = tail call i32 @clock() #27
  br label %.preheader

.preheader:                                       ; preds = %0, %21
  %.01820 = phi i32 [ 0, %0 ], [ %22, %21 ]
  br label %3

3:                                                ; preds = %.preheader, %3
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %3 ]
  %4 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %indvars.iv
  %5 = load float, ptr %4, align 4
  %6 = getelementptr inbounds nuw [4 x i8], ptr @c, i64 %indvars.iv
  %7 = load float, ptr %6, align 4
  %8 = getelementptr inbounds nuw [4 x i8], ptr @d, i64 %indvars.iv
  %9 = load float, ptr %8, align 4
  %10 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv
  %11 = fadd float %5, %7
  store float %11, ptr %4, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %12 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv.next
  %13 = load float, ptr %12, align 4
  %14 = insertelement <2 x float> poison, float %7, i64 0
  %15 = insertelement <2 x float> %14, float %13, i64 1
  %16 = insertelement <2 x float> poison, float %9, i64 0
  %17 = shufflevector <2 x float> %16, <2 x float> poison, <2 x i32> zeroinitializer
  %18 = insertelement <2 x float> poison, float %5, i64 0
  %19 = insertelement <2 x float> %18, float %11, i64 1
  %20 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %15, <2 x float> %17, <2 x float> %19)
  store <2 x float> %20, ptr %10, align 4
  %exitcond.not = icmp eq i64 %indvars.iv.next, 31999
  br i1 %exitcond.not, label %21, label %3, !llvm.loop !159

21:                                               ; preds = %3
  %22 = add nuw nsw i32 %.01820, 1
  %exitcond22.not = icmp eq i32 %22, 256
  br i1 %exitcond22.not, label %23, label %.preheader, !llvm.loop !160

23:                                               ; preds = %21
  %24 = tail call i32 @clock() #27
  %25 = sub i32 %24, %2
  %26 = sitofp i32 %25 to double
  %27 = fdiv double %26, 1.000000e+06
  %28 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@OMIGIJNG@S244?7?5?$CF?42f?5?7?7?$AA@", double noundef %27) #27
  tail call void @check(i32 noundef 12)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s1244() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05NBMFMMMN@s244?5?$AA@")
  %2 = tail call i32 @clock() #27
  br label %.preheader

.preheader:                                       ; preds = %0, %16
  %.01719 = phi i32 [ 0, %0 ], [ %17, %16 ]
  br label %3

3:                                                ; preds = %.preheader, %3
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %3 ]
  %4 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %indvars.iv
  %5 = load float, ptr %4, align 4
  %6 = getelementptr inbounds nuw [4 x i8], ptr @c, i64 %indvars.iv
  %7 = load float, ptr %6, align 4
  %8 = tail call float @llvm.fmuladd.f32(float %7, float %7, float %5)
  %9 = tail call float @llvm.fmuladd.f32(float %5, float %5, float %8)
  %10 = fadd float %7, %9
  %11 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv
  store float %10, ptr %11, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %12 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv.next
  %13 = load float, ptr %12, align 4
  %14 = fadd float %13, %10
  %15 = getelementptr inbounds nuw [4 x i8], ptr @d, i64 %indvars.iv
  store float %14, ptr %15, align 4
  %exitcond.not = icmp eq i64 %indvars.iv.next, 31999
  br i1 %exitcond.not, label %16, label %3, !llvm.loop !161

16:                                               ; preds = %3
  %17 = add nuw nsw i32 %.01719, 1
  %exitcond21.not = icmp eq i32 %17, 256
  br i1 %exitcond21.not, label %18, label %.preheader, !llvm.loop !162

18:                                               ; preds = %16
  %19 = tail call i32 @clock() #27
  %20 = sub i32 %19, %2
  %21 = sitofp i32 %20 to double
  %22 = fdiv double %21, 1.000000e+06
  %23 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0P@BILJDGDJ@S1244?7?5?$CF?42f?5?7?7?$AA@", double noundef %22) #27
  tail call void @check(i32 noundef 12)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s2244() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05NBMFMMMN@s244?5?$AA@")
  %2 = tail call i32 @clock() #27
  %3 = load float, ptr getelementptr inbounds nuw (i8, ptr @b, i64 127984), align 16
  %4 = load float, ptr getelementptr inbounds nuw (i8, ptr @e, i64 127984), align 16
  %5 = fadd float %3, %4
  %6 = load float, ptr getelementptr inbounds nuw (i8, ptr @c, i64 127984), align 16
  %7 = fadd float %3, %6
  %8 = load float, ptr getelementptr inbounds nuw (i8, ptr @b, i64 127988), align 4
  %9 = load float, ptr getelementptr inbounds nuw (i8, ptr @e, i64 127988), align 4
  %10 = fadd float %8, %9
  %11 = load float, ptr getelementptr inbounds nuw (i8, ptr @c, i64 127988), align 4
  %12 = fadd float %8, %11
  %13 = load float, ptr getelementptr inbounds nuw (i8, ptr @b, i64 127992), align 8
  %14 = load float, ptr getelementptr inbounds nuw (i8, ptr @e, i64 127992), align 8
  %15 = fadd float %13, %14
  %16 = load float, ptr getelementptr inbounds nuw (i8, ptr @c, i64 127992), align 8
  %17 = fadd float %13, %16
  br label %vector.ph

vector.ph:                                        ; preds = %scalar.ph, %0
  %.01315 = phi i32 [ 0, %0 ], [ %27, %scalar.ph ]
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %18 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %index
  %wide.load = load <4 x float>, ptr %18, align 16
  %19 = getelementptr inbounds nuw [4 x i8], ptr @e, i64 %index
  %wide.load18 = load <4 x float>, ptr %19, align 16
  %20 = fadd <4 x float> %wide.load, %wide.load18
  %21 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %index
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 4
  store <4 x float> %20, ptr %22, align 4
  %23 = getelementptr inbounds nuw [4 x i8], ptr @c, i64 %index
  %wide.load19 = load <4 x float>, ptr %23, align 16
  %24 = fadd <4 x float> %wide.load, %wide.load19
  %25 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %index
  store <4 x float> %24, ptr %25, align 16
  %index.next = add nuw i64 %index, 4
  %26 = icmp eq i64 %index.next, 31996
  br i1 %26, label %scalar.ph, label %vector.body, !llvm.loop !163

scalar.ph:                                        ; preds = %vector.body
  store float %5, ptr getelementptr inbounds nuw (i8, ptr @a, i64 127988), align 4
  store float %7, ptr getelementptr inbounds nuw (i8, ptr @a, i64 127984), align 16
  store float %10, ptr getelementptr inbounds nuw (i8, ptr @a, i64 127992), align 8
  store float %12, ptr getelementptr inbounds nuw (i8, ptr @a, i64 127988), align 4
  store float %15, ptr getelementptr inbounds nuw (i8, ptr @a, i64 127996), align 4
  store float %17, ptr getelementptr inbounds nuw (i8, ptr @a, i64 127992), align 8
  %27 = add nuw nsw i32 %.01315, 1
  %exitcond17.not = icmp eq i32 %27, 256
  br i1 %exitcond17.not, label %28, label %vector.ph, !llvm.loop !164

28:                                               ; preds = %scalar.ph
  %29 = tail call i32 @clock() #27
  %30 = sub i32 %29, %2
  %31 = sitofp i32 %30 to double
  %32 = fdiv double %31, 1.000000e+06
  %33 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0P@GENIBDOC@S2244?7?5?$CF?42f?5?7?7?$AA@", double noundef %32) #27
  tail call void @check(i32 noundef 12)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s251() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05GPLCGJED@s251?5?$AA@")
  %2 = tail call i32 @clock() #27
  br label %vector.ph

vector.ph:                                        ; preds = %middle.block, %0
  %.01315 = phi i32 [ 0, %0 ], [ %16, %middle.block ]
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %3 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %index
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %wide.load = load <4 x float>, ptr %3, align 16
  %wide.load18 = load <4 x float>, ptr %4, align 16
  %5 = getelementptr inbounds nuw [4 x i8], ptr @c, i64 %index
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %wide.load19 = load <4 x float>, ptr %5, align 16
  %wide.load20 = load <4 x float>, ptr %6, align 16
  %7 = getelementptr inbounds nuw [4 x i8], ptr @d, i64 %index
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %wide.load21 = load <4 x float>, ptr %7, align 16
  %wide.load22 = load <4 x float>, ptr %8, align 16
  %9 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load19, <4 x float> %wide.load21, <4 x float> %wide.load)
  %10 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load20, <4 x float> %wide.load22, <4 x float> %wide.load18)
  %11 = fmul <4 x float> %9, %9
  %12 = fmul <4 x float> %10, %10
  %13 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %index
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 16
  store <4 x float> %11, ptr %13, align 16
  store <4 x float> %12, ptr %14, align 16
  %index.next = add nuw i64 %index, 8
  %15 = icmp eq i64 %index.next, 32000
  br i1 %15, label %middle.block, label %vector.body, !llvm.loop !165

middle.block:                                     ; preds = %vector.body
  %16 = add nuw nsw i32 %.01315, 1
  %exitcond17.not = icmp eq i32 %16, 1024
  br i1 %exitcond17.not, label %17, label %vector.ph, !llvm.loop !166

17:                                               ; preds = %middle.block
  %18 = tail call i32 @clock() #27
  %19 = sub i32 %18, %2
  %20 = sitofp i32 %19 to double
  %21 = fdiv double %20, 1.000000e+06
  %22 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@GHEGJPL@S251?7?5?$CF?42f?5?7?7?$AA@", double noundef %21) #27
  tail call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s1251() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05GPLCGJED@s251?5?$AA@")
  %2 = tail call i32 @clock() #27
  br label %vector.ph

vector.ph:                                        ; preds = %middle.block, %0
  %.01517 = phi i32 [ 0, %0 ], [ %12, %middle.block ]
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %3 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %index
  %wide.load = load <4 x float>, ptr %3, align 16
  %4 = getelementptr inbounds nuw [4 x i8], ptr @c, i64 %index
  %wide.load20 = load <4 x float>, ptr %4, align 16
  %5 = fadd <4 x float> %wide.load, %wide.load20
  %6 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %index
  %wide.load21 = load <4 x float>, ptr %6, align 16
  %7 = getelementptr inbounds nuw [4 x i8], ptr @d, i64 %index
  %wide.load22 = load <4 x float>, ptr %7, align 16
  %8 = fadd <4 x float> %wide.load21, %wide.load22
  store <4 x float> %8, ptr %3, align 16
  %9 = getelementptr inbounds nuw [4 x i8], ptr @e, i64 %index
  %wide.load23 = load <4 x float>, ptr %9, align 16
  %10 = fmul <4 x float> %5, %wide.load23
  store <4 x float> %10, ptr %6, align 16
  %index.next = add nuw i64 %index, 4
  %11 = icmp eq i64 %index.next, 32000
  br i1 %11, label %middle.block, label %vector.body, !llvm.loop !167

middle.block:                                     ; preds = %vector.body
  %12 = add nuw nsw i32 %.01517, 1
  %exitcond19.not = icmp eq i32 %12, 1024
  br i1 %exitcond19.not, label %13, label %vector.ph, !llvm.loop !168

13:                                               ; preds = %middle.block
  %14 = tail call i32 @clock() #27
  %15 = sub i32 %14, %2
  %16 = sitofp i32 %15 to double
  %17 = fdiv double %16, 1.000000e+06
  %18 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0P@PCELNGBE@S1251?7?5?$CF?42f?5?7?7?$AA@", double noundef %17) #27
  tail call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s2251() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05GPLCGJED@s251?5?$AA@")
  %2 = tail call i32 @clock() #27
  br label %.preheader

.preheader:                                       ; preds = %0, %16
  %.01619 = phi i32 [ 0, %0 ], [ %17, %16 ]
  br label %3

3:                                                ; preds = %.preheader, %3
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %3 ]
  %.01517 = phi float [ 0.000000e+00, %.preheader ], [ %12, %3 ]
  %4 = getelementptr inbounds nuw [4 x i8], ptr @e, i64 %indvars.iv
  %5 = load float, ptr %4, align 4
  %6 = fmul float %.01517, %5
  %7 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv
  store float %6, ptr %7, align 4
  %8 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %indvars.iv
  %9 = load float, ptr %8, align 4
  %10 = getelementptr inbounds nuw [4 x i8], ptr @c, i64 %indvars.iv
  %11 = load float, ptr %10, align 4
  %12 = fadd float %9, %11
  %13 = getelementptr inbounds nuw [4 x i8], ptr @d, i64 %indvars.iv
  %14 = load float, ptr %13, align 4
  %15 = fadd float %6, %14
  store float %15, ptr %8, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32000
  br i1 %exitcond.not, label %16, label %3, !llvm.loop !169

16:                                               ; preds = %3
  %17 = add nuw nsw i32 %.01619, 1
  %exitcond21.not = icmp eq i32 %17, 256
  br i1 %exitcond21.not, label %18, label %.preheader, !llvm.loop !170

18:                                               ; preds = %16
  %19 = tail call i32 @clock() #27
  %20 = sub i32 %19, %2
  %21 = sitofp i32 %20 to double
  %22 = fdiv double %21, 1.000000e+06
  %23 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0P@IOCKPDMP@S2251?7?5?$CF?42f?5?7?7?$AA@", double noundef %22) #27
  tail call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s3251() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05GPLCGJED@s251?5?$AA@")
  %2 = tail call i32 @clock() #27
  %.pre.pre = load float, ptr @a, align 16
  %vector.recur.init = insertelement <4 x float> poison, float %.pre.pre, i64 3
  %3 = load float, ptr getelementptr inbounds nuw (i8, ptr @c, i64 127984), align 16
  %4 = load float, ptr getelementptr inbounds nuw (i8, ptr @e, i64 127984), align 16
  %5 = fmul float %3, %4
  %6 = load float, ptr getelementptr inbounds nuw (i8, ptr @c, i64 127988), align 4
  %7 = load float, ptr getelementptr inbounds nuw (i8, ptr @e, i64 127988), align 4
  %8 = fmul float %6, %7
  %9 = load float, ptr getelementptr inbounds nuw (i8, ptr @c, i64 127992), align 8
  %10 = load float, ptr getelementptr inbounds nuw (i8, ptr @e, i64 127992), align 8
  %11 = fmul float %9, %10
  br label %vector.ph

vector.ph:                                        ; preds = %scalar.ph, %0
  %.01618 = phi i32 [ 0, %0 ], [ %32, %scalar.ph ]
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vector.recur = phi <4 x float> [ %vector.recur.init, %vector.ph ], [ %14, %vector.body ]
  %12 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %index
  %wide.load = load <4 x float>, ptr %12, align 16
  %13 = getelementptr inbounds nuw [4 x i8], ptr @c, i64 %index
  %wide.load21 = load <4 x float>, ptr %13, align 16
  %14 = fadd <4 x float> %wide.load, %wide.load21
  %15 = shufflevector <4 x float> %vector.recur, <4 x float> %14, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %16 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %index
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 4
  store <4 x float> %14, ptr %17, align 4
  %18 = getelementptr inbounds nuw [4 x i8], ptr @e, i64 %index
  %wide.load22 = load <4 x float>, ptr %18, align 16
  %19 = fmul <4 x float> %wide.load21, %wide.load22
  store <4 x float> %19, ptr %12, align 16
  %20 = fmul <4 x float> %wide.load22, %15
  %21 = getelementptr inbounds nuw [4 x i8], ptr @d, i64 %index
  store <4 x float> %20, ptr %21, align 16
  %index.next = add nuw i64 %index, 4
  %22 = icmp eq i64 %index.next, 31996
  br i1 %22, label %scalar.ph, label %vector.body, !llvm.loop !171

scalar.ph:                                        ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x float> %14, i64 3
  %23 = load float, ptr getelementptr inbounds nuw (i8, ptr @b, i64 127984), align 16
  %24 = fadd float %23, %3
  store float %24, ptr getelementptr inbounds nuw (i8, ptr @a, i64 127988), align 4
  store float %5, ptr getelementptr inbounds nuw (i8, ptr @b, i64 127984), align 16
  %25 = fmul float %4, %vector.recur.extract
  store float %25, ptr getelementptr inbounds nuw (i8, ptr @d, i64 127984), align 16
  %26 = load float, ptr getelementptr inbounds nuw (i8, ptr @b, i64 127988), align 4
  %27 = fadd float %26, %6
  store float %27, ptr getelementptr inbounds nuw (i8, ptr @a, i64 127992), align 8
  store float %8, ptr getelementptr inbounds nuw (i8, ptr @b, i64 127988), align 4
  %28 = fmul float %7, %24
  store float %28, ptr getelementptr inbounds nuw (i8, ptr @d, i64 127988), align 4
  %29 = load float, ptr getelementptr inbounds nuw (i8, ptr @b, i64 127992), align 8
  %30 = fadd float %29, %9
  store float %30, ptr getelementptr inbounds nuw (i8, ptr @a, i64 127996), align 4
  store float %11, ptr getelementptr inbounds nuw (i8, ptr @b, i64 127992), align 8
  %31 = fmul float %10, %27
  store float %31, ptr getelementptr inbounds nuw (i8, ptr @d, i64 127992), align 8
  %32 = add nuw nsw i32 %.01618, 1
  %exitcond20.not = icmp eq i32 %32, 256
  br i1 %exitcond20.not, label %33, label %vector.ph, !llvm.loop !172

33:                                               ; preds = %scalar.ph
  %34 = tail call i32 @clock() #27
  %35 = sub i32 %34, %2
  %36 = sitofp i32 %35 to double
  %37 = fdiv double %36, 1.000000e+06
  %38 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0P@BDCFBCLJ@S3251?7?5?$CF?42f?5?7?7?$AA@", double noundef %37) #27
  tail call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s252() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05GNPENHBK@s252?5?$AA@")
  %2 = tail call i32 @clock() #27
  br label %vector.ph

vector.ph:                                        ; preds = %middle.block, %0
  %.01317 = phi i32 [ 0, %0 ], [ %16, %middle.block ]
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vector.recur = phi <4 x float> [ <float poison, float poison, float poison, float 0.000000e+00>, %vector.ph ], [ %8, %vector.body ]
  %3 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %index
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %wide.load = load <4 x float>, ptr %3, align 16
  %wide.load20 = load <4 x float>, ptr %4, align 16
  %5 = getelementptr inbounds nuw [4 x i8], ptr @c, i64 %index
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %wide.load21 = load <4 x float>, ptr %5, align 16
  %wide.load22 = load <4 x float>, ptr %6, align 16
  %7 = fmul <4 x float> %wide.load, %wide.load21
  %8 = fmul <4 x float> %wide.load20, %wide.load22
  %9 = shufflevector <4 x float> %vector.recur, <4 x float> %7, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %10 = shufflevector <4 x float> %7, <4 x float> %8, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %11 = fadd <4 x float> %9, %7
  %12 = fadd <4 x float> %10, %8
  %13 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %index
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 16
  store <4 x float> %11, ptr %13, align 16
  store <4 x float> %12, ptr %14, align 16
  %index.next = add nuw i64 %index, 8
  %15 = icmp eq i64 %index.next, 32000
  br i1 %15, label %middle.block, label %vector.body, !llvm.loop !173

middle.block:                                     ; preds = %vector.body
  %16 = add nuw nsw i32 %.01317, 1
  %exitcond19.not = icmp eq i32 %16, 256
  br i1 %exitcond19.not, label %17, label %vector.ph, !llvm.loop !174

17:                                               ; preds = %middle.block
  %18 = tail call i32 @clock() #27
  %19 = sub i32 %18, %2
  %20 = sitofp i32 %19 to double
  %21 = fdiv double %20, 1.000000e+06
  %22 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@JPJGAPPK@S252?7?5?$CF?42f?5?7?7?$AA@", double noundef %21) #27
  tail call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s253() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05GMDGLNCN@s253?5?$AA@")
  %2 = tail call i32 @clock() #27
  br label %.preheader

.preheader:                                       ; preds = %0, %18
  %.01620 = phi i32 [ 0, %0 ], [ %19, %18 ]
  br label %3

3:                                                ; preds = %.preheader, %17
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %17 ]
  %4 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv
  %5 = load float, ptr %4, align 4
  %6 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %indvars.iv
  %7 = load float, ptr %6, align 4
  %8 = fcmp ogt float %5, %7
  br i1 %8, label %9, label %17

9:                                                ; preds = %3
  %10 = getelementptr inbounds nuw [4 x i8], ptr @d, i64 %indvars.iv
  %11 = load float, ptr %10, align 4
  %12 = fneg float %7
  %13 = tail call float @llvm.fmuladd.f32(float %12, float %11, float %5)
  %14 = getelementptr inbounds nuw [4 x i8], ptr @c, i64 %indvars.iv
  %15 = load float, ptr %14, align 4
  %16 = fadd float %15, %13
  store float %16, ptr %14, align 4
  store float %13, ptr %4, align 4
  br label %17

17:                                               ; preds = %3, %9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32000
  br i1 %exitcond.not, label %18, label %3, !llvm.loop !175

18:                                               ; preds = %17
  %19 = add nuw nsw i32 %.01620, 1
  %exitcond22.not = icmp eq i32 %19, 256
  br i1 %exitcond22.not, label %20, label %.preheader, !llvm.loop !176

20:                                               ; preds = %18
  %21 = tail call i32 @clock() #27
  %22 = sub i32 %21, %2
  %23 = sitofp i32 %22 to double
  %24 = fdiv double %23, 1.000000e+06
  %25 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@FOBINADK@S253?7?5?$CF?42f?5?7?7?$AA@", double noundef %24) #27
  tail call void @check(i32 noundef 13)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s254() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05GJHJKLKI@s254?5?$AA@")
  %2 = tail call i32 @clock() #27
  %.012.pre.pre = load float, ptr getelementptr inbounds nuw (i8, ptr @b, i64 127996), align 4
  %vector.recur.init = insertelement <4 x float> poison, float %.012.pre.pre, i64 3
  br label %vector.ph

vector.ph:                                        ; preds = %middle.block, %0
  %.01115 = phi i32 [ 0, %0 ], [ %14, %middle.block ]
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vector.recur = phi <4 x float> [ %vector.recur.init, %vector.ph ], [ %wide.load19, %vector.body ]
  %3 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %index
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %wide.load = load <4 x float>, ptr %3, align 16
  %wide.load19 = load <4 x float>, ptr %4, align 16
  %5 = shufflevector <4 x float> %vector.recur, <4 x float> %wide.load, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %6 = shufflevector <4 x float> %wide.load, <4 x float> %wide.load19, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %7 = fadd <4 x float> %5, %wide.load
  %8 = fadd <4 x float> %6, %wide.load19
  %9 = fmul <4 x float> %7, splat (float 5.000000e-01)
  %10 = fmul <4 x float> %8, splat (float 5.000000e-01)
  %11 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %index
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 16
  store <4 x float> %9, ptr %11, align 16
  store <4 x float> %10, ptr %12, align 16
  %index.next = add nuw i64 %index, 8
  %13 = icmp eq i64 %index.next, 32000
  br i1 %13, label %middle.block, label %vector.body, !llvm.loop !177

middle.block:                                     ; preds = %vector.body
  %14 = add nuw nsw i32 %.01115, 1
  %exitcond17.not = icmp eq i32 %14, 1024
  br i1 %exitcond17.not, label %15, label %vector.ph, !llvm.loop !178

15:                                               ; preds = %middle.block
  %16 = tail call i32 @clock() #27
  %17 = sub i32 %16, %2
  %18 = sitofp i32 %17 to double
  %19 = fdiv double %18, 1.000000e+06
  %20 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@HHCDMFLJ@S254?7?5?$CF?42f?5?7?7?$AA@", double noundef %19) #27
  tail call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s255() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05GILLMBJP@s255?5?$AA@")
  %2 = tail call i32 @clock() #27
  %3 = load float, ptr getelementptr inbounds nuw (i8, ptr @b, i64 127992), align 8
  %.015.pre.pre = load float, ptr getelementptr inbounds nuw (i8, ptr @b, i64 127996), align 4
  %vector.recur.init = insertelement <4 x float> poison, float %.015.pre.pre, i64 3
  %vector.recur.init23 = insertelement <4 x float> poison, float %3, i64 3
  br label %vector.ph

vector.ph:                                        ; preds = %middle.block, %0
  %.01319 = phi i32 [ 0, %0 ], [ %19, %middle.block ]
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vector.recur = phi <4 x float> [ %vector.recur.init, %vector.ph ], [ %wide.load25, %vector.body ]
  %vector.recur24 = phi <4 x float> [ %vector.recur.init23, %vector.ph ], [ %7, %vector.body ]
  %4 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %index
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %wide.load = load <4 x float>, ptr %4, align 16
  %wide.load25 = load <4 x float>, ptr %5, align 16
  %6 = shufflevector <4 x float> %vector.recur, <4 x float> %wide.load, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %7 = shufflevector <4 x float> %wide.load, <4 x float> %wide.load25, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %8 = shufflevector <4 x float> %vector.recur24, <4 x float> %6, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %9 = shufflevector <4 x float> %wide.load, <4 x float> %wide.load25, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %10 = fadd <4 x float> %6, %wide.load
  %11 = fadd <4 x float> %7, %wide.load25
  %12 = fadd <4 x float> %8, %10
  %13 = fadd <4 x float> %9, %11
  %14 = fmul <4 x float> %12, splat (float 3.330000e-01)
  %15 = fmul <4 x float> %13, splat (float 3.330000e-01)
  %16 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %index
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 16
  store <4 x float> %14, ptr %16, align 16
  store <4 x float> %15, ptr %17, align 16
  %index.next = add nuw i64 %index, 8
  %18 = icmp eq i64 %index.next, 32000
  br i1 %18, label %middle.block, label %vector.body, !llvm.loop !179

middle.block:                                     ; preds = %vector.body
  %19 = add nuw nsw i32 %.01319, 1
  %exitcond21.not = icmp eq i32 %19, 256
  br i1 %exitcond21.not, label %20, label %vector.ph, !llvm.loop !180

20:                                               ; preds = %middle.block
  %21 = tail call i32 @clock() #27
  %22 = sub i32 %21, %2
  %23 = sitofp i32 %22 to double
  %24 = fdiv double %23, 1.000000e+06
  %25 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@LGKNBKHJ@S255?7?5?$CF?42f?5?7?7?$AA@", double noundef %24) #27
  tail call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s256() local_unnamed_addr #11 {
.preheader19:
  %0 = tail call i32 @init(ptr noundef nonnull @"??_C@_05GKPNHPMG@s256?5?$AA@")
  %1 = tail call i32 @clock() #27
  br label %.preheader

.preheader:                                       ; preds = %.preheader19, %9
  %indvars.iv26 = phi i64 [ 0, %.preheader19 ], [ %indvars.iv.next27, %9 ]
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr @bb, i64 %indvars.iv26
  %invariant.gep20 = getelementptr inbounds nuw [4 x i8], ptr @cc, i64 %indvars.iv26
  %load_initial47 = load float, ptr @a, align 16
  br label %2

2:                                                ; preds = %.preheader, %2
  %store_forwarded48 = phi float [ %load_initial47, %.preheader ], [ %4, %2 ]
  %indvars.iv = phi i64 [ 1, %.preheader ], [ %indvars.iv.next, %2 ]
  %3 = getelementptr [4 x i8], ptr @a, i64 %indvars.iv
  %4 = fsub float 1.000000e+00, %store_forwarded48
  store float %4, ptr %3, align 4
  %gep = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep, i64 %indvars.iv
  %5 = load float, ptr %gep, align 4
  %6 = getelementptr inbounds nuw [4 x i8], ptr @d, i64 %indvars.iv
  %7 = load float, ptr %6, align 4
  %8 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %4)
  %gep21 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep20, i64 %indvars.iv
  store float %8, ptr %gep21, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 256
  br i1 %exitcond.not, label %9, label %2, !llvm.loop !181

9:                                                ; preds = %2
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  %exitcond29.not = icmp eq i64 %indvars.iv.next27, 256
  br i1 %exitcond29.not, label %.preheader.1, label %.preheader, !llvm.loop !182

.preheader.1:                                     ; preds = %9, %17
  %indvars.iv26.1 = phi i64 [ %indvars.iv.next27.1, %17 ], [ 0, %9 ]
  %invariant.gep.1 = getelementptr inbounds nuw [4 x i8], ptr @bb, i64 %indvars.iv26.1
  %invariant.gep20.1 = getelementptr inbounds nuw [4 x i8], ptr @cc, i64 %indvars.iv26.1
  %load_initial45 = load float, ptr @a, align 16
  br label %10

10:                                               ; preds = %10, %.preheader.1
  %store_forwarded46 = phi float [ %load_initial45, %.preheader.1 ], [ %12, %10 ]
  %indvars.iv.1 = phi i64 [ 1, %.preheader.1 ], [ %indvars.iv.next.1, %10 ]
  %11 = getelementptr [4 x i8], ptr @a, i64 %indvars.iv.1
  %12 = fsub float 1.000000e+00, %store_forwarded46
  store float %12, ptr %11, align 4
  %gep.1 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep.1, i64 %indvars.iv.1
  %13 = load float, ptr %gep.1, align 4
  %14 = getelementptr inbounds nuw [4 x i8], ptr @d, i64 %indvars.iv.1
  %15 = load float, ptr %14, align 4
  %16 = tail call float @llvm.fmuladd.f32(float %13, float %15, float %12)
  %gep21.1 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep20.1, i64 %indvars.iv.1
  store float %16, ptr %gep21.1, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1
  %exitcond.1.not = icmp eq i64 %indvars.iv.next.1, 256
  br i1 %exitcond.1.not, label %17, label %10, !llvm.loop !181

17:                                               ; preds = %10
  %indvars.iv.next27.1 = add nuw nsw i64 %indvars.iv26.1, 1
  %exitcond29.1.not = icmp eq i64 %indvars.iv.next27.1, 256
  br i1 %exitcond29.1.not, label %.preheader.2, label %.preheader.1, !llvm.loop !182

.preheader.2:                                     ; preds = %17, %25
  %indvars.iv26.2 = phi i64 [ %indvars.iv.next27.2, %25 ], [ 0, %17 ]
  %invariant.gep.2 = getelementptr inbounds nuw [4 x i8], ptr @bb, i64 %indvars.iv26.2
  %invariant.gep20.2 = getelementptr inbounds nuw [4 x i8], ptr @cc, i64 %indvars.iv26.2
  %load_initial43 = load float, ptr @a, align 16
  br label %18

18:                                               ; preds = %18, %.preheader.2
  %store_forwarded44 = phi float [ %load_initial43, %.preheader.2 ], [ %20, %18 ]
  %indvars.iv.2 = phi i64 [ 1, %.preheader.2 ], [ %indvars.iv.next.2, %18 ]
  %19 = getelementptr [4 x i8], ptr @a, i64 %indvars.iv.2
  %20 = fsub float 1.000000e+00, %store_forwarded44
  store float %20, ptr %19, align 4
  %gep.2 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep.2, i64 %indvars.iv.2
  %21 = load float, ptr %gep.2, align 4
  %22 = getelementptr inbounds nuw [4 x i8], ptr @d, i64 %indvars.iv.2
  %23 = load float, ptr %22, align 4
  %24 = tail call float @llvm.fmuladd.f32(float %21, float %23, float %20)
  %gep21.2 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep20.2, i64 %indvars.iv.2
  store float %24, ptr %gep21.2, align 4
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, 1
  %exitcond.2.not = icmp eq i64 %indvars.iv.next.2, 256
  br i1 %exitcond.2.not, label %25, label %18, !llvm.loop !181

25:                                               ; preds = %18
  %indvars.iv.next27.2 = add nuw nsw i64 %indvars.iv26.2, 1
  %exitcond29.2.not = icmp eq i64 %indvars.iv.next27.2, 256
  br i1 %exitcond29.2.not, label %.preheader.3, label %.preheader.2, !llvm.loop !182

.preheader.3:                                     ; preds = %25, %33
  %indvars.iv26.3 = phi i64 [ %indvars.iv.next27.3, %33 ], [ 0, %25 ]
  %invariant.gep.3 = getelementptr inbounds nuw [4 x i8], ptr @bb, i64 %indvars.iv26.3
  %invariant.gep20.3 = getelementptr inbounds nuw [4 x i8], ptr @cc, i64 %indvars.iv26.3
  %load_initial41 = load float, ptr @a, align 16
  br label %26

26:                                               ; preds = %26, %.preheader.3
  %store_forwarded42 = phi float [ %load_initial41, %.preheader.3 ], [ %28, %26 ]
  %indvars.iv.3 = phi i64 [ 1, %.preheader.3 ], [ %indvars.iv.next.3, %26 ]
  %27 = getelementptr [4 x i8], ptr @a, i64 %indvars.iv.3
  %28 = fsub float 1.000000e+00, %store_forwarded42
  store float %28, ptr %27, align 4
  %gep.3 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep.3, i64 %indvars.iv.3
  %29 = load float, ptr %gep.3, align 4
  %30 = getelementptr inbounds nuw [4 x i8], ptr @d, i64 %indvars.iv.3
  %31 = load float, ptr %30, align 4
  %32 = tail call float @llvm.fmuladd.f32(float %29, float %31, float %28)
  %gep21.3 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep20.3, i64 %indvars.iv.3
  store float %32, ptr %gep21.3, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.3, 1
  %exitcond.3.not = icmp eq i64 %indvars.iv.next.3, 256
  br i1 %exitcond.3.not, label %33, label %26, !llvm.loop !181

33:                                               ; preds = %26
  %indvars.iv.next27.3 = add nuw nsw i64 %indvars.iv26.3, 1
  %exitcond29.3.not = icmp eq i64 %indvars.iv.next27.3, 256
  br i1 %exitcond29.3.not, label %.preheader.4, label %.preheader.3, !llvm.loop !182

.preheader.4:                                     ; preds = %33, %41
  %indvars.iv26.4 = phi i64 [ %indvars.iv.next27.4, %41 ], [ 0, %33 ]
  %invariant.gep.4 = getelementptr inbounds nuw [4 x i8], ptr @bb, i64 %indvars.iv26.4
  %invariant.gep20.4 = getelementptr inbounds nuw [4 x i8], ptr @cc, i64 %indvars.iv26.4
  %load_initial39 = load float, ptr @a, align 16
  br label %34

34:                                               ; preds = %34, %.preheader.4
  %store_forwarded40 = phi float [ %load_initial39, %.preheader.4 ], [ %36, %34 ]
  %indvars.iv.4 = phi i64 [ 1, %.preheader.4 ], [ %indvars.iv.next.4, %34 ]
  %35 = getelementptr [4 x i8], ptr @a, i64 %indvars.iv.4
  %36 = fsub float 1.000000e+00, %store_forwarded40
  store float %36, ptr %35, align 4
  %gep.4 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep.4, i64 %indvars.iv.4
  %37 = load float, ptr %gep.4, align 4
  %38 = getelementptr inbounds nuw [4 x i8], ptr @d, i64 %indvars.iv.4
  %39 = load float, ptr %38, align 4
  %40 = tail call float @llvm.fmuladd.f32(float %37, float %39, float %36)
  %gep21.4 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep20.4, i64 %indvars.iv.4
  store float %40, ptr %gep21.4, align 4
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv.4, 1
  %exitcond.4.not = icmp eq i64 %indvars.iv.next.4, 256
  br i1 %exitcond.4.not, label %41, label %34, !llvm.loop !181

41:                                               ; preds = %34
  %indvars.iv.next27.4 = add nuw nsw i64 %indvars.iv26.4, 1
  %exitcond29.4.not = icmp eq i64 %indvars.iv.next27.4, 256
  br i1 %exitcond29.4.not, label %.preheader.5, label %.preheader.4, !llvm.loop !182

.preheader.5:                                     ; preds = %41, %49
  %indvars.iv26.5 = phi i64 [ %indvars.iv.next27.5, %49 ], [ 0, %41 ]
  %invariant.gep.5 = getelementptr inbounds nuw [4 x i8], ptr @bb, i64 %indvars.iv26.5
  %invariant.gep20.5 = getelementptr inbounds nuw [4 x i8], ptr @cc, i64 %indvars.iv26.5
  %load_initial37 = load float, ptr @a, align 16
  br label %42

42:                                               ; preds = %42, %.preheader.5
  %store_forwarded38 = phi float [ %load_initial37, %.preheader.5 ], [ %44, %42 ]
  %indvars.iv.5 = phi i64 [ 1, %.preheader.5 ], [ %indvars.iv.next.5, %42 ]
  %43 = getelementptr [4 x i8], ptr @a, i64 %indvars.iv.5
  %44 = fsub float 1.000000e+00, %store_forwarded38
  store float %44, ptr %43, align 4
  %gep.5 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep.5, i64 %indvars.iv.5
  %45 = load float, ptr %gep.5, align 4
  %46 = getelementptr inbounds nuw [4 x i8], ptr @d, i64 %indvars.iv.5
  %47 = load float, ptr %46, align 4
  %48 = tail call float @llvm.fmuladd.f32(float %45, float %47, float %44)
  %gep21.5 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep20.5, i64 %indvars.iv.5
  store float %48, ptr %gep21.5, align 4
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv.5, 1
  %exitcond.5.not = icmp eq i64 %indvars.iv.next.5, 256
  br i1 %exitcond.5.not, label %49, label %42, !llvm.loop !181

49:                                               ; preds = %42
  %indvars.iv.next27.5 = add nuw nsw i64 %indvars.iv26.5, 1
  %exitcond29.5.not = icmp eq i64 %indvars.iv.next27.5, 256
  br i1 %exitcond29.5.not, label %.preheader.6, label %.preheader.5, !llvm.loop !182

.preheader.6:                                     ; preds = %49, %57
  %indvars.iv26.6 = phi i64 [ %indvars.iv.next27.6, %57 ], [ 0, %49 ]
  %invariant.gep.6 = getelementptr inbounds nuw [4 x i8], ptr @bb, i64 %indvars.iv26.6
  %invariant.gep20.6 = getelementptr inbounds nuw [4 x i8], ptr @cc, i64 %indvars.iv26.6
  %load_initial35 = load float, ptr @a, align 16
  br label %50

50:                                               ; preds = %50, %.preheader.6
  %store_forwarded36 = phi float [ %load_initial35, %.preheader.6 ], [ %52, %50 ]
  %indvars.iv.6 = phi i64 [ 1, %.preheader.6 ], [ %indvars.iv.next.6, %50 ]
  %51 = getelementptr [4 x i8], ptr @a, i64 %indvars.iv.6
  %52 = fsub float 1.000000e+00, %store_forwarded36
  store float %52, ptr %51, align 4
  %gep.6 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep.6, i64 %indvars.iv.6
  %53 = load float, ptr %gep.6, align 4
  %54 = getelementptr inbounds nuw [4 x i8], ptr @d, i64 %indvars.iv.6
  %55 = load float, ptr %54, align 4
  %56 = tail call float @llvm.fmuladd.f32(float %53, float %55, float %52)
  %gep21.6 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep20.6, i64 %indvars.iv.6
  store float %56, ptr %gep21.6, align 4
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv.6, 1
  %exitcond.6.not = icmp eq i64 %indvars.iv.next.6, 256
  br i1 %exitcond.6.not, label %57, label %50, !llvm.loop !181

57:                                               ; preds = %50
  %indvars.iv.next27.6 = add nuw nsw i64 %indvars.iv26.6, 1
  %exitcond29.6.not = icmp eq i64 %indvars.iv.next27.6, 256
  br i1 %exitcond29.6.not, label %.preheader.7, label %.preheader.6, !llvm.loop !182

.preheader.7:                                     ; preds = %57, %65
  %indvars.iv26.7 = phi i64 [ %indvars.iv.next27.7, %65 ], [ 0, %57 ]
  %invariant.gep.7 = getelementptr inbounds nuw [4 x i8], ptr @bb, i64 %indvars.iv26.7
  %invariant.gep20.7 = getelementptr inbounds nuw [4 x i8], ptr @cc, i64 %indvars.iv26.7
  %load_initial33 = load float, ptr @a, align 16
  br label %58

58:                                               ; preds = %58, %.preheader.7
  %store_forwarded34 = phi float [ %load_initial33, %.preheader.7 ], [ %60, %58 ]
  %indvars.iv.7 = phi i64 [ 1, %.preheader.7 ], [ %indvars.iv.next.7, %58 ]
  %59 = getelementptr [4 x i8], ptr @a, i64 %indvars.iv.7
  %60 = fsub float 1.000000e+00, %store_forwarded34
  store float %60, ptr %59, align 4
  %gep.7 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep.7, i64 %indvars.iv.7
  %61 = load float, ptr %gep.7, align 4
  %62 = getelementptr inbounds nuw [4 x i8], ptr @d, i64 %indvars.iv.7
  %63 = load float, ptr %62, align 4
  %64 = tail call float @llvm.fmuladd.f32(float %61, float %63, float %60)
  %gep21.7 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep20.7, i64 %indvars.iv.7
  store float %64, ptr %gep21.7, align 4
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv.7, 1
  %exitcond.7.not = icmp eq i64 %indvars.iv.next.7, 256
  br i1 %exitcond.7.not, label %65, label %58, !llvm.loop !181

65:                                               ; preds = %58
  %indvars.iv.next27.7 = add nuw nsw i64 %indvars.iv26.7, 1
  %exitcond29.7.not = icmp eq i64 %indvars.iv.next27.7, 256
  br i1 %exitcond29.7.not, label %.preheader.8, label %.preheader.7, !llvm.loop !182

.preheader.8:                                     ; preds = %65, %73
  %indvars.iv26.8 = phi i64 [ %indvars.iv.next27.8, %73 ], [ 0, %65 ]
  %invariant.gep.8 = getelementptr inbounds nuw [4 x i8], ptr @bb, i64 %indvars.iv26.8
  %invariant.gep20.8 = getelementptr inbounds nuw [4 x i8], ptr @cc, i64 %indvars.iv26.8
  %load_initial31 = load float, ptr @a, align 16
  br label %66

66:                                               ; preds = %66, %.preheader.8
  %store_forwarded32 = phi float [ %load_initial31, %.preheader.8 ], [ %68, %66 ]
  %indvars.iv.8 = phi i64 [ 1, %.preheader.8 ], [ %indvars.iv.next.8, %66 ]
  %67 = getelementptr [4 x i8], ptr @a, i64 %indvars.iv.8
  %68 = fsub float 1.000000e+00, %store_forwarded32
  store float %68, ptr %67, align 4
  %gep.8 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep.8, i64 %indvars.iv.8
  %69 = load float, ptr %gep.8, align 4
  %70 = getelementptr inbounds nuw [4 x i8], ptr @d, i64 %indvars.iv.8
  %71 = load float, ptr %70, align 4
  %72 = tail call float @llvm.fmuladd.f32(float %69, float %71, float %68)
  %gep21.8 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep20.8, i64 %indvars.iv.8
  store float %72, ptr %gep21.8, align 4
  %indvars.iv.next.8 = add nuw nsw i64 %indvars.iv.8, 1
  %exitcond.8.not = icmp eq i64 %indvars.iv.next.8, 256
  br i1 %exitcond.8.not, label %73, label %66, !llvm.loop !181

73:                                               ; preds = %66
  %indvars.iv.next27.8 = add nuw nsw i64 %indvars.iv26.8, 1
  %exitcond29.8.not = icmp eq i64 %indvars.iv.next27.8, 256
  br i1 %exitcond29.8.not, label %.preheader.9, label %.preheader.8, !llvm.loop !182

.preheader.9:                                     ; preds = %73, %81
  %indvars.iv26.9 = phi i64 [ %indvars.iv.next27.9, %81 ], [ 0, %73 ]
  %invariant.gep.9 = getelementptr inbounds nuw [4 x i8], ptr @bb, i64 %indvars.iv26.9
  %invariant.gep20.9 = getelementptr inbounds nuw [4 x i8], ptr @cc, i64 %indvars.iv26.9
  %load_initial = load float, ptr @a, align 16
  br label %74

74:                                               ; preds = %74, %.preheader.9
  %store_forwarded = phi float [ %load_initial, %.preheader.9 ], [ %76, %74 ]
  %indvars.iv.9 = phi i64 [ 1, %.preheader.9 ], [ %indvars.iv.next.9, %74 ]
  %75 = getelementptr [4 x i8], ptr @a, i64 %indvars.iv.9
  %76 = fsub float 1.000000e+00, %store_forwarded
  store float %76, ptr %75, align 4
  %gep.9 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep.9, i64 %indvars.iv.9
  %77 = load float, ptr %gep.9, align 4
  %78 = getelementptr inbounds nuw [4 x i8], ptr @d, i64 %indvars.iv.9
  %79 = load float, ptr %78, align 4
  %80 = tail call float @llvm.fmuladd.f32(float %77, float %79, float %76)
  %gep21.9 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep20.9, i64 %indvars.iv.9
  store float %80, ptr %gep21.9, align 4
  %indvars.iv.next.9 = add nuw nsw i64 %indvars.iv.9, 1
  %exitcond.9.not = icmp eq i64 %indvars.iv.next.9, 256
  br i1 %exitcond.9.not, label %81, label %74, !llvm.loop !181

81:                                               ; preds = %74
  %indvars.iv.next27.9 = add nuw nsw i64 %indvars.iv26.9, 1
  %exitcond29.9.not = icmp eq i64 %indvars.iv.next27.9, 256
  br i1 %exitcond29.9.not, label %82, label %.preheader.9, !llvm.loop !182

82:                                               ; preds = %81
  %83 = tail call i32 @clock() #27
  %84 = sub i32 %83, %1
  %85 = sitofp i32 %84 to double
  %86 = fdiv double %85, 1.000000e+06
  %87 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@CPEPHMHI@S256?7?5?$CF?42f?5?7?7?$AA@", double noundef %86) #27
  tail call void @check(i32 noundef 111)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s257() local_unnamed_addr #11 {
.preheader20:
  %0 = tail call i32 @init(ptr noundef nonnull @"??_C@_05GLDPBFPB@s257?5?$AA@")
  %1 = tail call i32 @clock() #27
  br label %.preheader

.preheader:                                       ; preds = %.preheader20, %14
  %indvars.iv27 = phi i64 [ 1, %.preheader20 ], [ %indvars.iv.next28, %14 ]
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr @aa, i64 %indvars.iv27
  %2 = getelementptr [4 x i8], ptr @a, i64 %indvars.iv27
  %3 = getelementptr i8, ptr %2, i64 -4
  %invariant.gep21 = getelementptr inbounds nuw [4 x i8], ptr @bb, i64 %indvars.iv27
  %4 = load float, ptr %3, align 4
  br label %5

5:                                                ; preds = %5, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.162, %5 ]
  %gep = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep, i64 %indvars.iv
  %6 = load float, ptr %gep, align 4
  %7 = fsub float %6, %4
  %gep22 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep21, i64 %indvars.iv
  %8 = load float, ptr %gep22, align 4
  %9 = fadd float %7, %8
  store float %9, ptr %gep, align 4
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %gep.160 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %10 = load float, ptr %gep.160, align 4
  %11 = fsub float %10, %4
  %gep22.161 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep21, i64 %indvars.iv.next
  %12 = load float, ptr %gep22.161, align 4
  %13 = fadd float %11, %12
  store float %13, ptr %gep.160, align 4
  %indvars.iv.next.162 = add nuw nsw i64 %indvars.iv, 2
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.162, 256
  br i1 %exitcond.not.1, label %14, label %5, !llvm.loop !183

14:                                               ; preds = %5
  store float %11, ptr %2, align 4
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  %exitcond30.not = icmp eq i64 %indvars.iv.next28, 256
  br i1 %exitcond30.not, label %.preheader.1, label %.preheader, !llvm.loop !184

.preheader.1:                                     ; preds = %14, %27
  %indvars.iv27.1 = phi i64 [ %indvars.iv.next28.1, %27 ], [ 1, %14 ]
  %invariant.gep.1 = getelementptr inbounds nuw [4 x i8], ptr @aa, i64 %indvars.iv27.1
  %15 = getelementptr [4 x i8], ptr @a, i64 %indvars.iv27.1
  %16 = getelementptr i8, ptr %15, i64 -4
  %invariant.gep21.1 = getelementptr inbounds nuw [4 x i8], ptr @bb, i64 %indvars.iv27.1
  %17 = load float, ptr %16, align 4
  br label %18

18:                                               ; preds = %18, %.preheader.1
  %indvars.iv.1 = phi i64 [ 0, %.preheader.1 ], [ %indvars.iv.next.1.1, %18 ]
  %gep.1 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep.1, i64 %indvars.iv.1
  %19 = load float, ptr %gep.1, align 4
  %20 = fsub float %19, %17
  %gep22.1 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep21.1, i64 %indvars.iv.1
  %21 = load float, ptr %gep22.1, align 4
  %22 = fadd float %20, %21
  store float %22, ptr %gep.1, align 4
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv.1, 1
  %gep.1.1 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep.1, i64 %indvars.iv.next.1
  %23 = load float, ptr %gep.1.1, align 4
  %24 = fsub float %23, %17
  %gep22.1.1 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep21.1, i64 %indvars.iv.next.1
  %25 = load float, ptr %gep22.1.1, align 4
  %26 = fadd float %24, %25
  store float %26, ptr %gep.1.1, align 4
  %indvars.iv.next.1.1 = add nuw nsw i64 %indvars.iv.1, 2
  %exitcond.1.not.1 = icmp eq i64 %indvars.iv.next.1.1, 256
  br i1 %exitcond.1.not.1, label %27, label %18, !llvm.loop !183

27:                                               ; preds = %18
  store float %24, ptr %15, align 4
  %indvars.iv.next28.1 = add nuw nsw i64 %indvars.iv27.1, 1
  %exitcond30.1.not = icmp eq i64 %indvars.iv.next28.1, 256
  br i1 %exitcond30.1.not, label %.preheader.2, label %.preheader.1, !llvm.loop !184

.preheader.2:                                     ; preds = %27, %40
  %indvars.iv27.2 = phi i64 [ %indvars.iv.next28.2, %40 ], [ 1, %27 ]
  %invariant.gep.2 = getelementptr inbounds nuw [4 x i8], ptr @aa, i64 %indvars.iv27.2
  %28 = getelementptr [4 x i8], ptr @a, i64 %indvars.iv27.2
  %29 = getelementptr i8, ptr %28, i64 -4
  %invariant.gep21.2 = getelementptr inbounds nuw [4 x i8], ptr @bb, i64 %indvars.iv27.2
  %30 = load float, ptr %29, align 4
  br label %31

31:                                               ; preds = %31, %.preheader.2
  %indvars.iv.2 = phi i64 [ 0, %.preheader.2 ], [ %indvars.iv.next.2.1, %31 ]
  %gep.2 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep.2, i64 %indvars.iv.2
  %32 = load float, ptr %gep.2, align 4
  %33 = fsub float %32, %30
  %gep22.2 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep21.2, i64 %indvars.iv.2
  %34 = load float, ptr %gep22.2, align 4
  %35 = fadd float %33, %34
  store float %35, ptr %gep.2, align 4
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv.2, 1
  %gep.2.1 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep.2, i64 %indvars.iv.next.2
  %36 = load float, ptr %gep.2.1, align 4
  %37 = fsub float %36, %30
  %gep22.2.1 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep21.2, i64 %indvars.iv.next.2
  %38 = load float, ptr %gep22.2.1, align 4
  %39 = fadd float %37, %38
  store float %39, ptr %gep.2.1, align 4
  %indvars.iv.next.2.1 = add nuw nsw i64 %indvars.iv.2, 2
  %exitcond.2.not.1 = icmp eq i64 %indvars.iv.next.2.1, 256
  br i1 %exitcond.2.not.1, label %40, label %31, !llvm.loop !183

40:                                               ; preds = %31
  store float %37, ptr %28, align 4
  %indvars.iv.next28.2 = add nuw nsw i64 %indvars.iv27.2, 1
  %exitcond30.2.not = icmp eq i64 %indvars.iv.next28.2, 256
  br i1 %exitcond30.2.not, label %.preheader.3, label %.preheader.2, !llvm.loop !184

.preheader.3:                                     ; preds = %40, %53
  %indvars.iv27.3 = phi i64 [ %indvars.iv.next28.3, %53 ], [ 1, %40 ]
  %invariant.gep.3 = getelementptr inbounds nuw [4 x i8], ptr @aa, i64 %indvars.iv27.3
  %41 = getelementptr [4 x i8], ptr @a, i64 %indvars.iv27.3
  %42 = getelementptr i8, ptr %41, i64 -4
  %invariant.gep21.3 = getelementptr inbounds nuw [4 x i8], ptr @bb, i64 %indvars.iv27.3
  %43 = load float, ptr %42, align 4
  br label %44

44:                                               ; preds = %44, %.preheader.3
  %indvars.iv.3 = phi i64 [ 0, %.preheader.3 ], [ %indvars.iv.next.3.1, %44 ]
  %gep.3 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep.3, i64 %indvars.iv.3
  %45 = load float, ptr %gep.3, align 4
  %46 = fsub float %45, %43
  %gep22.3 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep21.3, i64 %indvars.iv.3
  %47 = load float, ptr %gep22.3, align 4
  %48 = fadd float %46, %47
  store float %48, ptr %gep.3, align 4
  %indvars.iv.next.3 = or disjoint i64 %indvars.iv.3, 1
  %gep.3.1 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep.3, i64 %indvars.iv.next.3
  %49 = load float, ptr %gep.3.1, align 4
  %50 = fsub float %49, %43
  %gep22.3.1 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep21.3, i64 %indvars.iv.next.3
  %51 = load float, ptr %gep22.3.1, align 4
  %52 = fadd float %50, %51
  store float %52, ptr %gep.3.1, align 4
  %indvars.iv.next.3.1 = add nuw nsw i64 %indvars.iv.3, 2
  %exitcond.3.not.1 = icmp eq i64 %indvars.iv.next.3.1, 256
  br i1 %exitcond.3.not.1, label %53, label %44, !llvm.loop !183

53:                                               ; preds = %44
  store float %50, ptr %41, align 4
  %indvars.iv.next28.3 = add nuw nsw i64 %indvars.iv27.3, 1
  %exitcond30.3.not = icmp eq i64 %indvars.iv.next28.3, 256
  br i1 %exitcond30.3.not, label %.preheader.4, label %.preheader.3, !llvm.loop !184

.preheader.4:                                     ; preds = %53, %66
  %indvars.iv27.4 = phi i64 [ %indvars.iv.next28.4, %66 ], [ 1, %53 ]
  %invariant.gep.4 = getelementptr inbounds nuw [4 x i8], ptr @aa, i64 %indvars.iv27.4
  %54 = getelementptr [4 x i8], ptr @a, i64 %indvars.iv27.4
  %55 = getelementptr i8, ptr %54, i64 -4
  %invariant.gep21.4 = getelementptr inbounds nuw [4 x i8], ptr @bb, i64 %indvars.iv27.4
  %56 = load float, ptr %55, align 4
  br label %57

57:                                               ; preds = %57, %.preheader.4
  %indvars.iv.4 = phi i64 [ 0, %.preheader.4 ], [ %indvars.iv.next.4.1, %57 ]
  %gep.4 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep.4, i64 %indvars.iv.4
  %58 = load float, ptr %gep.4, align 4
  %59 = fsub float %58, %56
  %gep22.4 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep21.4, i64 %indvars.iv.4
  %60 = load float, ptr %gep22.4, align 4
  %61 = fadd float %59, %60
  store float %61, ptr %gep.4, align 4
  %indvars.iv.next.4 = or disjoint i64 %indvars.iv.4, 1
  %gep.4.1 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep.4, i64 %indvars.iv.next.4
  %62 = load float, ptr %gep.4.1, align 4
  %63 = fsub float %62, %56
  %gep22.4.1 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep21.4, i64 %indvars.iv.next.4
  %64 = load float, ptr %gep22.4.1, align 4
  %65 = fadd float %63, %64
  store float %65, ptr %gep.4.1, align 4
  %indvars.iv.next.4.1 = add nuw nsw i64 %indvars.iv.4, 2
  %exitcond.4.not.1 = icmp eq i64 %indvars.iv.next.4.1, 256
  br i1 %exitcond.4.not.1, label %66, label %57, !llvm.loop !183

66:                                               ; preds = %57
  store float %63, ptr %54, align 4
  %indvars.iv.next28.4 = add nuw nsw i64 %indvars.iv27.4, 1
  %exitcond30.4.not = icmp eq i64 %indvars.iv.next28.4, 256
  br i1 %exitcond30.4.not, label %.preheader.5, label %.preheader.4, !llvm.loop !184

.preheader.5:                                     ; preds = %66, %79
  %indvars.iv27.5 = phi i64 [ %indvars.iv.next28.5, %79 ], [ 1, %66 ]
  %invariant.gep.5 = getelementptr inbounds nuw [4 x i8], ptr @aa, i64 %indvars.iv27.5
  %67 = getelementptr [4 x i8], ptr @a, i64 %indvars.iv27.5
  %68 = getelementptr i8, ptr %67, i64 -4
  %invariant.gep21.5 = getelementptr inbounds nuw [4 x i8], ptr @bb, i64 %indvars.iv27.5
  %69 = load float, ptr %68, align 4
  br label %70

70:                                               ; preds = %70, %.preheader.5
  %indvars.iv.5 = phi i64 [ 0, %.preheader.5 ], [ %indvars.iv.next.5.1, %70 ]
  %gep.5 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep.5, i64 %indvars.iv.5
  %71 = load float, ptr %gep.5, align 4
  %72 = fsub float %71, %69
  %gep22.5 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep21.5, i64 %indvars.iv.5
  %73 = load float, ptr %gep22.5, align 4
  %74 = fadd float %72, %73
  store float %74, ptr %gep.5, align 4
  %indvars.iv.next.5 = or disjoint i64 %indvars.iv.5, 1
  %gep.5.1 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep.5, i64 %indvars.iv.next.5
  %75 = load float, ptr %gep.5.1, align 4
  %76 = fsub float %75, %69
  %gep22.5.1 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep21.5, i64 %indvars.iv.next.5
  %77 = load float, ptr %gep22.5.1, align 4
  %78 = fadd float %76, %77
  store float %78, ptr %gep.5.1, align 4
  %indvars.iv.next.5.1 = add nuw nsw i64 %indvars.iv.5, 2
  %exitcond.5.not.1 = icmp eq i64 %indvars.iv.next.5.1, 256
  br i1 %exitcond.5.not.1, label %79, label %70, !llvm.loop !183

79:                                               ; preds = %70
  store float %76, ptr %67, align 4
  %indvars.iv.next28.5 = add nuw nsw i64 %indvars.iv27.5, 1
  %exitcond30.5.not = icmp eq i64 %indvars.iv.next28.5, 256
  br i1 %exitcond30.5.not, label %.preheader.6, label %.preheader.5, !llvm.loop !184

.preheader.6:                                     ; preds = %79, %92
  %indvars.iv27.6 = phi i64 [ %indvars.iv.next28.6, %92 ], [ 1, %79 ]
  %invariant.gep.6 = getelementptr inbounds nuw [4 x i8], ptr @aa, i64 %indvars.iv27.6
  %80 = getelementptr [4 x i8], ptr @a, i64 %indvars.iv27.6
  %81 = getelementptr i8, ptr %80, i64 -4
  %invariant.gep21.6 = getelementptr inbounds nuw [4 x i8], ptr @bb, i64 %indvars.iv27.6
  %82 = load float, ptr %81, align 4
  br label %83

83:                                               ; preds = %83, %.preheader.6
  %indvars.iv.6 = phi i64 [ 0, %.preheader.6 ], [ %indvars.iv.next.6.1, %83 ]
  %gep.6 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep.6, i64 %indvars.iv.6
  %84 = load float, ptr %gep.6, align 4
  %85 = fsub float %84, %82
  %gep22.6 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep21.6, i64 %indvars.iv.6
  %86 = load float, ptr %gep22.6, align 4
  %87 = fadd float %85, %86
  store float %87, ptr %gep.6, align 4
  %indvars.iv.next.6 = or disjoint i64 %indvars.iv.6, 1
  %gep.6.1 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep.6, i64 %indvars.iv.next.6
  %88 = load float, ptr %gep.6.1, align 4
  %89 = fsub float %88, %82
  %gep22.6.1 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep21.6, i64 %indvars.iv.next.6
  %90 = load float, ptr %gep22.6.1, align 4
  %91 = fadd float %89, %90
  store float %91, ptr %gep.6.1, align 4
  %indvars.iv.next.6.1 = add nuw nsw i64 %indvars.iv.6, 2
  %exitcond.6.not.1 = icmp eq i64 %indvars.iv.next.6.1, 256
  br i1 %exitcond.6.not.1, label %92, label %83, !llvm.loop !183

92:                                               ; preds = %83
  store float %89, ptr %80, align 4
  %indvars.iv.next28.6 = add nuw nsw i64 %indvars.iv27.6, 1
  %exitcond30.6.not = icmp eq i64 %indvars.iv.next28.6, 256
  br i1 %exitcond30.6.not, label %.preheader.7, label %.preheader.6, !llvm.loop !184

.preheader.7:                                     ; preds = %92, %105
  %indvars.iv27.7 = phi i64 [ %indvars.iv.next28.7, %105 ], [ 1, %92 ]
  %invariant.gep.7 = getelementptr inbounds nuw [4 x i8], ptr @aa, i64 %indvars.iv27.7
  %93 = getelementptr [4 x i8], ptr @a, i64 %indvars.iv27.7
  %94 = getelementptr i8, ptr %93, i64 -4
  %invariant.gep21.7 = getelementptr inbounds nuw [4 x i8], ptr @bb, i64 %indvars.iv27.7
  %95 = load float, ptr %94, align 4
  br label %96

96:                                               ; preds = %96, %.preheader.7
  %indvars.iv.7 = phi i64 [ 0, %.preheader.7 ], [ %indvars.iv.next.7.1, %96 ]
  %gep.7 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep.7, i64 %indvars.iv.7
  %97 = load float, ptr %gep.7, align 4
  %98 = fsub float %97, %95
  %gep22.7 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep21.7, i64 %indvars.iv.7
  %99 = load float, ptr %gep22.7, align 4
  %100 = fadd float %98, %99
  store float %100, ptr %gep.7, align 4
  %indvars.iv.next.7 = or disjoint i64 %indvars.iv.7, 1
  %gep.7.1 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep.7, i64 %indvars.iv.next.7
  %101 = load float, ptr %gep.7.1, align 4
  %102 = fsub float %101, %95
  %gep22.7.1 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep21.7, i64 %indvars.iv.next.7
  %103 = load float, ptr %gep22.7.1, align 4
  %104 = fadd float %102, %103
  store float %104, ptr %gep.7.1, align 4
  %indvars.iv.next.7.1 = add nuw nsw i64 %indvars.iv.7, 2
  %exitcond.7.not.1 = icmp eq i64 %indvars.iv.next.7.1, 256
  br i1 %exitcond.7.not.1, label %105, label %96, !llvm.loop !183

105:                                              ; preds = %96
  store float %102, ptr %93, align 4
  %indvars.iv.next28.7 = add nuw nsw i64 %indvars.iv27.7, 1
  %exitcond30.7.not = icmp eq i64 %indvars.iv.next28.7, 256
  br i1 %exitcond30.7.not, label %.preheader.8, label %.preheader.7, !llvm.loop !184

.preheader.8:                                     ; preds = %105, %118
  %indvars.iv27.8 = phi i64 [ %indvars.iv.next28.8, %118 ], [ 1, %105 ]
  %invariant.gep.8 = getelementptr inbounds nuw [4 x i8], ptr @aa, i64 %indvars.iv27.8
  %106 = getelementptr [4 x i8], ptr @a, i64 %indvars.iv27.8
  %107 = getelementptr i8, ptr %106, i64 -4
  %invariant.gep21.8 = getelementptr inbounds nuw [4 x i8], ptr @bb, i64 %indvars.iv27.8
  %108 = load float, ptr %107, align 4
  br label %109

109:                                              ; preds = %109, %.preheader.8
  %indvars.iv.8 = phi i64 [ 0, %.preheader.8 ], [ %indvars.iv.next.8.1, %109 ]
  %gep.8 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep.8, i64 %indvars.iv.8
  %110 = load float, ptr %gep.8, align 4
  %111 = fsub float %110, %108
  %gep22.8 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep21.8, i64 %indvars.iv.8
  %112 = load float, ptr %gep22.8, align 4
  %113 = fadd float %111, %112
  store float %113, ptr %gep.8, align 4
  %indvars.iv.next.8 = or disjoint i64 %indvars.iv.8, 1
  %gep.8.1 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep.8, i64 %indvars.iv.next.8
  %114 = load float, ptr %gep.8.1, align 4
  %115 = fsub float %114, %108
  %gep22.8.1 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep21.8, i64 %indvars.iv.next.8
  %116 = load float, ptr %gep22.8.1, align 4
  %117 = fadd float %115, %116
  store float %117, ptr %gep.8.1, align 4
  %indvars.iv.next.8.1 = add nuw nsw i64 %indvars.iv.8, 2
  %exitcond.8.not.1 = icmp eq i64 %indvars.iv.next.8.1, 256
  br i1 %exitcond.8.not.1, label %118, label %109, !llvm.loop !183

118:                                              ; preds = %109
  store float %115, ptr %106, align 4
  %indvars.iv.next28.8 = add nuw nsw i64 %indvars.iv27.8, 1
  %exitcond30.8.not = icmp eq i64 %indvars.iv.next28.8, 256
  br i1 %exitcond30.8.not, label %.preheader.9, label %.preheader.8, !llvm.loop !184

.preheader.9:                                     ; preds = %118, %131
  %indvars.iv27.9 = phi i64 [ %indvars.iv.next28.9, %131 ], [ 1, %118 ]
  %invariant.gep.9 = getelementptr inbounds nuw [4 x i8], ptr @aa, i64 %indvars.iv27.9
  %119 = getelementptr [4 x i8], ptr @a, i64 %indvars.iv27.9
  %120 = getelementptr i8, ptr %119, i64 -4
  %invariant.gep21.9 = getelementptr inbounds nuw [4 x i8], ptr @bb, i64 %indvars.iv27.9
  %121 = load float, ptr %120, align 4
  br label %122

122:                                              ; preds = %122, %.preheader.9
  %indvars.iv.9 = phi i64 [ 0, %.preheader.9 ], [ %indvars.iv.next.9.1, %122 ]
  %gep.9 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep.9, i64 %indvars.iv.9
  %123 = load float, ptr %gep.9, align 4
  %124 = fsub float %123, %121
  %gep22.9 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep21.9, i64 %indvars.iv.9
  %125 = load float, ptr %gep22.9, align 4
  %126 = fadd float %124, %125
  store float %126, ptr %gep.9, align 4
  %indvars.iv.next.9 = or disjoint i64 %indvars.iv.9, 1
  %gep.9.1 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep.9, i64 %indvars.iv.next.9
  %127 = load float, ptr %gep.9.1, align 4
  %128 = fsub float %127, %121
  %gep22.9.1 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep21.9, i64 %indvars.iv.next.9
  %129 = load float, ptr %gep22.9.1, align 4
  %130 = fadd float %128, %129
  store float %130, ptr %gep.9.1, align 4
  %indvars.iv.next.9.1 = add nuw nsw i64 %indvars.iv.9, 2
  %exitcond.9.not.1 = icmp eq i64 %indvars.iv.next.9.1, 256
  br i1 %exitcond.9.not.1, label %131, label %122, !llvm.loop !183

131:                                              ; preds = %122
  store float %128, ptr %119, align 4
  %indvars.iv.next28.9 = add nuw nsw i64 %indvars.iv27.9, 1
  %exitcond30.9.not = icmp eq i64 %indvars.iv.next28.9, 256
  br i1 %exitcond30.9.not, label %132, label %.preheader.9, !llvm.loop !184

132:                                              ; preds = %131
  %133 = tail call i32 @clock() #27
  %134 = sub i32 %133, %1
  %135 = sitofp i32 %134 to double
  %136 = fdiv double %135, 1.000000e+06
  %137 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@OOMBKDLI@S257?7?5?$CF?42f?5?7?7?$AA@", double noundef %136) #27
  tail call void @check(i32 noundef 111)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s258() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05GAGDFCMM@s258?5?$AA@")
  %2 = tail call i32 @clock() #27
  br label %.preheader

.preheader:                                       ; preds = %0, %18
  %.01721 = phi i32 [ 0, %0 ], [ %19, %18 ]
  br label %._crit_edge

._crit_edge:                                      ; preds = %.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %._crit_edge ]
  %.01819 = phi float [ 0.000000e+00, %.preheader ], [ %.1, %._crit_edge ]
  %3 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv
  %4 = load float, ptr %3, align 4
  %5 = fcmp ogt float %4, 0.000000e+00
  %6 = getelementptr inbounds nuw [4 x i8], ptr @d, i64 %indvars.iv
  %7 = load float, ptr %6, align 4
  %8 = fmul float %7, %7
  %.1 = select i1 %5, float %8, float %.01819
  %9 = getelementptr inbounds nuw [4 x i8], ptr @c, i64 %indvars.iv
  %10 = load float, ptr %9, align 4
  %11 = tail call float @llvm.fmuladd.f32(float %.1, float %10, float %7)
  %12 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %indvars.iv
  store float %11, ptr %12, align 4
  %13 = fadd float %.1, 1.000000e+00
  %14 = getelementptr inbounds nuw [4 x i8], ptr @aa, i64 %indvars.iv
  %15 = load float, ptr %14, align 4
  %16 = fmul float %13, %15
  %17 = getelementptr inbounds nuw [4 x i8], ptr @e, i64 %indvars.iv
  store float %16, ptr %17, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 256
  br i1 %exitcond.not, label %18, label %._crit_edge, !llvm.loop !185

18:                                               ; preds = %._crit_edge
  %19 = add nuw nsw i32 %.01721, 1
  %exitcond23.not = icmp eq i32 %19, 256
  br i1 %exitcond23.not, label %20, label %.preheader, !llvm.loop !186

20:                                               ; preds = %18
  %21 = tail call i32 @clock() #27
  %22 = sub i32 %21, %2
  %23 = sitofp i32 %22 to double
  %24 = fdiv double %23, 1.000000e+06
  %25 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@HNDJFHHO@S258?7?5?$CF?42f?5?7?7?$AA@", double noundef %24) #27
  tail call void @check(i32 noundef 25)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s261() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05HNAHMGKN@s261?5?$AA@")
  %2 = tail call i32 @clock() #27
  br label %.preheader

.preheader:                                       ; preds = %0, %15
  %.01618 = phi i32 [ 0, %0 ], [ %16, %15 ]
  %load_initial = load float, ptr @c, align 16
  br label %3

3:                                                ; preds = %.preheader, %3
  %store_forwarded = phi float [ %load_initial, %.preheader ], [ %14, %3 ]
  %indvars.iv = phi i64 [ 1, %.preheader ], [ %indvars.iv.next, %3 ]
  %4 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv
  %5 = load float, ptr %4, align 4
  %6 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %indvars.iv
  %7 = load float, ptr %6, align 4
  %8 = fadd float %5, %7
  %9 = getelementptr [4 x i8], ptr @c, i64 %indvars.iv
  %10 = fadd float %8, %store_forwarded
  store float %10, ptr %4, align 4
  %11 = load float, ptr %9, align 4
  %12 = getelementptr inbounds nuw [4 x i8], ptr @d, i64 %indvars.iv
  %13 = load float, ptr %12, align 4
  %14 = fmul float %11, %13
  store float %14, ptr %9, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32000
  br i1 %exitcond.not, label %15, label %3, !llvm.loop !187

15:                                               ; preds = %3
  %16 = add nuw nsw i32 %.01618, 1
  %exitcond20.not = icmp eq i32 %16, 256
  br i1 %exitcond20.not, label %17, label %.preheader, !llvm.loop !188

17:                                               ; preds = %15
  %18 = tail call i32 @clock() #27
  %19 = sub i32 %18, %2
  %20 = sitofp i32 %19 to double
  %21 = fdiv double %20, 1.000000e+06
  %22 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@HBOKLLAL@S261?7?5?$CF?42f?5?7?7?$AA@", double noundef %21) #27
  tail call void @check(i32 noundef 13)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s271() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05MFLLKBMI@s271?5?$AA@")
  %2 = tail call i32 @clock() #27
  br label %vector.ph

vector.ph:                                        ; preds = %middle.block, %0
  %.01114 = phi i32 [ 0, %0 ], [ %23, %middle.block ]
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue25, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue25 ]
  %3 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %index
  %wide.load = load <4 x float>, ptr %3, align 16
  %4 = fcmp ogt <4 x float> %wide.load, zeroinitializer
  %5 = getelementptr inbounds nuw [4 x i8], ptr @c, i64 %index
  %wide.load18 = load <4 x float>, ptr %5, align 16
  %6 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %index
  %wide.load19 = load <4 x float>, ptr %6, align 16
  %7 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %wide.load18, <4 x float> %wide.load19)
  %8 = extractelement <4 x i1> %4, i64 0
  br i1 %8, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %9 = extractelement <4 x float> %7, i64 0
  store float %9, ptr %6, align 16
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %10 = extractelement <4 x i1> %4, i64 1
  br i1 %10, label %pred.store.if20, label %pred.store.continue21

pred.store.if20:                                  ; preds = %pred.store.continue
  %11 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %index
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 4
  %13 = extractelement <4 x float> %7, i64 1
  store float %13, ptr %12, align 4
  br label %pred.store.continue21

pred.store.continue21:                            ; preds = %pred.store.if20, %pred.store.continue
  %14 = extractelement <4 x i1> %4, i64 2
  br i1 %14, label %pred.store.if22, label %pred.store.continue23

pred.store.if22:                                  ; preds = %pred.store.continue21
  %15 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %index
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %17 = extractelement <4 x float> %7, i64 2
  store float %17, ptr %16, align 8
  br label %pred.store.continue23

pred.store.continue23:                            ; preds = %pred.store.if22, %pred.store.continue21
  %18 = extractelement <4 x i1> %4, i64 3
  br i1 %18, label %pred.store.if24, label %pred.store.continue25

pred.store.if24:                                  ; preds = %pred.store.continue23
  %19 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %index
  %20 = getelementptr inbounds nuw i8, ptr %19, i64 12
  %21 = extractelement <4 x float> %7, i64 3
  store float %21, ptr %20, align 4
  br label %pred.store.continue25

pred.store.continue25:                            ; preds = %pred.store.if24, %pred.store.continue23
  %index.next = add nuw i64 %index, 4
  %22 = icmp eq i64 %index.next, 32000
  br i1 %22, label %middle.block, label %vector.body, !llvm.loop !189

middle.block:                                     ; preds = %pred.store.continue25
  %23 = add nuw nsw i32 %.01114, 1
  %exitcond16.not = icmp eq i32 %23, 1024
  br i1 %exitcond16.not, label %24, label %vector.ph, !llvm.loop !190

24:                                               ; preds = %middle.block
  %25 = tail call i32 @clock() #27
  %26 = sub i32 %25, %2
  %27 = sitofp i32 %26 to double
  %28 = fdiv double %27, 1.000000e+06
  %29 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@OKEPPHGE@S271?7?5?$CF?42f?5?7?7?$AA@", double noundef %28) #27
  tail call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s272(float noundef %0) local_unnamed_addr #11 {
  %2 = tail call i32 @init(ptr noundef nonnull @"??_C@_05MHPNBPJB@s272?5?$AA@")
  %3 = tail call i32 @clock() #27
  br label %.preheader

.preheader:                                       ; preds = %1, %20
  %.01517 = phi i32 [ 0, %1 ], [ %21, %20 ]
  br label %4

4:                                                ; preds = %.preheader, %19
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %19 ]
  %5 = getelementptr inbounds nuw [4 x i8], ptr @e, i64 %indvars.iv
  %6 = load float, ptr %5, align 4
  %7 = fcmp ult float %6, %0
  br i1 %7, label %19, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw [4 x i8], ptr @c, i64 %indvars.iv
  %10 = load float, ptr %9, align 4
  %11 = getelementptr inbounds nuw [4 x i8], ptr @d, i64 %indvars.iv
  %12 = load float, ptr %11, align 4
  %13 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv
  %14 = load float, ptr %13, align 4
  %15 = tail call float @llvm.fmuladd.f32(float %10, float %12, float %14)
  store float %15, ptr %13, align 4
  %16 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %indvars.iv
  %17 = load float, ptr %16, align 4
  %18 = tail call float @llvm.fmuladd.f32(float %10, float %10, float %17)
  store float %18, ptr %16, align 4
  br label %19

19:                                               ; preds = %4, %8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32000
  br i1 %exitcond.not, label %20, label %4, !llvm.loop !191

20:                                               ; preds = %19
  %21 = add nuw nsw i32 %.01517, 1
  %exitcond19.not = icmp eq i32 %21, 256
  br i1 %exitcond19.not, label %22, label %.preheader, !llvm.loop !192

22:                                               ; preds = %20
  %23 = tail call i32 @clock() #27
  %24 = sub i32 %23, %3
  %25 = sitofp i32 %24 to double
  %26 = fdiv double %25, 1.000000e+06
  %27 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@HDKNJBGF@S272?7?5?$CF?42f?5?7?7?$AA@", double noundef %26) #27
  tail call void @check(i32 noundef 12)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s273() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05MGDPHFKG@s273?5?$AA@")
  %2 = tail call i32 @clock() #27
  br label %vector.ph

vector.ph:                                        ; preds = %middle.block, %0
  %.01719 = phi i32 [ 0, %0 ], [ %27, %middle.block ]
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue30, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue30 ]
  %3 = getelementptr inbounds nuw [4 x i8], ptr @d, i64 %index
  %wide.load = load <4 x float>, ptr %3, align 16
  %4 = getelementptr inbounds nuw [4 x i8], ptr @e, i64 %index
  %wide.load22 = load <4 x float>, ptr %4, align 16
  %5 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %index
  %wide.load23 = load <4 x float>, ptr %5, align 16
  %6 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %wide.load22, <4 x float> %wide.load23)
  store <4 x float> %6, ptr %5, align 16
  %7 = fcmp olt <4 x float> %6, zeroinitializer
  %8 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %index
  %wide.load24 = load <4 x float>, ptr %8, align 16
  %9 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %wide.load22, <4 x float> %wide.load24)
  %10 = extractelement <4 x i1> %7, i64 0
  br i1 %10, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %11 = extractelement <4 x float> %9, i64 0
  store float %11, ptr %8, align 16
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %12 = extractelement <4 x i1> %7, i64 1
  br i1 %12, label %pred.store.if25, label %pred.store.continue26

pred.store.if25:                                  ; preds = %pred.store.continue
  %13 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %index
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 4
  %15 = extractelement <4 x float> %9, i64 1
  store float %15, ptr %14, align 4
  br label %pred.store.continue26

pred.store.continue26:                            ; preds = %pred.store.if25, %pred.store.continue
  %16 = extractelement <4 x i1> %7, i64 2
  br i1 %16, label %pred.store.if27, label %pred.store.continue28

pred.store.if27:                                  ; preds = %pred.store.continue26
  %17 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %index
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 8
  %19 = extractelement <4 x float> %9, i64 2
  store float %19, ptr %18, align 8
  br label %pred.store.continue28

pred.store.continue28:                            ; preds = %pred.store.if27, %pred.store.continue26
  %20 = extractelement <4 x i1> %7, i64 3
  br i1 %20, label %pred.store.if29, label %pred.store.continue30

pred.store.if29:                                  ; preds = %pred.store.continue28
  %21 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %index
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 12
  %23 = extractelement <4 x float> %9, i64 3
  store float %23, ptr %22, align 4
  br label %pred.store.continue30

pred.store.continue30:                            ; preds = %pred.store.if29, %pred.store.continue28
  %24 = getelementptr inbounds nuw [4 x i8], ptr @c, i64 %index
  %wide.load31 = load <4 x float>, ptr %24, align 16
  %25 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %6, <4 x float> %wide.load, <4 x float> %wide.load31)
  store <4 x float> %25, ptr %24, align 16
  %index.next = add nuw i64 %index, 4
  %26 = icmp eq i64 %index.next, 32000
  br i1 %26, label %middle.block, label %vector.body, !llvm.loop !193

middle.block:                                     ; preds = %pred.store.continue30
  %27 = add nuw nsw i32 %.01719, 1
  %exitcond21.not = icmp eq i32 %27, 256
  br i1 %exitcond21.not, label %28, label %vector.ph, !llvm.loop !194

28:                                               ; preds = %middle.block
  %29 = tail call i32 @clock() #27
  %30 = sub i32 %29, %2
  %31 = sitofp i32 %30 to double
  %32 = fdiv double %31, 1.000000e+06
  %33 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@LCCDEOKF@S273?7?5?$CF?42f?5?7?7?$AA@", double noundef %32) #27
  tail call void @check(i32 noundef 123)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s274() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05MDHAGDCD@s274?5?$AA@")
  %2 = tail call i32 @clock() #27
  br label %.preheader

.preheader:                                       ; preds = %0, %20
  %.01821 = phi i32 [ 0, %0 ], [ %21, %20 ]
  br label %3

3:                                                ; preds = %.preheader, %19
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %19 ]
  %4 = getelementptr inbounds nuw [4 x i8], ptr @c, i64 %indvars.iv
  %5 = load float, ptr %4, align 4
  %6 = getelementptr inbounds nuw [4 x i8], ptr @e, i64 %indvars.iv
  %7 = load float, ptr %6, align 4
  %8 = getelementptr inbounds nuw [4 x i8], ptr @d, i64 %indvars.iv
  %9 = load float, ptr %8, align 4
  %10 = tail call float @llvm.fmuladd.f32(float %7, float %9, float %5)
  %11 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv
  store float %10, ptr %11, align 4
  %12 = fcmp ogt float %10, 0.000000e+00
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %indvars.iv
  %15 = load float, ptr %14, align 4
  %16 = fadd float %10, %15
  store float %16, ptr %14, align 4
  br label %19

17:                                               ; preds = %3
  %18 = fmul float %7, %9
  store float %18, ptr %11, align 4
  br label %19

19:                                               ; preds = %13, %17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32000
  br i1 %exitcond.not, label %20, label %3, !llvm.loop !195

20:                                               ; preds = %19
  %21 = add nuw nsw i32 %.01821, 1
  %exitcond23.not = icmp eq i32 %21, 256
  br i1 %exitcond23.not, label %22, label %.preheader, !llvm.loop !196

22:                                               ; preds = %20
  %23 = tail call i32 @clock() #27
  %24 = sub i32 %23, %2
  %25 = sitofp i32 %24 to double
  %26 = fdiv double %25, 1.000000e+06
  %27 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@JLBIFLCG@S274?7?5?$CF?42f?5?7?7?$AA@", double noundef %26) #27
  tail call void @check(i32 noundef 12)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s275() local_unnamed_addr #11 {
.preheader20:
  %0 = tail call i32 @init(ptr noundef nonnull @"??_C@_05MCLCAJBE@s275?5?$AA@")
  %1 = tail call i32 @clock() #27
  br label %2

2:                                                ; preds = %.preheader20, %.loopexit
  %indvars.iv27 = phi i64 [ 0, %.preheader20 ], [ %indvars.iv.next28, %.loopexit ]
  %3 = getelementptr inbounds nuw [4 x i8], ptr @aa, i64 %indvars.iv27
  %4 = load float, ptr %3, align 4
  %5 = fcmp ogt float %4, 0.000000e+00
  br i1 %5, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %2
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr @bb, i64 %indvars.iv27
  %invariant.gep21 = getelementptr inbounds nuw [4 x i8], ptr @cc, i64 %indvars.iv27
  br label %6

6:                                                ; preds = %15, %.preheader
  %indvars.iv = phi i64 [ 1, %.preheader ], [ %indvars.iv.next.135, %15 ]
  %7 = getelementptr [1024 x i8], ptr @aa, i64 %indvars.iv
  %8 = getelementptr i8, ptr %7, i64 -1024
  %9 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv27
  %10 = load float, ptr %9, align 4
  %gep = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep, i64 %indvars.iv
  %11 = load float, ptr %gep, align 4
  %gep22 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep21, i64 %indvars.iv
  %12 = load float, ptr %gep22, align 4
  %13 = tail call float @llvm.fmuladd.f32(float %11, float %12, float %10)
  %14 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv27
  store float %13, ptr %14, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 256
  br i1 %exitcond.not, label %.loopexit, label %15

15:                                               ; preds = %6
  %16 = getelementptr [1024 x i8], ptr @aa, i64 %indvars.iv.next
  %17 = getelementptr i8, ptr %16, i64 -1024
  %18 = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %indvars.iv27
  %19 = load float, ptr %18, align 4
  %gep.133 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %20 = load float, ptr %gep.133, align 4
  %gep22.134 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep21, i64 %indvars.iv.next
  %21 = load float, ptr %gep22.134, align 4
  %22 = tail call float @llvm.fmuladd.f32(float %20, float %21, float %19)
  %23 = getelementptr inbounds nuw [4 x i8], ptr %16, i64 %indvars.iv27
  store float %22, ptr %23, align 4
  %indvars.iv.next.135 = add nuw nsw i64 %indvars.iv, 2
  br label %6

.loopexit:                                        ; preds = %6, %2
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  %exitcond30.not = icmp eq i64 %indvars.iv.next28, 256
  br i1 %exitcond30.not, label %.preheader20.1, label %2, !llvm.loop !197

.preheader20.1:                                   ; preds = %.loopexit, %.loopexit.1
  %indvars.iv27.1 = phi i64 [ %indvars.iv.next28.1, %.loopexit.1 ], [ 0, %.loopexit ]
  %24 = getelementptr inbounds nuw [4 x i8], ptr @aa, i64 %indvars.iv27.1
  %25 = load float, ptr %24, align 4
  %26 = fcmp ogt float %25, 0.000000e+00
  br i1 %26, label %.preheader.1, label %.loopexit.1

.preheader.1:                                     ; preds = %.preheader20.1
  %invariant.gep.1 = getelementptr inbounds nuw [4 x i8], ptr @bb, i64 %indvars.iv27.1
  %invariant.gep21.1 = getelementptr inbounds nuw [4 x i8], ptr @cc, i64 %indvars.iv27.1
  br label %27

27:                                               ; preds = %36, %.preheader.1
  %indvars.iv.1 = phi i64 [ 1, %.preheader.1 ], [ %indvars.iv.next.1.1, %36 ]
  %28 = getelementptr [1024 x i8], ptr @aa, i64 %indvars.iv.1
  %29 = getelementptr i8, ptr %28, i64 -1024
  %30 = getelementptr inbounds nuw [4 x i8], ptr %29, i64 %indvars.iv27.1
  %31 = load float, ptr %30, align 4
  %gep.1 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep.1, i64 %indvars.iv.1
  %32 = load float, ptr %gep.1, align 4
  %gep22.1 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep21.1, i64 %indvars.iv.1
  %33 = load float, ptr %gep22.1, align 4
  %34 = tail call float @llvm.fmuladd.f32(float %32, float %33, float %31)
  %35 = getelementptr inbounds nuw [4 x i8], ptr %28, i64 %indvars.iv27.1
  store float %34, ptr %35, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1
  %exitcond.1.not = icmp eq i64 %indvars.iv.next.1, 256
  br i1 %exitcond.1.not, label %.loopexit.1, label %36

36:                                               ; preds = %27
  %37 = getelementptr [1024 x i8], ptr @aa, i64 %indvars.iv.next.1
  %38 = getelementptr i8, ptr %37, i64 -1024
  %39 = getelementptr inbounds nuw [4 x i8], ptr %38, i64 %indvars.iv27.1
  %40 = load float, ptr %39, align 4
  %gep.1.1 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep.1, i64 %indvars.iv.next.1
  %41 = load float, ptr %gep.1.1, align 4
  %gep22.1.1 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep21.1, i64 %indvars.iv.next.1
  %42 = load float, ptr %gep22.1.1, align 4
  %43 = tail call float @llvm.fmuladd.f32(float %41, float %42, float %40)
  %44 = getelementptr inbounds nuw [4 x i8], ptr %37, i64 %indvars.iv27.1
  store float %43, ptr %44, align 4
  %indvars.iv.next.1.1 = add nuw nsw i64 %indvars.iv.1, 2
  br label %27

.loopexit.1:                                      ; preds = %27, %.preheader20.1
  %indvars.iv.next28.1 = add nuw nsw i64 %indvars.iv27.1, 1
  %exitcond30.1.not = icmp eq i64 %indvars.iv.next28.1, 256
  br i1 %exitcond30.1.not, label %.preheader20.2, label %.preheader20.1, !llvm.loop !197

.preheader20.2:                                   ; preds = %.loopexit.1, %.loopexit.2
  %indvars.iv27.2 = phi i64 [ %indvars.iv.next28.2, %.loopexit.2 ], [ 0, %.loopexit.1 ]
  %45 = getelementptr inbounds nuw [4 x i8], ptr @aa, i64 %indvars.iv27.2
  %46 = load float, ptr %45, align 4
  %47 = fcmp ogt float %46, 0.000000e+00
  br i1 %47, label %.preheader.2, label %.loopexit.2

.preheader.2:                                     ; preds = %.preheader20.2
  %invariant.gep.2 = getelementptr inbounds nuw [4 x i8], ptr @bb, i64 %indvars.iv27.2
  %invariant.gep21.2 = getelementptr inbounds nuw [4 x i8], ptr @cc, i64 %indvars.iv27.2
  br label %48

48:                                               ; preds = %57, %.preheader.2
  %indvars.iv.2 = phi i64 [ 1, %.preheader.2 ], [ %indvars.iv.next.2.1, %57 ]
  %49 = getelementptr [1024 x i8], ptr @aa, i64 %indvars.iv.2
  %50 = getelementptr i8, ptr %49, i64 -1024
  %51 = getelementptr inbounds nuw [4 x i8], ptr %50, i64 %indvars.iv27.2
  %52 = load float, ptr %51, align 4
  %gep.2 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep.2, i64 %indvars.iv.2
  %53 = load float, ptr %gep.2, align 4
  %gep22.2 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep21.2, i64 %indvars.iv.2
  %54 = load float, ptr %gep22.2, align 4
  %55 = tail call float @llvm.fmuladd.f32(float %53, float %54, float %52)
  %56 = getelementptr inbounds nuw [4 x i8], ptr %49, i64 %indvars.iv27.2
  store float %55, ptr %56, align 4
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, 1
  %exitcond.2.not = icmp eq i64 %indvars.iv.next.2, 256
  br i1 %exitcond.2.not, label %.loopexit.2, label %57

57:                                               ; preds = %48
  %58 = getelementptr [1024 x i8], ptr @aa, i64 %indvars.iv.next.2
  %59 = getelementptr i8, ptr %58, i64 -1024
  %60 = getelementptr inbounds nuw [4 x i8], ptr %59, i64 %indvars.iv27.2
  %61 = load float, ptr %60, align 4
  %gep.2.1 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep.2, i64 %indvars.iv.next.2
  %62 = load float, ptr %gep.2.1, align 4
  %gep22.2.1 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep21.2, i64 %indvars.iv.next.2
  %63 = load float, ptr %gep22.2.1, align 4
  %64 = tail call float @llvm.fmuladd.f32(float %62, float %63, float %61)
  %65 = getelementptr inbounds nuw [4 x i8], ptr %58, i64 %indvars.iv27.2
  store float %64, ptr %65, align 4
  %indvars.iv.next.2.1 = add nuw nsw i64 %indvars.iv.2, 2
  br label %48

.loopexit.2:                                      ; preds = %48, %.preheader20.2
  %indvars.iv.next28.2 = add nuw nsw i64 %indvars.iv27.2, 1
  %exitcond30.2.not = icmp eq i64 %indvars.iv.next28.2, 256
  br i1 %exitcond30.2.not, label %.preheader20.3, label %.preheader20.2, !llvm.loop !197

.preheader20.3:                                   ; preds = %.loopexit.2, %.loopexit.3
  %indvars.iv27.3 = phi i64 [ %indvars.iv.next28.3, %.loopexit.3 ], [ 0, %.loopexit.2 ]
  %66 = getelementptr inbounds nuw [4 x i8], ptr @aa, i64 %indvars.iv27.3
  %67 = load float, ptr %66, align 4
  %68 = fcmp ogt float %67, 0.000000e+00
  br i1 %68, label %.preheader.3, label %.loopexit.3

.preheader.3:                                     ; preds = %.preheader20.3
  %invariant.gep.3 = getelementptr inbounds nuw [4 x i8], ptr @bb, i64 %indvars.iv27.3
  %invariant.gep21.3 = getelementptr inbounds nuw [4 x i8], ptr @cc, i64 %indvars.iv27.3
  br label %69

69:                                               ; preds = %78, %.preheader.3
  %indvars.iv.3 = phi i64 [ 1, %.preheader.3 ], [ %indvars.iv.next.3.1, %78 ]
  %70 = getelementptr [1024 x i8], ptr @aa, i64 %indvars.iv.3
  %71 = getelementptr i8, ptr %70, i64 -1024
  %72 = getelementptr inbounds nuw [4 x i8], ptr %71, i64 %indvars.iv27.3
  %73 = load float, ptr %72, align 4
  %gep.3 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep.3, i64 %indvars.iv.3
  %74 = load float, ptr %gep.3, align 4
  %gep22.3 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep21.3, i64 %indvars.iv.3
  %75 = load float, ptr %gep22.3, align 4
  %76 = tail call float @llvm.fmuladd.f32(float %74, float %75, float %73)
  %77 = getelementptr inbounds nuw [4 x i8], ptr %70, i64 %indvars.iv27.3
  store float %76, ptr %77, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.3, 1
  %exitcond.3.not = icmp eq i64 %indvars.iv.next.3, 256
  br i1 %exitcond.3.not, label %.loopexit.3, label %78

78:                                               ; preds = %69
  %79 = getelementptr [1024 x i8], ptr @aa, i64 %indvars.iv.next.3
  %80 = getelementptr i8, ptr %79, i64 -1024
  %81 = getelementptr inbounds nuw [4 x i8], ptr %80, i64 %indvars.iv27.3
  %82 = load float, ptr %81, align 4
  %gep.3.1 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep.3, i64 %indvars.iv.next.3
  %83 = load float, ptr %gep.3.1, align 4
  %gep22.3.1 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep21.3, i64 %indvars.iv.next.3
  %84 = load float, ptr %gep22.3.1, align 4
  %85 = tail call float @llvm.fmuladd.f32(float %83, float %84, float %82)
  %86 = getelementptr inbounds nuw [4 x i8], ptr %79, i64 %indvars.iv27.3
  store float %85, ptr %86, align 4
  %indvars.iv.next.3.1 = add nuw nsw i64 %indvars.iv.3, 2
  br label %69

.loopexit.3:                                      ; preds = %69, %.preheader20.3
  %indvars.iv.next28.3 = add nuw nsw i64 %indvars.iv27.3, 1
  %exitcond30.3.not = icmp eq i64 %indvars.iv.next28.3, 256
  br i1 %exitcond30.3.not, label %.preheader20.4, label %.preheader20.3, !llvm.loop !197

.preheader20.4:                                   ; preds = %.loopexit.3, %.loopexit.4
  %indvars.iv27.4 = phi i64 [ %indvars.iv.next28.4, %.loopexit.4 ], [ 0, %.loopexit.3 ]
  %87 = getelementptr inbounds nuw [4 x i8], ptr @aa, i64 %indvars.iv27.4
  %88 = load float, ptr %87, align 4
  %89 = fcmp ogt float %88, 0.000000e+00
  br i1 %89, label %.preheader.4, label %.loopexit.4

.preheader.4:                                     ; preds = %.preheader20.4
  %invariant.gep.4 = getelementptr inbounds nuw [4 x i8], ptr @bb, i64 %indvars.iv27.4
  %invariant.gep21.4 = getelementptr inbounds nuw [4 x i8], ptr @cc, i64 %indvars.iv27.4
  br label %90

90:                                               ; preds = %99, %.preheader.4
  %indvars.iv.4 = phi i64 [ 1, %.preheader.4 ], [ %indvars.iv.next.4.1, %99 ]
  %91 = getelementptr [1024 x i8], ptr @aa, i64 %indvars.iv.4
  %92 = getelementptr i8, ptr %91, i64 -1024
  %93 = getelementptr inbounds nuw [4 x i8], ptr %92, i64 %indvars.iv27.4
  %94 = load float, ptr %93, align 4
  %gep.4 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep.4, i64 %indvars.iv.4
  %95 = load float, ptr %gep.4, align 4
  %gep22.4 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep21.4, i64 %indvars.iv.4
  %96 = load float, ptr %gep22.4, align 4
  %97 = tail call float @llvm.fmuladd.f32(float %95, float %96, float %94)
  %98 = getelementptr inbounds nuw [4 x i8], ptr %91, i64 %indvars.iv27.4
  store float %97, ptr %98, align 4
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv.4, 1
  %exitcond.4.not = icmp eq i64 %indvars.iv.next.4, 256
  br i1 %exitcond.4.not, label %.loopexit.4, label %99

99:                                               ; preds = %90
  %100 = getelementptr [1024 x i8], ptr @aa, i64 %indvars.iv.next.4
  %101 = getelementptr i8, ptr %100, i64 -1024
  %102 = getelementptr inbounds nuw [4 x i8], ptr %101, i64 %indvars.iv27.4
  %103 = load float, ptr %102, align 4
  %gep.4.1 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep.4, i64 %indvars.iv.next.4
  %104 = load float, ptr %gep.4.1, align 4
  %gep22.4.1 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep21.4, i64 %indvars.iv.next.4
  %105 = load float, ptr %gep22.4.1, align 4
  %106 = tail call float @llvm.fmuladd.f32(float %104, float %105, float %103)
  %107 = getelementptr inbounds nuw [4 x i8], ptr %100, i64 %indvars.iv27.4
  store float %106, ptr %107, align 4
  %indvars.iv.next.4.1 = add nuw nsw i64 %indvars.iv.4, 2
  br label %90

.loopexit.4:                                      ; preds = %90, %.preheader20.4
  %indvars.iv.next28.4 = add nuw nsw i64 %indvars.iv27.4, 1
  %exitcond30.4.not = icmp eq i64 %indvars.iv.next28.4, 256
  br i1 %exitcond30.4.not, label %.preheader20.5, label %.preheader20.4, !llvm.loop !197

.preheader20.5:                                   ; preds = %.loopexit.4, %.loopexit.5
  %indvars.iv27.5 = phi i64 [ %indvars.iv.next28.5, %.loopexit.5 ], [ 0, %.loopexit.4 ]
  %108 = getelementptr inbounds nuw [4 x i8], ptr @aa, i64 %indvars.iv27.5
  %109 = load float, ptr %108, align 4
  %110 = fcmp ogt float %109, 0.000000e+00
  br i1 %110, label %.preheader.5, label %.loopexit.5

.preheader.5:                                     ; preds = %.preheader20.5
  %invariant.gep.5 = getelementptr inbounds nuw [4 x i8], ptr @bb, i64 %indvars.iv27.5
  %invariant.gep21.5 = getelementptr inbounds nuw [4 x i8], ptr @cc, i64 %indvars.iv27.5
  br label %111

111:                                              ; preds = %120, %.preheader.5
  %indvars.iv.5 = phi i64 [ 1, %.preheader.5 ], [ %indvars.iv.next.5.1, %120 ]
  %112 = getelementptr [1024 x i8], ptr @aa, i64 %indvars.iv.5
  %113 = getelementptr i8, ptr %112, i64 -1024
  %114 = getelementptr inbounds nuw [4 x i8], ptr %113, i64 %indvars.iv27.5
  %115 = load float, ptr %114, align 4
  %gep.5 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep.5, i64 %indvars.iv.5
  %116 = load float, ptr %gep.5, align 4
  %gep22.5 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep21.5, i64 %indvars.iv.5
  %117 = load float, ptr %gep22.5, align 4
  %118 = tail call float @llvm.fmuladd.f32(float %116, float %117, float %115)
  %119 = getelementptr inbounds nuw [4 x i8], ptr %112, i64 %indvars.iv27.5
  store float %118, ptr %119, align 4
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv.5, 1
  %exitcond.5.not = icmp eq i64 %indvars.iv.next.5, 256
  br i1 %exitcond.5.not, label %.loopexit.5, label %120

120:                                              ; preds = %111
  %121 = getelementptr [1024 x i8], ptr @aa, i64 %indvars.iv.next.5
  %122 = getelementptr i8, ptr %121, i64 -1024
  %123 = getelementptr inbounds nuw [4 x i8], ptr %122, i64 %indvars.iv27.5
  %124 = load float, ptr %123, align 4
  %gep.5.1 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep.5, i64 %indvars.iv.next.5
  %125 = load float, ptr %gep.5.1, align 4
  %gep22.5.1 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep21.5, i64 %indvars.iv.next.5
  %126 = load float, ptr %gep22.5.1, align 4
  %127 = tail call float @llvm.fmuladd.f32(float %125, float %126, float %124)
  %128 = getelementptr inbounds nuw [4 x i8], ptr %121, i64 %indvars.iv27.5
  store float %127, ptr %128, align 4
  %indvars.iv.next.5.1 = add nuw nsw i64 %indvars.iv.5, 2
  br label %111

.loopexit.5:                                      ; preds = %111, %.preheader20.5
  %indvars.iv.next28.5 = add nuw nsw i64 %indvars.iv27.5, 1
  %exitcond30.5.not = icmp eq i64 %indvars.iv.next28.5, 256
  br i1 %exitcond30.5.not, label %.preheader20.6, label %.preheader20.5, !llvm.loop !197

.preheader20.6:                                   ; preds = %.loopexit.5, %.loopexit.6
  %indvars.iv27.6 = phi i64 [ %indvars.iv.next28.6, %.loopexit.6 ], [ 0, %.loopexit.5 ]
  %129 = getelementptr inbounds nuw [4 x i8], ptr @aa, i64 %indvars.iv27.6
  %130 = load float, ptr %129, align 4
  %131 = fcmp ogt float %130, 0.000000e+00
  br i1 %131, label %.preheader.6, label %.loopexit.6

.preheader.6:                                     ; preds = %.preheader20.6
  %invariant.gep.6 = getelementptr inbounds nuw [4 x i8], ptr @bb, i64 %indvars.iv27.6
  %invariant.gep21.6 = getelementptr inbounds nuw [4 x i8], ptr @cc, i64 %indvars.iv27.6
  br label %132

132:                                              ; preds = %141, %.preheader.6
  %indvars.iv.6 = phi i64 [ 1, %.preheader.6 ], [ %indvars.iv.next.6.1, %141 ]
  %133 = getelementptr [1024 x i8], ptr @aa, i64 %indvars.iv.6
  %134 = getelementptr i8, ptr %133, i64 -1024
  %135 = getelementptr inbounds nuw [4 x i8], ptr %134, i64 %indvars.iv27.6
  %136 = load float, ptr %135, align 4
  %gep.6 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep.6, i64 %indvars.iv.6
  %137 = load float, ptr %gep.6, align 4
  %gep22.6 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep21.6, i64 %indvars.iv.6
  %138 = load float, ptr %gep22.6, align 4
  %139 = tail call float @llvm.fmuladd.f32(float %137, float %138, float %136)
  %140 = getelementptr inbounds nuw [4 x i8], ptr %133, i64 %indvars.iv27.6
  store float %139, ptr %140, align 4
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv.6, 1
  %exitcond.6.not = icmp eq i64 %indvars.iv.next.6, 256
  br i1 %exitcond.6.not, label %.loopexit.6, label %141

141:                                              ; preds = %132
  %142 = getelementptr [1024 x i8], ptr @aa, i64 %indvars.iv.next.6
  %143 = getelementptr i8, ptr %142, i64 -1024
  %144 = getelementptr inbounds nuw [4 x i8], ptr %143, i64 %indvars.iv27.6
  %145 = load float, ptr %144, align 4
  %gep.6.1 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep.6, i64 %indvars.iv.next.6
  %146 = load float, ptr %gep.6.1, align 4
  %gep22.6.1 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep21.6, i64 %indvars.iv.next.6
  %147 = load float, ptr %gep22.6.1, align 4
  %148 = tail call float @llvm.fmuladd.f32(float %146, float %147, float %145)
  %149 = getelementptr inbounds nuw [4 x i8], ptr %142, i64 %indvars.iv27.6
  store float %148, ptr %149, align 4
  %indvars.iv.next.6.1 = add nuw nsw i64 %indvars.iv.6, 2
  br label %132

.loopexit.6:                                      ; preds = %132, %.preheader20.6
  %indvars.iv.next28.6 = add nuw nsw i64 %indvars.iv27.6, 1
  %exitcond30.6.not = icmp eq i64 %indvars.iv.next28.6, 256
  br i1 %exitcond30.6.not, label %.preheader20.7, label %.preheader20.6, !llvm.loop !197

.preheader20.7:                                   ; preds = %.loopexit.6, %.loopexit.7
  %indvars.iv27.7 = phi i64 [ %indvars.iv.next28.7, %.loopexit.7 ], [ 0, %.loopexit.6 ]
  %150 = getelementptr inbounds nuw [4 x i8], ptr @aa, i64 %indvars.iv27.7
  %151 = load float, ptr %150, align 4
  %152 = fcmp ogt float %151, 0.000000e+00
  br i1 %152, label %.preheader.7, label %.loopexit.7

.preheader.7:                                     ; preds = %.preheader20.7
  %invariant.gep.7 = getelementptr inbounds nuw [4 x i8], ptr @bb, i64 %indvars.iv27.7
  %invariant.gep21.7 = getelementptr inbounds nuw [4 x i8], ptr @cc, i64 %indvars.iv27.7
  br label %153

153:                                              ; preds = %162, %.preheader.7
  %indvars.iv.7 = phi i64 [ 1, %.preheader.7 ], [ %indvars.iv.next.7.1, %162 ]
  %154 = getelementptr [1024 x i8], ptr @aa, i64 %indvars.iv.7
  %155 = getelementptr i8, ptr %154, i64 -1024
  %156 = getelementptr inbounds nuw [4 x i8], ptr %155, i64 %indvars.iv27.7
  %157 = load float, ptr %156, align 4
  %gep.7 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep.7, i64 %indvars.iv.7
  %158 = load float, ptr %gep.7, align 4
  %gep22.7 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep21.7, i64 %indvars.iv.7
  %159 = load float, ptr %gep22.7, align 4
  %160 = tail call float @llvm.fmuladd.f32(float %158, float %159, float %157)
  %161 = getelementptr inbounds nuw [4 x i8], ptr %154, i64 %indvars.iv27.7
  store float %160, ptr %161, align 4
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv.7, 1
  %exitcond.7.not = icmp eq i64 %indvars.iv.next.7, 256
  br i1 %exitcond.7.not, label %.loopexit.7, label %162

162:                                              ; preds = %153
  %163 = getelementptr [1024 x i8], ptr @aa, i64 %indvars.iv.next.7
  %164 = getelementptr i8, ptr %163, i64 -1024
  %165 = getelementptr inbounds nuw [4 x i8], ptr %164, i64 %indvars.iv27.7
  %166 = load float, ptr %165, align 4
  %gep.7.1 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep.7, i64 %indvars.iv.next.7
  %167 = load float, ptr %gep.7.1, align 4
  %gep22.7.1 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep21.7, i64 %indvars.iv.next.7
  %168 = load float, ptr %gep22.7.1, align 4
  %169 = tail call float @llvm.fmuladd.f32(float %167, float %168, float %166)
  %170 = getelementptr inbounds nuw [4 x i8], ptr %163, i64 %indvars.iv27.7
  store float %169, ptr %170, align 4
  %indvars.iv.next.7.1 = add nuw nsw i64 %indvars.iv.7, 2
  br label %153

.loopexit.7:                                      ; preds = %153, %.preheader20.7
  %indvars.iv.next28.7 = add nuw nsw i64 %indvars.iv27.7, 1
  %exitcond30.7.not = icmp eq i64 %indvars.iv.next28.7, 256
  br i1 %exitcond30.7.not, label %.preheader20.8, label %.preheader20.7, !llvm.loop !197

.preheader20.8:                                   ; preds = %.loopexit.7, %.loopexit.8
  %indvars.iv27.8 = phi i64 [ %indvars.iv.next28.8, %.loopexit.8 ], [ 0, %.loopexit.7 ]
  %171 = getelementptr inbounds nuw [4 x i8], ptr @aa, i64 %indvars.iv27.8
  %172 = load float, ptr %171, align 4
  %173 = fcmp ogt float %172, 0.000000e+00
  br i1 %173, label %.preheader.8, label %.loopexit.8

.preheader.8:                                     ; preds = %.preheader20.8
  %invariant.gep.8 = getelementptr inbounds nuw [4 x i8], ptr @bb, i64 %indvars.iv27.8
  %invariant.gep21.8 = getelementptr inbounds nuw [4 x i8], ptr @cc, i64 %indvars.iv27.8
  br label %174

174:                                              ; preds = %183, %.preheader.8
  %indvars.iv.8 = phi i64 [ 1, %.preheader.8 ], [ %indvars.iv.next.8.1, %183 ]
  %175 = getelementptr [1024 x i8], ptr @aa, i64 %indvars.iv.8
  %176 = getelementptr i8, ptr %175, i64 -1024
  %177 = getelementptr inbounds nuw [4 x i8], ptr %176, i64 %indvars.iv27.8
  %178 = load float, ptr %177, align 4
  %gep.8 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep.8, i64 %indvars.iv.8
  %179 = load float, ptr %gep.8, align 4
  %gep22.8 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep21.8, i64 %indvars.iv.8
  %180 = load float, ptr %gep22.8, align 4
  %181 = tail call float @llvm.fmuladd.f32(float %179, float %180, float %178)
  %182 = getelementptr inbounds nuw [4 x i8], ptr %175, i64 %indvars.iv27.8
  store float %181, ptr %182, align 4
  %indvars.iv.next.8 = add nuw nsw i64 %indvars.iv.8, 1
  %exitcond.8.not = icmp eq i64 %indvars.iv.next.8, 256
  br i1 %exitcond.8.not, label %.loopexit.8, label %183

183:                                              ; preds = %174
  %184 = getelementptr [1024 x i8], ptr @aa, i64 %indvars.iv.next.8
  %185 = getelementptr i8, ptr %184, i64 -1024
  %186 = getelementptr inbounds nuw [4 x i8], ptr %185, i64 %indvars.iv27.8
  %187 = load float, ptr %186, align 4
  %gep.8.1 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep.8, i64 %indvars.iv.next.8
  %188 = load float, ptr %gep.8.1, align 4
  %gep22.8.1 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep21.8, i64 %indvars.iv.next.8
  %189 = load float, ptr %gep22.8.1, align 4
  %190 = tail call float @llvm.fmuladd.f32(float %188, float %189, float %187)
  %191 = getelementptr inbounds nuw [4 x i8], ptr %184, i64 %indvars.iv27.8
  store float %190, ptr %191, align 4
  %indvars.iv.next.8.1 = add nuw nsw i64 %indvars.iv.8, 2
  br label %174

.loopexit.8:                                      ; preds = %174, %.preheader20.8
  %indvars.iv.next28.8 = add nuw nsw i64 %indvars.iv27.8, 1
  %exitcond30.8.not = icmp eq i64 %indvars.iv.next28.8, 256
  br i1 %exitcond30.8.not, label %.preheader20.9, label %.preheader20.8, !llvm.loop !197

.preheader20.9:                                   ; preds = %.loopexit.8, %.loopexit.9
  %indvars.iv27.9 = phi i64 [ %indvars.iv.next28.9, %.loopexit.9 ], [ 0, %.loopexit.8 ]
  %192 = getelementptr inbounds nuw [4 x i8], ptr @aa, i64 %indvars.iv27.9
  %193 = load float, ptr %192, align 4
  %194 = fcmp ogt float %193, 0.000000e+00
  br i1 %194, label %.preheader.9, label %.loopexit.9

.preheader.9:                                     ; preds = %.preheader20.9
  %invariant.gep.9 = getelementptr inbounds nuw [4 x i8], ptr @bb, i64 %indvars.iv27.9
  %invariant.gep21.9 = getelementptr inbounds nuw [4 x i8], ptr @cc, i64 %indvars.iv27.9
  br label %195

195:                                              ; preds = %204, %.preheader.9
  %indvars.iv.9 = phi i64 [ 1, %.preheader.9 ], [ %indvars.iv.next.9.1, %204 ]
  %196 = getelementptr [1024 x i8], ptr @aa, i64 %indvars.iv.9
  %197 = getelementptr i8, ptr %196, i64 -1024
  %198 = getelementptr inbounds nuw [4 x i8], ptr %197, i64 %indvars.iv27.9
  %199 = load float, ptr %198, align 4
  %gep.9 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep.9, i64 %indvars.iv.9
  %200 = load float, ptr %gep.9, align 4
  %gep22.9 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep21.9, i64 %indvars.iv.9
  %201 = load float, ptr %gep22.9, align 4
  %202 = tail call float @llvm.fmuladd.f32(float %200, float %201, float %199)
  %203 = getelementptr inbounds nuw [4 x i8], ptr %196, i64 %indvars.iv27.9
  store float %202, ptr %203, align 4
  %indvars.iv.next.9 = add nuw nsw i64 %indvars.iv.9, 1
  %exitcond.9.not = icmp eq i64 %indvars.iv.next.9, 256
  br i1 %exitcond.9.not, label %.loopexit.9, label %204

204:                                              ; preds = %195
  %205 = getelementptr [1024 x i8], ptr @aa, i64 %indvars.iv.next.9
  %206 = getelementptr i8, ptr %205, i64 -1024
  %207 = getelementptr inbounds nuw [4 x i8], ptr %206, i64 %indvars.iv27.9
  %208 = load float, ptr %207, align 4
  %gep.9.1 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep.9, i64 %indvars.iv.next.9
  %209 = load float, ptr %gep.9.1, align 4
  %gep22.9.1 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep21.9, i64 %indvars.iv.next.9
  %210 = load float, ptr %gep22.9.1, align 4
  %211 = tail call float @llvm.fmuladd.f32(float %209, float %210, float %208)
  %212 = getelementptr inbounds nuw [4 x i8], ptr %205, i64 %indvars.iv27.9
  store float %211, ptr %212, align 4
  %indvars.iv.next.9.1 = add nuw nsw i64 %indvars.iv.9, 2
  br label %195

.loopexit.9:                                      ; preds = %195, %.preheader20.9
  %indvars.iv.next28.9 = add nuw nsw i64 %indvars.iv27.9, 1
  %exitcond30.9.not = icmp eq i64 %indvars.iv.next28.9, 256
  br i1 %exitcond30.9.not, label %213, label %.preheader20.9, !llvm.loop !197

213:                                              ; preds = %.loopexit.9
  %214 = tail call i32 @clock() #27
  %215 = sub i32 %214, %1
  %216 = sitofp i32 %215 to double
  %217 = fdiv double %216, 1.000000e+06
  %218 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@FKJGIEOG@S275?7?5?$CF?42f?5?7?7?$AA@", double noundef %217) #27
  tail call void @check(i32 noundef 11)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s2275() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05MCLCAJBE@s275?5?$AA@")
  %2 = tail call i32 @clock() #27
  br label %.preheader23

.preheader23:                                     ; preds = %0, %21
  %.02230 = phi i32 [ 0, %0 ], [ %22, %21 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader23, %12
  %indvars.iv32 = phi i64 [ 0, %.preheader23 ], [ %indvars.iv.next33, %12 ]
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr @aa, i64 %indvars.iv32
  %invariant.gep24 = getelementptr inbounds nuw [4 x i8], ptr @bb, i64 %indvars.iv32
  %invariant.gep26 = getelementptr inbounds nuw [4 x i8], ptr @cc, i64 %indvars.iv32
  br label %3

3:                                                ; preds = %3, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %3 ]
  %gep = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep, i64 %indvars.iv
  %4 = load float, ptr %gep, align 4
  %gep25 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep24, i64 %indvars.iv
  %5 = load float, ptr %gep25, align 4
  %gep27 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep26, i64 %indvars.iv
  %6 = load float, ptr %gep27, align 4
  %7 = tail call float @llvm.fmuladd.f32(float %5, float %6, float %4)
  store float %7, ptr %gep, align 4
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %gep.1 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %8 = load float, ptr %gep.1, align 4
  %gep25.1 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep24, i64 %indvars.iv.next
  %9 = load float, ptr %gep25.1, align 4
  %gep27.1 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep26, i64 %indvars.iv.next
  %10 = load float, ptr %gep27.1, align 4
  %11 = tail call float @llvm.fmuladd.f32(float %9, float %10, float %8)
  store float %11, ptr %gep.1, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 256
  br i1 %exitcond.not.1, label %12, label %3, !llvm.loop !198

12:                                               ; preds = %3
  %13 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %indvars.iv32
  %14 = load float, ptr %13, align 4
  %15 = getelementptr inbounds nuw [4 x i8], ptr @c, i64 %indvars.iv32
  %16 = load float, ptr %15, align 4
  %17 = getelementptr inbounds nuw [4 x i8], ptr @d, i64 %indvars.iv32
  %18 = load float, ptr %17, align 4
  %19 = tail call float @llvm.fmuladd.f32(float %16, float %18, float %14)
  %20 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv32
  store float %19, ptr %20, align 4
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  %exitcond35.not = icmp eq i64 %indvars.iv.next33, 256
  br i1 %exitcond35.not, label %21, label %.preheader, !llvm.loop !199

21:                                               ; preds = %12
  %22 = add nuw nsw i32 %.02230, 1
  %exitcond36.not = icmp eq i32 %22, 100
  br i1 %exitcond36.not, label %23, label %.preheader23, !llvm.loop !200

23:                                               ; preds = %21
  %24 = tail call i32 @clock() #27
  %25 = sub i32 %24, %2
  %26 = sitofp i32 %25 to double
  %27 = fdiv double %26, 1.000000e+06
  %28 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0P@NCMIBONC@S2275?7?5?$CF?42f?5?7?7?$AA@", double noundef %27) #27
  tail call void @check(i32 noundef 11)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s276() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05MAPELHEN@s276?5?$AA@")
  %2 = tail call i32 @clock() #27
  br label %.preheader

.preheader:                                       ; preds = %0, %20
  %.01517 = phi i32 [ 0, %0 ], [ %21, %20 ]
  br label %3

3:                                                ; preds = %3, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %3 ]
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %4 = icmp samesign ult i64 %indvars.iv, 15999
  %5 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %indvars.iv
  %6 = load float, ptr %5, align 8
  %7 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv
  %8 = load float, ptr %7, align 8
  %c.d = select i1 %4, ptr @c, ptr @d
  %9 = getelementptr inbounds nuw [4 x i8], ptr %c.d, i64 %indvars.iv
  %10 = load float, ptr %9, align 8
  %11 = tail call float @llvm.fmuladd.f32(float %6, float %10, float %8)
  store float %11, ptr %7, align 8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %12 = icmp samesign ult i64 %indvars.iv.next, 15999
  %13 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %indvars.iv.next
  %14 = load float, ptr %13, align 4
  %15 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv.next
  %16 = load float, ptr %15, align 4
  %c.d.1 = select i1 %12, ptr @c, ptr @d
  %17 = getelementptr inbounds nuw [4 x i8], ptr %c.d.1, i64 %indvars.iv.next
  %18 = load float, ptr %17, align 4
  %19 = tail call float @llvm.fmuladd.f32(float %14, float %18, float %16)
  store float %19, ptr %15, align 4
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 32000
  br i1 %exitcond.not.1, label %20, label %3, !llvm.loop !201

20:                                               ; preds = %3
  %21 = add nuw nsw i32 %.01517, 1
  %exitcond19.not = icmp eq i32 %21, 1024
  br i1 %exitcond19.not, label %22, label %.preheader, !llvm.loop !202

22:                                               ; preds = %20
  %23 = tail call i32 @clock() #27
  %24 = sub i32 %23, %2
  %25 = sitofp i32 %24 to double
  %26 = fdiv double %25, 1.000000e+06
  %27 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@MDHEOCOH@S276?7?5?$CF?42f?5?7?7?$AA@", double noundef %26) #27
  tail call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s277() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05MBDGNNHK@s277?5?$AA@")
  %2 = tail call i32 @clock() #27
  br label %.preheader

.preheader:                                       ; preds = %0, %22
  %.01619 = phi i32 [ 0, %0 ], [ %23, %22 ]
  br label %3

3:                                                ; preds = %.preheader, %21
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %21 ]
  %4 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv
  %5 = load float, ptr %4, align 4
  %6 = fcmp ult float %5, 0.000000e+00
  br i1 %6, label %7, label %21

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %indvars.iv
  %9 = load float, ptr %8, align 4
  %10 = fcmp ult float %9, 0.000000e+00
  %11 = getelementptr inbounds nuw [4 x i8], ptr @c, i64 %indvars.iv
  %12 = load float, ptr %11, align 4
  %13 = getelementptr inbounds nuw [4 x i8], ptr @d, i64 %indvars.iv
  %14 = load float, ptr %13, align 4
  br i1 %10, label %15, label %._crit_edge

15:                                               ; preds = %7
  %16 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %5)
  store float %16, ptr %4, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %7, %15
  %17 = getelementptr inbounds nuw [4 x i8], ptr @e, i64 %indvars.iv
  %18 = load float, ptr %17, align 4
  %19 = tail call float @llvm.fmuladd.f32(float %14, float %18, float %12)
  %20 = getelementptr inbounds nuw i8, ptr %8, i64 4
  store float %19, ptr %20, align 4
  br label %21

21:                                               ; preds = %._crit_edge, %3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 31999
  br i1 %exitcond.not, label %22, label %3, !llvm.loop !203

22:                                               ; preds = %21
  %23 = add nuw nsw i32 %.01619, 1
  %exitcond21.not = icmp eq i32 %23, 256
  br i1 %exitcond21.not, label %24, label %.preheader, !llvm.loop !204

24:                                               ; preds = %22
  %25 = tail call i32 @clock() #27
  %26 = sub i32 %25, %2
  %27 = sitofp i32 %26 to double
  %28 = fdiv double %27, 1.000000e+06
  %29 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@CPKDNCH@S277?7?5?$CF?42f?5?7?7?$AA@", double noundef %28) #27
  tail call void @check(i32 noundef 12)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s278() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05MKGKJKEH@s278?5?$AA@")
  %2 = tail call i32 @clock() #27
  br label %.preheader

.preheader:                                       ; preds = %0, %25
  %.02022 = phi i32 [ 0, %0 ], [ %26, %25 ]
  br label %3

3:                                                ; preds = %.preheader, %21
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %21 ]
  %4 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv
  %5 = load float, ptr %4, align 4
  %6 = fcmp ogt float %5, 0.000000e+00
  %7 = getelementptr inbounds nuw [4 x i8], ptr @d, i64 %indvars.iv
  %8 = load float, ptr %7, align 4
  %9 = getelementptr inbounds nuw [4 x i8], ptr @e, i64 %indvars.iv
  %10 = load float, ptr %9, align 4
  br i1 %6, label %16, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %indvars.iv
  %13 = load float, ptr %12, align 4
  %14 = fneg float %13
  %15 = tail call float @llvm.fmuladd.f32(float %8, float %10, float %14)
  store float %15, ptr %12, align 4
  %.phi.trans.insert25 = getelementptr inbounds nuw [4 x i8], ptr @c, i64 %indvars.iv
  %.pre26 = load float, ptr %.phi.trans.insert25, align 4
  br label %21

16:                                               ; preds = %3
  %17 = getelementptr inbounds nuw [4 x i8], ptr @c, i64 %indvars.iv
  %18 = load float, ptr %17, align 4
  %19 = fneg float %18
  %20 = tail call float @llvm.fmuladd.f32(float %8, float %10, float %19)
  store float %20, ptr %17, align 4
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %indvars.iv
  %.pre = load float, ptr %.phi.trans.insert, align 4
  br label %21

21:                                               ; preds = %16, %11
  %22 = phi float [ %20, %16 ], [ %.pre26, %11 ]
  %23 = phi float [ %.pre, %16 ], [ %15, %11 ]
  %24 = tail call float @llvm.fmuladd.f32(float %22, float %8, float %23)
  store float %24, ptr %4, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32000
  br i1 %exitcond.not, label %25, label %3, !llvm.loop !205

25:                                               ; preds = %21
  %26 = add nuw nsw i32 %.02022, 1
  %exitcond24.not = icmp eq i32 %26, 256
  br i1 %exitcond24.not, label %27, label %.preheader, !llvm.loop !206

27:                                               ; preds = %25
  %28 = tail call i32 @clock() #27
  %29 = sub i32 %28, %2
  %30 = sitofp i32 %29 to double
  %31 = fdiv double %30, 1.000000e+06
  %32 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@JBACMJOB@S278?7?5?$CF?42f?5?7?7?$AA@", double noundef %31) #27
  tail call void @check(i32 noundef 123)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s279() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05MLKIPAHA@s279?5?$AA@")
  %2 = tail call i32 @clock() #27
  br label %.preheader

.preheader:                                       ; preds = %0, %33
  %.02527 = phi i32 [ 0, %0 ], [ %34, %33 ]
  br label %3

3:                                                ; preds = %.preheader, %28
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %28 ]
  %4 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv
  %5 = load float, ptr %4, align 4
  %6 = fcmp ogt float %5, 0.000000e+00
  br i1 %6, label %21, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %indvars.iv
  %9 = load float, ptr %8, align 4
  %10 = fneg float %9
  %11 = getelementptr inbounds nuw [4 x i8], ptr @d, i64 %indvars.iv
  %12 = load float, ptr %11, align 4
  %13 = tail call float @llvm.fmuladd.f32(float %12, float %12, float %10)
  store float %13, ptr %8, align 4
  %14 = fcmp ugt float %13, %5
  br i1 %14, label %15, label %._crit_edge

._crit_edge:                                      ; preds = %7
  %.phi.trans.insert30 = getelementptr inbounds nuw [4 x i8], ptr @c, i64 %indvars.iv
  %.pre31 = load float, ptr %.phi.trans.insert30, align 4
  br label %28

15:                                               ; preds = %7
  %16 = getelementptr inbounds nuw [4 x i8], ptr @e, i64 %indvars.iv
  %17 = load float, ptr %16, align 4
  %18 = getelementptr inbounds nuw [4 x i8], ptr @c, i64 %indvars.iv
  %19 = load float, ptr %18, align 4
  %20 = tail call float @llvm.fmuladd.f32(float %12, float %17, float %19)
  store float %20, ptr %18, align 4
  br label %28

21:                                               ; preds = %3
  %22 = getelementptr inbounds nuw [4 x i8], ptr @c, i64 %indvars.iv
  %23 = load float, ptr %22, align 4
  %24 = fneg float %23
  %25 = getelementptr inbounds nuw [4 x i8], ptr @e, i64 %indvars.iv
  %26 = load float, ptr %25, align 4
  %27 = tail call float @llvm.fmuladd.f32(float %26, float %26, float %24)
  store float %27, ptr %22, align 4
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %indvars.iv
  %.pre = load float, ptr %.phi.trans.insert, align 4
  %.phi.trans.insert32 = getelementptr inbounds nuw [4 x i8], ptr @d, i64 %indvars.iv
  %.pre33 = load float, ptr %.phi.trans.insert32, align 4
  br label %28

28:                                               ; preds = %._crit_edge, %21, %15
  %29 = phi float [ %12, %._crit_edge ], [ %.pre33, %21 ], [ %12, %15 ]
  %30 = phi float [ %.pre31, %._crit_edge ], [ %27, %21 ], [ %20, %15 ]
  %31 = phi float [ %13, %._crit_edge ], [ %.pre, %21 ], [ %13, %15 ]
  %32 = tail call float @llvm.fmuladd.f32(float %30, float %29, float %31)
  store float %32, ptr %4, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32000
  br i1 %exitcond.not, label %33, label %3, !llvm.loop !207

33:                                               ; preds = %28
  %34 = add nuw nsw i32 %.02527, 1
  %exitcond29.not = icmp eq i32 %34, 128
  br i1 %exitcond29.not, label %35, label %.preheader, !llvm.loop !208

35:                                               ; preds = %33
  %36 = tail call i32 @clock() #27
  %37 = sub i32 %36, %2
  %38 = sitofp i32 %37 to double
  %39 = fdiv double %38, 1.000000e+06
  %40 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@FAIMBGCB@S279?7?5?$CF?42f?5?7?7?$AA@", double noundef %39) #27
  tail call void @check(i32 noundef 123)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s1279() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05MLKIPAHA@s279?5?$AA@")
  %2 = tail call i32 @clock() #27
  br label %vector.ph

vector.ph:                                        ; preds = %middle.block, %0
  %.01316 = phi i32 [ 0, %0 ], [ %74, %middle.block ]
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue42, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue42 ]
  %3 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %index
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %wide.load = load <4 x float>, ptr %3, align 16
  %wide.load20 = load <4 x float>, ptr %4, align 16
  %5 = fcmp olt <4 x float> %wide.load, zeroinitializer
  %6 = fcmp olt <4 x float> %wide.load20, zeroinitializer
  %7 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %index
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %wide.load21 = load <4 x float>, ptr %7, align 16
  %wide.load22 = load <4 x float>, ptr %8, align 16
  %9 = fcmp ogt <4 x float> %wide.load21, %wide.load
  %10 = fcmp ogt <4 x float> %wide.load22, %wide.load20
  %11 = select <4 x i1> %5, <4 x i1> %9, <4 x i1> zeroinitializer
  %12 = select <4 x i1> %6, <4 x i1> %10, <4 x i1> zeroinitializer
  %13 = getelementptr inbounds nuw [4 x i8], ptr @d, i64 %index
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %wide.load23 = load <4 x float>, ptr %13, align 16
  %wide.load24 = load <4 x float>, ptr %14, align 16
  %15 = getelementptr inbounds nuw [4 x i8], ptr @e, i64 %index
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %wide.load25 = load <4 x float>, ptr %15, align 16
  %wide.load26 = load <4 x float>, ptr %16, align 16
  %17 = getelementptr inbounds nuw [4 x i8], ptr @c, i64 %index
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 16
  %wide.load27 = load <4 x float>, ptr %17, align 16
  %wide.load28 = load <4 x float>, ptr %18, align 16
  %19 = extractelement <4 x i1> %11, i64 0
  br i1 %19, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %20 = extractelement <4 x float> %wide.load23, i64 0
  %21 = extractelement <4 x float> %wide.load25, i64 0
  %22 = extractelement <4 x float> %wide.load27, i64 0
  %23 = tail call float @llvm.fmuladd.f32(float %20, float %21, float %22)
  store float %23, ptr %17, align 16
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %24 = extractelement <4 x i1> %11, i64 1
  br i1 %24, label %pred.store.if29, label %pred.store.continue30

pred.store.if29:                                  ; preds = %pred.store.continue
  %25 = getelementptr inbounds nuw [4 x i8], ptr @c, i64 %index
  %26 = getelementptr inbounds nuw i8, ptr %25, i64 4
  %27 = extractelement <4 x float> %wide.load23, i64 1
  %28 = extractelement <4 x float> %wide.load25, i64 1
  %29 = extractelement <4 x float> %wide.load27, i64 1
  %30 = tail call float @llvm.fmuladd.f32(float %27, float %28, float %29)
  store float %30, ptr %26, align 4
  br label %pred.store.continue30

pred.store.continue30:                            ; preds = %pred.store.if29, %pred.store.continue
  %31 = extractelement <4 x i1> %11, i64 2
  br i1 %31, label %pred.store.if31, label %pred.store.continue32

pred.store.if31:                                  ; preds = %pred.store.continue30
  %32 = getelementptr inbounds nuw [4 x i8], ptr @c, i64 %index
  %33 = getelementptr inbounds nuw i8, ptr %32, i64 8
  %34 = extractelement <4 x float> %wide.load23, i64 2
  %35 = extractelement <4 x float> %wide.load25, i64 2
  %36 = extractelement <4 x float> %wide.load27, i64 2
  %37 = tail call float @llvm.fmuladd.f32(float %34, float %35, float %36)
  store float %37, ptr %33, align 8
  br label %pred.store.continue32

pred.store.continue32:                            ; preds = %pred.store.if31, %pred.store.continue30
  %38 = extractelement <4 x i1> %11, i64 3
  br i1 %38, label %pred.store.if33, label %pred.store.continue34

pred.store.if33:                                  ; preds = %pred.store.continue32
  %39 = getelementptr inbounds nuw [4 x i8], ptr @c, i64 %index
  %40 = getelementptr inbounds nuw i8, ptr %39, i64 12
  %41 = extractelement <4 x float> %wide.load23, i64 3
  %42 = extractelement <4 x float> %wide.load25, i64 3
  %43 = extractelement <4 x float> %wide.load27, i64 3
  %44 = tail call float @llvm.fmuladd.f32(float %41, float %42, float %43)
  store float %44, ptr %40, align 4
  br label %pred.store.continue34

pred.store.continue34:                            ; preds = %pred.store.if33, %pred.store.continue32
  %45 = extractelement <4 x i1> %12, i64 0
  br i1 %45, label %pred.store.if35, label %pred.store.continue36

pred.store.if35:                                  ; preds = %pred.store.continue34
  %46 = getelementptr inbounds nuw [4 x i8], ptr @c, i64 %index
  %47 = getelementptr inbounds nuw i8, ptr %46, i64 16
  %48 = extractelement <4 x float> %wide.load24, i64 0
  %49 = extractelement <4 x float> %wide.load26, i64 0
  %50 = extractelement <4 x float> %wide.load28, i64 0
  %51 = tail call float @llvm.fmuladd.f32(float %48, float %49, float %50)
  store float %51, ptr %47, align 16
  br label %pred.store.continue36

pred.store.continue36:                            ; preds = %pred.store.if35, %pred.store.continue34
  %52 = extractelement <4 x i1> %12, i64 1
  br i1 %52, label %pred.store.if37, label %pred.store.continue38

pred.store.if37:                                  ; preds = %pred.store.continue36
  %53 = getelementptr inbounds nuw [4 x i8], ptr @c, i64 %index
  %54 = getelementptr inbounds nuw i8, ptr %53, i64 20
  %55 = extractelement <4 x float> %wide.load24, i64 1
  %56 = extractelement <4 x float> %wide.load26, i64 1
  %57 = extractelement <4 x float> %wide.load28, i64 1
  %58 = tail call float @llvm.fmuladd.f32(float %55, float %56, float %57)
  store float %58, ptr %54, align 4
  br label %pred.store.continue38

pred.store.continue38:                            ; preds = %pred.store.if37, %pred.store.continue36
  %59 = extractelement <4 x i1> %12, i64 2
  br i1 %59, label %pred.store.if39, label %pred.store.continue40

pred.store.if39:                                  ; preds = %pred.store.continue38
  %60 = getelementptr inbounds nuw [4 x i8], ptr @c, i64 %index
  %61 = getelementptr inbounds nuw i8, ptr %60, i64 24
  %62 = extractelement <4 x float> %wide.load24, i64 2
  %63 = extractelement <4 x float> %wide.load26, i64 2
  %64 = extractelement <4 x float> %wide.load28, i64 2
  %65 = tail call float @llvm.fmuladd.f32(float %62, float %63, float %64)
  store float %65, ptr %61, align 8
  br label %pred.store.continue40

pred.store.continue40:                            ; preds = %pred.store.if39, %pred.store.continue38
  %66 = extractelement <4 x i1> %12, i64 3
  br i1 %66, label %pred.store.if41, label %pred.store.continue42

pred.store.if41:                                  ; preds = %pred.store.continue40
  %67 = getelementptr inbounds nuw [4 x i8], ptr @c, i64 %index
  %68 = getelementptr inbounds nuw i8, ptr %67, i64 28
  %69 = extractelement <4 x float> %wide.load24, i64 3
  %70 = extractelement <4 x float> %wide.load26, i64 3
  %71 = extractelement <4 x float> %wide.load28, i64 3
  %72 = tail call float @llvm.fmuladd.f32(float %69, float %70, float %71)
  store float %72, ptr %68, align 4
  br label %pred.store.continue42

pred.store.continue42:                            ; preds = %pred.store.if41, %pred.store.continue40
  %index.next = add nuw i64 %index, 8
  %73 = icmp eq i64 %index.next, 32000
  br i1 %73, label %middle.block, label %vector.body, !llvm.loop !209

middle.block:                                     ; preds = %pred.store.continue42
  %74 = add nuw nsw i32 %.01316, 1
  %exitcond18.not = icmp eq i32 %74, 256
  br i1 %exitcond18.not, label %75, label %vector.ph, !llvm.loop !210

75:                                               ; preds = %middle.block
  %76 = tail call i32 @clock() #27
  %77 = sub i32 %76, %2
  %78 = sitofp i32 %77 to double
  %79 = fdiv double %78, 1.000000e+06
  %80 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0P@KELDKJMO@S1279?7?5?$CF?42f?5?7?7?$AA@", double noundef %79) #27
  tail call void @check(i32 noundef 123)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s2710(float noundef %0) local_unnamed_addr #11 {
  %2 = tail call i32 @init(ptr noundef nonnull @"??_C@_05IPHJLDJJ@s2710?$AA@")
  %3 = tail call i32 @clock() #27
  %4 = fcmp ogt float %0, 0.000000e+00
  br i1 %4, label %.preheader.us, label %.preheader

.preheader.us:                                    ; preds = %1, %.split.us.us
  %.02731.us = phi i32 [ %27, %.split.us.us ], [ 0, %1 ]
  br label %5

5:                                                ; preds = %26, %.preheader.us
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %26 ], [ 0, %.preheader.us ]
  %6 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv38
  %7 = load float, ptr %6, align 4
  %8 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %indvars.iv38
  %9 = load float, ptr %8, align 4
  %10 = fcmp ogt float %7, %9
  br i1 %10, label %19, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds nuw [4 x i8], ptr @e, i64 %indvars.iv38
  %13 = load float, ptr %12, align 4
  %14 = tail call float @llvm.fmuladd.f32(float %13, float %13, float %7)
  store float %14, ptr %8, align 4
  %15 = getelementptr inbounds nuw [4 x i8], ptr @d, i64 %indvars.iv38
  %16 = load float, ptr %15, align 4
  %17 = tail call float @llvm.fmuladd.f32(float %16, float %16, float %7)
  %18 = getelementptr inbounds nuw [4 x i8], ptr @c, i64 %indvars.iv38
  store float %17, ptr %18, align 4
  br label %26

19:                                               ; preds = %5
  %20 = getelementptr inbounds nuw [4 x i8], ptr @d, i64 %indvars.iv38
  %21 = load float, ptr %20, align 4
  %22 = tail call float @llvm.fmuladd.f32(float %9, float %21, float %7)
  store float %22, ptr %6, align 4
  %23 = getelementptr inbounds nuw [4 x i8], ptr @c, i64 %indvars.iv38
  %24 = load float, ptr %23, align 4
  %25 = tail call float @llvm.fmuladd.f32(float %21, float %21, float %24)
  store float %25, ptr %23, align 4
  br label %26

26:                                               ; preds = %19, %11
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  %exitcond41.not = icmp eq i64 %indvars.iv.next39, 32000
  br i1 %exitcond41.not, label %.split.us.us, label %5, !llvm.loop !211

.split.us.us:                                     ; preds = %26
  %27 = add nuw nsw i32 %.02731.us, 1
  %exitcond42.not = icmp eq i32 %27, 128
  br i1 %exitcond42.not, label %.split34.us, label %.preheader.us, !llvm.loop !212

.preheader:                                       ; preds = %1, %.split
  %.02731 = phi i32 [ %53, %.split ], [ 0, %1 ]
  br label %28

28:                                               ; preds = %.preheader, %52
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %52 ]
  %29 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv
  %30 = load float, ptr %29, align 4
  %31 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %indvars.iv
  %32 = load float, ptr %31, align 4
  %33 = fcmp ogt float %30, %32
  %34 = getelementptr inbounds nuw [4 x i8], ptr @c, i64 %indvars.iv
  br i1 %33, label %35, label %41

35:                                               ; preds = %28
  %36 = getelementptr inbounds nuw [4 x i8], ptr @d, i64 %indvars.iv
  %37 = load float, ptr %36, align 4
  %38 = tail call float @llvm.fmuladd.f32(float %32, float %37, float %30)
  store float %38, ptr %29, align 4
  %39 = load float, ptr %34, align 4
  %40 = tail call float @llvm.fmuladd.f32(float %37, float %37, float %39)
  br label %52

41:                                               ; preds = %28
  %42 = getelementptr inbounds nuw [4 x i8], ptr @e, i64 %indvars.iv
  %43 = load float, ptr %42, align 4
  %44 = load float, ptr %34, align 4
  %45 = insertelement <2 x float> poison, float %43, i64 0
  %46 = shufflevector <2 x float> %45, <2 x float> poison, <2 x i32> zeroinitializer
  %47 = insertelement <2 x float> poison, float %30, i64 0
  %48 = insertelement <2 x float> %47, float %44, i64 1
  %49 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %46, <2 x float> %46, <2 x float> %48)
  %50 = extractelement <2 x float> %49, i64 0
  store float %50, ptr %31, align 4
  %51 = extractelement <2 x float> %49, i64 1
  br label %52

52:                                               ; preds = %35, %41
  %.sink = phi float [ %40, %35 ], [ %51, %41 ]
  store float %.sink, ptr %34, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32000
  br i1 %exitcond.not, label %.split, label %28, !llvm.loop !211

.split:                                           ; preds = %52
  %53 = add nuw nsw i32 %.02731, 1
  %exitcond37.not = icmp eq i32 %53, 128
  br i1 %exitcond37.not, label %.split34.us, label %.preheader, !llvm.loop !212

.split34.us:                                      ; preds = %.split, %.split.us.us
  %54 = tail call i32 @clock() #27
  %55 = sub i32 %54, %3
  %56 = sitofp i32 %55 to double
  %57 = fdiv double %56, 1.000000e+06
  %58 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0P@FBINKEGD@S2710?7?5?$CF?42f?5?7?7?$AA@", double noundef %57) #27
  tail call void @check(i32 noundef 123)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s2711() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05JGGCICNI@s2711?$AA@")
  %2 = tail call i32 @clock() #27
  br label %vector.ph

vector.ph:                                        ; preds = %middle.block, %0
  %.01114 = phi i32 [ 0, %0 ], [ %23, %middle.block ]
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue25, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue25 ]
  %3 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %index
  %wide.load = load <4 x float>, ptr %3, align 16
  %4 = fcmp une <4 x float> %wide.load, zeroinitializer
  %5 = getelementptr inbounds nuw [4 x i8], ptr @c, i64 %index
  %wide.load18 = load <4 x float>, ptr %5, align 16
  %6 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %index
  %wide.load19 = load <4 x float>, ptr %6, align 16
  %7 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %wide.load18, <4 x float> %wide.load19)
  %8 = extractelement <4 x i1> %4, i64 0
  br i1 %8, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %9 = extractelement <4 x float> %7, i64 0
  store float %9, ptr %6, align 16
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %10 = extractelement <4 x i1> %4, i64 1
  br i1 %10, label %pred.store.if20, label %pred.store.continue21

pred.store.if20:                                  ; preds = %pred.store.continue
  %11 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %index
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 4
  %13 = extractelement <4 x float> %7, i64 1
  store float %13, ptr %12, align 4
  br label %pred.store.continue21

pred.store.continue21:                            ; preds = %pred.store.if20, %pred.store.continue
  %14 = extractelement <4 x i1> %4, i64 2
  br i1 %14, label %pred.store.if22, label %pred.store.continue23

pred.store.if22:                                  ; preds = %pred.store.continue21
  %15 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %index
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %17 = extractelement <4 x float> %7, i64 2
  store float %17, ptr %16, align 8
  br label %pred.store.continue23

pred.store.continue23:                            ; preds = %pred.store.if22, %pred.store.continue21
  %18 = extractelement <4 x i1> %4, i64 3
  br i1 %18, label %pred.store.if24, label %pred.store.continue25

pred.store.if24:                                  ; preds = %pred.store.continue23
  %19 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %index
  %20 = getelementptr inbounds nuw i8, ptr %19, i64 12
  %21 = extractelement <4 x float> %7, i64 3
  store float %21, ptr %20, align 4
  br label %pred.store.continue25

pred.store.continue25:                            ; preds = %pred.store.if24, %pred.store.continue23
  %index.next = add nuw i64 %index, 4
  %22 = icmp eq i64 %index.next, 32000
  br i1 %22, label %middle.block, label %vector.body, !llvm.loop !213

middle.block:                                     ; preds = %pred.store.continue25
  %23 = add nuw nsw i32 %.01114, 1
  %exitcond16.not = icmp eq i32 %23, 1024
  br i1 %exitcond16.not, label %24, label %vector.ph, !llvm.loop !214

24:                                               ; preds = %middle.block
  %25 = tail call i32 @clock() #27
  %26 = sub i32 %25, %2
  %27 = sitofp i32 %26 to double
  %28 = fdiv double %27, 1.000000e+06
  %29 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0P@JAADHLKD@S2711?7?5?$CF?42f?5?7?7?$AA@", double noundef %28) #27
  tail call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s2712() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05LNEPNBBL@s2712?$AA@")
  %2 = tail call i32 @clock() #27
  br label %vector.ph

vector.ph:                                        ; preds = %middle.block, %0
  %.01216 = phi i32 [ 0, %0 ], [ %23, %middle.block ]
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue28, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue28 ]
  %3 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %index
  %wide.load = load <4 x float>, ptr %3, align 16
  %4 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %index
  %wide.load21 = load <4 x float>, ptr %4, align 16
  %5 = fcmp ogt <4 x float> %wide.load, %wide.load21
  %6 = getelementptr inbounds nuw [4 x i8], ptr @c, i64 %index
  %wide.load22 = load <4 x float>, ptr %6, align 16
  %7 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load21, <4 x float> %wide.load22, <4 x float> %wide.load)
  %8 = extractelement <4 x i1> %5, i64 0
  br i1 %8, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %9 = extractelement <4 x float> %7, i64 0
  store float %9, ptr %3, align 16
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %10 = extractelement <4 x i1> %5, i64 1
  br i1 %10, label %pred.store.if23, label %pred.store.continue24

pred.store.if23:                                  ; preds = %pred.store.continue
  %11 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %index
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 4
  %13 = extractelement <4 x float> %7, i64 1
  store float %13, ptr %12, align 4
  br label %pred.store.continue24

pred.store.continue24:                            ; preds = %pred.store.if23, %pred.store.continue
  %14 = extractelement <4 x i1> %5, i64 2
  br i1 %14, label %pred.store.if25, label %pred.store.continue26

pred.store.if25:                                  ; preds = %pred.store.continue24
  %15 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %index
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %17 = extractelement <4 x float> %7, i64 2
  store float %17, ptr %16, align 8
  br label %pred.store.continue26

pred.store.continue26:                            ; preds = %pred.store.if25, %pred.store.continue24
  %18 = extractelement <4 x i1> %5, i64 3
  br i1 %18, label %pred.store.if27, label %pred.store.continue28

pred.store.if27:                                  ; preds = %pred.store.continue26
  %19 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %index
  %20 = getelementptr inbounds nuw i8, ptr %19, i64 12
  %21 = extractelement <4 x float> %7, i64 3
  store float %21, ptr %20, align 4
  br label %pred.store.continue28

pred.store.continue28:                            ; preds = %pred.store.if27, %pred.store.continue26
  %index.next = add nuw i64 %index, 4
  %22 = icmp eq i64 %index.next, 32000
  br i1 %22, label %middle.block, label %vector.body, !llvm.loop !215

middle.block:                                     ; preds = %pred.store.continue28
  %23 = add nuw nsw i32 %.01216, 1
  %exitcond18.not = icmp eq i32 %23, 1024
  br i1 %exitcond18.not, label %24, label %vector.ph, !llvm.loop !216

24:                                               ; preds = %middle.block
  %25 = tail call i32 @clock() #27
  %26 = sub i32 %25, %2
  %27 = sitofp i32 %26 to double
  %28 = fdiv double %27, 1.000000e+06
  %29 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0P@JOBBNKC@S2712?7?5?$CF?42f?5?7?7?$AA@", double noundef %28) #27
  tail call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s281() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05JNNILBJO@s281?5?$AA@")
  %2 = tail call i32 @clock() #27
  br label %.preheader

.preheader:                                       ; preds = %0, %14
  %.01416 = phi i32 [ 0, %0 ], [ %15, %14 ]
  br label %3

3:                                                ; preds = %.preheader, %3
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %3 ]
  %4 = sub nuw nsw i64 31999, %indvars.iv
  %5 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %4
  %6 = load float, ptr %5, align 4
  %7 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %indvars.iv
  %8 = load float, ptr %7, align 4
  %9 = getelementptr inbounds nuw [4 x i8], ptr @c, i64 %indvars.iv
  %10 = load float, ptr %9, align 4
  %11 = tail call float @llvm.fmuladd.f32(float %8, float %10, float %6)
  %12 = fadd float %11, -1.000000e+00
  %13 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv
  store float %12, ptr %13, align 4
  store float %11, ptr %7, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32000
  br i1 %exitcond.not, label %14, label %3, !llvm.loop !217

14:                                               ; preds = %3
  %15 = add nuw nsw i32 %.01416, 1
  %exitcond18.not = icmp eq i32 %15, 256
  br i1 %exitcond18.not, label %16, label %.preheader, !llvm.loop !218

16:                                               ; preds = %14
  %17 = tail call i32 @clock() #27
  %18 = sub i32 %17, %2
  %19 = sitofp i32 %18 to double
  %20 = fdiv double %19, 1.000000e+06
  %21 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@JINLGIBF@S281?7?5?$CF?42f?5?7?7?$AA@", double noundef %20) #27
  tail call void @check(i32 noundef 12)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s1281() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05JNNILBJO@s281?5?$AA@")
  %2 = tail call i32 @clock() #27
  br label %vector.ph

vector.ph:                                        ; preds = %middle.block, %0
  %.01618 = phi i32 [ 0, %0 ], [ %13, %middle.block ]
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %3 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %index
  %wide.load = load <4 x float>, ptr %3, align 16
  %4 = getelementptr inbounds nuw [4 x i8], ptr @c, i64 %index
  %wide.load21 = load <4 x float>, ptr %4, align 16
  %5 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %index
  %wide.load22 = load <4 x float>, ptr %5, align 16
  %6 = getelementptr inbounds nuw [4 x i8], ptr @d, i64 %index
  %wide.load23 = load <4 x float>, ptr %6, align 16
  %7 = fmul <4 x float> %wide.load22, %wide.load23
  %8 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %wide.load21, <4 x float> %7)
  %9 = getelementptr inbounds nuw [4 x i8], ptr @e, i64 %index
  %wide.load24 = load <4 x float>, ptr %9, align 16
  %10 = fadd <4 x float> %wide.load24, %8
  %11 = fadd <4 x float> %10, splat (float -1.000000e+00)
  store <4 x float> %11, ptr %5, align 16
  store <4 x float> %10, ptr %3, align 16
  %index.next = add nuw i64 %index, 4
  %12 = icmp eq i64 %index.next, 32000
  br i1 %12, label %middle.block, label %vector.body, !llvm.loop !219

middle.block:                                     ; preds = %vector.body
  %13 = add nuw nsw i32 %.01618, 1
  %exitcond20.not = icmp eq i32 %13, 1024
  br i1 %exitcond20.not, label %14, label %vector.ph, !llvm.loop !220

14:                                               ; preds = %middle.block
  %15 = tail call i32 @clock() #27
  %16 = sub i32 %15, %2
  %17 = sitofp i32 %16 to double
  %18 = fdiv double %17, 1.000000e+06
  %19 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0P@GMOENHPK@S1281?7?5?$CF?42f?5?7?7?$AA@", double noundef %18) #27
  tail call void @check(i32 noundef 12)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s291() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05CFGENGPL@s291?5?$AA@")
  %2 = tail call i32 @clock() #27
  %.pre.pre = load float, ptr getelementptr inbounds nuw (i8, ptr @b, i64 127996), align 4
  %vector.recur.init = insertelement <4 x float> poison, float %.pre.pre, i64 3
  br label %vector.ph

vector.ph:                                        ; preds = %middle.block, %0
  %.01115 = phi i32 [ 0, %0 ], [ %14, %middle.block ]
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vector.recur = phi <4 x float> [ %vector.recur.init, %vector.ph ], [ %wide.load18, %vector.body ]
  %3 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %index
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %wide.load = load <4 x float>, ptr %3, align 16
  %wide.load18 = load <4 x float>, ptr %4, align 16
  %5 = shufflevector <4 x float> %vector.recur, <4 x float> %wide.load, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %6 = shufflevector <4 x float> %wide.load, <4 x float> %wide.load18, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %7 = fadd <4 x float> %wide.load, %5
  %8 = fadd <4 x float> %wide.load18, %6
  %9 = fmul <4 x float> %7, splat (float 5.000000e-01)
  %10 = fmul <4 x float> %8, splat (float 5.000000e-01)
  %11 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %index
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 16
  store <4 x float> %9, ptr %11, align 16
  store <4 x float> %10, ptr %12, align 16
  %index.next = add nuw i64 %index, 8
  %13 = icmp eq i64 %index.next, 32000
  br i1 %13, label %middle.block, label %vector.body, !llvm.loop !221

middle.block:                                     ; preds = %vector.body
  %14 = add nuw nsw i32 %.01115, 1
  %exitcond17.not = icmp eq i32 %14, 512
  br i1 %exitcond17.not, label %15, label %vector.ph, !llvm.loop !222

15:                                               ; preds = %middle.block
  %16 = tail call i32 @clock() #27
  %17 = sub i32 %16, %2
  %18 = sitofp i32 %17 to double
  %19 = fdiv double %18, 1.000000e+06
  %20 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@DHOCEHK@S291?7?5?$CF?42f?5?7?7?$AA@", double noundef %19) #27
  tail call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s292() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05CHCCGIKC@s292?5?$AA@")
  %2 = tail call i32 @clock() #27
  %.pre.pre = load float, ptr getelementptr inbounds nuw (i8, ptr @b, i64 127996), align 4
  br label %.preheader

.preheader:                                       ; preds = %0, %23
  %.01319 = phi i32 [ 0, %0 ], [ %24, %23 ]
  br label %3

3:                                                ; preds = %3, %.preheader
  %4 = phi float [ %.pre.pre, %.preheader ], [ %15, %3 ]
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %3 ]
  %.01417 = phi i64 [ 31998, %.preheader ], [ %indvars.iv, %3 ]
  %.01516 = phi i64 [ 31999, %.preheader ], [ %indvars.iv.next, %3 ]
  %5 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %indvars.iv
  %6 = load float, ptr %5, align 8
  %7 = fadd float %6, %4
  %8 = and i64 %.01417, 4294967294
  %9 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %8
  %10 = load float, ptr %9, align 8
  %11 = fadd float %7, %10
  %12 = fmul float %11, 3.330000e-01
  %13 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv
  store float %12, ptr %13, align 8
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %14 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %indvars.iv.next
  %15 = load float, ptr %14, align 4
  %16 = fadd float %15, %6
  %17 = and i64 %.01516, 4294967295
  %18 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %17
  %19 = load float, ptr %18, align 4
  %20 = fadd float %16, %19
  %21 = fmul float %20, 3.330000e-01
  %22 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv.next
  store float %21, ptr %22, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 32000
  br i1 %exitcond.not.1, label %23, label %3, !llvm.loop !223

23:                                               ; preds = %3
  %24 = add nuw nsw i32 %.01319, 1
  %exitcond21.not = icmp eq i32 %24, 256
  br i1 %exitcond21.not, label %25, label %.preheader, !llvm.loop !224

25:                                               ; preds = %23
  %26 = tail call i32 @clock() #27
  %27 = sub i32 %26, %2
  %28 = sitofp i32 %27 to double
  %29 = fdiv double %28, 1.000000e+06
  %30 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@JKJMECHL@S292?7?5?$CF?42f?5?7?7?$AA@", double noundef %29) #27
  tail call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s293() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05CGOAACJF@s293?5?$AA@")
  %2 = tail call i32 @clock() #27
  br label %vector.ph

vector.ph:                                        ; preds = %middle.block, %0
  %.0810 = phi i32 [ 0, %0 ], [ %19, %middle.block ]
  %3 = load <1 x float>, ptr @a, align 16
  %broadcast.splat = shufflevector <1 x float> %3, <1 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.4, %vector.body ]
  %4 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %index
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store <4 x float> %broadcast.splat, ptr %4, align 16
  store <4 x float> %broadcast.splat, ptr %5, align 16
  %6 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %index
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 32
  %8 = getelementptr inbounds nuw i8, ptr %6, i64 48
  store <4 x float> %broadcast.splat, ptr %7, align 16
  store <4 x float> %broadcast.splat, ptr %8, align 16
  %9 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %index
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 64
  %11 = getelementptr inbounds nuw i8, ptr %9, i64 80
  store <4 x float> %broadcast.splat, ptr %10, align 16
  store <4 x float> %broadcast.splat, ptr %11, align 16
  %12 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %index
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 96
  %14 = getelementptr inbounds nuw i8, ptr %12, i64 112
  store <4 x float> %broadcast.splat, ptr %13, align 16
  store <4 x float> %broadcast.splat, ptr %14, align 16
  %15 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %index
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 128
  %17 = getelementptr inbounds nuw i8, ptr %15, i64 144
  store <4 x float> %broadcast.splat, ptr %16, align 16
  store <4 x float> %broadcast.splat, ptr %17, align 16
  %index.next.4 = add nuw nsw i64 %index, 40
  %18 = icmp eq i64 %index.next.4, 32000
  br i1 %18, label %middle.block, label %vector.body, !llvm.loop !225

middle.block:                                     ; preds = %vector.body
  %19 = add nuw nsw i32 %.0810, 1
  %exitcond12.not = icmp eq i32 %19, 1024
  br i1 %exitcond12.not, label %20, label %vector.ph, !llvm.loop !226

20:                                               ; preds = %middle.block
  %21 = tail call i32 @clock() #27
  %22 = sub i32 %21, %2
  %23 = sitofp i32 %22 to double
  %24 = fdiv double %23, 1.000000e+06
  %25 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@FLBCJNLL@S293?7?5?$CF?42f?5?7?7?$AA@", double noundef %24) #27
  tail call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s2101() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05LCMLLHDD@s2101?$AA@")
  %2 = tail call i32 @clock() #27
  br label %.preheader

.preheader:                                       ; preds = %0, %24
  %.01315 = phi i32 [ 0, %0 ], [ %25, %24 ]
  br label %3

3:                                                ; preds = %3, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %3 ]
  %4 = getelementptr inbounds nuw [1024 x i8], ptr @bb, i64 %indvars.iv
  %5 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  %6 = load float, ptr %5, align 8
  %7 = getelementptr inbounds nuw [1024 x i8], ptr @cc, i64 %indvars.iv
  %8 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv
  %9 = load float, ptr %8, align 8
  %10 = getelementptr inbounds nuw [1024 x i8], ptr @aa, i64 %indvars.iv
  %11 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv
  %12 = load float, ptr %11, align 8
  %13 = tail call float @llvm.fmuladd.f32(float %6, float %9, float %12)
  store float %13, ptr %11, align 8
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %14 = getelementptr inbounds nuw [1024 x i8], ptr @bb, i64 %indvars.iv.next
  %15 = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %indvars.iv.next
  %16 = load float, ptr %15, align 4
  %17 = getelementptr inbounds nuw [1024 x i8], ptr @cc, i64 %indvars.iv.next
  %18 = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %indvars.iv.next
  %19 = load float, ptr %18, align 4
  %20 = getelementptr inbounds nuw [1024 x i8], ptr @aa, i64 %indvars.iv.next
  %21 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %indvars.iv.next
  %22 = load float, ptr %21, align 4
  %23 = tail call float @llvm.fmuladd.f32(float %16, float %19, float %22)
  store float %23, ptr %21, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 256
  br i1 %exitcond.not.1, label %24, label %3, !llvm.loop !227

24:                                               ; preds = %3
  %25 = add nuw nsw i32 %.01315, 1
  %exitcond17.not = icmp eq i32 %25, 2560
  br i1 %exitcond17.not, label %26, label %.preheader, !llvm.loop !228

26:                                               ; preds = %24
  %27 = tail call i32 @clock() #27
  %28 = sub i32 %27, %2
  %29 = sitofp i32 %28 to double
  %30 = fdiv double %29, 1.000000e+06
  %31 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0P@KLEDOIBB@S2101?7?5?$CF?42f?5?7?7?$AA@", double noundef %30) #27
  tail call void @check(i32 noundef 11)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s2102() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05JJOGOEPA@s2102?$AA@")
  %2 = tail call i32 @clock() #27
  br label %.preheader15

.preheader15:                                     ; preds = %0, %10
  %.01418 = phi i32 [ 0, %0 ], [ %11, %10 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader15, %7
  %indvars.iv20 = phi i64 [ 0, %.preheader15 ], [ %indvars.iv.next21, %7 ]
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr @aa, i64 %indvars.iv20
  br label %3

3:                                                ; preds = %3, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.3, %3 ]
  %gep = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep, i64 %indvars.iv
  store float 0.000000e+00, ptr %gep, align 4
  %4 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep, i64 %indvars.iv
  %gep.1 = getelementptr inbounds nuw i8, ptr %4, i64 1024
  store float 0.000000e+00, ptr %gep.1, align 4
  %5 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep, i64 %indvars.iv
  %gep.2 = getelementptr inbounds nuw i8, ptr %5, i64 2048
  store float 0.000000e+00, ptr %gep.2, align 4
  %6 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep, i64 %indvars.iv
  %gep.3 = getelementptr inbounds nuw i8, ptr %6, i64 3072
  store float 0.000000e+00, ptr %gep.3, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, 256
  br i1 %exitcond.not.3, label %7, label %3, !llvm.loop !229

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw [1024 x i8], ptr @aa, i64 %indvars.iv20
  %9 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv20
  store float 1.000000e+00, ptr %9, align 4
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1
  %exitcond23.not = icmp eq i64 %indvars.iv.next21, 256
  br i1 %exitcond23.not, label %10, label %.preheader, !llvm.loop !230

10:                                               ; preds = %7
  %11 = add nuw nsw i32 %.01418, 1
  %exitcond24.not = icmp eq i32 %11, 100
  br i1 %exitcond24.not, label %12, label %.preheader15, !llvm.loop !231

12:                                               ; preds = %10
  %13 = tail call i32 @clock() #27
  %14 = sub i32 %13, %2
  %15 = sitofp i32 %14 to double
  %16 = fdiv double %15, 1.000000e+06
  %17 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0P@DCKBIOBA@S2102?7?5?$CF?42f?5?7?7?$AA@", double noundef %16) #27
  tail call void @check(i32 noundef 11)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s2111() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05LDAJNNAE@s2111?$AA@")
  %2 = tail call i32 @clock() #27
  br label %.preheader26

.preheader26:                                     ; preds = %0, %27
  %.02429 = phi i32 [ 0, %0 ], [ %28, %27 ]
  br label %.preheader25

.preheader25:                                     ; preds = %.preheader26, %26
  %indvars.iv36 = phi i64 [ 1, %.preheader26 ], [ %indvars.iv.next37, %26 ]
  %3 = getelementptr inbounds nuw [1024 x i8], ptr @aa, i64 %indvars.iv36
  %4 = getelementptr i8, ptr %3, i64 -1024
  %load_initial = load float, ptr %3, align 16
  br label %5

5:                                                ; preds = %5, %.preheader25
  %store_forwarded = phi float [ %load_initial, %.preheader25 ], [ %25, %5 ]
  %indvars.iv = phi i64 [ 1, %.preheader25 ], [ %indvars.iv.next.4, %5 ]
  %6 = getelementptr [4 x i8], ptr %3, i64 %indvars.iv
  %7 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  %8 = load float, ptr %7, align 4
  %9 = fadd float %store_forwarded, %8
  store float %9, ptr %6, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %10 = getelementptr [4 x i8], ptr %3, i64 %indvars.iv.next
  %11 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next
  %12 = load float, ptr %11, align 4
  %13 = fadd float %9, %12
  store float %13, ptr %10, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %14 = getelementptr [4 x i8], ptr %3, i64 %indvars.iv.next.1
  %15 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next.1
  %16 = load float, ptr %15, align 4
  %17 = fadd float %13, %16
  store float %17, ptr %14, align 4
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3
  %18 = getelementptr [4 x i8], ptr %3, i64 %indvars.iv.next.2
  %19 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next.2
  %20 = load float, ptr %19, align 4
  %21 = fadd float %17, %20
  store float %21, ptr %18, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %22 = getelementptr [4 x i8], ptr %3, i64 %indvars.iv.next.3
  %23 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next.3
  %24 = load float, ptr %23, align 4
  %25 = fadd float %21, %24
  store float %25, ptr %22, align 4
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv, 5
  %exitcond.not.4 = icmp eq i64 %indvars.iv.next.4, 256
  br i1 %exitcond.not.4, label %26, label %5, !llvm.loop !232

26:                                               ; preds = %5
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1
  %exitcond39.not = icmp eq i64 %indvars.iv.next37, 256
  br i1 %exitcond39.not, label %27, label %.preheader25, !llvm.loop !233

27:                                               ; preds = %26
  %28 = add nuw nsw i32 %.02429, 1
  %exitcond40.not = icmp eq i32 %28, 100
  br i1 %exitcond40.not, label %29, label %.preheader26, !llvm.loop !234

29:                                               ; preds = %27
  %30 = tail call i32 @clock() #27
  %31 = sub i32 %30, %2
  %32 = sitofp i32 %31 to double
  %33 = fdiv double %32, 1.000000e+06
  %34 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0P@DAOGKEHO@S2111?7?5?$CF?42f?5?7?7?$AA@", double noundef %33) #27
  br label %.preheader

.preheader:                                       ; preds = %29, %69
  %indvars.iv45 = phi i64 [ 0, %29 ], [ %indvars.iv.next46, %69 ]
  %.lcssa3233 = phi float [ 0.000000e+00, %29 ], [ %68, %69 ]
  %35 = getelementptr inbounds nuw [1024 x i8], ptr @aa, i64 %indvars.iv45
  br label %36

36:                                               ; preds = %36, %.preheader
  %indvars.iv41 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next42.7, %36 ]
  %37 = phi float [ %.lcssa3233, %.preheader ], [ %68, %36 ]
  %38 = getelementptr inbounds nuw [4 x i8], ptr %35, i64 %indvars.iv41
  %39 = load float, ptr %38, align 16
  %40 = fadd float %39, %37
  %41 = getelementptr inbounds nuw [4 x i8], ptr %35, i64 %indvars.iv41
  %42 = getelementptr inbounds nuw i8, ptr %41, i64 4
  %43 = load float, ptr %42, align 4
  %44 = fadd float %43, %40
  %45 = getelementptr inbounds nuw [4 x i8], ptr %35, i64 %indvars.iv41
  %46 = getelementptr inbounds nuw i8, ptr %45, i64 8
  %47 = load float, ptr %46, align 8
  %48 = fadd float %47, %44
  %49 = getelementptr inbounds nuw [4 x i8], ptr %35, i64 %indvars.iv41
  %50 = getelementptr inbounds nuw i8, ptr %49, i64 12
  %51 = load float, ptr %50, align 4
  %52 = fadd float %51, %48
  %53 = getelementptr inbounds nuw [4 x i8], ptr %35, i64 %indvars.iv41
  %54 = getelementptr inbounds nuw i8, ptr %53, i64 16
  %55 = load float, ptr %54, align 16
  %56 = fadd float %55, %52
  %57 = getelementptr inbounds nuw [4 x i8], ptr %35, i64 %indvars.iv41
  %58 = getelementptr inbounds nuw i8, ptr %57, i64 20
  %59 = load float, ptr %58, align 4
  %60 = fadd float %59, %56
  %61 = getelementptr inbounds nuw [4 x i8], ptr %35, i64 %indvars.iv41
  %62 = getelementptr inbounds nuw i8, ptr %61, i64 24
  %63 = load float, ptr %62, align 8
  %64 = fadd float %63, %60
  %65 = getelementptr inbounds nuw [4 x i8], ptr %35, i64 %indvars.iv41
  %66 = getelementptr inbounds nuw i8, ptr %65, i64 28
  %67 = load float, ptr %66, align 4
  %68 = fadd float %67, %64
  %indvars.iv.next42.7 = add nuw nsw i64 %indvars.iv41, 8
  %exitcond44.not.7 = icmp eq i64 %indvars.iv.next42.7, 256
  br i1 %exitcond44.not.7, label %69, label %36, !llvm.loop !235

69:                                               ; preds = %36
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1
  %exitcond48.not = icmp eq i64 %indvars.iv.next46, 256
  br i1 %exitcond48.not, label %70, label %.preheader, !llvm.loop !236

70:                                               ; preds = %69
  %71 = fcmp oeq float %68, 0.000000e+00
  %spec.store.select = select i1 %71, float 3.000000e+00, float %68
  store float %spec.store.select, ptr @temp, align 4
  tail call void @check(i32 noundef -1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s311() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05NNLANHKE@s311?5?$AA@")
  %2 = tail call i32 @clock() #27
  %3 = tail call i32 @clock() #27
  %4 = sub i32 %3, %2
  %5 = sitofp i32 %4 to double
  %6 = fdiv double %5, 1.000000e+06
  %7 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@NIOEILAB@S311?7?5?$CF?42f?5?7?7?$AA@", double noundef %6) #27
  tail call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local float @test(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #19 {
  %2 = load float, ptr %0, align 4
  %3 = fadd float %2, 0.000000e+00
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %5 = load float, ptr %4, align 4
  %6 = fadd float %3, %5
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %8 = load float, ptr %7, align 4
  %9 = fadd float %6, %8
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %11 = load float, ptr %10, align 4
  %12 = fadd float %9, %11
  ret float %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s31111() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05NNLANHKE@s311?5?$AA@")
  %2 = tail call i32 @clock() #27
  %3 = tail call i32 @clock() #27
  %4 = sub i32 %3, %2
  %5 = sitofp i32 %4 to double
  %6 = fdiv double %5, 1.000000e+06
  %7 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0BA@NEEAPAGC@S31111?7?5?$CF?42f?5?7?7?$AA@", double noundef %6) #27
  tail call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s312() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05NPPGGJPN@s312?5?$AA@")
  %2 = tail call i32 @clock() #27
  br label %.preheader

.preheader:                                       ; preds = %0, %23
  %.01115 = phi i32 [ 0, %0 ], [ %24, %23 ]
  br label %3

3:                                                ; preds = %3, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.4, %3 ]
  %.113 = phi float [ 1.000000e+00, %.preheader ], [ %22, %3 ]
  %4 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv
  %5 = load float, ptr %4, align 4
  %6 = fmul float %.113, %5
  %7 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 4
  %9 = load float, ptr %8, align 4
  %10 = fmul float %6, %9
  %11 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %13 = load float, ptr %12, align 4
  %14 = fmul float %10, %13
  %15 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 12
  %17 = load float, ptr %16, align 4
  %18 = fmul float %14, %17
  %19 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv
  %20 = getelementptr inbounds nuw i8, ptr %19, i64 16
  %21 = load float, ptr %20, align 4
  %22 = fmul float %18, %21
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv, 5
  %exitcond.not.4 = icmp eq i64 %indvars.iv.next.4, 32000
  br i1 %exitcond.not.4, label %23, label %3, !llvm.loop !237

23:                                               ; preds = %3
  %24 = add nuw nsw i32 %.01115, 1
  %exitcond17.not = icmp eq i32 %24, 2560
  br i1 %exitcond17.not, label %25, label %.preheader, !llvm.loop !238

25:                                               ; preds = %23
  %26 = tail call i32 @clock() #27
  %27 = sub i32 %26, %2
  %28 = sitofp i32 %27 to double
  %29 = fdiv double %28, 1.000000e+06
  %30 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@EBAGONAA@S312?7?5?$CF?42f?5?7?7?$AA@", double noundef %29) #27
  store float %22, ptr @temp, align 4
  tail call void @check(i32 noundef -1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s313() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05NODEADMK@s313?5?$AA@")
  %2 = tail call i32 @clock() #27
  br label %.preheader

.preheader:                                       ; preds = %0, %14
  %.01216 = phi i32 [ 0, %0 ], [ %15, %14 ]
  br label %3

3:                                                ; preds = %3, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %3 ]
  %.114 = phi float [ 0.000000e+00, %.preheader ], [ %13, %3 ]
  %4 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv
  %5 = load float, ptr %4, align 8
  %6 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %indvars.iv
  %7 = load float, ptr %6, align 8
  %8 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %.114)
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %9 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv.next
  %10 = load float, ptr %9, align 4
  %11 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %indvars.iv.next
  %12 = load float, ptr %11, align 4
  %13 = tail call float @llvm.fmuladd.f32(float %10, float %12, float %8)
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 32000
  br i1 %exitcond.not.1, label %14, label %3, !llvm.loop !239

14:                                               ; preds = %3
  %15 = add nuw nsw i32 %.01216, 1
  %exitcond18.not = icmp eq i32 %15, 1280
  br i1 %exitcond18.not, label %16, label %.preheader, !llvm.loop !240

16:                                               ; preds = %14
  %17 = tail call i32 @clock() #27
  %18 = sub i32 %17, %2
  %19 = sitofp i32 %18 to double
  %20 = fdiv double %19, 1.000000e+06
  %21 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@IAIIDCMA@S313?7?5?$CF?42f?5?7?7?$AA@", double noundef %20) #27
  store float %13, ptr @temp, align 4
  tail call void @check(i32 noundef -1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s314() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05NLHLBFEP@s314?5?$AA@")
  %2 = tail call i32 @clock() #27
  %3 = load float, ptr @a, align 16
  br label %4

4:                                                ; preds = %0, %13
  %.01217 = phi i32 [ 0, %0 ], [ %14, %13 ]
  br label %5

5:                                                ; preds = %5, %4
  %indvars.iv = phi i64 [ 0, %4 ], [ %indvars.iv.next.1, %5 ]
  %.115 = phi float [ %3, %4 ], [ %.2.1, %5 ]
  %6 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv
  %7 = load float, ptr %6, align 8
  %8 = fcmp ogt float %7, %.115
  %.2 = select i1 %8, float %7, float %.115
  %9 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 4
  %11 = load float, ptr %10, align 4
  %12 = fcmp ogt float %11, %.2
  %.2.1 = select i1 %12, float %11, float %.2
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 32000
  br i1 %exitcond.not.1, label %13, label %5, !llvm.loop !241

13:                                               ; preds = %5
  %14 = add nuw nsw i32 %.01217, 1
  %exitcond19.not = icmp eq i32 %14, 1280
  br i1 %exitcond19.not, label %15, label %4, !llvm.loop !242

15:                                               ; preds = %13
  %16 = tail call i32 @clock() #27
  %17 = sub i32 %16, %2
  %18 = sitofp i32 %17 to double
  %19 = fdiv double %18, 1.000000e+06
  %20 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@KJLDCHED@S314?7?5?$CF?42f?5?7?7?$AA@", double noundef %19) #27
  store float %.2.1, ptr @temp, align 4
  tail call void @check(i32 noundef -1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s315() local_unnamed_addr #11 {
vector.ph:
  %0 = tail call i32 @init(ptr noundef nonnull @"??_C@_05NKLJHPHI@s315?5?$AA@")
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ]
  %1 = mul <4 x i32> %vec.ind, splat (i32 7)
  %2 = urem <4 x i32> %1, splat (i32 32000)
  %3 = uitofp nneg <4 x i32> %2 to <4 x float>
  %4 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %index
  store <4 x float> %3, ptr %4, align 16
  %index.next = add nuw i64 %index, 4
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %5 = icmp eq i64 %index.next, 32000
  br i1 %5, label %middle.block, label %vector.body, !llvm.loop !243

middle.block:                                     ; preds = %vector.body
  %6 = tail call i32 @clock() #27
  %7 = load float, ptr @a, align 16
  br label %8

8:                                                ; preds = %middle.block, %18
  %.02031 = phi i32 [ 0, %middle.block ], [ %19, %18 ]
  br label %9

9:                                                ; preds = %9, %8
  %indvars.iv33 = phi i64 [ 0, %8 ], [ %indvars.iv.next34.1, %9 ]
  %.129 = phi i32 [ 0, %8 ], [ %.2.1, %9 ]
  %.12428 = phi float [ %7, %8 ], [ %.225.1, %9 ]
  %10 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv33
  %11 = load float, ptr %10, align 8
  %12 = fcmp ogt float %11, %.12428
  %.225 = select i1 %12, float %11, float %.12428
  %13 = trunc nuw nsw i64 %indvars.iv33 to i32
  %.2 = select i1 %12, i32 %13, i32 %.129
  %indvars.iv.next34 = or disjoint i64 %indvars.iv33, 1
  %14 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv.next34
  %15 = load float, ptr %14, align 4
  %16 = fcmp ogt float %15, %.225
  %.225.1 = select i1 %16, float %15, float %.225
  %17 = trunc nuw nsw i64 %indvars.iv.next34 to i32
  %.2.1 = select i1 %16, i32 %17, i32 %.2
  %indvars.iv.next34.1 = add nuw nsw i64 %indvars.iv33, 2
  %exitcond36.not.1 = icmp eq i64 %indvars.iv.next34.1, 32000
  br i1 %exitcond36.not.1, label %18, label %9, !llvm.loop !244

18:                                               ; preds = %9
  %19 = add nuw nsw i32 %.02031, 1
  %exitcond37.not = icmp eq i32 %19, 256
  br i1 %exitcond37.not, label %20, label %8, !llvm.loop !245

20:                                               ; preds = %18
  %21 = tail call i32 @clock() #27
  %22 = sub i32 %21, %6
  %23 = sitofp i32 %22 to double
  %24 = fdiv double %23, 1.000000e+06
  %25 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@GIDNPIID@S315?7?5?$CF?42f?5?7?7?$AA@", double noundef %24) #27
  %26 = uitofp nneg i32 %.2.1 to float
  %27 = fadd float %.225.1, %26
  %28 = fadd float %27, 1.000000e+00
  store float %28, ptr @temp, align 4
  tail call void @check(i32 noundef -1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s316() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05NIPPMBCB@s316?5?$AA@")
  %2 = tail call i32 @clock() #27
  %3 = load float, ptr @a, align 16
  br label %4

4:                                                ; preds = %0, %13
  %.01217 = phi i32 [ 0, %0 ], [ %14, %13 ]
  br label %5

5:                                                ; preds = %9, %4
  %indvars.iv = phi i64 [ 1, %4 ], [ %indvars.iv.next.1, %9 ]
  %.115 = phi float [ %3, %4 ], [ %.2.1, %9 ]
  %6 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv
  %7 = load float, ptr %6, align 4
  %8 = fcmp olt float %7, %.115
  %.2 = select i1 %8, float %7, float %.115
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32000
  br i1 %exitcond.not, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv.next
  %11 = load float, ptr %10, align 4
  %12 = fcmp olt float %11, %.2
  %.2.1 = select i1 %12, float %11, float %.2
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  br label %5

13:                                               ; preds = %5
  %14 = add nuw nsw i32 %.01217, 1
  %exitcond19.not = icmp eq i32 %14, 1280
  br i1 %exitcond19.not, label %15, label %4, !llvm.loop !246

15:                                               ; preds = %13
  %16 = tail call i32 @clock() #27
  %17 = sub i32 %16, %2
  %18 = sitofp i32 %17 to double
  %19 = fdiv double %18, 1.000000e+06
  %20 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@PBNPJOIC@S316?7?5?$CF?42f?5?7?7?$AA@", double noundef %19) #27
  store float %.2, ptr @temp, align 4
  tail call void @check(i32 noundef -1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s317() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05NJDNKLBG@s317?5?$AA@")
  %2 = tail call i32 @clock() #27
  br label %.preheader

.preheader:                                       ; preds = %0, %15
  %.01014 = phi i32 [ 0, %0 ], [ %16, %15 ]
  br label %3

3:                                                ; preds = %3, %.preheader
  %.013 = phi i32 [ 0, %.preheader ], [ %14, %3 ]
  %.112 = phi float [ 1.000000e+00, %.preheader ], [ %13, %3 ]
  %4 = fmul float %.112, 9.900000e-01
  %5 = fmul float %4, 9.900000e-01
  %6 = fmul float %5, 9.900000e-01
  %7 = fmul float %6, 9.900000e-01
  %8 = fmul float %7, 9.900000e-01
  %9 = fmul float %8, 9.900000e-01
  %10 = fmul float %9, 9.900000e-01
  %11 = fmul float %10, 9.900000e-01
  %12 = fmul float %11, 9.900000e-01
  %13 = fmul float %12, 9.900000e-01
  %14 = add nuw nsw i32 %.013, 10
  %exitcond.not.9 = icmp eq i32 %14, 16000
  br i1 %exitcond.not.9, label %15, label %3, !llvm.loop !247

15:                                               ; preds = %3
  %16 = add nuw nsw i32 %.01014, 1
  %exitcond15.not = icmp eq i32 %16, 1280
  br i1 %exitcond15.not, label %17, label %.preheader, !llvm.loop !248

17:                                               ; preds = %15
  %18 = tail call i32 @clock() #27
  %19 = sub i32 %18, %2
  %20 = sitofp i32 %19 to double
  %21 = fdiv double %20, 1.000000e+06
  %22 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@DAFBEBEC@S317?7?5?$CF?42f?5?7?7?$AA@", double noundef %21) #27
  store float %13, ptr @temp, align 4
  tail call void @check(i32 noundef -1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s318(i32 noundef %0) local_unnamed_addr #11 {
  %2 = tail call i32 @init(ptr noundef nonnull @"??_C@_05NCGBOMCL@s318?5?$AA@")
  %3 = tail call i32 @clock() #27
  %4 = load float, ptr @a, align 16
  %5 = fptosi float %4 to i32
  %6 = tail call i32 @llvm.abs.i32(i32 %5, i1 false)
  %7 = sitofp i32 %6 to float
  br label %8

8:                                                ; preds = %1, %19
  %.02031 = phi i32 [ 0, %1 ], [ %20, %19 ]
  br label %9

9:                                                ; preds = %8, %9
  %.030 = phi i32 [ 1, %8 ], [ %18, %9 ]
  %.02129 = phi i32 [ %0, %8 ], [ %17, %9 ]
  %.128 = phi float [ %7, %8 ], [ %.2, %9 ]
  %.12427 = phi i32 [ 0, %8 ], [ %.225, %9 ]
  %10 = sext i32 %.02129 to i64
  %11 = getelementptr inbounds [4 x i8], ptr @a, i64 %10
  %12 = load float, ptr %11, align 4
  %13 = fptosi float %12 to i32
  %14 = tail call i32 @llvm.abs.i32(i32 %13, i1 false)
  %15 = sitofp i32 %14 to float
  %16 = fcmp ult float %.128, %15
  %.225 = select i1 %16, i32 %.030, i32 %.12427
  %.2 = select i1 %16, float %15, float %.128
  %17 = add i32 %.02129, %0
  %18 = add nuw nsw i32 %.030, 1
  %exitcond.not = icmp eq i32 %18, 32000
  br i1 %exitcond.not, label %19, label %9, !llvm.loop !249

19:                                               ; preds = %9
  %20 = add nuw nsw i32 %.02031, 1
  %exitcond32.not = icmp eq i32 %20, 128
  br i1 %exitcond32.not, label %21, label %8, !llvm.loop !250

21:                                               ; preds = %19
  %22 = tail call i32 @clock() #27
  %23 = sub i32 %22, %3
  %24 = sitofp i32 %23 to double
  %25 = fdiv double %24, 1.000000e+06
  %26 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@KDKJLFIE@S318?7?5?$CF?42f?5?7?7?$AA@", double noundef %25) #27
  %27 = uitofp nneg i32 %.225 to float
  %28 = fadd float %.2, %27
  %29 = fadd float %28, 1.000000e+00
  store float %29, ptr @temp, align 4
  tail call void @check(i32 noundef -1)
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #20

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s319() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05NDKDIGBM@s319?5?$AA@")
  %2 = tail call i32 @clock() #27
  br label %.preheader

.preheader:                                       ; preds = %0, %16
  %.01923 = phi i32 [ 0, %0 ], [ %17, %16 ]
  br label %3

3:                                                ; preds = %.preheader, %3
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %3 ]
  %.121 = phi float [ 0.000000e+00, %.preheader ], [ %15, %3 ]
  %4 = getelementptr inbounds nuw [4 x i8], ptr @c, i64 %indvars.iv
  %5 = load float, ptr %4, align 4
  %6 = getelementptr inbounds nuw [4 x i8], ptr @d, i64 %indvars.iv
  %7 = load float, ptr %6, align 4
  %8 = fadd float %5, %7
  %9 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv
  store float %8, ptr %9, align 4
  %10 = fadd float %.121, %8
  %11 = getelementptr inbounds nuw [4 x i8], ptr @e, i64 %indvars.iv
  %12 = load float, ptr %11, align 4
  %13 = fadd float %5, %12
  %14 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %indvars.iv
  store float %13, ptr %14, align 4
  %15 = fadd float %10, %13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32000
  br i1 %exitcond.not, label %16, label %3, !llvm.loop !251

16:                                               ; preds = %3
  %17 = add nuw nsw i32 %.01923, 1
  %exitcond25.not = icmp eq i32 %17, 512
  br i1 %exitcond25.not, label %18, label %.preheader, !llvm.loop !252

18:                                               ; preds = %16
  %19 = tail call i32 @clock() #27
  %20 = sub i32 %19, %2
  %21 = sitofp i32 %20 to double
  %22 = fdiv double %21, 1.000000e+06
  %23 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@GCCHGKEE@S319?7?5?$CF?42f?5?7?7?$AA@", double noundef %22) #27
  store float %15, ptr @temp, align 4
  tail call void @check(i32 noundef -1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s3110() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05JHHCMFPF@s3110?$AA@")
  %2 = tail call i32 @clock() #27
  %3 = load float, ptr @aa, align 16
  br label %4

4:                                                ; preds = %0, %18
  %.02443 = phi i32 [ 0, %0 ], [ %19, %18 ]
  br label %.preheader

.preheader:                                       ; preds = %4, %17
  %indvars.iv45 = phi i64 [ 0, %4 ], [ %indvars.iv.next46, %17 ]
  %.141 = phi i32 [ 0, %4 ], [ %.3.1, %17 ]
  %.12740 = phi float [ %3, %4 ], [ %.329.1, %17 ]
  %.13139 = phi i32 [ 0, %4 ], [ %.333.1, %17 ]
  %5 = getelementptr inbounds nuw [1024 x i8], ptr @aa, i64 %indvars.iv45
  %6 = trunc nuw nsw i64 %indvars.iv45 to i32
  br label %7

7:                                                ; preds = %7, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %7 ]
  %.237 = phi i32 [ %.141, %.preheader ], [ %.3.1, %7 ]
  %.22836 = phi float [ %.12740, %.preheader ], [ %.329.1, %7 ]
  %.23235 = phi i32 [ %.13139, %.preheader ], [ %.333.1, %7 ]
  %8 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv
  %9 = load float, ptr %8, align 8
  %10 = fcmp ogt float %9, %.22836
  %11 = trunc nuw nsw i64 %indvars.iv to i32
  %.333 = select i1 %10, i32 %11, i32 %.23235
  %.329 = select i1 %10, float %9, float %.22836
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %12 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.next
  %13 = load float, ptr %12, align 4
  %14 = fcmp ogt float %13, %.329
  %15 = trunc nuw nsw i64 %indvars.iv.next to i32
  %.333.1 = select i1 %14, i32 %15, i32 %.333
  %.329.1 = select i1 %14, float %13, float %.329
  %16 = or i1 %14, %10
  %.3.1 = select i1 %16, i32 %6, i32 %.237
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 256
  br i1 %exitcond.not.1, label %17, label %7, !llvm.loop !253

17:                                               ; preds = %7
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1
  %exitcond48.not = icmp eq i64 %indvars.iv.next46, 256
  br i1 %exitcond48.not, label %18, label %.preheader, !llvm.loop !254

18:                                               ; preds = %17
  %19 = add nuw nsw i32 %.02443, 1
  %exitcond49.not = icmp eq i32 %19, 100
  br i1 %exitcond49.not, label %20, label %4, !llvm.loop !255

20:                                               ; preds = %18
  %21 = tail call i32 @clock() #27
  %22 = sub i32 %21, %2
  %23 = sitofp i32 %22 to double
  %24 = fdiv double %23, 1.000000e+06
  %25 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0P@GMGHJKMI@S3110?7?5?$CF?42f?5?7?7?$AA@", double noundef %24) #27
  %26 = sitofp i32 %.3.1 to float
  %27 = fadd float %.329.1, %26
  %28 = fadd float %27, 1.000000e+00
  %29 = sitofp i32 %.333.1 to float
  %30 = fadd float %28, %29
  %31 = fadd float %30, 1.000000e+00
  store float %31, ptr @temp, align 4
  tail call void @check(i32 noundef -1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s13110() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05JHHCMFPF@s3110?$AA@")
  %2 = tail call i32 @clock() #27
  %3 = load float, ptr @aa, align 16
  br label %4

4:                                                ; preds = %0, %23
  %.02229 = phi i32 [ 0, %0 ], [ %24, %23 ]
  br label %.preheader

.preheader:                                       ; preds = %4, %22
  %indvars.iv31 = phi i64 [ 0, %4 ], [ %indvars.iv.next32, %22 ]
  %.127 = phi float [ %3, %4 ], [ %.3.3, %22 ]
  %5 = getelementptr inbounds nuw [1024 x i8], ptr @aa, i64 %indvars.iv31
  br label %6

6:                                                ; preds = %6, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.3, %6 ]
  %.225 = phi float [ %.127, %.preheader ], [ %.3.3, %6 ]
  %7 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv
  %8 = load float, ptr %7, align 16
  %9 = fcmp ogt float %8, %.225
  %.3 = select i1 %9, float %8, float %.225
  %10 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 4
  %12 = load float, ptr %11, align 4
  %13 = fcmp ogt float %12, %.3
  %.3.1 = select i1 %13, float %12, float %.3
  %14 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %16 = load float, ptr %15, align 8
  %17 = fcmp ogt float %16, %.3.1
  %.3.2 = select i1 %17, float %16, float %.3.1
  %18 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 12
  %20 = load float, ptr %19, align 4
  %21 = fcmp ogt float %20, %.3.2
  %.3.3 = select i1 %21, float %20, float %.3.2
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, 256
  br i1 %exitcond.not.3, label %22, label %6, !llvm.loop !256

22:                                               ; preds = %6
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1
  %exitcond34.not = icmp eq i64 %indvars.iv.next32, 256
  br i1 %exitcond34.not, label %23, label %.preheader, !llvm.loop !257

23:                                               ; preds = %22
  %24 = add nuw nsw i32 %.02229, 1
  %exitcond35.not = icmp eq i32 %24, 100
  br i1 %exitcond35.not, label %25, label %4, !llvm.loop !258

25:                                               ; preds = %23
  %26 = tail call i32 @clock() #27
  %27 = sub i32 %26, %2
  %28 = sitofp i32 %27 to double
  %29 = fdiv double %28, 1.000000e+06
  %30 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0BA@FMCGFKJO@S13110?7?5?$CF?42f?5?7?7?$AA@", double noundef %29) #27
  %31 = fadd float %.3.3, 0.000000e+00
  %32 = fadd float %31, 1.000000e+00
  %33 = fadd float %32, 1.000000e+00
  store float %33, ptr @temp, align 4
  tail call void @check(i32 noundef -1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s3111() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05IOGJPELE@s3111?$AA@")
  %2 = tail call i32 @clock() #27
  br label %.preheader

.preheader:                                       ; preds = %0, %13
  %.01217 = phi i32 [ 0, %0 ], [ %14, %13 ]
  br label %3

3:                                                ; preds = %3, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %3 ]
  %.115 = phi float [ 0.000000e+00, %.preheader ], [ %.2.1, %3 ]
  %4 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv
  %5 = load float, ptr %4, align 8
  %6 = fcmp ogt float %5, 0.000000e+00
  %7 = fadd float %.115, %5
  %.2 = select i1 %6, float %7, float %.115
  %8 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 4
  %10 = load float, ptr %9, align 4
  %11 = fcmp ogt float %10, 0.000000e+00
  %12 = fadd float %.2, %10
  %.2.1 = select i1 %11, float %12, float %.2
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 32000
  br i1 %exitcond.not.1, label %13, label %3, !llvm.loop !259

13:                                               ; preds = %3
  %14 = add nuw nsw i32 %.01217, 1
  %exitcond19.not = icmp eq i32 %14, 128
  br i1 %exitcond19.not, label %15, label %.preheader, !llvm.loop !260

15:                                               ; preds = %13
  %16 = tail call i32 @clock() #27
  %17 = sub i32 %16, %2
  %18 = sitofp i32 %17 to double
  %19 = fdiv double %18, 1.000000e+06
  %20 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0P@KNOJEFAI@S3111?7?5?$CF?42f?5?7?7?$AA@", double noundef %19) #27
  store float %.2.1, ptr @temp, align 4
  tail call void @check(i32 noundef -1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s3112() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05KFEEKHHH@s3112?$AA@")
  %2 = tail call i32 @clock() #27
  br label %.preheader

.preheader:                                       ; preds = %0, %12
  %.01317 = phi i32 [ 0, %0 ], [ %13, %12 ]
  br label %3

3:                                                ; preds = %3, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %3 ]
  %.115 = phi float [ 0.000000e+00, %.preheader ], [ %10, %3 ]
  %4 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv
  %5 = load float, ptr %4, align 8
  %6 = fadd float %.115, %5
  %7 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %indvars.iv
  store float %6, ptr %7, align 8
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %8 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv.next
  %9 = load float, ptr %8, align 4
  %10 = fadd float %6, %9
  %11 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %indvars.iv.next
  store float %10, ptr %11, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 32000
  br i1 %exitcond.not.1, label %12, label %3, !llvm.loop !261

12:                                               ; preds = %3
  %13 = add nuw nsw i32 %.01317, 1
  %exitcond19.not = icmp eq i32 %13, 256
  br i1 %exitcond19.not, label %14, label %.preheader, !llvm.loop !262

14:                                               ; preds = %12
  %15 = tail call i32 @clock() #27
  %16 = sub i32 %15, %2
  %17 = sitofp i32 %16 to double
  %18 = fdiv double %17, 1.000000e+06
  %19 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0P@DEALCDAJ@S3112?7?5?$CF?42f?5?7?7?$AA@", double noundef %18) #27
  store float %10, ptr @temp, align 4
  tail call void @check(i32 noundef -12)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s3113() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05LMFPJGDG@s3113?$AA@")
  %2 = tail call i32 @clock() #27
  %3 = load float, ptr @a, align 16
  %4 = fptosi float %3 to i32
  %5 = tail call i32 @llvm.abs.i32(i32 %4, i1 false)
  %6 = sitofp i32 %5 to float
  br label %7

7:                                                ; preds = %0, %22
  %.01217 = phi i32 [ 0, %0 ], [ %23, %22 ]
  br label %8

8:                                                ; preds = %8, %7
  %indvars.iv = phi i64 [ 0, %7 ], [ %indvars.iv.next.1, %8 ]
  %.115 = phi float [ %6, %7 ], [ %.2.1, %8 ]
  %9 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv
  %10 = load float, ptr %9, align 8
  %11 = fptosi float %10 to i32
  %12 = tail call i32 @llvm.abs.i32(i32 %11, i1 false)
  %13 = sitofp i32 %12 to float
  %14 = fcmp olt float %.115, %13
  %.2 = select i1 %14, float %13, float %.115
  %15 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 4
  %17 = load float, ptr %16, align 4
  %18 = fptosi float %17 to i32
  %19 = tail call i32 @llvm.abs.i32(i32 %18, i1 false)
  %20 = sitofp i32 %19 to float
  %21 = fcmp olt float %.2, %20
  %.2.1 = select i1 %21, float %20, float %.2
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 32000
  br i1 %exitcond.not.1, label %22, label %8, !llvm.loop !263

22:                                               ; preds = %8
  %23 = add nuw nsw i32 %.01217, 1
  %exitcond19.not = icmp eq i32 %23, 1024
  br i1 %exitcond19.not, label %24, label %7, !llvm.loop !264

24:                                               ; preds = %22
  %25 = tail call i32 @clock() #27
  %26 = sub i32 %25, %2
  %27 = sitofp i32 %26 to double
  %28 = fdiv double %27, 1.000000e+06
  %29 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0P@PFIFPMMJ@S3113?7?5?$CF?42f?5?7?7?$AA@", double noundef %28) #27
  store float %.2.1, ptr @temp, align 4
  tail call void @check(i32 noundef -1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s321() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05MPAFHIEK@s321?5?$AA@")
  %2 = tail call i32 @clock() #27
  br label %.preheader

.preheader:                                       ; preds = %0, %15
  %.01012 = phi i32 [ 0, %0 ], [ %16, %15 ]
  %load_initial = load float, ptr @a, align 16
  br label %3

3:                                                ; preds = %9, %.preheader
  %store_forwarded = phi float [ %load_initial, %.preheader ], [ %14, %9 ]
  %indvars.iv = phi i64 [ 1, %.preheader ], [ %indvars.iv.next.1, %9 ]
  %4 = getelementptr [4 x i8], ptr @a, i64 %indvars.iv
  %5 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %indvars.iv
  %6 = load float, ptr %5, align 4
  %7 = load float, ptr %4, align 4
  %8 = tail call float @llvm.fmuladd.f32(float %store_forwarded, float %6, float %7)
  store float %8, ptr %4, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32000
  br i1 %exitcond.not, label %15, label %9

9:                                                ; preds = %3
  %10 = getelementptr [4 x i8], ptr @a, i64 %indvars.iv.next
  %11 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %indvars.iv.next
  %12 = load float, ptr %11, align 4
  %13 = load float, ptr %10, align 4
  %14 = tail call float @llvm.fmuladd.f32(float %8, float %12, float %13)
  store float %14, ptr %10, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  br label %3

15:                                               ; preds = %3
  %16 = add nuw nsw i32 %.01012, 1
  %exitcond14.not = icmp eq i32 %16, 256
  br i1 %exitcond14.not, label %17, label %.preheader, !llvm.loop !265

17:                                               ; preds = %15
  %18 = tail call i32 @clock() #27
  %19 = sub i32 %18, %2
  %20 = sitofp i32 %19 to double
  %21 = fdiv double %20, 1.000000e+06
  %22 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@KPHKFJPB@S321?7?5?$CF?42f?5?7?7?$AA@", double noundef %21) #27
  tail call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s322() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05MNEDMGBD@s322?5?$AA@")
  %2 = tail call i32 @clock() #27
  br label %.preheader

.preheader:                                       ; preds = %0, %14
  %.01315 = phi i32 [ 0, %0 ], [ %15, %14 ]
  %load_initial = load float, ptr getelementptr inbounds nuw (i8, ptr @a, i64 4), align 4
  br label %3

3:                                                ; preds = %.preheader, %3
  %store_forwarded = phi float [ %load_initial, %.preheader ], [ %13, %3 ]
  %indvars.iv = phi i64 [ 2, %.preheader ], [ %indvars.iv.next, %3 ]
  %4 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv
  %5 = load float, ptr %4, align 4
  %6 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %indvars.iv
  %7 = load float, ptr %6, align 4
  %8 = tail call float @llvm.fmuladd.f32(float %store_forwarded, float %7, float %5)
  %9 = getelementptr i8, ptr %4, i64 -8
  %10 = load float, ptr %9, align 4
  %11 = getelementptr inbounds nuw [4 x i8], ptr @c, i64 %indvars.iv
  %12 = load float, ptr %11, align 4
  %13 = tail call float @llvm.fmuladd.f32(float %10, float %12, float %8)
  store float %13, ptr %4, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32000
  br i1 %exitcond.not, label %14, label %3, !llvm.loop !266

14:                                               ; preds = %3
  %15 = add nuw nsw i32 %.01315, 1
  %exitcond17.not = icmp eq i32 %15, 128
  br i1 %exitcond17.not, label %16, label %.preheader, !llvm.loop !267

16:                                               ; preds = %14
  %17 = tail call i32 @clock() #27
  %18 = sub i32 %17, %2
  %19 = sitofp i32 %18 to double
  %20 = fdiv double %19, 1.000000e+06
  %21 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@DGJIDPPA@S322?7?5?$CF?42f?5?7?7?$AA@", double noundef %20) #27
  tail call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s323() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05MMIBKMCE@s323?5?$AA@")
  %2 = tail call i32 @clock() #27
  br label %.preheader

.preheader:                                       ; preds = %0, %14
  %.01517 = phi i32 [ 0, %0 ], [ %15, %14 ]
  %load_initial = load float, ptr @b, align 16
  br label %3

3:                                                ; preds = %.preheader, %3
  %store_forwarded = phi float [ %load_initial, %.preheader ], [ %13, %3 ]
  %indvars.iv = phi i64 [ 1, %.preheader ], [ %indvars.iv.next, %3 ]
  %4 = getelementptr [4 x i8], ptr @b, i64 %indvars.iv
  %5 = getelementptr inbounds nuw [4 x i8], ptr @c, i64 %indvars.iv
  %6 = load float, ptr %5, align 4
  %7 = getelementptr inbounds nuw [4 x i8], ptr @d, i64 %indvars.iv
  %8 = load float, ptr %7, align 4
  %9 = tail call float @llvm.fmuladd.f32(float %6, float %8, float %store_forwarded)
  %10 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv
  store float %9, ptr %10, align 4
  %11 = getelementptr inbounds nuw [4 x i8], ptr @e, i64 %indvars.iv
  %12 = load float, ptr %11, align 4
  %13 = tail call float @llvm.fmuladd.f32(float %6, float %12, float %9)
  store float %13, ptr %4, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32000
  br i1 %exitcond.not, label %14, label %3, !llvm.loop !268

14:                                               ; preds = %3
  %15 = add nuw nsw i32 %.01517, 1
  %exitcond19.not = icmp eq i32 %15, 128
  br i1 %exitcond19.not, label %16, label %.preheader, !llvm.loop !269

16:                                               ; preds = %14
  %17 = tail call i32 @clock() #27
  %18 = sub i32 %17, %2
  %19 = sitofp i32 %18 to double
  %20 = fdiv double %19, 1.000000e+06
  %21 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@PHBGOADA@S323?7?5?$CF?42f?5?7?7?$AA@", double noundef %20) #27
  tail call void @check(i32 noundef 12)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s331() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05HHLJBPCP@s331?5?$AA@")
  %2 = tail call i32 @clock() #27
  br label %vector.ph

vector.ph:                                        ; preds = %middle.block, %0
  %.01216 = phi i32 [ 0, %0 ], [ %10, %middle.block ]
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ splat (i32 -2147483648), %vector.ph ], [ %7, %vector.body ]
  %vec.phi19 = phi <4 x i32> [ splat (i32 -2147483648), %vector.ph ], [ %8, %vector.body ]
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ]
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %3 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %index
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %wide.load = load <4 x float>, ptr %3, align 16
  %wide.load20 = load <4 x float>, ptr %4, align 16
  %5 = fcmp olt <4 x float> %wide.load, zeroinitializer
  %6 = fcmp olt <4 x float> %wide.load20, zeroinitializer
  %7 = select <4 x i1> %5, <4 x i32> %vec.ind, <4 x i32> %vec.phi
  %8 = select <4 x i1> %6, <4 x i32> %step.add, <4 x i32> %vec.phi19
  %index.next = add nuw i64 %index, 8
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %9 = icmp eq i64 %index.next, 32000
  br i1 %9, label %middle.block, label %vector.body, !llvm.loop !270

middle.block:                                     ; preds = %vector.body
  %10 = add nuw nsw i32 %.01216, 1
  %exitcond18.not = icmp eq i32 %10, 256
  br i1 %exitcond18.not, label %11, label %vector.ph, !llvm.loop !271

11:                                               ; preds = %middle.block
  %rdx.minmax = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %7, <4 x i32> %8)
  %12 = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax)
  %.not = icmp eq i32 %12, -2147483648
  %13 = tail call i32 @clock() #27
  %14 = sub i32 %13, %2
  %15 = sitofp i32 %14 to double
  %16 = fdiv double %15, 1.000000e+06
  %17 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@DENPBFJO@S331?7?5?$CF?42f?5?7?7?$AA@", double noundef %16) #27
  %18 = add i32 %12, 1
  %19 = select i1 %.not, i32 0, i32 %18
  %20 = sitofp i32 %19 to float
  store float %20, ptr @temp, align 4
  tail call void @check(i32 noundef -1)
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @tsvc_max(i32 noundef %0, i32 noundef %1) local_unnamed_addr #15 {
  %. = tail call i32 @llvm.smax.i32(i32 %1, i32 %0)
  ret i32 %.
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s332(float noundef %0) local_unnamed_addr #11 {
  %2 = tail call i32 @init(ptr noundef nonnull @"??_C@_05HFPPKBHG@s332?5?$AA@")
  %3 = tail call i32 @clock() #27
  %broadcast.splatinsert = insertelement <4 x float> poison, float %0, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.ph

vector.ph:                                        ; preds = %middle.block, %1
  %.01520 = phi i32 [ 0, %1 ], [ %13, %middle.block ]
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim.1, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body.interim.1 ]
  %4 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %index
  %wide.load = load <4 x float>, ptr %4, align 16
  %wide.load.fr = freeze <4 x float> %wide.load
  %5 = fcmp ogt <4 x float> %wide.load.fr, %broadcast.splat
  %6 = bitcast <4 x i1> %5 to i4
  %.not = icmp eq i4 %6, 0
  br i1 %.not, label %vector.body.interim, label %vector.early.exit

vector.body.interim:                              ; preds = %vector.body
  %7 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %index
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %wide.load.1 = load <4 x float>, ptr %8, align 16
  %wide.load.fr.1 = freeze <4 x float> %wide.load.1
  %9 = fcmp ogt <4 x float> %wide.load.fr.1, %broadcast.splat
  %10 = bitcast <4 x i1> %9 to i4
  %.not.1 = icmp eq i4 %10, 0
  br i1 %.not.1, label %vector.body.interim.1, label %vector.early.exit

vector.body.interim.1:                            ; preds = %vector.body.interim
  %index.next.1 = add nuw nsw i64 %index, 8
  %11 = icmp eq i64 %index.next.1, 32000
  br i1 %11, label %middle.block, label %vector.body, !llvm.loop !272

vector.early.exit:                                ; preds = %vector.body.interim, %vector.body
  %wide.load.fr.lcssa = phi <4 x float> [ %wide.load.fr, %vector.body ], [ %wide.load.fr.1, %vector.body.interim ]
  %.lcssa = phi <4 x i1> [ %5, %vector.body ], [ %9, %vector.body.interim ]
  %first.active.lane = tail call i64 @llvm.experimental.cttz.elts.i64.v4i1(<4 x i1> %.lcssa, i1 false)
  %12 = extractelement <4 x float> %wide.load.fr.lcssa, i64 %first.active.lane
  br label %middle.block

middle.block:                                     ; preds = %vector.body.interim.1, %vector.early.exit
  %.1 = phi float [ %12, %vector.early.exit ], [ -1.000000e+00, %vector.body.interim.1 ]
  %13 = add nuw nsw i32 %.01520, 1
  %exitcond22.not = icmp eq i32 %13, 256
  br i1 %exitcond22.not, label %14, label %vector.ph, !llvm.loop !273

14:                                               ; preds = %middle.block
  %15 = tail call i32 @clock() #27
  %16 = sub i32 %15, %3
  %17 = sitofp i32 %16 to double
  %18 = fdiv double %17, 1.000000e+06
  %19 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@KNDNHDJP@S332?7?5?$CF?42f?5?7?7?$AA@", double noundef %18) #27
  store float %.1, ptr @temp, align 4
  tail call void @check(i32 noundef -1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s341() local_unnamed_addr #11 {
  %1 = tail call i32 @clock() #27
  %2 = tail call i32 @init(ptr noundef nonnull @"??_C@_05OKGOCHJG@s341?5?$AA@")
  %3 = tail call i32 @clock() #27
  br label %.preheader

.preheader:                                       ; preds = %0, %22
  %.01116 = phi i32 [ 0, %0 ], [ %23, %22 ]
  br label %4

4:                                                ; preds = %21, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %21 ]
  %.01214 = phi i32 [ -1, %.preheader ], [ %.1.1, %21 ]
  %5 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %indvars.iv
  %6 = load float, ptr %5, align 8
  %7 = fcmp ogt float %6, 0.000000e+00
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = add i32 %.01214, 1
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [4 x i8], ptr @a, i64 %10
  store float %6, ptr %11, align 4
  br label %12

12:                                               ; preds = %4, %8
  %.1 = phi i32 [ %9, %8 ], [ %.01214, %4 ]
  %13 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %indvars.iv
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 4
  %15 = load float, ptr %14, align 4
  %16 = fcmp ogt float %15, 0.000000e+00
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = add i32 %.1, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [4 x i8], ptr @a, i64 %19
  store float %15, ptr %20, align 4
  br label %21

21:                                               ; preds = %17, %12
  %.1.1 = phi i32 [ %18, %17 ], [ %.1, %12 ]
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 32000
  br i1 %exitcond.not.1, label %22, label %4, !llvm.loop !274

22:                                               ; preds = %21
  %23 = add nuw nsw i32 %.01116, 1
  %exitcond18.not = icmp eq i32 %23, 256
  br i1 %exitcond18.not, label %24, label %.preheader, !llvm.loop !275

24:                                               ; preds = %22
  %25 = tail call i32 @clock() #27
  %26 = sub i32 %25, %3
  %27 = sitofp i32 %26 to double
  %28 = fdiv double %27, 1.000000e+06
  %29 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@EAEHPMBB@S341?7?5?$CF?42f?5?7?7?$AA@", double noundef %28) #27
  tail call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s342() local_unnamed_addr #11 {
  %1 = tail call i32 @clock() #27
  %2 = tail call i32 @init(ptr noundef nonnull @"??_C@_05OICIJJMP@s342?5?$AA@")
  %3 = tail call i32 @clock() #27
  br label %.preheader

.preheader:                                       ; preds = %0, %24
  %.01115 = phi i32 [ 0, %0 ], [ %25, %24 ]
  br label %4

4:                                                ; preds = %23, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %23 ]
  %.01213 = phi i32 [ -1, %.preheader ], [ %.1.1, %23 ]
  %5 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv
  %6 = load float, ptr %5, align 8
  %7 = fcmp ogt float %6, 0.000000e+00
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = add i32 %.01213, 1
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [4 x i8], ptr @b, i64 %10
  %12 = load float, ptr %11, align 4
  store float %12, ptr %5, align 8
  br label %13

13:                                               ; preds = %4, %8
  %.1 = phi i32 [ %9, %8 ], [ %.01213, %4 ]
  %14 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 4
  %16 = load float, ptr %15, align 4
  %17 = fcmp ogt float %16, 0.000000e+00
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = add i32 %.1, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [4 x i8], ptr @b, i64 %20
  %22 = load float, ptr %21, align 4
  store float %22, ptr %15, align 4
  br label %23

23:                                               ; preds = %18, %13
  %.1.1 = phi i32 [ %19, %18 ], [ %.1, %13 ]
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 32000
  br i1 %exitcond.not.1, label %24, label %4, !llvm.loop !276

24:                                               ; preds = %23
  %25 = add nuw nsw i32 %.01115, 1
  %exitcond17.not = icmp eq i32 %25, 256
  br i1 %exitcond17.not, label %26, label %.preheader, !llvm.loop !277

26:                                               ; preds = %24
  %27 = tail call i32 @clock() #27
  %28 = sub i32 %27, %3
  %29 = sitofp i32 %28 to double
  %30 = fdiv double %29, 1.000000e+06
  %31 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@NJKFJKBA@S342?7?5?$CF?42f?5?7?7?$AA@", double noundef %30) #27
  tail call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s343() local_unnamed_addr #11 {
.preheader18:
  %0 = tail call i32 @clock() #27
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05OJOKPDPI@s343?5?$AA@")
  %2 = tail call i32 @clock() #27
  br label %.preheader

.preheader:                                       ; preds = %.preheader18, %20
  %indvars.iv27 = phi i64 [ 0, %.preheader18 ], [ %indvars.iv.next28, %20 ]
  %.01723 = phi i32 [ -1, %.preheader18 ], [ %.2.136, %20 ]
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr @bb, i64 %indvars.iv27
  %invariant.gep19 = getelementptr inbounds nuw [4 x i8], ptr @aa, i64 %indvars.iv27
  br label %3

3:                                                ; preds = %19, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.137, %19 ]
  %.121 = phi i32 [ %.01723, %.preheader ], [ %.2.136, %19 ]
  %gep = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep, i64 %indvars.iv
  %4 = load float, ptr %gep, align 4
  %5 = fcmp ogt float %4, 0.000000e+00
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = add i32 %.121, 1
  %gep20 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep19, i64 %indvars.iv
  %8 = load float, ptr %gep20, align 4
  %9 = sext i32 %7 to i64
  %10 = getelementptr inbounds [4 x i8], ptr @array, i64 %9
  store float %8, ptr %10, align 4
  br label %11

11:                                               ; preds = %3, %6
  %.2 = phi i32 [ %7, %6 ], [ %.121, %3 ]
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %gep.134 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %12 = load float, ptr %gep.134, align 4
  %13 = fcmp ogt float %12, 0.000000e+00
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = add i32 %.2, 1
  %gep20.135 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep19, i64 %indvars.iv.next
  %16 = load float, ptr %gep20.135, align 4
  %17 = sext i32 %15 to i64
  %18 = getelementptr inbounds [4 x i8], ptr @array, i64 %17
  store float %16, ptr %18, align 4
  br label %19

19:                                               ; preds = %14, %11
  %.2.136 = phi i32 [ %15, %14 ], [ %.2, %11 ]
  %indvars.iv.next.137 = add nuw nsw i64 %indvars.iv, 2
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.137, 256
  br i1 %exitcond.not.1, label %20, label %3, !llvm.loop !278

20:                                               ; preds = %19
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  %exitcond30.not = icmp eq i64 %indvars.iv.next28, 256
  br i1 %exitcond30.not, label %.preheader.1, label %.preheader, !llvm.loop !279

.preheader.1:                                     ; preds = %20, %38
  %indvars.iv27.1 = phi i64 [ %indvars.iv.next28.1, %38 ], [ 0, %20 ]
  %.01723.1 = phi i32 [ %.2.1.1, %38 ], [ -1, %20 ]
  %invariant.gep.1 = getelementptr inbounds nuw [4 x i8], ptr @bb, i64 %indvars.iv27.1
  %invariant.gep19.1 = getelementptr inbounds nuw [4 x i8], ptr @aa, i64 %indvars.iv27.1
  br label %21

21:                                               ; preds = %37, %.preheader.1
  %indvars.iv.1 = phi i64 [ 0, %.preheader.1 ], [ %indvars.iv.next.1.1, %37 ]
  %.121.1 = phi i32 [ %.01723.1, %.preheader.1 ], [ %.2.1.1, %37 ]
  %gep.1 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep.1, i64 %indvars.iv.1
  %22 = load float, ptr %gep.1, align 4
  %23 = fcmp ogt float %22, 0.000000e+00
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = add i32 %.121.1, 1
  %gep20.1 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep19.1, i64 %indvars.iv.1
  %26 = load float, ptr %gep20.1, align 4
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds [4 x i8], ptr @array, i64 %27
  store float %26, ptr %28, align 4
  br label %29

29:                                               ; preds = %24, %21
  %.2.1 = phi i32 [ %25, %24 ], [ %.121.1, %21 ]
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv.1, 1
  %gep.1.1 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep.1, i64 %indvars.iv.next.1
  %30 = load float, ptr %gep.1.1, align 4
  %31 = fcmp ogt float %30, 0.000000e+00
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = add i32 %.2.1, 1
  %gep20.1.1 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep19.1, i64 %indvars.iv.next.1
  %34 = load float, ptr %gep20.1.1, align 4
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds [4 x i8], ptr @array, i64 %35
  store float %34, ptr %36, align 4
  br label %37

37:                                               ; preds = %32, %29
  %.2.1.1 = phi i32 [ %33, %32 ], [ %.2.1, %29 ]
  %indvars.iv.next.1.1 = add nuw nsw i64 %indvars.iv.1, 2
  %exitcond.1.not.1 = icmp eq i64 %indvars.iv.next.1.1, 256
  br i1 %exitcond.1.not.1, label %38, label %21, !llvm.loop !278

38:                                               ; preds = %37
  %indvars.iv.next28.1 = add nuw nsw i64 %indvars.iv27.1, 1
  %exitcond30.1.not = icmp eq i64 %indvars.iv.next28.1, 256
  br i1 %exitcond30.1.not, label %.preheader.2, label %.preheader.1, !llvm.loop !279

.preheader.2:                                     ; preds = %38, %56
  %indvars.iv27.2 = phi i64 [ %indvars.iv.next28.2, %56 ], [ 0, %38 ]
  %.01723.2 = phi i32 [ %.2.2.1, %56 ], [ -1, %38 ]
  %invariant.gep.2 = getelementptr inbounds nuw [4 x i8], ptr @bb, i64 %indvars.iv27.2
  %invariant.gep19.2 = getelementptr inbounds nuw [4 x i8], ptr @aa, i64 %indvars.iv27.2
  br label %39

39:                                               ; preds = %55, %.preheader.2
  %indvars.iv.2 = phi i64 [ 0, %.preheader.2 ], [ %indvars.iv.next.2.1, %55 ]
  %.121.2 = phi i32 [ %.01723.2, %.preheader.2 ], [ %.2.2.1, %55 ]
  %gep.2 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep.2, i64 %indvars.iv.2
  %40 = load float, ptr %gep.2, align 4
  %41 = fcmp ogt float %40, 0.000000e+00
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = add i32 %.121.2, 1
  %gep20.2 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep19.2, i64 %indvars.iv.2
  %44 = load float, ptr %gep20.2, align 4
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds [4 x i8], ptr @array, i64 %45
  store float %44, ptr %46, align 4
  br label %47

47:                                               ; preds = %42, %39
  %.2.2 = phi i32 [ %43, %42 ], [ %.121.2, %39 ]
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv.2, 1
  %gep.2.1 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep.2, i64 %indvars.iv.next.2
  %48 = load float, ptr %gep.2.1, align 4
  %49 = fcmp ogt float %48, 0.000000e+00
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = add i32 %.2.2, 1
  %gep20.2.1 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep19.2, i64 %indvars.iv.next.2
  %52 = load float, ptr %gep20.2.1, align 4
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds [4 x i8], ptr @array, i64 %53
  store float %52, ptr %54, align 4
  br label %55

55:                                               ; preds = %50, %47
  %.2.2.1 = phi i32 [ %51, %50 ], [ %.2.2, %47 ]
  %indvars.iv.next.2.1 = add nuw nsw i64 %indvars.iv.2, 2
  %exitcond.2.not.1 = icmp eq i64 %indvars.iv.next.2.1, 256
  br i1 %exitcond.2.not.1, label %56, label %39, !llvm.loop !278

56:                                               ; preds = %55
  %indvars.iv.next28.2 = add nuw nsw i64 %indvars.iv27.2, 1
  %exitcond30.2.not = icmp eq i64 %indvars.iv.next28.2, 256
  br i1 %exitcond30.2.not, label %.preheader.3, label %.preheader.2, !llvm.loop !279

.preheader.3:                                     ; preds = %56, %74
  %indvars.iv27.3 = phi i64 [ %indvars.iv.next28.3, %74 ], [ 0, %56 ]
  %.01723.3 = phi i32 [ %.2.3.1, %74 ], [ -1, %56 ]
  %invariant.gep.3 = getelementptr inbounds nuw [4 x i8], ptr @bb, i64 %indvars.iv27.3
  %invariant.gep19.3 = getelementptr inbounds nuw [4 x i8], ptr @aa, i64 %indvars.iv27.3
  br label %57

57:                                               ; preds = %73, %.preheader.3
  %indvars.iv.3 = phi i64 [ 0, %.preheader.3 ], [ %indvars.iv.next.3.1, %73 ]
  %.121.3 = phi i32 [ %.01723.3, %.preheader.3 ], [ %.2.3.1, %73 ]
  %gep.3 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep.3, i64 %indvars.iv.3
  %58 = load float, ptr %gep.3, align 4
  %59 = fcmp ogt float %58, 0.000000e+00
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = add i32 %.121.3, 1
  %gep20.3 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep19.3, i64 %indvars.iv.3
  %62 = load float, ptr %gep20.3, align 4
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds [4 x i8], ptr @array, i64 %63
  store float %62, ptr %64, align 4
  br label %65

65:                                               ; preds = %60, %57
  %.2.3 = phi i32 [ %61, %60 ], [ %.121.3, %57 ]
  %indvars.iv.next.3 = or disjoint i64 %indvars.iv.3, 1
  %gep.3.1 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep.3, i64 %indvars.iv.next.3
  %66 = load float, ptr %gep.3.1, align 4
  %67 = fcmp ogt float %66, 0.000000e+00
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = add i32 %.2.3, 1
  %gep20.3.1 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep19.3, i64 %indvars.iv.next.3
  %70 = load float, ptr %gep20.3.1, align 4
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds [4 x i8], ptr @array, i64 %71
  store float %70, ptr %72, align 4
  br label %73

73:                                               ; preds = %68, %65
  %.2.3.1 = phi i32 [ %69, %68 ], [ %.2.3, %65 ]
  %indvars.iv.next.3.1 = add nuw nsw i64 %indvars.iv.3, 2
  %exitcond.3.not.1 = icmp eq i64 %indvars.iv.next.3.1, 256
  br i1 %exitcond.3.not.1, label %74, label %57, !llvm.loop !278

74:                                               ; preds = %73
  %indvars.iv.next28.3 = add nuw nsw i64 %indvars.iv27.3, 1
  %exitcond30.3.not = icmp eq i64 %indvars.iv.next28.3, 256
  br i1 %exitcond30.3.not, label %.preheader.4, label %.preheader.3, !llvm.loop !279

.preheader.4:                                     ; preds = %74, %92
  %indvars.iv27.4 = phi i64 [ %indvars.iv.next28.4, %92 ], [ 0, %74 ]
  %.01723.4 = phi i32 [ %.2.4.1, %92 ], [ -1, %74 ]
  %invariant.gep.4 = getelementptr inbounds nuw [4 x i8], ptr @bb, i64 %indvars.iv27.4
  %invariant.gep19.4 = getelementptr inbounds nuw [4 x i8], ptr @aa, i64 %indvars.iv27.4
  br label %75

75:                                               ; preds = %91, %.preheader.4
  %indvars.iv.4 = phi i64 [ 0, %.preheader.4 ], [ %indvars.iv.next.4.1, %91 ]
  %.121.4 = phi i32 [ %.01723.4, %.preheader.4 ], [ %.2.4.1, %91 ]
  %gep.4 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep.4, i64 %indvars.iv.4
  %76 = load float, ptr %gep.4, align 4
  %77 = fcmp ogt float %76, 0.000000e+00
  br i1 %77, label %78, label %83

78:                                               ; preds = %75
  %79 = add i32 %.121.4, 1
  %gep20.4 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep19.4, i64 %indvars.iv.4
  %80 = load float, ptr %gep20.4, align 4
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds [4 x i8], ptr @array, i64 %81
  store float %80, ptr %82, align 4
  br label %83

83:                                               ; preds = %78, %75
  %.2.4 = phi i32 [ %79, %78 ], [ %.121.4, %75 ]
  %indvars.iv.next.4 = or disjoint i64 %indvars.iv.4, 1
  %gep.4.1 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep.4, i64 %indvars.iv.next.4
  %84 = load float, ptr %gep.4.1, align 4
  %85 = fcmp ogt float %84, 0.000000e+00
  br i1 %85, label %86, label %91

86:                                               ; preds = %83
  %87 = add i32 %.2.4, 1
  %gep20.4.1 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep19.4, i64 %indvars.iv.next.4
  %88 = load float, ptr %gep20.4.1, align 4
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds [4 x i8], ptr @array, i64 %89
  store float %88, ptr %90, align 4
  br label %91

91:                                               ; preds = %86, %83
  %.2.4.1 = phi i32 [ %87, %86 ], [ %.2.4, %83 ]
  %indvars.iv.next.4.1 = add nuw nsw i64 %indvars.iv.4, 2
  %exitcond.4.not.1 = icmp eq i64 %indvars.iv.next.4.1, 256
  br i1 %exitcond.4.not.1, label %92, label %75, !llvm.loop !278

92:                                               ; preds = %91
  %indvars.iv.next28.4 = add nuw nsw i64 %indvars.iv27.4, 1
  %exitcond30.4.not = icmp eq i64 %indvars.iv.next28.4, 256
  br i1 %exitcond30.4.not, label %.preheader.5, label %.preheader.4, !llvm.loop !279

.preheader.5:                                     ; preds = %92, %110
  %indvars.iv27.5 = phi i64 [ %indvars.iv.next28.5, %110 ], [ 0, %92 ]
  %.01723.5 = phi i32 [ %.2.5.1, %110 ], [ -1, %92 ]
  %invariant.gep.5 = getelementptr inbounds nuw [4 x i8], ptr @bb, i64 %indvars.iv27.5
  %invariant.gep19.5 = getelementptr inbounds nuw [4 x i8], ptr @aa, i64 %indvars.iv27.5
  br label %93

93:                                               ; preds = %109, %.preheader.5
  %indvars.iv.5 = phi i64 [ 0, %.preheader.5 ], [ %indvars.iv.next.5.1, %109 ]
  %.121.5 = phi i32 [ %.01723.5, %.preheader.5 ], [ %.2.5.1, %109 ]
  %gep.5 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep.5, i64 %indvars.iv.5
  %94 = load float, ptr %gep.5, align 4
  %95 = fcmp ogt float %94, 0.000000e+00
  br i1 %95, label %96, label %101

96:                                               ; preds = %93
  %97 = add i32 %.121.5, 1
  %gep20.5 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep19.5, i64 %indvars.iv.5
  %98 = load float, ptr %gep20.5, align 4
  %99 = sext i32 %97 to i64
  %100 = getelementptr inbounds [4 x i8], ptr @array, i64 %99
  store float %98, ptr %100, align 4
  br label %101

101:                                              ; preds = %96, %93
  %.2.5 = phi i32 [ %97, %96 ], [ %.121.5, %93 ]
  %indvars.iv.next.5 = or disjoint i64 %indvars.iv.5, 1
  %gep.5.1 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep.5, i64 %indvars.iv.next.5
  %102 = load float, ptr %gep.5.1, align 4
  %103 = fcmp ogt float %102, 0.000000e+00
  br i1 %103, label %104, label %109

104:                                              ; preds = %101
  %105 = add i32 %.2.5, 1
  %gep20.5.1 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep19.5, i64 %indvars.iv.next.5
  %106 = load float, ptr %gep20.5.1, align 4
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds [4 x i8], ptr @array, i64 %107
  store float %106, ptr %108, align 4
  br label %109

109:                                              ; preds = %104, %101
  %.2.5.1 = phi i32 [ %105, %104 ], [ %.2.5, %101 ]
  %indvars.iv.next.5.1 = add nuw nsw i64 %indvars.iv.5, 2
  %exitcond.5.not.1 = icmp eq i64 %indvars.iv.next.5.1, 256
  br i1 %exitcond.5.not.1, label %110, label %93, !llvm.loop !278

110:                                              ; preds = %109
  %indvars.iv.next28.5 = add nuw nsw i64 %indvars.iv27.5, 1
  %exitcond30.5.not = icmp eq i64 %indvars.iv.next28.5, 256
  br i1 %exitcond30.5.not, label %.preheader.6, label %.preheader.5, !llvm.loop !279

.preheader.6:                                     ; preds = %110, %128
  %indvars.iv27.6 = phi i64 [ %indvars.iv.next28.6, %128 ], [ 0, %110 ]
  %.01723.6 = phi i32 [ %.2.6.1, %128 ], [ -1, %110 ]
  %invariant.gep.6 = getelementptr inbounds nuw [4 x i8], ptr @bb, i64 %indvars.iv27.6
  %invariant.gep19.6 = getelementptr inbounds nuw [4 x i8], ptr @aa, i64 %indvars.iv27.6
  br label %111

111:                                              ; preds = %127, %.preheader.6
  %indvars.iv.6 = phi i64 [ 0, %.preheader.6 ], [ %indvars.iv.next.6.1, %127 ]
  %.121.6 = phi i32 [ %.01723.6, %.preheader.6 ], [ %.2.6.1, %127 ]
  %gep.6 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep.6, i64 %indvars.iv.6
  %112 = load float, ptr %gep.6, align 4
  %113 = fcmp ogt float %112, 0.000000e+00
  br i1 %113, label %114, label %119

114:                                              ; preds = %111
  %115 = add i32 %.121.6, 1
  %gep20.6 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep19.6, i64 %indvars.iv.6
  %116 = load float, ptr %gep20.6, align 4
  %117 = sext i32 %115 to i64
  %118 = getelementptr inbounds [4 x i8], ptr @array, i64 %117
  store float %116, ptr %118, align 4
  br label %119

119:                                              ; preds = %114, %111
  %.2.6 = phi i32 [ %115, %114 ], [ %.121.6, %111 ]
  %indvars.iv.next.6 = or disjoint i64 %indvars.iv.6, 1
  %gep.6.1 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep.6, i64 %indvars.iv.next.6
  %120 = load float, ptr %gep.6.1, align 4
  %121 = fcmp ogt float %120, 0.000000e+00
  br i1 %121, label %122, label %127

122:                                              ; preds = %119
  %123 = add i32 %.2.6, 1
  %gep20.6.1 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep19.6, i64 %indvars.iv.next.6
  %124 = load float, ptr %gep20.6.1, align 4
  %125 = sext i32 %123 to i64
  %126 = getelementptr inbounds [4 x i8], ptr @array, i64 %125
  store float %124, ptr %126, align 4
  br label %127

127:                                              ; preds = %122, %119
  %.2.6.1 = phi i32 [ %123, %122 ], [ %.2.6, %119 ]
  %indvars.iv.next.6.1 = add nuw nsw i64 %indvars.iv.6, 2
  %exitcond.6.not.1 = icmp eq i64 %indvars.iv.next.6.1, 256
  br i1 %exitcond.6.not.1, label %128, label %111, !llvm.loop !278

128:                                              ; preds = %127
  %indvars.iv.next28.6 = add nuw nsw i64 %indvars.iv27.6, 1
  %exitcond30.6.not = icmp eq i64 %indvars.iv.next28.6, 256
  br i1 %exitcond30.6.not, label %.preheader.7, label %.preheader.6, !llvm.loop !279

.preheader.7:                                     ; preds = %128, %146
  %indvars.iv27.7 = phi i64 [ %indvars.iv.next28.7, %146 ], [ 0, %128 ]
  %.01723.7 = phi i32 [ %.2.7.1, %146 ], [ -1, %128 ]
  %invariant.gep.7 = getelementptr inbounds nuw [4 x i8], ptr @bb, i64 %indvars.iv27.7
  %invariant.gep19.7 = getelementptr inbounds nuw [4 x i8], ptr @aa, i64 %indvars.iv27.7
  br label %129

129:                                              ; preds = %145, %.preheader.7
  %indvars.iv.7 = phi i64 [ 0, %.preheader.7 ], [ %indvars.iv.next.7.1, %145 ]
  %.121.7 = phi i32 [ %.01723.7, %.preheader.7 ], [ %.2.7.1, %145 ]
  %gep.7 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep.7, i64 %indvars.iv.7
  %130 = load float, ptr %gep.7, align 4
  %131 = fcmp ogt float %130, 0.000000e+00
  br i1 %131, label %132, label %137

132:                                              ; preds = %129
  %133 = add i32 %.121.7, 1
  %gep20.7 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep19.7, i64 %indvars.iv.7
  %134 = load float, ptr %gep20.7, align 4
  %135 = sext i32 %133 to i64
  %136 = getelementptr inbounds [4 x i8], ptr @array, i64 %135
  store float %134, ptr %136, align 4
  br label %137

137:                                              ; preds = %132, %129
  %.2.7 = phi i32 [ %133, %132 ], [ %.121.7, %129 ]
  %indvars.iv.next.7 = or disjoint i64 %indvars.iv.7, 1
  %gep.7.1 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep.7, i64 %indvars.iv.next.7
  %138 = load float, ptr %gep.7.1, align 4
  %139 = fcmp ogt float %138, 0.000000e+00
  br i1 %139, label %140, label %145

140:                                              ; preds = %137
  %141 = add i32 %.2.7, 1
  %gep20.7.1 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep19.7, i64 %indvars.iv.next.7
  %142 = load float, ptr %gep20.7.1, align 4
  %143 = sext i32 %141 to i64
  %144 = getelementptr inbounds [4 x i8], ptr @array, i64 %143
  store float %142, ptr %144, align 4
  br label %145

145:                                              ; preds = %140, %137
  %.2.7.1 = phi i32 [ %141, %140 ], [ %.2.7, %137 ]
  %indvars.iv.next.7.1 = add nuw nsw i64 %indvars.iv.7, 2
  %exitcond.7.not.1 = icmp eq i64 %indvars.iv.next.7.1, 256
  br i1 %exitcond.7.not.1, label %146, label %129, !llvm.loop !278

146:                                              ; preds = %145
  %indvars.iv.next28.7 = add nuw nsw i64 %indvars.iv27.7, 1
  %exitcond30.7.not = icmp eq i64 %indvars.iv.next28.7, 256
  br i1 %exitcond30.7.not, label %.preheader.8, label %.preheader.7, !llvm.loop !279

.preheader.8:                                     ; preds = %146, %164
  %indvars.iv27.8 = phi i64 [ %indvars.iv.next28.8, %164 ], [ 0, %146 ]
  %.01723.8 = phi i32 [ %.2.8.1, %164 ], [ -1, %146 ]
  %invariant.gep.8 = getelementptr inbounds nuw [4 x i8], ptr @bb, i64 %indvars.iv27.8
  %invariant.gep19.8 = getelementptr inbounds nuw [4 x i8], ptr @aa, i64 %indvars.iv27.8
  br label %147

147:                                              ; preds = %163, %.preheader.8
  %indvars.iv.8 = phi i64 [ 0, %.preheader.8 ], [ %indvars.iv.next.8.1, %163 ]
  %.121.8 = phi i32 [ %.01723.8, %.preheader.8 ], [ %.2.8.1, %163 ]
  %gep.8 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep.8, i64 %indvars.iv.8
  %148 = load float, ptr %gep.8, align 4
  %149 = fcmp ogt float %148, 0.000000e+00
  br i1 %149, label %150, label %155

150:                                              ; preds = %147
  %151 = add i32 %.121.8, 1
  %gep20.8 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep19.8, i64 %indvars.iv.8
  %152 = load float, ptr %gep20.8, align 4
  %153 = sext i32 %151 to i64
  %154 = getelementptr inbounds [4 x i8], ptr @array, i64 %153
  store float %152, ptr %154, align 4
  br label %155

155:                                              ; preds = %150, %147
  %.2.8 = phi i32 [ %151, %150 ], [ %.121.8, %147 ]
  %indvars.iv.next.8 = or disjoint i64 %indvars.iv.8, 1
  %gep.8.1 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep.8, i64 %indvars.iv.next.8
  %156 = load float, ptr %gep.8.1, align 4
  %157 = fcmp ogt float %156, 0.000000e+00
  br i1 %157, label %158, label %163

158:                                              ; preds = %155
  %159 = add i32 %.2.8, 1
  %gep20.8.1 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep19.8, i64 %indvars.iv.next.8
  %160 = load float, ptr %gep20.8.1, align 4
  %161 = sext i32 %159 to i64
  %162 = getelementptr inbounds [4 x i8], ptr @array, i64 %161
  store float %160, ptr %162, align 4
  br label %163

163:                                              ; preds = %158, %155
  %.2.8.1 = phi i32 [ %159, %158 ], [ %.2.8, %155 ]
  %indvars.iv.next.8.1 = add nuw nsw i64 %indvars.iv.8, 2
  %exitcond.8.not.1 = icmp eq i64 %indvars.iv.next.8.1, 256
  br i1 %exitcond.8.not.1, label %164, label %147, !llvm.loop !278

164:                                              ; preds = %163
  %indvars.iv.next28.8 = add nuw nsw i64 %indvars.iv27.8, 1
  %exitcond30.8.not = icmp eq i64 %indvars.iv.next28.8, 256
  br i1 %exitcond30.8.not, label %.preheader.9, label %.preheader.8, !llvm.loop !279

.preheader.9:                                     ; preds = %164, %182
  %indvars.iv27.9 = phi i64 [ %indvars.iv.next28.9, %182 ], [ 0, %164 ]
  %.01723.9 = phi i32 [ %.2.9.1, %182 ], [ -1, %164 ]
  %invariant.gep.9 = getelementptr inbounds nuw [4 x i8], ptr @bb, i64 %indvars.iv27.9
  %invariant.gep19.9 = getelementptr inbounds nuw [4 x i8], ptr @aa, i64 %indvars.iv27.9
  br label %165

165:                                              ; preds = %181, %.preheader.9
  %indvars.iv.9 = phi i64 [ 0, %.preheader.9 ], [ %indvars.iv.next.9.1, %181 ]
  %.121.9 = phi i32 [ %.01723.9, %.preheader.9 ], [ %.2.9.1, %181 ]
  %gep.9 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep.9, i64 %indvars.iv.9
  %166 = load float, ptr %gep.9, align 4
  %167 = fcmp ogt float %166, 0.000000e+00
  br i1 %167, label %168, label %173

168:                                              ; preds = %165
  %169 = add i32 %.121.9, 1
  %gep20.9 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep19.9, i64 %indvars.iv.9
  %170 = load float, ptr %gep20.9, align 4
  %171 = sext i32 %169 to i64
  %172 = getelementptr inbounds [4 x i8], ptr @array, i64 %171
  store float %170, ptr %172, align 4
  br label %173

173:                                              ; preds = %168, %165
  %.2.9 = phi i32 [ %169, %168 ], [ %.121.9, %165 ]
  %indvars.iv.next.9 = or disjoint i64 %indvars.iv.9, 1
  %gep.9.1 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep.9, i64 %indvars.iv.next.9
  %174 = load float, ptr %gep.9.1, align 4
  %175 = fcmp ogt float %174, 0.000000e+00
  br i1 %175, label %176, label %181

176:                                              ; preds = %173
  %177 = add i32 %.2.9, 1
  %gep20.9.1 = getelementptr inbounds nuw [1024 x i8], ptr %invariant.gep19.9, i64 %indvars.iv.next.9
  %178 = load float, ptr %gep20.9.1, align 4
  %179 = sext i32 %177 to i64
  %180 = getelementptr inbounds [4 x i8], ptr @array, i64 %179
  store float %178, ptr %180, align 4
  br label %181

181:                                              ; preds = %176, %173
  %.2.9.1 = phi i32 [ %177, %176 ], [ %.2.9, %173 ]
  %indvars.iv.next.9.1 = add nuw nsw i64 %indvars.iv.9, 2
  %exitcond.9.not.1 = icmp eq i64 %indvars.iv.next.9.1, 256
  br i1 %exitcond.9.not.1, label %182, label %165, !llvm.loop !278

182:                                              ; preds = %181
  %indvars.iv.next28.9 = add nuw nsw i64 %indvars.iv27.9, 1
  %exitcond30.9.not = icmp eq i64 %indvars.iv.next28.9, 256
  br i1 %exitcond30.9.not, label %183, label %.preheader.9, !llvm.loop !279

183:                                              ; preds = %182
  %184 = tail call i32 @clock() #27
  %185 = sub i32 %184, %2
  %186 = sitofp i32 %185 to double
  %187 = fdiv double %186, 1.000000e+06
  %188 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@BICLEFNA@S343?7?5?$CF?42f?5?7?7?$AA@", double noundef %187) #27
  tail call void @check(i32 noundef 0)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s351() local_unnamed_addr #11 {
  %1 = tail call i32 @clock() #27
  %2 = tail call i32 @init(ptr noundef nonnull @"??_C@_05FCNCEAPD@s351?5?$AA@")
  %3 = tail call i32 @clock() #27
  %4 = load <1 x float>, ptr @c, align 16
  %broadcast.splat = shufflevector <1 x float> %4, <1 x float> poison, <4 x i32> zeroinitializer
  %5 = shufflevector <1 x float> %4, <1 x float> poison, <16 x i32> zeroinitializer
  br label %vector.ph

vector.ph:                                        ; preds = %middle.block, %0
  %.02224 = phi i32 [ 0, %0 ], [ %156, %middle.block ]
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %6 = mul nuw i64 %index, 5
  %7 = add i64 %6, 5
  %8 = add i64 %6, 10
  %9 = add i64 %6, 15
  %10 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %6
  %11 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %7
  %12 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %8
  %13 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %9
  %14 = load float, ptr %10, align 16
  %15 = load float, ptr %11, align 4
  %16 = load float, ptr %12, align 8
  %17 = load float, ptr %13, align 4
  %18 = insertelement <4 x float> poison, float %14, i64 0
  %19 = insertelement <4 x float> %18, float %15, i64 1
  %20 = insertelement <4 x float> %19, float %16, i64 2
  %21 = insertelement <4 x float> %20, float %17, i64 3
  %22 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %6
  %23 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %7
  %24 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %8
  %25 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %9
  %26 = load float, ptr %22, align 16
  %27 = load float, ptr %23, align 4
  %28 = load float, ptr %24, align 8
  %29 = load float, ptr %25, align 4
  %30 = insertelement <4 x float> poison, float %26, i64 0
  %31 = insertelement <4 x float> %30, float %27, i64 1
  %32 = insertelement <4 x float> %31, float %28, i64 2
  %33 = insertelement <4 x float> %32, float %29, i64 3
  %34 = or disjoint i64 %6, 1
  %35 = add i64 %6, 6
  %36 = add i64 %6, 11
  %37 = add i64 %6, 16
  %38 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %34
  %39 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %35
  %40 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %36
  %41 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %37
  %42 = load float, ptr %38, align 4
  %43 = load float, ptr %39, align 8
  %44 = load float, ptr %40, align 4
  %45 = load float, ptr %41, align 16
  %46 = insertelement <4 x float> poison, float %42, i64 0
  %47 = insertelement <4 x float> %46, float %43, i64 1
  %48 = insertelement <4 x float> %47, float %44, i64 2
  %49 = insertelement <4 x float> %48, float %45, i64 3
  %50 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %34
  %51 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %35
  %52 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %36
  %53 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %37
  %54 = load float, ptr %50, align 4
  %55 = load float, ptr %51, align 8
  %56 = load float, ptr %52, align 4
  %57 = load float, ptr %53, align 16
  %58 = insertelement <4 x float> poison, float %54, i64 0
  %59 = insertelement <4 x float> %58, float %55, i64 1
  %60 = insertelement <4 x float> %59, float %56, i64 2
  %61 = insertelement <4 x float> %60, float %57, i64 3
  %62 = or disjoint i64 %6, 2
  %63 = add i64 %6, 7
  %64 = add i64 %6, 12
  %65 = add i64 %6, 17
  %66 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %62
  %67 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %63
  %68 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %64
  %69 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %65
  %70 = load float, ptr %66, align 8
  %71 = load float, ptr %67, align 4
  %72 = load float, ptr %68, align 16
  %73 = load float, ptr %69, align 4
  %74 = insertelement <4 x float> poison, float %70, i64 0
  %75 = insertelement <4 x float> %74, float %71, i64 1
  %76 = insertelement <4 x float> %75, float %72, i64 2
  %77 = insertelement <4 x float> %76, float %73, i64 3
  %78 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %62
  %79 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %63
  %80 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %64
  %81 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %65
  %82 = load float, ptr %78, align 8
  %83 = load float, ptr %79, align 4
  %84 = load float, ptr %80, align 16
  %85 = load float, ptr %81, align 4
  %86 = insertelement <4 x float> poison, float %82, i64 0
  %87 = insertelement <4 x float> %86, float %83, i64 1
  %88 = insertelement <4 x float> %87, float %84, i64 2
  %89 = insertelement <4 x float> %88, float %85, i64 3
  %90 = or disjoint i64 %6, 3
  %91 = add i64 %6, 8
  %92 = add i64 %6, 13
  %93 = add i64 %6, 18
  %94 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %90
  %95 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %91
  %96 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %92
  %97 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %93
  %98 = load float, ptr %94, align 4
  %99 = load float, ptr %95, align 16
  %100 = load float, ptr %96, align 4
  %101 = load float, ptr %97, align 8
  %102 = insertelement <4 x float> poison, float %98, i64 0
  %103 = insertelement <4 x float> %102, float %99, i64 1
  %104 = insertelement <4 x float> %103, float %100, i64 2
  %105 = insertelement <4 x float> %104, float %101, i64 3
  %106 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %90
  %107 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %91
  %108 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %92
  %109 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %93
  %110 = load float, ptr %106, align 4
  %111 = load float, ptr %107, align 16
  %112 = load float, ptr %108, align 4
  %113 = load float, ptr %109, align 8
  %114 = insertelement <4 x float> poison, float %110, i64 0
  %115 = insertelement <4 x float> %114, float %111, i64 1
  %116 = insertelement <4 x float> %115, float %112, i64 2
  %117 = insertelement <4 x float> %116, float %113, i64 3
  %118 = add nuw nsw i64 %6, 4
  %119 = add i64 %6, 9
  %120 = add i64 %6, 14
  %121 = add i64 %6, 19
  %122 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %118
  %123 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %119
  %124 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %120
  %125 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %121
  %126 = load float, ptr %122, align 16
  %127 = load float, ptr %123, align 4
  %128 = load float, ptr %124, align 8
  %129 = load float, ptr %125, align 4
  %130 = insertelement <4 x float> poison, float %126, i64 0
  %131 = insertelement <4 x float> %130, float %127, i64 1
  %132 = insertelement <4 x float> %131, float %128, i64 2
  %133 = insertelement <4 x float> %132, float %129, i64 3
  %134 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %118
  %135 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %119
  %136 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %120
  %137 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %121
  %138 = load float, ptr %134, align 16
  %139 = load float, ptr %135, align 4
  %140 = load float, ptr %136, align 8
  %141 = load float, ptr %137, align 4
  %142 = insertelement <4 x float> poison, float %138, i64 0
  %143 = insertelement <4 x float> %142, float %139, i64 1
  %144 = insertelement <4 x float> %143, float %140, i64 2
  %145 = insertelement <4 x float> %144, float %141, i64 3
  %146 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %133, <4 x float> %145)
  %147 = shufflevector <4 x float> %21, <4 x float> %49, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %148 = shufflevector <4 x float> %33, <4 x float> %61, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %149 = shufflevector <4 x float> %77, <4 x float> %105, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %150 = shufflevector <4 x float> %89, <4 x float> %117, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %151 = shufflevector <8 x float> %147, <8 x float> %149, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %152 = shufflevector <8 x float> %148, <8 x float> %150, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %153 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %5, <16 x float> %151, <16 x float> %152)
  %154 = shufflevector <4 x float> %146, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <16 x float> %153, <16 x float> %154, <20 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 1, i32 5, i32 9, i32 13, i32 17, i32 2, i32 6, i32 10, i32 14, i32 18, i32 3, i32 7, i32 11, i32 15, i32 19>
  store <20 x float> %interleaved.vec, ptr %22, align 16
  %index.next = add nuw i64 %index, 4
  %155 = icmp eq i64 %index.next, 6400
  br i1 %155, label %middle.block, label %vector.body, !llvm.loop !280

middle.block:                                     ; preds = %vector.body
  %156 = add nuw nsw i32 %.02224, 1
  %exitcond.not = icmp eq i32 %156, 2048
  br i1 %exitcond.not, label %157, label %vector.ph, !llvm.loop !281

157:                                              ; preds = %middle.block
  %158 = tail call i32 @clock() #27
  %159 = sub i32 %158, %3
  %160 = sitofp i32 %159 to double
  %161 = fdiv double %160, 1.000000e+06
  %162 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@NLOCLAHO@S351?7?5?$CF?42f?5?7?7?$AA@", double noundef %161) #27
  tail call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s1351() local_unnamed_addr #11 {
  %1 = tail call i32 @clock() #27
  %2 = tail call i32 @init(ptr noundef nonnull @"??_C@_05FCNCEAPD@s351?5?$AA@")
  %3 = tail call i32 @clock() #27
  br label %vector.ph

vector.ph:                                        ; preds = %middle.block, %0
  %.01621 = phi i32 [ 0, %0 ], [ %17, %middle.block ]
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %4 = shl nuw nsw i64 %index, 2
  %next.gep = getelementptr i8, ptr @c, i64 %4
  %next.gep23 = getelementptr i8, ptr @b, i64 %4
  %next.gep24 = getelementptr i8, ptr @a, i64 %4
  %5 = getelementptr i8, ptr %next.gep23, i64 16
  %wide.load = load <4 x float>, ptr %next.gep23, align 16
  %wide.load25 = load <4 x float>, ptr %5, align 16
  %6 = getelementptr i8, ptr %next.gep, i64 16
  %wide.load26 = load <4 x float>, ptr %next.gep, align 16
  %wide.load27 = load <4 x float>, ptr %6, align 16
  %7 = fadd <4 x float> %wide.load, %wide.load26
  %8 = fadd <4 x float> %wide.load25, %wide.load27
  %9 = getelementptr i8, ptr %next.gep24, i64 16
  store <4 x float> %7, ptr %next.gep24, align 16
  store <4 x float> %8, ptr %9, align 16
  %index.next = shl i64 %index, 2
  %10 = or disjoint i64 %index.next, 32
  %next.gep.1 = getelementptr i8, ptr @c, i64 %10
  %next.gep23.1 = getelementptr i8, ptr @b, i64 %10
  %next.gep24.1 = getelementptr i8, ptr @a, i64 %10
  %11 = getelementptr i8, ptr %next.gep23.1, i64 16
  %wide.load.1 = load <4 x float>, ptr %next.gep23.1, align 16
  %wide.load25.1 = load <4 x float>, ptr %11, align 16
  %12 = getelementptr i8, ptr %next.gep.1, i64 16
  %wide.load26.1 = load <4 x float>, ptr %next.gep.1, align 16
  %wide.load27.1 = load <4 x float>, ptr %12, align 16
  %13 = fadd <4 x float> %wide.load.1, %wide.load26.1
  %14 = fadd <4 x float> %wide.load25.1, %wide.load27.1
  %15 = getelementptr i8, ptr %next.gep24.1, i64 16
  store <4 x float> %13, ptr %next.gep24.1, align 16
  store <4 x float> %14, ptr %15, align 16
  %index.next.1 = add nuw nsw i64 %index, 16
  %16 = icmp eq i64 %index.next.1, 32000
  br i1 %16, label %middle.block, label %vector.body, !llvm.loop !282

middle.block:                                     ; preds = %vector.body
  %17 = add nuw nsw i32 %.01621, 1
  %exitcond22.not = icmp eq i32 %17, 2048
  br i1 %exitcond22.not, label %18, label %vector.ph, !llvm.loop !283

18:                                               ; preds = %middle.block
  %19 = tail call i32 @clock() #27
  %20 = sub i32 %19, %3
  %21 = sitofp i32 %20 to double
  %22 = fdiv double %21, 1.000000e+06
  %23 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0P@CPNNAPJB@S1351?7?5?$CF?42f?5?7?7?$AA@", double noundef %22) #27
  tail call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s352() local_unnamed_addr #11 {
  %1 = tail call i32 @clock() #27
  %2 = tail call i32 @init(ptr noundef nonnull @"??_C@_05FAJEPOKK@s352?5?$AA@")
  %3 = tail call i32 @clock() #27
  br label %.preheader

.preheader:                                       ; preds = %0, %35
  %.02024 = phi i32 [ 0, %0 ], [ %36, %35 ]
  br label %4

4:                                                ; preds = %.preheader, %4
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %4 ]
  %.122 = phi float [ 0.000000e+00, %.preheader ], [ %33, %4 ]
  %5 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv
  %6 = load float, ptr %5, align 4
  %7 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %indvars.iv
  %8 = load float, ptr %7, align 4
  %9 = tail call float @llvm.fmuladd.f32(float %6, float %8, float %.122)
  %10 = add nuw nsw i64 %indvars.iv, 1
  %11 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %10
  %12 = load float, ptr %11, align 4
  %13 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %10
  %14 = load float, ptr %13, align 4
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %9)
  %16 = add nuw nsw i64 %indvars.iv, 2
  %17 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %16
  %18 = load float, ptr %17, align 4
  %19 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %16
  %20 = load float, ptr %19, align 4
  %21 = tail call float @llvm.fmuladd.f32(float %18, float %20, float %15)
  %22 = add nuw nsw i64 %indvars.iv, 3
  %23 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %22
  %24 = load float, ptr %23, align 4
  %25 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %22
  %26 = load float, ptr %25, align 4
  %27 = tail call float @llvm.fmuladd.f32(float %24, float %26, float %21)
  %28 = add nuw nsw i64 %indvars.iv, 4
  %29 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %28
  %30 = load float, ptr %29, align 4
  %31 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %28
  %32 = load float, ptr %31, align 4
  %33 = tail call float @llvm.fmuladd.f32(float %30, float %32, float %27)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 5
  %34 = icmp samesign ult i64 %indvars.iv, 31995
  br i1 %34, label %4, label %35, !llvm.loop !284

35:                                               ; preds = %4
  %36 = add nuw nsw i32 %.02024, 1
  %exitcond.not = icmp eq i32 %36, 2048
  br i1 %exitcond.not, label %37, label %.preheader, !llvm.loop !285

37:                                               ; preds = %35
  %38 = tail call i32 @clock() #27
  %39 = sub i32 %38, %3
  %40 = sitofp i32 %39 to double
  %41 = fdiv double %40, 1.000000e+06
  %42 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@ECAANGHP@S352?7?5?$CF?42f?5?7?7?$AA@", double noundef %41) #27
  store float %33, ptr @temp, align 4
  tail call void @check(i32 noundef -1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s353(ptr noalias nofree noundef readonly captures(none) %0) local_unnamed_addr #11 {
  %2 = tail call i32 @clock() #27
  %3 = tail call i32 @init(ptr noundef nonnull @"??_C@_05FBFGJEJN@s353?5?$AA@")
  %4 = tail call i32 @clock() #27
  %5 = load float, ptr @c, align 16
  %6 = insertelement <4 x float> poison, float %5, i64 0
  %7 = shufflevector <4 x float> %6, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.preheader

.preheader:                                       ; preds = %1, %49
  %.02729 = phi i32 [ 0, %1 ], [ %50, %49 ]
  br label %8

8:                                                ; preds = %.preheader, %8
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %8 ]
  %9 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %10 = load i32, ptr %9, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [4 x i8], ptr @b, i64 %11
  %13 = load float, ptr %12, align 4
  %14 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv
  %15 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 4
  %17 = load i32, ptr %16, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [4 x i8], ptr @b, i64 %18
  %20 = load float, ptr %19, align 4
  %21 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 8
  %23 = load i32, ptr %22, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [4 x i8], ptr @b, i64 %24
  %26 = load float, ptr %25, align 4
  %27 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %28 = getelementptr inbounds nuw i8, ptr %27, i64 12
  %29 = load i32, ptr %28, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [4 x i8], ptr @b, i64 %30
  %32 = load float, ptr %31, align 4
  %33 = load <4 x float>, ptr %14, align 4
  %34 = insertelement <4 x float> poison, float %13, i64 0
  %35 = insertelement <4 x float> %34, float %20, i64 1
  %36 = insertelement <4 x float> %35, float %26, i64 2
  %37 = insertelement <4 x float> %36, float %32, i64 3
  %38 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %7, <4 x float> %37, <4 x float> %33)
  store <4 x float> %38, ptr %14, align 4
  %39 = add nuw nsw i64 %indvars.iv, 4
  %40 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %39
  %41 = load i32, ptr %40, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [4 x i8], ptr @b, i64 %42
  %44 = load float, ptr %43, align 4
  %45 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %39
  %46 = load float, ptr %45, align 4
  %47 = tail call float @llvm.fmuladd.f32(float %5, float %44, float %46)
  store float %47, ptr %45, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 5
  %48 = icmp samesign ult i64 %indvars.iv, 31995
  br i1 %48, label %8, label %49, !llvm.loop !286

49:                                               ; preds = %8
  %50 = add nuw nsw i32 %.02729, 1
  %exitcond.not = icmp eq i32 %50, 256
  br i1 %exitcond.not, label %51, label %.preheader, !llvm.loop !287

51:                                               ; preds = %49
  %52 = tail call i32 @clock() #27
  %53 = sub i32 %52, %4
  %54 = sitofp i32 %53 to double
  %55 = fdiv double %54, 1.000000e+06
  %56 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@IDIOAJLP@S353?7?5?$CF?42f?5?7?7?$AA@", double noundef %55) #27
  tail call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s421() local_unnamed_addr #11 {
  %1 = load ptr, ptr @xx, align 8
  %2 = tail call i32 @set1d(ptr noundef %1, float noundef 1.000000e+00, i32 noundef 1)
  %3 = tail call i32 @init(ptr noundef nonnull @"??_C@_05HNCFKEFK@s421?5?$AA@")
  %4 = tail call i32 @clock() #27
  br label %5

5:                                                ; preds = %0, %25
  %.01416 = phi i32 [ 0, %0 ], [ %26, %25 ]
  %6 = load ptr, ptr @xx, align 8
  store ptr %6, ptr @yy, align 8
  br label %7

7:                                                ; preds = %16, %5
  %indvars.iv = phi i64 [ 0, %5 ], [ %indvars.iv.next.1, %16 ]
  %8 = load ptr, ptr @yy, align 8
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %9 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv.next
  %10 = load float, ptr %9, align 4
  %11 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv
  %12 = load float, ptr %11, align 8
  %13 = fadd float %10, %12
  %14 = load ptr, ptr @xx, align 8
  %15 = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %indvars.iv
  store float %13, ptr %15, align 4
  %exitcond.not = icmp eq i64 %indvars.iv, 31998
  br i1 %exitcond.not, label %25, label %16

16:                                               ; preds = %7
  %17 = load ptr, ptr @yy, align 8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %18 = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %indvars.iv.next.1
  %19 = load float, ptr %18, align 4
  %20 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv.next
  %21 = load float, ptr %20, align 4
  %22 = fadd float %19, %21
  %23 = load ptr, ptr @xx, align 8
  %24 = getelementptr inbounds nuw [4 x i8], ptr %23, i64 %indvars.iv.next
  store float %22, ptr %24, align 4
  br label %7

25:                                               ; preds = %7
  %26 = add nuw nsw i32 %.01416, 1
  %exitcond19.not = icmp eq i32 %26, 1024
  br i1 %exitcond19.not, label %27, label %5, !llvm.loop !288

27:                                               ; preds = %25
  %28 = tail call i32 @clock() #27
  %29 = sub i32 %28, %4
  %30 = sitofp i32 %29 to double
  %31 = fdiv double %30, 1.000000e+06
  %32 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@NCAJFPKJ@S421?7?5?$CF?42f?5?7?7?$AA@", double noundef %31) #27
  store float 0.000000e+00, ptr @temp, align 4
  %33 = load ptr, ptr @xx, align 8
  br label %34

34:                                               ; preds = %34, %27
  %indvars.iv20 = phi i64 [ 0, %27 ], [ %indvars.iv.next21.4, %34 ]
  %35 = phi float [ 0.000000e+00, %27 ], [ %54, %34 ]
  %36 = getelementptr inbounds nuw [4 x i8], ptr %33, i64 %indvars.iv20
  %37 = load float, ptr %36, align 4
  %38 = fadd float %37, %35
  store float %38, ptr @temp, align 4
  %39 = getelementptr inbounds nuw [4 x i8], ptr %33, i64 %indvars.iv20
  %40 = getelementptr inbounds nuw i8, ptr %39, i64 4
  %41 = load float, ptr %40, align 4
  %42 = fadd float %41, %38
  store float %42, ptr @temp, align 4
  %43 = getelementptr inbounds nuw [4 x i8], ptr %33, i64 %indvars.iv20
  %44 = getelementptr inbounds nuw i8, ptr %43, i64 8
  %45 = load float, ptr %44, align 4
  %46 = fadd float %45, %42
  store float %46, ptr @temp, align 4
  %47 = getelementptr inbounds nuw [4 x i8], ptr %33, i64 %indvars.iv20
  %48 = getelementptr inbounds nuw i8, ptr %47, i64 12
  %49 = load float, ptr %48, align 4
  %50 = fadd float %49, %46
  store float %50, ptr @temp, align 4
  %51 = getelementptr inbounds nuw [4 x i8], ptr %33, i64 %indvars.iv20
  %52 = getelementptr inbounds nuw i8, ptr %51, i64 16
  %53 = load float, ptr %52, align 4
  %54 = fadd float %53, %50
  store float %54, ptr @temp, align 4
  %indvars.iv.next21.4 = add nuw nsw i64 %indvars.iv20, 5
  %exitcond23.not.4 = icmp eq i64 %indvars.iv.next21.4, 32000
  br i1 %exitcond23.not.4, label %55, label %34, !llvm.loop !289

55:                                               ; preds = %34
  tail call void @check(i32 noundef -1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s1421() local_unnamed_addr #11 {
  %1 = load ptr, ptr @xx, align 8
  %2 = tail call i32 @set1d(ptr noundef %1, float noundef 1.000000e+00, i32 noundef 1)
  %3 = tail call i32 @init(ptr noundef nonnull @"??_C@_05HNCFKEFK@s421?5?$AA@")
  %4 = tail call i32 @clock() #27
  store ptr getelementptr inbounds nuw (i8, ptr @b, i64 64000), ptr @xx, align 8
  br label %vector.ph

vector.ph:                                        ; preds = %middle.block, %0
  %.01416 = phi i32 [ 0, %0 ], [ %22, %middle.block ]
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %5 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @b, i64 64000), i64 %index
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %wide.load = load <4 x float>, ptr %5, align 16
  %wide.load24 = load <4 x float>, ptr %6, align 16
  %7 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %index
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %wide.load25 = load <4 x float>, ptr %7, align 16
  %wide.load26 = load <4 x float>, ptr %8, align 16
  %9 = fadd <4 x float> %wide.load, %wide.load25
  %10 = fadd <4 x float> %wide.load24, %wide.load26
  %11 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %index
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 16
  store <4 x float> %9, ptr %11, align 16
  store <4 x float> %10, ptr %12, align 16
  %index.next = or disjoint i64 %index, 8
  %13 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @b, i64 64000), i64 %index.next
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %wide.load.1 = load <4 x float>, ptr %13, align 16
  %wide.load24.1 = load <4 x float>, ptr %14, align 16
  %15 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %index.next
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %wide.load25.1 = load <4 x float>, ptr %15, align 16
  %wide.load26.1 = load <4 x float>, ptr %16, align 16
  %17 = fadd <4 x float> %wide.load.1, %wide.load25.1
  %18 = fadd <4 x float> %wide.load24.1, %wide.load26.1
  %19 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %index.next
  %20 = getelementptr inbounds nuw i8, ptr %19, i64 16
  store <4 x float> %17, ptr %19, align 16
  store <4 x float> %18, ptr %20, align 16
  %index.next.1 = add nuw nsw i64 %index, 16
  %21 = icmp eq i64 %index.next.1, 16000
  br i1 %21, label %middle.block, label %vector.body, !llvm.loop !290

middle.block:                                     ; preds = %vector.body
  %22 = add nuw nsw i32 %.01416, 1
  %exitcond19.not = icmp eq i32 %22, 2048
  br i1 %exitcond19.not, label %23, label %vector.ph, !llvm.loop !291

23:                                               ; preds = %middle.block
  %24 = tail call i32 @clock() #27
  %25 = sub i32 %24, %4
  %26 = sitofp i32 %25 to double
  %27 = fdiv double %26, 1.000000e+06
  %28 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0P@CGDGOAEG@S1421?7?5?$CF?42f?5?7?7?$AA@", double noundef %27) #27
  store float 0.000000e+00, ptr @temp, align 4
  %29 = load ptr, ptr @xx, align 8
  br label %30

30:                                               ; preds = %30, %23
  %indvars.iv20 = phi i64 [ 0, %23 ], [ %indvars.iv.next21.4, %30 ]
  %31 = phi float [ 0.000000e+00, %23 ], [ %50, %30 ]
  %32 = getelementptr inbounds nuw [4 x i8], ptr %29, i64 %indvars.iv20
  %33 = load float, ptr %32, align 4
  %34 = fadd float %33, %31
  store float %34, ptr @temp, align 4
  %35 = getelementptr inbounds nuw [4 x i8], ptr %29, i64 %indvars.iv20
  %36 = getelementptr inbounds nuw i8, ptr %35, i64 4
  %37 = load float, ptr %36, align 4
  %38 = fadd float %37, %34
  store float %38, ptr @temp, align 4
  %39 = getelementptr inbounds nuw [4 x i8], ptr %29, i64 %indvars.iv20
  %40 = getelementptr inbounds nuw i8, ptr %39, i64 8
  %41 = load float, ptr %40, align 4
  %42 = fadd float %41, %38
  store float %42, ptr @temp, align 4
  %43 = getelementptr inbounds nuw [4 x i8], ptr %29, i64 %indvars.iv20
  %44 = getelementptr inbounds nuw i8, ptr %43, i64 12
  %45 = load float, ptr %44, align 4
  %46 = fadd float %45, %42
  store float %46, ptr @temp, align 4
  %47 = getelementptr inbounds nuw [4 x i8], ptr %29, i64 %indvars.iv20
  %48 = getelementptr inbounds nuw i8, ptr %47, i64 16
  %49 = load float, ptr %48, align 4
  %50 = fadd float %49, %46
  store float %50, ptr @temp, align 4
  %indvars.iv.next21.4 = add nuw nsw i64 %indvars.iv20, 5
  %exitcond23.not.4 = icmp eq i64 %indvars.iv.next21.4, 16000
  br i1 %exitcond23.not.4, label %51, label %30, !llvm.loop !292

51:                                               ; preds = %30
  tail call void @check(i32 noundef -1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s422() local_unnamed_addr #11 {
  store ptr getelementptr inbounds nuw (i8, ptr @array, i64 16), ptr @xx, align 8
  %1 = tail call i32 @set1d(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @array, i64 16), float noundef 0.000000e+00, i32 noundef 1)
  %2 = tail call i32 @init(ptr noundef nonnull @"??_C@_05HPGDBKAD@s422?5?$AA@")
  %3 = tail call i32 @clock() #27
  br label %.preheader

.preheader:                                       ; preds = %0, %21
  %.01416 = phi i32 [ 0, %0 ], [ %22, %21 ]
  br label %4

4:                                                ; preds = %4, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %4 ]
  %5 = getelementptr inbounds nuw [4 x i8], ptr @array, i64 %indvars.iv
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %7 = load float, ptr %6, align 8
  %8 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv
  %9 = load float, ptr %8, align 8
  %10 = fadd float %7, %9
  %11 = load ptr, ptr @xx, align 8
  %12 = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv
  store float %10, ptr %12, align 4
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %13 = getelementptr inbounds nuw [4 x i8], ptr @array, i64 %indvars.iv.next
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 32
  %15 = load float, ptr %14, align 4
  %16 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv.next
  %17 = load float, ptr %16, align 4
  %18 = fadd float %15, %17
  %19 = load ptr, ptr @xx, align 8
  %20 = getelementptr inbounds nuw [4 x i8], ptr %19, i64 %indvars.iv.next
  store float %18, ptr %20, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 32000
  br i1 %exitcond.not.1, label %21, label %4, !llvm.loop !293

21:                                               ; preds = %4
  %22 = add nuw nsw i32 %.01416, 1
  %exitcond19.not = icmp eq i32 %22, 2048
  br i1 %exitcond19.not, label %23, label %.preheader, !llvm.loop !294

23:                                               ; preds = %21
  %24 = tail call i32 @clock() #27
  %25 = sub i32 %24, %3
  %26 = sitofp i32 %25 to double
  %27 = fdiv double %26, 1.000000e+06
  %28 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@ELOLDJKI@S422?7?5?$CF?42f?5?7?7?$AA@", double noundef %27) #27
  store float 0.000000e+00, ptr @temp, align 4
  %29 = load ptr, ptr @xx, align 8
  br label %30

30:                                               ; preds = %30, %23
  %indvars.iv20 = phi i64 [ 0, %23 ], [ %indvars.iv.next21.4, %30 ]
  %31 = phi float [ 0.000000e+00, %23 ], [ %50, %30 ]
  %32 = getelementptr inbounds nuw [4 x i8], ptr %29, i64 %indvars.iv20
  %33 = load float, ptr %32, align 4
  %34 = fadd float %33, %31
  store float %34, ptr @temp, align 4
  %35 = getelementptr inbounds nuw [4 x i8], ptr %29, i64 %indvars.iv20
  %36 = getelementptr inbounds nuw i8, ptr %35, i64 4
  %37 = load float, ptr %36, align 4
  %38 = fadd float %37, %34
  store float %38, ptr @temp, align 4
  %39 = getelementptr inbounds nuw [4 x i8], ptr %29, i64 %indvars.iv20
  %40 = getelementptr inbounds nuw i8, ptr %39, i64 8
  %41 = load float, ptr %40, align 4
  %42 = fadd float %41, %38
  store float %42, ptr @temp, align 4
  %43 = getelementptr inbounds nuw [4 x i8], ptr %29, i64 %indvars.iv20
  %44 = getelementptr inbounds nuw i8, ptr %43, i64 12
  %45 = load float, ptr %44, align 4
  %46 = fadd float %45, %42
  store float %46, ptr @temp, align 4
  %47 = getelementptr inbounds nuw [4 x i8], ptr %29, i64 %indvars.iv20
  %48 = getelementptr inbounds nuw i8, ptr %47, i64 16
  %49 = load float, ptr %48, align 4
  %50 = fadd float %49, %46
  store float %50, ptr @temp, align 4
  %indvars.iv.next21.4 = add nuw nsw i64 %indvars.iv20, 5
  %exitcond23.not.4 = icmp eq i64 %indvars.iv.next21.4, 32000
  br i1 %exitcond23.not.4, label %51, label %30, !llvm.loop !295

51:                                               ; preds = %30
  tail call void @check(i32 noundef -1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s423() local_unnamed_addr #11 {
  store ptr getelementptr inbounds nuw (i8, ptr @array, i64 256), ptr @xx, align 8
  %1 = tail call i32 @set1d(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @array, i64 256), float noundef 1.000000e+00, i32 noundef 1)
  %2 = tail call i32 @init(ptr noundef nonnull @"??_C@_05HOKBHADE@s423?5?$AA@")
  %3 = tail call i32 @clock() #27
  %4 = load ptr, ptr @xx, align 8
  %5 = ptrtoaddr ptr %4 to i64
  %6 = sub i64 add (i64 ptrtoaddr (ptr @array to i64), i64 3), %5
  %diff.check = icmp ult i64 %6, 31
  %diff.check26 = icmp ult i64 sub (i64 sub (i64 add (i64 ptrtoaddr (ptr @array to i64), i64 4), i64 ptrtoaddr (ptr @a to i64)), i64 1), 31
  %conflict.rdx = or i1 %diff.check, %diff.check26
  br label %vector.memcheck

vector.memcheck:                                  ; preds = %.unr-lcssa, %0
  %.01517 = phi i32 [ 0, %0 ], [ %44, %.unr-lcssa ]
  br i1 %conflict.rdx, label %scalar.ph.prol, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body.1
  %index = phi i64 [ %index.next.1, %vector.body.1 ], [ 0, %vector.memcheck ]
  %7 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %wide.load = load <4 x float>, ptr %7, align 4
  %wide.load27 = load <4 x float>, ptr %8, align 4
  %9 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %index
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %wide.load28 = load <4 x float>, ptr %9, align 16
  %wide.load29 = load <4 x float>, ptr %10, align 16
  %11 = fadd <4 x float> %wide.load, %wide.load28
  %12 = fadd <4 x float> %wide.load27, %wide.load29
  %13 = getelementptr inbounds nuw [4 x i8], ptr @array, i64 %index
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 4
  %15 = getelementptr inbounds nuw i8, ptr %13, i64 20
  store <4 x float> %11, ptr %14, align 4
  store <4 x float> %12, ptr %15, align 4
  %16 = icmp eq i64 %index, 31984
  br i1 %16, label %scalar.ph.prol, label %vector.body.1

vector.body.1:                                    ; preds = %vector.body
  %index.next = or disjoint i64 %index, 8
  %17 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index.next
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 16
  %wide.load.1 = load <4 x float>, ptr %17, align 4
  %wide.load27.1 = load <4 x float>, ptr %18, align 4
  %19 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %index.next
  %20 = getelementptr inbounds nuw i8, ptr %19, i64 16
  %wide.load28.1 = load <4 x float>, ptr %19, align 16
  %wide.load29.1 = load <4 x float>, ptr %20, align 16
  %21 = fadd <4 x float> %wide.load.1, %wide.load28.1
  %22 = fadd <4 x float> %wide.load27.1, %wide.load29.1
  %23 = getelementptr inbounds nuw [4 x i8], ptr @array, i64 %index.next
  %24 = getelementptr inbounds nuw i8, ptr %23, i64 4
  %25 = getelementptr inbounds nuw i8, ptr %23, i64 20
  store <4 x float> %21, ptr %24, align 4
  store <4 x float> %22, ptr %25, align 4
  %index.next.1 = add nuw nsw i64 %index, 16
  br label %vector.body

scalar.ph.prol:                                   ; preds = %vector.body, %vector.memcheck
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 31992, %vector.body ]
  %26 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.ph
  %27 = load float, ptr %26, align 4
  %28 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv.ph
  %29 = load float, ptr %28, align 16
  %30 = fadd float %27, %29
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  %31 = getelementptr inbounds nuw [4 x i8], ptr @array, i64 %indvars.iv.next.prol
  store float %30, ptr %31, align 4
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.prol
  %indvars.iv = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.next.1, %scalar.ph ]
  %32 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  %33 = load float, ptr %32, align 4
  %34 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv
  %35 = load float, ptr %34, align 4
  %36 = fadd float %33, %35
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %37 = getelementptr inbounds nuw [4 x i8], ptr @array, i64 %indvars.iv.next
  store float %36, ptr %37, align 4
  %38 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next
  %39 = load float, ptr %38, align 4
  %40 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv.next
  %41 = load float, ptr %40, align 4
  %42 = fadd float %39, %41
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %43 = getelementptr inbounds nuw [4 x i8], ptr @array, i64 %indvars.iv.next.1
  store float %42, ptr %43, align 4
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 31999
  br i1 %exitcond.not.1, label %.unr-lcssa, label %scalar.ph, !llvm.loop !296

.unr-lcssa:                                       ; preds = %scalar.ph
  %44 = add nuw nsw i32 %.01517, 1
  %exitcond20.not = icmp eq i32 %44, 1024
  br i1 %exitcond20.not, label %45, label %vector.memcheck, !llvm.loop !297

45:                                               ; preds = %.unr-lcssa
  %46 = tail call i32 @clock() #27
  %47 = sub i32 %46, %3
  %48 = sitofp i32 %47 to double
  %49 = fdiv double %48, 1.000000e+06
  %50 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@IKGFOGGI@S423?7?5?$CF?42f?5?7?7?$AA@", double noundef %49) #27
  br label %51

51:                                               ; preds = %51, %45
  %indvars.iv21 = phi i64 [ 0, %45 ], [ %indvars.iv.next22.4, %51 ]
  %52 = phi float [ 0.000000e+00, %45 ], [ %71, %51 ]
  %53 = getelementptr inbounds nuw [4 x i8], ptr @array, i64 %indvars.iv21
  %54 = load float, ptr %53, align 4
  %55 = fadd float %54, %52
  %56 = getelementptr inbounds nuw [4 x i8], ptr @array, i64 %indvars.iv21
  %57 = getelementptr inbounds nuw i8, ptr %56, i64 4
  %58 = load float, ptr %57, align 4
  %59 = fadd float %58, %55
  %60 = getelementptr inbounds nuw [4 x i8], ptr @array, i64 %indvars.iv21
  %61 = getelementptr inbounds nuw i8, ptr %60, i64 8
  %62 = load float, ptr %61, align 4
  %63 = fadd float %62, %59
  %64 = getelementptr inbounds nuw [4 x i8], ptr @array, i64 %indvars.iv21
  %65 = getelementptr inbounds nuw i8, ptr %64, i64 12
  %66 = load float, ptr %65, align 4
  %67 = fadd float %66, %63
  %68 = getelementptr inbounds nuw [4 x i8], ptr @array, i64 %indvars.iv21
  %69 = getelementptr inbounds nuw i8, ptr %68, i64 16
  %70 = load float, ptr %69, align 4
  %71 = fadd float %70, %67
  %indvars.iv.next22.4 = add nuw nsw i64 %indvars.iv21, 5
  %exitcond24.not.4 = icmp eq i64 %indvars.iv.next22.4, 32000
  br i1 %exitcond24.not.4, label %72, label %51, !llvm.loop !298

72:                                               ; preds = %51
  store float %71, ptr @temp, align 4
  tail call void @check(i32 noundef -1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s424() local_unnamed_addr #11 {
  store ptr getelementptr inbounds nuw (i8, ptr @array, i64 252), ptr @xx, align 8
  %1 = tail call i32 @set1d(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @array, i64 252), float noundef 0.000000e+00, i32 noundef 1)
  %2 = tail call i32 @init(ptr noundef nonnull @"??_C@_05HLOOGGLB@s424?5?$AA@")
  %3 = tail call i32 @clock() #27
  br label %.preheader

.preheader:                                       ; preds = %0, %20
  %.01517 = phi i32 [ 0, %0 ], [ %21, %20 ]
  br label %4

4:                                                ; preds = %12, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %12 ]
  %5 = getelementptr inbounds nuw [4 x i8], ptr @array, i64 %indvars.iv
  %6 = load float, ptr %5, align 8
  %7 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv
  %8 = load float, ptr %7, align 8
  %9 = fadd float %6, %8
  %10 = load ptr, ptr @xx, align 8
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %11 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv.next
  store float %9, ptr %11, align 4
  %exitcond.not = icmp eq i64 %indvars.iv, 31998
  br i1 %exitcond.not, label %20, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds nuw [4 x i8], ptr @array, i64 %indvars.iv.next
  %14 = load float, ptr %13, align 4
  %15 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv.next
  %16 = load float, ptr %15, align 4
  %17 = fadd float %14, %16
  %18 = load ptr, ptr @xx, align 8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %19 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %indvars.iv.next.1
  store float %17, ptr %19, align 4
  br label %4

20:                                               ; preds = %4
  %21 = add nuw nsw i32 %.01517, 1
  %exitcond20.not = icmp eq i32 %21, 1024
  br i1 %exitcond20.not, label %22, label %.preheader, !llvm.loop !299

22:                                               ; preds = %20
  %23 = tail call i32 @clock() #27
  %24 = sub i32 %23, %3
  %25 = sitofp i32 %24 to double
  %26 = fdiv double %25, 1.000000e+06
  %27 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@KDFOPDOL@S424?7?5?$CF?42f?5?7?7?$AA@", double noundef %26) #27
  store float 0.000000e+00, ptr @temp, align 4
  %28 = load ptr, ptr @xx, align 8
  br label %29

29:                                               ; preds = %29, %22
  %indvars.iv21 = phi i64 [ 0, %22 ], [ %indvars.iv.next22.4, %29 ]
  %30 = phi float [ 0.000000e+00, %22 ], [ %49, %29 ]
  %31 = getelementptr inbounds nuw [4 x i8], ptr %28, i64 %indvars.iv21
  %32 = load float, ptr %31, align 4
  %33 = fadd float %32, %30
  store float %33, ptr @temp, align 4
  %34 = getelementptr inbounds nuw [4 x i8], ptr %28, i64 %indvars.iv21
  %35 = getelementptr inbounds nuw i8, ptr %34, i64 4
  %36 = load float, ptr %35, align 4
  %37 = fadd float %36, %33
  store float %37, ptr @temp, align 4
  %38 = getelementptr inbounds nuw [4 x i8], ptr %28, i64 %indvars.iv21
  %39 = getelementptr inbounds nuw i8, ptr %38, i64 8
  %40 = load float, ptr %39, align 4
  %41 = fadd float %40, %37
  store float %41, ptr @temp, align 4
  %42 = getelementptr inbounds nuw [4 x i8], ptr %28, i64 %indvars.iv21
  %43 = getelementptr inbounds nuw i8, ptr %42, i64 12
  %44 = load float, ptr %43, align 4
  %45 = fadd float %44, %41
  store float %45, ptr @temp, align 4
  %46 = getelementptr inbounds nuw [4 x i8], ptr %28, i64 %indvars.iv21
  %47 = getelementptr inbounds nuw i8, ptr %46, i64 16
  %48 = load float, ptr %47, align 4
  %49 = fadd float %48, %45
  store float %49, ptr @temp, align 4
  %indvars.iv.next22.4 = add nuw nsw i64 %indvars.iv21, 5
  %exitcond24.not.4 = icmp eq i64 %indvars.iv.next22.4, 32000
  br i1 %exitcond24.not.4, label %50, label %29, !llvm.loop !300

50:                                               ; preds = %29
  tail call void @check(i32 noundef -1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s431() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05MFJJMDDP@s431?5?$AA@")
  %2 = tail call i32 @clock() #27
  br label %vector.ph

vector.ph:                                        ; preds = %middle.block, %0
  %.01315 = phi i32 [ 0, %0 ], [ %16, %middle.block ]
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %3 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %index
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %wide.load = load <4 x float>, ptr %3, align 16
  %wide.load18 = load <4 x float>, ptr %4, align 16
  %5 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %index
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %wide.load19 = load <4 x float>, ptr %5, align 16
  %wide.load20 = load <4 x float>, ptr %6, align 16
  %7 = fadd <4 x float> %wide.load, %wide.load19
  %8 = fadd <4 x float> %wide.load18, %wide.load20
  store <4 x float> %7, ptr %3, align 16
  store <4 x float> %8, ptr %4, align 16
  %index.next = or disjoint i64 %index, 8
  %9 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %index.next
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %wide.load.1 = load <4 x float>, ptr %9, align 16
  %wide.load18.1 = load <4 x float>, ptr %10, align 16
  %11 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %index.next
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 16
  %wide.load19.1 = load <4 x float>, ptr %11, align 16
  %wide.load20.1 = load <4 x float>, ptr %12, align 16
  %13 = fadd <4 x float> %wide.load.1, %wide.load19.1
  %14 = fadd <4 x float> %wide.load18.1, %wide.load20.1
  store <4 x float> %13, ptr %9, align 16
  store <4 x float> %14, ptr %10, align 16
  %index.next.1 = add nuw nsw i64 %index, 16
  %15 = icmp eq i64 %index.next.1, 32000
  br i1 %15, label %middle.block, label %vector.body, !llvm.loop !301

middle.block:                                     ; preds = %vector.body
  %16 = add nuw nsw i32 %.01315, 1
  %exitcond17.not = icmp eq i32 %16, 2560
  br i1 %exitcond17.not, label %17, label %vector.ph, !llvm.loop !302

17:                                               ; preds = %middle.block
  %18 = tail call i32 @clock() #27
  %19 = sub i32 %18, %2
  %20 = sitofp i32 %19 to double
  %21 = fdiv double %20, 1.000000e+06
  %22 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@EJKMBDMG@S431?7?5?$CF?42f?5?7?7?$AA@", double noundef %21) #27
  tail call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s441() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05FIEOPLIG@s441?5?$AA@")
  %2 = tail call i32 @clock() #27
  br label %.preheader

.preheader:                                       ; preds = %0, %28
  %.01821 = phi i32 [ 0, %0 ], [ %29, %28 ]
  br label %3

3:                                                ; preds = %.preheader, %27
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %27 ]
  %4 = getelementptr inbounds nuw [4 x i8], ptr @d, i64 %indvars.iv
  %5 = load float, ptr %4, align 4
  %6 = fcmp olt float %5, 0.000000e+00
  br i1 %6, label %7, label %15

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %indvars.iv
  %9 = load float, ptr %8, align 4
  %10 = getelementptr inbounds nuw [4 x i8], ptr @c, i64 %indvars.iv
  %11 = load float, ptr %10, align 4
  %12 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv
  %13 = load float, ptr %12, align 4
  %14 = tail call float @llvm.fmuladd.f32(float %9, float %11, float %13)
  store float %14, ptr %12, align 4
  br label %27

15:                                               ; preds = %3
  %16 = fcmp oeq float %5, 0.000000e+00
  %17 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv
  %18 = load float, ptr %17, align 4
  br i1 %16, label %19, label %23

19:                                               ; preds = %15
  %20 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %indvars.iv
  %21 = load float, ptr %20, align 4
  %22 = tail call float @llvm.fmuladd.f32(float %21, float %21, float %18)
  store float %22, ptr %17, align 4
  br label %27

23:                                               ; preds = %15
  %24 = getelementptr inbounds nuw [4 x i8], ptr @c, i64 %indvars.iv
  %25 = load float, ptr %24, align 4
  %26 = tail call float @llvm.fmuladd.f32(float %25, float %25, float %18)
  store float %26, ptr %17, align 4
  br label %27

27:                                               ; preds = %7, %23, %19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32000
  br i1 %exitcond.not, label %28, label %3, !llvm.loop !303

28:                                               ; preds = %27
  %29 = add nuw nsw i32 %.01821, 1
  %exitcond23.not = icmp eq i32 %29, 256
  br i1 %exitcond23.not, label %30, label %.preheader, !llvm.loop !304

30:                                               ; preds = %28
  %31 = tail call i32 @clock() #27
  %32 = sub i32 %31, %2
  %33 = sitofp i32 %32 to double
  %34 = fdiv double %33, 1.000000e+06
  %35 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@DNDEPKEJ@S441?7?5?$CF?42f?5?7?7?$AA@", double noundef %34) #27
  tail call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s442() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05FKAIEFNP@s442?5?$AA@")
  %2 = tail call i32 @clock() #27
  br label %.preheader

.preheader:                                       ; preds = %0, %14
  %.02022 = phi i32 [ 0, %0 ], [ %15, %14 ]
  br label %3

3:                                                ; preds = %.preheader, %10
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %10 ]
  %4 = getelementptr inbounds nuw [4 x i8], ptr @indx, i64 %indvars.iv
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv
  %7 = load float, ptr %6, align 4
  %switch.tableidx = add i32 %5, -2
  %8 = icmp ult i32 %switch.tableidx, 3
  br i1 %8, label %switch.lookup, label %10

switch.lookup:                                    ; preds = %3
  %9 = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.s442, i64 %9
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %10

10:                                               ; preds = %switch.lookup, %3
  %b.sink = phi ptr [ @b, %3 ], [ %switch.load, %switch.lookup ]
  %11 = getelementptr inbounds nuw [4 x i8], ptr %b.sink, i64 %indvars.iv
  %12 = load float, ptr %11, align 4
  %13 = tail call float @llvm.fmuladd.f32(float %12, float %12, float %7)
  store float %13, ptr %6, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32000
  br i1 %exitcond.not, label %14, label %3, !llvm.loop !305

14:                                               ; preds = %10
  %15 = add nuw nsw i32 %.02022, 1
  %exitcond24.not = icmp eq i32 %15, 128
  br i1 %exitcond24.not, label %16, label %.preheader, !llvm.loop !306

16:                                               ; preds = %14
  %17 = tail call i32 @clock() #27
  %18 = sub i32 %17, %2
  %19 = sitofp i32 %18 to double
  %20 = fdiv double %19, 1.000000e+06
  %21 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@KENGJMEI@S442?7?5?$CF?42f?5?7?7?$AA@", double noundef %20) #27
  tail call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s443() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05FLMKCPOI@s443?5?$AA@")
  %2 = tail call i32 @clock() #27
  br label %vector.ph

vector.ph:                                        ; preds = %middle.block, %0
  %.01416 = phi i32 [ 0, %0 ], [ %16, %middle.block ]
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %3 = getelementptr inbounds nuw [4 x i8], ptr @d, i64 %index
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %wide.load = load <4 x float>, ptr %3, align 16
  %wide.load22 = load <4 x float>, ptr %4, align 16
  %5 = fcmp ugt <4 x float> %wide.load, zeroinitializer
  %6 = fcmp ugt <4 x float> %wide.load22, zeroinitializer
  %7 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %index
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %wide.load23 = load <4 x float>, ptr %7, align 16
  %wide.load24 = load <4 x float>, ptr %8, align 16
  %9 = getelementptr inbounds nuw [4 x i8], ptr @c, i64 %index
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %wide.load25 = load <4 x float>, ptr %9, align 16
  %wide.load26 = load <4 x float>, ptr %10, align 16
  %predphi = select <4 x i1> %5, <4 x float> %wide.load23, <4 x float> %wide.load25
  %predphi27 = select <4 x i1> %6, <4 x float> %wide.load24, <4 x float> %wide.load26
  %11 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %index
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 16
  %wide.load28 = load <4 x float>, ptr %11, align 16
  %wide.load29 = load <4 x float>, ptr %12, align 16
  %13 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load23, <4 x float> %predphi, <4 x float> %wide.load28)
  %14 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load24, <4 x float> %predphi27, <4 x float> %wide.load29)
  store <4 x float> %13, ptr %11, align 16
  store <4 x float> %14, ptr %12, align 16
  %index.next = add nuw i64 %index, 8
  %15 = icmp eq i64 %index.next, 32000
  br i1 %15, label %middle.block, label %vector.body, !llvm.loop !307

middle.block:                                     ; preds = %vector.body
  %16 = add nuw nsw i32 %.01416, 1
  %exitcond18.not = icmp eq i32 %16, 512
  br i1 %exitcond18.not, label %17, label %vector.ph, !llvm.loop !308

17:                                               ; preds = %middle.block
  %18 = tail call i32 @clock() #27
  %19 = sub i32 %18, %2
  %20 = sitofp i32 %19 to double
  %21 = fdiv double %20, 1.000000e+06
  %22 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@GFFIEDII@S443?7?5?$CF?42f?5?7?7?$AA@", double noundef %21) #27
  tail call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s451() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05OAPCJMOD@s451?5?$AA@")
  %2 = tail call i32 @clock() #27
  br label %.preheader

.preheader:                                       ; preds = %0, %20
  %.01012 = phi i32 [ 0, %0 ], [ %21, %20 ]
  br label %3

3:                                                ; preds = %3, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %3 ]
  %4 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %indvars.iv
  %5 = load float, ptr %4, align 8
  %6 = tail call float @sinf(float noundef %5) #27
  %7 = getelementptr inbounds nuw [4 x i8], ptr @c, i64 %indvars.iv
  %8 = load float, ptr %7, align 8
  %9 = tail call float @cosf(float noundef %8) #27
  %10 = fadd float %6, %9
  %11 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv
  store float %10, ptr %11, align 8
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %12 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %indvars.iv.next
  %13 = load float, ptr %12, align 4
  %14 = tail call float @sinf(float noundef %13) #27
  %15 = getelementptr inbounds nuw [4 x i8], ptr @c, i64 %indvars.iv.next
  %16 = load float, ptr %15, align 4
  %17 = tail call float @cosf(float noundef %16) #27
  %18 = fadd float %14, %17
  %19 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv.next
  store float %18, ptr %19, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 32000
  br i1 %exitcond.not.1, label %20, label %3, !llvm.loop !309

20:                                               ; preds = %3
  %21 = add nuw nsw i32 %.01012, 1
  %exitcond14.not = icmp eq i32 %21, 51
  br i1 %exitcond14.not, label %22, label %.preheader, !llvm.loop !310

22:                                               ; preds = %20
  %23 = tail call i32 @clock() #27
  %24 = sub i32 %23, %2
  %25 = sitofp i32 %24 to double
  %26 = fdiv double %25, 1.000000e+06
  %27 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@KGJBLGCG@S451?7?5?$CF?42f?5?7?7?$AA@", double noundef %26) #27
  tail call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare dso_local float @sinf(float noundef) local_unnamed_addr #21

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare dso_local float @cosf(float noundef) local_unnamed_addr #21

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s452() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05OCLECCLK@s452?5?$AA@")
  %2 = tail call i32 @clock() #27
  br label %vector.ph

vector.ph:                                        ; preds = %middle.block, %0
  %.01113 = phi i32 [ 0, %0 ], [ %11, %middle.block ]
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph ], [ %vec.ind.next, %vector.body ]
  %3 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %index
  %wide.load = load <4 x float>, ptr %3, align 16
  %4 = getelementptr inbounds nuw [4 x i8], ptr @c, i64 %index
  %wide.load16 = load <4 x float>, ptr %4, align 16
  %5 = trunc <4 x i64> %vec.ind to <4 x i32>
  %6 = add <4 x i32> %5, splat (i32 1)
  %7 = uitofp nneg <4 x i32> %6 to <4 x float>
  %8 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load16, <4 x float> %7, <4 x float> %wide.load)
  %9 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %index
  store <4 x float> %8, ptr %9, align 16
  %index.next = add nuw i64 %index, 4
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 4)
  %10 = icmp eq i64 %index.next, 32000
  br i1 %10, label %middle.block, label %vector.body, !llvm.loop !311

middle.block:                                     ; preds = %vector.body
  %11 = add nuw nsw i32 %.01113, 1
  %exitcond15.not = icmp eq i32 %11, 1024
  br i1 %exitcond15.not, label %12, label %vector.ph, !llvm.loop !312

12:                                               ; preds = %middle.block
  %13 = tail call i32 @clock() #27
  %14 = sub i32 %13, %2
  %15 = sitofp i32 %14 to double
  %16 = fdiv double %15, 1.000000e+06
  %17 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@DPHDNACH@S452?7?5?$CF?42f?5?7?7?$AA@", double noundef %16) #27
  tail call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s453() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05ODHGEIIN@s453?5?$AA@")
  %2 = tail call i32 @clock() #27
  br label %.preheader

.preheader:                                       ; preds = %0, %14
  %.01115 = phi i32 [ 0, %0 ], [ %15, %14 ]
  br label %3

3:                                                ; preds = %3, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %3 ]
  %.01213 = phi float [ 0.000000e+00, %.preheader ], [ %9, %3 ]
  %4 = fadd float %.01213, 2.000000e+00
  %5 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %indvars.iv
  %6 = load float, ptr %5, align 8
  %7 = fmul float %4, %6
  %8 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv
  store float %7, ptr %8, align 8
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %9 = fadd float %4, 2.000000e+00
  %10 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %indvars.iv.next
  %11 = load float, ptr %10, align 4
  %12 = fmul float %9, %11
  %13 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv.next
  store float %12, ptr %13, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 32000
  br i1 %exitcond.not.1, label %14, label %3, !llvm.loop !313

14:                                               ; preds = %3
  %15 = add nuw nsw i32 %.01115, 1
  %exitcond17.not = icmp eq i32 %15, 512
  br i1 %exitcond17.not, label %16, label %.preheader, !llvm.loop !314

16:                                               ; preds = %14
  %17 = tail call i32 @clock() #27
  %18 = sub i32 %17, %2
  %19 = sitofp i32 %18 to double
  %20 = fdiv double %19, 1.000000e+06
  %21 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@POPNAPOH@S453?7?5?$CF?42f?5?7?7?$AA@", double noundef %20) #27
  tail call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s471() local_unnamed_addr #11 {
  %1 = tail call i32 @set1d(ptr noundef nonnull @x, float noundef 0.000000e+00, i32 noundef 1)
  %2 = tail call i32 @init(ptr noundef nonnull @"??_C@_05EKPLFEGI@s471?5?$AA@")
  %3 = tail call i32 @clock() #27
  br label %.preheader

.preheader:                                       ; preds = %0, %18
  %.02022 = phi i32 [ 0, %0 ], [ %19, %18 ]
  br label %4

4:                                                ; preds = %.preheader, %4
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %4 ]
  %5 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %indvars.iv
  %6 = load float, ptr %5, align 4
  %7 = getelementptr inbounds nuw [4 x i8], ptr @d, i64 %indvars.iv
  %8 = load float, ptr %7, align 4
  %9 = tail call float @llvm.fmuladd.f32(float %8, float %8, float %6)
  %10 = getelementptr inbounds nuw [4 x i8], ptr @x, i64 %indvars.iv
  store float %9, ptr %10, align 4
  %11 = tail call i32 @s471s()
  %12 = getelementptr inbounds nuw [4 x i8], ptr @c, i64 %indvars.iv
  %13 = load float, ptr %12, align 4
  %14 = load float, ptr %7, align 4
  %15 = getelementptr inbounds nuw [4 x i8], ptr @e, i64 %indvars.iv
  %16 = load float, ptr %15, align 4
  %17 = tail call float @llvm.fmuladd.f32(float %14, float %16, float %13)
  store float %17, ptr %5, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32000
  br i1 %exitcond.not, label %18, label %4, !llvm.loop !315

18:                                               ; preds = %4
  %19 = add nuw nsw i32 %.02022, 1
  %exitcond25.not = icmp eq i32 %19, 128
  br i1 %exitcond25.not, label %20, label %.preheader, !llvm.loop !316

20:                                               ; preds = %18
  %21 = tail call i32 @clock() #27
  %22 = sub i32 %21, %3
  %23 = sitofp i32 %22 to double
  %24 = fdiv double %23, 1.000000e+06
  %25 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@EKKKCILJ@S471?7?5?$CF?42f?5?7?7?$AA@", double noundef %24) #27
  br label %26

26:                                               ; preds = %26, %20
  %indvars.iv26 = phi i64 [ 0, %20 ], [ %indvars.iv.next27.4, %26 ]
  %27 = phi float [ 0.000000e+00, %20 ], [ %46, %26 ]
  %28 = getelementptr inbounds nuw [4 x i8], ptr @x, i64 %indvars.iv26
  %29 = load float, ptr %28, align 4
  %30 = fadd float %29, %27
  %31 = getelementptr inbounds nuw [4 x i8], ptr @x, i64 %indvars.iv26
  %32 = getelementptr inbounds nuw i8, ptr %31, i64 4
  %33 = load float, ptr %32, align 4
  %34 = fadd float %33, %30
  %35 = getelementptr inbounds nuw [4 x i8], ptr @x, i64 %indvars.iv26
  %36 = getelementptr inbounds nuw i8, ptr %35, i64 8
  %37 = load float, ptr %36, align 4
  %38 = fadd float %37, %34
  %39 = getelementptr inbounds nuw [4 x i8], ptr @x, i64 %indvars.iv26
  %40 = getelementptr inbounds nuw i8, ptr %39, i64 12
  %41 = load float, ptr %40, align 4
  %42 = fadd float %41, %38
  %43 = getelementptr inbounds nuw [4 x i8], ptr @x, i64 %indvars.iv26
  %44 = getelementptr inbounds nuw i8, ptr %43, i64 16
  %45 = load float, ptr %44, align 4
  %46 = fadd float %45, %42
  %indvars.iv.next27.4 = add nuw nsw i64 %indvars.iv26, 5
  %exitcond29.not.4 = icmp eq i64 %indvars.iv.next27.4, 32000
  br i1 %exitcond29.not.4, label %47, label %26, !llvm.loop !317

47:                                               ; preds = %26
  store float %46, ptr @temp, align 4
  tail call void @check(i32 noundef -12)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i32 @s471s() local_unnamed_addr #11 comdat {
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s481() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05BCJIEEDO@s481?5?$AA@")
  %2 = tail call i32 @clock() #27
  br label %.preheader

.preheader:                                       ; preds = %0, %16
  %.01113 = phi i32 [ 0, %0 ], [ %17, %16 ]
  br label %3

3:                                                ; preds = %.preheader, %8
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %8 ]
  %4 = getelementptr inbounds nuw [4 x i8], ptr @d, i64 %indvars.iv
  %5 = load float, ptr %4, align 4
  %6 = fcmp olt float %5, 0.000000e+00
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @exit(i32 noundef 0) #28
  unreachable

8:                                                ; preds = %3
  %9 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %indvars.iv
  %10 = load float, ptr %9, align 4
  %11 = getelementptr inbounds nuw [4 x i8], ptr @c, i64 %indvars.iv
  %12 = load float, ptr %11, align 4
  %13 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv
  %14 = load float, ptr %13, align 4
  %15 = tail call float @llvm.fmuladd.f32(float %10, float %12, float %14)
  store float %15, ptr %13, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32000
  br i1 %exitcond.not, label %16, label %3, !llvm.loop !318

16:                                               ; preds = %8
  %17 = add nuw nsw i32 %.01113, 1
  %exitcond15.not = icmp eq i32 %17, 256
  br i1 %exitcond15.not, label %18, label %.preheader, !llvm.loop !319

18:                                               ; preds = %16
  %19 = tail call i32 @clock() #27
  %20 = sub i32 %19, %2
  %21 = sitofp i32 %20 to double
  %22 = fdiv double %21, 1.000000e+06
  %23 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@DIDOLHMI@S481?7?5?$CF?42f?5?7?7?$AA@", double noundef %22) #27
  tail call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: nofree noreturn
declare dso_local void @exit(i32 noundef) local_unnamed_addr #22

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s482() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05BANOPKGH@s482?5?$AA@")
  %2 = tail call i32 @clock() #27
  br label %.preheader

.preheader:                                       ; preds = %0, %13
  %.01214 = phi i32 [ 0, %0 ], [ %14, %13 ]
  br label %3

3:                                                ; preds = %3, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %3 ], [ 0, %.preheader ]
  %4 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %indvars.iv
  %5 = load float, ptr %4, align 4
  %6 = getelementptr inbounds nuw [4 x i8], ptr @c, i64 %indvars.iv
  %7 = load float, ptr %6, align 4
  %8 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv
  %9 = load float, ptr %8, align 4
  %10 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %9)
  store float %10, ptr %8, align 4
  %11 = fcmp ule float %7, %5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %12 = icmp samesign ult i64 %indvars.iv, 31999
  %or.cond = select i1 %11, i1 %12, i1 false
  br i1 %or.cond, label %3, label %13, !llvm.loop !320

13:                                               ; preds = %3
  %14 = add nuw nsw i32 %.01214, 1
  %exitcond.not = icmp eq i32 %14, 256
  br i1 %exitcond.not, label %15, label %.preheader, !llvm.loop !321

15:                                               ; preds = %13
  %16 = tail call i32 @clock() #27
  %17 = sub i32 %16, %2
  %18 = sitofp i32 %17 to double
  %19 = fdiv double %18, 1.000000e+06
  %20 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@KBNMNBMJ@S482?7?5?$CF?42f?5?7?7?$AA@", double noundef %19) #27
  tail call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @tsvc_min(i32 noundef %0, i32 noundef %1) local_unnamed_addr #15 {
  %3 = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s491(ptr noalias nofree noundef readonly captures(none) %0) local_unnamed_addr #11 {
  %2 = tail call i32 @init(ptr noundef nonnull @"??_C@_05KKCECDFL@s491?5?$AA@")
  %3 = tail call i32 @clock() #27
  br label %.preheader

.preheader:                                       ; preds = %1, %27
  %.01214 = phi i32 [ 0, %1 ], [ %28, %27 ]
  br label %4

4:                                                ; preds = %4, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %4 ]
  %5 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %indvars.iv
  %6 = load float, ptr %5, align 8
  %7 = getelementptr inbounds nuw [4 x i8], ptr @c, i64 %indvars.iv
  %8 = load float, ptr %7, align 8
  %9 = getelementptr inbounds nuw [4 x i8], ptr @d, i64 %indvars.iv
  %10 = load float, ptr %9, align 8
  %11 = tail call float @llvm.fmuladd.f32(float %8, float %10, float %6)
  %12 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %13 = load i32, ptr %12, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [4 x i8], ptr @a, i64 %14
  store float %11, ptr %15, align 4
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %16 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %indvars.iv.next
  %17 = load float, ptr %16, align 4
  %18 = getelementptr inbounds nuw [4 x i8], ptr @c, i64 %indvars.iv.next
  %19 = load float, ptr %18, align 4
  %20 = getelementptr inbounds nuw [4 x i8], ptr @d, i64 %indvars.iv.next
  %21 = load float, ptr %20, align 4
  %22 = tail call float @llvm.fmuladd.f32(float %19, float %21, float %17)
  %23 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next
  %24 = load i32, ptr %23, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [4 x i8], ptr @a, i64 %25
  store float %22, ptr %26, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 32000
  br i1 %exitcond.not.1, label %27, label %4, !llvm.loop !322

27:                                               ; preds = %4
  %28 = add nuw nsw i32 %.01214, 1
  %exitcond16.not = icmp eq i32 %28, 256
  br i1 %exitcond16.not, label %29, label %.preheader, !llvm.loop !323

29:                                               ; preds = %27
  %30 = tail call i32 @clock() #27
  %31 = sub i32 %30, %3
  %32 = sitofp i32 %31 to double
  %33 = fdiv double %32, 1.000000e+06
  %34 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@KDJLPLKH@S491?7?5?$CF?42f?5?7?7?$AA@", double noundef %33) #27
  tail call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s4112(ptr noalias nofree noundef readonly captures(none) %0, float noundef %1) local_unnamed_addr #11 {
  %3 = tail call i32 @init(ptr noundef nonnull @"??_C@_05BHGEHLGH@s4112?$AA@")
  %4 = tail call i32 @clock() #27
  br label %.preheader

.preheader:                                       ; preds = %2, %22
  %.01113 = phi i32 [ 0, %2 ], [ %23, %22 ]
  br label %5

5:                                                ; preds = %5, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %5 ]
  %6 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %7 = load i32, ptr %6, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [4 x i8], ptr @b, i64 %8
  %10 = load float, ptr %9, align 4
  %11 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv
  %12 = load float, ptr %11, align 8
  %13 = tail call float @llvm.fmuladd.f32(float %10, float %1, float %12)
  store float %13, ptr %11, align 8
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %14 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next
  %15 = load i32, ptr %14, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [4 x i8], ptr @b, i64 %16
  %18 = load float, ptr %17, align 4
  %19 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv.next
  %20 = load float, ptr %19, align 4
  %21 = tail call float @llvm.fmuladd.f32(float %18, float %1, float %20)
  store float %21, ptr %19, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 32000
  br i1 %exitcond.not.1, label %22, label %5, !llvm.loop !324

22:                                               ; preds = %5
  %23 = add nuw nsw i32 %.01113, 1
  %exitcond15.not = icmp eq i32 %23, 256
  br i1 %exitcond15.not, label %24, label %.preheader, !llvm.loop !325

24:                                               ; preds = %22
  %25 = tail call i32 @clock() #27
  %26 = sub i32 %25, %4
  %27 = sitofp i32 %26 to double
  %28 = fdiv double %27, 1.000000e+06
  %29 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0P@FBMGIJMJ@S4112?7?5?$CF?42f?5?7?7?$AA@", double noundef %28) #27
  tail call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s4113(ptr noalias nofree noundef readonly captures(none) %0) local_unnamed_addr #11 {
  %2 = tail call i32 @init(ptr noundef nonnull @"??_C@_05OHPEKCG@s4113?$AA@")
  %3 = tail call i32 @clock() #27
  br label %.preheader

.preheader:                                       ; preds = %1, %23
  %.01214 = phi i32 [ 0, %1 ], [ %24, %23 ]
  br label %4

4:                                                ; preds = %4, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %4 ]
  %5 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %6 = load i32, ptr %5, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [4 x i8], ptr @b, i64 %7
  %9 = load float, ptr %8, align 4
  %10 = getelementptr inbounds nuw [4 x i8], ptr @c, i64 %indvars.iv
  %11 = load float, ptr %10, align 8
  %12 = fadd float %9, %11
  %13 = getelementptr inbounds [4 x i8], ptr @a, i64 %7
  store float %12, ptr %13, align 4
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %14 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next
  %15 = load i32, ptr %14, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [4 x i8], ptr @b, i64 %16
  %18 = load float, ptr %17, align 4
  %19 = getelementptr inbounds nuw [4 x i8], ptr @c, i64 %indvars.iv.next
  %20 = load float, ptr %19, align 4
  %21 = fadd float %18, %20
  %22 = getelementptr inbounds [4 x i8], ptr @a, i64 %16
  store float %21, ptr %22, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 32000
  br i1 %exitcond.not.1, label %23, label %4, !llvm.loop !326

23:                                               ; preds = %4
  %24 = add nuw nsw i32 %.01214, 1
  %exitcond16.not = icmp eq i32 %24, 256
  br i1 %exitcond16.not, label %25, label %.preheader, !llvm.loop !327

25:                                               ; preds = %23
  %26 = tail call i32 @clock() #27
  %27 = sub i32 %26, %3
  %28 = sitofp i32 %27 to double
  %29 = fdiv double %28, 1.000000e+06
  %30 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0P@JAEIFGAJ@S4113?7?5?$CF?42f?5?7?7?$AA@", double noundef %29) #27
  tail call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s4114(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #11 {
  %3 = tail call i32 @init(ptr noundef nonnull @"??_C@_05EBDONMOB@s4114?$AA@")
  %4 = tail call i32 @clock() #27
  %5 = add i32 %1, -1
  %6 = icmp slt i32 %5, 32000
  br i1 %6, label %.lr.ph.preheader, label %.split18

.lr.ph.preheader:                                 ; preds = %2
  %7 = sext i32 %5 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %.01517 = phi i32 [ %22, %._crit_edge ], [ 0, %.lr.ph.preheader ]
  br label %8

8:                                                ; preds = %.lr.ph, %8
  %indvars.iv = phi i64 [ %7, %.lr.ph ], [ %indvars.iv.next, %8 ]
  %9 = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds [4 x i8], ptr @b, i64 %indvars.iv
  %12 = load float, ptr %11, align 4
  %13 = sub i32 31999, %10
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [4 x i8], ptr @c, i64 %14
  %16 = load float, ptr %15, align 4
  %17 = getelementptr inbounds [4 x i8], ptr @d, i64 %indvars.iv
  %18 = load float, ptr %17, align 4
  %19 = tail call float @llvm.fmuladd.f32(float %16, float %18, float %12)
  %20 = getelementptr inbounds [4 x i8], ptr @a, i64 %indvars.iv
  store float %19, ptr %20, align 4
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %21 = and i64 %indvars.iv.next, 4294967295
  %exitcond.not = icmp eq i64 %21, 32000
  br i1 %exitcond.not, label %._crit_edge, label %8, !llvm.loop !328

._crit_edge:                                      ; preds = %8
  %22 = add nuw nsw i32 %.01517, 1
  %exitcond20.not = icmp eq i32 %22, 256
  br i1 %exitcond20.not, label %.split18, label %.lr.ph, !llvm.loop !329

.split18:                                         ; preds = %._crit_edge, %2
  %23 = tail call i32 @clock() #27
  %24 = sub i32 %23, %4
  %25 = sitofp i32 %24 to double
  %26 = fdiv double %25, 1.000000e+06
  %27 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0P@LJHDEDIK@S4114?7?5?$CF?42f?5?7?7?$AA@", double noundef %26) #27
  tail call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s4115(ptr noalias nofree noundef readonly captures(none) %0) local_unnamed_addr #11 {
  %2 = tail call i32 @init(ptr noundef nonnull @"??_C@_05FICFONKA@s4115?$AA@")
  %3 = tail call i32 @clock() #27
  br label %.preheader

.preheader:                                       ; preds = %1, %21
  %.01216 = phi i32 [ 0, %1 ], [ %22, %21 ]
  br label %4

4:                                                ; preds = %4, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %4 ]
  %.114 = phi float [ 0.000000e+00, %.preheader ], [ %20, %4 ]
  %5 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv
  %6 = load float, ptr %5, align 8
  %7 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %8 = load i32, ptr %7, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [4 x i8], ptr @b, i64 %9
  %11 = load float, ptr %10, align 4
  %12 = tail call float @llvm.fmuladd.f32(float %6, float %11, float %.114)
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %13 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv.next
  %14 = load float, ptr %13, align 4
  %15 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next
  %16 = load i32, ptr %15, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [4 x i8], ptr @b, i64 %17
  %19 = load float, ptr %18, align 4
  %20 = tail call float @llvm.fmuladd.f32(float %14, float %19, float %12)
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 32000
  br i1 %exitcond.not.1, label %21, label %4, !llvm.loop !330

21:                                               ; preds = %4
  %22 = add nuw nsw i32 %.01216, 1
  %exitcond18.not = icmp eq i32 %22, 256
  br i1 %exitcond18.not, label %23, label %.preheader, !llvm.loop !331

23:                                               ; preds = %21
  %24 = tail call i32 @clock() #27
  %25 = sub i32 %24, %3
  %26 = sitofp i32 %25 to double
  %27 = fdiv double %26, 1.000000e+06
  %28 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0P@HIPNJMEK@S4115?7?5?$CF?42f?5?7?7?$AA@", double noundef %27) #27
  store float %20, ptr @temp, align 4
  tail call void @check(i32 noundef -1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s4116(ptr noalias nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #11 {
  %4 = tail call i32 @init(ptr noundef nonnull @"??_C@_05HDAILOGD@s4116?$AA@")
  %5 = tail call i32 @clock() #27
  %6 = add i32 %1, -1
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [1024 x i8], ptr @aa, i64 %7
  br label %.preheader

.preheader:                                       ; preds = %3, %33
  %.01519 = phi i32 [ 0, %3 ], [ %34, %33 ]
  br label %9

9:                                                ; preds = %21, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %21 ]
  %.117 = phi float [ 0.000000e+00, %.preheader ], [ %32, %21 ]
  %10 = trunc nuw nsw i64 %indvars.iv to i32
  %11 = add i32 %2, %10
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [4 x i8], ptr @a, i64 %12
  %14 = load float, ptr %13, align 4
  %15 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %16 = load i32, ptr %15, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [4 x i8], ptr %8, i64 %17
  %19 = load float, ptr %18, align 4
  %20 = tail call float @llvm.fmuladd.f32(float %14, float %19, float %.117)
  %exitcond.not = icmp eq i64 %indvars.iv, 254
  br i1 %exitcond.not, label %33, label %21

21:                                               ; preds = %9
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %22 = trunc nuw nsw i64 %indvars.iv.next to i32
  %23 = add i32 %2, %22
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [4 x i8], ptr @a, i64 %24
  %26 = load float, ptr %25, align 4
  %27 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next
  %28 = load i32, ptr %27, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [4 x i8], ptr %8, i64 %29
  %31 = load float, ptr %30, align 4
  %32 = tail call float @llvm.fmuladd.f32(float %26, float %31, float %20)
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  br label %9

33:                                               ; preds = %9
  %34 = add nuw nsw i32 %.01519, 1
  %exitcond21.not = icmp eq i32 %34, 25600
  br i1 %exitcond21.not, label %35, label %.preheader, !llvm.loop !332

35:                                               ; preds = %33
  %36 = tail call i32 @clock() #27
  %37 = sub i32 %36, %5
  %38 = sitofp i32 %37 to double
  %39 = fdiv double %38, 1.000000e+06
  %40 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0P@OBBPPKEL@S4116?7?5?$CF?42f?5?7?7?$AA@", double noundef %39) #27
  store float %20, ptr @temp, align 4
  tail call void @check(i32 noundef -1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s4117() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05GKBDIPCC@s4117?$AA@")
  %2 = tail call i32 @clock() #27
  br label %vector.ph

vector.ph:                                        ; preds = %middle.block, %0
  %.01113 = phi i32 [ 0, %0 ], [ %21, %middle.block ]
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %3 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %index
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %wide.load = load <2 x float>, ptr %3, align 16
  %wide.load16 = load <2 x float>, ptr %4, align 8
  %5 = lshr exact i64 %index, 1
  %6 = lshr exact i64 %index, 1
  %7 = and i64 %5, 2147483646
  %8 = and i64 %6, 2147483646
  %9 = getelementptr inbounds nuw [4 x i8], ptr @c, i64 %7
  %10 = getelementptr inbounds nuw [4 x i8], ptr @c, i64 %8
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 4
  %12 = load float, ptr %9, align 8
  %broadcast.splatinsert = insertelement <2 x float> poison, float %12, i64 0
  %broadcast.splat = shufflevector <2 x float> %broadcast.splatinsert, <2 x float> poison, <2 x i32> zeroinitializer
  %13 = load float, ptr %11, align 4
  %broadcast.splatinsert19 = insertelement <2 x float> poison, float %13, i64 0
  %broadcast.splat20 = shufflevector <2 x float> %broadcast.splatinsert19, <2 x float> poison, <2 x i32> zeroinitializer
  %14 = getelementptr inbounds nuw [4 x i8], ptr @d, i64 %index
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %wide.load17 = load <2 x float>, ptr %14, align 16
  %wide.load18 = load <2 x float>, ptr %15, align 8
  %16 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %broadcast.splat, <2 x float> %wide.load17, <2 x float> %wide.load)
  %17 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %broadcast.splat20, <2 x float> %wide.load18, <2 x float> %wide.load16)
  %18 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %index
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 8
  store <2 x float> %16, ptr %18, align 16
  store <2 x float> %17, ptr %19, align 8
  %index.next = add nuw i64 %index, 4
  %20 = icmp eq i64 %index.next, 32000
  br i1 %20, label %middle.block, label %vector.body, !llvm.loop !333

middle.block:                                     ; preds = %vector.body
  %21 = add nuw nsw i32 %.01113, 1
  %exitcond15.not = icmp eq i32 %21, 256
  br i1 %exitcond15.not, label %22, label %vector.ph, !llvm.loop !334

22:                                               ; preds = %middle.block
  %23 = tail call i32 @clock() #27
  %24 = sub i32 %23, %2
  %25 = sitofp i32 %24 to double
  %26 = fdiv double %25, 1.000000e+06
  %27 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0P@CAJBCFIL@S4117?7?5?$CF?42f?5?7?7?$AA@", double noundef %26) #27
  tail call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @s4121() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05DOAPJGPN@s4121?$AA@")
  %2 = tail call i32 @clock() #27
  br label %.preheader

.preheader:                                       ; preds = %0, %12
  %.01012 = phi i32 [ 0, %0 ], [ %13, %12 ]
  br label %3

3:                                                ; preds = %.preheader, %3
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %3 ]
  %4 = getelementptr inbounds nuw [4 x i8], ptr @c, i64 %indvars.iv
  %5 = load float, ptr %4, align 4
  %6 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %indvars.iv
  %7 = load float, ptr %6, align 4
  %8 = tail call float @f(float noundef %7, float noundef %5)
  %9 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv
  %10 = load float, ptr %9, align 4
  %11 = fadd float %8, %10
  store float %11, ptr %9, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32000
  br i1 %exitcond.not, label %12, label %3, !llvm.loop !335

12:                                               ; preds = %3
  %13 = add nuw nsw i32 %.01012, 1
  %exitcond14.not = icmp eq i32 %13, 256
  br i1 %exitcond14.not, label %14, label %.preheader, !llvm.loop !336

14:                                               ; preds = %12
  %15 = tail call i32 @clock() #27
  %16 = sub i32 %15, %2
  %17 = sitofp i32 %16 to double
  %18 = fdiv double %17, 1.000000e+06
  %19 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0P@LPLKDNDI@S4121?7?5?$CF?42f?5?7?7?$AA@", double noundef %18) #27
  tail call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local float @f(float noundef %0, float noundef %1) local_unnamed_addr #11 comdat {
  %3 = fmul float %0, %1
  ret float %3
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @va() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_03IDIMFPN@va?7?$AA@")
  %2 = tail call i32 @clock() #27
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %0
  %.0911 = phi i32 [ 0, %0 ], [ %3, %.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @a, ptr noundef nonnull align 16 dereferenceable(128000) @b, i64 128000, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @a, ptr noundef nonnull align 16 dereferenceable(128000) @b, i64 128000, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @a, ptr noundef nonnull align 16 dereferenceable(128000) @b, i64 128000, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @a, ptr noundef nonnull align 16 dereferenceable(128000) @b, i64 128000, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @a, ptr noundef nonnull align 16 dereferenceable(128000) @b, i64 128000, i1 false)
  %3 = add nuw nsw i32 %.0911, 5
  %exitcond.not.4 = icmp eq i32 %3, 2560
  br i1 %exitcond.not.4, label %4, label %.preheader, !llvm.loop !337

4:                                                ; preds = %.preheader
  %5 = tail call i32 @clock() #27
  %6 = sub i32 %5, %2
  %7 = sitofp i32 %6 to double
  %8 = fdiv double %7, 1.000000e+06
  %9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0M@KPBGNIFF@va?7?5?$CF?42f?5?7?7?$AA@", double noundef %8) #27
  tail call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @vag(ptr noalias nofree noundef readonly captures(none) %0) local_unnamed_addr #11 {
  %2 = tail call i32 @init(ptr noundef nonnull @"??_C@_05DMCMEDIF@vag?5?5?$AA@")
  %3 = tail call i32 @clock() #27
  br label %.preheader

.preheader:                                       ; preds = %1, %17
  %.01012 = phi i32 [ 0, %1 ], [ %18, %17 ]
  br label %4

4:                                                ; preds = %4, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %4 ]
  %5 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %6 = load i32, ptr %5, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [4 x i8], ptr @b, i64 %7
  %9 = load float, ptr %8, align 4
  %10 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv
  store float %9, ptr %10, align 8
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %11 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next
  %12 = load i32, ptr %11, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [4 x i8], ptr @b, i64 %13
  %15 = load float, ptr %14, align 4
  %16 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv.next
  store float %15, ptr %16, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 32000
  br i1 %exitcond.not.1, label %17, label %4, !llvm.loop !338

17:                                               ; preds = %4
  %18 = add nuw nsw i32 %.01012, 1
  %exitcond14.not = icmp eq i32 %18, 512
  br i1 %exitcond14.not, label %19, label %.preheader, !llvm.loop !339

19:                                               ; preds = %17
  %20 = tail call i32 @clock() #27
  %21 = sub i32 %20, %3
  %22 = sitofp i32 %21 to double
  %23 = fdiv double %22, 1.000000e+06
  %24 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0N@FBJDDFNB@vag?7?5?$CF?42f?5?7?7?$AA@", double noundef %23) #27
  tail call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @vas(ptr noalias nofree noundef readonly captures(none) %0) local_unnamed_addr #11 {
  %2 = tail call i32 @init(ptr noundef nonnull @"??_C@_05ODFHIDEN@vas?5?5?$AA@")
  %3 = tail call i32 @clock() #27
  br label %.preheader

.preheader:                                       ; preds = %1, %17
  %.01012 = phi i32 [ 0, %1 ], [ %18, %17 ]
  br label %4

4:                                                ; preds = %4, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %4 ]
  %5 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %indvars.iv
  %6 = load float, ptr %5, align 8
  %7 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %8 = load i32, ptr %7, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [4 x i8], ptr @a, i64 %9
  store float %6, ptr %10, align 4
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %11 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %indvars.iv.next
  %12 = load float, ptr %11, align 4
  %13 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next
  %14 = load i32, ptr %13, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [4 x i8], ptr @a, i64 %15
  store float %12, ptr %16, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 32000
  br i1 %exitcond.not.1, label %17, label %4, !llvm.loop !340

17:                                               ; preds = %4
  %18 = add nuw nsw i32 %.01012, 1
  %exitcond14.not = icmp eq i32 %18, 512
  br i1 %exitcond14.not, label %19, label %.preheader, !llvm.loop !341

19:                                               ; preds = %17
  %20 = tail call i32 @clock() #27
  %21 = sub i32 %20, %3
  %22 = sitofp i32 %21 to double
  %23 = fdiv double %22, 1.000000e+06
  %24 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0N@EPLMICJI@vas?7?5?$CF?42f?5?7?7?$AA@", double noundef %23) #27
  tail call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @vif() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05LEOAGPCB@vif?5?5?$AA@")
  %2 = tail call i32 @clock() #27
  br label %vector.ph

vector.ph:                                        ; preds = %middle.block, %0
  %.01013 = phi i32 [ 0, %0 ], [ %39, %middle.block ]
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue31, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue31 ]
  %3 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %index
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %wide.load = load <4 x float>, ptr %3, align 16
  %wide.load17 = load <4 x float>, ptr %4, align 16
  %5 = fcmp ogt <4 x float> %wide.load, zeroinitializer
  %6 = fcmp ogt <4 x float> %wide.load17, zeroinitializer
  %7 = extractelement <4 x i1> %5, i64 0
  br i1 %7, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %8 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %index
  %9 = extractelement <4 x float> %wide.load, i64 0
  store float %9, ptr %8, align 16
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %10 = extractelement <4 x i1> %5, i64 1
  br i1 %10, label %pred.store.if18, label %pred.store.continue19

pred.store.if18:                                  ; preds = %pred.store.continue
  %11 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %index
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 4
  %13 = extractelement <4 x float> %wide.load, i64 1
  store float %13, ptr %12, align 4
  br label %pred.store.continue19

pred.store.continue19:                            ; preds = %pred.store.if18, %pred.store.continue
  %14 = extractelement <4 x i1> %5, i64 2
  br i1 %14, label %pred.store.if20, label %pred.store.continue21

pred.store.if20:                                  ; preds = %pred.store.continue19
  %15 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %index
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %17 = extractelement <4 x float> %wide.load, i64 2
  store float %17, ptr %16, align 8
  br label %pred.store.continue21

pred.store.continue21:                            ; preds = %pred.store.if20, %pred.store.continue19
  %18 = extractelement <4 x i1> %5, i64 3
  br i1 %18, label %pred.store.if22, label %pred.store.continue23

pred.store.if22:                                  ; preds = %pred.store.continue21
  %19 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %index
  %20 = getelementptr inbounds nuw i8, ptr %19, i64 12
  %21 = extractelement <4 x float> %wide.load, i64 3
  store float %21, ptr %20, align 4
  br label %pred.store.continue23

pred.store.continue23:                            ; preds = %pred.store.if22, %pred.store.continue21
  %22 = extractelement <4 x i1> %6, i64 0
  br i1 %22, label %pred.store.if24, label %pred.store.continue25

pred.store.if24:                                  ; preds = %pred.store.continue23
  %23 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %index
  %24 = getelementptr inbounds nuw i8, ptr %23, i64 16
  %25 = extractelement <4 x float> %wide.load17, i64 0
  store float %25, ptr %24, align 16
  br label %pred.store.continue25

pred.store.continue25:                            ; preds = %pred.store.if24, %pred.store.continue23
  %26 = extractelement <4 x i1> %6, i64 1
  br i1 %26, label %pred.store.if26, label %pred.store.continue27

pred.store.if26:                                  ; preds = %pred.store.continue25
  %27 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %index
  %28 = getelementptr inbounds nuw i8, ptr %27, i64 20
  %29 = extractelement <4 x float> %wide.load17, i64 1
  store float %29, ptr %28, align 4
  br label %pred.store.continue27

pred.store.continue27:                            ; preds = %pred.store.if26, %pred.store.continue25
  %30 = extractelement <4 x i1> %6, i64 2
  br i1 %30, label %pred.store.if28, label %pred.store.continue29

pred.store.if28:                                  ; preds = %pred.store.continue27
  %31 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %index
  %32 = getelementptr inbounds nuw i8, ptr %31, i64 24
  %33 = extractelement <4 x float> %wide.load17, i64 2
  store float %33, ptr %32, align 8
  br label %pred.store.continue29

pred.store.continue29:                            ; preds = %pred.store.if28, %pred.store.continue27
  %34 = extractelement <4 x i1> %6, i64 3
  br i1 %34, label %pred.store.if30, label %pred.store.continue31

pred.store.if30:                                  ; preds = %pred.store.continue29
  %35 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %index
  %36 = getelementptr inbounds nuw i8, ptr %35, i64 28
  %37 = extractelement <4 x float> %wide.load17, i64 3
  store float %37, ptr %36, align 4
  br label %pred.store.continue31

pred.store.continue31:                            ; preds = %pred.store.if30, %pred.store.continue29
  %index.next = add nuw i64 %index, 8
  %38 = icmp eq i64 %index.next, 32000
  br i1 %38, label %middle.block, label %vector.body, !llvm.loop !342

middle.block:                                     ; preds = %pred.store.continue31
  %39 = add nuw nsw i32 %.01013, 1
  %exitcond15.not = icmp eq i32 %39, 256
  br i1 %exitcond15.not, label %40, label %vector.ph, !llvm.loop !343

40:                                               ; preds = %middle.block
  %41 = tail call i32 @clock() #27
  %42 = sub i32 %41, %2
  %43 = sitofp i32 %42 to double
  %44 = fdiv double %43, 1.000000e+06
  %45 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0N@JGBBJMOP@vif?7?5?$CF?42f?5?7?7?$AA@", double noundef %44) #27
  tail call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @vpv() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05IJAJMNEN@vpv?5?5?$AA@")
  %2 = tail call i32 @clock() #27
  br label %vector.ph

vector.ph:                                        ; preds = %middle.block, %0
  %.0911 = phi i32 [ 0, %0 ], [ %16, %middle.block ]
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %3 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %index
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %wide.load = load <4 x float>, ptr %3, align 16
  %wide.load14 = load <4 x float>, ptr %4, align 16
  %5 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %index
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %wide.load15 = load <4 x float>, ptr %5, align 16
  %wide.load16 = load <4 x float>, ptr %6, align 16
  %7 = fadd <4 x float> %wide.load, %wide.load15
  %8 = fadd <4 x float> %wide.load14, %wide.load16
  store <4 x float> %7, ptr %5, align 16
  store <4 x float> %8, ptr %6, align 16
  %index.next = or disjoint i64 %index, 8
  %9 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %index.next
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %wide.load.1 = load <4 x float>, ptr %9, align 16
  %wide.load14.1 = load <4 x float>, ptr %10, align 16
  %11 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %index.next
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 16
  %wide.load15.1 = load <4 x float>, ptr %11, align 16
  %wide.load16.1 = load <4 x float>, ptr %12, align 16
  %13 = fadd <4 x float> %wide.load.1, %wide.load15.1
  %14 = fadd <4 x float> %wide.load14.1, %wide.load16.1
  store <4 x float> %13, ptr %11, align 16
  store <4 x float> %14, ptr %12, align 16
  %index.next.1 = add nuw nsw i64 %index, 16
  %15 = icmp eq i64 %index.next.1, 32000
  br i1 %15, label %middle.block, label %vector.body, !llvm.loop !344

middle.block:                                     ; preds = %vector.body
  %16 = add nuw nsw i32 %.0911, 1
  %exitcond13.not = icmp eq i32 %16, 2560
  br i1 %exitcond13.not, label %17, label %vector.ph, !llvm.loop !345

17:                                               ; preds = %middle.block
  %18 = tail call i32 @clock() #27
  %19 = sub i32 %18, %2
  %20 = sitofp i32 %19 to double
  %21 = fdiv double %20, 1.000000e+06
  %22 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0N@KJFGIPEJ@vpv?7?5?$CF?42f?5?7?7?$AA@", double noundef %21) #27
  tail call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @vtv() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05HMIJGLIN@vtv?5?5?$AA@")
  %2 = tail call i32 @clock() #27
  br label %vector.ph

vector.ph:                                        ; preds = %middle.block, %0
  %.0911 = phi i32 [ 0, %0 ], [ %16, %middle.block ]
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %3 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %index
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %wide.load = load <4 x float>, ptr %3, align 16
  %wide.load14 = load <4 x float>, ptr %4, align 16
  %5 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %index
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %wide.load15 = load <4 x float>, ptr %5, align 16
  %wide.load16 = load <4 x float>, ptr %6, align 16
  %7 = fmul <4 x float> %wide.load, %wide.load15
  %8 = fmul <4 x float> %wide.load14, %wide.load16
  store <4 x float> %7, ptr %5, align 16
  store <4 x float> %8, ptr %6, align 16
  %index.next = or disjoint i64 %index, 8
  %9 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %index.next
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %wide.load.1 = load <4 x float>, ptr %9, align 16
  %wide.load14.1 = load <4 x float>, ptr %10, align 16
  %11 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %index.next
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 16
  %wide.load15.1 = load <4 x float>, ptr %11, align 16
  %wide.load16.1 = load <4 x float>, ptr %12, align 16
  %13 = fmul <4 x float> %wide.load.1, %wide.load15.1
  %14 = fmul <4 x float> %wide.load14.1, %wide.load16.1
  store <4 x float> %13, ptr %11, align 16
  store <4 x float> %14, ptr %12, align 16
  %index.next.1 = add nuw nsw i64 %index, 16
  %15 = icmp eq i64 %index.next.1, 32000
  br i1 %15, label %middle.block, label %vector.body, !llvm.loop !346

middle.block:                                     ; preds = %vector.body
  %16 = add nuw nsw i32 %.0911, 1
  %exitcond13.not = icmp eq i32 %16, 2560
  br i1 %exitcond13.not, label %17, label %vector.ph, !llvm.loop !347

17:                                               ; preds = %middle.block
  %18 = tail call i32 @clock() #27
  %19 = sub i32 %18, %2
  %20 = sitofp i32 %19 to double
  %21 = fdiv double %20, 1.000000e+06
  %22 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0N@KKFALEDG@vtv?7?5?$CF?42f?5?7?7?$AA@", double noundef %21) #27
  tail call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @vpvtv() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05OFNLBPD@vpvtv?$AA@")
  %2 = tail call i32 @clock() #27
  br label %vector.ph

vector.ph:                                        ; preds = %middle.block, %0
  %.01012 = phi i32 [ 0, %0 ], [ %12, %middle.block ]
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %3 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %index
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %wide.load = load <4 x float>, ptr %3, align 16
  %wide.load15 = load <4 x float>, ptr %4, align 16
  %5 = getelementptr inbounds nuw [4 x i8], ptr @c, i64 %index
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %wide.load16 = load <4 x float>, ptr %5, align 16
  %wide.load17 = load <4 x float>, ptr %6, align 16
  %7 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %index
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %wide.load18 = load <4 x float>, ptr %7, align 16
  %wide.load19 = load <4 x float>, ptr %8, align 16
  %9 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %wide.load16, <4 x float> %wide.load18)
  %10 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load15, <4 x float> %wide.load17, <4 x float> %wide.load19)
  store <4 x float> %9, ptr %7, align 16
  store <4 x float> %10, ptr %8, align 16
  %index.next = add nuw i64 %index, 8
  %11 = icmp eq i64 %index.next, 32000
  br i1 %11, label %middle.block, label %vector.body, !llvm.loop !348

middle.block:                                     ; preds = %vector.body
  %12 = add nuw nsw i32 %.01012, 1
  %exitcond14.not = icmp eq i32 %12, 1024
  br i1 %exitcond14.not, label %13, label %vector.ph, !llvm.loop !349

13:                                               ; preds = %middle.block
  %14 = tail call i32 @clock() #27
  %15 = sub i32 %14, %2
  %16 = sitofp i32 %15 to double
  %17 = fdiv double %16, 1.000000e+06
  %18 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0P@LMDOEMEI@vpvtv?7?5?$CF?42f?5?7?7?$AA@", double noundef %17) #27
  tail call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @vpvts(float noundef %0) local_unnamed_addr #11 {
  %2 = tail call i32 @init(ptr noundef nonnull @"??_C@_05HDCKEFLG@vpvts?$AA@")
  %3 = tail call i32 @clock() #27
  %broadcast.splatinsert = insertelement <4 x float> poison, float %0, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.ph

vector.ph:                                        ; preds = %middle.block, %1
  %.01012 = phi i32 [ 0, %1 ], [ %11, %middle.block ]
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %4 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %index
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %wide.load = load <4 x float>, ptr %4, align 16
  %wide.load15 = load <4 x float>, ptr %5, align 16
  %6 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %index
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %wide.load16 = load <4 x float>, ptr %6, align 16
  %wide.load17 = load <4 x float>, ptr %7, align 16
  %8 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %broadcast.splat, <4 x float> %wide.load16)
  %9 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load15, <4 x float> %broadcast.splat, <4 x float> %wide.load17)
  store <4 x float> %8, ptr %6, align 16
  store <4 x float> %9, ptr %7, align 16
  %index.next = add nuw i64 %index, 8
  %10 = icmp eq i64 %index.next, 32000
  br i1 %10, label %middle.block, label %vector.body, !llvm.loop !350

middle.block:                                     ; preds = %vector.body
  %11 = add nuw nsw i32 %.01012, 1
  %exitcond14.not = icmp eq i32 %11, 256
  br i1 %exitcond14.not, label %12, label %vector.ph, !llvm.loop !351

12:                                               ; preds = %middle.block
  %13 = tail call i32 @clock() #27
  %14 = sub i32 %13, %3
  %15 = sitofp i32 %14 to double
  %16 = fdiv double %15, 1.000000e+06
  %17 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0P@MNGJOAAK@vpvts?7?5?$CF?42f?5?7?7?$AA@", double noundef %16) #27
  tail call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @vpvpv() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05JFEBJCP@vpvpv?$AA@")
  %2 = tail call i32 @clock() #27
  br label %vector.ph

vector.ph:                                        ; preds = %middle.block, %0
  %.01012 = phi i32 [ 0, %0 ], [ %14, %middle.block ]
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %3 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %index
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %wide.load = load <4 x float>, ptr %3, align 16
  %wide.load15 = load <4 x float>, ptr %4, align 16
  %5 = getelementptr inbounds nuw [4 x i8], ptr @c, i64 %index
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %wide.load16 = load <4 x float>, ptr %5, align 16
  %wide.load17 = load <4 x float>, ptr %6, align 16
  %7 = fadd <4 x float> %wide.load, %wide.load16
  %8 = fadd <4 x float> %wide.load15, %wide.load17
  %9 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %index
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %wide.load18 = load <4 x float>, ptr %9, align 16
  %wide.load19 = load <4 x float>, ptr %10, align 16
  %11 = fadd <4 x float> %wide.load18, %7
  %12 = fadd <4 x float> %wide.load19, %8
  store <4 x float> %11, ptr %9, align 16
  store <4 x float> %12, ptr %10, align 16
  %index.next = add nuw i64 %index, 8
  %13 = icmp eq i64 %index.next, 32000
  br i1 %13, label %middle.block, label %vector.body, !llvm.loop !352

middle.block:                                     ; preds = %vector.body
  %14 = add nuw nsw i32 %.01012, 1
  %exitcond14.not = icmp eq i32 %14, 1024
  br i1 %exitcond14.not, label %15, label %vector.ph, !llvm.loop !353

15:                                               ; preds = %middle.block
  %16 = tail call i32 @clock() #27
  %17 = sub i32 %16, %2
  %18 = sitofp i32 %17 to double
  %19 = fdiv double %18, 1.000000e+06
  %20 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0P@LPDIHHDH@vpvpv?7?5?$CF?42f?5?7?7?$AA@", double noundef %19) #27
  tail call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @vtvtv() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05PLNNBHDD@vtvtv?$AA@")
  %2 = tail call i32 @clock() #27
  br label %vector.ph

vector.ph:                                        ; preds = %middle.block, %0
  %.01113 = phi i32 [ 0, %0 ], [ %14, %middle.block ]
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %3 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %index
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %wide.load = load <4 x float>, ptr %3, align 16
  %wide.load16 = load <4 x float>, ptr %4, align 16
  %5 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %index
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %wide.load17 = load <4 x float>, ptr %5, align 16
  %wide.load18 = load <4 x float>, ptr %6, align 16
  %7 = fmul <4 x float> %wide.load, %wide.load17
  %8 = fmul <4 x float> %wide.load16, %wide.load18
  %9 = getelementptr inbounds nuw [4 x i8], ptr @c, i64 %index
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %wide.load19 = load <4 x float>, ptr %9, align 16
  %wide.load20 = load <4 x float>, ptr %10, align 16
  %11 = fmul <4 x float> %7, %wide.load19
  %12 = fmul <4 x float> %8, %wide.load20
  store <4 x float> %11, ptr %3, align 16
  store <4 x float> %12, ptr %4, align 16
  %index.next = add nuw i64 %index, 8
  %13 = icmp eq i64 %index.next, 32000
  br i1 %13, label %middle.block, label %vector.body, !llvm.loop !354

middle.block:                                     ; preds = %vector.body
  %14 = add nuw nsw i32 %.01113, 1
  %exitcond15.not = icmp eq i32 %14, 1024
  br i1 %exitcond15.not, label %15, label %vector.ph, !llvm.loop !355

15:                                               ; preds = %middle.block
  %16 = tail call i32 @clock() #27
  %17 = sub i32 %16, %2
  %18 = sitofp i32 %17 to double
  %19 = fdiv double %18, 1.000000e+06
  %20 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0P@KFJCMDFD@vtvtv?7?5?$CF?42f?5?7?7?$AA@", double noundef %19) #27
  tail call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @vsumr() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05CMNDDJDG@vsumr?$AA@")
  %2 = tail call i32 @clock() #27
  %3 = tail call i32 @clock() #27
  %4 = sub i32 %3, %2
  %5 = sitofp i32 %4 to double
  %6 = fdiv double %5, 1.000000e+06
  %7 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0P@FMPNKBLC@vsumr?7?5?$CF?42f?5?7?7?$AA@", double noundef %6) #27
  tail call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @vdotr() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05NCEAFNKA@vdotr?$AA@")
  %2 = tail call i32 @clock() #27
  br label %.preheader

.preheader:                                       ; preds = %0, %14
  %.01216 = phi i32 [ 0, %0 ], [ %15, %14 ]
  br label %3

3:                                                ; preds = %3, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %3 ]
  %.114 = phi float [ 0.000000e+00, %.preheader ], [ %13, %3 ]
  %4 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv
  %5 = load float, ptr %4, align 8
  %6 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %indvars.iv
  %7 = load float, ptr %6, align 8
  %8 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %.114)
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %9 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %indvars.iv.next
  %10 = load float, ptr %9, align 4
  %11 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %indvars.iv.next
  %12 = load float, ptr %11, align 4
  %13 = tail call float @llvm.fmuladd.f32(float %10, float %12, float %8)
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 32000
  br i1 %exitcond.not.1, label %14, label %3, !llvm.loop !356

14:                                               ; preds = %3
  %15 = add nuw nsw i32 %.01216, 1
  %exitcond18.not = icmp eq i32 %15, 2560
  br i1 %exitcond18.not, label %16, label %.preheader, !llvm.loop !357

16:                                               ; preds = %14
  %17 = tail call i32 @clock() #27
  %18 = sub i32 %17, %2
  %19 = sitofp i32 %18 to double
  %20 = fdiv double %19, 1.000000e+06
  %21 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0P@EAGLCAIP@vdotr?7?5?$CF?42f?5?7?7?$AA@", double noundef %20) #27
  store float %13, ptr @temp, align 4
  tail call void @check(i32 noundef -1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @vbor() local_unnamed_addr #11 {
  %1 = tail call i32 @init(ptr noundef nonnull @"??_C@_05NBAAOLGE@vbor?5?$AA@")
  %2 = tail call i32 @clock() #27
  br label %vector.ph

vector.ph:                                        ; preds = %middle.block, %0
  %.08284 = phi i32 [ 0, %0 ], [ %44, %middle.block ]
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %3 = getelementptr inbounds nuw [4 x i8], ptr @a, i64 %index
  %wide.load = load <4 x float>, ptr %3, align 16
  %4 = getelementptr inbounds nuw [4 x i8], ptr @b, i64 %index
  %wide.load92 = load <4 x float>, ptr %4, align 16
  %5 = getelementptr inbounds nuw [4 x i8], ptr @c, i64 %index
  %wide.load93 = load <4 x float>, ptr %5, align 16
  %6 = getelementptr inbounds nuw [4 x i8], ptr @d, i64 %index
  %wide.load94 = load <4 x float>, ptr %6, align 16
  %7 = getelementptr inbounds nuw [4 x i8], ptr @e, i64 %index
  %wide.load95 = load <4 x float>, ptr %7, align 16
  %8 = getelementptr inbounds nuw [4 x i8], ptr @aa, i64 %index
  %wide.load96 = load <4 x float>, ptr %8, align 16
  %9 = fmul <4 x float> %wide.load, %wide.load92
  %10 = fmul <4 x float> %9, %wide.load94
  %11 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %9, <4 x float> %wide.load93, <4 x float> %10)
  %12 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %9, <4 x float> %wide.load95, <4 x float> %11)
  %13 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %9, <4 x float> %wide.load96, <4 x float> %12)
  %14 = fmul <4 x float> %wide.load, %wide.load93
  %15 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %14, <4 x float> %wide.load94, <4 x float> %13)
  %16 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %14, <4 x float> %wide.load95, <4 x float> %15)
  %17 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %14, <4 x float> %wide.load96, <4 x float> %16)
  %18 = fmul <4 x float> %wide.load, %wide.load94
  %19 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %18, <4 x float> %wide.load95, <4 x float> %17)
  %20 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %18, <4 x float> %wide.load96, <4 x float> %19)
  %21 = fmul <4 x float> %wide.load, %wide.load95
  %22 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %21, <4 x float> %wide.load96, <4 x float> %20)
  %23 = fmul <4 x float> %wide.load92, %wide.load93
  %24 = fmul <4 x float> %23, %wide.load95
  %25 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %23, <4 x float> %wide.load94, <4 x float> %24)
  %26 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %23, <4 x float> %wide.load96, <4 x float> %25)
  %27 = fmul <4 x float> %wide.load92, %wide.load94
  %28 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %27, <4 x float> %wide.load95, <4 x float> %26)
  %29 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %27, <4 x float> %wide.load96, <4 x float> %28)
  %30 = fmul <4 x float> %wide.load92, %wide.load95
  %31 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %30, <4 x float> %wide.load96, <4 x float> %29)
  %32 = fmul <4 x float> %wide.load93, %wide.load94
  %33 = fmul <4 x float> %32, %wide.load96
  %34 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %32, <4 x float> %wide.load95, <4 x float> %33)
  %35 = fmul <4 x float> %wide.load93, %wide.load95
  %36 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %35, <4 x float> %wide.load96, <4 x float> %34)
  %37 = fmul <4 x float> %wide.load94, %wide.load95
  %38 = fmul <4 x float> %37, %wide.load96
  %39 = fmul <4 x float> %31, %22
  %40 = fmul <4 x float> %36, %39
  %41 = fmul <4 x float> %38, %40
  %42 = getelementptr inbounds nuw [4 x i8], ptr @x, i64 %index
  store <4 x float> %41, ptr %42, align 16
  %index.next = add nuw i64 %index, 4
  %43 = icmp eq i64 %index.next, 256
  br i1 %43, label %middle.block, label %vector.body, !llvm.loop !358

middle.block:                                     ; preds = %vector.body
  %44 = add nuw nsw i32 %.08284, 1
  %exitcond87.not = icmp eq i32 %44, 2560
  br i1 %exitcond87.not, label %45, label %vector.ph, !llvm.loop !359

45:                                               ; preds = %middle.block
  %46 = tail call i32 @clock() #27
  %47 = sub i32 %46, %2
  %48 = sitofp i32 %47 to double
  %49 = fdiv double %48, 1.000000e+06
  %50 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @"??_C@_0O@NPNPIFLM@vbor?7?5?$CF?42f?5?7?7?$AA@", double noundef %49) #27
  br label %51

51:                                               ; preds = %51, %45
  %indvars.iv88 = phi i64 [ 0, %45 ], [ %indvars.iv.next89.4, %51 ]
  %52 = phi float [ 0.000000e+00, %45 ], [ %71, %51 ]
  %53 = getelementptr inbounds nuw [4 x i8], ptr @x, i64 %indvars.iv88
  %54 = load float, ptr %53, align 4
  %55 = fadd float %54, %52
  %56 = getelementptr inbounds nuw [4 x i8], ptr @x, i64 %indvars.iv88
  %57 = getelementptr inbounds nuw i8, ptr %56, i64 4
  %58 = load float, ptr %57, align 4
  %59 = fadd float %58, %55
  %60 = getelementptr inbounds nuw [4 x i8], ptr @x, i64 %indvars.iv88
  %61 = getelementptr inbounds nuw i8, ptr %60, i64 8
  %62 = load float, ptr %61, align 4
  %63 = fadd float %62, %59
  %64 = getelementptr inbounds nuw [4 x i8], ptr @x, i64 %indvars.iv88
  %65 = getelementptr inbounds nuw i8, ptr %64, i64 12
  %66 = load float, ptr %65, align 4
  %67 = fadd float %66, %63
  %68 = getelementptr inbounds nuw [4 x i8], ptr @x, i64 %indvars.iv88
  %69 = getelementptr inbounds nuw i8, ptr %68, i64 16
  %70 = load float, ptr %69, align 4
  %71 = fadd float %70, %67
  %indvars.iv.next89.4 = add nuw nsw i64 %indvars.iv88, 5
  %exitcond91.not.4 = icmp eq i64 %indvars.iv.next89.4, 32000
  br i1 %exitcond91.not.4, label %72, label %51, !llvm.loop !360

72:                                               ; preds = %51
  store float %71, ptr @temp, align 4
  tail call void @check(i32 noundef -1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @set(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #11 {
  %4 = tail call fastcc ptr @tsvc_memalign()
  store ptr %4, ptr @xx, align 8
  %putchar = tail call i32 @putchar(i32 10)
  br label %5

5:                                                ; preds = %3, %5
  %indvars.iv = phi i64 [ 0, %3 ], [ %indvars.iv.next, %5 ]
  %6 = add nuw nsw i64 %indvars.iv, 4
  %7 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %8 = trunc nuw nsw i64 %6 to i32
  store i32 %8, ptr %7, align 4
  %9 = add nuw nsw i64 %indvars.iv, 2
  %10 = add nuw nsw i64 %indvars.iv, 1
  %11 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %10
  %12 = trunc nuw nsw i64 %9 to i32
  store i32 %12, ptr %11, align 4
  %13 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %9
  %14 = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %14, ptr %13, align 4
  %15 = add nuw nsw i64 %indvars.iv, 3
  %16 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %15
  %17 = trunc nuw nsw i64 %15 to i32
  store i32 %17, ptr %16, align 4
  %18 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %6
  %19 = trunc nuw nsw i64 %10 to i32
  store i32 %19, ptr %18, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 5
  %20 = icmp samesign ult i64 %indvars.iv, 31995
  br i1 %20, label %5, label %vector.ph, !llvm.loop !361

vector.ph:                                        ; preds = %5
  %21 = tail call i32 @set1d(ptr noundef nonnull @a, float noundef 1.000000e+00, i32 noundef 1)
  %22 = tail call i32 @set1d(ptr noundef nonnull @b, float noundef 1.000000e+00, i32 noundef 1)
  %23 = tail call i32 @set1d(ptr noundef nonnull @c, float noundef 1.000000e+00, i32 noundef 1)
  %24 = tail call i32 @set1d(ptr noundef nonnull @d, float noundef 1.000000e+00, i32 noundef 1)
  %25 = tail call i32 @set1d(ptr noundef nonnull @e, float noundef 1.000000e+00, i32 noundef 1)
  %26 = tail call i32 @set2d(ptr noundef nonnull @aa, float noundef 0.000000e+00, i32 noundef -1)
  %27 = tail call i32 @set2d(ptr noundef nonnull @bb, float noundef 0.000000e+00, i32 noundef -1)
  %28 = tail call i32 @set2d(ptr noundef nonnull @cc, float noundef 0.000000e+00, i32 noundef -1)
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph ], [ %vec.ind.next, %vector.body ]
  %29 = trunc <4 x i64> %vec.ind to <4 x i32>
  %30 = add <4 x i32> %29, splat (i32 1)
  %31 = trunc <4 x i64> %vec.ind to <4 x i32>
  %32 = add <4 x i32> %31, splat (i32 1)
  %33 = and <4 x i32> %30, splat (i32 3)
  %34 = and <4 x i32> %32, splat (i32 3)
  %35 = add nuw nsw <4 x i32> %33, splat (i32 1)
  %36 = add nuw nsw <4 x i32> %34, splat (i32 1)
  %37 = getelementptr inbounds nuw [4 x i8], ptr @indx, i64 %index
  %38 = getelementptr inbounds nuw i8, ptr %37, i64 16
  store <4 x i32> %35, ptr %37, align 16
  store <4 x i32> %36, ptr %38, align 16
  %index.next = add nuw i64 %index, 8
  %vec.ind.next = add nuw <4 x i64> %vec.ind, splat (i64 8)
  %39 = icmp eq i64 %index.next, 32000
  br i1 %39, label %middle.block, label %vector.body, !llvm.loop !362

middle.block:                                     ; preds = %vector.body
  store float 1.000000e+00, ptr %1, align 4
  store float 2.000000e+00, ptr %2, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc noalias ptr @tsvc_memalign() unnamed_addr #11 {
  %1 = tail call noalias ptr @_aligned_malloc(i64 noundef 128000, i64 noundef 16) #27
  ret ptr %1
}

declare dso_local noalias ptr @_aligned_malloc(i64 noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @tsvc_original_main() local_unnamed_addr #11 {
  %1 = alloca float, align 4
  %2 = alloca float, align 4
  %3 = tail call fastcc ptr @tsvc_memalign()
  call void @set(ptr noundef %3, ptr noundef nonnull %1, ptr noundef nonnull %2)
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  %4 = tail call i32 @s000()
  %5 = tail call i32 @s111()
  %6 = tail call i32 @s1111()
  %7 = tail call i32 @s112()
  %8 = tail call i32 @s1112()
  %9 = tail call i32 @s113()
  %10 = tail call i32 @s1113()
  %11 = tail call i32 @s114()
  %12 = tail call i32 @s115()
  %13 = tail call i32 @s1115()
  %14 = tail call i32 @s116()
  %15 = tail call i32 @s118()
  %16 = tail call i32 @s119()
  %17 = tail call i32 @s1119()
  %18 = tail call i32 @s121()
  %19 = tail call i32 @s122(i32 noundef 1, i32 noundef 1)
  %20 = tail call i32 @s123()
  %21 = tail call i32 @s124()
  %22 = tail call i32 @s125()
  %23 = tail call i32 @s126()
  %24 = tail call i32 @s127()
  %25 = tail call i32 @s128()
  %26 = tail call i32 @s131()
  %27 = tail call i32 @s132()
  %28 = tail call i32 @s141()
  %29 = tail call i32 @s151()
  %30 = tail call i32 @s152()
  %31 = tail call i32 @s161()
  %32 = tail call i32 @s1161()
  %33 = tail call i32 @s162(i32 noundef 1)
  %34 = tail call i32 @s171(i32 noundef 1)
  %35 = tail call i32 @s172(i32 noundef 1, i32 noundef 1)
  %36 = tail call i32 @s173()
  %37 = tail call i32 @s174(i32 noundef 16000)
  %38 = tail call i32 @s175(i32 noundef 1)
  %39 = tail call i32 @s176()
  %40 = tail call i32 @s211()
  %41 = tail call i32 @s212()
  %42 = tail call i32 @s1213()
  %43 = tail call i32 @s221()
  %44 = tail call i32 @s1221()
  %45 = tail call i32 @s222()
  %46 = tail call i32 @s231()
  %47 = tail call i32 @s232()
  %48 = tail call i32 @s1232()
  %49 = tail call i32 @s233()
  %50 = tail call i32 @s2233()
  %51 = tail call i32 @s235()
  %52 = tail call i32 @s241()
  %53 = load float, ptr %2, align 4
  %54 = load float, ptr %1, align 4
  %55 = tail call i32 @s242(float noundef %54, float noundef %53)
  %56 = tail call i32 @s243()
  %57 = tail call i32 @s244()
  %58 = tail call i32 @s1244()
  %59 = tail call i32 @s2244()
  %60 = tail call i32 @s251()
  %61 = tail call i32 @s1251()
  %62 = tail call i32 @s2251()
  %63 = tail call i32 @s3251()
  %64 = tail call i32 @s252()
  %65 = tail call i32 @s253()
  %66 = tail call i32 @s254()
  %67 = tail call i32 @s255()
  %68 = tail call i32 @s256()
  %69 = tail call i32 @s257()
  %70 = tail call i32 @s258()
  %71 = tail call i32 @s261()
  %72 = tail call i32 @s271()
  %73 = tail call i32 @s272(float noundef %54)
  %74 = tail call i32 @s273()
  %75 = tail call i32 @s274()
  %76 = tail call i32 @s275()
  %77 = tail call i32 @s2275()
  %78 = tail call i32 @s276()
  %79 = tail call i32 @s277()
  %80 = tail call i32 @s278()
  %81 = tail call i32 @s279()
  %82 = tail call i32 @s1279()
  %83 = tail call i32 @s2710(float noundef %54)
  %84 = tail call i32 @s2711()
  %85 = tail call i32 @s2712()
  %86 = tail call i32 @s281()
  %87 = tail call i32 @s1281()
  %88 = tail call i32 @s291()
  %89 = tail call i32 @s292()
  %90 = tail call i32 @s293()
  %91 = tail call i32 @s2101()
  %92 = tail call i32 @s2102()
  %93 = tail call i32 @s2111()
  %94 = tail call i32 @s311()
  %95 = tail call i32 @s31111()
  %96 = tail call i32 @s312()
  %97 = tail call i32 @s313()
  %98 = tail call i32 @s314()
  %99 = tail call i32 @s315()
  %100 = tail call i32 @s316()
  %101 = tail call i32 @s317()
  %102 = tail call i32 @s318(i32 noundef 1)
  %103 = tail call i32 @s319()
  %104 = tail call i32 @s3110()
  %105 = tail call i32 @s13110()
  %106 = tail call i32 @s3111()
  %107 = tail call i32 @s3112()
  %108 = tail call i32 @s3113()
  %109 = tail call i32 @s321()
  %110 = tail call i32 @s322()
  %111 = tail call i32 @s323()
  %112 = tail call i32 @s331()
  %113 = tail call i32 @s332(float noundef %54)
  %114 = tail call i32 @s341()
  %115 = tail call i32 @s342()
  %116 = tail call i32 @s343()
  %117 = tail call i32 @s351()
  %118 = tail call i32 @s1351()
  %119 = tail call i32 @s352()
  %120 = tail call i32 @s353(ptr noundef %3)
  %121 = tail call i32 @s421()
  %122 = tail call i32 @s1421()
  %123 = tail call i32 @s422()
  %124 = tail call i32 @s423()
  %125 = tail call i32 @s424()
  %126 = tail call i32 @s431()
  %127 = tail call i32 @s441()
  %128 = tail call i32 @s442()
  %129 = tail call i32 @s443()
  %130 = tail call i32 @s451()
  %131 = tail call i32 @s452()
  %132 = tail call i32 @s453()
  %133 = tail call i32 @s471()
  %134 = tail call i32 @s481()
  %135 = tail call i32 @s482()
  %136 = tail call i32 @s491(ptr noundef %3)
  %137 = tail call i32 @s4112(ptr noundef %3, float noundef %54)
  %138 = tail call i32 @s4113(ptr noundef %3)
  %139 = tail call i32 @s4114(ptr noundef %3, i32 noundef 1)
  %140 = tail call i32 @s4115(ptr noundef %3)
  %141 = tail call i32 @s4116(ptr noundef %3, i32 noundef 128, i32 noundef 1)
  %142 = tail call i32 @s4117()
  %143 = tail call i32 @s4121()
  %144 = tail call i32 @va()
  %145 = tail call i32 @vag(ptr noundef %3)
  %146 = tail call i32 @vas(ptr noundef %3)
  %147 = tail call i32 @vif()
  %148 = tail call i32 @vpv()
  %149 = tail call i32 @vtv()
  %150 = tail call i32 @vpvtv()
  %151 = tail call i32 @vpvts(float noundef %54)
  %152 = tail call i32 @vpvpv()
  %153 = tail call i32 @vtvtv()
  %154 = tail call i32 @vsumr()
  %155 = tail call i32 @vdotr()
  %156 = tail call i32 @vbor()
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #24

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.experimental.cttz.elts.i64.v4i1(<4 x i1>, i1 immarg) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.fmuladd.v16f32(<16 x float>, <16 x float>, <16 x float>) #24

attributes #0 = { mustprogress noinline norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="alderlake" "target-features"="+adx,+aes,+avx,+avx2,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+pconfig,+pku,+popcnt,+prfchw,+ptwrite,+rdpid,+rdrnd,+rdseed,+sahf,+serialize,+sgx,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+waitpkg,+widekl,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="alderlake" "target-features"="+adx,+aes,+avx,+avx2,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+pconfig,+pku,+popcnt,+prfchw,+ptwrite,+rdpid,+rdrnd,+rdseed,+sahf,+serialize,+sgx,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+waitpkg,+widekl,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #2 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="alderlake" "target-features"="+adx,+aes,+avx,+avx2,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+pconfig,+pku,+popcnt,+prfchw,+ptwrite,+rdpid,+rdrnd,+rdseed,+sahf,+serialize,+sgx,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+waitpkg,+widekl,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="alderlake" "target-features"="+adx,+aes,+avx,+avx2,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+pconfig,+pku,+popcnt,+prfchw,+ptwrite,+rdpid,+rdrnd,+rdseed,+sahf,+serialize,+sgx,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+waitpkg,+widekl,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="alderlake" "target-features"="+adx,+aes,+avx,+avx2,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+pconfig,+pku,+popcnt,+prfchw,+ptwrite,+rdpid,+rdrnd,+rdseed,+sahf,+serialize,+sgx,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+waitpkg,+widekl,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "target-cpu"="alderlake" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="alderlake" "target-features"="+adx,+aes,+avx,+avx2,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+pconfig,+pku,+popcnt,+prfchw,+ptwrite,+rdpid,+rdrnd,+rdseed,+sahf,+serialize,+sgx,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+waitpkg,+widekl,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn "target-cpu"="alderlake" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="alderlake" "target-features"="+adx,+aes,+avx,+avx2,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+pconfig,+pku,+popcnt,+prfchw,+ptwrite,+rdpid,+rdrnd,+rdseed,+sahf,+serialize,+sgx,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+waitpkg,+widekl,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { nofree noinline norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline norecurse nosync nounwind memory(write, argmem: read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) "target-cpu"="alderlake" }
attributes #17 = { nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) "target-cpu"="alderlake" }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree nounwind }
attributes #24 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { nounwind }
attributes #28 = { noreturn nounwind }

!llvm.dbg.cu = !{!0, !2, !4}
!llvm.linker.options = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}
!llvm.module.flags = !{!17, !18, !19, !20}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "clang version 24.0.0git (https://github.com/llvm/llvm-project.git 6f4196219399a3502cea3beb2d0c8c28b2241649)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "C:\\work\\llvm-profitability-research\\benchmarks\\tsvc_s233.cpp", directory: "C:\\work\\llvm-profitability-research")
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 24.0.0git (https://github.com/llvm/llvm-project.git 6f4196219399a3502cea3beb2d0c8c28b2241649)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "C:\\work\\llvm-profitability-research\\.work\\r1_2\\tsvc_measure.c", directory: "C:\\work\\llvm-profitability-research")
!4 = distinct !DICompileUnit(language: DW_LANG_C11, file: !5, producer: "clang version 24.0.0git (https://github.com/llvm/llvm-project.git 6f4196219399a3502cea3beb2d0c8c28b2241649)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!5 = !DIFile(filename: "C:\\work\\llvm-profitability-research\\.tools\\corpus\\TSVC\\TSVC\\dummy.c", directory: "C:\\work\\llvm-profitability-research")
!6 = !{!"/FAILIFMISMATCH:\22_CRT_STDIO_ISO_WIDE_SPECIFIERS=0\22"}
!7 = !{!"/FAILIFMISMATCH:\22_MSC_VER=1900\22"}
!8 = !{!"/FAILIFMISMATCH:\22_ITERATOR_DEBUG_LEVEL=0\22"}
!9 = !{!"/FAILIFMISMATCH:\22RuntimeLibrary=MT_StaticRelease\22"}
!10 = !{!"/DEFAULTLIB:libcpmt.lib"}
!11 = !{!"/alternatename:_Avx2WmemEnabled=_Avx2WmemEnabledWeakValue"}
!12 = !{!"/FAILIFMISMATCH:\22annotate_string=0\22"}
!13 = !{!"/FAILIFMISMATCH:\22annotate_vector=0\22"}
!14 = !{!"/FAILIFMISMATCH:\22annotate_optional=0\22"}
!15 = !{!"/DEFAULTLIB:uuid.lib"}
!16 = !{!"clang version 24.0.0git (https://github.com/llvm/llvm-project.git 6f4196219399a3502cea3beb2d0c8c28b2241649)"}
!17 = !{i32 2, !"Debug Info Version", i32 3}
!18 = !{i32 8, !"PIC Level", i32 2}
!19 = !{i32 7, !"uwtable", i32 2}
!20 = !{i32 1, !"MaxTLSAlign", i32 65536}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
!23 = distinct !{!23, !22}
!24 = distinct !{!24, !22}
!25 = distinct !{!25, !22, !26, !27, !28}
!26 = !{!"llvm.loop.isvectorized", i32 1}
!27 = !{!"llvm.loop.vectorize.body", i32 1}
!28 = !{!"llvm.loop.unroll.runtime.disable"}
!29 = distinct !{!29, !22, !26, !27, !28}
!30 = distinct !{!30, !22}
!31 = distinct !{!31, !22, !26, !27, !28}
!32 = distinct !{!32, !22, !26, !27, !28}
!33 = distinct !{!33, !22}
!34 = distinct !{!34, !22}
!35 = distinct !{!35, !22}
!36 = distinct !{!36, !22}
!37 = distinct !{!37, !22}
!38 = distinct !{!38, !22}
!39 = distinct !{!39, !22}
!40 = distinct !{!40, !22}
!41 = distinct !{!41, !22}
!42 = distinct !{!42, !22}
!43 = distinct !{!43, !22, !26, !27, !28}
!44 = distinct !{!44, !22, !26, !27, !28}
!45 = distinct !{!45, !22}
!46 = distinct !{!46, !22}
!47 = distinct !{!47, !22}
!48 = distinct !{!48, !22, !26, !27, !28}
!49 = distinct !{!49, !22}
!50 = distinct !{!50, !22}
!51 = distinct !{!51, !22, !26, !27, !28}
!52 = distinct !{!52, !22}
!53 = distinct !{!53, !22}
!54 = distinct !{!54, !22}
!55 = distinct !{!55, !22}
!56 = distinct !{!56, !22}
!57 = distinct !{!57, !22}
!58 = distinct !{!58, !22}
!59 = distinct !{!59, !22}
!60 = distinct !{!60, !22, !26, !27, !28}
!61 = distinct !{!61, !22, !28, !26, !62}
!62 = !{!"llvm.loop.vectorize.epilogue", i32 1}
!63 = distinct !{!63, !22}
!64 = distinct !{!64, !22, !26, !27, !28}
!65 = distinct !{!65, !22}
!66 = distinct !{!66, !22}
!67 = distinct !{!67, !22}
!68 = distinct !{!68, !22}
!69 = distinct !{!69, !22}
!70 = distinct !{!70, !22}
!71 = distinct !{!71, !22}
!72 = distinct !{!72, !22}
!73 = distinct !{!73, !22, !26, !27, !28}
!74 = distinct !{!74, !22}
!75 = distinct !{!75, !22}
!76 = distinct !{!76, !22}
!77 = distinct !{!77, !22}
!78 = distinct !{!78, !22}
!79 = distinct !{!79, !22}
!80 = distinct !{!80, !22}
!81 = distinct !{!81, !22, !26, !27, !28}
!82 = distinct !{!82, !22}
!83 = distinct !{!83, !22, !26, !27, !28}
!84 = distinct !{!84, !22, !26, !62}
!85 = distinct !{!85, !22}
!86 = distinct !{!86, !22}
!87 = distinct !{!87, !22}
!88 = distinct !{!88, !22}
!89 = distinct !{!89, !22, !26, !27, !28}
!90 = distinct !{!90, !22}
!91 = distinct !{!91, !22, !26, !27, !28}
!92 = distinct !{!92, !22}
!93 = distinct !{!93, !22}
!94 = distinct !{!94, !22, !26, !27, !28}
!95 = distinct !{!95, !22}
!96 = distinct !{!96, !22}
!97 = distinct !{!97, !22}
!98 = distinct !{!98, !22}
!99 = distinct !{!99, !22, !26, !62}
!100 = distinct !{!100, !22}
!101 = distinct !{!101, !22}
!102 = distinct !{!102, !22}
!103 = distinct !{!103, !22}
!104 = distinct !{!104, !22}
!105 = distinct !{!105, !22}
!106 = distinct !{!106, !22}
!107 = distinct !{!107, !22, !26, !27, !28}
!108 = distinct !{!108, !22, !26, !62}
!109 = distinct !{!109, !22}
!110 = distinct !{!110, !22, !26, !27, !28}
!111 = distinct !{!111, !22, !26, !62}
!112 = distinct !{!112, !22}
!113 = distinct !{!113, !22}
!114 = distinct !{!114, !22}
!115 = distinct !{!115, !22, !26, !27, !28}
!116 = distinct !{!116, !22}
!117 = distinct !{!117, !22, !26, !27, !28}
!118 = distinct !{!118, !22, !26, !62}
!119 = distinct !{!119, !22}
!120 = distinct !{!120, !22}
!121 = distinct !{!121, !22}
!122 = distinct !{!122, !22}
!123 = distinct !{!123, !22}
!124 = distinct !{!124, !22}
!125 = distinct !{!125, !22}
!126 = distinct !{!126, !22}
!127 = distinct !{!127, !22}
!128 = distinct !{!128, !22}
!129 = distinct !{!129, !22}
!130 = distinct !{!130, !22}
!131 = distinct !{!131, !22}
!132 = distinct !{!132, !22}
!133 = distinct !{!133, !22}
!134 = distinct !{!134, !22}
!135 = distinct !{!135, !22}
!136 = distinct !{!136, !22}
!137 = distinct !{!137, !138}
!138 = !{!"llvm.loop.unroll.disable"}
!139 = distinct !{!139, !22}
!140 = distinct !{!140, !22}
!141 = distinct !{!141, !22}
!142 = distinct !{!142, !22}
!143 = distinct !{!143, !22}
!144 = distinct !{!144, !22}
!145 = distinct !{!145, !22}
!146 = distinct !{!146, !22}
!147 = distinct !{!147, !22}
!148 = distinct !{!148, !22}
!149 = distinct !{!149, !22}
!150 = distinct !{!150, !22}
!151 = distinct !{!151, !22}
!152 = distinct !{!152, !22}
!153 = distinct !{!153, !22}
!154 = distinct !{!154, !22}
!155 = distinct !{!155, !22}
!156 = distinct !{!156, !22}
!157 = distinct !{!157, !22, !26, !27, !28}
!158 = distinct !{!158, !22}
!159 = distinct !{!159, !22}
!160 = distinct !{!160, !22}
!161 = distinct !{!161, !22}
!162 = distinct !{!162, !22}
!163 = distinct !{!163, !22, !26, !27, !28}
!164 = distinct !{!164, !22}
!165 = distinct !{!165, !22, !26, !27, !28}
!166 = distinct !{!166, !22}
!167 = distinct !{!167, !22, !26, !27, !28}
!168 = distinct !{!168, !22}
!169 = distinct !{!169, !22}
!170 = distinct !{!170, !22}
!171 = distinct !{!171, !22, !26, !27, !28}
!172 = distinct !{!172, !22}
!173 = distinct !{!173, !22, !26, !27, !28}
!174 = distinct !{!174, !22}
!175 = distinct !{!175, !22}
!176 = distinct !{!176, !22}
!177 = distinct !{!177, !22, !26, !27, !28}
!178 = distinct !{!178, !22}
!179 = distinct !{!179, !22, !26, !27, !28}
!180 = distinct !{!180, !22}
!181 = distinct !{!181, !22}
!182 = distinct !{!182, !22}
!183 = distinct !{!183, !22}
!184 = distinct !{!184, !22}
!185 = distinct !{!185, !22}
!186 = distinct !{!186, !22}
!187 = distinct !{!187, !22}
!188 = distinct !{!188, !22}
!189 = distinct !{!189, !22, !26, !27, !28}
!190 = distinct !{!190, !22}
!191 = distinct !{!191, !22}
!192 = distinct !{!192, !22}
!193 = distinct !{!193, !22, !26, !27, !28}
!194 = distinct !{!194, !22}
!195 = distinct !{!195, !22}
!196 = distinct !{!196, !22}
!197 = distinct !{!197, !22}
!198 = distinct !{!198, !22}
!199 = distinct !{!199, !22}
!200 = distinct !{!200, !22}
!201 = distinct !{!201, !22}
!202 = distinct !{!202, !22}
!203 = distinct !{!203, !22}
!204 = distinct !{!204, !22}
!205 = distinct !{!205, !22}
!206 = distinct !{!206, !22}
!207 = distinct !{!207, !22}
!208 = distinct !{!208, !22}
!209 = distinct !{!209, !22, !26, !27, !28}
!210 = distinct !{!210, !22}
!211 = distinct !{!211, !22}
!212 = distinct !{!212, !22}
!213 = distinct !{!213, !22, !26, !27, !28}
!214 = distinct !{!214, !22}
!215 = distinct !{!215, !22, !26, !27, !28}
!216 = distinct !{!216, !22}
!217 = distinct !{!217, !22}
!218 = distinct !{!218, !22}
!219 = distinct !{!219, !22, !26, !27, !28}
!220 = distinct !{!220, !22}
!221 = distinct !{!221, !22, !26, !27, !28}
!222 = distinct !{!222, !22}
!223 = distinct !{!223, !22}
!224 = distinct !{!224, !22}
!225 = distinct !{!225, !22, !26, !27, !28}
!226 = distinct !{!226, !22}
!227 = distinct !{!227, !22}
!228 = distinct !{!228, !22}
!229 = distinct !{!229, !22}
!230 = distinct !{!230, !22}
!231 = distinct !{!231, !22}
!232 = distinct !{!232, !22}
!233 = distinct !{!233, !22}
!234 = distinct !{!234, !22}
!235 = distinct !{!235, !22}
!236 = distinct !{!236, !22}
!237 = distinct !{!237, !22}
!238 = distinct !{!238, !22}
!239 = distinct !{!239, !22}
!240 = distinct !{!240, !22}
!241 = distinct !{!241, !22}
!242 = distinct !{!242, !22}
!243 = distinct !{!243, !22, !26, !27, !28}
!244 = distinct !{!244, !22}
!245 = distinct !{!245, !22}
!246 = distinct !{!246, !22}
!247 = distinct !{!247, !22}
!248 = distinct !{!248, !22}
!249 = distinct !{!249, !22}
!250 = distinct !{!250, !22}
!251 = distinct !{!251, !22}
!252 = distinct !{!252, !22}
!253 = distinct !{!253, !22}
!254 = distinct !{!254, !22}
!255 = distinct !{!255, !22}
!256 = distinct !{!256, !22}
!257 = distinct !{!257, !22}
!258 = distinct !{!258, !22}
!259 = distinct !{!259, !22}
!260 = distinct !{!260, !22}
!261 = distinct !{!261, !22}
!262 = distinct !{!262, !22}
!263 = distinct !{!263, !22}
!264 = distinct !{!264, !22}
!265 = distinct !{!265, !22}
!266 = distinct !{!266, !22}
!267 = distinct !{!267, !22}
!268 = distinct !{!268, !22}
!269 = distinct !{!269, !22}
!270 = distinct !{!270, !22, !26, !27, !28}
!271 = distinct !{!271, !22}
!272 = distinct !{!272, !22, !26, !27, !28}
!273 = distinct !{!273, !22}
!274 = distinct !{!274, !22}
!275 = distinct !{!275, !22}
!276 = distinct !{!276, !22}
!277 = distinct !{!277, !22}
!278 = distinct !{!278, !22}
!279 = distinct !{!279, !22}
!280 = distinct !{!280, !22, !26, !27, !28}
!281 = distinct !{!281, !22}
!282 = distinct !{!282, !22, !26, !27, !28}
!283 = distinct !{!283, !22}
!284 = distinct !{!284, !22}
!285 = distinct !{!285, !22}
!286 = distinct !{!286, !22}
!287 = distinct !{!287, !22}
!288 = distinct !{!288, !22}
!289 = distinct !{!289, !22}
!290 = distinct !{!290, !22, !26, !27, !28}
!291 = distinct !{!291, !22}
!292 = distinct !{!292, !22}
!293 = distinct !{!293, !22}
!294 = distinct !{!294, !22}
!295 = distinct !{!295, !22}
!296 = distinct !{!296, !22, !26, !62}
!297 = distinct !{!297, !22}
!298 = distinct !{!298, !22}
!299 = distinct !{!299, !22}
!300 = distinct !{!300, !22}
!301 = distinct !{!301, !22, !26, !27, !28}
!302 = distinct !{!302, !22}
!303 = distinct !{!303, !22}
!304 = distinct !{!304, !22}
!305 = distinct !{!305, !22}
!306 = distinct !{!306, !22}
!307 = distinct !{!307, !22, !26, !27, !28}
!308 = distinct !{!308, !22}
!309 = distinct !{!309, !22}
!310 = distinct !{!310, !22}
!311 = distinct !{!311, !22, !26, !27, !28}
!312 = distinct !{!312, !22}
!313 = distinct !{!313, !22}
!314 = distinct !{!314, !22}
!315 = distinct !{!315, !22}
!316 = distinct !{!316, !22}
!317 = distinct !{!317, !22}
!318 = distinct !{!318, !22}
!319 = distinct !{!319, !22}
!320 = distinct !{!320, !22}
!321 = distinct !{!321, !22}
!322 = distinct !{!322, !22}
!323 = distinct !{!323, !22}
!324 = distinct !{!324, !22}
!325 = distinct !{!325, !22}
!326 = distinct !{!326, !22}
!327 = distinct !{!327, !22}
!328 = distinct !{!328, !22}
!329 = distinct !{!329, !22}
!330 = distinct !{!330, !22}
!331 = distinct !{!331, !22}
!332 = distinct !{!332, !22}
!333 = distinct !{!333, !22, !26, !27, !28}
!334 = distinct !{!334, !22}
!335 = distinct !{!335, !22}
!336 = distinct !{!336, !22}
!337 = distinct !{!337, !22}
!338 = distinct !{!338, !22}
!339 = distinct !{!339, !22}
!340 = distinct !{!340, !22}
!341 = distinct !{!341, !22}
!342 = distinct !{!342, !22, !26, !27, !28}
!343 = distinct !{!343, !22}
!344 = distinct !{!344, !22, !26, !27, !28}
!345 = distinct !{!345, !22}
!346 = distinct !{!346, !22, !26, !27, !28}
!347 = distinct !{!347, !22}
!348 = distinct !{!348, !22, !26, !27, !28}
!349 = distinct !{!349, !22}
!350 = distinct !{!350, !22, !26, !27, !28}
!351 = distinct !{!351, !22}
!352 = distinct !{!352, !22, !26, !27, !28}
!353 = distinct !{!353, !22}
!354 = distinct !{!354, !22, !26, !27, !28}
!355 = distinct !{!355, !22}
!356 = distinct !{!356, !22}
!357 = distinct !{!357, !22}
!358 = distinct !{!358, !22, !26, !27, !28}
!359 = distinct !{!359, !22}
!360 = distinct !{!360, !22}
!361 = distinct !{!361, !22}
!362 = distinct !{!362, !22, !26, !27, !28}
