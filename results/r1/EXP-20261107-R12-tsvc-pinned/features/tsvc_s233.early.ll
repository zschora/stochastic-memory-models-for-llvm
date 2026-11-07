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

$"??_C@_0L@JOFKNBBO@VERIFY?5OK?6?$AA@" = comdat any

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

$"??_C@_01EEMJAFIK@?6?$AA@" = comdat any

$"??_C@_0BO@IODOONNG@Loop?5?7?5Time?$CISec?$CJ?5?7?5Checksum?5?6?$AA@" = comdat any

@_Avx2WmemEnabledWeakValue = weak_odr dso_local global i32 0, comdat, align 4
@"??_C@_01FHEEJDEE@A?$AA@" = linkonce_odr dso_local unnamed_addr constant [2 x i8] c"A\00", comdat, align 4
@g_fn = internal global ptr @s233, align 8
@"??_C@_0P@MAICADEK@CHECK?5?$CF016llx?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"CHECK %016llx\0A\00", comdat, align 8
@"??_C@_0L@JOFKNBBO@VERIFY?5OK?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [11 x i8] c"VERIFY OK\0A\00", comdat, align 8
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
@temp = dso_local global float 0.000000e+00, align 4
@"??_C@_05CDGOKACG@s000?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"s000 \00", comdat, align 4
@X = dso_local global [32000 x float] zeroinitializer, align 16
@Y = dso_local global [32000 x float] zeroinitializer, align 16
@Z = dso_local global [32000 x float] zeroinitializer, align 16
@U = dso_local global [32000 x float] zeroinitializer, align 16
@V = dso_local global [32000 x float] zeroinitializer, align 16
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
@xx = dso_local global ptr null, align 8
@yy = dso_local global ptr null, align 8
@"??_C@_0O@NCAJFPKJ@S421?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S421\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0P@CGDGOAEG@S1421?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"S1421\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@ELOLDJKI@S422?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S422\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@IKGFOGGI@S423?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S423\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@KDFOPDOL@S424?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S424\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@EJKMBDMG@S431?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S431\09 %.2f \09\09\00", comdat, align 8
@"??_C@_0O@DNDEPKEJ@S441?7?5?$CF?42f?5?7?7?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"S441\09 %.2f \09\09\00", comdat, align 8
@indx = dso_local global [32000 x i32] zeroinitializer, align 16
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
@"??_C@_01EEMJAFIK@?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [2 x i8] c"\0A\00", comdat, align 4
@"??_C@_0BO@IODOONNG@Loop?5?7?5Time?$CISec?$CJ?5?7?5Checksum?5?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [30 x i8] c"Loop \09 Time(Sec) \09 Checksum \0A\00", comdat, align 8
@temp_int = dso_local global i32 0, align 4
@tt = dso_local global [256 x [256 x float]] zeroinitializer, align 16

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca %"class.std::chrono::time_point", align 8
  %4 = alloca %"class.std::chrono::time_point", align 8
  %5 = alloca %"class.std::chrono::duration.0", align 8
  %6 = alloca %"class.std::chrono::duration", align 8
  %7 = icmp sgt i32 %0, 1
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = getelementptr inbounds ptr, ptr %1, i64 1
  %10 = load ptr, ptr %9, align 8
  br label %12

11:                                               ; preds = %2
  br label %12

12:                                               ; preds = %11, %8
  %13 = phi ptr [ %10, %8 ], [ @"??_C@_01FHEEJDEE@A?$AA@", %11 ]
  %14 = icmp sgt i32 %0, 3
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = getelementptr inbounds ptr, ptr %1, i64 3
  %17 = load ptr, ptr %16, align 8
  %18 = call i32 @atoi(ptr noundef %17)
  br label %20

19:                                               ; preds = %12
  br label %20

20:                                               ; preds = %19, %15
  %21 = phi i32 [ %18, %15 ], [ 1, %19 ]
  %22 = icmp sgt i32 %0, 4
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = getelementptr inbounds ptr, ptr %1, i64 4
  %25 = load ptr, ptr %24, align 8
  %26 = call i32 @atoi(ptr noundef %25)
  br label %28

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %27, %23
  %29 = phi i32 [ %26, %23 ], [ 5, %27 ]
  call void @"?pin_environment@bench@@YAXXZ"()
  %30 = load atomic volatile ptr, ptr @g_fn acquire, align 8
  %31 = call noundef i32 %30()
  %32 = call noundef i64 @"?hash_bytes@@YA_KPEBX_K@Z"(ptr noundef @aa, i64 noundef 262144)
  %33 = call noundef i64 @"?hash_bytes@@YA_KPEBX_K@Z"(ptr noundef @bb, i64 noundef 262144)
  %34 = xor i64 %32, %33
  %35 = call noundef i64 @"?hash_bytes@@YA_KPEBX_K@Z"(ptr noundef @cc, i64 noundef 262144)
  %36 = xor i64 %34, %35
  %37 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@MAICADEK@CHECK?5?$CF016llx?6?$AA@", i64 noundef %36)
  %38 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0L@JOFKNBBO@VERIFY?5OK?6?$AA@")
  %39 = icmp slt i32 0, %29
  br i1 %39, label %.lr.ph5, label %56

.lr.ph5:                                          ; preds = %28
  br label %40

40:                                               ; preds = %.lr.ph5, %53
  %.013 = phi i32 [ 0, %.lr.ph5 ], [ %54, %53 ]
  call void @"?now@steady_clock@chrono@std@@SA?AV?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@23@XZ"(ptr dead_on_unwind writable sret(%"class.std::chrono::time_point") align 8 %3) #13
  %41 = icmp slt i32 0, %21
  br i1 %41, label %.lr.ph, label %47

.lr.ph:                                           ; preds = %40
  br label %42

42:                                               ; preds = %.lr.ph, %44
  %.02 = phi i32 [ 0, %.lr.ph ], [ %45, %44 ]
  %43 = call noundef i32 %30()
  br label %44

44:                                               ; preds = %42
  %45 = add i32 %.02, 1
  %46 = icmp slt i32 %45, %21
  br i1 %46, label %42, label %._crit_edge, !llvm.loop !21

._crit_edge:                                      ; preds = %44
  br label %47

47:                                               ; preds = %._crit_edge, %40
  call void @"?now@steady_clock@chrono@std@@SA?AV?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@23@XZ"(ptr dead_on_unwind writable sret(%"class.std::chrono::time_point") align 8 %4) #13
  call void @"??$?GUsteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@12@V312@@chrono@std@@YA?AV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@01@AEBV?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@01@0@Z"(ptr dead_on_unwind writable sret(%"class.std::chrono::duration") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  %48 = call noundef ptr @"??$?0_JU?$ratio@$00$0DLJKMKAA@@std@@$0A@@?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEAA@AEBV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@12@@Z"(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) #13
  %49 = call noundef double @"?count@?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEBANXZ"(ptr noundef nonnull align 8 dereferenceable(8) %5) #13
  %50 = sitofp i32 %21 to double
  %51 = fdiv double %49, %50
  %52 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@MGLMMHNL@TRIAL?5?$CFd?5?$CF?43f?6?$AA@", i32 noundef %.013, double noundef %51)
  br label %53

53:                                               ; preds = %47
  %54 = add i32 %.013, 1
  %55 = icmp slt i32 %54, %29
  br i1 %55, label %40, label %._crit_edge6, !llvm.loop !23

._crit_edge6:                                     ; preds = %53
  br label %56

56:                                               ; preds = %._crit_edge6, %28
  %57 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0DB@PKFEENGN@META?5case?$DNtsvc_s233?5config?$DN?$CFs?5re@", ptr noundef %13, i32 noundef %21, i32 noundef %29)
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
  %7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @"??_C@_0CO@BEMGKDJM@warning?3?5SetProcessAffinityMask?5@", i32 noundef %5) #13
  br label %8

8:                                                ; preds = %4, %0
  %9 = call ptr @GetCurrentProcess()
  %10 = call i32 @SetPriorityClass(ptr noundef %9, i32 noundef 128)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = call i32 @GetLastError()
  %14 = call ptr @__acrt_iob_func(i32 noundef 2)
  %15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @"??_C@_0CI@JIDNHJK@warning?3?5SetPriorityClass?5failed@", i32 noundef %13) #13
  br label %16

16:                                               ; preds = %12, %8
  %17 = call i32 @timeBeginPeriod(i32 noundef 1)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal noundef i64 @"?hash_bytes@@YA_KPEBX_K@Z"(ptr noundef %0, i64 noundef %1) #3 {
  %3 = icmp ult i64 0, %1
  br i1 %3, label %.lr.ph, label %13

.lr.ph:                                           ; preds = %2
  br label %4

4:                                                ; preds = %.lr.ph, %10
  %.03 = phi i64 [ 0, %.lr.ph ], [ %11, %10 ]
  %.012 = phi i64 [ 1469598103934665603, %.lr.ph ], [ %9, %10 ]
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 %.03
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i64
  %8 = xor i64 %.012, %7
  %9 = mul i64 %8, 1099511628211
  br label %10

10:                                               ; preds = %4
  %11 = add i64 %.03, 1
  %12 = icmp ult i64 %11, %1
  br i1 %12, label %4, label %._crit_edge, !llvm.loop !24

._crit_edge:                                      ; preds = %10
  %split = phi i64 [ %9, %10 ]
  br label %13

13:                                               ; preds = %._crit_edge, %2
  %.01.lcssa = phi i64 [ %split, %._crit_edge ], [ 1469598103934665603, %2 ]
  ret i64 %.01.lcssa
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local i32 @printf(ptr noundef %0, ...) #2 comdat {
  %2 = alloca ptr, align 8
  call void @llvm.va_start.p0(ptr %2)
  %3 = load ptr, ptr %2, align 8
  %4 = call ptr @__acrt_iob_func(i32 noundef 1)
  %5 = call i32 @_vfprintf_l(ptr noundef %4, ptr noundef %0, ptr noundef null, ptr noundef %3)
  call void @llvm.va_end.p0(ptr %2)
  ret i32 %5
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"?now@steady_clock@chrono@std@@SA?AV?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@23@XZ"(ptr dead_on_unwind noalias writable sret(%"class.std::chrono::time_point") align 8 %0) #3 comdat align 2 {
  %2 = alloca %"class.std::chrono::duration", align 8
  %3 = alloca i64, align 8
  %4 = alloca %"class.std::chrono::duration", align 8
  %5 = alloca i64, align 8
  %6 = alloca %"class.std::chrono::duration", align 8
  %7 = alloca i64, align 8
  %8 = call i64 @_Query_perf_frequency() #13
  %9 = call i64 @_Query_perf_counter() #13
  %10 = icmp eq i64 %8, 10000000
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = mul i64 %9, 100
  store i64 %12, ptr %3, align 8
  %13 = call noundef ptr @"??$?0_J$0A@@?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEAA@AEB_J@Z"(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  %14 = call noundef ptr @"??0?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@chrono@std@@QEAA@AEBV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@12@@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %2) #13
  br label %33

15:                                               ; preds = %1
  %16 = icmp eq i64 %8, 24000000
  br i1 %16, label %17, label %24

17:                                               ; preds = %15
  %18 = mul i64 %9, 41
  %19 = mul i64 %9, 2
  %20 = sdiv i64 %19, 3
  %21 = add i64 %18, %20
  store i64 %21, ptr %5, align 8
  %22 = call noundef ptr @"??$?0_J$0A@@?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEAA@AEB_J@Z"(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #13
  %23 = call noundef ptr @"??0?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@chrono@std@@QEAA@AEBV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@12@@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %4) #13
  br label %33

24:                                               ; preds = %15
  %25 = sdiv i64 %9, %8
  %26 = mul i64 %25, 1000000000
  %27 = srem i64 %9, %8
  %28 = mul i64 %27, 1000000000
  %29 = sdiv i64 %28, %8
  %30 = add i64 %26, %29
  store i64 %30, ptr %7, align 8
  %31 = call noundef ptr @"??$?0_J$0A@@?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEAA@AEB_J@Z"(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) #13
  %32 = call noundef ptr @"??0?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@chrono@std@@QEAA@AEBV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@12@@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %6) #13
  br label %33

33:                                               ; preds = %24, %17, %11
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"??$?GUsteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@12@V312@@chrono@std@@YA?AV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@01@AEBV?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@01@0@Z"(ptr dead_on_unwind noalias writable sret(%"class.std::chrono::duration") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #3 comdat {
  %4 = alloca %"class.std::chrono::duration", align 8
  %5 = alloca %"class.std::chrono::duration", align 8
  call void @"?time_since_epoch@?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@chrono@std@@QEBA?AV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@XZ"(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr dead_on_unwind writable sret(%"class.std::chrono::duration") align 8 %4) #13
  call void @"?time_since_epoch@?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@chrono@std@@QEBA?AV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@XZ"(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr dead_on_unwind writable sret(%"class.std::chrono::duration") align 8 %5) #13
  call void @"??$?G_JU?$ratio@$00$0DLJKMKAA@@std@@_JU01@@chrono@std@@YA?AV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@01@AEBV201@0@Z"(ptr dead_on_unwind writable sret(%"class.std::chrono::duration") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"??$?0_JU?$ratio@$00$0DLJKMKAA@@std@@$0A@@?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEAA@AEBV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@12@@Z"(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 {
  %3 = alloca %"class.std::chrono::duration.0", align 8
  %4 = getelementptr inbounds nuw %"class.std::chrono::duration.0", ptr %0, i32 0, i32 0
  call void @"??$duration_cast@V?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@_JU?$ratio@$00$0DLJKMKAA@@3@$0A@@chrono@std@@YA?AV?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@01@AEBV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@01@@Z"(ptr dead_on_unwind writable sret(%"class.std::chrono::duration.0") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  %5 = call noundef double @"?count@?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEBANXZ"(ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  store double %5, ptr %4, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef double @"?count@?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEBANXZ"(ptr noundef nonnull align 8 dereferenceable(8) %0) #3 comdat align 2 {
  %2 = getelementptr inbounds nuw %"class.std::chrono::duration.0", ptr %0, i32 0, i32 0
  %3 = load double, ptr %2, align 8
  ret double %3
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"??$duration_cast@V?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@_JU?$ratio@$00$0DLJKMKAA@@3@$0A@@chrono@std@@YA?AV?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@01@AEBV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@01@@Z"(ptr dead_on_unwind noalias writable sret(%"class.std::chrono::duration.0") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #3 comdat {
  %3 = alloca double, align 8
  %4 = call noundef i64 @"?count@?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEBA_JXZ"(ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  %5 = sitofp i64 %4 to double
  store double %5, ptr %3, align 8
  %6 = call noundef ptr @"??$?0N$0A@@?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEAA@AEBN@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @"?count@?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEBA_JXZ"(ptr noundef nonnull align 8 dereferenceable(8) %0) #3 comdat align 2 {
  %2 = getelementptr inbounds nuw %"class.std::chrono::duration", ptr %0, i32 0, i32 0
  %3 = load i64, ptr %2, align 8
  ret i64 %3
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"??$?0N$0A@@?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEAA@AEBN@Z"(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 {
  %3 = getelementptr inbounds nuw %"class.std::chrono::duration.0", ptr %0, i32 0, i32 0
  %4 = load double, ptr %1, align 8
  store double %4, ptr %3, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"?time_since_epoch@?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@chrono@std@@QEBA?AV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@XZ"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr dead_on_unwind noalias writable sret(%"class.std::chrono::duration") align 8 %1) #3 comdat align 2 {
  %3 = getelementptr inbounds nuw %"class.std::chrono::time_point", ptr %0, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %1, ptr align 8 %3, i64 8, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"??$?G_JU?$ratio@$00$0DLJKMKAA@@std@@_JU01@@chrono@std@@YA?AV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@01@AEBV201@0@Z"(ptr dead_on_unwind noalias writable sret(%"class.std::chrono::duration") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #3 comdat {
  %4 = alloca i64, align 8
  %5 = alloca %"class.std::chrono::duration", align 8
  %6 = alloca %"class.std::chrono::duration", align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %5, ptr align 8 %1, i64 8, i1 false)
  %7 = call noundef i64 @"?count@?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEBA_JXZ"(ptr noundef nonnull align 8 dereferenceable(8) %5) #13
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %6, ptr align 8 %2, i64 8, i1 false)
  %8 = call noundef i64 @"?count@?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEBA_JXZ"(ptr noundef nonnull align 8 dereferenceable(8) %6) #13
  %9 = sub i64 %7, %8
  store i64 %9, ptr %4, align 8
  %10 = call noundef ptr @"??$?0_J$0A@@?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEAA@AEB_J@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %4) #13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"??$?0_J$0A@@?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEAA@AEB_J@Z"(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 {
  %3 = getelementptr inbounds nuw %"class.std::chrono::duration", ptr %0, i32 0, i32 0
  %4 = load i64, ptr %1, align 8
  store i64 %4, ptr %3, align 8
  ret ptr %0
}

; Function Attrs: nounwind
declare dso_local i64 @_Query_perf_frequency() #5

; Function Attrs: nounwind
declare dso_local i64 @_Query_perf_counter() #5

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"??0?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@chrono@std@@QEAA@AEBV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@12@@Z"(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 {
  %3 = getelementptr inbounds nuw %"class.std::chrono::time_point", ptr %0, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %3, ptr align 8 %1, i64 8, i1 false)
  ret ptr %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #6

declare dso_local ptr @__acrt_iob_func(i32 noundef) #1

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local i32 @_vfprintf_l(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #2 comdat {
  %5 = call ptr @__local_stdio_printf_options()
  %6 = load i64, ptr %5, align 8
  %7 = call i32 @__stdio_common_vfprintf(i64 noundef %6, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  ret i32 %7
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #6

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local ptr @__local_stdio_printf_options() #3 comdat {
  ret ptr @"?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA"
}

declare dso_local i32 @__stdio_common_vfprintf(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare dllimport ptr @GetCurrentProcess() #1

declare dllimport i32 @SetProcessAffinityMask(ptr noundef, i64 noundef) #1

declare dllimport i32 @GetLastError() #1

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local i32 @fprintf(ptr noundef %0, ptr noundef %1, ...) #3 comdat {
  %3 = alloca ptr, align 8
  call void @llvm.va_start.p0(ptr %3)
  %4 = load ptr, ptr %3, align 8
  %5 = call i32 @_vfprintf_l(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef %4)
  call void @llvm.va_end.p0(ptr %3)
  ret i32 %5
}

declare dllimport i32 @SetPriorityClass(ptr noundef, i32 noundef) #1

declare dllimport i32 @timeBeginPeriod(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @set1d(ptr noundef %0, float noundef %1, i32 noundef %2) #7 {
  %4 = icmp eq i32 %2, -1
  br i1 %4, label %5, label %18

5:                                                ; preds = %3
  br label %6

6:                                                ; preds = %5, %14
  %.025 = phi i32 [ 0, %5 ], [ %15, %14 ]
  %7 = add i32 %.025, 1
  %8 = sitofp i32 %7 to float
  %9 = fpext float %8 to double
  %10 = fdiv double 1.000000e+00, %9
  %11 = fptrunc double %10 to float
  %12 = sext i32 %.025 to i64
  %13 = getelementptr inbounds float, ptr %0, i64 %12
  store float %11, ptr %13, align 4
  br label %14

14:                                               ; preds = %6
  %15 = add i32 %.025, 1
  %16 = icmp slt i32 %15, 32000
  br i1 %16, label %6, label %17, !llvm.loop !25

17:                                               ; preds = %14
  br label %44

18:                                               ; preds = %3
  %19 = icmp eq i32 %2, -2
  br i1 %19, label %20, label %35

20:                                               ; preds = %18
  br label %21

21:                                               ; preds = %20, %31
  %.014 = phi i32 [ 0, %20 ], [ %32, %31 ]
  %22 = add i32 %.014, 1
  %23 = add i32 %.014, 1
  %24 = mul i32 %22, %23
  %25 = sitofp i32 %24 to float
  %26 = fpext float %25 to double
  %27 = fdiv double 1.000000e+00, %26
  %28 = fptrunc double %27 to float
  %29 = sext i32 %.014 to i64
  %30 = getelementptr inbounds float, ptr %0, i64 %29
  store float %28, ptr %30, align 4
  br label %31

31:                                               ; preds = %21
  %32 = add i32 %.014, 1
  %33 = icmp slt i32 %32, 32000
  br i1 %33, label %21, label %34, !llvm.loop !26

34:                                               ; preds = %31
  br label %43

35:                                               ; preds = %18
  br label %36

36:                                               ; preds = %35, %39
  %.03 = phi i32 [ 0, %35 ], [ %40, %39 ]
  %37 = sext i32 %.03 to i64
  %38 = getelementptr inbounds float, ptr %0, i64 %37
  store float %1, ptr %38, align 4
  br label %39

39:                                               ; preds = %36
  %40 = add i32 %.03, %2
  %41 = icmp slt i32 %40, 32000
  br i1 %41, label %36, label %42, !llvm.loop !27

42:                                               ; preds = %39
  br label %43

43:                                               ; preds = %42, %34
  br label %44

44:                                               ; preds = %43, %17
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @set1ds(i32 noundef %0, ptr noundef %1, float noundef %2, i32 noundef %3) #7 {
  %5 = icmp eq i32 %3, -1
  br i1 %5, label %6, label %19

6:                                                ; preds = %4
  br label %7

7:                                                ; preds = %6, %15
  %.025 = phi i32 [ 0, %6 ], [ %16, %15 ]
  %8 = add i32 %.025, 1
  %9 = sitofp i32 %8 to float
  %10 = fpext float %9 to double
  %11 = fdiv double 1.000000e+00, %10
  %12 = fptrunc double %11 to float
  %13 = sext i32 %.025 to i64
  %14 = getelementptr inbounds float, ptr %1, i64 %13
  store float %12, ptr %14, align 4
  br label %15

15:                                               ; preds = %7
  %16 = add i32 %.025, 1
  %17 = icmp slt i32 %16, 32000
  br i1 %17, label %7, label %18, !llvm.loop !28

18:                                               ; preds = %15
  br label %45

19:                                               ; preds = %4
  %20 = icmp eq i32 %3, -2
  br i1 %20, label %21, label %36

21:                                               ; preds = %19
  br label %22

22:                                               ; preds = %21, %32
  %.014 = phi i32 [ 0, %21 ], [ %33, %32 ]
  %23 = add i32 %.014, 1
  %24 = add i32 %.014, 1
  %25 = mul i32 %23, %24
  %26 = sitofp i32 %25 to float
  %27 = fpext float %26 to double
  %28 = fdiv double 1.000000e+00, %27
  %29 = fptrunc double %28 to float
  %30 = sext i32 %.014 to i64
  %31 = getelementptr inbounds float, ptr %1, i64 %30
  store float %29, ptr %31, align 4
  br label %32

32:                                               ; preds = %22
  %33 = add i32 %.014, 1
  %34 = icmp slt i32 %33, 32000
  br i1 %34, label %22, label %35, !llvm.loop !29

35:                                               ; preds = %32
  br label %44

36:                                               ; preds = %19
  br label %37

37:                                               ; preds = %36, %40
  %.03 = phi i32 [ 0, %36 ], [ %41, %40 ]
  %38 = sext i32 %.03 to i64
  %39 = getelementptr inbounds float, ptr %1, i64 %38
  store float %2, ptr %39, align 4
  br label %40

40:                                               ; preds = %37
  %41 = add i32 %.03, %3
  %42 = icmp slt i32 %41, 32000
  br i1 %42, label %37, label %43, !llvm.loop !30

43:                                               ; preds = %40
  br label %44

44:                                               ; preds = %43, %35
  br label %45

45:                                               ; preds = %44, %18
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @set2d(ptr noundef %0, float noundef %1, i32 noundef %2) #7 {
  %4 = icmp eq i32 %2, -1
  br i1 %4, label %5, label %25

5:                                                ; preds = %3
  br label %6

6:                                                ; preds = %5, %21
  %.0311 = phi i32 [ 0, %5 ], [ %22, %21 ]
  br label %7

7:                                                ; preds = %6, %17
  %.0410 = phi i32 [ 0, %6 ], [ %18, %17 ]
  %8 = add i32 %.0311, 1
  %9 = sitofp i32 %8 to float
  %10 = fpext float %9 to double
  %11 = fdiv double 1.000000e+00, %10
  %12 = fptrunc double %11 to float
  %13 = sext i32 %.0311 to i64
  %14 = getelementptr inbounds [256 x float], ptr %0, i64 %13
  %15 = sext i32 %.0410 to i64
  %16 = getelementptr inbounds [256 x float], ptr %14, i64 0, i64 %15
  store float %12, ptr %16, align 4
  br label %17

17:                                               ; preds = %7
  %18 = add i32 %.0410, 1
  %19 = icmp slt i32 %18, 256
  br i1 %19, label %7, label %20, !llvm.loop !31

20:                                               ; preds = %17
  br label %21

21:                                               ; preds = %20
  %22 = add i32 %.0311, 1
  %23 = icmp slt i32 %22, 256
  br i1 %23, label %6, label %24, !llvm.loop !32

24:                                               ; preds = %21
  br label %65

25:                                               ; preds = %3
  %26 = icmp eq i32 %2, -2
  br i1 %26, label %27, label %49

27:                                               ; preds = %25
  br label %28

28:                                               ; preds = %27, %45
  %.059 = phi i32 [ 0, %27 ], [ %46, %45 ]
  br label %29

29:                                               ; preds = %28, %41
  %.028 = phi i32 [ 0, %28 ], [ %42, %41 ]
  %30 = add i32 %.059, 1
  %31 = add i32 %.059, 1
  %32 = mul i32 %30, %31
  %33 = sitofp i32 %32 to float
  %34 = fpext float %33 to double
  %35 = fdiv double 1.000000e+00, %34
  %36 = fptrunc double %35 to float
  %37 = sext i32 %.059 to i64
  %38 = getelementptr inbounds [256 x float], ptr %0, i64 %37
  %39 = sext i32 %.028 to i64
  %40 = getelementptr inbounds [256 x float], ptr %38, i64 0, i64 %39
  store float %36, ptr %40, align 4
  br label %41

41:                                               ; preds = %29
  %42 = add i32 %.028, 1
  %43 = icmp slt i32 %42, 256
  br i1 %43, label %29, label %44, !llvm.loop !33

44:                                               ; preds = %41
  br label %45

45:                                               ; preds = %44
  %46 = add i32 %.059, 1
  %47 = icmp slt i32 %46, 256
  br i1 %47, label %28, label %48, !llvm.loop !34

48:                                               ; preds = %45
  br label %64

49:                                               ; preds = %25
  br label %50

50:                                               ; preds = %49, %60
  %.017 = phi i32 [ 0, %49 ], [ %61, %60 ]
  br label %51

51:                                               ; preds = %50, %56
  %.06 = phi i32 [ 0, %50 ], [ %57, %56 ]
  %52 = sext i32 %.017 to i64
  %53 = getelementptr inbounds [256 x float], ptr %0, i64 %52
  %54 = sext i32 %.06 to i64
  %55 = getelementptr inbounds [256 x float], ptr %53, i64 0, i64 %54
  store float %1, ptr %55, align 4
  br label %56

56:                                               ; preds = %51
  %57 = add i32 %.06, %2
  %58 = icmp slt i32 %57, 256
  br i1 %58, label %51, label %59, !llvm.loop !35

59:                                               ; preds = %56
  br label %60

60:                                               ; preds = %59
  %61 = add i32 %.017, 1
  %62 = icmp slt i32 %61, 256
  br i1 %62, label %50, label %63, !llvm.loop !36

63:                                               ; preds = %60
  br label %64

64:                                               ; preds = %63, %48
  br label %65

65:                                               ; preds = %64, %24
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local float @sum1d(ptr noundef %0) #7 {
  br label %2

2:                                                ; preds = %1, %7
  %.03 = phi i32 [ 0, %1 ], [ %8, %7 ]
  %.012 = phi float [ 0.000000e+00, %1 ], [ %6, %7 ]
  %3 = sext i32 %.03 to i64
  %4 = getelementptr inbounds float, ptr %0, i64 %3
  %5 = load float, ptr %4, align 4
  %6 = fadd float %.012, %5
  br label %7

7:                                                ; preds = %2
  %8 = add i32 %.03, 1
  %9 = icmp slt i32 %8, 32000
  br i1 %9, label %2, label %10, !llvm.loop !37

10:                                               ; preds = %7
  %.01.lcssa = phi float [ %6, %7 ]
  ret float %.01.lcssa
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @check(i32 noundef %0) #7 {
  br label %2

2:                                                ; preds = %1, %23
  %.0120 = phi float [ 0.000000e+00, %1 ], [ %6, %23 ]
  %.0219 = phi float [ 0.000000e+00, %1 ], [ %10, %23 ]
  %.0318 = phi float [ 0.000000e+00, %1 ], [ %14, %23 ]
  %.0417 = phi float [ 0.000000e+00, %1 ], [ %18, %23 ]
  %.0516 = phi float [ 0.000000e+00, %1 ], [ %22, %23 ]
  %.0615 = phi i32 [ 0, %1 ], [ %24, %23 ]
  %3 = sext i32 %.0615 to i64
  %4 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %3
  %5 = load float, ptr %4, align 4
  %6 = fadd float %.0120, %5
  %7 = sext i32 %.0615 to i64
  %8 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %7
  %9 = load float, ptr %8, align 4
  %10 = fadd float %.0219, %9
  %11 = sext i32 %.0615 to i64
  %12 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %11
  %13 = load float, ptr %12, align 4
  %14 = fadd float %.0318, %13
  %15 = sext i32 %.0615 to i64
  %16 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %15
  %17 = load float, ptr %16, align 4
  %18 = fadd float %.0417, %17
  %19 = sext i32 %.0615 to i64
  %20 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %19
  %21 = load float, ptr %20, align 4
  %22 = fadd float %.0516, %21
  br label %23

23:                                               ; preds = %2
  %24 = add i32 %.0615, 1
  %25 = icmp slt i32 %24, 32000
  br i1 %25, label %2, label %26, !llvm.loop !38

26:                                               ; preds = %23
  %.05.lcssa = phi float [ %22, %23 ]
  %.04.lcssa = phi float [ %18, %23 ]
  %.03.lcssa = phi float [ %14, %23 ]
  %.02.lcssa = phi float [ %10, %23 ]
  %.01.lcssa = phi float [ %6, %23 ]
  br label %27

27:                                               ; preds = %26, %51
  %.0728 = phi float [ 0.000000e+00, %26 ], [ %.1.lcssa, %51 ]
  %.0827 = phi float [ 0.000000e+00, %26 ], [ %.19.lcssa, %51 ]
  %.01026 = phi float [ 0.000000e+00, %26 ], [ %.111.lcssa, %51 ]
  %.01225 = phi i32 [ 0, %26 ], [ %52, %51 ]
  br label %28

28:                                               ; preds = %27, %47
  %.124 = phi float [ %.0728, %27 ], [ %34, %47 ]
  %.1923 = phi float [ %.0827, %27 ], [ %40, %47 ]
  %.11122 = phi float [ %.01026, %27 ], [ %46, %47 ]
  %.01321 = phi i32 [ 0, %27 ], [ %48, %47 ]
  %29 = sext i32 %.01225 to i64
  %30 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %29
  %31 = sext i32 %.01321 to i64
  %32 = getelementptr inbounds [256 x float], ptr %30, i64 0, i64 %31
  %33 = load float, ptr %32, align 4
  %34 = fadd float %.124, %33
  %35 = sext i32 %.01225 to i64
  %36 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %35
  %37 = sext i32 %.01321 to i64
  %38 = getelementptr inbounds [256 x float], ptr %36, i64 0, i64 %37
  %39 = load float, ptr %38, align 4
  %40 = fadd float %.1923, %39
  %41 = sext i32 %.01225 to i64
  %42 = getelementptr inbounds [256 x [256 x float]], ptr @cc, i64 0, i64 %41
  %43 = sext i32 %.01321 to i64
  %44 = getelementptr inbounds [256 x float], ptr %42, i64 0, i64 %43
  %45 = load float, ptr %44, align 4
  %46 = fadd float %.11122, %45
  br label %47

47:                                               ; preds = %28
  %48 = add i32 %.01321, 1
  %49 = icmp slt i32 %48, 256
  br i1 %49, label %28, label %50, !llvm.loop !39

50:                                               ; preds = %47
  %.111.lcssa = phi float [ %46, %47 ]
  %.19.lcssa = phi float [ %40, %47 ]
  %.1.lcssa = phi float [ %34, %47 ]
  br label %51

51:                                               ; preds = %50
  %52 = add i32 %.01225, 1
  %53 = icmp slt i32 %52, 256
  br i1 %53, label %27, label %54, !llvm.loop !40

54:                                               ; preds = %51
  %.010.lcssa = phi float [ %.111.lcssa, %51 ]
  %.08.lcssa = phi float [ %.19.lcssa, %51 ]
  %.07.lcssa = phi float [ %.1.lcssa, %51 ]
  br label %55

55:                                               ; preds = %54, %60
  %.030 = phi i32 [ 0, %54 ], [ %61, %60 ]
  %.01429 = phi float [ 0.000000e+00, %54 ], [ %59, %60 ]
  %56 = sext i32 %.030 to i64
  %57 = getelementptr inbounds [65536 x float], ptr @array, i64 0, i64 %56
  %58 = load float, ptr %57, align 4
  %59 = fadd float %.01429, %58
  br label %60

60:                                               ; preds = %55
  %61 = add i32 %.030, 1
  %62 = icmp slt i32 %61, 65536
  br i1 %62, label %55, label %63, !llvm.loop !41

63:                                               ; preds = %60
  %.014.lcssa = phi float [ %59, %60 ]
  %64 = icmp eq i32 %0, 1
  br i1 %64, label %65, label %68

65:                                               ; preds = %63
  %66 = fpext float %.01.lcssa to double
  %67 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_04OMBDKOCD@?$CFf?5?6?$AA@", double noundef %66)
  br label %68

68:                                               ; preds = %65, %63
  %69 = icmp eq i32 %0, 2
  br i1 %69, label %70, label %73

70:                                               ; preds = %68
  %71 = fpext float %.02.lcssa to double
  %72 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_04OMBDKOCD@?$CFf?5?6?$AA@", double noundef %71)
  br label %73

73:                                               ; preds = %70, %68
  %74 = icmp eq i32 %0, 3
  br i1 %74, label %75, label %78

75:                                               ; preds = %73
  %76 = fpext float %.03.lcssa to double
  %77 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_04OMBDKOCD@?$CFf?5?6?$AA@", double noundef %76)
  br label %78

78:                                               ; preds = %75, %73
  %79 = icmp eq i32 %0, 4
  br i1 %79, label %80, label %83

80:                                               ; preds = %78
  %81 = fpext float %.04.lcssa to double
  %82 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_04OMBDKOCD@?$CFf?5?6?$AA@", double noundef %81)
  br label %83

83:                                               ; preds = %80, %78
  %84 = icmp eq i32 %0, 5
  br i1 %84, label %85, label %88

85:                                               ; preds = %83
  %86 = fpext float %.05.lcssa to double
  %87 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_04OMBDKOCD@?$CFf?5?6?$AA@", double noundef %86)
  br label %88

88:                                               ; preds = %85, %83
  %89 = icmp eq i32 %0, 11
  br i1 %89, label %90, label %93

90:                                               ; preds = %88
  %91 = fpext float %.07.lcssa to double
  %92 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_04OMBDKOCD@?$CFf?5?6?$AA@", double noundef %91)
  br label %93

93:                                               ; preds = %90, %88
  %94 = icmp eq i32 %0, 22
  br i1 %94, label %95, label %98

95:                                               ; preds = %93
  %96 = fpext float %.08.lcssa to double
  %97 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_04OMBDKOCD@?$CFf?5?6?$AA@", double noundef %96)
  br label %98

98:                                               ; preds = %95, %93
  %99 = icmp eq i32 %0, 33
  br i1 %99, label %100, label %103

100:                                              ; preds = %98
  %101 = fpext float %.010.lcssa to double
  %102 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_04OMBDKOCD@?$CFf?5?6?$AA@", double noundef %101)
  br label %103

103:                                              ; preds = %100, %98
  %104 = icmp eq i32 %0, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %103
  %106 = fpext float %.014.lcssa to double
  %107 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_04OMBDKOCD@?$CFf?5?6?$AA@", double noundef %106)
  br label %108

108:                                              ; preds = %105, %103
  %109 = icmp eq i32 %0, 12
  br i1 %109, label %110, label %114

110:                                              ; preds = %108
  %111 = fadd float %.01.lcssa, %.02.lcssa
  %112 = fpext float %111 to double
  %113 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_04OMBDKOCD@?$CFf?5?6?$AA@", double noundef %112)
  br label %114

114:                                              ; preds = %110, %108
  %115 = icmp eq i32 %0, 25
  br i1 %115, label %116, label %120

116:                                              ; preds = %114
  %117 = fadd float %.02.lcssa, %.05.lcssa
  %118 = fpext float %117 to double
  %119 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_04OMBDKOCD@?$CFf?5?6?$AA@", double noundef %118)
  br label %120

120:                                              ; preds = %116, %114
  %121 = icmp eq i32 %0, 13
  br i1 %121, label %122, label %126

122:                                              ; preds = %120
  %123 = fadd float %.01.lcssa, %.03.lcssa
  %124 = fpext float %123 to double
  %125 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_04OMBDKOCD@?$CFf?5?6?$AA@", double noundef %124)
  br label %126

126:                                              ; preds = %122, %120
  %127 = icmp eq i32 %0, 123
  br i1 %127, label %128, label %133

128:                                              ; preds = %126
  %129 = fadd float %.01.lcssa, %.02.lcssa
  %130 = fadd float %129, %.03.lcssa
  %131 = fpext float %130 to double
  %132 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_04OMBDKOCD@?$CFf?5?6?$AA@", double noundef %131)
  br label %133

133:                                              ; preds = %128, %126
  %134 = icmp eq i32 %0, 1122
  br i1 %134, label %135, label %139

135:                                              ; preds = %133
  %136 = fadd float %.07.lcssa, %.08.lcssa
  %137 = fpext float %136 to double
  %138 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_04OMBDKOCD@?$CFf?5?6?$AA@", double noundef %137)
  br label %139

139:                                              ; preds = %135, %133
  %140 = icmp eq i32 %0, 112233
  br i1 %140, label %141, label %146

141:                                              ; preds = %139
  %142 = fadd float %.07.lcssa, %.08.lcssa
  %143 = fadd float %142, %.010.lcssa
  %144 = fpext float %143 to double
  %145 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_04OMBDKOCD@?$CFf?5?6?$AA@", double noundef %144)
  br label %146

146:                                              ; preds = %141, %139
  %147 = icmp eq i32 %0, 111
  br i1 %147, label %148, label %152

148:                                              ; preds = %146
  %149 = fadd float %.07.lcssa, %.01.lcssa
  %150 = fpext float %149 to double
  %151 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_04OMBDKOCD@?$CFf?5?6?$AA@", double noundef %150)
  br label %152

152:                                              ; preds = %148, %146
  %153 = icmp eq i32 %0, -1
  br i1 %153, label %154, label %158

154:                                              ; preds = %152
  %155 = load float, ptr @temp, align 4
  %156 = fpext float %155 to double
  %157 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_04OMBDKOCD@?$CFf?5?6?$AA@", double noundef %156)
  br label %158

158:                                              ; preds = %154, %152
  %159 = icmp eq i32 %0, -12
  br i1 %159, label %160, label %165

160:                                              ; preds = %158
  %161 = load float, ptr @temp, align 4
  %162 = fadd float %161, %.02.lcssa
  %163 = fpext float %162 to double
  %164 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_04OMBDKOCD@?$CFf?5?6?$AA@", double noundef %163)
  br label %165

165:                                              ; preds = %160, %158
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @init(ptr noundef %0) #7 {
  %2 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05CDGOKACG@s000?5?$AA@") #13
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %30, label %4

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %4, %26
  %.01 = phi i32 [ 0, %4 ], [ %27, %26 ]
  %6 = add i32 1, %.01
  %7 = sitofp i32 %6 to float
  %8 = sext i32 %.01 to i64
  %9 = getelementptr inbounds [32000 x float], ptr @X, i64 0, i64 %8
  store float %7, ptr %9, align 4
  %10 = add i32 2, %.01
  %11 = sitofp i32 %10 to float
  %12 = sext i32 %.01 to i64
  %13 = getelementptr inbounds [32000 x float], ptr @Y, i64 0, i64 %12
  store float %11, ptr %13, align 4
  %14 = add i32 3, %.01
  %15 = sitofp i32 %14 to float
  %16 = sext i32 %.01 to i64
  %17 = getelementptr inbounds [32000 x float], ptr @Z, i64 0, i64 %16
  store float %15, ptr %17, align 4
  %18 = add i32 4, %.01
  %19 = sitofp i32 %18 to float
  %20 = sext i32 %.01 to i64
  %21 = getelementptr inbounds [32000 x float], ptr @U, i64 0, i64 %20
  store float %19, ptr %21, align 4
  %22 = add i32 5, %.01
  %23 = sitofp i32 %22 to float
  %24 = sext i32 %.01 to i64
  %25 = getelementptr inbounds [32000 x float], ptr @V, i64 0, i64 %24
  store float %23, ptr %25, align 4
  br label %26

26:                                               ; preds = %5
  %27 = add i32 %.01, 1
  %28 = icmp slt i32 %27, 32000
  br i1 %28, label %5, label %29, !llvm.loop !42

29:                                               ; preds = %26
  br label %1108

30:                                               ; preds = %1
  %31 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05KHHAIEME@s111?5?$AA@") #13
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %30
  %34 = call i32 @set1d(ptr noundef @a, float noundef 1.000000e+00, i32 noundef 1)
  %35 = call i32 @set1d(ptr noundef @b, float noundef 0.000000e+00, i32 noundef -2)
  %36 = call i32 @set1d(ptr noundef @c, float noundef 0.000000e+00, i32 noundef -2)
  %37 = call i32 @set1d(ptr noundef @d, float noundef 0.000000e+00, i32 noundef -2)
  %38 = call i32 @set1d(ptr noundef @e, float noundef 0.000000e+00, i32 noundef -2)
  br label %1107

39:                                               ; preds = %30
  %40 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05KFDGDKJN@s112?5?$AA@") #13
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = call i32 @set1d(ptr noundef @a, float noundef 1.000000e+00, i32 noundef 1)
  %44 = call i32 @set1d(ptr noundef @b, float noundef 0.000000e+00, i32 noundef -2)
  br label %1106

45:                                               ; preds = %39
  %46 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05KEPEFAKK@s113?5?$AA@") #13
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = call i32 @set1d(ptr noundef @a, float noundef 1.000000e+00, i32 noundef 1)
  %50 = call i32 @set1d(ptr noundef @b, float noundef 0.000000e+00, i32 noundef -2)
  br label %1105

51:                                               ; preds = %45
  %52 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05KBLLEGCP@s114?5?$AA@") #13
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = call i32 @set2d(ptr noundef @aa, float noundef 0.000000e+00, i32 noundef -1)
  %56 = call i32 @set2d(ptr noundef @bb, float noundef 0.000000e+00, i32 noundef -2)
  br label %1104

57:                                               ; preds = %51
  %58 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05KAHJCMBI@s115?5?$AA@") #13
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %57
  %61 = call i32 @set1d(ptr noundef @a, float noundef 1.000000e+00, i32 noundef 1)
  %62 = call i32 @set2d(ptr noundef @aa, float noundef f0x358637BD, i32 noundef 1)
  %63 = call i32 @set2d(ptr noundef @bb, float noundef f0x358637BD, i32 noundef 1)
  %64 = call i32 @set2d(ptr noundef @cc, float noundef f0x358637BD, i32 noundef 1)
  br label %1103

65:                                               ; preds = %57
  %66 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05KCDPJCEB@s116?5?$AA@") #13
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %65
  %69 = call i32 @set1d(ptr noundef @a, float noundef 1.000000e+00, i32 noundef 1)
  br label %1102

70:                                               ; preds = %65
  %71 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05KIKBLPEL@s118?5?$AA@") #13
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %70
  %74 = call i32 @set1d(ptr noundef @a, float noundef 1.000000e+00, i32 noundef 1)
  %75 = call i32 @set2d(ptr noundef @bb, float noundef f0x358637BD, i32 noundef 1)
  br label %1101

76:                                               ; preds = %70
  %77 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05KJGDNFHM@s119?5?$AA@") #13
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %76
  %80 = call i32 @set2d(ptr noundef @aa, float noundef 1.000000e+00, i32 noundef 1)
  %81 = call i32 @set2d(ptr noundef @bb, float noundef 0.000000e+00, i32 noundef -2)
  br label %1100

82:                                               ; preds = %76
  %83 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05LFMFCLCK@s121?5?$AA@") #13
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %82
  %86 = call i32 @set1d(ptr noundef @a, float noundef 1.000000e+00, i32 noundef 1)
  %87 = call i32 @set1d(ptr noundef @b, float noundef 0.000000e+00, i32 noundef -2)
  br label %1099

88:                                               ; preds = %82
  %89 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05LHIDJFHD@s122?5?$AA@") #13
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %88
  %92 = call i32 @set1d(ptr noundef @a, float noundef 1.000000e+00, i32 noundef 1)
  %93 = call i32 @set1d(ptr noundef @b, float noundef 0.000000e+00, i32 noundef -2)
  br label %1098

94:                                               ; preds = %88
  %95 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05LGEBPPEE@s123?5?$AA@") #13
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %103, label %97

97:                                               ; preds = %94
  %98 = call i32 @set1d(ptr noundef @a, float noundef 0.000000e+00, i32 noundef 1)
  %99 = call i32 @set1d(ptr noundef @b, float noundef 1.000000e+00, i32 noundef 1)
  %100 = call i32 @set1d(ptr noundef @c, float noundef 1.000000e+00, i32 noundef 1)
  %101 = call i32 @set1d(ptr noundef @d, float noundef 0.000000e+00, i32 noundef -1)
  %102 = call i32 @set1d(ptr noundef @e, float noundef 0.000000e+00, i32 noundef -1)
  br label %1097

103:                                              ; preds = %94
  %104 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05LDAOOJMB@s124?5?$AA@") #13
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %112, label %106

106:                                              ; preds = %103
  %107 = call i32 @set1d(ptr noundef @a, float noundef 0.000000e+00, i32 noundef 1)
  %108 = call i32 @set1d(ptr noundef @b, float noundef 1.000000e+00, i32 noundef 1)
  %109 = call i32 @set1d(ptr noundef @c, float noundef 1.000000e+00, i32 noundef 1)
  %110 = call i32 @set1d(ptr noundef @d, float noundef 0.000000e+00, i32 noundef -1)
  %111 = call i32 @set1d(ptr noundef @e, float noundef 0.000000e+00, i32 noundef -1)
  br label %1096

112:                                              ; preds = %103
  %113 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05LCMMIDPG@s125?5?$AA@") #13
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %120, label %115

115:                                              ; preds = %112
  %116 = call i32 @set1ds(i32 noundef 1024000000, ptr noundef @array, float noundef 0.000000e+00, i32 noundef 1)
  %117 = call i32 @set2d(ptr noundef @aa, float noundef 1.000000e+00, i32 noundef 1)
  %118 = call i32 @set2d(ptr noundef @bb, float noundef 5.000000e-01, i32 noundef 1)
  %119 = call i32 @set2d(ptr noundef @cc, float noundef 2.000000e+00, i32 noundef 1)
  br label %1095

120:                                              ; preds = %112
  %121 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05LAIKDNKP@s126?5?$AA@") #13
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %127, label %123

123:                                              ; preds = %120
  %124 = call i32 @set2d(ptr noundef @bb, float noundef 1.000000e+00, i32 noundef 1)
  %125 = call i32 @set1ds(i32 noundef 1024000000, ptr noundef @array, float noundef 0.000000e+00, i32 noundef -1)
  %126 = call i32 @set2d(ptr noundef @cc, float noundef 0.000000e+00, i32 noundef -1)
  br label %1094

127:                                              ; preds = %120
  %128 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05LBEIFHJI@s127?5?$AA@") #13
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %136, label %130

130:                                              ; preds = %127
  %131 = call i32 @set1d(ptr noundef @a, float noundef 0.000000e+00, i32 noundef 1)
  %132 = call i32 @set1d(ptr noundef @b, float noundef 1.000000e+00, i32 noundef 1)
  %133 = call i32 @set1d(ptr noundef @c, float noundef 0.000000e+00, i32 noundef -1)
  %134 = call i32 @set1d(ptr noundef @d, float noundef 0.000000e+00, i32 noundef -1)
  %135 = call i32 @set1d(ptr noundef @e, float noundef 0.000000e+00, i32 noundef -1)
  br label %1093

136:                                              ; preds = %127
  %137 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05LKBEBAKF@s128?5?$AA@") #13
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %144, label %139

139:                                              ; preds = %136
  %140 = call i32 @set1d(ptr noundef @a, float noundef 0.000000e+00, i32 noundef 1)
  %141 = call i32 @set1d(ptr noundef @b, float noundef 2.000000e+00, i32 noundef 1)
  %142 = call i32 @set1d(ptr noundef @c, float noundef 1.000000e+00, i32 noundef 1)
  %143 = call i32 @set1d(ptr noundef @d, float noundef 1.000000e+00, i32 noundef 1)
  br label %1092

144:                                              ; preds = %136
  %145 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05NHJEMEP@s131?5?$AA@") #13
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %150, label %147

147:                                              ; preds = %144
  %148 = call i32 @set1d(ptr noundef @a, float noundef 1.000000e+00, i32 noundef 1)
  %149 = call i32 @set1d(ptr noundef @b, float noundef 0.000000e+00, i32 noundef -2)
  br label %1091

150:                                              ; preds = %144
  %151 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05PDPPCBG@s132?5?$AA@") #13
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %157, label %153

153:                                              ; preds = %150
  %154 = call i32 @set2d(ptr noundef @aa, float noundef 1.000000e+00, i32 noundef 1)
  %155 = call i32 @set1d(ptr noundef @b, float noundef 0.000000e+00, i32 noundef -1)
  %156 = call i32 @set1d(ptr noundef @c, float noundef 0.000000e+00, i32 noundef -1)
  br label %1090

157:                                              ; preds = %150
  %158 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05JAKOHEPG@s141?5?$AA@") #13
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %163, label %160

160:                                              ; preds = %157
  %161 = call i32 @set1ds(i32 noundef 1024000000, ptr noundef @array, float noundef 1.000000e+00, i32 noundef 1)
  %162 = call i32 @set2d(ptr noundef @bb, float noundef 0.000000e+00, i32 noundef -2)
  br label %1089

163:                                              ; preds = %157
  %164 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05CIBCBDJD@s151?5?$AA@") #13
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %169, label %166

166:                                              ; preds = %163
  %167 = call i32 @set1d(ptr noundef @a, float noundef 1.000000e+00, i32 noundef 1)
  %168 = call i32 @set1d(ptr noundef @b, float noundef 0.000000e+00, i32 noundef -2)
  br label %1088

169:                                              ; preds = %163
  %170 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05CKFEKNMK@s152?5?$AA@") #13
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %178, label %172

172:                                              ; preds = %169
  %173 = call i32 @set1d(ptr noundef @a, float noundef 1.000000e+00, i32 noundef 1)
  %174 = call i32 @set1d(ptr noundef @b, float noundef 0.000000e+00, i32 noundef 1)
  %175 = call i32 @set1d(ptr noundef @c, float noundef 0.000000e+00, i32 noundef -1)
  %176 = call i32 @set1d(ptr noundef @d, float noundef 0.000000e+00, i32 noundef -1)
  %177 = call i32 @set1d(ptr noundef @e, float noundef 0.000000e+00, i32 noundef -1)
  br label %1087

178:                                              ; preds = %169
  %179 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05DKKHLMHN@s161?5?$AA@") #13
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %189, label %181

181:                                              ; preds = %178
  %182 = call i32 @set1d(ptr noundef @a, float noundef 1.000000e+00, i32 noundef 1)
  %183 = call i32 @set1ds(i32 noundef 16000, ptr noundef @b, float noundef 1.000000e+00, i32 noundef 2)
  %184 = fneg float 1.000000e+00
  %185 = call i32 @set1ds(i32 noundef 16000, ptr noundef getelementptr inbounds nuw (i8, ptr @b, i64 4), float noundef %184, i32 noundef 2)
  %186 = call i32 @set1d(ptr noundef @c, float noundef 1.000000e+00, i32 noundef 1)
  %187 = call i32 @set1d(ptr noundef @d, float noundef 0.000000e+00, i32 noundef -1)
  %188 = call i32 @set1d(ptr noundef @e, float noundef 0.000000e+00, i32 noundef -1)
  br label %1086

189:                                              ; preds = %178
  %190 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05DIOBACCE@s162?5?$AA@") #13
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %196, label %192

192:                                              ; preds = %189
  %193 = call i32 @set1d(ptr noundef @a, float noundef 1.000000e+00, i32 noundef 1)
  %194 = call i32 @set1d(ptr noundef @b, float noundef 0.000000e+00, i32 noundef -1)
  %195 = call i32 @set1d(ptr noundef @c, float noundef 0.000000e+00, i32 noundef -1)
  br label %1085

196:                                              ; preds = %189
  %197 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05ICBLNLBI@s171?5?$AA@") #13
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %202, label %199

199:                                              ; preds = %196
  %200 = call i32 @set1d(ptr noundef @a, float noundef 1.000000e+00, i32 noundef 1)
  %201 = call i32 @set1d(ptr noundef @b, float noundef 0.000000e+00, i32 noundef -2)
  br label %1084

202:                                              ; preds = %196
  %203 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05IAFNGFEB@s172?5?$AA@") #13
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %208, label %205

205:                                              ; preds = %202
  %206 = call i32 @set1d(ptr noundef @a, float noundef 1.000000e+00, i32 noundef 1)
  %207 = call i32 @set1d(ptr noundef @b, float noundef 0.000000e+00, i32 noundef -2)
  br label %1083

208:                                              ; preds = %202
  %209 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05IBJPAPHG@s173?5?$AA@") #13
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %214, label %211

211:                                              ; preds = %208
  %212 = call i32 @set1d(ptr noundef @a, float noundef 1.000000e+00, i32 noundef 1)
  %213 = call i32 @set1d(ptr noundef @b, float noundef 0.000000e+00, i32 noundef -2)
  br label %1082

214:                                              ; preds = %208
  %215 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05IENABJPD@s174?5?$AA@") #13
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %220, label %217

217:                                              ; preds = %214
  %218 = call i32 @set1d(ptr noundef @a, float noundef 1.000000e+00, i32 noundef 1)
  %219 = call i32 @set1d(ptr noundef @b, float noundef 0.000000e+00, i32 noundef -2)
  br label %1081

220:                                              ; preds = %214
  %221 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05IFBCHDME@s175?5?$AA@") #13
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %226, label %223

223:                                              ; preds = %220
  %224 = call i32 @set1d(ptr noundef @a, float noundef 1.000000e+00, i32 noundef 1)
  %225 = call i32 @set1d(ptr noundef @b, float noundef 0.000000e+00, i32 noundef -2)
  br label %1080

226:                                              ; preds = %220
  %227 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05IHFEMNJN@s176?5?$AA@") #13
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %233, label %229

229:                                              ; preds = %226
  %230 = call i32 @set1d(ptr noundef @a, float noundef 1.000000e+00, i32 noundef 1)
  %231 = call i32 @set1d(ptr noundef @b, float noundef 0.000000e+00, i32 noundef -1)
  %232 = call i32 @set1d(ptr noundef @c, float noundef 0.000000e+00, i32 noundef -1)
  br label %1079

233:                                              ; preds = %226
  %234 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05OANAPOBE@s211?5?$AA@") #13
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %242, label %236

236:                                              ; preds = %233
  %237 = call i32 @set1d(ptr noundef @a, float noundef 0.000000e+00, i32 noundef 1)
  %238 = call i32 @set1d(ptr noundef @b, float noundef 1.000000e+00, i32 noundef 1)
  %239 = call i32 @set1d(ptr noundef @c, float noundef 0.000000e+00, i32 noundef -1)
  %240 = call i32 @set1d(ptr noundef @d, float noundef 0.000000e+00, i32 noundef -1)
  %241 = call i32 @set1d(ptr noundef @e, float noundef 0.000000e+00, i32 noundef -1)
  br label %1078

242:                                              ; preds = %233
  %243 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05OCJGEAEN@s212?5?$AA@") #13
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %250, label %245

245:                                              ; preds = %242
  %246 = call i32 @set1d(ptr noundef @a, float noundef 0.000000e+00, i32 noundef -1)
  %247 = call i32 @set1d(ptr noundef @b, float noundef 1.000000e+00, i32 noundef 1)
  %248 = call i32 @set1d(ptr noundef @c, float noundef 1.000000e+00, i32 noundef 1)
  %249 = call i32 @set1d(ptr noundef @d, float noundef 0.000000e+00, i32 noundef -1)
  br label %1077

250:                                              ; preds = %242
  %251 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05PCGFFBPK@s221?5?$AA@") #13
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %258, label %253

253:                                              ; preds = %250
  %254 = call i32 @set1d(ptr noundef @a, float noundef 1.000000e+00, i32 noundef 1)
  %255 = call i32 @set1d(ptr noundef @b, float noundef 0.000000e+00, i32 noundef -1)
  %256 = call i32 @set1d(ptr noundef @c, float noundef 0.000000e+00, i32 noundef -1)
  %257 = call i32 @set1d(ptr noundef @d, float noundef 0.000000e+00, i32 noundef -1)
  br label %1076

258:                                              ; preds = %250
  %259 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05PACDOPKD@s222?5?$AA@") #13
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %265, label %261

261:                                              ; preds = %258
  %262 = call i32 @set1d(ptr noundef @a, float noundef 0.000000e+00, i32 noundef 1)
  %263 = call i32 @set1d(ptr noundef @b, float noundef 1.000000e+00, i32 noundef 1)
  %264 = call i32 @set1d(ptr noundef @c, float noundef 1.000000e+00, i32 noundef 1)
  br label %1075

265:                                              ; preds = %258
  %266 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05EKNJDGJP@s231?5?$AA@") #13
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %271, label %268

268:                                              ; preds = %265
  %269 = call i32 @set2d(ptr noundef @aa, float noundef 1.000000e+00, i32 noundef 1)
  %270 = call i32 @set2d(ptr noundef @bb, float noundef 0.000000e+00, i32 noundef -2)
  br label %1074

271:                                              ; preds = %265
  %272 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05EIJPIIMG@s232?5?$AA@") #13
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %277, label %274

274:                                              ; preds = %271
  %275 = call i32 @set2d(ptr noundef @aa, float noundef 1.000000e+00, i32 noundef 1)
  %276 = call i32 @set2d(ptr noundef @bb, float noundef 0.000000e+00, i32 noundef 1)
  br label %1073

277:                                              ; preds = %271
  %278 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05EJFNOCPB@s233?5?$AA@") #13
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %284, label %280

280:                                              ; preds = %277
  %281 = call i32 @set2d(ptr noundef @aa, float noundef 0.000000e+00, i32 noundef -1)
  %282 = call i32 @set2d(ptr noundef @bb, float noundef 0.000000e+00, i32 noundef -1)
  %283 = call i32 @set2d(ptr noundef @cc, float noundef 0.000000e+00, i32 noundef -1)
  br label %1072

284:                                              ; preds = %277
  %285 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05EMBCPEHE@s234?5?$AA@") #13
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %291, label %287

287:                                              ; preds = %284
  %288 = call i32 @set2d(ptr noundef @aa, float noundef 1.000000e+00, i32 noundef 1)
  %289 = call i32 @set2d(ptr noundef @bb, float noundef 0.000000e+00, i32 noundef -1)
  %290 = call i32 @set2d(ptr noundef @cc, float noundef 0.000000e+00, i32 noundef -1)
  br label %1071

291:                                              ; preds = %284
  %292 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05ENNAJOED@s235?5?$AA@") #13
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %300, label %294

294:                                              ; preds = %291
  %295 = call i32 @set1d(ptr noundef @a, float noundef 1.000000e+00, i32 noundef 1)
  %296 = call i32 @set1d(ptr noundef @b, float noundef 0.000000e+00, i32 noundef -1)
  %297 = call i32 @set1d(ptr noundef @c, float noundef 0.000000e+00, i32 noundef -1)
  %298 = call i32 @set2d(ptr noundef @aa, float noundef 1.000000e+00, i32 noundef 1)
  %299 = call i32 @set2d(ptr noundef @bb, float noundef 0.000000e+00, i32 noundef -2)
  br label %1070

300:                                              ; preds = %291
  %301 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05NHAOAOCG@s241?5?$AA@") #13
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %308, label %303

303:                                              ; preds = %300
  %304 = call i32 @set1d(ptr noundef @a, float noundef 1.000000e+00, i32 noundef 1)
  %305 = call i32 @set1d(ptr noundef @b, float noundef 1.000000e+00, i32 noundef 1)
  %306 = call i32 @set1d(ptr noundef @c, float noundef 1.000000e+00, i32 noundef 1)
  %307 = call i32 @set1d(ptr noundef @d, float noundef 1.000000e+00, i32 noundef 1)
  br label %1069

308:                                              ; preds = %300
  %309 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05NFEILAHP@s242?5?$AA@") #13
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %316, label %311

311:                                              ; preds = %308
  %312 = call i32 @set1d(ptr noundef @a, float noundef f0x358637BD, i32 noundef 1)
  %313 = call i32 @set1d(ptr noundef @b, float noundef f0x358637BD, i32 noundef 1)
  %314 = call i32 @set1d(ptr noundef @c, float noundef f0x358637BD, i32 noundef 1)
  %315 = call i32 @set1d(ptr noundef @d, float noundef f0x358637BD, i32 noundef 1)
  br label %1068

316:                                              ; preds = %308
  %317 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05NEIKNKEI@s243?5?$AA@") #13
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %325, label %319

319:                                              ; preds = %316
  %320 = call i32 @set1d(ptr noundef @a, float noundef 0.000000e+00, i32 noundef 1)
  %321 = call i32 @set1d(ptr noundef @b, float noundef 1.000000e+00, i32 noundef 1)
  %322 = call i32 @set1d(ptr noundef @c, float noundef 0.000000e+00, i32 noundef -1)
  %323 = call i32 @set1d(ptr noundef @d, float noundef 0.000000e+00, i32 noundef -1)
  %324 = call i32 @set1d(ptr noundef @e, float noundef 0.000000e+00, i32 noundef -1)
  br label %1067

325:                                              ; preds = %316
  %326 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05NBMFMMMN@s244?5?$AA@") #13
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %333, label %328

328:                                              ; preds = %325
  %329 = call i32 @set1d(ptr noundef @a, float noundef 0.000000e+00, i32 noundef 1)
  %330 = call i32 @set1d(ptr noundef @b, float noundef 1.000000e+00, i32 noundef 1)
  %331 = call i32 @set1d(ptr noundef @c, float noundef f0x358637BD, i32 noundef 1)
  %332 = call i32 @set1d(ptr noundef @d, float noundef f0x358637BD, i32 noundef 1)
  br label %1066

333:                                              ; preds = %325
  %334 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05GPLCGJED@s251?5?$AA@") #13
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %342, label %336

336:                                              ; preds = %333
  %337 = call i32 @set1d(ptr noundef @a, float noundef 0.000000e+00, i32 noundef 1)
  %338 = call i32 @set1d(ptr noundef @b, float noundef 1.000000e+00, i32 noundef 1)
  %339 = call i32 @set1d(ptr noundef @c, float noundef 0.000000e+00, i32 noundef -1)
  %340 = call i32 @set1d(ptr noundef @d, float noundef 0.000000e+00, i32 noundef -1)
  %341 = call i32 @set1d(ptr noundef @e, float noundef 0.000000e+00, i32 noundef -1)
  br label %1065

342:                                              ; preds = %333
  %343 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05GNPENHBK@s252?5?$AA@") #13
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %349, label %345

345:                                              ; preds = %342
  %346 = call i32 @set1d(ptr noundef @a, float noundef 0.000000e+00, i32 noundef 1)
  %347 = call i32 @set1d(ptr noundef @b, float noundef 1.000000e+00, i32 noundef 1)
  %348 = call i32 @set1d(ptr noundef @c, float noundef 1.000000e+00, i32 noundef 1)
  br label %1064

349:                                              ; preds = %342
  %350 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05GMDGLNCN@s253?5?$AA@") #13
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %357, label %352

352:                                              ; preds = %349
  %353 = call i32 @set1d(ptr noundef @a, float noundef 1.000000e+00, i32 noundef 1)
  %354 = call i32 @set1d(ptr noundef @b, float noundef f0x358637BD, i32 noundef 1)
  %355 = call i32 @set1d(ptr noundef @c, float noundef 1.000000e+00, i32 noundef 1)
  %356 = call i32 @set1d(ptr noundef @d, float noundef 0.000000e+00, i32 noundef -1)
  br label %1063

357:                                              ; preds = %349
  %358 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05GJHJKLKI@s254?5?$AA@") #13
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %363, label %360

360:                                              ; preds = %357
  %361 = call i32 @set1d(ptr noundef @a, float noundef 0.000000e+00, i32 noundef 1)
  %362 = call i32 @set1d(ptr noundef @b, float noundef 1.000000e+00, i32 noundef 1)
  br label %1062

363:                                              ; preds = %357
  %364 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05GILLMBJP@s255?5?$AA@") #13
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %369, label %366

366:                                              ; preds = %363
  %367 = call i32 @set1d(ptr noundef @a, float noundef 0.000000e+00, i32 noundef 1)
  %368 = call i32 @set1d(ptr noundef @b, float noundef 1.000000e+00, i32 noundef 1)
  br label %1061

369:                                              ; preds = %363
  %370 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05GKPNHPMG@s256?5?$AA@") #13
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %376, label %372

372:                                              ; preds = %369
  %373 = call i32 @set1d(ptr noundef @a, float noundef 1.000000e+00, i32 noundef 1)
  %374 = call i32 @set2d(ptr noundef @aa, float noundef 2.000000e+00, i32 noundef 1)
  %375 = call i32 @set2d(ptr noundef @bb, float noundef 1.000000e+00, i32 noundef 1)
  br label %1060

376:                                              ; preds = %369
  %377 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05GLDPBFPB@s257?5?$AA@") #13
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %383, label %379

379:                                              ; preds = %376
  %380 = call i32 @set1d(ptr noundef @a, float noundef 1.000000e+00, i32 noundef 1)
  %381 = call i32 @set2d(ptr noundef @aa, float noundef 2.000000e+00, i32 noundef 1)
  %382 = call i32 @set2d(ptr noundef @bb, float noundef 1.000000e+00, i32 noundef 1)
  br label %1059

383:                                              ; preds = %376
  %384 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05GAGDFCMM@s258?5?$AA@") #13
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %393, label %386

386:                                              ; preds = %383
  %387 = call i32 @set1d(ptr noundef @a, float noundef 0.000000e+00, i32 noundef -1)
  %388 = call i32 @set1d(ptr noundef @b, float noundef 0.000000e+00, i32 noundef 1)
  %389 = call i32 @set1d(ptr noundef @c, float noundef 0.000000e+00, i32 noundef -1)
  %390 = call i32 @set1d(ptr noundef @d, float noundef 0.000000e+00, i32 noundef -1)
  %391 = call i32 @set1d(ptr noundef @e, float noundef 0.000000e+00, i32 noundef 1)
  %392 = call i32 @set2d(ptr noundef @aa, float noundef 0.000000e+00, i32 noundef -1)
  br label %1058

393:                                              ; preds = %383
  %394 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05HNAHMGKN@s261?5?$AA@") #13
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %401, label %396

396:                                              ; preds = %393
  %397 = call i32 @set1d(ptr noundef @a, float noundef 1.000000e+00, i32 noundef 1)
  %398 = call i32 @set1d(ptr noundef @b, float noundef 0.000000e+00, i32 noundef -2)
  %399 = call i32 @set1d(ptr noundef @c, float noundef 0.000000e+00, i32 noundef -2)
  %400 = call i32 @set1d(ptr noundef @d, float noundef 1.000000e+00, i32 noundef 1)
  br label %1057

401:                                              ; preds = %393
  %402 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05MFLLKBMI@s271?5?$AA@") #13
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %408, label %404

404:                                              ; preds = %401
  %405 = call i32 @set1d(ptr noundef @a, float noundef 1.000000e+00, i32 noundef 1)
  %406 = call i32 @set1d(ptr noundef @b, float noundef 0.000000e+00, i32 noundef -1)
  %407 = call i32 @set1d(ptr noundef @c, float noundef 0.000000e+00, i32 noundef -1)
  br label %1056

408:                                              ; preds = %401
  %409 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05MHPNBPJB@s272?5?$AA@") #13
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %417, label %411

411:                                              ; preds = %408
  %412 = call i32 @set1d(ptr noundef @a, float noundef 1.000000e+00, i32 noundef 1)
  %413 = call i32 @set1d(ptr noundef @b, float noundef 1.000000e+00, i32 noundef 1)
  %414 = call i32 @set1d(ptr noundef @c, float noundef 0.000000e+00, i32 noundef -1)
  %415 = call i32 @set1d(ptr noundef @d, float noundef 0.000000e+00, i32 noundef -1)
  %416 = call i32 @set1d(ptr noundef @e, float noundef 2.000000e+00, i32 noundef 1)
  br label %1055

417:                                              ; preds = %408
  %418 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05MGDPHFKG@s273?5?$AA@") #13
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %426, label %420

420:                                              ; preds = %417
  %421 = call i32 @set1d(ptr noundef @a, float noundef 1.000000e+00, i32 noundef 1)
  %422 = call i32 @set1d(ptr noundef @b, float noundef 1.000000e+00, i32 noundef 1)
  %423 = call i32 @set1d(ptr noundef @c, float noundef 1.000000e+00, i32 noundef 1)
  %424 = call i32 @set1d(ptr noundef @d, float noundef f0x358637BD, i32 noundef 1)
  %425 = call i32 @set1d(ptr noundef @e, float noundef 0.000000e+00, i32 noundef -1)
  br label %1054

426:                                              ; preds = %417
  %427 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05MDHAGDCD@s274?5?$AA@") #13
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %435, label %429

429:                                              ; preds = %426
  %430 = call i32 @set1d(ptr noundef @a, float noundef 0.000000e+00, i32 noundef 1)
  %431 = call i32 @set1d(ptr noundef @b, float noundef 1.000000e+00, i32 noundef 1)
  %432 = call i32 @set1d(ptr noundef @c, float noundef 1.000000e+00, i32 noundef 1)
  %433 = call i32 @set1d(ptr noundef @d, float noundef 0.000000e+00, i32 noundef -1)
  %434 = call i32 @set1d(ptr noundef @e, float noundef 0.000000e+00, i32 noundef -1)
  br label %1053

435:                                              ; preds = %426
  %436 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05MCLCAJBE@s275?5?$AA@") #13
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %442, label %438

438:                                              ; preds = %435
  %439 = call i32 @set2d(ptr noundef @aa, float noundef 1.000000e+00, i32 noundef 1)
  %440 = call i32 @set2d(ptr noundef @bb, float noundef f0x358637BD, i32 noundef 1)
  %441 = call i32 @set2d(ptr noundef @cc, float noundef f0x358637BD, i32 noundef 1)
  br label %1052

442:                                              ; preds = %435
  %443 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05MAPELHEN@s276?5?$AA@") #13
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %450, label %445

445:                                              ; preds = %442
  %446 = call i32 @set1d(ptr noundef @a, float noundef 1.000000e+00, i32 noundef 1)
  %447 = call i32 @set1d(ptr noundef @b, float noundef 0.000000e+00, i32 noundef -1)
  %448 = call i32 @set1d(ptr noundef @c, float noundef 0.000000e+00, i32 noundef -1)
  %449 = call i32 @set1d(ptr noundef @d, float noundef 0.000000e+00, i32 noundef -1)
  br label %1051

450:                                              ; preds = %442
  %451 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05MBDGNNHK@s277?5?$AA@") #13
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %461, label %453

453:                                              ; preds = %450
  %454 = call i32 @set1d(ptr noundef @a, float noundef 1.000000e+00, i32 noundef 1)
  %455 = call i32 @set1ds(i32 noundef 16000, ptr noundef @b, float noundef 1.000000e+00, i32 noundef 1)
  %456 = fneg float 1.000000e+00
  %457 = call i32 @set1ds(i32 noundef 16000, ptr noundef getelementptr inbounds nuw (i8, ptr @b, i64 64000), float noundef %456, i32 noundef 1)
  %458 = call i32 @set1d(ptr noundef @c, float noundef 0.000000e+00, i32 noundef -1)
  %459 = call i32 @set1d(ptr noundef @d, float noundef 0.000000e+00, i32 noundef -1)
  %460 = call i32 @set1d(ptr noundef @e, float noundef 0.000000e+00, i32 noundef -1)
  br label %1050

461:                                              ; preds = %450
  %462 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05MKGKJKEH@s278?5?$AA@") #13
  %463 = icmp ne i32 %462, 0
  br i1 %463, label %472, label %464

464:                                              ; preds = %461
  %465 = fneg float 1.000000e+00
  %466 = call i32 @set1ds(i32 noundef 16000, ptr noundef @a, float noundef %465, i32 noundef 1)
  %467 = call i32 @set1ds(i32 noundef 16000, ptr noundef getelementptr inbounds nuw (i8, ptr @a, i64 64000), float noundef 1.000000e+00, i32 noundef 1)
  %468 = call i32 @set1d(ptr noundef @b, float noundef 1.000000e+00, i32 noundef 1)
  %469 = call i32 @set1d(ptr noundef @c, float noundef 0.000000e+00, i32 noundef -1)
  %470 = call i32 @set1d(ptr noundef @d, float noundef 0.000000e+00, i32 noundef -1)
  %471 = call i32 @set1d(ptr noundef @e, float noundef 0.000000e+00, i32 noundef -1)
  br label %1049

472:                                              ; preds = %461
  %473 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05MLKIPAHA@s279?5?$AA@") #13
  %474 = icmp ne i32 %473, 0
  br i1 %474, label %483, label %475

475:                                              ; preds = %472
  %476 = fneg float 1.000000e+00
  %477 = call i32 @set1ds(i32 noundef 16000, ptr noundef @a, float noundef %476, i32 noundef 1)
  %478 = call i32 @set1ds(i32 noundef 16000, ptr noundef getelementptr inbounds nuw (i8, ptr @a, i64 64000), float noundef 1.000000e+00, i32 noundef 1)
  %479 = call i32 @set1d(ptr noundef @b, float noundef 1.000000e+00, i32 noundef 1)
  %480 = call i32 @set1d(ptr noundef @c, float noundef 0.000000e+00, i32 noundef -1)
  %481 = call i32 @set1d(ptr noundef @d, float noundef 0.000000e+00, i32 noundef -1)
  %482 = call i32 @set1d(ptr noundef @e, float noundef 0.000000e+00, i32 noundef -1)
  br label %1048

483:                                              ; preds = %472
  %484 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05IPHJLDJJ@s2710?$AA@") #13
  %485 = icmp ne i32 %484, 0
  br i1 %485, label %492, label %486

486:                                              ; preds = %483
  %487 = call i32 @set1d(ptr noundef @a, float noundef 1.000000e+00, i32 noundef 1)
  %488 = call i32 @set1d(ptr noundef @b, float noundef 1.000000e+00, i32 noundef 1)
  %489 = call i32 @set1d(ptr noundef @c, float noundef 0.000000e+00, i32 noundef -1)
  %490 = call i32 @set1d(ptr noundef @d, float noundef 0.000000e+00, i32 noundef -1)
  %491 = call i32 @set1d(ptr noundef @e, float noundef 0.000000e+00, i32 noundef -1)
  br label %1047

492:                                              ; preds = %483
  %493 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05JGGCICNI@s2711?$AA@") #13
  %494 = icmp ne i32 %493, 0
  br i1 %494, label %499, label %495

495:                                              ; preds = %492
  %496 = call i32 @set1d(ptr noundef @a, float noundef 1.000000e+00, i32 noundef 1)
  %497 = call i32 @set1d(ptr noundef @b, float noundef 0.000000e+00, i32 noundef -1)
  %498 = call i32 @set1d(ptr noundef @c, float noundef 0.000000e+00, i32 noundef -1)
  br label %1046

499:                                              ; preds = %492
  %500 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05LNEPNBBL@s2712?$AA@") #13
  %501 = icmp ne i32 %500, 0
  br i1 %501, label %506, label %502

502:                                              ; preds = %499
  %503 = call i32 @set1d(ptr noundef @a, float noundef 1.000000e+00, i32 noundef 1)
  %504 = call i32 @set1d(ptr noundef @b, float noundef 0.000000e+00, i32 noundef -1)
  %505 = call i32 @set1d(ptr noundef @c, float noundef 0.000000e+00, i32 noundef -1)
  br label %1045

506:                                              ; preds = %499
  %507 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05JNNILBJO@s281?5?$AA@") #13
  %508 = icmp ne i32 %507, 0
  br i1 %508, label %513, label %509

509:                                              ; preds = %506
  %510 = call i32 @set1d(ptr noundef @a, float noundef 0.000000e+00, i32 noundef 1)
  %511 = call i32 @set1d(ptr noundef @b, float noundef 1.000000e+00, i32 noundef 1)
  %512 = call i32 @set1d(ptr noundef @c, float noundef 1.000000e+00, i32 noundef 1)
  br label %1044

513:                                              ; preds = %506
  %514 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05CFGENGPL@s291?5?$AA@") #13
  %515 = icmp ne i32 %514, 0
  br i1 %515, label %519, label %516

516:                                              ; preds = %513
  %517 = call i32 @set1d(ptr noundef @a, float noundef 0.000000e+00, i32 noundef 1)
  %518 = call i32 @set1d(ptr noundef @b, float noundef 1.000000e+00, i32 noundef 1)
  br label %1043

519:                                              ; preds = %513
  %520 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05CHCCGIKC@s292?5?$AA@") #13
  %521 = icmp ne i32 %520, 0
  br i1 %521, label %525, label %522

522:                                              ; preds = %519
  %523 = call i32 @set1d(ptr noundef @a, float noundef 0.000000e+00, i32 noundef 1)
  %524 = call i32 @set1d(ptr noundef @b, float noundef 1.000000e+00, i32 noundef 1)
  br label %1042

525:                                              ; preds = %519
  %526 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05CGOAACJF@s293?5?$AA@") #13
  %527 = icmp ne i32 %526, 0
  br i1 %527, label %530, label %528

528:                                              ; preds = %525
  %529 = call i32 @set1d(ptr noundef @a, float noundef 0.000000e+00, i32 noundef -1)
  br label %1041

530:                                              ; preds = %525
  %531 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05LCMLLHDD@s2101?$AA@") #13
  %532 = icmp ne i32 %531, 0
  br i1 %532, label %537, label %533

533:                                              ; preds = %530
  %534 = call i32 @set2d(ptr noundef @aa, float noundef 1.000000e+00, i32 noundef 1)
  %535 = call i32 @set2d(ptr noundef @bb, float noundef 0.000000e+00, i32 noundef -1)
  %536 = call i32 @set2d(ptr noundef @cc, float noundef 0.000000e+00, i32 noundef -1)
  br label %1040

537:                                              ; preds = %530
  %538 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05JJOGOEPA@s2102?$AA@") #13
  %539 = icmp ne i32 %538, 0
  br i1 %539, label %542, label %540

540:                                              ; preds = %537
  %541 = call i32 @set2d(ptr noundef @aa, float noundef 0.000000e+00, i32 noundef 1)
  br label %1039

542:                                              ; preds = %537
  %543 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05LDAJNNAE@s2111?$AA@") #13
  %544 = icmp ne i32 %543, 0
  br i1 %544, label %547, label %545

545:                                              ; preds = %542
  %546 = call i32 @set2d(ptr noundef @aa, float noundef 0.000000e+00, i32 noundef 1)
  br label %1038

547:                                              ; preds = %542
  %548 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05NNLANHKE@s311?5?$AA@") #13
  %549 = icmp ne i32 %548, 0
  br i1 %549, label %552, label %550

550:                                              ; preds = %547
  %551 = call i32 @set1d(ptr noundef @a, float noundef 0.000000e+00, i32 noundef -1)
  br label %1037

552:                                              ; preds = %547
  %553 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05NPPGGJPN@s312?5?$AA@") #13
  %554 = icmp ne i32 %553, 0
  br i1 %554, label %557, label %555

555:                                              ; preds = %552
  %556 = call i32 @set1d(ptr noundef @a, float noundef f0x3F800008, i32 noundef 1)
  br label %1036

557:                                              ; preds = %552
  %558 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05NODEADMK@s313?5?$AA@") #13
  %559 = icmp ne i32 %558, 0
  br i1 %559, label %563, label %560

560:                                              ; preds = %557
  %561 = call i32 @set1d(ptr noundef @a, float noundef 0.000000e+00, i32 noundef -1)
  %562 = call i32 @set1d(ptr noundef @b, float noundef 0.000000e+00, i32 noundef -1)
  br label %1035

563:                                              ; preds = %557
  %564 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05NLHLBFEP@s314?5?$AA@") #13
  %565 = icmp ne i32 %564, 0
  br i1 %565, label %568, label %566

566:                                              ; preds = %563
  %567 = call i32 @set1d(ptr noundef @a, float noundef 0.000000e+00, i32 noundef -1)
  br label %1034

568:                                              ; preds = %563
  %569 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05NKLJHPHI@s315?5?$AA@") #13
  %570 = icmp ne i32 %569, 0
  br i1 %570, label %573, label %571

571:                                              ; preds = %568
  %572 = call i32 @set1d(ptr noundef @a, float noundef 0.000000e+00, i32 noundef -1)
  br label %1033

573:                                              ; preds = %568
  %574 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05NIPPMBCB@s316?5?$AA@") #13
  %575 = icmp ne i32 %574, 0
  br i1 %575, label %578, label %576

576:                                              ; preds = %573
  %577 = call i32 @set1d(ptr noundef @a, float noundef 0.000000e+00, i32 noundef -1)
  br label %1032

578:                                              ; preds = %573
  %579 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05NJDNKLBG@s317?5?$AA@") #13
  %580 = icmp ne i32 %579, 0
  br i1 %580, label %582, label %581

581:                                              ; preds = %578
  br label %1031

582:                                              ; preds = %578
  %583 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05NCGBOMCL@s318?5?$AA@") #13
  %584 = icmp ne i32 %583, 0
  br i1 %584, label %588, label %585

585:                                              ; preds = %582
  %586 = call i32 @set1d(ptr noundef @a, float noundef 0.000000e+00, i32 noundef -1)
  %587 = fneg float 2.000000e+00
  store float %587, ptr getelementptr inbounds nuw (i8, ptr @a, i64 127996), align 4
  br label %1030

588:                                              ; preds = %582
  %589 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05NDKDIGBM@s319?5?$AA@") #13
  %590 = icmp ne i32 %589, 0
  br i1 %590, label %597, label %591

591:                                              ; preds = %588
  %592 = call i32 @set1d(ptr noundef @a, float noundef 0.000000e+00, i32 noundef 1)
  %593 = call i32 @set1d(ptr noundef @b, float noundef 0.000000e+00, i32 noundef 1)
  %594 = call i32 @set1d(ptr noundef @c, float noundef 0.000000e+00, i32 noundef -1)
  %595 = call i32 @set1d(ptr noundef @d, float noundef 0.000000e+00, i32 noundef -1)
  %596 = call i32 @set1d(ptr noundef @e, float noundef 0.000000e+00, i32 noundef -1)
  br label %1029

597:                                              ; preds = %588
  %598 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05JHHCMFPF@s3110?$AA@") #13
  %599 = icmp ne i32 %598, 0
  br i1 %599, label %602, label %600

600:                                              ; preds = %597
  %601 = call i32 @set2d(ptr noundef @aa, float noundef 0.000000e+00, i32 noundef -1)
  store float 2.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @aa, i64 262140), align 4
  br label %1028

602:                                              ; preds = %597
  %603 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05IOGJPELE@s3111?$AA@") #13
  %604 = icmp ne i32 %603, 0
  br i1 %604, label %607, label %605

605:                                              ; preds = %602
  %606 = call i32 @set1d(ptr noundef @a, float noundef 0.000000e+00, i32 noundef -1)
  br label %1027

607:                                              ; preds = %602
  %608 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05KFEEKHHH@s3112?$AA@") #13
  %609 = icmp ne i32 %608, 0
  br i1 %609, label %613, label %610

610:                                              ; preds = %607
  %611 = call i32 @set1d(ptr noundef @a, float noundef 0.000000e+00, i32 noundef -2)
  %612 = call i32 @set1d(ptr noundef @b, float noundef 0.000000e+00, i32 noundef 1)
  br label %1026

613:                                              ; preds = %607
  %614 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05LMFPJGDG@s3113?$AA@") #13
  %615 = icmp ne i32 %614, 0
  br i1 %615, label %619, label %616

616:                                              ; preds = %613
  %617 = call i32 @set1d(ptr noundef @a, float noundef 0.000000e+00, i32 noundef -1)
  %618 = fneg float 2.000000e+00
  store float %618, ptr getelementptr inbounds nuw (i8, ptr @a, i64 127996), align 4
  br label %1025

619:                                              ; preds = %613
  %620 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05MPAFHIEK@s321?5?$AA@") #13
  %621 = icmp ne i32 %620, 0
  br i1 %621, label %625, label %622

622:                                              ; preds = %619
  %623 = call i32 @set1d(ptr noundef @a, float noundef 1.000000e+00, i32 noundef 1)
  %624 = call i32 @set1d(ptr noundef @b, float noundef 0.000000e+00, i32 noundef 1)
  br label %1024

625:                                              ; preds = %619
  %626 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05MNEDMGBD@s322?5?$AA@") #13
  %627 = icmp ne i32 %626, 0
  br i1 %627, label %632, label %628

628:                                              ; preds = %625
  %629 = call i32 @set1d(ptr noundef @a, float noundef 1.000000e+00, i32 noundef 1)
  %630 = call i32 @set1d(ptr noundef @b, float noundef 0.000000e+00, i32 noundef 1)
  %631 = call i32 @set1d(ptr noundef @c, float noundef 0.000000e+00, i32 noundef 1)
  br label %1023

632:                                              ; preds = %625
  %633 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05MMIBKMCE@s323?5?$AA@") #13
  %634 = icmp ne i32 %633, 0
  br i1 %634, label %641, label %635

635:                                              ; preds = %632
  %636 = call i32 @set1d(ptr noundef @a, float noundef 1.000000e+00, i32 noundef 1)
  %637 = call i32 @set1d(ptr noundef @b, float noundef 1.000000e+00, i32 noundef 1)
  %638 = call i32 @set1d(ptr noundef @c, float noundef 0.000000e+00, i32 noundef -1)
  %639 = call i32 @set1d(ptr noundef @d, float noundef 0.000000e+00, i32 noundef -1)
  %640 = call i32 @set1d(ptr noundef @e, float noundef 0.000000e+00, i32 noundef -1)
  br label %1022

641:                                              ; preds = %632
  %642 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05HHLJBPCP@s331?5?$AA@") #13
  %643 = icmp ne i32 %642, 0
  br i1 %643, label %647, label %644

644:                                              ; preds = %641
  %645 = call i32 @set1d(ptr noundef @a, float noundef 0.000000e+00, i32 noundef -1)
  %646 = fneg float 1.000000e+00
  store float %646, ptr getelementptr inbounds nuw (i8, ptr @a, i64 127996), align 4
  br label %1021

647:                                              ; preds = %641
  %648 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05HFPPKBHG@s332?5?$AA@") #13
  %649 = icmp ne i32 %648, 0
  br i1 %649, label %652, label %650

650:                                              ; preds = %647
  %651 = call i32 @set1d(ptr noundef @a, float noundef 0.000000e+00, i32 noundef -2)
  store float 2.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @a, i64 127996), align 4
  br label %1020

652:                                              ; preds = %647
  %653 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05OKGOCHJG@s341?5?$AA@") #13
  %654 = icmp ne i32 %653, 0
  br i1 %654, label %658, label %655

655:                                              ; preds = %652
  %656 = call i32 @set1d(ptr noundef @a, float noundef 0.000000e+00, i32 noundef 1)
  %657 = call i32 @set1d(ptr noundef @b, float noundef 0.000000e+00, i32 noundef -1)
  br label %1019

658:                                              ; preds = %652
  %659 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05OICIJJMP@s342?5?$AA@") #13
  %660 = icmp ne i32 %659, 0
  br i1 %660, label %664, label %661

661:                                              ; preds = %658
  %662 = call i32 @set1d(ptr noundef @a, float noundef 0.000000e+00, i32 noundef -1)
  %663 = call i32 @set1d(ptr noundef @b, float noundef 0.000000e+00, i32 noundef -1)
  br label %1018

664:                                              ; preds = %658
  %665 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05OJOKPDPI@s343?5?$AA@") #13
  %666 = icmp ne i32 %665, 0
  br i1 %666, label %670, label %667

667:                                              ; preds = %664
  %668 = call i32 @set2d(ptr noundef @aa, float noundef 0.000000e+00, i32 noundef -1)
  %669 = call i32 @set2d(ptr noundef @bb, float noundef 1.000000e+00, i32 noundef 1)
  br label %1017

670:                                              ; preds = %664
  %671 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05FCNCEAPD@s351?5?$AA@") #13
  %672 = icmp ne i32 %671, 0
  br i1 %672, label %676, label %673

673:                                              ; preds = %670
  %674 = call i32 @set1d(ptr noundef @a, float noundef 1.000000e+00, i32 noundef 1)
  %675 = call i32 @set1d(ptr noundef @b, float noundef 1.000000e+00, i32 noundef 1)
  store float 1.000000e+00, ptr @c, align 16
  br label %1016

676:                                              ; preds = %670
  %677 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05FAJEPOKK@s352?5?$AA@") #13
  %678 = icmp ne i32 %677, 0
  br i1 %678, label %682, label %679

679:                                              ; preds = %676
  %680 = call i32 @set1d(ptr noundef @a, float noundef 0.000000e+00, i32 noundef -1)
  %681 = call i32 @set1d(ptr noundef @b, float noundef 0.000000e+00, i32 noundef -1)
  br label %1015

682:                                              ; preds = %676
  %683 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05FBFGJEJN@s353?5?$AA@") #13
  %684 = icmp ne i32 %683, 0
  br i1 %684, label %688, label %685

685:                                              ; preds = %682
  %686 = call i32 @set1d(ptr noundef @a, float noundef 1.000000e+00, i32 noundef 1)
  %687 = call i32 @set1d(ptr noundef @b, float noundef 1.000000e+00, i32 noundef 1)
  store float 1.000000e+00, ptr @c, align 16
  br label %1014

688:                                              ; preds = %682
  %689 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05GPJAALLE@s411?5?$AA@") #13
  %690 = icmp ne i32 %689, 0
  br i1 %690, label %695, label %691

691:                                              ; preds = %688
  %692 = call i32 @set1d(ptr noundef @a, float noundef 1.000000e+00, i32 noundef 1)
  %693 = call i32 @set1d(ptr noundef @b, float noundef 0.000000e+00, i32 noundef -1)
  %694 = call i32 @set1d(ptr noundef @c, float noundef 0.000000e+00, i32 noundef -1)
  br label %1013

695:                                              ; preds = %688
  %696 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05GNNGLFON@s412?5?$AA@") #13
  %697 = icmp ne i32 %696, 0
  br i1 %697, label %702, label %698

698:                                              ; preds = %695
  %699 = call i32 @set1d(ptr noundef @a, float noundef 1.000000e+00, i32 noundef 1)
  %700 = call i32 @set1d(ptr noundef @b, float noundef 0.000000e+00, i32 noundef -1)
  %701 = call i32 @set1d(ptr noundef @c, float noundef 0.000000e+00, i32 noundef -1)
  br label %1012

702:                                              ; preds = %695
  %703 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05GMBENPNK@s413?5?$AA@") #13
  %704 = icmp ne i32 %703, 0
  br i1 %704, label %711, label %705

705:                                              ; preds = %702
  %706 = call i32 @set1d(ptr noundef @a, float noundef 0.000000e+00, i32 noundef 1)
  %707 = call i32 @set1d(ptr noundef @b, float noundef 1.000000e+00, i32 noundef 1)
  %708 = call i32 @set1d(ptr noundef @c, float noundef 1.000000e+00, i32 noundef 1)
  %709 = call i32 @set1d(ptr noundef @d, float noundef 0.000000e+00, i32 noundef -1)
  %710 = call i32 @set1d(ptr noundef @e, float noundef 0.000000e+00, i32 noundef -1)
  br label %1011

711:                                              ; preds = %702
  %712 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05GJFLMJFP@s414?5?$AA@") #13
  %713 = icmp ne i32 %712, 0
  br i1 %713, label %718, label %714

714:                                              ; preds = %711
  %715 = call i32 @set2d(ptr noundef @aa, float noundef 1.000000e+00, i32 noundef 1)
  %716 = call i32 @set2d(ptr noundef @bb, float noundef 0.000000e+00, i32 noundef -1)
  %717 = call i32 @set2d(ptr noundef @cc, float noundef 0.000000e+00, i32 noundef -1)
  br label %1010

718:                                              ; preds = %711
  %719 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05GIJJKDGI@s415?5?$AA@") #13
  %720 = icmp ne i32 %719, 0
  br i1 %720, label %726, label %721

721:                                              ; preds = %718
  %722 = call i32 @set1d(ptr noundef @a, float noundef 1.000000e+00, i32 noundef 1)
  %723 = call i32 @set1d(ptr noundef @b, float noundef 0.000000e+00, i32 noundef -1)
  %724 = call i32 @set1d(ptr noundef @c, float noundef 0.000000e+00, i32 noundef -1)
  %725 = fneg float 1.000000e+00
  store float %725, ptr getelementptr inbounds nuw (i8, ptr @a, i64 127996), align 4
  br label %1009

726:                                              ; preds = %718
  %727 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05HNCFKEFK@s421?5?$AA@") #13
  %728 = icmp ne i32 %727, 0
  br i1 %728, label %731, label %729

729:                                              ; preds = %726
  %730 = call i32 @set1d(ptr noundef @a, float noundef 0.000000e+00, i32 noundef -2)
  br label %1008

731:                                              ; preds = %726
  %732 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05HPGDBKAD@s422?5?$AA@") #13
  %733 = icmp ne i32 %732, 0
  br i1 %733, label %737, label %734

734:                                              ; preds = %731
  %735 = call i32 @set1d(ptr noundef @array, float noundef 1.000000e+00, i32 noundef 1)
  %736 = call i32 @set1d(ptr noundef @a, float noundef 0.000000e+00, i32 noundef -2)
  br label %1007

737:                                              ; preds = %731
  %738 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05HOKBHADE@s423?5?$AA@") #13
  %739 = icmp ne i32 %738, 0
  br i1 %739, label %743, label %740

740:                                              ; preds = %737
  %741 = call i32 @set1d(ptr noundef @array, float noundef 0.000000e+00, i32 noundef 1)
  %742 = call i32 @set1d(ptr noundef @a, float noundef 0.000000e+00, i32 noundef -2)
  br label %1006

743:                                              ; preds = %737
  %744 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05HLOOGGLB@s424?5?$AA@") #13
  %745 = icmp ne i32 %744, 0
  br i1 %745, label %749, label %746

746:                                              ; preds = %743
  %747 = call i32 @set1d(ptr noundef @array, float noundef 1.000000e+00, i32 noundef 1)
  %748 = call i32 @set1d(ptr noundef @a, float noundef 0.000000e+00, i32 noundef -2)
  br label %1005

749:                                              ; preds = %743
  %750 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05MFJJMDDP@s431?5?$AA@") #13
  %751 = icmp ne i32 %750, 0
  br i1 %751, label %755, label %752

752:                                              ; preds = %749
  %753 = call i32 @set1d(ptr noundef @a, float noundef 1.000000e+00, i32 noundef 1)
  %754 = call i32 @set1d(ptr noundef @b, float noundef 0.000000e+00, i32 noundef -2)
  br label %1004

755:                                              ; preds = %749
  %756 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05MHNPHNGG@s432?5?$AA@") #13
  %757 = icmp ne i32 %756, 0
  br i1 %757, label %761, label %758

758:                                              ; preds = %755
  %759 = call i32 @set1d(ptr noundef @a, float noundef 1.000000e+00, i32 noundef 1)
  %760 = call i32 @set1d(ptr noundef @b, float noundef 0.000000e+00, i32 noundef -2)
  br label %1003

761:                                              ; preds = %755
  %762 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05FIEOPLIG@s441?5?$AA@") #13
  %763 = icmp ne i32 %762, 0
  br i1 %763, label %772, label %764

764:                                              ; preds = %761
  %765 = call i32 @set1d(ptr noundef @a, float noundef 1.000000e+00, i32 noundef 1)
  %766 = call i32 @set1d(ptr noundef @b, float noundef 0.000000e+00, i32 noundef -1)
  %767 = call i32 @set1d(ptr noundef @c, float noundef 0.000000e+00, i32 noundef -1)
  %768 = fneg float 1.000000e+00
  %769 = call i32 @set1ds(i32 noundef 10666, ptr noundef @d, float noundef %768, i32 noundef 1)
  %770 = call i32 @set1ds(i32 noundef 10666, ptr noundef getelementptr inbounds nuw (i8, ptr @d, i64 42664), float noundef 0.000000e+00, i32 noundef 1)
  %771 = call i32 @set1ds(i32 noundef 10667, ptr noundef getelementptr inbounds nuw (i8, ptr @d, i64 85332), float noundef 1.000000e+00, i32 noundef 1)
  br label %1002

772:                                              ; preds = %761
  %773 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05FKAIEFNP@s442?5?$AA@") #13
  %774 = icmp ne i32 %773, 0
  br i1 %774, label %781, label %775

775:                                              ; preds = %772
  %776 = call i32 @set1d(ptr noundef @a, float noundef 1.000000e+00, i32 noundef 1)
  %777 = call i32 @set1d(ptr noundef @b, float noundef 0.000000e+00, i32 noundef -1)
  %778 = call i32 @set1d(ptr noundef @c, float noundef 0.000000e+00, i32 noundef -1)
  %779 = call i32 @set1d(ptr noundef @d, float noundef 0.000000e+00, i32 noundef -1)
  %780 = call i32 @set1d(ptr noundef @e, float noundef 0.000000e+00, i32 noundef -1)
  br label %1001

781:                                              ; preds = %772
  %782 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05FLMKCPOI@s443?5?$AA@") #13
  %783 = icmp ne i32 %782, 0
  br i1 %783, label %788, label %784

784:                                              ; preds = %781
  %785 = call i32 @set1d(ptr noundef @a, float noundef 1.000000e+00, i32 noundef 1)
  %786 = call i32 @set1d(ptr noundef @b, float noundef 0.000000e+00, i32 noundef -1)
  %787 = call i32 @set1d(ptr noundef @c, float noundef 0.000000e+00, i32 noundef -1)
  br label %1000

788:                                              ; preds = %781
  %789 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05OAPCJMOD@s451?5?$AA@") #13
  %790 = icmp ne i32 %789, 0
  br i1 %790, label %794, label %791

791:                                              ; preds = %788
  %792 = call i32 @set1d(ptr noundef @b, float noundef 0.000000e+00, i32 noundef -1)
  %793 = call i32 @set1d(ptr noundef @c, float noundef 0.000000e+00, i32 noundef -1)
  br label %999

794:                                              ; preds = %788
  %795 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05OCLECCLK@s452?5?$AA@") #13
  %796 = icmp ne i32 %795, 0
  br i1 %796, label %801, label %797

797:                                              ; preds = %794
  %798 = call i32 @set1d(ptr noundef @a, float noundef 0.000000e+00, i32 noundef 1)
  %799 = call i32 @set1d(ptr noundef @b, float noundef 1.000000e+00, i32 noundef 1)
  %800 = call i32 @set1d(ptr noundef @c, float noundef f0x358637BD, i32 noundef 1)
  br label %998

801:                                              ; preds = %794
  %802 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05ODHGEIIN@s453?5?$AA@") #13
  %803 = icmp ne i32 %802, 0
  br i1 %803, label %807, label %804

804:                                              ; preds = %801
  %805 = call i32 @set1d(ptr noundef @a, float noundef 0.000000e+00, i32 noundef 1)
  %806 = call i32 @set1d(ptr noundef @b, float noundef 0.000000e+00, i32 noundef -2)
  br label %997

807:                                              ; preds = %801
  %808 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05EKPLFEGI@s471?5?$AA@") #13
  %809 = icmp ne i32 %808, 0
  br i1 %809, label %816, label %810

810:                                              ; preds = %807
  %811 = call i32 @set1d(ptr noundef @a, float noundef 1.000000e+00, i32 noundef 1)
  %812 = call i32 @set1d(ptr noundef @b, float noundef 1.000000e+00, i32 noundef 1)
  %813 = call i32 @set1d(ptr noundef @c, float noundef 1.000000e+00, i32 noundef 1)
  %814 = call i32 @set1d(ptr noundef @d, float noundef 0.000000e+00, i32 noundef -1)
  %815 = call i32 @set1d(ptr noundef @e, float noundef 0.000000e+00, i32 noundef -1)
  br label %996

816:                                              ; preds = %807
  %817 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05BCJIEEDO@s481?5?$AA@") #13
  %818 = icmp ne i32 %817, 0
  br i1 %818, label %824, label %819

819:                                              ; preds = %816
  %820 = call i32 @set1d(ptr noundef @a, float noundef 1.000000e+00, i32 noundef 1)
  %821 = call i32 @set1d(ptr noundef @b, float noundef 0.000000e+00, i32 noundef -1)
  %822 = call i32 @set1d(ptr noundef @c, float noundef 0.000000e+00, i32 noundef -1)
  %823 = call i32 @set1d(ptr noundef @d, float noundef 0.000000e+00, i32 noundef -1)
  br label %995

824:                                              ; preds = %816
  %825 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05BANOPKGH@s482?5?$AA@") #13
  %826 = icmp ne i32 %825, 0
  br i1 %826, label %831, label %827

827:                                              ; preds = %824
  %828 = call i32 @set1d(ptr noundef @a, float noundef 1.000000e+00, i32 noundef 1)
  %829 = call i32 @set1d(ptr noundef @b, float noundef 0.000000e+00, i32 noundef -1)
  %830 = call i32 @set1d(ptr noundef @c, float noundef 0.000000e+00, i32 noundef -1)
  br label %994

831:                                              ; preds = %824
  %832 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05KKCECDFL@s491?5?$AA@") #13
  %833 = icmp ne i32 %832, 0
  br i1 %833, label %839, label %834

834:                                              ; preds = %831
  %835 = call i32 @set1d(ptr noundef @a, float noundef 0.000000e+00, i32 noundef 1)
  %836 = call i32 @set1d(ptr noundef @b, float noundef 1.000000e+00, i32 noundef 1)
  %837 = call i32 @set1d(ptr noundef @c, float noundef 0.000000e+00, i32 noundef -1)
  %838 = call i32 @set1d(ptr noundef @d, float noundef 0.000000e+00, i32 noundef -1)
  br label %993

839:                                              ; preds = %831
  %840 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05BHGEHLGH@s4112?$AA@") #13
  %841 = icmp ne i32 %840, 0
  br i1 %841, label %845, label %842

842:                                              ; preds = %839
  %843 = call i32 @set1d(ptr noundef @a, float noundef 1.000000e+00, i32 noundef 1)
  %844 = call i32 @set1d(ptr noundef @b, float noundef 0.000000e+00, i32 noundef -1)
  br label %992

845:                                              ; preds = %839
  %846 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05OHPEKCG@s4113?$AA@") #13
  %847 = icmp ne i32 %846, 0
  br i1 %847, label %852, label %848

848:                                              ; preds = %845
  %849 = call i32 @set1d(ptr noundef @a, float noundef 0.000000e+00, i32 noundef 1)
  %850 = call i32 @set1d(ptr noundef @b, float noundef 1.000000e+00, i32 noundef 1)
  %851 = call i32 @set1d(ptr noundef @c, float noundef 0.000000e+00, i32 noundef -2)
  br label %991

852:                                              ; preds = %845
  %853 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05EBDONMOB@s4114?$AA@") #13
  %854 = icmp ne i32 %853, 0
  br i1 %854, label %860, label %855

855:                                              ; preds = %852
  %856 = call i32 @set1d(ptr noundef @a, float noundef 0.000000e+00, i32 noundef 1)
  %857 = call i32 @set1d(ptr noundef @b, float noundef 1.000000e+00, i32 noundef 1)
  %858 = call i32 @set1d(ptr noundef @c, float noundef 0.000000e+00, i32 noundef -1)
  %859 = call i32 @set1d(ptr noundef @d, float noundef 0.000000e+00, i32 noundef -1)
  br label %990

860:                                              ; preds = %852
  %861 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05FICFONKA@s4115?$AA@") #13
  %862 = icmp ne i32 %861, 0
  br i1 %862, label %866, label %863

863:                                              ; preds = %860
  %864 = call i32 @set1d(ptr noundef @a, float noundef 0.000000e+00, i32 noundef -1)
  %865 = call i32 @set1d(ptr noundef @b, float noundef 0.000000e+00, i32 noundef -1)
  br label %989

866:                                              ; preds = %860
  %867 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05HDAILOGD@s4116?$AA@") #13
  %868 = icmp ne i32 %867, 0
  br i1 %868, label %872, label %869

869:                                              ; preds = %866
  %870 = call i32 @set1d(ptr noundef @a, float noundef 0.000000e+00, i32 noundef -1)
  %871 = call i32 @set2d(ptr noundef @aa, float noundef 0.000000e+00, i32 noundef -1)
  br label %988

872:                                              ; preds = %866
  %873 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05GKBDIPCC@s4117?$AA@") #13
  %874 = icmp ne i32 %873, 0
  br i1 %874, label %880, label %875

875:                                              ; preds = %872
  %876 = call i32 @set1d(ptr noundef @a, float noundef 0.000000e+00, i32 noundef 1)
  %877 = call i32 @set1d(ptr noundef @b, float noundef 1.000000e+00, i32 noundef 1)
  %878 = call i32 @set1d(ptr noundef @c, float noundef 0.000000e+00, i32 noundef -1)
  %879 = call i32 @set1d(ptr noundef @d, float noundef 0.000000e+00, i32 noundef -1)
  br label %987

880:                                              ; preds = %872
  %881 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05DOAPJGPN@s4121?$AA@") #13
  %882 = icmp ne i32 %881, 0
  br i1 %882, label %887, label %883

883:                                              ; preds = %880
  %884 = call i32 @set1d(ptr noundef @a, float noundef 1.000000e+00, i32 noundef 1)
  %885 = call i32 @set1d(ptr noundef @b, float noundef 0.000000e+00, i32 noundef -1)
  %886 = call i32 @set1d(ptr noundef @c, float noundef 0.000000e+00, i32 noundef -1)
  br label %986

887:                                              ; preds = %880
  %888 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_03IDIMFPN@va?7?$AA@") #13
  %889 = icmp ne i32 %888, 0
  br i1 %889, label %893, label %890

890:                                              ; preds = %887
  %891 = call i32 @set1d(ptr noundef @a, float noundef 0.000000e+00, i32 noundef 1)
  %892 = call i32 @set1d(ptr noundef @b, float noundef 0.000000e+00, i32 noundef -2)
  br label %985

893:                                              ; preds = %887
  %894 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05DMCMEDIF@vag?5?5?$AA@") #13
  %895 = icmp ne i32 %894, 0
  br i1 %895, label %899, label %896

896:                                              ; preds = %893
  %897 = call i32 @set1d(ptr noundef @a, float noundef 0.000000e+00, i32 noundef 1)
  %898 = call i32 @set1d(ptr noundef @b, float noundef 0.000000e+00, i32 noundef -2)
  br label %984

899:                                              ; preds = %893
  %900 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05ODFHIDEN@vas?5?5?$AA@") #13
  %901 = icmp ne i32 %900, 0
  br i1 %901, label %905, label %902

902:                                              ; preds = %899
  %903 = call i32 @set1d(ptr noundef @a, float noundef 0.000000e+00, i32 noundef 1)
  %904 = call i32 @set1d(ptr noundef @b, float noundef 0.000000e+00, i32 noundef -2)
  br label %983

905:                                              ; preds = %899
  %906 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05LEOAGPCB@vif?5?5?$AA@") #13
  %907 = icmp ne i32 %906, 0
  br i1 %907, label %911, label %908

908:                                              ; preds = %905
  %909 = call i32 @set1d(ptr noundef @a, float noundef 0.000000e+00, i32 noundef 1)
  %910 = call i32 @set1d(ptr noundef @b, float noundef 0.000000e+00, i32 noundef -2)
  br label %982

911:                                              ; preds = %905
  %912 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05IJAJMNEN@vpv?5?5?$AA@") #13
  %913 = icmp ne i32 %912, 0
  br i1 %913, label %917, label %914

914:                                              ; preds = %911
  %915 = call i32 @set1d(ptr noundef @a, float noundef 0.000000e+00, i32 noundef 1)
  %916 = call i32 @set1d(ptr noundef @b, float noundef 0.000000e+00, i32 noundef -2)
  br label %981

917:                                              ; preds = %911
  %918 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05HMIJGLIN@vtv?5?5?$AA@") #13
  %919 = icmp ne i32 %918, 0
  br i1 %919, label %923, label %920

920:                                              ; preds = %917
  %921 = call i32 @set1d(ptr noundef @a, float noundef 1.000000e+00, i32 noundef 1)
  %922 = call i32 @set1d(ptr noundef @b, float noundef 1.000000e+00, i32 noundef 1)
  br label %980

923:                                              ; preds = %917
  %924 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05OFNLBPD@vpvtv?$AA@") #13
  %925 = icmp ne i32 %924, 0
  br i1 %925, label %930, label %926

926:                                              ; preds = %923
  %927 = call i32 @set1d(ptr noundef @a, float noundef 1.000000e+00, i32 noundef 1)
  %928 = call i32 @set1d(ptr noundef @b, float noundef 0.000000e+00, i32 noundef -1)
  %929 = call i32 @set1d(ptr noundef @c, float noundef 0.000000e+00, i32 noundef -1)
  br label %979

930:                                              ; preds = %923
  %931 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05HDCKEFLG@vpvts?$AA@") #13
  %932 = icmp ne i32 %931, 0
  br i1 %932, label %936, label %933

933:                                              ; preds = %930
  %934 = call i32 @set1d(ptr noundef @a, float noundef 1.000000e+00, i32 noundef 1)
  %935 = call i32 @set1d(ptr noundef @b, float noundef 0.000000e+00, i32 noundef -2)
  br label %978

936:                                              ; preds = %930
  %937 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05JFEBJCP@vpvpv?$AA@") #13
  %938 = icmp ne i32 %937, 0
  br i1 %938, label %944, label %939

939:                                              ; preds = %936
  %940 = call i32 @set1d(ptr noundef @a, float noundef 0.000000e+00, i32 noundef -2)
  %941 = call i32 @set1d(ptr noundef @b, float noundef 1.000000e+00, i32 noundef 1)
  %942 = fneg float 1.000000e+00
  %943 = call i32 @set1d(ptr noundef @c, float noundef %942, i32 noundef 1)
  br label %977

944:                                              ; preds = %936
  %945 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05PLNNBHDD@vtvtv?$AA@") #13
  %946 = icmp ne i32 %945, 0
  br i1 %946, label %951, label %947

947:                                              ; preds = %944
  %948 = call i32 @set1d(ptr noundef @a, float noundef 1.000000e+00, i32 noundef 1)
  %949 = call i32 @set1d(ptr noundef @b, float noundef 2.000000e+00, i32 noundef 1)
  %950 = call i32 @set1d(ptr noundef @c, float noundef 5.000000e-01, i32 noundef 1)
  br label %976

951:                                              ; preds = %944
  %952 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05CMNDDJDG@vsumr?$AA@") #13
  %953 = icmp ne i32 %952, 0
  br i1 %953, label %956, label %954

954:                                              ; preds = %951
  %955 = call i32 @set1d(ptr noundef @a, float noundef 0.000000e+00, i32 noundef -1)
  br label %975

956:                                              ; preds = %951
  %957 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05NCEAFNKA@vdotr?$AA@") #13
  %958 = icmp ne i32 %957, 0
  br i1 %958, label %962, label %959

959:                                              ; preds = %956
  %960 = call i32 @set1d(ptr noundef @a, float noundef 0.000000e+00, i32 noundef -1)
  %961 = call i32 @set1d(ptr noundef @b, float noundef 0.000000e+00, i32 noundef -1)
  br label %974

962:                                              ; preds = %956
  %963 = call i32 @strcmp(ptr noundef %0, ptr noundef @"??_C@_05NBAAOLGE@vbor?5?$AA@") #13
  %964 = icmp ne i32 %963, 0
  br i1 %964, label %972, label %965

965:                                              ; preds = %962
  %966 = call i32 @set1d(ptr noundef @a, float noundef 0.000000e+00, i32 noundef -1)
  %967 = call i32 @set1d(ptr noundef @b, float noundef 0.000000e+00, i32 noundef -1)
  %968 = call i32 @set1d(ptr noundef @c, float noundef 1.000000e+00, i32 noundef -1)
  %969 = call i32 @set1d(ptr noundef @d, float noundef 2.000000e+00, i32 noundef -1)
  %970 = call i32 @set1d(ptr noundef @e, float noundef 5.000000e-01, i32 noundef -1)
  %971 = call i32 @set2d(ptr noundef @aa, float noundef 0.000000e+00, i32 noundef -1)
  br label %973

972:                                              ; preds = %962
  br label %973

973:                                              ; preds = %972, %965
  br label %974

974:                                              ; preds = %973, %959
  br label %975

975:                                              ; preds = %974, %954
  br label %976

976:                                              ; preds = %975, %947
  br label %977

977:                                              ; preds = %976, %939
  br label %978

978:                                              ; preds = %977, %933
  br label %979

979:                                              ; preds = %978, %926
  br label %980

980:                                              ; preds = %979, %920
  br label %981

981:                                              ; preds = %980, %914
  br label %982

982:                                              ; preds = %981, %908
  br label %983

983:                                              ; preds = %982, %902
  br label %984

984:                                              ; preds = %983, %896
  br label %985

985:                                              ; preds = %984, %890
  br label %986

986:                                              ; preds = %985, %883
  br label %987

987:                                              ; preds = %986, %875
  br label %988

988:                                              ; preds = %987, %869
  br label %989

989:                                              ; preds = %988, %863
  br label %990

990:                                              ; preds = %989, %855
  br label %991

991:                                              ; preds = %990, %848
  br label %992

992:                                              ; preds = %991, %842
  br label %993

993:                                              ; preds = %992, %834
  br label %994

994:                                              ; preds = %993, %827
  br label %995

995:                                              ; preds = %994, %819
  br label %996

996:                                              ; preds = %995, %810
  br label %997

997:                                              ; preds = %996, %804
  br label %998

998:                                              ; preds = %997, %797
  br label %999

999:                                              ; preds = %998, %791
  br label %1000

1000:                                             ; preds = %999, %784
  br label %1001

1001:                                             ; preds = %1000, %775
  br label %1002

1002:                                             ; preds = %1001, %764
  br label %1003

1003:                                             ; preds = %1002, %758
  br label %1004

1004:                                             ; preds = %1003, %752
  br label %1005

1005:                                             ; preds = %1004, %746
  br label %1006

1006:                                             ; preds = %1005, %740
  br label %1007

1007:                                             ; preds = %1006, %734
  br label %1008

1008:                                             ; preds = %1007, %729
  br label %1009

1009:                                             ; preds = %1008, %721
  br label %1010

1010:                                             ; preds = %1009, %714
  br label %1011

1011:                                             ; preds = %1010, %705
  br label %1012

1012:                                             ; preds = %1011, %698
  br label %1013

1013:                                             ; preds = %1012, %691
  br label %1014

1014:                                             ; preds = %1013, %685
  br label %1015

1015:                                             ; preds = %1014, %679
  br label %1016

1016:                                             ; preds = %1015, %673
  br label %1017

1017:                                             ; preds = %1016, %667
  br label %1018

1018:                                             ; preds = %1017, %661
  br label %1019

1019:                                             ; preds = %1018, %655
  br label %1020

1020:                                             ; preds = %1019, %650
  br label %1021

1021:                                             ; preds = %1020, %644
  br label %1022

1022:                                             ; preds = %1021, %635
  br label %1023

1023:                                             ; preds = %1022, %628
  br label %1024

1024:                                             ; preds = %1023, %622
  br label %1025

1025:                                             ; preds = %1024, %616
  br label %1026

1026:                                             ; preds = %1025, %610
  br label %1027

1027:                                             ; preds = %1026, %605
  br label %1028

1028:                                             ; preds = %1027, %600
  br label %1029

1029:                                             ; preds = %1028, %591
  br label %1030

1030:                                             ; preds = %1029, %585
  br label %1031

1031:                                             ; preds = %1030, %581
  br label %1032

1032:                                             ; preds = %1031, %576
  br label %1033

1033:                                             ; preds = %1032, %571
  br label %1034

1034:                                             ; preds = %1033, %566
  br label %1035

1035:                                             ; preds = %1034, %560
  br label %1036

1036:                                             ; preds = %1035, %555
  br label %1037

1037:                                             ; preds = %1036, %550
  br label %1038

1038:                                             ; preds = %1037, %545
  br label %1039

1039:                                             ; preds = %1038, %540
  br label %1040

1040:                                             ; preds = %1039, %533
  br label %1041

1041:                                             ; preds = %1040, %528
  br label %1042

1042:                                             ; preds = %1041, %522
  br label %1043

1043:                                             ; preds = %1042, %516
  br label %1044

1044:                                             ; preds = %1043, %509
  br label %1045

1045:                                             ; preds = %1044, %502
  br label %1046

1046:                                             ; preds = %1045, %495
  br label %1047

1047:                                             ; preds = %1046, %486
  br label %1048

1048:                                             ; preds = %1047, %475
  br label %1049

1049:                                             ; preds = %1048, %464
  br label %1050

1050:                                             ; preds = %1049, %453
  br label %1051

1051:                                             ; preds = %1050, %445
  br label %1052

1052:                                             ; preds = %1051, %438
  br label %1053

1053:                                             ; preds = %1052, %429
  br label %1054

1054:                                             ; preds = %1053, %420
  br label %1055

1055:                                             ; preds = %1054, %411
  br label %1056

1056:                                             ; preds = %1055, %404
  br label %1057

1057:                                             ; preds = %1056, %396
  br label %1058

1058:                                             ; preds = %1057, %386
  br label %1059

1059:                                             ; preds = %1058, %379
  br label %1060

1060:                                             ; preds = %1059, %372
  br label %1061

1061:                                             ; preds = %1060, %366
  br label %1062

1062:                                             ; preds = %1061, %360
  br label %1063

1063:                                             ; preds = %1062, %352
  br label %1064

1064:                                             ; preds = %1063, %345
  br label %1065

1065:                                             ; preds = %1064, %336
  br label %1066

1066:                                             ; preds = %1065, %328
  br label %1067

1067:                                             ; preds = %1066, %319
  br label %1068

1068:                                             ; preds = %1067, %311
  br label %1069

1069:                                             ; preds = %1068, %303
  br label %1070

1070:                                             ; preds = %1069, %294
  br label %1071

1071:                                             ; preds = %1070, %287
  br label %1072

1072:                                             ; preds = %1071, %280
  br label %1073

1073:                                             ; preds = %1072, %274
  br label %1074

1074:                                             ; preds = %1073, %268
  br label %1075

1075:                                             ; preds = %1074, %261
  br label %1076

1076:                                             ; preds = %1075, %253
  br label %1077

1077:                                             ; preds = %1076, %245
  br label %1078

1078:                                             ; preds = %1077, %236
  br label %1079

1079:                                             ; preds = %1078, %229
  br label %1080

1080:                                             ; preds = %1079, %223
  br label %1081

1081:                                             ; preds = %1080, %217
  br label %1082

1082:                                             ; preds = %1081, %211
  br label %1083

1083:                                             ; preds = %1082, %205
  br label %1084

1084:                                             ; preds = %1083, %199
  br label %1085

1085:                                             ; preds = %1084, %192
  br label %1086

1086:                                             ; preds = %1085, %181
  br label %1087

1087:                                             ; preds = %1086, %172
  br label %1088

1088:                                             ; preds = %1087, %166
  br label %1089

1089:                                             ; preds = %1088, %160
  br label %1090

1090:                                             ; preds = %1089, %153
  br label %1091

1091:                                             ; preds = %1090, %147
  br label %1092

1092:                                             ; preds = %1091, %139
  br label %1093

1093:                                             ; preds = %1092, %130
  br label %1094

1094:                                             ; preds = %1093, %123
  br label %1095

1095:                                             ; preds = %1094, %115
  br label %1096

1096:                                             ; preds = %1095, %106
  br label %1097

1097:                                             ; preds = %1096, %97
  br label %1098

1098:                                             ; preds = %1097, %91
  br label %1099

1099:                                             ; preds = %1098, %85
  br label %1100

1100:                                             ; preds = %1099, %79
  br label %1101

1101:                                             ; preds = %1100, %73
  br label %1102

1102:                                             ; preds = %1101, %68
  br label %1103

1103:                                             ; preds = %1102, %60
  br label %1104

1104:                                             ; preds = %1103, %54
  br label %1105

1105:                                             ; preds = %1104, %48
  br label %1106

1106:                                             ; preds = %1105, %42
  br label %1107

1107:                                             ; preds = %1106, %33
  br label %1108

1108:                                             ; preds = %1107, %29
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @strcmp(ptr noundef, ptr noundef) #8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s000() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05CDGOKACG@s000?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %16
  %.013 = phi i32 [ 0, %0 ], [ %17, %16 ]
  br label %4

4:                                                ; preds = %3, %11
  %.02 = phi i32 [ 0, %3 ], [ %12, %11 ]
  %5 = sext i32 %.02 to i64
  %6 = getelementptr inbounds [32000 x float], ptr @Y, i64 0, i64 %5
  %7 = load float, ptr %6, align 4
  %8 = fadd float %7, 1.000000e+00
  %9 = sext i32 %.02 to i64
  %10 = getelementptr inbounds [32000 x float], ptr @X, i64 0, i64 %9
  store float %8, ptr %10, align 4
  br label %11

11:                                               ; preds = %4
  %12 = add i32 %.02, 1
  %13 = icmp slt i32 %12, 32000
  br i1 %13, label %4, label %14, !llvm.loop !43

14:                                               ; preds = %11
  %15 = call i32 @dummy(ptr noundef @X, ptr noundef @Y, ptr noundef @Z, ptr noundef @U, ptr noundef @V, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %16

16:                                               ; preds = %14
  %17 = add i32 %.013, 1
  %18 = icmp slt i32 %17, 512
  br i1 %18, label %3, label %19, !llvm.loop !44

19:                                               ; preds = %16
  %20 = call i32 @clock()
  %21 = sub i32 %20, %2
  %22 = sitofp i32 %21 to double
  %23 = fdiv double %22, 1.000000e+06
  %24 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@DPAFHEGA@S000?7?5?$CF?42f?5?7?7?$AA@", double noundef %23)
  call void @check(i32 noundef 1)
  ret i32 0
}

declare dso_local i32 @clock() #9

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dummy(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, float noundef %8) #7 {
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s111() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05KHHAIEME@s111?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %20
  %.013 = phi i32 [ 0, %0 ], [ %21, %20 ]
  br label %4

4:                                                ; preds = %3, %15
  %.02 = phi i32 [ 1, %3 ], [ %16, %15 ]
  %5 = sub i32 %.02, 1
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %6
  %8 = load float, ptr %7, align 4
  %9 = sext i32 %.02 to i64
  %10 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %9
  %11 = load float, ptr %10, align 4
  %12 = fadd float %8, %11
  %13 = sext i32 %.02 to i64
  %14 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %13
  store float %12, ptr %14, align 4
  br label %15

15:                                               ; preds = %4
  %16 = add i32 %.02, 2
  %17 = icmp slt i32 %16, 32000
  br i1 %17, label %4, label %18, !llvm.loop !45

18:                                               ; preds = %15
  %19 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %20

20:                                               ; preds = %18
  %21 = add i32 %.013, 1
  %22 = icmp slt i32 %21, 512
  br i1 %22, label %3, label %23, !llvm.loop !46

23:                                               ; preds = %20
  %24 = call i32 @clock()
  %25 = sub i32 %24, %2
  %26 = sitofp i32 %25 to double
  %27 = fdiv double %26, 1.000000e+06
  %28 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@LILIDOEK@S111?7?5?$CF?42f?5?7?7?$AA@", double noundef %27)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s1111() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05KHHAIEME@s111?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %48
  %.013 = phi i32 [ 0, %0 ], [ %49, %48 ]
  br label %4

4:                                                ; preds = %3, %43
  %.02 = phi i32 [ 0, %3 ], [ %44, %43 ]
  %5 = sext i32 %.02 to i64
  %6 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %5
  %7 = load float, ptr %6, align 4
  %8 = sext i32 %.02 to i64
  %9 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %8
  %10 = load float, ptr %9, align 4
  %11 = sext i32 %.02 to i64
  %12 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %11
  %13 = load float, ptr %12, align 4
  %14 = sext i32 %.02 to i64
  %15 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %14
  %16 = load float, ptr %15, align 4
  %17 = fmul float %13, %16
  %18 = call float @llvm.fmuladd.f32(float %7, float %10, float %17)
  %19 = sext i32 %.02 to i64
  %20 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %19
  %21 = load float, ptr %20, align 4
  %22 = sext i32 %.02 to i64
  %23 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %22
  %24 = load float, ptr %23, align 4
  %25 = call float @llvm.fmuladd.f32(float %21, float %24, float %18)
  %26 = sext i32 %.02 to i64
  %27 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %26
  %28 = load float, ptr %27, align 4
  %29 = sext i32 %.02 to i64
  %30 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %29
  %31 = load float, ptr %30, align 4
  %32 = call float @llvm.fmuladd.f32(float %28, float %31, float %25)
  %33 = sext i32 %.02 to i64
  %34 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %33
  %35 = load float, ptr %34, align 4
  %36 = sext i32 %.02 to i64
  %37 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %36
  %38 = load float, ptr %37, align 4
  %39 = call float @llvm.fmuladd.f32(float %35, float %38, float %32)
  %40 = mul i32 2, %.02
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %41
  store float %39, ptr %42, align 4
  br label %43

43:                                               ; preds = %4
  %44 = add i32 %.02, 1
  %45 = icmp slt i32 %44, 16000
  br i1 %45, label %4, label %46, !llvm.loop !47

46:                                               ; preds = %43
  %47 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %48

48:                                               ; preds = %46
  %49 = add i32 %.013, 1
  %50 = icmp slt i32 %49, 512
  br i1 %50, label %3, label %51, !llvm.loop !48

51:                                               ; preds = %48
  %52 = call i32 @clock()
  %53 = sub i32 %52, %2
  %54 = sitofp i32 %53 to double
  %55 = fdiv double %54, 1.000000e+06
  %56 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0BA@DDHEPEEE@S1111?7?5?$CF?42f?5?7?7?5?$AA@", double noundef %55)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #10

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s112() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05KFDGDKJN@s112?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %20
  %.013 = phi i32 [ 0, %0 ], [ %21, %20 ]
  br label %4

4:                                                ; preds = %3, %15
  %.02 = phi i32 [ 31998, %3 ], [ %16, %15 ]
  %5 = sext i32 %.02 to i64
  %6 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %5
  %7 = load float, ptr %6, align 4
  %8 = sext i32 %.02 to i64
  %9 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %8
  %10 = load float, ptr %9, align 4
  %11 = fadd float %7, %10
  %12 = add i32 %.02, 1
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %13
  store float %11, ptr %14, align 4
  br label %15

15:                                               ; preds = %4
  %16 = add i32 %.02, -1
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %4, label %18, !llvm.loop !49

18:                                               ; preds = %15
  %19 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %20

20:                                               ; preds = %18
  %21 = add i32 %.013, 1
  %22 = icmp slt i32 %21, 768
  br i1 %22, label %3, label %23, !llvm.loop !50

23:                                               ; preds = %20
  %24 = call i32 @clock()
  %25 = sub i32 %24, %2
  %26 = sitofp i32 %25 to double
  %27 = fdiv double %26, 1.000000e+06
  %28 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@CBFKFIEL@S112?7?5?$CF?42f?5?7?7?$AA@", double noundef %27)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s1112() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05KFDGDKJN@s112?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %16
  %.013 = phi i32 [ 0, %0 ], [ %17, %16 ]
  br label %4

4:                                                ; preds = %3, %11
  %.02 = phi i32 [ 31999, %3 ], [ %12, %11 ]
  %5 = sext i32 %.02 to i64
  %6 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %5
  %7 = load float, ptr %6, align 4
  %8 = fadd float %7, 1.000000e+00
  %9 = sext i32 %.02 to i64
  %10 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %9
  store float %8, ptr %10, align 4
  br label %11

11:                                               ; preds = %4
  %12 = add i32 %.02, -1
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %4, label %14, !llvm.loop !51

14:                                               ; preds = %11
  %15 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %16

16:                                               ; preds = %14
  %17 = add i32 %.013, 1
  %18 = icmp slt i32 %17, 768
  br i1 %18, label %3, label %19, !llvm.loop !52

19:                                               ; preds = %16
  %20 = call i32 @clock()
  %21 = sub i32 %20, %2
  %22 = sitofp i32 %21 to double
  %23 = fdiv double %22, 1.000000e+06
  %24 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0BA@EEOKCGLE@S1112?7?5?$CF?42f?5?7?7?5?$AA@", double noundef %23)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s113() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05KEPEFAKK@s113?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %17
  %.013 = phi i32 [ 0, %0 ], [ %18, %17 ]
  br label %4

4:                                                ; preds = %3, %12
  %.02 = phi i32 [ 1, %3 ], [ %13, %12 ]
  %5 = load float, ptr @a, align 16
  %6 = sext i32 %.02 to i64
  %7 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %6
  %8 = load float, ptr %7, align 4
  %9 = fadd float %5, %8
  %10 = sext i32 %.02 to i64
  %11 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %10
  store float %9, ptr %11, align 4
  br label %12

12:                                               ; preds = %4
  %13 = add i32 %.02, 1
  %14 = icmp slt i32 %13, 32000
  br i1 %14, label %4, label %15, !llvm.loop !53

15:                                               ; preds = %12
  %16 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %17

17:                                               ; preds = %15
  %18 = add i32 %.013, 1
  %19 = icmp slt i32 %18, 1024
  br i1 %19, label %3, label %20, !llvm.loop !54

20:                                               ; preds = %17
  %21 = call i32 @clock()
  %22 = sub i32 %21, %2
  %23 = sitofp i32 %22 to double
  %24 = fdiv double %23, 1.000000e+06
  %25 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@OANEIHIL@S113?7?5?$CF?42f?5?7?7?$AA@", double noundef %24)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s1113() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05KEPEFAKK@s113?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %17
  %.013 = phi i32 [ 0, %0 ], [ %18, %17 ]
  br label %4

4:                                                ; preds = %3, %12
  %.02 = phi i32 [ 0, %3 ], [ %13, %12 ]
  %5 = load float, ptr getelementptr inbounds nuw (i8, ptr @a, i64 64000), align 16
  %6 = sext i32 %.02 to i64
  %7 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %6
  %8 = load float, ptr %7, align 4
  %9 = fadd float %5, %8
  %10 = sext i32 %.02 to i64
  %11 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %10
  store float %9, ptr %11, align 4
  br label %12

12:                                               ; preds = %4
  %13 = add i32 %.02, 1
  %14 = icmp slt i32 %13, 32000
  br i1 %14, label %4, label %15, !llvm.loop !55

15:                                               ; preds = %12
  %16 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %17

17:                                               ; preds = %15
  %18 = add i32 %.013, 1
  %19 = icmp slt i32 %18, 512
  br i1 %19, label %3, label %20, !llvm.loop !56

20:                                               ; preds = %17
  %21 = call i32 @clock()
  %22 = sub i32 %21, %2
  %23 = sitofp i32 %22 to double
  %24 = fdiv double %23, 1.000000e+06
  %25 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@BEOLDIGE@S1113?7?5?$CF?42f?5?7?7?$AA@", double noundef %24)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s114() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05KBLLEGCP@s114?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %31
  %.025 = phi i32 [ 0, %0 ], [ %32, %31 ]
  br label %4

4:                                                ; preds = %3, %26
  %.014 = phi i32 [ 0, %3 ], [ %27, %26 ]
  %5 = icmp slt i32 0, %.014
  br i1 %5, label %.lr.ph, label %25

.lr.ph:                                           ; preds = %4
  br label %6

6:                                                ; preds = %.lr.ph, %22
  %.03 = phi i32 [ 0, %.lr.ph ], [ %23, %22 ]
  %7 = sext i32 %.03 to i64
  %8 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %7
  %9 = sext i32 %.014 to i64
  %10 = getelementptr inbounds [256 x float], ptr %8, i64 0, i64 %9
  %11 = load float, ptr %10, align 4
  %12 = sext i32 %.014 to i64
  %13 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %12
  %14 = sext i32 %.03 to i64
  %15 = getelementptr inbounds [256 x float], ptr %13, i64 0, i64 %14
  %16 = load float, ptr %15, align 4
  %17 = fadd float %11, %16
  %18 = sext i32 %.014 to i64
  %19 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %18
  %20 = sext i32 %.03 to i64
  %21 = getelementptr inbounds [256 x float], ptr %19, i64 0, i64 %20
  store float %17, ptr %21, align 4
  br label %22

22:                                               ; preds = %6
  %23 = add i32 %.03, 1
  %24 = icmp slt i32 %23, %.014
  br i1 %24, label %6, label %._crit_edge, !llvm.loop !57

._crit_edge:                                      ; preds = %22
  br label %25

25:                                               ; preds = %._crit_edge, %4
  br label %26

26:                                               ; preds = %25
  %27 = add i32 %.014, 1
  %28 = icmp slt i32 %27, 256
  br i1 %28, label %4, label %29, !llvm.loop !58

29:                                               ; preds = %26
  %30 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %31

31:                                               ; preds = %29
  %32 = add i32 %.025, 1
  %33 = icmp slt i32 %32, 200
  br i1 %33, label %3, label %34, !llvm.loop !59

34:                                               ; preds = %31
  %35 = call i32 @clock()
  %36 = sub i32 %35, %2
  %37 = sitofp i32 %36 to double
  %38 = fdiv double %37, 1.000000e+06
  %39 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@MJOPJCAI@S114?7?5?$CF?42f?5?7?7?$AA@", double noundef %38)
  call void @check(i32 noundef 11)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s115() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05KAHJCMBI@s115?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %30
  %.025 = phi i32 [ 0, %0 ], [ %31, %30 ]
  br label %4

4:                                                ; preds = %3, %25
  %.014 = phi i32 [ 0, %3 ], [ %26, %25 ]
  %5 = add i32 %.014, 1
  %6 = icmp slt i32 %5, 256
  br i1 %6, label %.lr.ph, label %24

.lr.ph:                                           ; preds = %4
  br label %7

7:                                                ; preds = %.lr.ph, %21
  %.03 = phi i32 [ %5, %.lr.ph ], [ %22, %21 ]
  %8 = sext i32 %.014 to i64
  %9 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %8
  %10 = sext i32 %.03 to i64
  %11 = getelementptr inbounds [256 x float], ptr %9, i64 0, i64 %10
  %12 = load float, ptr %11, align 4
  %13 = sext i32 %.014 to i64
  %14 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %13
  %15 = load float, ptr %14, align 4
  %16 = sext i32 %.03 to i64
  %17 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %16
  %18 = load float, ptr %17, align 4
  %19 = fneg float %12
  %20 = call float @llvm.fmuladd.f32(float %19, float %15, float %18)
  store float %20, ptr %17, align 4
  br label %21

21:                                               ; preds = %7
  %22 = add i32 %.03, 1
  %23 = icmp slt i32 %22, 256
  br i1 %23, label %7, label %._crit_edge, !llvm.loop !60

._crit_edge:                                      ; preds = %21
  br label %24

24:                                               ; preds = %._crit_edge, %4
  br label %25

25:                                               ; preds = %24
  %26 = add i32 %.014, 1
  %27 = icmp slt i32 %26, 256
  br i1 %27, label %4, label %28, !llvm.loop !61

28:                                               ; preds = %25
  %29 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %30

30:                                               ; preds = %28
  %31 = add i32 %.025, 1
  %32 = icmp slt i32 %31, 1000
  br i1 %32, label %3, label %33, !llvm.loop !62

33:                                               ; preds = %30
  %34 = call i32 @clock()
  %35 = sub i32 %34, %2
  %36 = sitofp i32 %35 to double
  %37 = fdiv double %36, 1.000000e+06
  %38 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@IGBENMI@S115?7?5?$CF?42f?5?7?7?$AA@", double noundef %37)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s1115() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05KAHJCMBI@s115?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %35
  %.025 = phi i32 [ 0, %0 ], [ %36, %35 ]
  br label %4

4:                                                ; preds = %3, %30
  %.014 = phi i32 [ 0, %3 ], [ %31, %30 ]
  br label %5

5:                                                ; preds = %4, %26
  %.03 = phi i32 [ 0, %4 ], [ %27, %26 ]
  %6 = sext i32 %.014 to i64
  %7 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %6
  %8 = sext i32 %.03 to i64
  %9 = getelementptr inbounds [256 x float], ptr %7, i64 0, i64 %8
  %10 = load float, ptr %9, align 4
  %11 = sext i32 %.03 to i64
  %12 = getelementptr inbounds [256 x [256 x float]], ptr @cc, i64 0, i64 %11
  %13 = sext i32 %.014 to i64
  %14 = getelementptr inbounds [256 x float], ptr %12, i64 0, i64 %13
  %15 = load float, ptr %14, align 4
  %16 = sext i32 %.014 to i64
  %17 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %16
  %18 = sext i32 %.03 to i64
  %19 = getelementptr inbounds [256 x float], ptr %17, i64 0, i64 %18
  %20 = load float, ptr %19, align 4
  %21 = call float @llvm.fmuladd.f32(float %10, float %15, float %20)
  %22 = sext i32 %.014 to i64
  %23 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %22
  %24 = sext i32 %.03 to i64
  %25 = getelementptr inbounds [256 x float], ptr %23, i64 0, i64 %24
  store float %21, ptr %25, align 4
  br label %26

26:                                               ; preds = %5
  %27 = add i32 %.03, 1
  %28 = icmp slt i32 %27, 256
  br i1 %28, label %5, label %29, !llvm.loop !63

29:                                               ; preds = %26
  br label %30

30:                                               ; preds = %29
  %31 = add i32 %.014, 1
  %32 = icmp slt i32 %31, 256
  br i1 %32, label %4, label %33, !llvm.loop !64

33:                                               ; preds = %30
  %34 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %35

35:                                               ; preds = %33
  %36 = add i32 %.025, 1
  %37 = icmp slt i32 %36, 100
  br i1 %37, label %3, label %38, !llvm.loop !65

38:                                               ; preds = %35
  %39 = call i32 @clock()
  %40 = sub i32 %39, %2
  %41 = sitofp i32 %40 to double
  %42 = fdiv double %41, 1.000000e+06
  %43 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@PMFOPCCH@S1115?7?5?$CF?42f?5?7?7?$AA@", double noundef %42)
  call void @check(i32 noundef 11)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s116() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05KCDPJCEB@s116?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %68
  %.013 = phi i32 [ 0, %0 ], [ %69, %68 ]
  br label %4

4:                                                ; preds = %3, %63
  %.02 = phi i32 [ 0, %3 ], [ %64, %63 ]
  %5 = add i32 %.02, 1
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %6
  %8 = load float, ptr %7, align 4
  %9 = sext i32 %.02 to i64
  %10 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %9
  %11 = load float, ptr %10, align 4
  %12 = fmul float %8, %11
  %13 = sext i32 %.02 to i64
  %14 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %13
  store float %12, ptr %14, align 4
  %15 = add i32 %.02, 2
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %16
  %18 = load float, ptr %17, align 4
  %19 = add i32 %.02, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %20
  %22 = load float, ptr %21, align 4
  %23 = fmul float %18, %22
  %24 = add i32 %.02, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %25
  store float %23, ptr %26, align 4
  %27 = add i32 %.02, 3
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %28
  %30 = load float, ptr %29, align 4
  %31 = add i32 %.02, 2
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %32
  %34 = load float, ptr %33, align 4
  %35 = fmul float %30, %34
  %36 = add i32 %.02, 2
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %37
  store float %35, ptr %38, align 4
  %39 = add i32 %.02, 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %40
  %42 = load float, ptr %41, align 4
  %43 = add i32 %.02, 3
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %44
  %46 = load float, ptr %45, align 4
  %47 = fmul float %42, %46
  %48 = add i32 %.02, 3
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %49
  store float %47, ptr %50, align 4
  %51 = add i32 %.02, 5
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %52
  %54 = load float, ptr %53, align 4
  %55 = add i32 %.02, 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %56
  %58 = load float, ptr %57, align 4
  %59 = fmul float %54, %58
  %60 = add i32 %.02, 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %61
  store float %59, ptr %62, align 4
  br label %63

63:                                               ; preds = %4
  %64 = add i32 %.02, 5
  %65 = icmp slt i32 %64, 31995
  br i1 %65, label %4, label %66, !llvm.loop !66

66:                                               ; preds = %63
  %67 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %68

68:                                               ; preds = %66
  %69 = add i32 %.013, 1
  %70 = icmp slt i32 %69, 2560
  br i1 %70, label %3, label %71, !llvm.loop !67

71:                                               ; preds = %68
  %72 = call i32 @clock()
  %73 = sub i32 %72, %2
  %74 = sitofp i32 %73 to double
  %75 = fdiv double %74, 1.000000e+06
  %76 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@JBIDCLMJ@S116?7?5?$CF?42f?5?7?7?$AA@", double noundef %75)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s118() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05KIKBLPEL@s118?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %31
  %.025 = phi i32 [ 0, %0 ], [ %32, %31 ]
  br label %4

4:                                                ; preds = %3, %26
  %.014 = phi i32 [ 1, %3 ], [ %27, %26 ]
  %5 = sub i32 %.014, 1
  %6 = icmp sle i32 0, %5
  br i1 %6, label %.lr.ph, label %25

.lr.ph:                                           ; preds = %4
  br label %7

7:                                                ; preds = %.lr.ph, %22
  %.03 = phi i32 [ 0, %.lr.ph ], [ %23, %22 ]
  %8 = sext i32 %.03 to i64
  %9 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %8
  %10 = sext i32 %.014 to i64
  %11 = getelementptr inbounds [256 x float], ptr %9, i64 0, i64 %10
  %12 = load float, ptr %11, align 4
  %13 = sub i32 %.014, %.03
  %14 = sub i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %15
  %17 = load float, ptr %16, align 4
  %18 = sext i32 %.014 to i64
  %19 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %18
  %20 = load float, ptr %19, align 4
  %21 = call float @llvm.fmuladd.f32(float %12, float %17, float %20)
  store float %21, ptr %19, align 4
  br label %22

22:                                               ; preds = %7
  %23 = add i32 %.03, 1
  %24 = icmp sle i32 %23, %5
  br i1 %24, label %7, label %._crit_edge, !llvm.loop !68

._crit_edge:                                      ; preds = %22
  br label %25

25:                                               ; preds = %._crit_edge, %4
  br label %26

26:                                               ; preds = %25
  %27 = add i32 %.014, 1
  %28 = icmp slt i32 %27, 256
  br i1 %28, label %4, label %29, !llvm.loop !69

29:                                               ; preds = %26
  %30 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %31

31:                                               ; preds = %29
  %32 = add i32 %.025, 1
  %33 = icmp slt i32 %32, 200
  br i1 %33, label %3, label %34, !llvm.loop !70

34:                                               ; preds = %31
  %35 = call i32 @clock()
  %36 = sub i32 %35, %2
  %37 = sitofp i32 %36 to double
  %38 = fdiv double %37, 1.000000e+06
  %39 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@MDPFAAMP@S118?7?5?$CF?42f?5?7?7?$AA@", double noundef %38)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s119() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05KJGDNFHM@s119?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %32
  %.025 = phi i32 [ 0, %0 ], [ %33, %32 ]
  br label %4

4:                                                ; preds = %3, %27
  %.014 = phi i32 [ 1, %3 ], [ %28, %27 ]
  br label %5

5:                                                ; preds = %4, %23
  %.03 = phi i32 [ 1, %4 ], [ %24, %23 ]
  %6 = sub i32 %.014, 1
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %7
  %9 = sub i32 %.03, 1
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [256 x float], ptr %8, i64 0, i64 %10
  %12 = load float, ptr %11, align 4
  %13 = sext i32 %.014 to i64
  %14 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %13
  %15 = sext i32 %.03 to i64
  %16 = getelementptr inbounds [256 x float], ptr %14, i64 0, i64 %15
  %17 = load float, ptr %16, align 4
  %18 = fadd float %12, %17
  %19 = sext i32 %.014 to i64
  %20 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %19
  %21 = sext i32 %.03 to i64
  %22 = getelementptr inbounds [256 x float], ptr %20, i64 0, i64 %21
  store float %18, ptr %22, align 4
  br label %23

23:                                               ; preds = %5
  %24 = add i32 %.03, 1
  %25 = icmp slt i32 %24, 256
  br i1 %25, label %5, label %26, !llvm.loop !71

26:                                               ; preds = %23
  br label %27

27:                                               ; preds = %26
  %28 = add i32 %.014, 1
  %29 = icmp slt i32 %28, 256
  br i1 %29, label %4, label %30, !llvm.loop !72

30:                                               ; preds = %27
  %31 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %32

32:                                               ; preds = %30
  %33 = add i32 %.025, 1
  %34 = icmp slt i32 %33, 200
  br i1 %34, label %3, label %35, !llvm.loop !73

35:                                               ; preds = %32
  %36 = call i32 @clock()
  %37 = sub i32 %36, %2
  %38 = sitofp i32 %37 to double
  %39 = fdiv double %38, 1.000000e+06
  %40 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@FDJECOM@S119?7?5?$CF?42f?5?7?7?5?$AA@", double noundef %39)
  call void @check(i32 noundef 11)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s1119() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05KJGDNFHM@s119?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %31
  %.025 = phi i32 [ 0, %0 ], [ %32, %31 ]
  br label %4

4:                                                ; preds = %3, %26
  %.014 = phi i32 [ 1, %3 ], [ %27, %26 ]
  br label %5

5:                                                ; preds = %4, %22
  %.03 = phi i32 [ 0, %4 ], [ %23, %22 ]
  %6 = sub i32 %.014, 1
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %7
  %9 = sext i32 %.03 to i64
  %10 = getelementptr inbounds [256 x float], ptr %8, i64 0, i64 %9
  %11 = load float, ptr %10, align 4
  %12 = sext i32 %.014 to i64
  %13 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %12
  %14 = sext i32 %.03 to i64
  %15 = getelementptr inbounds [256 x float], ptr %13, i64 0, i64 %14
  %16 = load float, ptr %15, align 4
  %17 = fadd float %11, %16
  %18 = sext i32 %.014 to i64
  %19 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %18
  %20 = sext i32 %.03 to i64
  %21 = getelementptr inbounds [256 x float], ptr %19, i64 0, i64 %20
  store float %17, ptr %21, align 4
  br label %22

22:                                               ; preds = %5
  %23 = add i32 %.03, 1
  %24 = icmp slt i32 %23, 256
  br i1 %24, label %5, label %25, !llvm.loop !74

25:                                               ; preds = %22
  br label %26

26:                                               ; preds = %25
  %27 = add i32 %.014, 1
  %28 = icmp slt i32 %27, 256
  br i1 %28, label %4, label %29, !llvm.loop !75

29:                                               ; preds = %26
  %30 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %31

31:                                               ; preds = %29
  %32 = add i32 %.025, 1
  %33 = icmp slt i32 %32, 200
  br i1 %33, label %3, label %34, !llvm.loop !76

34:                                               ; preds = %31
  %35 = call i32 @clock()
  %36 = sub i32 %35, %2
  %37 = sitofp i32 %36 to double
  %38 = fdiv double %37, 1.000000e+06
  %39 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0BA@DFHIICLK@S1119?7?5?$CF?42f?5?7?7?5?$AA@", double noundef %38)
  call void @check(i32 noundef 11)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s121() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05LFMFCLCK@s121?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %20
  %.013 = phi i32 [ 0, %0 ], [ %21, %20 ]
  br label %4

4:                                                ; preds = %3, %15
  %.02 = phi i32 [ 0, %3 ], [ %16, %15 ]
  %5 = add i32 %.02, 1
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %6
  %8 = load float, ptr %7, align 4
  %9 = sext i32 %.02 to i64
  %10 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %9
  %11 = load float, ptr %10, align 4
  %12 = fadd float %8, %11
  %13 = sext i32 %.02 to i64
  %14 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %13
  store float %12, ptr %14, align 4
  br label %15

15:                                               ; preds = %4
  %16 = add i32 %.02, 1
  %17 = icmp slt i32 %16, 31999
  br i1 %17, label %4, label %18, !llvm.loop !77

18:                                               ; preds = %15
  %19 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %20

20:                                               ; preds = %18
  %21 = add i32 %.013, 1
  %22 = icmp slt i32 %21, 768
  br i1 %22, label %3, label %23, !llvm.loop !78

23:                                               ; preds = %20
  %24 = call i32 @clock()
  %25 = sub i32 %24, %2
  %26 = sitofp i32 %25 to double
  %27 = fdiv double %26, 1.000000e+06
  %28 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@MPCGOMLK@S121?7?5?$CF?42f?5?7?7?$AA@", double noundef %27)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s122(i32 noundef %0, i32 noundef %1) #7 {
  %3 = call i32 @init(ptr noundef @"??_C@_05LHIDJFHD@s122?5?$AA@")
  %4 = call i32 @clock()
  br label %5

5:                                                ; preds = %2, %23
  %.015 = phi i32 [ 0, %2 ], [ %24, %23 ]
  %6 = sub i32 %0, 1
  %7 = icmp slt i32 %6, 32000
  br i1 %7, label %.lr.ph, label %21

.lr.ph:                                           ; preds = %5
  br label %8

8:                                                ; preds = %.lr.ph, %18
  %.04 = phi i32 [ %6, %.lr.ph ], [ %19, %18 ]
  %.023 = phi i32 [ 0, %.lr.ph ], [ %9, %18 ]
  %9 = add i32 %.023, 1
  %10 = sub i32 32000, %9
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %11
  %13 = load float, ptr %12, align 4
  %14 = sext i32 %.04 to i64
  %15 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %14
  %16 = load float, ptr %15, align 4
  %17 = fadd float %16, %13
  store float %17, ptr %15, align 4
  br label %18

18:                                               ; preds = %8
  %19 = add i32 %.04, %1
  %20 = icmp slt i32 %19, 32000
  br i1 %20, label %8, label %._crit_edge, !llvm.loop !79

._crit_edge:                                      ; preds = %18
  br label %21

21:                                               ; preds = %._crit_edge, %5
  %22 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %23

23:                                               ; preds = %21
  %24 = add i32 %.015, 1
  %25 = icmp slt i32 %24, 256
  br i1 %25, label %5, label %26, !llvm.loop !80

26:                                               ; preds = %23
  %27 = call i32 @clock()
  %28 = sub i32 %27, %4
  %29 = sitofp i32 %28 to double
  %30 = fdiv double %29, 1.000000e+06
  %31 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@FGMEIKLL@S122?7?5?$CF?42f?5?7?7?$AA@", double noundef %30)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s123() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05LGEBPPEE@s123?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %42
  %.015 = phi i32 [ 0, %0 ], [ %43, %42 ]
  br label %4

4:                                                ; preds = %3, %37
  %.04 = phi i32 [ 0, %3 ], [ %38, %37 ]
  %.023 = phi i32 [ -1, %3 ], [ %.1, %37 ]
  %5 = add i32 %.023, 1
  %6 = sext i32 %.04 to i64
  %7 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %6
  %8 = load float, ptr %7, align 4
  %9 = sext i32 %.04 to i64
  %10 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %9
  %11 = load float, ptr %10, align 4
  %12 = sext i32 %.04 to i64
  %13 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %12
  %14 = load float, ptr %13, align 4
  %15 = call float @llvm.fmuladd.f32(float %11, float %14, float %8)
  %16 = sext i32 %5 to i64
  %17 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %16
  store float %15, ptr %17, align 4
  %18 = sext i32 %.04 to i64
  %19 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %18
  %20 = load float, ptr %19, align 4
  %21 = fcmp ogt float %20, 0.000000e+00
  br i1 %21, label %22, label %36

22:                                               ; preds = %4
  %23 = add i32 %5, 1
  %24 = sext i32 %.04 to i64
  %25 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %24
  %26 = load float, ptr %25, align 4
  %27 = sext i32 %.04 to i64
  %28 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %27
  %29 = load float, ptr %28, align 4
  %30 = sext i32 %.04 to i64
  %31 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %30
  %32 = load float, ptr %31, align 4
  %33 = call float @llvm.fmuladd.f32(float %29, float %32, float %26)
  %34 = sext i32 %23 to i64
  %35 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %34
  store float %33, ptr %35, align 4
  br label %36

36:                                               ; preds = %22, %4
  %.1 = phi i32 [ %23, %22 ], [ %5, %4 ]
  br label %37

37:                                               ; preds = %36
  %38 = add i32 %.04, 1
  %39 = icmp slt i32 %38, 16000
  br i1 %39, label %4, label %40, !llvm.loop !81

40:                                               ; preds = %37
  %41 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %42

42:                                               ; preds = %40
  %43 = add i32 %.015, 1
  %44 = icmp slt i32 %43, 256
  br i1 %44, label %3, label %45, !llvm.loop !82

45:                                               ; preds = %42
  %46 = call i32 @clock()
  %47 = sub i32 %46, %2
  %48 = sitofp i32 %47 to double
  %49 = fdiv double %48, 1.000000e+06
  %50 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@JHEKFFHL@S123?7?5?$CF?42f?5?7?7?$AA@", double noundef %49)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s124() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05LDAOOJMB@s124?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %43
  %.015 = phi i32 [ 0, %0 ], [ %44, %43 ]
  br label %4

4:                                                ; preds = %3, %38
  %.04 = phi i32 [ 0, %3 ], [ %39, %38 ]
  %.023 = phi i32 [ -1, %3 ], [ %.1, %38 ]
  %5 = sext i32 %.04 to i64
  %6 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %5
  %7 = load float, ptr %6, align 4
  %8 = fcmp ogt float %7, 0.000000e+00
  br i1 %8, label %9, label %23

9:                                                ; preds = %4
  %10 = add i32 %.023, 1
  %11 = sext i32 %.04 to i64
  %12 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %11
  %13 = load float, ptr %12, align 4
  %14 = sext i32 %.04 to i64
  %15 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %14
  %16 = load float, ptr %15, align 4
  %17 = sext i32 %.04 to i64
  %18 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %17
  %19 = load float, ptr %18, align 4
  %20 = call float @llvm.fmuladd.f32(float %16, float %19, float %13)
  %21 = sext i32 %10 to i64
  %22 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %21
  store float %20, ptr %22, align 4
  br label %37

23:                                               ; preds = %4
  %24 = add i32 %.023, 1
  %25 = sext i32 %.04 to i64
  %26 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %25
  %27 = load float, ptr %26, align 4
  %28 = sext i32 %.04 to i64
  %29 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %28
  %30 = load float, ptr %29, align 4
  %31 = sext i32 %.04 to i64
  %32 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %31
  %33 = load float, ptr %32, align 4
  %34 = call float @llvm.fmuladd.f32(float %30, float %33, float %27)
  %35 = sext i32 %24 to i64
  %36 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %35
  store float %34, ptr %36, align 4
  br label %37

37:                                               ; preds = %23, %9
  %.1 = phi i32 [ %10, %9 ], [ %24, %23 ]
  br label %38

38:                                               ; preds = %37
  %39 = add i32 %.04, 1
  %40 = icmp slt i32 %39, 32000
  br i1 %40, label %4, label %41, !llvm.loop !83

41:                                               ; preds = %38
  %42 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %43

43:                                               ; preds = %41
  %44 = add i32 %.015, 1
  %45 = icmp slt i32 %44, 256
  br i1 %45, label %3, label %46, !llvm.loop !84

46:                                               ; preds = %43
  %47 = call i32 @clock()
  %48 = sub i32 %47, %2
  %49 = sitofp i32 %48 to double
  %50 = fdiv double %49, 1.000000e+06
  %51 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@LOHBEAPI@S124?7?5?$CF?42f?5?7?7?$AA@", double noundef %50)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s125() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05LCMMIDPG@s125?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %34
  %.028 = phi i32 [ 0, %0 ], [ %35, %34 ]
  br label %4

4:                                                ; preds = %3, %29
  %.017 = phi i32 [ 0, %3 ], [ %30, %29 ]
  %.036 = phi i32 [ -1, %3 ], [ %.1.lcssa, %29 ]
  br label %5

5:                                                ; preds = %4, %25
  %.05 = phi i32 [ 0, %4 ], [ %26, %25 ]
  %.14 = phi i32 [ %.036, %4 ], [ %6, %25 ]
  %6 = add i32 %.14, 1
  %7 = sext i32 %.017 to i64
  %8 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %7
  %9 = sext i32 %.05 to i64
  %10 = getelementptr inbounds [256 x float], ptr %8, i64 0, i64 %9
  %11 = load float, ptr %10, align 4
  %12 = sext i32 %.017 to i64
  %13 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %12
  %14 = sext i32 %.05 to i64
  %15 = getelementptr inbounds [256 x float], ptr %13, i64 0, i64 %14
  %16 = load float, ptr %15, align 4
  %17 = sext i32 %.017 to i64
  %18 = getelementptr inbounds [256 x [256 x float]], ptr @cc, i64 0, i64 %17
  %19 = sext i32 %.05 to i64
  %20 = getelementptr inbounds [256 x float], ptr %18, i64 0, i64 %19
  %21 = load float, ptr %20, align 4
  %22 = call float @llvm.fmuladd.f32(float %16, float %21, float %11)
  %23 = sext i32 %6 to i64
  %24 = getelementptr inbounds [65536 x float], ptr @array, i64 0, i64 %23
  store float %22, ptr %24, align 4
  br label %25

25:                                               ; preds = %5
  %26 = add i32 %.05, 1
  %27 = icmp slt i32 %26, 256
  br i1 %27, label %5, label %28, !llvm.loop !85

28:                                               ; preds = %25
  %.1.lcssa = phi i32 [ %6, %25 ]
  br label %29

29:                                               ; preds = %28
  %30 = add i32 %.017, 1
  %31 = icmp slt i32 %30, 256
  br i1 %31, label %4, label %32, !llvm.loop !86

32:                                               ; preds = %29
  %33 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %34

34:                                               ; preds = %32
  %35 = add i32 %.028, 1
  %36 = icmp slt i32 %35, 100
  br i1 %36, label %3, label %37, !llvm.loop !87

37:                                               ; preds = %34
  %38 = call i32 @clock()
  %39 = sub i32 %38, %2
  %40 = sitofp i32 %39 to double
  %41 = fdiv double %40, 1.000000e+06
  %42 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@HPPPJPDI@S125?7?5?$CF?42f?5?7?7?$AA@", double noundef %41)
  call void @check(i32 noundef 0)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s126() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05LAIKDNKP@s126?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %37
  %.028 = phi i32 [ 0, %0 ], [ %38, %37 ]
  br label %4

4:                                                ; preds = %3, %32
  %.017 = phi i32 [ 0, %3 ], [ %33, %32 ]
  %.036 = phi i32 [ 1, %3 ], [ %31, %32 ]
  br label %5

5:                                                ; preds = %4, %27
  %.05 = phi i32 [ 1, %4 ], [ %28, %27 ]
  %.14 = phi i32 [ %.036, %4 ], [ %26, %27 ]
  %6 = sub i32 %.05, 1
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %7
  %9 = sext i32 %.017 to i64
  %10 = getelementptr inbounds [256 x float], ptr %8, i64 0, i64 %9
  %11 = load float, ptr %10, align 4
  %12 = sub i32 %.14, 1
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [65536 x float], ptr @array, i64 0, i64 %13
  %15 = load float, ptr %14, align 4
  %16 = sext i32 %.05 to i64
  %17 = getelementptr inbounds [256 x [256 x float]], ptr @cc, i64 0, i64 %16
  %18 = sext i32 %.017 to i64
  %19 = getelementptr inbounds [256 x float], ptr %17, i64 0, i64 %18
  %20 = load float, ptr %19, align 4
  %21 = call float @llvm.fmuladd.f32(float %15, float %20, float %11)
  %22 = sext i32 %.05 to i64
  %23 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %22
  %24 = sext i32 %.017 to i64
  %25 = getelementptr inbounds [256 x float], ptr %23, i64 0, i64 %24
  store float %21, ptr %25, align 4
  %26 = add i32 %.14, 1
  br label %27

27:                                               ; preds = %5
  %28 = add i32 %.05, 1
  %29 = icmp slt i32 %28, 256
  br i1 %29, label %5, label %30, !llvm.loop !88

30:                                               ; preds = %27
  %.1.lcssa = phi i32 [ %26, %27 ]
  %31 = add i32 %.1.lcssa, 1
  br label %32

32:                                               ; preds = %30
  %33 = add i32 %.017, 1
  %34 = icmp slt i32 %33, 256
  br i1 %34, label %4, label %35, !llvm.loop !89

35:                                               ; preds = %32
  %36 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %37

37:                                               ; preds = %35
  %38 = add i32 %.028, 1
  %39 = icmp slt i32 %38, 10
  br i1 %39, label %3, label %40, !llvm.loop !90

40:                                               ; preds = %37
  %41 = call i32 @clock()
  %42 = sub i32 %41, %2
  %43 = sitofp i32 %42 to double
  %44 = fdiv double %43, 1.000000e+06
  %45 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@OGBNPJDJ@S126?7?5?$CF?42f?5?7?7?$AA@", double noundef %44)
  call void @check(i32 noundef 22)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s127() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05LBEIFHJI@s127?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %36
  %.015 = phi i32 [ 0, %0 ], [ %37, %36 ]
  br label %4

4:                                                ; preds = %3, %31
  %.04 = phi i32 [ 0, %3 ], [ %32, %31 ]
  %.023 = phi i32 [ -1, %3 ], [ %18, %31 ]
  %5 = add i32 %.023, 1
  %6 = sext i32 %.04 to i64
  %7 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %6
  %8 = load float, ptr %7, align 4
  %9 = sext i32 %.04 to i64
  %10 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %9
  %11 = load float, ptr %10, align 4
  %12 = sext i32 %.04 to i64
  %13 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %12
  %14 = load float, ptr %13, align 4
  %15 = call float @llvm.fmuladd.f32(float %11, float %14, float %8)
  %16 = sext i32 %5 to i64
  %17 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %16
  store float %15, ptr %17, align 4
  %18 = add i32 %5, 1
  %19 = sext i32 %.04 to i64
  %20 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %19
  %21 = load float, ptr %20, align 4
  %22 = sext i32 %.04 to i64
  %23 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %22
  %24 = load float, ptr %23, align 4
  %25 = sext i32 %.04 to i64
  %26 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %25
  %27 = load float, ptr %26, align 4
  %28 = call float @llvm.fmuladd.f32(float %24, float %27, float %21)
  %29 = sext i32 %18 to i64
  %30 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %29
  store float %28, ptr %30, align 4
  br label %31

31:                                               ; preds = %4
  %32 = add i32 %.04, 1
  %33 = icmp slt i32 %32, 16000
  br i1 %33, label %4, label %34, !llvm.loop !91

34:                                               ; preds = %31
  %35 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %36

36:                                               ; preds = %34
  %37 = add i32 %.015, 1
  %38 = icmp slt i32 %37, 512
  br i1 %38, label %3, label %39, !llvm.loop !92

39:                                               ; preds = %36
  %40 = call i32 @clock()
  %41 = sub i32 %40, %2
  %42 = sitofp i32 %41 to double
  %43 = fdiv double %42, 1.000000e+06
  %44 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@CHJDCGPJ@S127?7?5?$CF?42f?5?7?7?$AA@", double noundef %43)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s128() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05LKBEBAKF@s128?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %30
  %.015 = phi i32 [ 0, %0 ], [ %31, %30 ]
  br label %4

4:                                                ; preds = %3, %25
  %.04 = phi i32 [ 0, %3 ], [ %26, %25 ]
  %.023 = phi i32 [ -1, %3 ], [ %15, %25 ]
  %5 = add i32 %.023, 1
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %6
  %8 = load float, ptr %7, align 4
  %9 = sext i32 %.04 to i64
  %10 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %9
  %11 = load float, ptr %10, align 4
  %12 = fsub float %8, %11
  %13 = sext i32 %.04 to i64
  %14 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %13
  store float %12, ptr %14, align 4
  %15 = add i32 %5, 1
  %16 = sext i32 %.04 to i64
  %17 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %16
  %18 = load float, ptr %17, align 4
  %19 = sext i32 %5 to i64
  %20 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %19
  %21 = load float, ptr %20, align 4
  %22 = fadd float %18, %21
  %23 = sext i32 %5 to i64
  %24 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %23
  store float %22, ptr %24, align 4
  br label %25

25:                                               ; preds = %4
  %26 = add i32 %.04, 1
  %27 = icmp slt i32 %26, 16000
  br i1 %27, label %4, label %28, !llvm.loop !93

28:                                               ; preds = %25
  %29 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 1.000000e+00)
  br label %30

30:                                               ; preds = %28
  %31 = add i32 %.015, 1
  %32 = icmp slt i32 %31, 512
  br i1 %32, label %3, label %33, !llvm.loop !94

33:                                               ; preds = %30
  %34 = call i32 @clock()
  %35 = sub i32 %34, %2
  %36 = sitofp i32 %35 to double
  %37 = fdiv double %36, 1.000000e+06
  %38 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@LEGLNCDP@S128?7?5?$CF?42f?5?7?7?$AA@", double noundef %37)
  call void @check(i32 noundef 12)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s131() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05NHJEMEP@s131?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %20
  %.013 = phi i32 [ 0, %0 ], [ %21, %20 ]
  br label %4

4:                                                ; preds = %3, %15
  %.02 = phi i32 [ 0, %3 ], [ %16, %15 ]
  %5 = add i32 %.02, 1
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %6
  %8 = load float, ptr %7, align 4
  %9 = sext i32 %.02 to i64
  %10 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %9
  %11 = load float, ptr %10, align 4
  %12 = fadd float %8, %11
  %13 = sext i32 %.02 to i64
  %14 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %13
  store float %12, ptr %14, align 4
  br label %15

15:                                               ; preds = %4
  %16 = add i32 %.02, 1
  %17 = icmp slt i32 %16, 31999
  br i1 %17, label %4, label %18, !llvm.loop !95

18:                                               ; preds = %15
  %19 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %20

20:                                               ; preds = %18
  %21 = add i32 %.013, 1
  %22 = icmp slt i32 %21, 1280
  br i1 %22, label %3, label %23, !llvm.loop !96

23:                                               ; preds = %20
  %24 = call i32 @clock()
  %25 = sub i32 %24, %2
  %26 = sitofp i32 %25 to double
  %27 = fdiv double %26, 1.000000e+06
  %28 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@FEIDKANF@S131?7?5?$CF?42f?5?7?7?$AA@", double noundef %27)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s132() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05PDPPCBG@s132?5?$AA@")
  %2 = call i32 @clock()
  %3 = add i32 0, 1
  br label %4

4:                                                ; preds = %0, %26
  %.013 = phi i32 [ 0, %0 ], [ %27, %26 ]
  br label %5

5:                                                ; preds = %4, %21
  %.02 = phi i32 [ 1, %4 ], [ %22, %21 ]
  %6 = sext i32 %3 to i64
  %7 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %6
  %8 = sub i32 %.02, 1
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [256 x float], ptr %7, i64 0, i64 %9
  %11 = load float, ptr %10, align 4
  %12 = sext i32 %.02 to i64
  %13 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %12
  %14 = load float, ptr %13, align 4
  %15 = load float, ptr getelementptr inbounds nuw (i8, ptr @c, i64 4), align 4
  %16 = call float @llvm.fmuladd.f32(float %14, float %15, float %11)
  %17 = sext i32 0 to i64
  %18 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %17
  %19 = sext i32 %.02 to i64
  %20 = getelementptr inbounds [256 x float], ptr %18, i64 0, i64 %19
  store float %16, ptr %20, align 4
  br label %21

21:                                               ; preds = %5
  %22 = add i32 %.02, 1
  %23 = icmp slt i32 %22, 256
  br i1 %23, label %5, label %24, !llvm.loop !97

24:                                               ; preds = %21
  %25 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %26

26:                                               ; preds = %24
  %27 = add i32 %.013, 1
  %28 = icmp slt i32 %27, 102400
  br i1 %28, label %4, label %29, !llvm.loop !98

29:                                               ; preds = %26
  %30 = call i32 @clock()
  %31 = sub i32 %30, %2
  %32 = sitofp i32 %31 to double
  %33 = fdiv double %32, 1.000000e+06
  %34 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@MNGBMGNE@S132?7?5?$CF?42f?5?7?7?$AA@", double noundef %33)
  call void @check(i32 noundef 11)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s141() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05JAKOHEPG@s141?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %34
  %.027 = phi i32 [ 0, %0 ], [ %35, %34 ]
  br label %4

4:                                                ; preds = %3, %29
  %.016 = phi i32 [ 0, %3 ], [ %30, %29 ]
  %5 = add i32 %.016, 1
  %6 = add i32 %.016, 1
  %7 = sub i32 %6, 1
  %8 = mul i32 %5, %7
  %9 = sdiv i32 %8, 2
  %10 = add i32 %.016, 1
  %11 = add i32 %9, %10
  %12 = sub i32 %11, 1
  br label %13

13:                                               ; preds = %4, %25
  %.05 = phi i32 [ %.016, %4 ], [ %26, %25 ]
  %.034 = phi i32 [ %12, %4 ], [ %24, %25 ]
  %14 = sext i32 %.05 to i64
  %15 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %14
  %16 = sext i32 %.016 to i64
  %17 = getelementptr inbounds [256 x float], ptr %15, i64 0, i64 %16
  %18 = load float, ptr %17, align 4
  %19 = sext i32 %.034 to i64
  %20 = getelementptr inbounds [65536 x float], ptr @array, i64 0, i64 %19
  %21 = load float, ptr %20, align 4
  %22 = fadd float %21, %18
  store float %22, ptr %20, align 4
  %23 = add i32 %.05, 1
  %24 = add i32 %.034, %23
  br label %25

25:                                               ; preds = %13
  %26 = add i32 %.05, 1
  %27 = icmp slt i32 %26, 256
  br i1 %27, label %13, label %28, !llvm.loop !99

28:                                               ; preds = %25
  br label %29

29:                                               ; preds = %28
  %30 = add i32 %.016, 1
  %31 = icmp slt i32 %30, 256
  br i1 %31, label %4, label %32, !llvm.loop !100

32:                                               ; preds = %29
  %33 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %34

34:                                               ; preds = %32
  %35 = add i32 %.027, 1
  %36 = icmp slt i32 %35, 200
  br i1 %36, label %3, label %37, !llvm.loop !101

37:                                               ; preds = %34
  %38 = call i32 @clock()
  %39 = sub i32 %38, %2
  %40 = sitofp i32 %39 to double
  %41 = fdiv double %40, 1.000000e+06
  %42 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@CABLEJFK@S141?7?5?$CF?42f?5?7?7?$AA@", double noundef %41)
  call void @check(i32 noundef 0)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s151s(ptr noundef %0, ptr noundef %1, i32 noundef %2) #7 {
  br label %4

4:                                                ; preds = %3, %15
  %.01 = phi i32 [ 0, %3 ], [ %16, %15 ]
  %5 = add i32 %.01, %2
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds float, ptr %0, i64 %6
  %8 = load float, ptr %7, align 4
  %9 = sext i32 %.01 to i64
  %10 = getelementptr inbounds float, ptr %1, i64 %9
  %11 = load float, ptr %10, align 4
  %12 = fadd float %8, %11
  %13 = sext i32 %.01 to i64
  %14 = getelementptr inbounds float, ptr %0, i64 %13
  store float %12, ptr %14, align 4
  br label %15

15:                                               ; preds = %4
  %16 = add i32 %.01, 1
  %17 = icmp slt i32 %16, 31999
  br i1 %17, label %4, label %18, !llvm.loop !102

18:                                               ; preds = %15
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s151() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05CIBCBDJD@s151?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %6
  %.01 = phi i32 [ 0, %0 ], [ %7, %6 ]
  %4 = call i32 @s151s(ptr noundef @a, ptr noundef @b, i32 noundef 1)
  %5 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %6

6:                                                ; preds = %3
  %7 = add i32 %.01, 1
  %8 = icmp slt i32 %7, 1280
  br i1 %8, label %3, label %9, !llvm.loop !103

9:                                                ; preds = %6
  %10 = call i32 @clock()
  %11 = sub i32 %10, %2
  %12 = sitofp i32 %11 to double
  %13 = fdiv double %12, 1.000000e+06
  %14 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@LLLOAFDF@S151?7?5?$CF?42f?5?7?7?$AA@", double noundef %13)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s152s(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #7 {
  %5 = sext i32 %3 to i64
  %6 = getelementptr inbounds float, ptr %1, i64 %5
  %7 = load float, ptr %6, align 4
  %8 = sext i32 %3 to i64
  %9 = getelementptr inbounds float, ptr %2, i64 %8
  %10 = load float, ptr %9, align 4
  %11 = sext i32 %3 to i64
  %12 = getelementptr inbounds float, ptr %0, i64 %11
  %13 = load float, ptr %12, align 4
  %14 = call float @llvm.fmuladd.f32(float %7, float %10, float %13)
  store float %14, ptr %12, align 4
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s152() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05CKFEKNMK@s152?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %20
  %.013 = phi i32 [ 0, %0 ], [ %21, %20 ]
  br label %4

4:                                                ; preds = %3, %15
  %.02 = phi i32 [ 0, %3 ], [ %16, %15 ]
  %5 = sext i32 %.02 to i64
  %6 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %5
  %7 = load float, ptr %6, align 4
  %8 = sext i32 %.02 to i64
  %9 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %8
  %10 = load float, ptr %9, align 4
  %11 = fmul float %7, %10
  %12 = sext i32 %.02 to i64
  %13 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %12
  store float %11, ptr %13, align 4
  %14 = call i32 @s152s(ptr noundef @a, ptr noundef @b, ptr noundef @c, i32 noundef %.02)
  br label %15

15:                                               ; preds = %4
  %16 = add i32 %.02, 1
  %17 = icmp slt i32 %16, 32000
  br i1 %17, label %4, label %18, !llvm.loop !104

18:                                               ; preds = %15
  %19 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %20

20:                                               ; preds = %18
  %21 = add i32 %.013, 1
  %22 = icmp slt i32 %21, 256
  br i1 %22, label %3, label %23, !llvm.loop !105

23:                                               ; preds = %20
  %24 = call i32 @clock()
  %25 = sub i32 %24, %2
  %26 = sitofp i32 %25 to double
  %27 = fdiv double %26, 1.000000e+06
  %28 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@CCFMGDDE@S152?7?5?$CF?42f?5?7?7?$AA@", double noundef %27)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s161() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05DKKHLMHN@s161?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %43
  %.013 = phi i32 [ 0, %0 ], [ %44, %43 ]
  br label %4

4:                                                ; preds = %3, %38
  %.02 = phi i32 [ 0, %3 ], [ %39, %38 ]
  %5 = sext i32 %.02 to i64
  %6 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %5
  %7 = load float, ptr %6, align 4
  %8 = fcmp olt float %7, 0.000000e+00
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  br label %23

10:                                               ; preds = %4
  %11 = sext i32 %.02 to i64
  %12 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %11
  %13 = load float, ptr %12, align 4
  %14 = sext i32 %.02 to i64
  %15 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %14
  %16 = load float, ptr %15, align 4
  %17 = sext i32 %.02 to i64
  %18 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %17
  %19 = load float, ptr %18, align 4
  %20 = call float @llvm.fmuladd.f32(float %16, float %19, float %13)
  %21 = sext i32 %.02 to i64
  %22 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %21
  store float %20, ptr %22, align 4
  br label %37

23:                                               ; preds = %9
  %24 = sext i32 %.02 to i64
  %25 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %24
  %26 = load float, ptr %25, align 4
  %27 = sext i32 %.02 to i64
  %28 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %27
  %29 = load float, ptr %28, align 4
  %30 = sext i32 %.02 to i64
  %31 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %30
  %32 = load float, ptr %31, align 4
  %33 = call float @llvm.fmuladd.f32(float %29, float %32, float %26)
  %34 = add i32 %.02, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %35
  store float %33, ptr %36, align 4
  br label %37

37:                                               ; preds = %23, %10
  br label %38

38:                                               ; preds = %37
  %39 = add i32 %.02, 1
  %40 = icmp slt i32 %39, 31999
  br i1 %40, label %4, label %41, !llvm.loop !106

41:                                               ; preds = %38
  %42 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %43

43:                                               ; preds = %41
  %44 = add i32 %.013, 1
  %45 = icmp slt i32 %44, 128
  br i1 %45, label %3, label %46, !llvm.loop !107

46:                                               ; preds = %43
  %47 = call i32 @clock()
  %48 = sub i32 %47, %2
  %49 = sitofp i32 %48 to double
  %50 = fdiv double %49, 1.000000e+06
  %51 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@MMCANHMF@S161?7?5?$CF?42f?5?7?7?$AA@", double noundef %50)
  call void @check(i32 noundef 13)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s1161() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05DKKHLMHN@s161?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %42
  %.013 = phi i32 [ 0, %0 ], [ %43, %42 ]
  br label %4

4:                                                ; preds = %3, %37
  %.02 = phi i32 [ 0, %3 ], [ %38, %37 ]
  %5 = sext i32 %.02 to i64
  %6 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %5
  %7 = load float, ptr %6, align 4
  %8 = fcmp olt float %7, 0.000000e+00
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  br label %23

10:                                               ; preds = %4
  %11 = sext i32 %.02 to i64
  %12 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %11
  %13 = load float, ptr %12, align 4
  %14 = sext i32 %.02 to i64
  %15 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %14
  %16 = load float, ptr %15, align 4
  %17 = sext i32 %.02 to i64
  %18 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %17
  %19 = load float, ptr %18, align 4
  %20 = call float @llvm.fmuladd.f32(float %16, float %19, float %13)
  %21 = sext i32 %.02 to i64
  %22 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %21
  store float %20, ptr %22, align 4
  br label %36

23:                                               ; preds = %9
  %24 = sext i32 %.02 to i64
  %25 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %24
  %26 = load float, ptr %25, align 4
  %27 = sext i32 %.02 to i64
  %28 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %27
  %29 = load float, ptr %28, align 4
  %30 = sext i32 %.02 to i64
  %31 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %30
  %32 = load float, ptr %31, align 4
  %33 = call float @llvm.fmuladd.f32(float %29, float %32, float %26)
  %34 = sext i32 %.02 to i64
  %35 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %34
  store float %33, ptr %35, align 4
  br label %36

36:                                               ; preds = %23, %10
  br label %37

37:                                               ; preds = %36
  %38 = add i32 %.02, 1
  %39 = icmp slt i32 %38, 31999
  br i1 %39, label %4, label %40, !llvm.loop !108

40:                                               ; preds = %37
  %41 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %42

42:                                               ; preds = %40
  %43 = add i32 %.013, 1
  %44 = icmp slt i32 %43, 256
  br i1 %44, label %3, label %45, !llvm.loop !109

45:                                               ; preds = %42
  %46 = call i32 @clock()
  %47 = sub i32 %46, %2
  %48 = sitofp i32 %47 to double
  %49 = fdiv double %48, 1.000000e+06
  %50 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@DIBPGICK@S1161?7?5?$CF?42f?5?7?7?$AA@", double noundef %49)
  call void @check(i32 noundef 13)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s162(i32 noundef %0) #7 {
  %2 = call i32 @init(ptr noundef @"??_C@_05DIOBACCE@s162?5?$AA@")
  %3 = call i32 @clock()
  br label %4

4:                                                ; preds = %1, %27
  %.013 = phi i32 [ 0, %1 ], [ %28, %27 ]
  %5 = icmp sgt i32 %0, 0
  br i1 %5, label %6, label %25

6:                                                ; preds = %4
  br label %7

7:                                                ; preds = %6, %21
  %.02 = phi i32 [ 0, %6 ], [ %22, %21 ]
  %8 = add i32 %.02, %0
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %9
  %11 = load float, ptr %10, align 4
  %12 = sext i32 %.02 to i64
  %13 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %12
  %14 = load float, ptr %13, align 4
  %15 = sext i32 %.02 to i64
  %16 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %15
  %17 = load float, ptr %16, align 4
  %18 = call float @llvm.fmuladd.f32(float %14, float %17, float %11)
  %19 = sext i32 %.02 to i64
  %20 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %19
  store float %18, ptr %20, align 4
  br label %21

21:                                               ; preds = %7
  %22 = add i32 %.02, 1
  %23 = icmp slt i32 %22, 31999
  br i1 %23, label %7, label %24, !llvm.loop !110

24:                                               ; preds = %21
  br label %25

25:                                               ; preds = %24, %4
  %26 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %27

27:                                               ; preds = %25
  %28 = add i32 %.013, 1
  %29 = icmp slt i32 %28, 256
  br i1 %29, label %4, label %30, !llvm.loop !111

30:                                               ; preds = %27
  %31 = call i32 @clock()
  %32 = sub i32 %31, %3
  %33 = sitofp i32 %32 to double
  %34 = fdiv double %33, 1.000000e+06
  %35 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@FFMCLBME@S162?7?5?$CF?42f?5?7?7?$AA@", double noundef %34)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s171(i32 noundef %0) #7 {
  %2 = call i32 @init(ptr noundef @"??_C@_05ICBLNLBI@s171?5?$AA@")
  %3 = call i32 @clock()
  br label %4

4:                                                ; preds = %1, %19
  %.013 = phi i32 [ 0, %1 ], [ %20, %19 ]
  br label %5

5:                                                ; preds = %4, %14
  %.02 = phi i32 [ 0, %4 ], [ %15, %14 ]
  %6 = sext i32 %.02 to i64
  %7 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %6
  %8 = load float, ptr %7, align 4
  %9 = mul i32 %.02, %0
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %10
  %12 = load float, ptr %11, align 4
  %13 = fadd float %12, %8
  store float %13, ptr %11, align 4
  br label %14

14:                                               ; preds = %5
  %15 = add i32 %.02, 1
  %16 = icmp slt i32 %15, 32000
  br i1 %16, label %5, label %17, !llvm.loop !112

17:                                               ; preds = %14
  %18 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %19

19:                                               ; preds = %17
  %20 = add i32 %.013, 1
  %21 = icmp slt i32 %20, 256
  br i1 %21, label %4, label %22, !llvm.loop !113

22:                                               ; preds = %19
  %23 = call i32 @clock()
  %24 = sub i32 %23, %3
  %25 = sitofp i32 %24 to double
  %26 = fdiv double %25, 1.000000e+06
  %27 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@FHIFJLKK@S171?7?5?$CF?42f?5?7?7?$AA@", double noundef %26)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s172(i32 noundef %0, i32 noundef %1) #7 {
  %3 = call i32 @init(ptr noundef @"??_C@_05IAFNGFEB@s172?5?$AA@")
  %4 = call i32 @clock()
  br label %5

5:                                                ; preds = %2, %21
  %.013 = phi i32 [ 0, %2 ], [ %22, %21 ]
  %6 = sub i32 %0, 1
  %7 = icmp slt i32 %6, 32000
  br i1 %7, label %.lr.ph, label %19

.lr.ph:                                           ; preds = %5
  br label %8

8:                                                ; preds = %.lr.ph, %16
  %.02 = phi i32 [ %6, %.lr.ph ], [ %17, %16 ]
  %9 = sext i32 %.02 to i64
  %10 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %9
  %11 = load float, ptr %10, align 4
  %12 = sext i32 %.02 to i64
  %13 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %12
  %14 = load float, ptr %13, align 4
  %15 = fadd float %14, %11
  store float %15, ptr %13, align 4
  br label %16

16:                                               ; preds = %8
  %17 = add i32 %.02, %1
  %18 = icmp slt i32 %17, 32000
  br i1 %18, label %8, label %._crit_edge, !llvm.loop !114

._crit_edge:                                      ; preds = %16
  br label %19

19:                                               ; preds = %._crit_edge, %5
  %20 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %21

21:                                               ; preds = %19
  %22 = add i32 %.013, 1
  %23 = icmp slt i32 %22, 256
  br i1 %23, label %5, label %24, !llvm.loop !115

24:                                               ; preds = %21
  %25 = call i32 @clock()
  %26 = sub i32 %25, %4
  %27 = sitofp i32 %26 to double
  %28 = fdiv double %27, 1.000000e+06
  %29 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@MOGHPNKL@S172?7?5?$CF?42f?5?7?7?$AA@", double noundef %28)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s173() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05IBJPAPHG@s173?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %20
  %.013 = phi i32 [ 0, %0 ], [ %21, %20 ]
  br label %4

4:                                                ; preds = %3, %15
  %.02 = phi i32 [ 0, %3 ], [ %16, %15 ]
  %5 = sext i32 %.02 to i64
  %6 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %5
  %7 = load float, ptr %6, align 4
  %8 = sext i32 %.02 to i64
  %9 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %8
  %10 = load float, ptr %9, align 4
  %11 = fadd float %7, %10
  %12 = add i32 %.02, 16000
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %13
  store float %11, ptr %14, align 4
  br label %15

15:                                               ; preds = %4
  %16 = add i32 %.02, 1
  %17 = icmp slt i32 %16, 16000
  br i1 %17, label %4, label %18, !llvm.loop !116

18:                                               ; preds = %15
  %19 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %20

20:                                               ; preds = %18
  %21 = add i32 %.013, 1
  %22 = icmp slt i32 %21, 2560
  br i1 %22, label %3, label %23, !llvm.loop !117

23:                                               ; preds = %20
  %24 = call i32 @clock()
  %25 = sub i32 %24, %2
  %26 = sitofp i32 %25 to double
  %27 = fdiv double %26, 1.000000e+06
  %28 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@POJCCGL@S173?7?5?$CF?42f?5?7?7?$AA@", double noundef %27)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s174(i32 noundef %0) #7 {
  %2 = call i32 @init(ptr noundef @"??_C@_05IENABJPD@s174?5?$AA@")
  %3 = call i32 @clock()
  br label %4

4:                                                ; preds = %1, %22
  %.013 = phi i32 [ 0, %1 ], [ %23, %22 ]
  %5 = icmp slt i32 0, %0
  br i1 %5, label %.lr.ph, label %20

.lr.ph:                                           ; preds = %4
  br label %6

6:                                                ; preds = %.lr.ph, %17
  %.02 = phi i32 [ 0, %.lr.ph ], [ %18, %17 ]
  %7 = sext i32 %.02 to i64
  %8 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %7
  %9 = load float, ptr %8, align 4
  %10 = sext i32 %.02 to i64
  %11 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %10
  %12 = load float, ptr %11, align 4
  %13 = fadd float %9, %12
  %14 = add i32 %.02, %0
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %15
  store float %13, ptr %16, align 4
  br label %17

17:                                               ; preds = %6
  %18 = add i32 %.02, 1
  %19 = icmp slt i32 %18, %0
  br i1 %19, label %6, label %._crit_edge, !llvm.loop !118

._crit_edge:                                      ; preds = %17
  br label %20

20:                                               ; preds = %._crit_edge, %4
  %21 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %22

22:                                               ; preds = %20
  %23 = add i32 %.013, 1
  %24 = icmp slt i32 %23, 2560
  br i1 %24, label %4, label %25, !llvm.loop !119

25:                                               ; preds = %22
  %26 = call i32 @clock()
  %27 = sub i32 %26, %3
  %28 = sitofp i32 %27 to double
  %29 = fdiv double %28, 1.000000e+06
  %30 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@CGNCDHOI@S174?7?5?$CF?42f?5?7?7?$AA@", double noundef %29)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s175(i32 noundef %0) #7 {
  %2 = call i32 @init(ptr noundef @"??_C@_05IFBCHDME@s175?5?$AA@")
  %3 = call i32 @clock()
  br label %4

4:                                                ; preds = %1, %21
  %.013 = phi i32 [ 0, %1 ], [ %22, %21 ]
  br label %5

5:                                                ; preds = %4, %16
  %.02 = phi i32 [ 0, %4 ], [ %17, %16 ]
  %6 = add i32 %.02, %0
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %7
  %9 = load float, ptr %8, align 4
  %10 = sext i32 %.02 to i64
  %11 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %10
  %12 = load float, ptr %11, align 4
  %13 = fadd float %9, %12
  %14 = sext i32 %.02 to i64
  %15 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %14
  store float %13, ptr %15, align 4
  br label %16

16:                                               ; preds = %5
  %17 = add i32 %.02, %0
  %18 = icmp slt i32 %17, 31999
  br i1 %18, label %5, label %19, !llvm.loop !120

19:                                               ; preds = %16
  %20 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %21

21:                                               ; preds = %19
  %22 = add i32 %.013, 1
  %23 = icmp slt i32 %22, 256
  br i1 %23, label %4, label %24, !llvm.loop !121

24:                                               ; preds = %21
  %25 = call i32 @clock()
  %26 = sub i32 %25, %3
  %27 = sitofp i32 %26 to double
  %28 = fdiv double %27, 1.000000e+06
  %29 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@OHFMOICI@S175?7?5?$CF?42f?5?7?7?$AA@", double noundef %28)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s176() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05IHFEMNJN@s176?5?$AA@")
  %2 = call i32 @clock()
  br i1 false, label %.lr.ph, label %31

.lr.ph:                                           ; preds = %0
  br label %3

3:                                                ; preds = %.lr.ph, %28
  %.025 = phi i32 [ 0, %.lr.ph ], [ %29, %28 ]
  br label %4

4:                                                ; preds = %3, %23
  %.014 = phi i32 [ 0, %3 ], [ %24, %23 ]
  br label %5

5:                                                ; preds = %4, %19
  %.03 = phi i32 [ 0, %4 ], [ %20, %19 ]
  %6 = add i32 %.03, 16000
  %7 = sub i32 %6, %.014
  %8 = sub i32 %7, 1
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %9
  %11 = load float, ptr %10, align 4
  %12 = sext i32 %.014 to i64
  %13 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %12
  %14 = load float, ptr %13, align 4
  %15 = sext i32 %.03 to i64
  %16 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %15
  %17 = load float, ptr %16, align 4
  %18 = call float @llvm.fmuladd.f32(float %11, float %14, float %17)
  store float %18, ptr %16, align 4
  br label %19

19:                                               ; preds = %5
  %20 = add i32 %.03, 1
  %21 = icmp slt i32 %20, 16000
  br i1 %21, label %5, label %22, !llvm.loop !122

22:                                               ; preds = %19
  br label %23

23:                                               ; preds = %22
  %24 = add i32 %.014, 1
  %25 = icmp slt i32 %24, 16000
  br i1 %25, label %4, label %26, !llvm.loop !123

26:                                               ; preds = %23
  %27 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %28

28:                                               ; preds = %26
  %29 = add i32 %.025, 1
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %3, label %._crit_edge, !llvm.loop !124

._crit_edge:                                      ; preds = %28
  br label %31

31:                                               ; preds = %._crit_edge, %0
  %32 = call i32 @clock()
  %33 = sub i32 %32, %2
  %34 = sitofp i32 %33 to double
  %35 = fdiv double %34, 1.000000e+06
  %36 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@HOLOIOCJ@S176?7?5?$CF?42f?5?7?7?$AA@", double noundef %35)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s211() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05OANAPOBE@s211?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %37
  %.013 = phi i32 [ 0, %0 ], [ %38, %37 ]
  br label %4

4:                                                ; preds = %3, %32
  %.02 = phi i32 [ 1, %3 ], [ %33, %32 ]
  %5 = sub i32 %.02, 1
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %6
  %8 = load float, ptr %7, align 4
  %9 = sext i32 %.02 to i64
  %10 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %9
  %11 = load float, ptr %10, align 4
  %12 = sext i32 %.02 to i64
  %13 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %12
  %14 = load float, ptr %13, align 4
  %15 = call float @llvm.fmuladd.f32(float %11, float %14, float %8)
  %16 = sext i32 %.02 to i64
  %17 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %16
  store float %15, ptr %17, align 4
  %18 = add i32 %.02, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %19
  %21 = load float, ptr %20, align 4
  %22 = sext i32 %.02 to i64
  %23 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %22
  %24 = load float, ptr %23, align 4
  %25 = sext i32 %.02 to i64
  %26 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %25
  %27 = load float, ptr %26, align 4
  %28 = fneg float %24
  %29 = call float @llvm.fmuladd.f32(float %28, float %27, float %21)
  %30 = sext i32 %.02 to i64
  %31 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %30
  store float %29, ptr %31, align 4
  br label %32

32:                                               ; preds = %4
  %33 = add i32 %.02, 1
  %34 = icmp slt i32 %33, 31999
  br i1 %34, label %4, label %35, !llvm.loop !125

35:                                               ; preds = %32
  %36 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %37

37:                                               ; preds = %35
  %38 = add i32 %.013, 1
  %39 = icmp slt i32 %38, 256
  br i1 %39, label %3, label %40, !llvm.loop !126

40:                                               ; preds = %37
  %41 = call i32 @clock()
  %42 = sub i32 %41, %2
  %43 = sitofp i32 %42 to double
  %44 = fdiv double %43, 1.000000e+06
  %45 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@FHCFCIE@S211?7?5?$CF?42f?5?7?7?$AA@", double noundef %44)
  call void @check(i32 noundef 12)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s212() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05OCJGEAEN@s212?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %28
  %.013 = phi i32 [ 0, %0 ], [ %29, %28 ]
  br label %4

4:                                                ; preds = %3, %23
  %.02 = phi i32 [ 0, %3 ], [ %24, %23 ]
  %5 = sext i32 %.02 to i64
  %6 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %5
  %7 = load float, ptr %6, align 4
  %8 = sext i32 %.02 to i64
  %9 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %8
  %10 = load float, ptr %9, align 4
  %11 = fmul float %10, %7
  store float %11, ptr %9, align 4
  %12 = add i32 %.02, 1
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %13
  %15 = load float, ptr %14, align 4
  %16 = sext i32 %.02 to i64
  %17 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %16
  %18 = load float, ptr %17, align 4
  %19 = sext i32 %.02 to i64
  %20 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %19
  %21 = load float, ptr %20, align 4
  %22 = call float @llvm.fmuladd.f32(float %15, float %18, float %21)
  store float %22, ptr %20, align 4
  br label %23

23:                                               ; preds = %4
  %24 = add i32 %.02, 1
  %25 = icmp slt i32 %24, 31999
  br i1 %25, label %4, label %26, !llvm.loop !127

26:                                               ; preds = %23
  %27 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %28

28:                                               ; preds = %26
  %29 = add i32 %.013, 1
  %30 = icmp slt i32 %29, 256
  br i1 %30, label %3, label %31, !llvm.loop !128

31:                                               ; preds = %28
  %32 = call i32 @clock()
  %33 = sub i32 %32, %2
  %34 = sitofp i32 %33 to double
  %35 = fdiv double %34, 1.000000e+06
  %36 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@JMJADEIF@S212?7?5?$CF?42f?5?7?7?$AA@", double noundef %35)
  call void @check(i32 noundef 12)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s1213() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05OCJGEAEN@s212?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %30
  %.013 = phi i32 [ 0, %0 ], [ %31, %30 ]
  br label %4

4:                                                ; preds = %3, %25
  %.02 = phi i32 [ 1, %3 ], [ %26, %25 ]
  %5 = sub i32 %.02, 1
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %6
  %8 = load float, ptr %7, align 4
  %9 = sext i32 %.02 to i64
  %10 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %9
  %11 = load float, ptr %10, align 4
  %12 = fadd float %8, %11
  %13 = sext i32 %.02 to i64
  %14 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %13
  store float %12, ptr %14, align 4
  %15 = add i32 %.02, 1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %16
  %18 = load float, ptr %17, align 4
  %19 = sext i32 %.02 to i64
  %20 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %19
  %21 = load float, ptr %20, align 4
  %22 = fmul float %18, %21
  %23 = sext i32 %.02 to i64
  %24 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %23
  store float %22, ptr %24, align 4
  br label %25

25:                                               ; preds = %4
  %26 = add i32 %.02, 1
  %27 = icmp slt i32 %26, 31999
  br i1 %27, label %4, label %28, !llvm.loop !129

28:                                               ; preds = %25
  %29 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %30

30:                                               ; preds = %28
  %31 = add i32 %.013, 1
  %32 = icmp slt i32 %31, 256
  br i1 %32, label %3, label %33, !llvm.loop !130

33:                                               ; preds = %30
  %34 = call i32 @clock()
  %35 = sub i32 %34, %2
  %36 = sitofp i32 %35 to double
  %37 = fdiv double %36, 1.000000e+06
  %38 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@KJCBFEKK@S1213?7?5?$CF?42f?5?7?7?$AA@", double noundef %37)
  call void @check(i32 noundef 12)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s221() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05PCGFFBPK@s221?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %34
  %.013 = phi i32 [ 0, %0 ], [ %35, %34 ]
  br label %4

4:                                                ; preds = %3, %29
  %.02 = phi i32 [ 1, %3 ], [ %30, %29 ]
  %5 = sext i32 %.02 to i64
  %6 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %5
  %7 = load float, ptr %6, align 4
  %8 = sext i32 %.02 to i64
  %9 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %8
  %10 = load float, ptr %9, align 4
  %11 = sext i32 %.02 to i64
  %12 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %11
  %13 = load float, ptr %12, align 4
  %14 = call float @llvm.fmuladd.f32(float %7, float %10, float %13)
  store float %14, ptr %12, align 4
  %15 = sub i32 %.02, 1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %16
  %18 = load float, ptr %17, align 4
  %19 = sext i32 %.02 to i64
  %20 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %19
  %21 = load float, ptr %20, align 4
  %22 = fadd float %18, %21
  %23 = sext i32 %.02 to i64
  %24 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %23
  %25 = load float, ptr %24, align 4
  %26 = fadd float %22, %25
  %27 = sext i32 %.02 to i64
  %28 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %27
  store float %26, ptr %28, align 4
  br label %29

29:                                               ; preds = %4
  %30 = add i32 %.02, 1
  %31 = icmp slt i32 %30, 32000
  br i1 %31, label %4, label %32, !llvm.loop !131

32:                                               ; preds = %29
  %33 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %34

34:                                               ; preds = %32
  %35 = add i32 %.013, 1
  %36 = icmp slt i32 %35, 128
  br i1 %36, label %3, label %37, !llvm.loop !132

37:                                               ; preds = %34
  %38 = call i32 @clock()
  %39 = sub i32 %38, %2
  %40 = sitofp i32 %39 to double
  %41 = fdiv double %40, 1.000000e+06
  %42 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@HCOMIAHE@S221?7?5?$CF?42f?5?7?7?$AA@", double noundef %41)
  call void @check(i32 noundef 12)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s1221() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05PCGFFBPK@s221?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %20
  %.013 = phi i32 [ 0, %0 ], [ %21, %20 ]
  br label %4

4:                                                ; preds = %3, %15
  %.02 = phi i32 [ 4, %3 ], [ %16, %15 ]
  %5 = sub i32 %.02, 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %6
  %8 = load float, ptr %7, align 4
  %9 = sext i32 %.02 to i64
  %10 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %9
  %11 = load float, ptr %10, align 4
  %12 = fadd float %8, %11
  %13 = sext i32 %.02 to i64
  %14 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %13
  store float %12, ptr %14, align 4
  br label %15

15:                                               ; preds = %4
  %16 = add i32 %.02, 1
  %17 = icmp slt i32 %16, 32000
  br i1 %17, label %4, label %18, !llvm.loop !133

18:                                               ; preds = %15
  %19 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %20

20:                                               ; preds = %18
  %21 = add i32 %.013, 1
  %22 = icmp slt i32 %21, 256
  br i1 %22, label %3, label %23, !llvm.loop !134

23:                                               ; preds = %20
  %24 = call i32 @clock()
  %25 = sub i32 %24, %2
  %26 = sitofp i32 %25 to double
  %27 = fdiv double %26, 1.000000e+06
  %28 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@IGNDDPJL@S1221?7?5?$CF?42f?5?7?7?$AA@", double noundef %27)
  call void @check(i32 noundef 12)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s222() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05PACDOPKD@s222?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %42
  %.013 = phi i32 [ 0, %0 ], [ %43, %42 ]
  br label %4

4:                                                ; preds = %3, %37
  %.02 = phi i32 [ 1, %3 ], [ %38, %37 ]
  %5 = sext i32 %.02 to i64
  %6 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %5
  %7 = load float, ptr %6, align 4
  %8 = sext i32 %.02 to i64
  %9 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %8
  %10 = load float, ptr %9, align 4
  %11 = sext i32 %.02 to i64
  %12 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %11
  %13 = load float, ptr %12, align 4
  %14 = call float @llvm.fmuladd.f32(float %7, float %10, float %13)
  store float %14, ptr %12, align 4
  %15 = sub i32 %.02, 1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %16
  %18 = load float, ptr %17, align 4
  %19 = sub i32 %.02, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %20
  %22 = load float, ptr %21, align 4
  %23 = fmul float %18, %22
  %24 = sext i32 %.02 to i64
  %25 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %24
  store float %23, ptr %25, align 4
  %26 = sext i32 %.02 to i64
  %27 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %26
  %28 = load float, ptr %27, align 4
  %29 = sext i32 %.02 to i64
  %30 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %29
  %31 = load float, ptr %30, align 4
  %32 = sext i32 %.02 to i64
  %33 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %32
  %34 = load float, ptr %33, align 4
  %35 = fneg float %28
  %36 = call float @llvm.fmuladd.f32(float %35, float %31, float %34)
  store float %36, ptr %33, align 4
  br label %37

37:                                               ; preds = %4
  %38 = add i32 %.02, 1
  %39 = icmp slt i32 %38, 32000
  br i1 %39, label %4, label %40, !llvm.loop !135

40:                                               ; preds = %37
  %41 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %42

42:                                               ; preds = %40
  %43 = add i32 %.013, 1
  %44 = icmp slt i32 %43, 128
  br i1 %44, label %3, label %45, !llvm.loop !136

45:                                               ; preds = %42
  %46 = call i32 @clock()
  %47 = sub i32 %46, %2
  %48 = sitofp i32 %47 to double
  %49 = fdiv double %48, 1.000000e+06
  %50 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@OLAOOGHF@S222?7?5?$CF?42f?5?7?7?$AA@", double noundef %49)
  call void @check(i32 noundef 12)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s231() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05EKNJDGJP@s231?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %31
  %.025 = phi i32 [ 0, %0 ], [ %32, %31 ]
  br label %4

4:                                                ; preds = %3, %26
  %.014 = phi i32 [ 0, %3 ], [ %27, %26 ]
  br label %5

5:                                                ; preds = %4, %22
  %.03 = phi i32 [ 1, %4 ], [ %23, %22 ]
  %6 = sub i32 %.03, 1
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %7
  %9 = sext i32 %.014 to i64
  %10 = getelementptr inbounds [256 x float], ptr %8, i64 0, i64 %9
  %11 = load float, ptr %10, align 4
  %12 = sext i32 %.03 to i64
  %13 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %12
  %14 = sext i32 %.014 to i64
  %15 = getelementptr inbounds [256 x float], ptr %13, i64 0, i64 %14
  %16 = load float, ptr %15, align 4
  %17 = fadd float %11, %16
  %18 = sext i32 %.03 to i64
  %19 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %18
  %20 = sext i32 %.014 to i64
  %21 = getelementptr inbounds [256 x float], ptr %19, i64 0, i64 %20
  store float %17, ptr %21, align 4
  br label %22

22:                                               ; preds = %5
  %23 = add i32 %.03, 1
  %24 = icmp slt i32 %23, 256
  br i1 %24, label %5, label %25, !llvm.loop !137

25:                                               ; preds = %22
  br label %26

26:                                               ; preds = %25
  %27 = add i32 %.014, 1
  %28 = icmp slt i32 %27, 256
  br i1 %28, label %4, label %29, !llvm.loop !138

29:                                               ; preds = %26
  %30 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %31

31:                                               ; preds = %29
  %32 = add i32 %.025, 1
  %33 = icmp slt i32 %32, 100
  br i1 %33, label %3, label %34, !llvm.loop !139

34:                                               ; preds = %31
  %35 = call i32 @clock()
  %36 = sub i32 %35, %2
  %37 = sitofp i32 %36 to double
  %38 = fdiv double %37, 1.000000e+06
  %39 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@OJEJMMBL@S231?7?5?$CF?42f?5?7?7?$AA@", double noundef %38)
  call void @check(i32 noundef 11)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s232() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05EIJPIIMG@s232?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %38
  %.025 = phi i32 [ 0, %0 ], [ %39, %38 ]
  br label %4

4:                                                ; preds = %3, %33
  %.014 = phi i32 [ 1, %3 ], [ %34, %33 ]
  %5 = icmp sle i32 1, %.014
  br i1 %5, label %.lr.ph, label %32

.lr.ph:                                           ; preds = %4
  br label %6

6:                                                ; preds = %.lr.ph, %29
  %.03 = phi i32 [ 1, %.lr.ph ], [ %30, %29 ]
  %7 = sext i32 %.014 to i64
  %8 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %7
  %9 = sub i32 %.03, 1
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [256 x float], ptr %8, i64 0, i64 %10
  %12 = load float, ptr %11, align 4
  %13 = sext i32 %.014 to i64
  %14 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %13
  %15 = sub i32 %.03, 1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [256 x float], ptr %14, i64 0, i64 %16
  %18 = load float, ptr %17, align 4
  %19 = sext i32 %.014 to i64
  %20 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %19
  %21 = sext i32 %.03 to i64
  %22 = getelementptr inbounds [256 x float], ptr %20, i64 0, i64 %21
  %23 = load float, ptr %22, align 4
  %24 = call float @llvm.fmuladd.f32(float %12, float %18, float %23)
  %25 = sext i32 %.014 to i64
  %26 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %25
  %27 = sext i32 %.03 to i64
  %28 = getelementptr inbounds [256 x float], ptr %26, i64 0, i64 %27
  store float %24, ptr %28, align 4
  br label %29

29:                                               ; preds = %6
  %30 = add i32 %.03, 1
  %31 = icmp sle i32 %30, %.014
  br i1 %31, label %6, label %._crit_edge, !llvm.loop !140

._crit_edge:                                      ; preds = %29
  br label %32

32:                                               ; preds = %._crit_edge, %4
  br label %33

33:                                               ; preds = %32
  %34 = add i32 %.014, 1
  %35 = icmp slt i32 %34, 256
  br i1 %35, label %4, label %36, !llvm.loop !141

36:                                               ; preds = %33
  %37 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 1.000000e+00)
  br label %38

38:                                               ; preds = %36
  %39 = add i32 %.025, 1
  %40 = icmp slt i32 %39, 100
  br i1 %40, label %3, label %41, !llvm.loop !142

41:                                               ; preds = %38
  %42 = call i32 @clock()
  %43 = sub i32 %42, %2
  %44 = sitofp i32 %43 to double
  %45 = fdiv double %44, 1.000000e+06
  %46 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@HAKLKKBK@S232?7?5?$CF?42f?5?7?7?$AA@", double noundef %45)
  call void @check(i32 noundef 11)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s1232() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05EIJPIIMG@s232?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %30
  %.025 = phi i32 [ 0, %0 ], [ %31, %30 ]
  br label %4

4:                                                ; preds = %3, %25
  %.014 = phi i32 [ 0, %3 ], [ %26, %25 ]
  br label %5

5:                                                ; preds = %4, %21
  %.03 = phi i32 [ %.014, %4 ], [ %22, %21 ]
  %6 = sext i32 %.03 to i64
  %7 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %6
  %8 = sext i32 %.014 to i64
  %9 = getelementptr inbounds [256 x float], ptr %7, i64 0, i64 %8
  %10 = load float, ptr %9, align 4
  %11 = sext i32 %.03 to i64
  %12 = getelementptr inbounds [256 x [256 x float]], ptr @cc, i64 0, i64 %11
  %13 = sext i32 %.014 to i64
  %14 = getelementptr inbounds [256 x float], ptr %12, i64 0, i64 %13
  %15 = load float, ptr %14, align 4
  %16 = fadd float %10, %15
  %17 = sext i32 %.03 to i64
  %18 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %17
  %19 = sext i32 %.014 to i64
  %20 = getelementptr inbounds [256 x float], ptr %18, i64 0, i64 %19
  store float %16, ptr %20, align 4
  br label %21

21:                                               ; preds = %5
  %22 = add i32 %.03, 1
  %23 = icmp slt i32 %22, 256
  br i1 %23, label %5, label %24, !llvm.loop !143

24:                                               ; preds = %21
  br label %25

25:                                               ; preds = %24
  %26 = add i32 %.014, 1
  %27 = icmp slt i32 %26, 256
  br i1 %27, label %4, label %28, !llvm.loop !144

28:                                               ; preds = %25
  %29 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 1.000000e+00)
  br label %30

30:                                               ; preds = %28
  %31 = add i32 %.025, 1
  %32 = icmp slt i32 %31, 100
  br i1 %32, label %3, label %33, !llvm.loop !145

33:                                               ; preds = %30
  %34 = call i32 @clock()
  %35 = sub i32 %34, %2
  %36 = sitofp i32 %35 to double
  %37 = fdiv double %36, 1.000000e+06
  %38 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@IEJEBFPF@S1232?7?5?$CF?42f?5?7?7?$AA@", double noundef %37)
  call void @check(i32 noundef 11)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s233() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05EJFNOCPB@s233?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %52
  %.037 = phi i32 [ 0, %0 ], [ %53, %52 ]
  br label %4

4:                                                ; preds = %3, %47
  %.026 = phi i32 [ 1, %3 ], [ %48, %47 ]
  br label %5

5:                                                ; preds = %4, %22
  %.014 = phi i32 [ 1, %4 ], [ %23, %22 ]
  %6 = sub i32 %.014, 1
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %7
  %9 = sext i32 %.026 to i64
  %10 = getelementptr inbounds [256 x float], ptr %8, i64 0, i64 %9
  %11 = load float, ptr %10, align 4
  %12 = sext i32 %.014 to i64
  %13 = getelementptr inbounds [256 x [256 x float]], ptr @cc, i64 0, i64 %12
  %14 = sext i32 %.026 to i64
  %15 = getelementptr inbounds [256 x float], ptr %13, i64 0, i64 %14
  %16 = load float, ptr %15, align 4
  %17 = fadd float %11, %16
  %18 = sext i32 %.014 to i64
  %19 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %18
  %20 = sext i32 %.026 to i64
  %21 = getelementptr inbounds [256 x float], ptr %19, i64 0, i64 %20
  store float %17, ptr %21, align 4
  br label %22

22:                                               ; preds = %5
  %23 = add i32 %.014, 1
  %24 = icmp slt i32 %23, 256
  br i1 %24, label %5, label %25, !llvm.loop !146

25:                                               ; preds = %22
  br label %26

26:                                               ; preds = %25, %43
  %.05 = phi i32 [ 1, %25 ], [ %44, %43 ]
  %27 = sext i32 %.05 to i64
  %28 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %27
  %29 = sub i32 %.026, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [256 x float], ptr %28, i64 0, i64 %30
  %32 = load float, ptr %31, align 4
  %33 = sext i32 %.05 to i64
  %34 = getelementptr inbounds [256 x [256 x float]], ptr @cc, i64 0, i64 %33
  %35 = sext i32 %.026 to i64
  %36 = getelementptr inbounds [256 x float], ptr %34, i64 0, i64 %35
  %37 = load float, ptr %36, align 4
  %38 = fadd float %32, %37
  %39 = sext i32 %.05 to i64
  %40 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %39
  %41 = sext i32 %.026 to i64
  %42 = getelementptr inbounds [256 x float], ptr %40, i64 0, i64 %41
  store float %38, ptr %42, align 4
  br label %43

43:                                               ; preds = %26
  %44 = add i32 %.05, 1
  %45 = icmp slt i32 %44, 256
  br i1 %45, label %26, label %46, !llvm.loop !147

46:                                               ; preds = %43
  br label %47

47:                                               ; preds = %46
  %48 = add i32 %.026, 1
  %49 = icmp slt i32 %48, 256
  br i1 %49, label %4, label %50, !llvm.loop !148

50:                                               ; preds = %47
  %51 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %52

52:                                               ; preds = %50
  %53 = add i32 %.037, 1
  %54 = icmp slt i32 %53, 100
  br i1 %54, label %3, label %55, !llvm.loop !149

55:                                               ; preds = %52
  %56 = call i32 @clock()
  %57 = sub i32 %56, %2
  %58 = sitofp i32 %57 to double
  %59 = fdiv double %58, 1.000000e+06
  %60 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@LBCFHFNK@S233?7?5?$CF?42f?5?7?7?$AA@", double noundef %59)
  call void @check(i32 noundef 1122)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s2233() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05EJFNOCPB@s233?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %52
  %.037 = phi i32 [ 0, %0 ], [ %53, %52 ]
  br label %4

4:                                                ; preds = %3, %47
  %.026 = phi i32 [ 1, %3 ], [ %48, %47 ]
  br label %5

5:                                                ; preds = %4, %22
  %.014 = phi i32 [ 1, %4 ], [ %23, %22 ]
  %6 = sub i32 %.014, 1
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %7
  %9 = sext i32 %.026 to i64
  %10 = getelementptr inbounds [256 x float], ptr %8, i64 0, i64 %9
  %11 = load float, ptr %10, align 4
  %12 = sext i32 %.014 to i64
  %13 = getelementptr inbounds [256 x [256 x float]], ptr @cc, i64 0, i64 %12
  %14 = sext i32 %.026 to i64
  %15 = getelementptr inbounds [256 x float], ptr %13, i64 0, i64 %14
  %16 = load float, ptr %15, align 4
  %17 = fadd float %11, %16
  %18 = sext i32 %.014 to i64
  %19 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %18
  %20 = sext i32 %.026 to i64
  %21 = getelementptr inbounds [256 x float], ptr %19, i64 0, i64 %20
  store float %17, ptr %21, align 4
  br label %22

22:                                               ; preds = %5
  %23 = add i32 %.014, 1
  %24 = icmp slt i32 %23, 256
  br i1 %24, label %5, label %25, !llvm.loop !150

25:                                               ; preds = %22
  br label %26

26:                                               ; preds = %25, %43
  %.05 = phi i32 [ 1, %25 ], [ %44, %43 ]
  %27 = sub i32 %.026, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %28
  %30 = sext i32 %.05 to i64
  %31 = getelementptr inbounds [256 x float], ptr %29, i64 0, i64 %30
  %32 = load float, ptr %31, align 4
  %33 = sext i32 %.026 to i64
  %34 = getelementptr inbounds [256 x [256 x float]], ptr @cc, i64 0, i64 %33
  %35 = sext i32 %.05 to i64
  %36 = getelementptr inbounds [256 x float], ptr %34, i64 0, i64 %35
  %37 = load float, ptr %36, align 4
  %38 = fadd float %32, %37
  %39 = sext i32 %.026 to i64
  %40 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %39
  %41 = sext i32 %.05 to i64
  %42 = getelementptr inbounds [256 x float], ptr %40, i64 0, i64 %41
  store float %38, ptr %42, align 4
  br label %43

43:                                               ; preds = %26
  %44 = add i32 %.05, 1
  %45 = icmp slt i32 %44, 256
  br i1 %45, label %26, label %46, !llvm.loop !151

46:                                               ; preds = %43
  br label %47

47:                                               ; preds = %46
  %48 = add i32 %.026, 1
  %49 = icmp slt i32 %48, 256
  br i1 %49, label %4, label %50, !llvm.loop !152

50:                                               ; preds = %47
  %51 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %52

52:                                               ; preds = %50
  %53 = add i32 %.037, 1
  %54 = icmp slt i32 %53, 100
  br i1 %54, label %3, label %55, !llvm.loop !153

55:                                               ; preds = %52
  %56 = call i32 @clock()
  %57 = sub i32 %56, %2
  %58 = sitofp i32 %57 to double
  %59 = fdiv double %58, 1.000000e+06
  %60 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@DJHLOPOO@S2233?7?5?$CF?42f?5?7?7?$AA@", double noundef %59)
  call void @check(i32 noundef 1122)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s235() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05ENNAJOED@s235?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %44
  %.025 = phi i32 [ 0, %0 ], [ %45, %44 ]
  br label %4

4:                                                ; preds = %3, %39
  %.014 = phi i32 [ 0, %3 ], [ %40, %39 ]
  %5 = sext i32 %.014 to i64
  %6 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %5
  %7 = load float, ptr %6, align 4
  %8 = sext i32 %.014 to i64
  %9 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %8
  %10 = load float, ptr %9, align 4
  %11 = sext i32 %.014 to i64
  %12 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %11
  %13 = load float, ptr %12, align 4
  %14 = call float @llvm.fmuladd.f32(float %7, float %10, float %13)
  store float %14, ptr %12, align 4
  br label %15

15:                                               ; preds = %4, %35
  %.03 = phi i32 [ 1, %4 ], [ %36, %35 ]
  %16 = sub i32 %.03, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %17
  %19 = sext i32 %.014 to i64
  %20 = getelementptr inbounds [256 x float], ptr %18, i64 0, i64 %19
  %21 = load float, ptr %20, align 4
  %22 = sext i32 %.03 to i64
  %23 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %22
  %24 = sext i32 %.014 to i64
  %25 = getelementptr inbounds [256 x float], ptr %23, i64 0, i64 %24
  %26 = load float, ptr %25, align 4
  %27 = sext i32 %.014 to i64
  %28 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %27
  %29 = load float, ptr %28, align 4
  %30 = call float @llvm.fmuladd.f32(float %26, float %29, float %21)
  %31 = sext i32 %.03 to i64
  %32 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %31
  %33 = sext i32 %.014 to i64
  %34 = getelementptr inbounds [256 x float], ptr %32, i64 0, i64 %33
  store float %30, ptr %34, align 4
  br label %35

35:                                               ; preds = %15
  %36 = add i32 %.03, 1
  %37 = icmp slt i32 %36, 256
  br i1 %37, label %15, label %38, !llvm.loop !154

38:                                               ; preds = %35
  br label %39

39:                                               ; preds = %38
  %40 = add i32 %.014, 1
  %41 = icmp slt i32 %40, 256
  br i1 %41, label %4, label %42, !llvm.loop !155

42:                                               ; preds = %39
  %43 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %44

44:                                               ; preds = %42
  %45 = add i32 %.025, 1
  %46 = icmp slt i32 %45, 200
  br i1 %46, label %3, label %47, !llvm.loop !156

47:                                               ; preds = %44
  %48 = call i32 @clock()
  %49 = sub i32 %48, %2
  %50 = sitofp i32 %49 to double
  %51 = fdiv double %50, 1.000000e+06
  %52 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@FJJALPJJ@S235?7?5?$CF?42f?5?7?7?$AA@", double noundef %51)
  call void @check(i32 noundef 111)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s241() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05NHAOAOCG@s241?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %37
  %.013 = phi i32 [ 0, %0 ], [ %38, %37 ]
  br label %4

4:                                                ; preds = %3, %32
  %.02 = phi i32 [ 0, %3 ], [ %33, %32 ]
  %5 = sext i32 %.02 to i64
  %6 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %5
  %7 = load float, ptr %6, align 4
  %8 = sext i32 %.02 to i64
  %9 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %8
  %10 = load float, ptr %9, align 4
  %11 = fmul float %7, %10
  %12 = sext i32 %.02 to i64
  %13 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %12
  %14 = load float, ptr %13, align 4
  %15 = fmul float %11, %14
  %16 = sext i32 %.02 to i64
  %17 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %16
  store float %15, ptr %17, align 4
  %18 = sext i32 %.02 to i64
  %19 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %18
  %20 = load float, ptr %19, align 4
  %21 = add i32 %.02, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %22
  %24 = load float, ptr %23, align 4
  %25 = fmul float %20, %24
  %26 = sext i32 %.02 to i64
  %27 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %26
  %28 = load float, ptr %27, align 4
  %29 = fmul float %25, %28
  %30 = sext i32 %.02 to i64
  %31 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %30
  store float %29, ptr %31, align 4
  br label %32

32:                                               ; preds = %4
  %33 = add i32 %.02, 1
  %34 = icmp slt i32 %33, 31999
  br i1 %34, label %4, label %35, !llvm.loop !157

35:                                               ; preds = %32
  %36 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %37

37:                                               ; preds = %35
  %38 = add i32 %.013, 1
  %39 = icmp slt i32 %38, 512
  br i1 %39, label %3, label %40, !llvm.loop !158

40:                                               ; preds = %37
  %41 = call i32 @clock()
  %42 = sub i32 %41, %2
  %43 = sitofp i32 %42 to double
  %44 = fdiv double %43, 1.000000e+06
  %45 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@JNNBCFJE@S241?7?5?$CF?42f?5?7?7?$AA@", double noundef %44)
  call void @check(i32 noundef 12)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s242(float noundef %0, float noundef %1) #7 {
  %3 = call i32 @init(ptr noundef @"??_C@_05NFEILAHP@s242?5?$AA@")
  %4 = call i32 @clock()
  br label %5

5:                                                ; preds = %2, %32
  %.013 = phi i32 [ 0, %2 ], [ %33, %32 ]
  br label %6

6:                                                ; preds = %5, %27
  %.02 = phi i32 [ 1, %5 ], [ %28, %27 ]
  %7 = sub i32 %.02, 1
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %8
  %10 = load float, ptr %9, align 4
  %11 = fadd float %10, %0
  %12 = fadd float %11, %1
  %13 = sext i32 %.02 to i64
  %14 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %13
  %15 = load float, ptr %14, align 4
  %16 = fadd float %12, %15
  %17 = sext i32 %.02 to i64
  %18 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %17
  %19 = load float, ptr %18, align 4
  %20 = fadd float %16, %19
  %21 = sext i32 %.02 to i64
  %22 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %21
  %23 = load float, ptr %22, align 4
  %24 = fadd float %20, %23
  %25 = sext i32 %.02 to i64
  %26 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %25
  store float %24, ptr %26, align 4
  br label %27

27:                                               ; preds = %6
  %28 = add i32 %.02, 1
  %29 = icmp slt i32 %28, 32000
  br i1 %29, label %6, label %30, !llvm.loop !159

30:                                               ; preds = %27
  %31 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %32

32:                                               ; preds = %30
  %33 = add i32 %.013, 1
  %34 = icmp slt i32 %33, 51
  br i1 %34, label %5, label %35, !llvm.loop !160

35:                                               ; preds = %32
  %36 = call i32 @clock()
  %37 = sub i32 %36, %4
  %38 = sitofp i32 %37 to double
  %39 = fdiv double %38, 1.000000e+06
  %40 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@EDDEDJF@S242?7?5?$CF?42f?5?7?7?$AA@", double noundef %39)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s243() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05NEIKNKEI@s243?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %47
  %.013 = phi i32 [ 0, %0 ], [ %48, %47 ]
  br label %4

4:                                                ; preds = %3, %42
  %.02 = phi i32 [ 0, %3 ], [ %43, %42 ]
  %5 = sext i32 %.02 to i64
  %6 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %5
  %7 = load float, ptr %6, align 4
  %8 = sext i32 %.02 to i64
  %9 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %8
  %10 = load float, ptr %9, align 4
  %11 = sext i32 %.02 to i64
  %12 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %11
  %13 = load float, ptr %12, align 4
  %14 = call float @llvm.fmuladd.f32(float %10, float %13, float %7)
  %15 = sext i32 %.02 to i64
  %16 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %15
  store float %14, ptr %16, align 4
  %17 = sext i32 %.02 to i64
  %18 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %17
  %19 = load float, ptr %18, align 4
  %20 = sext i32 %.02 to i64
  %21 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %20
  %22 = load float, ptr %21, align 4
  %23 = sext i32 %.02 to i64
  %24 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %23
  %25 = load float, ptr %24, align 4
  %26 = call float @llvm.fmuladd.f32(float %22, float %25, float %19)
  %27 = sext i32 %.02 to i64
  %28 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %27
  store float %26, ptr %28, align 4
  %29 = sext i32 %.02 to i64
  %30 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %29
  %31 = load float, ptr %30, align 4
  %32 = add i32 %.02, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %33
  %35 = load float, ptr %34, align 4
  %36 = sext i32 %.02 to i64
  %37 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %36
  %38 = load float, ptr %37, align 4
  %39 = call float @llvm.fmuladd.f32(float %35, float %38, float %31)
  %40 = sext i32 %.02 to i64
  %41 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %40
  store float %39, ptr %41, align 4
  br label %42

42:                                               ; preds = %4
  %43 = add i32 %.02, 1
  %44 = icmp slt i32 %43, 31999
  br i1 %44, label %4, label %45, !llvm.loop !161

45:                                               ; preds = %42
  %46 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %47

47:                                               ; preds = %45
  %48 = add i32 %.013, 1
  %49 = icmp slt i32 %48, 256
  br i1 %49, label %3, label %50, !llvm.loop !162

50:                                               ; preds = %47
  %51 = call i32 @clock()
  %52 = sub i32 %51, %2
  %53 = sitofp i32 %52 to double
  %54 = fdiv double %53, 1.000000e+06
  %55 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@MFLNJMFF@S243?7?5?$CF?42f?5?7?7?$AA@", double noundef %54)
  call void @check(i32 noundef 12)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s244() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05NBMFMMMN@s244?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %45
  %.013 = phi i32 [ 0, %0 ], [ %46, %45 ]
  br label %4

4:                                                ; preds = %3, %40
  %.02 = phi i32 [ 0, %3 ], [ %41, %40 ]
  %5 = sext i32 %.02 to i64
  %6 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %5
  %7 = load float, ptr %6, align 4
  %8 = sext i32 %.02 to i64
  %9 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %8
  %10 = load float, ptr %9, align 4
  %11 = sext i32 %.02 to i64
  %12 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %11
  %13 = load float, ptr %12, align 4
  %14 = call float @llvm.fmuladd.f32(float %10, float %13, float %7)
  %15 = sext i32 %.02 to i64
  %16 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %15
  store float %14, ptr %16, align 4
  %17 = sext i32 %.02 to i64
  %18 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %17
  %19 = load float, ptr %18, align 4
  %20 = sext i32 %.02 to i64
  %21 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %20
  %22 = load float, ptr %21, align 4
  %23 = fadd float %19, %22
  %24 = sext i32 %.02 to i64
  %25 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %24
  store float %23, ptr %25, align 4
  %26 = sext i32 %.02 to i64
  %27 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %26
  %28 = load float, ptr %27, align 4
  %29 = add i32 %.02, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %30
  %32 = load float, ptr %31, align 4
  %33 = sext i32 %.02 to i64
  %34 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %33
  %35 = load float, ptr %34, align 4
  %36 = call float @llvm.fmuladd.f32(float %32, float %35, float %28)
  %37 = add i32 %.02, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %38
  store float %36, ptr %39, align 4
  br label %40

40:                                               ; preds = %4
  %41 = add i32 %.02, 1
  %42 = icmp slt i32 %41, 31999
  br i1 %42, label %4, label %43, !llvm.loop !163

43:                                               ; preds = %40
  %44 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %45

45:                                               ; preds = %43
  %46 = add i32 %.013, 1
  %47 = icmp slt i32 %46, 256
  br i1 %47, label %3, label %48, !llvm.loop !164

48:                                               ; preds = %45
  %49 = call i32 @clock()
  %50 = sub i32 %49, %2
  %51 = sitofp i32 %50 to double
  %52 = fdiv double %51, 1.000000e+06
  %53 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@OMIGIJNG@S244?7?5?$CF?42f?5?7?7?$AA@", double noundef %52)
  call void @check(i32 noundef 12)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s1244() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05NBMFMMMN@s244?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %43
  %.013 = phi i32 [ 0, %0 ], [ %44, %43 ]
  br label %4

4:                                                ; preds = %3, %38
  %.02 = phi i32 [ 0, %3 ], [ %39, %38 ]
  %5 = sext i32 %.02 to i64
  %6 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %5
  %7 = load float, ptr %6, align 4
  %8 = sext i32 %.02 to i64
  %9 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %8
  %10 = load float, ptr %9, align 4
  %11 = sext i32 %.02 to i64
  %12 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %11
  %13 = load float, ptr %12, align 4
  %14 = call float @llvm.fmuladd.f32(float %10, float %13, float %7)
  %15 = sext i32 %.02 to i64
  %16 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %15
  %17 = load float, ptr %16, align 4
  %18 = sext i32 %.02 to i64
  %19 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %18
  %20 = load float, ptr %19, align 4
  %21 = call float @llvm.fmuladd.f32(float %17, float %20, float %14)
  %22 = sext i32 %.02 to i64
  %23 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %22
  %24 = load float, ptr %23, align 4
  %25 = fadd float %21, %24
  %26 = sext i32 %.02 to i64
  %27 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %26
  store float %25, ptr %27, align 4
  %28 = sext i32 %.02 to i64
  %29 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %28
  %30 = load float, ptr %29, align 4
  %31 = add i32 %.02, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %32
  %34 = load float, ptr %33, align 4
  %35 = fadd float %30, %34
  %36 = sext i32 %.02 to i64
  %37 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %36
  store float %35, ptr %37, align 4
  br label %38

38:                                               ; preds = %4
  %39 = add i32 %.02, 1
  %40 = icmp slt i32 %39, 31999
  br i1 %40, label %4, label %41, !llvm.loop !165

41:                                               ; preds = %38
  %42 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %43

43:                                               ; preds = %41
  %44 = add i32 %.013, 1
  %45 = icmp slt i32 %44, 256
  br i1 %45, label %3, label %46, !llvm.loop !166

46:                                               ; preds = %43
  %47 = call i32 @clock()
  %48 = sub i32 %47, %2
  %49 = sitofp i32 %48 to double
  %50 = fdiv double %49, 1.000000e+06
  %51 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@BILJDGDJ@S1244?7?5?$CF?42f?5?7?7?$AA@", double noundef %50)
  call void @check(i32 noundef 12)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s2244() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05NBMFMMMN@s244?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %29
  %.013 = phi i32 [ 0, %0 ], [ %30, %29 ]
  br label %4

4:                                                ; preds = %3, %24
  %.02 = phi i32 [ 0, %3 ], [ %25, %24 ]
  %5 = sext i32 %.02 to i64
  %6 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %5
  %7 = load float, ptr %6, align 4
  %8 = sext i32 %.02 to i64
  %9 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %8
  %10 = load float, ptr %9, align 4
  %11 = fadd float %7, %10
  %12 = add i32 %.02, 1
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %13
  store float %11, ptr %14, align 4
  %15 = sext i32 %.02 to i64
  %16 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %15
  %17 = load float, ptr %16, align 4
  %18 = sext i32 %.02 to i64
  %19 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %18
  %20 = load float, ptr %19, align 4
  %21 = fadd float %17, %20
  %22 = sext i32 %.02 to i64
  %23 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %22
  store float %21, ptr %23, align 4
  br label %24

24:                                               ; preds = %4
  %25 = add i32 %.02, 1
  %26 = icmp slt i32 %25, 31999
  br i1 %26, label %4, label %27, !llvm.loop !167

27:                                               ; preds = %24
  %28 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %29

29:                                               ; preds = %27
  %30 = add i32 %.013, 1
  %31 = icmp slt i32 %30, 256
  br i1 %31, label %3, label %32, !llvm.loop !168

32:                                               ; preds = %29
  %33 = call i32 @clock()
  %34 = sub i32 %33, %2
  %35 = sitofp i32 %34 to double
  %36 = fdiv double %35, 1.000000e+06
  %37 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@GENIBDOC@S2244?7?5?$CF?42f?5?7?7?$AA@", double noundef %36)
  call void @check(i32 noundef 12)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s251() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05GPLCGJED@s251?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %23
  %.013 = phi i32 [ 0, %0 ], [ %24, %23 ]
  br label %4

4:                                                ; preds = %3, %18
  %.02 = phi i32 [ 0, %3 ], [ %19, %18 ]
  %5 = sext i32 %.02 to i64
  %6 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %5
  %7 = load float, ptr %6, align 4
  %8 = sext i32 %.02 to i64
  %9 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %8
  %10 = load float, ptr %9, align 4
  %11 = sext i32 %.02 to i64
  %12 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %11
  %13 = load float, ptr %12, align 4
  %14 = call float @llvm.fmuladd.f32(float %10, float %13, float %7)
  %15 = fmul float %14, %14
  %16 = sext i32 %.02 to i64
  %17 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %16
  store float %15, ptr %17, align 4
  br label %18

18:                                               ; preds = %4
  %19 = add i32 %.02, 1
  %20 = icmp slt i32 %19, 32000
  br i1 %20, label %4, label %21, !llvm.loop !169

21:                                               ; preds = %18
  %22 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %23

23:                                               ; preds = %21
  %24 = add i32 %.013, 1
  %25 = icmp slt i32 %24, 1024
  br i1 %25, label %3, label %26, !llvm.loop !170

26:                                               ; preds = %23
  %27 = call i32 @clock()
  %28 = sub i32 %27, %2
  %29 = sitofp i32 %28 to double
  %30 = fdiv double %29, 1.000000e+06
  %31 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@GHEGJPL@S251?7?5?$CF?42f?5?7?7?$AA@", double noundef %30)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s1251() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05GPLCGJED@s251?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %32
  %.013 = phi i32 [ 0, %0 ], [ %33, %32 ]
  br label %4

4:                                                ; preds = %3, %27
  %.02 = phi i32 [ 0, %3 ], [ %28, %27 ]
  %5 = sext i32 %.02 to i64
  %6 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %5
  %7 = load float, ptr %6, align 4
  %8 = sext i32 %.02 to i64
  %9 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %8
  %10 = load float, ptr %9, align 4
  %11 = fadd float %7, %10
  %12 = sext i32 %.02 to i64
  %13 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %12
  %14 = load float, ptr %13, align 4
  %15 = sext i32 %.02 to i64
  %16 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %15
  %17 = load float, ptr %16, align 4
  %18 = fadd float %14, %17
  %19 = sext i32 %.02 to i64
  %20 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %19
  store float %18, ptr %20, align 4
  %21 = sext i32 %.02 to i64
  %22 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %21
  %23 = load float, ptr %22, align 4
  %24 = fmul float %11, %23
  %25 = sext i32 %.02 to i64
  %26 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %25
  store float %24, ptr %26, align 4
  br label %27

27:                                               ; preds = %4
  %28 = add i32 %.02, 1
  %29 = icmp slt i32 %28, 32000
  br i1 %29, label %4, label %30, !llvm.loop !171

30:                                               ; preds = %27
  %31 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %32

32:                                               ; preds = %30
  %33 = add i32 %.013, 1
  %34 = icmp slt i32 %33, 1024
  br i1 %34, label %3, label %35, !llvm.loop !172

35:                                               ; preds = %32
  %36 = call i32 @clock()
  %37 = sub i32 %36, %2
  %38 = sitofp i32 %37 to double
  %39 = fdiv double %38, 1.000000e+06
  %40 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@PCELNGBE@S1251?7?5?$CF?42f?5?7?7?$AA@", double noundef %39)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s2251() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05GPLCGJED@s251?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %32
  %.025 = phi i32 [ 0, %0 ], [ %33, %32 ]
  br label %4

4:                                                ; preds = %3, %27
  %.04 = phi i32 [ 0, %3 ], [ %28, %27 ]
  %.013 = phi float [ 0.000000e+00, %3 ], [ %17, %27 ]
  %5 = sext i32 %.04 to i64
  %6 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %5
  %7 = load float, ptr %6, align 4
  %8 = fmul float %.013, %7
  %9 = sext i32 %.04 to i64
  %10 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %9
  store float %8, ptr %10, align 4
  %11 = sext i32 %.04 to i64
  %12 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %11
  %13 = load float, ptr %12, align 4
  %14 = sext i32 %.04 to i64
  %15 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %14
  %16 = load float, ptr %15, align 4
  %17 = fadd float %13, %16
  %18 = sext i32 %.04 to i64
  %19 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %18
  %20 = load float, ptr %19, align 4
  %21 = sext i32 %.04 to i64
  %22 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %21
  %23 = load float, ptr %22, align 4
  %24 = fadd float %20, %23
  %25 = sext i32 %.04 to i64
  %26 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %25
  store float %24, ptr %26, align 4
  br label %27

27:                                               ; preds = %4
  %28 = add i32 %.04, 1
  %29 = icmp slt i32 %28, 32000
  br i1 %29, label %4, label %30, !llvm.loop !173

30:                                               ; preds = %27
  %31 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %32

32:                                               ; preds = %30
  %33 = add i32 %.025, 1
  %34 = icmp slt i32 %33, 256
  br i1 %34, label %3, label %35, !llvm.loop !174

35:                                               ; preds = %32
  %36 = call i32 @clock()
  %37 = sub i32 %36, %2
  %38 = sitofp i32 %37 to double
  %39 = fdiv double %38, 1.000000e+06
  %40 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@IOCKPDMP@S2251?7?5?$CF?42f?5?7?7?$AA@", double noundef %39)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s3251() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05GPLCGJED@s251?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %38
  %.013 = phi i32 [ 0, %0 ], [ %39, %38 ]
  br label %4

4:                                                ; preds = %3, %33
  %.02 = phi i32 [ 0, %3 ], [ %34, %33 ]
  %5 = sext i32 %.02 to i64
  %6 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %5
  %7 = load float, ptr %6, align 4
  %8 = sext i32 %.02 to i64
  %9 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %8
  %10 = load float, ptr %9, align 4
  %11 = fadd float %7, %10
  %12 = add i32 %.02, 1
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %13
  store float %11, ptr %14, align 4
  %15 = sext i32 %.02 to i64
  %16 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %15
  %17 = load float, ptr %16, align 4
  %18 = sext i32 %.02 to i64
  %19 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %18
  %20 = load float, ptr %19, align 4
  %21 = fmul float %17, %20
  %22 = sext i32 %.02 to i64
  %23 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %22
  store float %21, ptr %23, align 4
  %24 = sext i32 %.02 to i64
  %25 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %24
  %26 = load float, ptr %25, align 4
  %27 = sext i32 %.02 to i64
  %28 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %27
  %29 = load float, ptr %28, align 4
  %30 = fmul float %26, %29
  %31 = sext i32 %.02 to i64
  %32 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %31
  store float %30, ptr %32, align 4
  br label %33

33:                                               ; preds = %4
  %34 = add i32 %.02, 1
  %35 = icmp slt i32 %34, 31999
  br i1 %35, label %4, label %36, !llvm.loop !175

36:                                               ; preds = %33
  %37 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %38

38:                                               ; preds = %36
  %39 = add i32 %.013, 1
  %40 = icmp slt i32 %39, 256
  br i1 %40, label %3, label %41, !llvm.loop !176

41:                                               ; preds = %38
  %42 = call i32 @clock()
  %43 = sub i32 %42, %2
  %44 = sitofp i32 %43 to double
  %45 = fdiv double %44, 1.000000e+06
  %46 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@BDCFBCLJ@S3251?7?5?$CF?42f?5?7?7?$AA@", double noundef %45)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s252() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05GNPENHBK@s252?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %20
  %.015 = phi i32 [ 0, %0 ], [ %21, %20 ]
  br label %4

4:                                                ; preds = %3, %15
  %.04 = phi i32 [ 0, %3 ], [ %16, %15 ]
  %.023 = phi float [ 0.000000e+00, %3 ], [ %11, %15 ]
  %5 = sext i32 %.04 to i64
  %6 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %5
  %7 = load float, ptr %6, align 4
  %8 = sext i32 %.04 to i64
  %9 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %8
  %10 = load float, ptr %9, align 4
  %11 = fmul float %7, %10
  %12 = fadd float %11, %.023
  %13 = sext i32 %.04 to i64
  %14 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %13
  store float %12, ptr %14, align 4
  br label %15

15:                                               ; preds = %4
  %16 = add i32 %.04, 1
  %17 = icmp slt i32 %16, 32000
  br i1 %17, label %4, label %18, !llvm.loop !177

18:                                               ; preds = %15
  %19 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %20

20:                                               ; preds = %18
  %21 = add i32 %.015, 1
  %22 = icmp slt i32 %21, 256
  br i1 %22, label %3, label %23, !llvm.loop !178

23:                                               ; preds = %20
  %24 = call i32 @clock()
  %25 = sub i32 %24, %2
  %26 = sitofp i32 %25 to double
  %27 = fdiv double %26, 1.000000e+06
  %28 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@JPJGAPPK@S252?7?5?$CF?42f?5?7?7?$AA@", double noundef %27)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s253() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05GMDGLNCN@s253?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %36
  %.013 = phi i32 [ 0, %0 ], [ %37, %36 ]
  br label %4

4:                                                ; preds = %3, %31
  %.02 = phi i32 [ 0, %3 ], [ %32, %31 ]
  %5 = sext i32 %.02 to i64
  %6 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %5
  %7 = load float, ptr %6, align 4
  %8 = sext i32 %.02 to i64
  %9 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %8
  %10 = load float, ptr %9, align 4
  %11 = fcmp ogt float %7, %10
  br i1 %11, label %12, label %30

12:                                               ; preds = %4
  %13 = sext i32 %.02 to i64
  %14 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %13
  %15 = load float, ptr %14, align 4
  %16 = sext i32 %.02 to i64
  %17 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %16
  %18 = load float, ptr %17, align 4
  %19 = sext i32 %.02 to i64
  %20 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %19
  %21 = load float, ptr %20, align 4
  %22 = fneg float %18
  %23 = call float @llvm.fmuladd.f32(float %22, float %21, float %15)
  %24 = sext i32 %.02 to i64
  %25 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %24
  %26 = load float, ptr %25, align 4
  %27 = fadd float %26, %23
  store float %27, ptr %25, align 4
  %28 = sext i32 %.02 to i64
  %29 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %28
  store float %23, ptr %29, align 4
  br label %30

30:                                               ; preds = %12, %4
  br label %31

31:                                               ; preds = %30
  %32 = add i32 %.02, 1
  %33 = icmp slt i32 %32, 32000
  br i1 %33, label %4, label %34, !llvm.loop !179

34:                                               ; preds = %31
  %35 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %36

36:                                               ; preds = %34
  %37 = add i32 %.013, 1
  %38 = icmp slt i32 %37, 256
  br i1 %38, label %3, label %39, !llvm.loop !180

39:                                               ; preds = %36
  %40 = call i32 @clock()
  %41 = sub i32 %40, %2
  %42 = sitofp i32 %41 to double
  %43 = fdiv double %42, 1.000000e+06
  %44 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@FOBINADK@S253?7?5?$CF?42f?5?7?7?$AA@", double noundef %43)
  call void @check(i32 noundef 13)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s254() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05GJHJKLKI@s254?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %21
  %.015 = phi i32 [ 0, %0 ], [ %22, %21 ]
  %4 = load float, ptr getelementptr inbounds nuw (i8, ptr @b, i64 127996), align 4
  br label %5

5:                                                ; preds = %3, %16
  %.04 = phi i32 [ 0, %3 ], [ %17, %16 ]
  %.023 = phi float [ %4, %3 ], [ %15, %16 ]
  %6 = sext i32 %.04 to i64
  %7 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %6
  %8 = load float, ptr %7, align 4
  %9 = fadd float %8, %.023
  %10 = fmul float %9, 5.000000e-01
  %11 = sext i32 %.04 to i64
  %12 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %11
  store float %10, ptr %12, align 4
  %13 = sext i32 %.04 to i64
  %14 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %13
  %15 = load float, ptr %14, align 4
  br label %16

16:                                               ; preds = %5
  %17 = add i32 %.04, 1
  %18 = icmp slt i32 %17, 32000
  br i1 %18, label %5, label %19, !llvm.loop !181

19:                                               ; preds = %16
  %20 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %21

21:                                               ; preds = %19
  %22 = add i32 %.015, 1
  %23 = icmp slt i32 %22, 1024
  br i1 %23, label %3, label %24, !llvm.loop !182

24:                                               ; preds = %21
  %25 = call i32 @clock()
  %26 = sub i32 %25, %2
  %27 = sitofp i32 %26 to double
  %28 = fdiv double %27, 1.000000e+06
  %29 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@HHCDMFLJ@S254?7?5?$CF?42f?5?7?7?$AA@", double noundef %28)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s255() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05GILLMBJP@s255?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %23
  %.017 = phi i32 [ 0, %0 ], [ %24, %23 ]
  %4 = load float, ptr getelementptr inbounds nuw (i8, ptr @b, i64 127996), align 4
  %5 = load float, ptr getelementptr inbounds nuw (i8, ptr @b, i64 127992), align 8
  br label %6

6:                                                ; preds = %3, %18
  %.06 = phi i32 [ 0, %3 ], [ %19, %18 ]
  %.025 = phi float [ %5, %3 ], [ %.034, %18 ]
  %.034 = phi float [ %4, %3 ], [ %17, %18 ]
  %7 = sext i32 %.06 to i64
  %8 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %7
  %9 = load float, ptr %8, align 4
  %10 = fadd float %9, %.034
  %11 = fadd float %10, %.025
  %12 = fmul float %11, 3.330000e-01
  %13 = sext i32 %.06 to i64
  %14 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %13
  store float %12, ptr %14, align 4
  %15 = sext i32 %.06 to i64
  %16 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %15
  %17 = load float, ptr %16, align 4
  br label %18

18:                                               ; preds = %6
  %19 = add i32 %.06, 1
  %20 = icmp slt i32 %19, 32000
  br i1 %20, label %6, label %21, !llvm.loop !183

21:                                               ; preds = %18
  %22 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %23

23:                                               ; preds = %21
  %24 = add i32 %.017, 1
  %25 = icmp slt i32 %24, 256
  br i1 %25, label %3, label %26, !llvm.loop !184

26:                                               ; preds = %23
  %27 = call i32 @clock()
  %28 = sub i32 %27, %2
  %29 = sitofp i32 %28 to double
  %30 = fdiv double %29, 1.000000e+06
  %31 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@LGKNBKHJ@S255?7?5?$CF?42f?5?7?7?$AA@", double noundef %30)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s256() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05GKPNHPMG@s256?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %38
  %.025 = phi i32 [ 0, %0 ], [ %39, %38 ]
  br label %4

4:                                                ; preds = %3, %33
  %.014 = phi i32 [ 0, %3 ], [ %34, %33 ]
  br label %5

5:                                                ; preds = %4, %29
  %.03 = phi i32 [ 1, %4 ], [ %30, %29 ]
  %6 = sub i32 %.03, 1
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %7
  %9 = load float, ptr %8, align 4
  %10 = fsub float 1.000000e+00, %9
  %11 = sext i32 %.03 to i64
  %12 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %11
  store float %10, ptr %12, align 4
  %13 = sext i32 %.03 to i64
  %14 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %13
  %15 = load float, ptr %14, align 4
  %16 = sext i32 %.03 to i64
  %17 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %16
  %18 = sext i32 %.014 to i64
  %19 = getelementptr inbounds [256 x float], ptr %17, i64 0, i64 %18
  %20 = load float, ptr %19, align 4
  %21 = sext i32 %.03 to i64
  %22 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %21
  %23 = load float, ptr %22, align 4
  %24 = call float @llvm.fmuladd.f32(float %20, float %23, float %15)
  %25 = sext i32 %.03 to i64
  %26 = getelementptr inbounds [256 x [256 x float]], ptr @cc, i64 0, i64 %25
  %27 = sext i32 %.014 to i64
  %28 = getelementptr inbounds [256 x float], ptr %26, i64 0, i64 %27
  store float %24, ptr %28, align 4
  br label %29

29:                                               ; preds = %5
  %30 = add i32 %.03, 1
  %31 = icmp slt i32 %30, 256
  br i1 %31, label %5, label %32, !llvm.loop !185

32:                                               ; preds = %29
  br label %33

33:                                               ; preds = %32
  %34 = add i32 %.014, 1
  %35 = icmp slt i32 %34, 256
  br i1 %35, label %4, label %36, !llvm.loop !186

36:                                               ; preds = %33
  %37 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %38

38:                                               ; preds = %36
  %39 = add i32 %.025, 1
  %40 = icmp slt i32 %39, 10
  br i1 %40, label %3, label %41, !llvm.loop !187

41:                                               ; preds = %38
  %42 = call i32 @clock()
  %43 = sub i32 %42, %2
  %44 = sitofp i32 %43 to double
  %45 = fdiv double %44, 1.000000e+06
  %46 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@CPEPHMHI@S256?7?5?$CF?42f?5?7?7?$AA@", double noundef %45)
  call void @check(i32 noundef 111)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s257() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05GLDPBFPB@s257?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %40
  %.025 = phi i32 [ 0, %0 ], [ %41, %40 ]
  br label %4

4:                                                ; preds = %3, %35
  %.014 = phi i32 [ 1, %3 ], [ %36, %35 ]
  br label %5

5:                                                ; preds = %4, %31
  %.03 = phi i32 [ 0, %4 ], [ %32, %31 ]
  %6 = sext i32 %.03 to i64
  %7 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %6
  %8 = sext i32 %.014 to i64
  %9 = getelementptr inbounds [256 x float], ptr %7, i64 0, i64 %8
  %10 = load float, ptr %9, align 4
  %11 = sub i32 %.014, 1
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %12
  %14 = load float, ptr %13, align 4
  %15 = fsub float %10, %14
  %16 = sext i32 %.014 to i64
  %17 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %16
  store float %15, ptr %17, align 4
  %18 = sext i32 %.014 to i64
  %19 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %18
  %20 = load float, ptr %19, align 4
  %21 = sext i32 %.03 to i64
  %22 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %21
  %23 = sext i32 %.014 to i64
  %24 = getelementptr inbounds [256 x float], ptr %22, i64 0, i64 %23
  %25 = load float, ptr %24, align 4
  %26 = fadd float %20, %25
  %27 = sext i32 %.03 to i64
  %28 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %27
  %29 = sext i32 %.014 to i64
  %30 = getelementptr inbounds [256 x float], ptr %28, i64 0, i64 %29
  store float %26, ptr %30, align 4
  br label %31

31:                                               ; preds = %5
  %32 = add i32 %.03, 1
  %33 = icmp slt i32 %32, 256
  br i1 %33, label %5, label %34, !llvm.loop !188

34:                                               ; preds = %31
  br label %35

35:                                               ; preds = %34
  %36 = add i32 %.014, 1
  %37 = icmp slt i32 %36, 256
  br i1 %37, label %4, label %38, !llvm.loop !189

38:                                               ; preds = %35
  %39 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %40

40:                                               ; preds = %38
  %41 = add i32 %.025, 1
  %42 = icmp slt i32 %41, 10
  br i1 %42, label %3, label %43, !llvm.loop !190

43:                                               ; preds = %40
  %44 = call i32 @clock()
  %45 = sub i32 %44, %2
  %46 = sitofp i32 %45 to double
  %47 = fdiv double %46, 1.000000e+06
  %48 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@OOMBKDLI@S257?7?5?$CF?42f?5?7?7?$AA@", double noundef %47)
  call void @check(i32 noundef 111)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s258() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05GAGDFCMM@s258?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %40
  %.015 = phi i32 [ 0, %0 ], [ %41, %40 ]
  br label %4

4:                                                ; preds = %3, %35
  %.04 = phi i32 [ 0, %3 ], [ %36, %35 ]
  %.023 = phi float [ 0.000000e+00, %3 ], [ %.1, %35 ]
  %5 = sext i32 %.04 to i64
  %6 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %5
  %7 = load float, ptr %6, align 4
  %8 = fpext float %7 to double
  %9 = fcmp ogt double %8, 0.000000e+00
  br i1 %9, label %10, label %18

10:                                               ; preds = %4
  %11 = sext i32 %.04 to i64
  %12 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %11
  %13 = load float, ptr %12, align 4
  %14 = sext i32 %.04 to i64
  %15 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %14
  %16 = load float, ptr %15, align 4
  %17 = fmul float %13, %16
  br label %18

18:                                               ; preds = %10, %4
  %.1 = phi float [ %17, %10 ], [ %.023, %4 ]
  %19 = sext i32 %.04 to i64
  %20 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %19
  %21 = load float, ptr %20, align 4
  %22 = sext i32 %.04 to i64
  %23 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %22
  %24 = load float, ptr %23, align 4
  %25 = call float @llvm.fmuladd.f32(float %.1, float %21, float %24)
  %26 = sext i32 %.04 to i64
  %27 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %26
  store float %25, ptr %27, align 4
  %28 = fadd float %.1, 1.000000e+00
  %29 = sext i32 %.04 to i64
  %30 = getelementptr inbounds [256 x float], ptr @aa, i64 0, i64 %29
  %31 = load float, ptr %30, align 4
  %32 = fmul float %28, %31
  %33 = sext i32 %.04 to i64
  %34 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %33
  store float %32, ptr %34, align 4
  br label %35

35:                                               ; preds = %18
  %36 = add i32 %.04, 1
  %37 = icmp slt i32 %36, 256
  br i1 %37, label %4, label %38, !llvm.loop !191

38:                                               ; preds = %35
  %39 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %40

40:                                               ; preds = %38
  %41 = add i32 %.015, 1
  %42 = icmp slt i32 %41, 256
  br i1 %42, label %3, label %43, !llvm.loop !192

43:                                               ; preds = %40
  %44 = call i32 @clock()
  %45 = sub i32 %44, %2
  %46 = sitofp i32 %45 to double
  %47 = fdiv double %46, 1.000000e+06
  %48 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@HNDJFHHO@S258?7?5?$CF?42f?5?7?7?$AA@", double noundef %47)
  call void @check(i32 noundef 25)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s261() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05HNAHMGKN@s261?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %33
  %.013 = phi i32 [ 0, %0 ], [ %34, %33 ]
  br label %4

4:                                                ; preds = %3, %28
  %.02 = phi i32 [ 1, %3 ], [ %29, %28 ]
  %5 = sext i32 %.02 to i64
  %6 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %5
  %7 = load float, ptr %6, align 4
  %8 = sext i32 %.02 to i64
  %9 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %8
  %10 = load float, ptr %9, align 4
  %11 = fadd float %7, %10
  %12 = sub i32 %.02, 1
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %13
  %15 = load float, ptr %14, align 4
  %16 = fadd float %11, %15
  %17 = sext i32 %.02 to i64
  %18 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %17
  store float %16, ptr %18, align 4
  %19 = sext i32 %.02 to i64
  %20 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %19
  %21 = load float, ptr %20, align 4
  %22 = sext i32 %.02 to i64
  %23 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %22
  %24 = load float, ptr %23, align 4
  %25 = fmul float %21, %24
  %26 = sext i32 %.02 to i64
  %27 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %26
  store float %25, ptr %27, align 4
  br label %28

28:                                               ; preds = %4
  %29 = add i32 %.02, 1
  %30 = icmp slt i32 %29, 32000
  br i1 %30, label %4, label %31, !llvm.loop !193

31:                                               ; preds = %28
  %32 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %33

33:                                               ; preds = %31
  %34 = add i32 %.013, 1
  %35 = icmp slt i32 %34, 256
  br i1 %35, label %3, label %36, !llvm.loop !194

36:                                               ; preds = %33
  %37 = call i32 @clock()
  %38 = sub i32 %37, %2
  %39 = sitofp i32 %38 to double
  %40 = fdiv double %39, 1.000000e+06
  %41 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@HBOKLLAL@S261?7?5?$CF?42f?5?7?7?$AA@", double noundef %40)
  call void @check(i32 noundef 13)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s271() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05MFLLKBMI@s271?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %26
  %.013 = phi i32 [ 0, %0 ], [ %27, %26 ]
  br label %4

4:                                                ; preds = %3, %21
  %.02 = phi i32 [ 0, %3 ], [ %22, %21 ]
  %5 = sext i32 %.02 to i64
  %6 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %5
  %7 = load float, ptr %6, align 4
  %8 = fcmp ogt float %7, 0.000000e+00
  br i1 %8, label %9, label %20

9:                                                ; preds = %4
  %10 = sext i32 %.02 to i64
  %11 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %10
  %12 = load float, ptr %11, align 4
  %13 = sext i32 %.02 to i64
  %14 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %13
  %15 = load float, ptr %14, align 4
  %16 = sext i32 %.02 to i64
  %17 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %16
  %18 = load float, ptr %17, align 4
  %19 = call float @llvm.fmuladd.f32(float %12, float %15, float %18)
  store float %19, ptr %17, align 4
  br label %20

20:                                               ; preds = %9, %4
  br label %21

21:                                               ; preds = %20
  %22 = add i32 %.02, 1
  %23 = icmp slt i32 %22, 32000
  br i1 %23, label %4, label %24, !llvm.loop !195

24:                                               ; preds = %21
  %25 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %26

26:                                               ; preds = %24
  %27 = add i32 %.013, 1
  %28 = icmp slt i32 %27, 1024
  br i1 %28, label %3, label %29, !llvm.loop !196

29:                                               ; preds = %26
  %30 = call i32 @clock()
  %31 = sub i32 %30, %2
  %32 = sitofp i32 %31 to double
  %33 = fdiv double %32, 1.000000e+06
  %34 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@OKEPPHGE@S271?7?5?$CF?42f?5?7?7?$AA@", double noundef %33)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s272(float noundef %0) #7 {
  %2 = call i32 @init(ptr noundef @"??_C@_05MHPNBPJB@s272?5?$AA@")
  %3 = call i32 @clock()
  br label %4

4:                                                ; preds = %1, %37
  %.013 = phi i32 [ 0, %1 ], [ %38, %37 ]
  br label %5

5:                                                ; preds = %4, %32
  %.02 = phi i32 [ 0, %4 ], [ %33, %32 ]
  %6 = sext i32 %.02 to i64
  %7 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %6
  %8 = load float, ptr %7, align 4
  %9 = fcmp oge float %8, %0
  br i1 %9, label %10, label %31

10:                                               ; preds = %5
  %11 = sext i32 %.02 to i64
  %12 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %11
  %13 = load float, ptr %12, align 4
  %14 = sext i32 %.02 to i64
  %15 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %14
  %16 = load float, ptr %15, align 4
  %17 = sext i32 %.02 to i64
  %18 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %17
  %19 = load float, ptr %18, align 4
  %20 = call float @llvm.fmuladd.f32(float %13, float %16, float %19)
  store float %20, ptr %18, align 4
  %21 = sext i32 %.02 to i64
  %22 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %21
  %23 = load float, ptr %22, align 4
  %24 = sext i32 %.02 to i64
  %25 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %24
  %26 = load float, ptr %25, align 4
  %27 = sext i32 %.02 to i64
  %28 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %27
  %29 = load float, ptr %28, align 4
  %30 = call float @llvm.fmuladd.f32(float %23, float %26, float %29)
  store float %30, ptr %28, align 4
  br label %31

31:                                               ; preds = %10, %5
  br label %32

32:                                               ; preds = %31
  %33 = add i32 %.02, 1
  %34 = icmp slt i32 %33, 32000
  br i1 %34, label %5, label %35, !llvm.loop !197

35:                                               ; preds = %32
  %36 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %37

37:                                               ; preds = %35
  %38 = add i32 %.013, 1
  %39 = icmp slt i32 %38, 256
  br i1 %39, label %4, label %40, !llvm.loop !198

40:                                               ; preds = %37
  %41 = call i32 @clock()
  %42 = sub i32 %41, %3
  %43 = sitofp i32 %42 to double
  %44 = fdiv double %43, 1.000000e+06
  %45 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@HDKNJBGF@S272?7?5?$CF?42f?5?7?7?$AA@", double noundef %44)
  call void @check(i32 noundef 12)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s273() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05MGDPHFKG@s273?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %46
  %.013 = phi i32 [ 0, %0 ], [ %47, %46 ]
  br label %4

4:                                                ; preds = %3, %41
  %.02 = phi i32 [ 0, %3 ], [ %42, %41 ]
  %5 = sext i32 %.02 to i64
  %6 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %5
  %7 = load float, ptr %6, align 4
  %8 = sext i32 %.02 to i64
  %9 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %8
  %10 = load float, ptr %9, align 4
  %11 = sext i32 %.02 to i64
  %12 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %11
  %13 = load float, ptr %12, align 4
  %14 = call float @llvm.fmuladd.f32(float %7, float %10, float %13)
  store float %14, ptr %12, align 4
  %15 = sext i32 %.02 to i64
  %16 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %15
  %17 = load float, ptr %16, align 4
  %18 = fcmp olt float %17, 0.000000e+00
  br i1 %18, label %19, label %30

19:                                               ; preds = %4
  %20 = sext i32 %.02 to i64
  %21 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %20
  %22 = load float, ptr %21, align 4
  %23 = sext i32 %.02 to i64
  %24 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %23
  %25 = load float, ptr %24, align 4
  %26 = sext i32 %.02 to i64
  %27 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %26
  %28 = load float, ptr %27, align 4
  %29 = call float @llvm.fmuladd.f32(float %22, float %25, float %28)
  store float %29, ptr %27, align 4
  br label %30

30:                                               ; preds = %19, %4
  %31 = sext i32 %.02 to i64
  %32 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %31
  %33 = load float, ptr %32, align 4
  %34 = sext i32 %.02 to i64
  %35 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %34
  %36 = load float, ptr %35, align 4
  %37 = sext i32 %.02 to i64
  %38 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %37
  %39 = load float, ptr %38, align 4
  %40 = call float @llvm.fmuladd.f32(float %33, float %36, float %39)
  store float %40, ptr %38, align 4
  br label %41

41:                                               ; preds = %30
  %42 = add i32 %.02, 1
  %43 = icmp slt i32 %42, 32000
  br i1 %43, label %4, label %44, !llvm.loop !199

44:                                               ; preds = %41
  %45 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %46

46:                                               ; preds = %44
  %47 = add i32 %.013, 1
  %48 = icmp slt i32 %47, 256
  br i1 %48, label %3, label %49, !llvm.loop !200

49:                                               ; preds = %46
  %50 = call i32 @clock()
  %51 = sub i32 %50, %2
  %52 = sitofp i32 %51 to double
  %53 = fdiv double %52, 1.000000e+06
  %54 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@LCCDEOKF@S273?7?5?$CF?42f?5?7?7?$AA@", double noundef %53)
  call void @check(i32 noundef 123)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s274() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05MDHAGDCD@s274?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %47
  %.013 = phi i32 [ 0, %0 ], [ %48, %47 ]
  br label %4

4:                                                ; preds = %3, %42
  %.02 = phi i32 [ 0, %3 ], [ %43, %42 ]
  %5 = sext i32 %.02 to i64
  %6 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %5
  %7 = load float, ptr %6, align 4
  %8 = sext i32 %.02 to i64
  %9 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %8
  %10 = load float, ptr %9, align 4
  %11 = sext i32 %.02 to i64
  %12 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %11
  %13 = load float, ptr %12, align 4
  %14 = call float @llvm.fmuladd.f32(float %10, float %13, float %7)
  %15 = sext i32 %.02 to i64
  %16 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %15
  store float %14, ptr %16, align 4
  %17 = sext i32 %.02 to i64
  %18 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %17
  %19 = load float, ptr %18, align 4
  %20 = fcmp ogt float %19, 0.000000e+00
  br i1 %20, label %21, label %31

21:                                               ; preds = %4
  %22 = sext i32 %.02 to i64
  %23 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %22
  %24 = load float, ptr %23, align 4
  %25 = sext i32 %.02 to i64
  %26 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %25
  %27 = load float, ptr %26, align 4
  %28 = fadd float %24, %27
  %29 = sext i32 %.02 to i64
  %30 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %29
  store float %28, ptr %30, align 4
  br label %41

31:                                               ; preds = %4
  %32 = sext i32 %.02 to i64
  %33 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %32
  %34 = load float, ptr %33, align 4
  %35 = sext i32 %.02 to i64
  %36 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %35
  %37 = load float, ptr %36, align 4
  %38 = fmul float %34, %37
  %39 = sext i32 %.02 to i64
  %40 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %39
  store float %38, ptr %40, align 4
  br label %41

41:                                               ; preds = %31, %21
  br label %42

42:                                               ; preds = %41
  %43 = add i32 %.02, 1
  %44 = icmp slt i32 %43, 32000
  br i1 %44, label %4, label %45, !llvm.loop !201

45:                                               ; preds = %42
  %46 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %47

47:                                               ; preds = %45
  %48 = add i32 %.013, 1
  %49 = icmp slt i32 %48, 256
  br i1 %49, label %3, label %50, !llvm.loop !202

50:                                               ; preds = %47
  %51 = call i32 @clock()
  %52 = sub i32 %51, %2
  %53 = sitofp i32 %52 to double
  %54 = fdiv double %53, 1.000000e+06
  %55 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@JLBIFLCG@S274?7?5?$CF?42f?5?7?7?$AA@", double noundef %54)
  call void @check(i32 noundef 12)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s275() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05MCLCAJBE@s275?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %42
  %.025 = phi i32 [ 0, %0 ], [ %43, %42 ]
  br label %4

4:                                                ; preds = %3, %37
  %.014 = phi i32 [ 0, %3 ], [ %38, %37 ]
  %5 = sext i32 %.014 to i64
  %6 = getelementptr inbounds [256 x float], ptr @aa, i64 0, i64 %5
  %7 = load float, ptr %6, align 4
  %8 = fcmp ogt float %7, 0.000000e+00
  br i1 %8, label %9, label %36

9:                                                ; preds = %4
  br label %10

10:                                               ; preds = %9, %32
  %.03 = phi i32 [ 1, %9 ], [ %33, %32 ]
  %11 = sub i32 %.03, 1
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %12
  %14 = sext i32 %.014 to i64
  %15 = getelementptr inbounds [256 x float], ptr %13, i64 0, i64 %14
  %16 = load float, ptr %15, align 4
  %17 = sext i32 %.03 to i64
  %18 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %17
  %19 = sext i32 %.014 to i64
  %20 = getelementptr inbounds [256 x float], ptr %18, i64 0, i64 %19
  %21 = load float, ptr %20, align 4
  %22 = sext i32 %.03 to i64
  %23 = getelementptr inbounds [256 x [256 x float]], ptr @cc, i64 0, i64 %22
  %24 = sext i32 %.014 to i64
  %25 = getelementptr inbounds [256 x float], ptr %23, i64 0, i64 %24
  %26 = load float, ptr %25, align 4
  %27 = call float @llvm.fmuladd.f32(float %21, float %26, float %16)
  %28 = sext i32 %.03 to i64
  %29 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %28
  %30 = sext i32 %.014 to i64
  %31 = getelementptr inbounds [256 x float], ptr %29, i64 0, i64 %30
  store float %27, ptr %31, align 4
  br label %32

32:                                               ; preds = %10
  %33 = add i32 %.03, 1
  %34 = icmp slt i32 %33, 256
  br i1 %34, label %10, label %35, !llvm.loop !203

35:                                               ; preds = %32
  br label %36

36:                                               ; preds = %35, %4
  br label %37

37:                                               ; preds = %36
  %38 = add i32 %.014, 1
  %39 = icmp slt i32 %38, 256
  br i1 %39, label %4, label %40, !llvm.loop !204

40:                                               ; preds = %37
  %41 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %42

42:                                               ; preds = %40
  %43 = add i32 %.025, 1
  %44 = icmp slt i32 %43, 10
  br i1 %44, label %3, label %45, !llvm.loop !205

45:                                               ; preds = %42
  %46 = call i32 @clock()
  %47 = sub i32 %46, %2
  %48 = sitofp i32 %47 to double
  %49 = fdiv double %48, 1.000000e+06
  %50 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@FKJGIEOG@S275?7?5?$CF?42f?5?7?7?$AA@", double noundef %49)
  call void @check(i32 noundef 11)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s2275() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05MCLCAJBE@s275?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %47
  %.025 = phi i32 [ 0, %0 ], [ %48, %47 ]
  br label %4

4:                                                ; preds = %3, %42
  %.014 = phi i32 [ 0, %3 ], [ %43, %42 ]
  br label %5

5:                                                ; preds = %4, %26
  %.03 = phi i32 [ 0, %4 ], [ %27, %26 ]
  %6 = sext i32 %.03 to i64
  %7 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %6
  %8 = sext i32 %.014 to i64
  %9 = getelementptr inbounds [256 x float], ptr %7, i64 0, i64 %8
  %10 = load float, ptr %9, align 4
  %11 = sext i32 %.03 to i64
  %12 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %11
  %13 = sext i32 %.014 to i64
  %14 = getelementptr inbounds [256 x float], ptr %12, i64 0, i64 %13
  %15 = load float, ptr %14, align 4
  %16 = sext i32 %.03 to i64
  %17 = getelementptr inbounds [256 x [256 x float]], ptr @cc, i64 0, i64 %16
  %18 = sext i32 %.014 to i64
  %19 = getelementptr inbounds [256 x float], ptr %17, i64 0, i64 %18
  %20 = load float, ptr %19, align 4
  %21 = call float @llvm.fmuladd.f32(float %15, float %20, float %10)
  %22 = sext i32 %.03 to i64
  %23 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %22
  %24 = sext i32 %.014 to i64
  %25 = getelementptr inbounds [256 x float], ptr %23, i64 0, i64 %24
  store float %21, ptr %25, align 4
  br label %26

26:                                               ; preds = %5
  %27 = add i32 %.03, 1
  %28 = icmp slt i32 %27, 256
  br i1 %28, label %5, label %29, !llvm.loop !206

29:                                               ; preds = %26
  %30 = sext i32 %.014 to i64
  %31 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %30
  %32 = load float, ptr %31, align 4
  %33 = sext i32 %.014 to i64
  %34 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %33
  %35 = load float, ptr %34, align 4
  %36 = sext i32 %.014 to i64
  %37 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %36
  %38 = load float, ptr %37, align 4
  %39 = call float @llvm.fmuladd.f32(float %35, float %38, float %32)
  %40 = sext i32 %.014 to i64
  %41 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %40
  store float %39, ptr %41, align 4
  br label %42

42:                                               ; preds = %29
  %43 = add i32 %.014, 1
  %44 = icmp slt i32 %43, 256
  br i1 %44, label %4, label %45, !llvm.loop !207

45:                                               ; preds = %42
  %46 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %47

47:                                               ; preds = %45
  %48 = add i32 %.025, 1
  %49 = icmp slt i32 %48, 100
  br i1 %49, label %3, label %50, !llvm.loop !208

50:                                               ; preds = %47
  %51 = call i32 @clock()
  %52 = sub i32 %51, %2
  %53 = sitofp i32 %52 to double
  %54 = fdiv double %53, 1.000000e+06
  %55 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@NCMIBONC@S2275?7?5?$CF?42f?5?7?7?$AA@", double noundef %54)
  call void @check(i32 noundef 11)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s276() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05MAPELHEN@s276?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %35
  %.013 = phi i32 [ 0, %0 ], [ %36, %35 ]
  br label %4

4:                                                ; preds = %3, %30
  %.02 = phi i32 [ 0, %3 ], [ %31, %30 ]
  %5 = add i32 %.02, 1
  %6 = icmp slt i32 %5, 16000
  br i1 %6, label %7, label %18

7:                                                ; preds = %4
  %8 = sext i32 %.02 to i64
  %9 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %8
  %10 = load float, ptr %9, align 4
  %11 = sext i32 %.02 to i64
  %12 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %11
  %13 = load float, ptr %12, align 4
  %14 = sext i32 %.02 to i64
  %15 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %14
  %16 = load float, ptr %15, align 4
  %17 = call float @llvm.fmuladd.f32(float %10, float %13, float %16)
  store float %17, ptr %15, align 4
  br label %29

18:                                               ; preds = %4
  %19 = sext i32 %.02 to i64
  %20 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %19
  %21 = load float, ptr %20, align 4
  %22 = sext i32 %.02 to i64
  %23 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %22
  %24 = load float, ptr %23, align 4
  %25 = sext i32 %.02 to i64
  %26 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %25
  %27 = load float, ptr %26, align 4
  %28 = call float @llvm.fmuladd.f32(float %21, float %24, float %27)
  store float %28, ptr %26, align 4
  br label %29

29:                                               ; preds = %18, %7
  br label %30

30:                                               ; preds = %29
  %31 = add i32 %.02, 1
  %32 = icmp slt i32 %31, 32000
  br i1 %32, label %4, label %33, !llvm.loop !209

33:                                               ; preds = %30
  %34 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %35

35:                                               ; preds = %33
  %36 = add i32 %.013, 1
  %37 = icmp slt i32 %36, 1024
  br i1 %37, label %3, label %38, !llvm.loop !210

38:                                               ; preds = %35
  %39 = call i32 @clock()
  %40 = sub i32 %39, %2
  %41 = sitofp i32 %40 to double
  %42 = fdiv double %41, 1.000000e+06
  %43 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@MDHEOCOH@S276?7?5?$CF?42f?5?7?7?$AA@", double noundef %42)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s277() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05MBDGNNHK@s277?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %47
  %.013 = phi i32 [ 0, %0 ], [ %48, %47 ]
  br label %4

4:                                                ; preds = %3, %42
  %.02 = phi i32 [ 0, %3 ], [ %43, %42 ]
  %5 = sext i32 %.02 to i64
  %6 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %5
  %7 = load float, ptr %6, align 4
  %8 = fcmp oge float %7, 0.000000e+00
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  br label %41

10:                                               ; preds = %4
  %11 = sext i32 %.02 to i64
  %12 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %11
  %13 = load float, ptr %12, align 4
  %14 = fcmp oge float %13, 0.000000e+00
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %27

16:                                               ; preds = %10
  %17 = sext i32 %.02 to i64
  %18 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %17
  %19 = load float, ptr %18, align 4
  %20 = sext i32 %.02 to i64
  %21 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %20
  %22 = load float, ptr %21, align 4
  %23 = sext i32 %.02 to i64
  %24 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %23
  %25 = load float, ptr %24, align 4
  %26 = call float @llvm.fmuladd.f32(float %19, float %22, float %25)
  store float %26, ptr %24, align 4
  br label %27

27:                                               ; preds = %16, %15
  %28 = sext i32 %.02 to i64
  %29 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %28
  %30 = load float, ptr %29, align 4
  %31 = sext i32 %.02 to i64
  %32 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %31
  %33 = load float, ptr %32, align 4
  %34 = sext i32 %.02 to i64
  %35 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %34
  %36 = load float, ptr %35, align 4
  %37 = call float @llvm.fmuladd.f32(float %33, float %36, float %30)
  %38 = add i32 %.02, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %39
  store float %37, ptr %40, align 4
  br label %41

41:                                               ; preds = %27, %9
  br label %42

42:                                               ; preds = %41
  %43 = add i32 %.02, 1
  %44 = icmp slt i32 %43, 31999
  br i1 %44, label %4, label %45, !llvm.loop !211

45:                                               ; preds = %42
  %46 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %47

47:                                               ; preds = %45
  %48 = add i32 %.013, 1
  %49 = icmp slt i32 %48, 256
  br i1 %49, label %3, label %50, !llvm.loop !212

50:                                               ; preds = %47
  %51 = call i32 @clock()
  %52 = sub i32 %51, %2
  %53 = sitofp i32 %52 to double
  %54 = fdiv double %53, 1.000000e+06
  %55 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@CPKDNCH@S277?7?5?$CF?42f?5?7?7?$AA@", double noundef %54)
  call void @check(i32 noundef 12)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s278() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05MKGKJKEH@s278?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %56
  %.013 = phi i32 [ 0, %0 ], [ %57, %56 ]
  br label %4

4:                                                ; preds = %3, %51
  %.02 = phi i32 [ 0, %3 ], [ %52, %51 ]
  %5 = sext i32 %.02 to i64
  %6 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %5
  %7 = load float, ptr %6, align 4
  %8 = fcmp ogt float %7, 0.000000e+00
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  br label %24

10:                                               ; preds = %4
  %11 = sext i32 %.02 to i64
  %12 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %11
  %13 = load float, ptr %12, align 4
  %14 = fneg float %13
  %15 = sext i32 %.02 to i64
  %16 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %15
  %17 = load float, ptr %16, align 4
  %18 = sext i32 %.02 to i64
  %19 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %18
  %20 = load float, ptr %19, align 4
  %21 = call float @llvm.fmuladd.f32(float %17, float %20, float %14)
  %22 = sext i32 %.02 to i64
  %23 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %22
  store float %21, ptr %23, align 4
  br label %38

24:                                               ; preds = %9
  %25 = sext i32 %.02 to i64
  %26 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %25
  %27 = load float, ptr %26, align 4
  %28 = fneg float %27
  %29 = sext i32 %.02 to i64
  %30 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %29
  %31 = load float, ptr %30, align 4
  %32 = sext i32 %.02 to i64
  %33 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %32
  %34 = load float, ptr %33, align 4
  %35 = call float @llvm.fmuladd.f32(float %31, float %34, float %28)
  %36 = sext i32 %.02 to i64
  %37 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %36
  store float %35, ptr %37, align 4
  br label %38

38:                                               ; preds = %24, %10
  %39 = sext i32 %.02 to i64
  %40 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %39
  %41 = load float, ptr %40, align 4
  %42 = sext i32 %.02 to i64
  %43 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %42
  %44 = load float, ptr %43, align 4
  %45 = sext i32 %.02 to i64
  %46 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %45
  %47 = load float, ptr %46, align 4
  %48 = call float @llvm.fmuladd.f32(float %44, float %47, float %41)
  %49 = sext i32 %.02 to i64
  %50 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %49
  store float %48, ptr %50, align 4
  br label %51

51:                                               ; preds = %38
  %52 = add i32 %.02, 1
  %53 = icmp slt i32 %52, 32000
  br i1 %53, label %4, label %54, !llvm.loop !213

54:                                               ; preds = %51
  %55 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %56

56:                                               ; preds = %54
  %57 = add i32 %.013, 1
  %58 = icmp slt i32 %57, 256
  br i1 %58, label %3, label %59, !llvm.loop !214

59:                                               ; preds = %56
  %60 = call i32 @clock()
  %61 = sub i32 %60, %2
  %62 = sitofp i32 %61 to double
  %63 = fdiv double %62, 1.000000e+06
  %64 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@JBACMJOB@S278?7?5?$CF?42f?5?7?7?$AA@", double noundef %63)
  call void @check(i32 noundef 123)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s279() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05MLKIPAHA@s279?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %75
  %.013 = phi i32 [ 0, %0 ], [ %76, %75 ]
  br label %4

4:                                                ; preds = %3, %70
  %.02 = phi i32 [ 0, %3 ], [ %71, %70 ]
  %5 = sext i32 %.02 to i64
  %6 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %5
  %7 = load float, ptr %6, align 4
  %8 = fcmp ogt float %7, 0.000000e+00
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  br label %43

10:                                               ; preds = %4
  %11 = sext i32 %.02 to i64
  %12 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %11
  %13 = load float, ptr %12, align 4
  %14 = fneg float %13
  %15 = sext i32 %.02 to i64
  %16 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %15
  %17 = load float, ptr %16, align 4
  %18 = sext i32 %.02 to i64
  %19 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %18
  %20 = load float, ptr %19, align 4
  %21 = call float @llvm.fmuladd.f32(float %17, float %20, float %14)
  %22 = sext i32 %.02 to i64
  %23 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %22
  store float %21, ptr %23, align 4
  %24 = sext i32 %.02 to i64
  %25 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %24
  %26 = load float, ptr %25, align 4
  %27 = sext i32 %.02 to i64
  %28 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %27
  %29 = load float, ptr %28, align 4
  %30 = fcmp ole float %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %10
  br label %57

32:                                               ; preds = %10
  %33 = sext i32 %.02 to i64
  %34 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %33
  %35 = load float, ptr %34, align 4
  %36 = sext i32 %.02 to i64
  %37 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %36
  %38 = load float, ptr %37, align 4
  %39 = sext i32 %.02 to i64
  %40 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %39
  %41 = load float, ptr %40, align 4
  %42 = call float @llvm.fmuladd.f32(float %35, float %38, float %41)
  store float %42, ptr %40, align 4
  br label %57

43:                                               ; preds = %9
  %44 = sext i32 %.02 to i64
  %45 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %44
  %46 = load float, ptr %45, align 4
  %47 = fneg float %46
  %48 = sext i32 %.02 to i64
  %49 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %48
  %50 = load float, ptr %49, align 4
  %51 = sext i32 %.02 to i64
  %52 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %51
  %53 = load float, ptr %52, align 4
  %54 = call float @llvm.fmuladd.f32(float %50, float %53, float %47)
  %55 = sext i32 %.02 to i64
  %56 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %55
  store float %54, ptr %56, align 4
  br label %57

57:                                               ; preds = %43, %32, %31
  %58 = sext i32 %.02 to i64
  %59 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %58
  %60 = load float, ptr %59, align 4
  %61 = sext i32 %.02 to i64
  %62 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %61
  %63 = load float, ptr %62, align 4
  %64 = sext i32 %.02 to i64
  %65 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %64
  %66 = load float, ptr %65, align 4
  %67 = call float @llvm.fmuladd.f32(float %63, float %66, float %60)
  %68 = sext i32 %.02 to i64
  %69 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %68
  store float %67, ptr %69, align 4
  br label %70

70:                                               ; preds = %57
  %71 = add i32 %.02, 1
  %72 = icmp slt i32 %71, 32000
  br i1 %72, label %4, label %73, !llvm.loop !215

73:                                               ; preds = %70
  %74 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %75

75:                                               ; preds = %73
  %76 = add i32 %.013, 1
  %77 = icmp slt i32 %76, 128
  br i1 %77, label %3, label %78, !llvm.loop !216

78:                                               ; preds = %75
  %79 = call i32 @clock()
  %80 = sub i32 %79, %2
  %81 = sitofp i32 %80 to double
  %82 = fdiv double %81, 1.000000e+06
  %83 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@FAIMBGCB@S279?7?5?$CF?42f?5?7?7?$AA@", double noundef %82)
  call void @check(i32 noundef 123)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s1279() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05MLKIPAHA@s279?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %35
  %.013 = phi i32 [ 0, %0 ], [ %36, %35 ]
  br label %4

4:                                                ; preds = %3, %30
  %.02 = phi i32 [ 0, %3 ], [ %31, %30 ]
  %5 = sext i32 %.02 to i64
  %6 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %5
  %7 = load float, ptr %6, align 4
  %8 = fcmp olt float %7, 0.000000e+00
  br i1 %8, label %9, label %29

9:                                                ; preds = %4
  %10 = sext i32 %.02 to i64
  %11 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %10
  %12 = load float, ptr %11, align 4
  %13 = sext i32 %.02 to i64
  %14 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %13
  %15 = load float, ptr %14, align 4
  %16 = fcmp ogt float %12, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %9
  %18 = sext i32 %.02 to i64
  %19 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %18
  %20 = load float, ptr %19, align 4
  %21 = sext i32 %.02 to i64
  %22 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %21
  %23 = load float, ptr %22, align 4
  %24 = sext i32 %.02 to i64
  %25 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %24
  %26 = load float, ptr %25, align 4
  %27 = call float @llvm.fmuladd.f32(float %20, float %23, float %26)
  store float %27, ptr %25, align 4
  br label %28

28:                                               ; preds = %17, %9
  br label %29

29:                                               ; preds = %28, %4
  br label %30

30:                                               ; preds = %29
  %31 = add i32 %.02, 1
  %32 = icmp slt i32 %31, 32000
  br i1 %32, label %4, label %33, !llvm.loop !217

33:                                               ; preds = %30
  %34 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %35

35:                                               ; preds = %33
  %36 = add i32 %.013, 1
  %37 = icmp slt i32 %36, 256
  br i1 %37, label %3, label %38, !llvm.loop !218

38:                                               ; preds = %35
  %39 = call i32 @clock()
  %40 = sub i32 %39, %2
  %41 = sitofp i32 %40 to double
  %42 = fdiv double %41, 1.000000e+06
  %43 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@KELDKJMO@S1279?7?5?$CF?42f?5?7?7?$AA@", double noundef %42)
  call void @check(i32 noundef 123)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s2710(float noundef %0) #7 {
  %2 = call i32 @init(ptr noundef @"??_C@_05IPHJLDJJ@s2710?$AA@")
  %3 = call i32 @clock()
  br label %4

4:                                                ; preds = %1, %79
  %.014 = phi i32 [ 0, %1 ], [ %80, %79 ]
  br label %5

5:                                                ; preds = %4, %74
  %.02 = phi i32 [ 0, %4 ], [ %75, %74 ]
  %6 = sext i32 %.02 to i64
  %7 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %6
  %8 = load float, ptr %7, align 4
  %9 = sext i32 %.02 to i64
  %10 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %9
  %11 = load float, ptr %10, align 4
  %12 = fcmp ogt float %8, %11
  br i1 %12, label %13, label %34

13:                                               ; preds = %5
  %14 = sext i32 %.02 to i64
  %15 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %14
  %16 = load float, ptr %15, align 4
  %17 = sext i32 %.02 to i64
  %18 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %17
  %19 = load float, ptr %18, align 4
  %20 = sext i32 %.02 to i64
  %21 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %20
  %22 = load float, ptr %21, align 4
  %23 = call float @llvm.fmuladd.f32(float %16, float %19, float %22)
  store float %23, ptr %21, align 4
  %24 = sext i32 %.02 to i64
  %25 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %24
  %26 = load float, ptr %25, align 4
  %27 = sext i32 %.02 to i64
  %28 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %27
  %29 = load float, ptr %28, align 4
  %30 = sext i32 %.02 to i64
  %31 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %30
  %32 = load float, ptr %31, align 4
  %33 = call float @llvm.fmuladd.f32(float %26, float %29, float %32)
  store float %33, ptr %31, align 4
  br label %73

34:                                               ; preds = %5
  %35 = sext i32 %.02 to i64
  %36 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %35
  %37 = load float, ptr %36, align 4
  %38 = sext i32 %.02 to i64
  %39 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %38
  %40 = load float, ptr %39, align 4
  %41 = sext i32 %.02 to i64
  %42 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %41
  %43 = load float, ptr %42, align 4
  %44 = call float @llvm.fmuladd.f32(float %40, float %43, float %37)
  %45 = sext i32 %.02 to i64
  %46 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %45
  store float %44, ptr %46, align 4
  %47 = fcmp ogt float %0, 0.000000e+00
  br i1 %47, label %48, label %61

48:                                               ; preds = %34
  %49 = sext i32 %.02 to i64
  %50 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %49
  %51 = load float, ptr %50, align 4
  %52 = sext i32 %.02 to i64
  %53 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %52
  %54 = load float, ptr %53, align 4
  %55 = sext i32 %.02 to i64
  %56 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %55
  %57 = load float, ptr %56, align 4
  %58 = call float @llvm.fmuladd.f32(float %54, float %57, float %51)
  %59 = sext i32 %.02 to i64
  %60 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %59
  store float %58, ptr %60, align 4
  br label %72

61:                                               ; preds = %34
  %62 = sext i32 %.02 to i64
  %63 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %62
  %64 = load float, ptr %63, align 4
  %65 = sext i32 %.02 to i64
  %66 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %65
  %67 = load float, ptr %66, align 4
  %68 = sext i32 %.02 to i64
  %69 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %68
  %70 = load float, ptr %69, align 4
  %71 = call float @llvm.fmuladd.f32(float %64, float %67, float %70)
  store float %71, ptr %69, align 4
  br label %72

72:                                               ; preds = %61, %48
  br label %73

73:                                               ; preds = %72, %13
  %.03 = phi i32 [ %.02, %72 ], [ %.02, %13 ]
  br label %74

74:                                               ; preds = %73
  %75 = add i32 %.03, 1
  %76 = icmp slt i32 %75, 32000
  br i1 %76, label %5, label %77, !llvm.loop !219

77:                                               ; preds = %74
  %78 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %79

79:                                               ; preds = %77
  %80 = add i32 %.014, 1
  %81 = icmp slt i32 %80, 128
  br i1 %81, label %4, label %82, !llvm.loop !220

82:                                               ; preds = %79
  %83 = call i32 @clock()
  %84 = sub i32 %83, %3
  %85 = sitofp i32 %84 to double
  %86 = fdiv double %85, 1.000000e+06
  %87 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@FBINKEGD@S2710?7?5?$CF?42f?5?7?7?$AA@", double noundef %86)
  call void @check(i32 noundef 123)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s2711() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05JGGCICNI@s2711?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %26
  %.013 = phi i32 [ 0, %0 ], [ %27, %26 ]
  br label %4

4:                                                ; preds = %3, %21
  %.02 = phi i32 [ 0, %3 ], [ %22, %21 ]
  %5 = sext i32 %.02 to i64
  %6 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %5
  %7 = load float, ptr %6, align 4
  %8 = fcmp une float %7, 0.000000e+00
  br i1 %8, label %9, label %20

9:                                                ; preds = %4
  %10 = sext i32 %.02 to i64
  %11 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %10
  %12 = load float, ptr %11, align 4
  %13 = sext i32 %.02 to i64
  %14 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %13
  %15 = load float, ptr %14, align 4
  %16 = sext i32 %.02 to i64
  %17 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %16
  %18 = load float, ptr %17, align 4
  %19 = call float @llvm.fmuladd.f32(float %12, float %15, float %18)
  store float %19, ptr %17, align 4
  br label %20

20:                                               ; preds = %9, %4
  br label %21

21:                                               ; preds = %20
  %22 = add i32 %.02, 1
  %23 = icmp slt i32 %22, 32000
  br i1 %23, label %4, label %24, !llvm.loop !221

24:                                               ; preds = %21
  %25 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %26

26:                                               ; preds = %24
  %27 = add i32 %.013, 1
  %28 = icmp slt i32 %27, 1024
  br i1 %28, label %3, label %29, !llvm.loop !222

29:                                               ; preds = %26
  %30 = call i32 @clock()
  %31 = sub i32 %30, %2
  %32 = sitofp i32 %31 to double
  %33 = fdiv double %32, 1.000000e+06
  %34 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@JAADHLKD@S2711?7?5?$CF?42f?5?7?7?$AA@", double noundef %33)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s2712() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05LNEPNBBL@s2712?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %29
  %.013 = phi i32 [ 0, %0 ], [ %30, %29 ]
  br label %4

4:                                                ; preds = %3, %24
  %.02 = phi i32 [ 0, %3 ], [ %25, %24 ]
  %5 = sext i32 %.02 to i64
  %6 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %5
  %7 = load float, ptr %6, align 4
  %8 = sext i32 %.02 to i64
  %9 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %8
  %10 = load float, ptr %9, align 4
  %11 = fcmp ogt float %7, %10
  br i1 %11, label %12, label %23

12:                                               ; preds = %4
  %13 = sext i32 %.02 to i64
  %14 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %13
  %15 = load float, ptr %14, align 4
  %16 = sext i32 %.02 to i64
  %17 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %16
  %18 = load float, ptr %17, align 4
  %19 = sext i32 %.02 to i64
  %20 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %19
  %21 = load float, ptr %20, align 4
  %22 = call float @llvm.fmuladd.f32(float %15, float %18, float %21)
  store float %22, ptr %20, align 4
  br label %23

23:                                               ; preds = %12, %4
  br label %24

24:                                               ; preds = %23
  %25 = add i32 %.02, 1
  %26 = icmp slt i32 %25, 32000
  br i1 %26, label %4, label %27, !llvm.loop !223

27:                                               ; preds = %24
  %28 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %29

29:                                               ; preds = %27
  %30 = add i32 %.013, 1
  %31 = icmp slt i32 %30, 1024
  br i1 %31, label %3, label %32, !llvm.loop !224

32:                                               ; preds = %29
  %33 = call i32 @clock()
  %34 = sub i32 %33, %2
  %35 = sitofp i32 %34 to double
  %36 = fdiv double %35, 1.000000e+06
  %37 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@JOBBNKC@S2712?7?5?$CF?42f?5?7?7?$AA@", double noundef %36)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s281() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05JNNILBJO@s281?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %27
  %.013 = phi i32 [ 0, %0 ], [ %28, %27 ]
  br label %4

4:                                                ; preds = %3, %22
  %.02 = phi i32 [ 0, %3 ], [ %23, %22 ]
  %5 = sub i32 32000, %.02
  %6 = sub i32 %5, 1
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %7
  %9 = load float, ptr %8, align 4
  %10 = sext i32 %.02 to i64
  %11 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %10
  %12 = load float, ptr %11, align 4
  %13 = sext i32 %.02 to i64
  %14 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %13
  %15 = load float, ptr %14, align 4
  %16 = call float @llvm.fmuladd.f32(float %12, float %15, float %9)
  %17 = fsub float %16, 1.000000e+00
  %18 = sext i32 %.02 to i64
  %19 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %18
  store float %17, ptr %19, align 4
  %20 = sext i32 %.02 to i64
  %21 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %20
  store float %16, ptr %21, align 4
  br label %22

22:                                               ; preds = %4
  %23 = add i32 %.02, 1
  %24 = icmp slt i32 %23, 32000
  br i1 %24, label %4, label %25, !llvm.loop !225

25:                                               ; preds = %22
  %26 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %27

27:                                               ; preds = %25
  %28 = add i32 %.013, 1
  %29 = icmp slt i32 %28, 256
  br i1 %29, label %3, label %30, !llvm.loop !226

30:                                               ; preds = %27
  %31 = call i32 @clock()
  %32 = sub i32 %31, %2
  %33 = sitofp i32 %32 to double
  %34 = fdiv double %33, 1.000000e+06
  %35 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@JINLGIBF@S281?7?5?$CF?42f?5?7?7?$AA@", double noundef %34)
  call void @check(i32 noundef 12)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s1281() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05JNNILBJO@s281?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %33
  %.013 = phi i32 [ 0, %0 ], [ %34, %33 ]
  br label %4

4:                                                ; preds = %3, %28
  %.02 = phi i32 [ 0, %3 ], [ %29, %28 ]
  %5 = sext i32 %.02 to i64
  %6 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %5
  %7 = load float, ptr %6, align 4
  %8 = sext i32 %.02 to i64
  %9 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %8
  %10 = load float, ptr %9, align 4
  %11 = sext i32 %.02 to i64
  %12 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %11
  %13 = load float, ptr %12, align 4
  %14 = sext i32 %.02 to i64
  %15 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %14
  %16 = load float, ptr %15, align 4
  %17 = fmul float %13, %16
  %18 = call float @llvm.fmuladd.f32(float %7, float %10, float %17)
  %19 = sext i32 %.02 to i64
  %20 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %19
  %21 = load float, ptr %20, align 4
  %22 = fadd float %18, %21
  %23 = fsub float %22, 1.000000e+00
  %24 = sext i32 %.02 to i64
  %25 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %24
  store float %23, ptr %25, align 4
  %26 = sext i32 %.02 to i64
  %27 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %26
  store float %22, ptr %27, align 4
  br label %28

28:                                               ; preds = %4
  %29 = add i32 %.02, 1
  %30 = icmp slt i32 %29, 32000
  br i1 %30, label %4, label %31, !llvm.loop !227

31:                                               ; preds = %28
  %32 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %33

33:                                               ; preds = %31
  %34 = add i32 %.013, 1
  %35 = icmp slt i32 %34, 1024
  br i1 %35, label %3, label %36, !llvm.loop !228

36:                                               ; preds = %33
  %37 = call i32 @clock()
  %38 = sub i32 %37, %2
  %39 = sitofp i32 %38 to double
  %40 = fdiv double %39, 1.000000e+06
  %41 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@GMOENHPK@S1281?7?5?$CF?42f?5?7?7?$AA@", double noundef %40)
  call void @check(i32 noundef 12)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s291() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05CFGENGPL@s291?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %20
  %.015 = phi i32 [ 0, %0 ], [ %21, %20 ]
  br label %4

4:                                                ; preds = %3, %15
  %.04 = phi i32 [ 0, %3 ], [ %16, %15 ]
  %.023 = phi i32 [ 31999, %3 ], [ %.04, %15 ]
  %5 = sext i32 %.04 to i64
  %6 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %5
  %7 = load float, ptr %6, align 4
  %8 = sext i32 %.023 to i64
  %9 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %8
  %10 = load float, ptr %9, align 4
  %11 = fadd float %7, %10
  %12 = fmul float %11, 5.000000e-01
  %13 = sext i32 %.04 to i64
  %14 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %13
  store float %12, ptr %14, align 4
  br label %15

15:                                               ; preds = %4
  %16 = add i32 %.04, 1
  %17 = icmp slt i32 %16, 32000
  br i1 %17, label %4, label %18, !llvm.loop !229

18:                                               ; preds = %15
  %19 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %20

20:                                               ; preds = %18
  %21 = add i32 %.015, 1
  %22 = icmp slt i32 %21, 512
  br i1 %22, label %3, label %23, !llvm.loop !230

23:                                               ; preds = %20
  %24 = call i32 @clock()
  %25 = sub i32 %24, %2
  %26 = sitofp i32 %25 to double
  %27 = fdiv double %26, 1.000000e+06
  %28 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@DHOCEHK@S291?7?5?$CF?42f?5?7?7?$AA@", double noundef %27)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s292() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05CHCCGIKC@s292?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %24
  %.017 = phi i32 [ 0, %0 ], [ %25, %24 ]
  br label %4

4:                                                ; preds = %3, %19
  %.06 = phi i32 [ 0, %3 ], [ %20, %19 ]
  %.025 = phi i32 [ 31998, %3 ], [ %.034, %19 ]
  %.034 = phi i32 [ 31999, %3 ], [ %.06, %19 ]
  %5 = sext i32 %.06 to i64
  %6 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %5
  %7 = load float, ptr %6, align 4
  %8 = sext i32 %.034 to i64
  %9 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %8
  %10 = load float, ptr %9, align 4
  %11 = fadd float %7, %10
  %12 = sext i32 %.025 to i64
  %13 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %12
  %14 = load float, ptr %13, align 4
  %15 = fadd float %11, %14
  %16 = fmul float %15, 3.330000e-01
  %17 = sext i32 %.06 to i64
  %18 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %17
  store float %16, ptr %18, align 4
  br label %19

19:                                               ; preds = %4
  %20 = add i32 %.06, 1
  %21 = icmp slt i32 %20, 32000
  br i1 %21, label %4, label %22, !llvm.loop !231

22:                                               ; preds = %19
  %23 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %24

24:                                               ; preds = %22
  %25 = add i32 %.017, 1
  %26 = icmp slt i32 %25, 256
  br i1 %26, label %3, label %27, !llvm.loop !232

27:                                               ; preds = %24
  %28 = call i32 @clock()
  %29 = sub i32 %28, %2
  %30 = sitofp i32 %29 to double
  %31 = fdiv double %30, 1.000000e+06
  %32 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@JKJMECHL@S292?7?5?$CF?42f?5?7?7?$AA@", double noundef %31)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s293() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05CGOAACJF@s293?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %13
  %.013 = phi i32 [ 0, %0 ], [ %14, %13 ]
  br label %4

4:                                                ; preds = %3, %8
  %.02 = phi i32 [ 0, %3 ], [ %9, %8 ]
  %5 = load float, ptr @a, align 16
  %6 = sext i32 %.02 to i64
  %7 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %6
  store float %5, ptr %7, align 4
  br label %8

8:                                                ; preds = %4
  %9 = add i32 %.02, 1
  %10 = icmp slt i32 %9, 32000
  br i1 %10, label %4, label %11, !llvm.loop !233

11:                                               ; preds = %8
  %12 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %13

13:                                               ; preds = %11
  %14 = add i32 %.013, 1
  %15 = icmp slt i32 %14, 1024
  br i1 %15, label %3, label %16, !llvm.loop !234

16:                                               ; preds = %13
  %17 = call i32 @clock()
  %18 = sub i32 %17, %2
  %19 = sitofp i32 %18 to double
  %20 = fdiv double %19, 1.000000e+06
  %21 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@FLBCJNLL@S293?7?5?$CF?42f?5?7?7?$AA@", double noundef %20)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s2101() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05LCMLLHDD@s2101?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %26
  %.013 = phi i32 [ 0, %0 ], [ %27, %26 ]
  br label %4

4:                                                ; preds = %3, %21
  %.02 = phi i32 [ 0, %3 ], [ %22, %21 ]
  %5 = sext i32 %.02 to i64
  %6 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %5
  %7 = sext i32 %.02 to i64
  %8 = getelementptr inbounds [256 x float], ptr %6, i64 0, i64 %7
  %9 = load float, ptr %8, align 4
  %10 = sext i32 %.02 to i64
  %11 = getelementptr inbounds [256 x [256 x float]], ptr @cc, i64 0, i64 %10
  %12 = sext i32 %.02 to i64
  %13 = getelementptr inbounds [256 x float], ptr %11, i64 0, i64 %12
  %14 = load float, ptr %13, align 4
  %15 = sext i32 %.02 to i64
  %16 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %15
  %17 = sext i32 %.02 to i64
  %18 = getelementptr inbounds [256 x float], ptr %16, i64 0, i64 %17
  %19 = load float, ptr %18, align 4
  %20 = call float @llvm.fmuladd.f32(float %9, float %14, float %19)
  store float %20, ptr %18, align 4
  br label %21

21:                                               ; preds = %4
  %22 = add i32 %.02, 1
  %23 = icmp slt i32 %22, 256
  br i1 %23, label %4, label %24, !llvm.loop !235

24:                                               ; preds = %21
  %25 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %26

26:                                               ; preds = %24
  %27 = add i32 %.013, 1
  %28 = icmp slt i32 %27, 2560
  br i1 %28, label %3, label %29, !llvm.loop !236

29:                                               ; preds = %26
  %30 = call i32 @clock()
  %31 = sub i32 %30, %2
  %32 = sitofp i32 %31 to double
  %33 = fdiv double %32, 1.000000e+06
  %34 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@KLEDOIBB@S2101?7?5?$CF?42f?5?7?7?$AA@", double noundef %33)
  call void @check(i32 noundef 11)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s2102() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05JJOGOEPA@s2102?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %23
  %.025 = phi i32 [ 0, %0 ], [ %24, %23 ]
  br label %4

4:                                                ; preds = %3, %18
  %.014 = phi i32 [ 0, %3 ], [ %19, %18 ]
  br label %5

5:                                                ; preds = %4, %10
  %.03 = phi i32 [ 0, %4 ], [ %11, %10 ]
  %6 = sext i32 %.03 to i64
  %7 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %6
  %8 = sext i32 %.014 to i64
  %9 = getelementptr inbounds [256 x float], ptr %7, i64 0, i64 %8
  store float 0.000000e+00, ptr %9, align 4
  br label %10

10:                                               ; preds = %5
  %11 = add i32 %.03, 1
  %12 = icmp slt i32 %11, 256
  br i1 %12, label %5, label %13, !llvm.loop !237

13:                                               ; preds = %10
  %14 = sext i32 %.014 to i64
  %15 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %14
  %16 = sext i32 %.014 to i64
  %17 = getelementptr inbounds [256 x float], ptr %15, i64 0, i64 %16
  store float 1.000000e+00, ptr %17, align 4
  br label %18

18:                                               ; preds = %13
  %19 = add i32 %.014, 1
  %20 = icmp slt i32 %19, 256
  br i1 %20, label %4, label %21, !llvm.loop !238

21:                                               ; preds = %18
  %22 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %23

23:                                               ; preds = %21
  %24 = add i32 %.025, 1
  %25 = icmp slt i32 %24, 100
  br i1 %25, label %3, label %26, !llvm.loop !239

26:                                               ; preds = %23
  %27 = call i32 @clock()
  %28 = sub i32 %27, %2
  %29 = sitofp i32 %28 to double
  %30 = fdiv double %29, 1.000000e+06
  %31 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@DCKBIOBA@S2102?7?5?$CF?42f?5?7?7?$AA@", double noundef %30)
  call void @check(i32 noundef 11)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s2111() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05LDAJNNAE@s2111?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %32
  %.047 = phi i32 [ 0, %0 ], [ %33, %32 ]
  br label %4

4:                                                ; preds = %3, %27
  %.036 = phi i32 [ 1, %3 ], [ %28, %27 ]
  br label %5

5:                                                ; preds = %4, %23
  %.025 = phi i32 [ 1, %4 ], [ %24, %23 ]
  %6 = sext i32 %.036 to i64
  %7 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %6
  %8 = sub i32 %.025, 1
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [256 x float], ptr %7, i64 0, i64 %9
  %11 = load float, ptr %10, align 4
  %12 = sub i32 %.036, 1
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %13
  %15 = sext i32 %.025 to i64
  %16 = getelementptr inbounds [256 x float], ptr %14, i64 0, i64 %15
  %17 = load float, ptr %16, align 4
  %18 = fadd float %11, %17
  %19 = sext i32 %.036 to i64
  %20 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %19
  %21 = sext i32 %.025 to i64
  %22 = getelementptr inbounds [256 x float], ptr %20, i64 0, i64 %21
  store float %18, ptr %22, align 4
  br label %23

23:                                               ; preds = %5
  %24 = add i32 %.025, 1
  %25 = icmp slt i32 %24, 256
  br i1 %25, label %5, label %26, !llvm.loop !240

26:                                               ; preds = %23
  br label %27

27:                                               ; preds = %26
  %28 = add i32 %.036, 1
  %29 = icmp slt i32 %28, 256
  br i1 %29, label %4, label %30, !llvm.loop !241

30:                                               ; preds = %27
  %31 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %32

32:                                               ; preds = %30
  %33 = add i32 %.047, 1
  %34 = icmp slt i32 %33, 100
  br i1 %34, label %3, label %35, !llvm.loop !242

35:                                               ; preds = %32
  %36 = call i32 @clock()
  %37 = sub i32 %36, %2
  %38 = sitofp i32 %37 to double
  %39 = fdiv double %38, 1.000000e+06
  %40 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@DAOGKEHO@S2111?7?5?$CF?42f?5?7?7?$AA@", double noundef %39)
  store float 0.000000e+00, ptr @temp, align 4
  br label %41

41:                                               ; preds = %35, %54
  %.019 = phi i32 [ 0, %35 ], [ %55, %54 ]
  br label %42

42:                                               ; preds = %41, %50
  %.08 = phi i32 [ 0, %41 ], [ %51, %50 ]
  %43 = sext i32 %.019 to i64
  %44 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %43
  %45 = sext i32 %.08 to i64
  %46 = getelementptr inbounds [256 x float], ptr %44, i64 0, i64 %45
  %47 = load float, ptr %46, align 4
  %48 = load float, ptr @temp, align 4
  %49 = fadd float %48, %47
  store float %49, ptr @temp, align 4
  br label %50

50:                                               ; preds = %42
  %51 = add i32 %.08, 1
  %52 = icmp slt i32 %51, 256
  br i1 %52, label %42, label %53, !llvm.loop !243

53:                                               ; preds = %50
  br label %54

54:                                               ; preds = %53
  %55 = add i32 %.019, 1
  %56 = icmp slt i32 %55, 256
  br i1 %56, label %41, label %57, !llvm.loop !244

57:                                               ; preds = %54
  %58 = load float, ptr @temp, align 4
  %59 = fcmp oeq float %58, 0.000000e+00
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store float 3.000000e+00, ptr @temp, align 4
  br label %61

61:                                               ; preds = %60, %57
  call void @check(i32 noundef -1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s311() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05NNLANHKE@s311?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %14
  %.015 = phi i32 [ 0, %0 ], [ %15, %14 ]
  br label %4

4:                                                ; preds = %3, %9
  %.04 = phi i32 [ 0, %3 ], [ %10, %9 ]
  %.023 = phi float [ 0.000000e+00, %3 ], [ %8, %9 ]
  %5 = sext i32 %.04 to i64
  %6 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %5
  %7 = load float, ptr %6, align 4
  %8 = fadd float %.023, %7
  br label %9

9:                                                ; preds = %4
  %10 = add i32 %.04, 1
  %11 = icmp slt i32 %10, 32000
  br i1 %11, label %4, label %12, !llvm.loop !245

12:                                               ; preds = %9
  %.02.lcssa = phi float [ %8, %9 ]
  %13 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef %.02.lcssa)
  br label %14

14:                                               ; preds = %12
  %15 = add i32 %.015, 1
  %16 = icmp slt i32 %15, 2560
  br i1 %16, label %3, label %17, !llvm.loop !246

17:                                               ; preds = %14
  %18 = call i32 @clock()
  %19 = sub i32 %18, %2
  %20 = sitofp i32 %19 to double
  %21 = fdiv double %20, 1.000000e+06
  %22 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@NIOEILAB@S311?7?5?$CF?42f?5?7?7?$AA@", double noundef %21)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local float @test(ptr noundef %0) #7 {
  br label %2

2:                                                ; preds = %1, %7
  %.03 = phi i32 [ 0, %1 ], [ %8, %7 ]
  %.012 = phi float [ 0.000000e+00, %1 ], [ %6, %7 ]
  %3 = sext i32 %.03 to i64
  %4 = getelementptr inbounds float, ptr %0, i64 %3
  %5 = load float, ptr %4, align 4
  %6 = fadd float %.012, %5
  br label %7

7:                                                ; preds = %2
  %8 = add i32 %.03, 1
  %9 = icmp slt i32 %8, 4
  br i1 %9, label %2, label %10, !llvm.loop !247

10:                                               ; preds = %7
  %.01.lcssa = phi float [ %6, %7 ]
  ret float %.01.lcssa
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s31111() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05NNLANHKE@s311?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %21
  %.01 = phi i32 [ 0, %0 ], [ %22, %21 ]
  %4 = call float @test(ptr noundef @a)
  %5 = fadd float 0.000000e+00, %4
  %6 = call float @test(ptr noundef getelementptr inbounds nuw (i8, ptr @a, i64 16))
  %7 = fadd float %5, %6
  %8 = call float @test(ptr noundef getelementptr inbounds nuw (i8, ptr @a, i64 32))
  %9 = fadd float %7, %8
  %10 = call float @test(ptr noundef getelementptr inbounds nuw (i8, ptr @a, i64 48))
  %11 = fadd float %9, %10
  %12 = call float @test(ptr noundef getelementptr inbounds nuw (i8, ptr @a, i64 64))
  %13 = fadd float %11, %12
  %14 = call float @test(ptr noundef getelementptr inbounds nuw (i8, ptr @a, i64 80))
  %15 = fadd float %13, %14
  %16 = call float @test(ptr noundef getelementptr inbounds nuw (i8, ptr @a, i64 96))
  %17 = fadd float %15, %16
  %18 = call float @test(ptr noundef getelementptr inbounds nuw (i8, ptr @a, i64 112))
  %19 = fadd float %17, %18
  %20 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef %19)
  br label %21

21:                                               ; preds = %3
  %22 = add i32 %.01, 1
  %23 = icmp slt i32 %22, 512000
  br i1 %23, label %3, label %24, !llvm.loop !248

24:                                               ; preds = %21
  %25 = call i32 @clock()
  %26 = sub i32 %25, %2
  %27 = sitofp i32 %26 to double
  %28 = fdiv double %27, 1.000000e+06
  %29 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0BA@NEEAPAGC@S31111?7?5?$CF?42f?5?7?7?$AA@", double noundef %28)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s312() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05NPPGGJPN@s312?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %14
  %.015 = phi i32 [ 0, %0 ], [ %15, %14 ]
  br label %4

4:                                                ; preds = %3, %9
  %.04 = phi i32 [ 0, %3 ], [ %10, %9 ]
  %.13 = phi float [ 1.000000e+00, %3 ], [ %8, %9 ]
  %5 = sext i32 %.04 to i64
  %6 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %5
  %7 = load float, ptr %6, align 4
  %8 = fmul float %.13, %7
  br label %9

9:                                                ; preds = %4
  %10 = add i32 %.04, 1
  %11 = icmp slt i32 %10, 32000
  br i1 %11, label %4, label %12, !llvm.loop !249

12:                                               ; preds = %9
  %.1.lcssa = phi float [ %8, %9 ]
  %13 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef %.1.lcssa)
  br label %14

14:                                               ; preds = %12
  %15 = add i32 %.015, 1
  %16 = icmp slt i32 %15, 2560
  br i1 %16, label %3, label %17, !llvm.loop !250

17:                                               ; preds = %14
  %.02.lcssa = phi float [ %.1.lcssa, %14 ]
  %18 = call i32 @clock()
  %19 = sub i32 %18, %2
  %20 = sitofp i32 %19 to double
  %21 = fdiv double %20, 1.000000e+06
  %22 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@EBAGONAA@S312?7?5?$CF?42f?5?7?7?$AA@", double noundef %21)
  store float %.02.lcssa, ptr @temp, align 4
  call void @check(i32 noundef -1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s313() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05NODEADMK@s313?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %17
  %.015 = phi i32 [ 0, %0 ], [ %18, %17 ]
  br label %4

4:                                                ; preds = %3, %12
  %.04 = phi i32 [ 0, %3 ], [ %13, %12 ]
  %.13 = phi float [ 0.000000e+00, %3 ], [ %11, %12 ]
  %5 = sext i32 %.04 to i64
  %6 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %5
  %7 = load float, ptr %6, align 4
  %8 = sext i32 %.04 to i64
  %9 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %8
  %10 = load float, ptr %9, align 4
  %11 = call float @llvm.fmuladd.f32(float %7, float %10, float %.13)
  br label %12

12:                                               ; preds = %4
  %13 = add i32 %.04, 1
  %14 = icmp slt i32 %13, 32000
  br i1 %14, label %4, label %15, !llvm.loop !251

15:                                               ; preds = %12
  %.1.lcssa = phi float [ %11, %12 ]
  %16 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef %.1.lcssa)
  br label %17

17:                                               ; preds = %15
  %18 = add i32 %.015, 1
  %19 = icmp slt i32 %18, 1280
  br i1 %19, label %3, label %20, !llvm.loop !252

20:                                               ; preds = %17
  %.02.lcssa = phi float [ %.1.lcssa, %17 ]
  %21 = call i32 @clock()
  %22 = sub i32 %21, %2
  %23 = sitofp i32 %22 to double
  %24 = fdiv double %23, 1.000000e+06
  %25 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@IAIIDCMA@S313?7?5?$CF?42f?5?7?7?$AA@", double noundef %24)
  store float %.02.lcssa, ptr @temp, align 4
  call void @check(i32 noundef -1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s314() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05NLHLBFEP@s314?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %20
  %.015 = phi i32 [ 0, %0 ], [ %21, %20 ]
  %4 = load float, ptr @a, align 16
  br label %5

5:                                                ; preds = %3, %15
  %.04 = phi i32 [ 0, %3 ], [ %16, %15 ]
  %.13 = phi float [ %4, %3 ], [ %.2, %15 ]
  %6 = sext i32 %.04 to i64
  %7 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %6
  %8 = load float, ptr %7, align 4
  %9 = fcmp ogt float %8, %.13
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  %11 = sext i32 %.04 to i64
  %12 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %11
  %13 = load float, ptr %12, align 4
  br label %14

14:                                               ; preds = %10, %5
  %.2 = phi float [ %13, %10 ], [ %.13, %5 ]
  br label %15

15:                                               ; preds = %14
  %16 = add i32 %.04, 1
  %17 = icmp slt i32 %16, 32000
  br i1 %17, label %5, label %18, !llvm.loop !253

18:                                               ; preds = %15
  %.1.lcssa = phi float [ %.2, %15 ]
  %19 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef %.1.lcssa)
  br label %20

20:                                               ; preds = %18
  %21 = add i32 %.015, 1
  %22 = icmp slt i32 %21, 1280
  br i1 %22, label %3, label %23, !llvm.loop !254

23:                                               ; preds = %20
  %.02.lcssa = phi float [ %.1.lcssa, %20 ]
  %24 = call i32 @clock()
  %25 = sub i32 %24, %2
  %26 = sitofp i32 %25 to double
  %27 = fdiv double %26, 1.000000e+06
  %28 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@KJLDCHED@S314?7?5?$CF?42f?5?7?7?$AA@", double noundef %27)
  store float %.02.lcssa, ptr @temp, align 4
  call void @check(i32 noundef -1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s315() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05NKLJHPHI@s315?5?$AA@")
  br label %2

2:                                                ; preds = %0, %8
  %.067 = phi i32 [ 0, %0 ], [ %9, %8 ]
  %3 = mul i32 %.067, 7
  %4 = srem i32 %3, 32000
  %5 = sitofp i32 %4 to float
  %6 = sext i32 %.067 to i64
  %7 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %6
  store float %5, ptr %7, align 4
  br label %8

8:                                                ; preds = %2
  %9 = add i32 %.067, 1
  %10 = icmp slt i32 %9, 32000
  br i1 %10, label %2, label %11, !llvm.loop !255

11:                                               ; preds = %8
  %12 = call i32 @clock()
  br label %13

13:                                               ; preds = %11, %32
  %.0111 = phi i32 [ 0, %11 ], [ %33, %32 ]
  %14 = load float, ptr @a, align 16
  br label %15

15:                                               ; preds = %13, %25
  %.010 = phi i32 [ 0, %13 ], [ %26, %25 ]
  %.19 = phi i32 [ 0, %13 ], [ %.2, %25 ]
  %.148 = phi float [ %14, %13 ], [ %.25, %25 ]
  %16 = sext i32 %.010 to i64
  %17 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %16
  %18 = load float, ptr %17, align 4
  %19 = fcmp ogt float %18, %.148
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = sext i32 %.010 to i64
  %22 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %21
  %23 = load float, ptr %22, align 4
  br label %24

24:                                               ; preds = %20, %15
  %.25 = phi float [ %23, %20 ], [ %.148, %15 ]
  %.2 = phi i32 [ %.010, %20 ], [ %.19, %15 ]
  br label %25

25:                                               ; preds = %24
  %26 = add i32 %.010, 1
  %27 = icmp slt i32 %26, 32000
  br i1 %27, label %15, label %28, !llvm.loop !256

28:                                               ; preds = %25
  %.14.lcssa = phi float [ %.25, %25 ]
  %.1.lcssa = phi i32 [ %.2, %25 ]
  %29 = sitofp i32 %.1.lcssa to float
  %30 = fadd float %.14.lcssa, %29
  %31 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef %30)
  br label %32

32:                                               ; preds = %28
  %33 = add i32 %.0111, 1
  %34 = icmp slt i32 %33, 256
  br i1 %34, label %13, label %35, !llvm.loop !257

35:                                               ; preds = %32
  %.03.lcssa = phi float [ %.14.lcssa, %32 ]
  %.02.lcssa = phi i32 [ %.1.lcssa, %32 ]
  %36 = call i32 @clock()
  %37 = sub i32 %36, %12
  %38 = sitofp i32 %37 to double
  %39 = fdiv double %38, 1.000000e+06
  %40 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@GIDNPIID@S315?7?5?$CF?42f?5?7?7?$AA@", double noundef %39)
  %41 = sitofp i32 %.02.lcssa to float
  %42 = fadd float %41, %.03.lcssa
  %43 = fadd float %42, 1.000000e+00
  store float %43, ptr @temp, align 4
  call void @check(i32 noundef -1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s316() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05NIPPMBCB@s316?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %20
  %.015 = phi i32 [ 0, %0 ], [ %21, %20 ]
  %4 = load float, ptr @a, align 16
  br label %5

5:                                                ; preds = %3, %15
  %.04 = phi i32 [ 1, %3 ], [ %16, %15 ]
  %.13 = phi float [ %4, %3 ], [ %.2, %15 ]
  %6 = sext i32 %.04 to i64
  %7 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %6
  %8 = load float, ptr %7, align 4
  %9 = fcmp olt float %8, %.13
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  %11 = sext i32 %.04 to i64
  %12 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %11
  %13 = load float, ptr %12, align 4
  br label %14

14:                                               ; preds = %10, %5
  %.2 = phi float [ %13, %10 ], [ %.13, %5 ]
  br label %15

15:                                               ; preds = %14
  %16 = add i32 %.04, 1
  %17 = icmp slt i32 %16, 32000
  br i1 %17, label %5, label %18, !llvm.loop !258

18:                                               ; preds = %15
  %.1.lcssa = phi float [ %.2, %15 ]
  %19 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef %.1.lcssa)
  br label %20

20:                                               ; preds = %18
  %21 = add i32 %.015, 1
  %22 = icmp slt i32 %21, 1280
  br i1 %22, label %3, label %23, !llvm.loop !259

23:                                               ; preds = %20
  %.02.lcssa = phi float [ %.1.lcssa, %20 ]
  %24 = call i32 @clock()
  %25 = sub i32 %24, %2
  %26 = sitofp i32 %25 to double
  %27 = fdiv double %26, 1.000000e+06
  %28 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@PBNPJOIC@S316?7?5?$CF?42f?5?7?7?$AA@", double noundef %27)
  store float %.02.lcssa, ptr @temp, align 4
  call void @check(i32 noundef -1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s317() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05NJDNKLBG@s317?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %11
  %.015 = phi i32 [ 0, %0 ], [ %12, %11 ]
  br label %4

4:                                                ; preds = %3, %6
  %.04 = phi i32 [ 0, %3 ], [ %7, %6 ]
  %.13 = phi float [ 1.000000e+00, %3 ], [ %5, %6 ]
  %5 = fmul float %.13, 9.900000e-01
  br label %6

6:                                                ; preds = %4
  %7 = add i32 %.04, 1
  %8 = icmp slt i32 %7, 16000
  br i1 %8, label %4, label %9, !llvm.loop !260

9:                                                ; preds = %6
  %.1.lcssa = phi float [ %5, %6 ]
  %10 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef %.1.lcssa)
  br label %11

11:                                               ; preds = %9
  %12 = add i32 %.015, 1
  %13 = icmp slt i32 %12, 1280
  br i1 %13, label %3, label %14, !llvm.loop !261

14:                                               ; preds = %11
  %.02.lcssa = phi float [ %.1.lcssa, %11 ]
  %15 = call i32 @clock()
  %16 = sub i32 %15, %2
  %17 = sitofp i32 %16 to double
  %18 = fdiv double %17, 1.000000e+06
  %19 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@DAFBEBEC@S317?7?5?$CF?42f?5?7?7?$AA@", double noundef %18)
  store float %.02.lcssa, ptr @temp, align 4
  call void @check(i32 noundef -1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s318(i32 noundef %0) #7 {
  %2 = call i32 @init(ptr noundef @"??_C@_05NCGBOMCL@s318?5?$AA@")
  %3 = call i32 @clock()
  br label %4

4:                                                ; preds = %1, %35
  %.0111 = phi i32 [ 0, %1 ], [ %36, %35 ]
  %5 = load float, ptr @a, align 16
  %6 = fptosi float %5 to i32
  %7 = call i32 @llvm.abs.i32(i32 %6, i1 false)
  %8 = sitofp i32 %7 to float
  %9 = add i32 0, %0
  br label %10

10:                                               ; preds = %4, %28
  %.010 = phi i32 [ 1, %4 ], [ %29, %28 ]
  %.19 = phi float [ %8, %4 ], [ %.2, %28 ]
  %.148 = phi i32 [ 0, %4 ], [ %.25, %28 ]
  %.067 = phi i32 [ %9, %4 ], [ %27, %28 ]
  %11 = sext i32 %.067 to i64
  %12 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %11
  %13 = load float, ptr %12, align 4
  %14 = fptosi float %13 to i32
  %15 = call i32 @llvm.abs.i32(i32 %14, i1 false)
  %16 = sitofp i32 %15 to float
  %17 = fcmp ole float %16, %.19
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  br label %26

19:                                               ; preds = %10
  %20 = sext i32 %.067 to i64
  %21 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %20
  %22 = load float, ptr %21, align 4
  %23 = fptosi float %22 to i32
  %24 = call i32 @llvm.abs.i32(i32 %23, i1 false)
  %25 = sitofp i32 %24 to float
  br label %26

26:                                               ; preds = %19, %18
  %.25 = phi i32 [ %.148, %18 ], [ %.010, %19 ]
  %.2 = phi float [ %.19, %18 ], [ %25, %19 ]
  %27 = add i32 %.067, %0
  br label %28

28:                                               ; preds = %26
  %29 = add i32 %.010, 1
  %30 = icmp slt i32 %29, 32000
  br i1 %30, label %10, label %31, !llvm.loop !262

31:                                               ; preds = %28
  %.14.lcssa = phi i32 [ %.25, %28 ]
  %.1.lcssa = phi float [ %.2, %28 ]
  %32 = sitofp i32 %.14.lcssa to float
  %33 = fadd float %.1.lcssa, %32
  %34 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef %33)
  br label %35

35:                                               ; preds = %31
  %36 = add i32 %.0111, 1
  %37 = icmp slt i32 %36, 128
  br i1 %37, label %4, label %38, !llvm.loop !263

38:                                               ; preds = %35
  %.03.lcssa = phi i32 [ %.14.lcssa, %35 ]
  %.02.lcssa = phi float [ %.1.lcssa, %35 ]
  %39 = call i32 @clock()
  %40 = sub i32 %39, %3
  %41 = sitofp i32 %40 to double
  %42 = fdiv double %41, 1.000000e+06
  %43 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@KDKJLFIE@S318?7?5?$CF?42f?5?7?7?$AA@", double noundef %42)
  %44 = sitofp i32 %.03.lcssa to float
  %45 = fadd float %.02.lcssa, %44
  %46 = fadd float %45, 1.000000e+00
  store float %46, ptr @temp, align 4
  call void @check(i32 noundef -1)
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #11

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s319() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05NDKDIGBM@s319?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %36
  %.015 = phi i32 [ 0, %0 ], [ %37, %36 ]
  br label %4

4:                                                ; preds = %3, %31
  %.04 = phi i32 [ 0, %3 ], [ %32, %31 ]
  %.13 = phi float [ 0.000000e+00, %3 ], [ %30, %31 ]
  %5 = sext i32 %.04 to i64
  %6 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %5
  %7 = load float, ptr %6, align 4
  %8 = sext i32 %.04 to i64
  %9 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %8
  %10 = load float, ptr %9, align 4
  %11 = fadd float %7, %10
  %12 = sext i32 %.04 to i64
  %13 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %12
  store float %11, ptr %13, align 4
  %14 = sext i32 %.04 to i64
  %15 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %14
  %16 = load float, ptr %15, align 4
  %17 = fadd float %.13, %16
  %18 = sext i32 %.04 to i64
  %19 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %18
  %20 = load float, ptr %19, align 4
  %21 = sext i32 %.04 to i64
  %22 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %21
  %23 = load float, ptr %22, align 4
  %24 = fadd float %20, %23
  %25 = sext i32 %.04 to i64
  %26 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %25
  store float %24, ptr %26, align 4
  %27 = sext i32 %.04 to i64
  %28 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %27
  %29 = load float, ptr %28, align 4
  %30 = fadd float %17, %29
  br label %31

31:                                               ; preds = %4
  %32 = add i32 %.04, 1
  %33 = icmp slt i32 %32, 32000
  br i1 %33, label %4, label %34, !llvm.loop !264

34:                                               ; preds = %31
  %.1.lcssa = phi float [ %30, %31 ]
  %35 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef %.1.lcssa)
  br label %36

36:                                               ; preds = %34
  %37 = add i32 %.015, 1
  %38 = icmp slt i32 %37, 512
  br i1 %38, label %3, label %39, !llvm.loop !265

39:                                               ; preds = %36
  %.02.lcssa = phi float [ %.1.lcssa, %36 ]
  %40 = call i32 @clock()
  %41 = sub i32 %40, %2
  %42 = sitofp i32 %41 to double
  %43 = fdiv double %42, 1.000000e+06
  %44 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@GCCHGKEE@S319?7?5?$CF?42f?5?7?7?$AA@", double noundef %43)
  store float %.02.lcssa, ptr @temp, align 4
  call void @check(i32 noundef -1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s3110() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05JHHCMFPF@s3110?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %33
  %.0220 = phi i32 [ 0, %0 ], [ %34, %33 ]
  %4 = load float, ptr @aa, align 16
  br label %5

5:                                                ; preds = %3, %24
  %.0119 = phi i32 [ 0, %3 ], [ %25, %24 ]
  %.118 = phi float [ %4, %3 ], [ %.2.lcssa, %24 ]
  %.1517 = phi i32 [ 0, %3 ], [ %.26.lcssa, %24 ]
  %.1916 = phi i32 [ 0, %3 ], [ %.210.lcssa, %24 ]
  br label %6

6:                                                ; preds = %5, %20
  %.015 = phi i32 [ 0, %5 ], [ %21, %20 ]
  %.214 = phi float [ %.118, %5 ], [ %.3, %20 ]
  %.2613 = phi i32 [ %.1517, %5 ], [ %.37, %20 ]
  %.21012 = phi i32 [ %.1916, %5 ], [ %.311, %20 ]
  %7 = sext i32 %.0119 to i64
  %8 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %7
  %9 = sext i32 %.015 to i64
  %10 = getelementptr inbounds [256 x float], ptr %8, i64 0, i64 %9
  %11 = load float, ptr %10, align 4
  %12 = fcmp ogt float %11, %.214
  br i1 %12, label %13, label %19

13:                                               ; preds = %6
  %14 = sext i32 %.0119 to i64
  %15 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %14
  %16 = sext i32 %.015 to i64
  %17 = getelementptr inbounds [256 x float], ptr %15, i64 0, i64 %16
  %18 = load float, ptr %17, align 4
  br label %19

19:                                               ; preds = %13, %6
  %.311 = phi i32 [ %.015, %13 ], [ %.21012, %6 ]
  %.37 = phi i32 [ %.0119, %13 ], [ %.2613, %6 ]
  %.3 = phi float [ %18, %13 ], [ %.214, %6 ]
  br label %20

20:                                               ; preds = %19
  %21 = add i32 %.015, 1
  %22 = icmp slt i32 %21, 256
  br i1 %22, label %6, label %23, !llvm.loop !266

23:                                               ; preds = %20
  %.210.lcssa = phi i32 [ %.311, %20 ]
  %.26.lcssa = phi i32 [ %.37, %20 ]
  %.2.lcssa = phi float [ %.3, %20 ]
  br label %24

24:                                               ; preds = %23
  %25 = add i32 %.0119, 1
  %26 = icmp slt i32 %25, 256
  br i1 %26, label %5, label %27, !llvm.loop !267

27:                                               ; preds = %24
  %.19.lcssa = phi i32 [ %.210.lcssa, %24 ]
  %.15.lcssa = phi i32 [ %.26.lcssa, %24 ]
  %.1.lcssa = phi float [ %.2.lcssa, %24 ]
  %28 = sitofp i32 %.15.lcssa to float
  %29 = fadd float %.1.lcssa, %28
  %30 = sitofp i32 %.19.lcssa to float
  %31 = fadd float %29, %30
  %32 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef %31)
  br label %33

33:                                               ; preds = %27
  %34 = add i32 %.0220, 1
  %35 = icmp slt i32 %34, 100
  br i1 %35, label %3, label %36, !llvm.loop !268

36:                                               ; preds = %33
  %.08.lcssa = phi i32 [ %.19.lcssa, %33 ]
  %.04.lcssa = phi i32 [ %.15.lcssa, %33 ]
  %.03.lcssa = phi float [ %.1.lcssa, %33 ]
  %37 = call i32 @clock()
  %38 = sub i32 %37, %2
  %39 = sitofp i32 %38 to double
  %40 = fdiv double %39, 1.000000e+06
  %41 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@GMGHJKMI@S3110?7?5?$CF?42f?5?7?7?$AA@", double noundef %40)
  %42 = sitofp i32 %.04.lcssa to float
  %43 = fadd float %.03.lcssa, %42
  %44 = fadd float %43, 1.000000e+00
  %45 = sitofp i32 %.08.lcssa to float
  %46 = fadd float %44, %45
  %47 = fadd float %46, 1.000000e+00
  store float %47, ptr @temp, align 4
  call void @check(i32 noundef -1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s13110() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05JHHCMFPF@s3110?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %33
  %.028 = phi i32 [ 0, %0 ], [ %34, %33 ]
  %4 = load float, ptr @aa, align 16
  br label %5

5:                                                ; preds = %3, %24
  %.017 = phi i32 [ 0, %3 ], [ %25, %24 ]
  %.16 = phi float [ %4, %3 ], [ %.2.lcssa, %24 ]
  br label %6

6:                                                ; preds = %5, %20
  %.05 = phi i32 [ 0, %5 ], [ %21, %20 ]
  %.24 = phi float [ %.16, %5 ], [ %.3, %20 ]
  %7 = sext i32 %.017 to i64
  %8 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %7
  %9 = sext i32 %.05 to i64
  %10 = getelementptr inbounds [256 x float], ptr %8, i64 0, i64 %9
  %11 = load float, ptr %10, align 4
  %12 = fcmp ogt float %11, %.24
  br i1 %12, label %13, label %19

13:                                               ; preds = %6
  %14 = sext i32 %.017 to i64
  %15 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %14
  %16 = sext i32 %.05 to i64
  %17 = getelementptr inbounds [256 x float], ptr %15, i64 0, i64 %16
  %18 = load float, ptr %17, align 4
  br label %19

19:                                               ; preds = %13, %6
  %.3 = phi float [ %18, %13 ], [ %.24, %6 ]
  br label %20

20:                                               ; preds = %19
  %21 = add i32 %.05, 1
  %22 = icmp slt i32 %21, 256
  br i1 %22, label %6, label %23, !llvm.loop !269

23:                                               ; preds = %20
  %.2.lcssa = phi float [ %.3, %20 ]
  br label %24

24:                                               ; preds = %23
  %25 = add i32 %.017, 1
  %26 = icmp slt i32 %25, 256
  br i1 %26, label %5, label %27, !llvm.loop !270

27:                                               ; preds = %24
  %.1.lcssa = phi float [ %.2.lcssa, %24 ]
  %28 = sitofp i32 0 to float
  %29 = fadd float %.1.lcssa, %28
  %30 = sitofp i32 0 to float
  %31 = fadd float %29, %30
  %32 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef %31)
  br label %33

33:                                               ; preds = %27
  %34 = add i32 %.028, 1
  %35 = icmp slt i32 %34, 100
  br i1 %35, label %3, label %36, !llvm.loop !271

36:                                               ; preds = %33
  %.03.lcssa = phi float [ %.1.lcssa, %33 ]
  %37 = call i32 @clock()
  %38 = sub i32 %37, %2
  %39 = sitofp i32 %38 to double
  %40 = fdiv double %39, 1.000000e+06
  %41 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0BA@FMCGFKJO@S13110?7?5?$CF?42f?5?7?7?$AA@", double noundef %40)
  %42 = sitofp i32 0 to float
  %43 = fadd float %.03.lcssa, %42
  %44 = fadd float %43, 1.000000e+00
  %45 = sitofp i32 0 to float
  %46 = fadd float %44, %45
  %47 = fadd float %46, 1.000000e+00
  store float %47, ptr @temp, align 4
  call void @check(i32 noundef -1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s3111() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05IOGJPELE@s3111?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %20
  %.015 = phi i32 [ 0, %0 ], [ %21, %20 ]
  br label %4

4:                                                ; preds = %3, %15
  %.04 = phi i32 [ 0, %3 ], [ %16, %15 ]
  %.13 = phi float [ 0.000000e+00, %3 ], [ %.2, %15 ]
  %5 = sext i32 %.04 to i64
  %6 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %5
  %7 = load float, ptr %6, align 4
  %8 = fcmp ogt float %7, 0.000000e+00
  br i1 %8, label %9, label %14

9:                                                ; preds = %4
  %10 = sext i32 %.04 to i64
  %11 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %10
  %12 = load float, ptr %11, align 4
  %13 = fadd float %.13, %12
  br label %14

14:                                               ; preds = %9, %4
  %.2 = phi float [ %13, %9 ], [ %.13, %4 ]
  br label %15

15:                                               ; preds = %14
  %16 = add i32 %.04, 1
  %17 = icmp slt i32 %16, 32000
  br i1 %17, label %4, label %18, !llvm.loop !272

18:                                               ; preds = %15
  %.1.lcssa = phi float [ %.2, %15 ]
  %19 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef %.1.lcssa)
  br label %20

20:                                               ; preds = %18
  %21 = add i32 %.015, 1
  %22 = icmp slt i32 %21, 128
  br i1 %22, label %3, label %23, !llvm.loop !273

23:                                               ; preds = %20
  %.02.lcssa = phi float [ %.1.lcssa, %20 ]
  %24 = call i32 @clock()
  %25 = sub i32 %24, %2
  %26 = sitofp i32 %25 to double
  %27 = fdiv double %26, 1.000000e+06
  %28 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@KNOJEFAI@S3111?7?5?$CF?42f?5?7?7?$AA@", double noundef %27)
  store float %.02.lcssa, ptr @temp, align 4
  call void @check(i32 noundef -1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s3112() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05KFEEKHHH@s3112?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %16
  %.015 = phi i32 [ 0, %0 ], [ %17, %16 ]
  br label %4

4:                                                ; preds = %3, %11
  %.04 = phi i32 [ 0, %3 ], [ %12, %11 ]
  %.13 = phi float [ 0.000000e+00, %3 ], [ %8, %11 ]
  %5 = sext i32 %.04 to i64
  %6 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %5
  %7 = load float, ptr %6, align 4
  %8 = fadd float %.13, %7
  %9 = sext i32 %.04 to i64
  %10 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %9
  store float %8, ptr %10, align 4
  br label %11

11:                                               ; preds = %4
  %12 = add i32 %.04, 1
  %13 = icmp slt i32 %12, 32000
  br i1 %13, label %4, label %14, !llvm.loop !274

14:                                               ; preds = %11
  %.1.lcssa = phi float [ %8, %11 ]
  %15 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef %.1.lcssa)
  br label %16

16:                                               ; preds = %14
  %17 = add i32 %.015, 1
  %18 = icmp slt i32 %17, 256
  br i1 %18, label %3, label %19, !llvm.loop !275

19:                                               ; preds = %16
  %.02.lcssa = phi float [ %.1.lcssa, %16 ]
  %20 = call i32 @clock()
  %21 = sub i32 %20, %2
  %22 = sitofp i32 %21 to double
  %23 = fdiv double %22, 1.000000e+06
  %24 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@DEALCDAJ@S3112?7?5?$CF?42f?5?7?7?$AA@", double noundef %23)
  store float %.02.lcssa, ptr @temp, align 4
  call void @check(i32 noundef -12)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s3113() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05LMFPJGDG@s3113?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %29
  %.015 = phi i32 [ 0, %0 ], [ %30, %29 ]
  %4 = load float, ptr @a, align 16
  %5 = fptosi float %4 to i32
  %6 = call i32 @llvm.abs.i32(i32 %5, i1 false)
  %7 = sitofp i32 %6 to float
  br label %8

8:                                                ; preds = %3, %24
  %.04 = phi i32 [ 0, %3 ], [ %25, %24 ]
  %.13 = phi float [ %7, %3 ], [ %.2, %24 ]
  %9 = sext i32 %.04 to i64
  %10 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %9
  %11 = load float, ptr %10, align 4
  %12 = fptosi float %11 to i32
  %13 = call i32 @llvm.abs.i32(i32 %12, i1 false)
  %14 = sitofp i32 %13 to float
  %15 = fcmp ogt float %14, %.13
  br i1 %15, label %16, label %23

16:                                               ; preds = %8
  %17 = sext i32 %.04 to i64
  %18 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %17
  %19 = load float, ptr %18, align 4
  %20 = fptosi float %19 to i32
  %21 = call i32 @llvm.abs.i32(i32 %20, i1 false)
  %22 = sitofp i32 %21 to float
  br label %23

23:                                               ; preds = %16, %8
  %.2 = phi float [ %22, %16 ], [ %.13, %8 ]
  br label %24

24:                                               ; preds = %23
  %25 = add i32 %.04, 1
  %26 = icmp slt i32 %25, 32000
  br i1 %26, label %8, label %27, !llvm.loop !276

27:                                               ; preds = %24
  %.1.lcssa = phi float [ %.2, %24 ]
  %28 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef %.1.lcssa)
  br label %29

29:                                               ; preds = %27
  %30 = add i32 %.015, 1
  %31 = icmp slt i32 %30, 1024
  br i1 %31, label %3, label %32, !llvm.loop !277

32:                                               ; preds = %29
  %.02.lcssa = phi float [ %.1.lcssa, %29 ]
  %33 = call i32 @clock()
  %34 = sub i32 %33, %2
  %35 = sitofp i32 %34 to double
  %36 = fdiv double %35, 1.000000e+06
  %37 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@PFIFPMMJ@S3113?7?5?$CF?42f?5?7?7?$AA@", double noundef %36)
  store float %.02.lcssa, ptr @temp, align 4
  call void @check(i32 noundef -1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s321() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05MPAFHIEK@s321?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %21
  %.013 = phi i32 [ 0, %0 ], [ %22, %21 ]
  br label %4

4:                                                ; preds = %3, %16
  %.02 = phi i32 [ 1, %3 ], [ %17, %16 ]
  %5 = sub i32 %.02, 1
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %6
  %8 = load float, ptr %7, align 4
  %9 = sext i32 %.02 to i64
  %10 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %9
  %11 = load float, ptr %10, align 4
  %12 = sext i32 %.02 to i64
  %13 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %12
  %14 = load float, ptr %13, align 4
  %15 = call float @llvm.fmuladd.f32(float %8, float %11, float %14)
  store float %15, ptr %13, align 4
  br label %16

16:                                               ; preds = %4
  %17 = add i32 %.02, 1
  %18 = icmp slt i32 %17, 32000
  br i1 %18, label %4, label %19, !llvm.loop !278

19:                                               ; preds = %16
  %20 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %21

21:                                               ; preds = %19
  %22 = add i32 %.013, 1
  %23 = icmp slt i32 %22, 256
  br i1 %23, label %3, label %24, !llvm.loop !279

24:                                               ; preds = %21
  %25 = call i32 @clock()
  %26 = sub i32 %25, %2
  %27 = sitofp i32 %26 to double
  %28 = fdiv double %27, 1.000000e+06
  %29 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@KPHKFJPB@S321?7?5?$CF?42f?5?7?7?$AA@", double noundef %28)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s322() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05MNEDMGBD@s322?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %31
  %.013 = phi i32 [ 0, %0 ], [ %32, %31 ]
  br label %4

4:                                                ; preds = %3, %26
  %.02 = phi i32 [ 2, %3 ], [ %27, %26 ]
  %5 = sext i32 %.02 to i64
  %6 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %5
  %7 = load float, ptr %6, align 4
  %8 = sub i32 %.02, 1
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %9
  %11 = load float, ptr %10, align 4
  %12 = sext i32 %.02 to i64
  %13 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %12
  %14 = load float, ptr %13, align 4
  %15 = call float @llvm.fmuladd.f32(float %11, float %14, float %7)
  %16 = sub i32 %.02, 2
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %17
  %19 = load float, ptr %18, align 4
  %20 = sext i32 %.02 to i64
  %21 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %20
  %22 = load float, ptr %21, align 4
  %23 = call float @llvm.fmuladd.f32(float %19, float %22, float %15)
  %24 = sext i32 %.02 to i64
  %25 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %24
  store float %23, ptr %25, align 4
  br label %26

26:                                               ; preds = %4
  %27 = add i32 %.02, 1
  %28 = icmp slt i32 %27, 32000
  br i1 %28, label %4, label %29, !llvm.loop !280

29:                                               ; preds = %26
  %30 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %31

31:                                               ; preds = %29
  %32 = add i32 %.013, 1
  %33 = icmp slt i32 %32, 128
  br i1 %33, label %3, label %34, !llvm.loop !281

34:                                               ; preds = %31
  %35 = call i32 @clock()
  %36 = sub i32 %35, %2
  %37 = sitofp i32 %36 to double
  %38 = fdiv double %37, 1.000000e+06
  %39 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@DGJIDPPA@S322?7?5?$CF?42f?5?7?7?$AA@", double noundef %38)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s323() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05MMIBKMCE@s323?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %35
  %.013 = phi i32 [ 0, %0 ], [ %36, %35 ]
  br label %4

4:                                                ; preds = %3, %30
  %.02 = phi i32 [ 1, %3 ], [ %31, %30 ]
  %5 = sub i32 %.02, 1
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %6
  %8 = load float, ptr %7, align 4
  %9 = sext i32 %.02 to i64
  %10 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %9
  %11 = load float, ptr %10, align 4
  %12 = sext i32 %.02 to i64
  %13 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %12
  %14 = load float, ptr %13, align 4
  %15 = call float @llvm.fmuladd.f32(float %11, float %14, float %8)
  %16 = sext i32 %.02 to i64
  %17 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %16
  store float %15, ptr %17, align 4
  %18 = sext i32 %.02 to i64
  %19 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %18
  %20 = load float, ptr %19, align 4
  %21 = sext i32 %.02 to i64
  %22 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %21
  %23 = load float, ptr %22, align 4
  %24 = sext i32 %.02 to i64
  %25 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %24
  %26 = load float, ptr %25, align 4
  %27 = call float @llvm.fmuladd.f32(float %23, float %26, float %20)
  %28 = sext i32 %.02 to i64
  %29 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %28
  store float %27, ptr %29, align 4
  br label %30

30:                                               ; preds = %4
  %31 = add i32 %.02, 1
  %32 = icmp slt i32 %31, 32000
  br i1 %32, label %4, label %33, !llvm.loop !282

33:                                               ; preds = %30
  %34 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %35

35:                                               ; preds = %33
  %36 = add i32 %.013, 1
  %37 = icmp slt i32 %36, 128
  br i1 %37, label %3, label %38, !llvm.loop !283

38:                                               ; preds = %35
  %39 = call i32 @clock()
  %40 = sub i32 %39, %2
  %41 = sitofp i32 %40 to double
  %42 = fdiv double %41, 1.000000e+06
  %43 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@PHBGOADA@S323?7?5?$CF?42f?5?7?7?$AA@", double noundef %42)
  call void @check(i32 noundef 12)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s331() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05HHLJBPCP@s331?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %17
  %.015 = phi i32 [ 0, %0 ], [ %18, %17 ]
  br label %4

4:                                                ; preds = %3, %11
  %.04 = phi i32 [ 0, %3 ], [ %12, %11 ]
  %.13 = phi i32 [ -1, %3 ], [ %.2, %11 ]
  %5 = sext i32 %.04 to i64
  %6 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %5
  %7 = load float, ptr %6, align 4
  %8 = fcmp olt float %7, 0.000000e+00
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  br label %10

10:                                               ; preds = %9, %4
  %.2 = phi i32 [ %.04, %9 ], [ %.13, %4 ]
  br label %11

11:                                               ; preds = %10
  %12 = add i32 %.04, 1
  %13 = icmp slt i32 %12, 32000
  br i1 %13, label %4, label %14, !llvm.loop !284

14:                                               ; preds = %11
  %.1.lcssa = phi i32 [ %.2, %11 ]
  %15 = sitofp i32 %.1.lcssa to float
  %16 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef %15)
  br label %17

17:                                               ; preds = %14
  %18 = add i32 %.015, 1
  %19 = icmp slt i32 %18, 256
  br i1 %19, label %3, label %20, !llvm.loop !285

20:                                               ; preds = %17
  %.02.lcssa = phi i32 [ %.1.lcssa, %17 ]
  %21 = call i32 @clock()
  %22 = sub i32 %21, %2
  %23 = sitofp i32 %22 to double
  %24 = fdiv double %23, 1.000000e+06
  %25 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@DENPBFJO@S331?7?5?$CF?42f?5?7?7?$AA@", double noundef %24)
  %26 = add i32 %.02.lcssa, 1
  %27 = sitofp i32 %26 to float
  store float %27, ptr @temp, align 4
  call void @check(i32 noundef -1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @tsvc_max(i32 noundef %0, i32 noundef %1) #7 {
  %3 = icmp sgt i32 %1, %0
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  br label %6

5:                                                ; preds = %2
  br label %6

6:                                                ; preds = %5, %4
  %.0 = phi i32 [ %1, %4 ], [ %0, %5 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s332(float noundef %0) #7 {
  %2 = call i32 @init(ptr noundef @"??_C@_05HFPPKBHG@s332?5?$AA@")
  %3 = call i32 @clock()
  br label %4

4:                                                ; preds = %1, %23
  %.016 = phi i32 [ 0, %1 ], [ %24, %23 ]
  br label %5

5:                                                ; preds = %4, %15
  %.05 = phi i32 [ 0, %4 ], [ %16, %15 ]
  %6 = sext i32 %.05 to i64
  %7 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %6
  %8 = load float, ptr %7, align 4
  %9 = fcmp ogt float %8, %0
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  %.0.lcssa4 = phi i32 [ %.05, %5 ]
  %11 = sext i32 %.0.lcssa4 to i64
  %12 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %11
  %13 = load float, ptr %12, align 4
  br label %19

14:                                               ; preds = %5
  br label %15

15:                                               ; preds = %14
  %16 = add i32 %.05, 1
  %17 = icmp slt i32 %16, 32000
  br i1 %17, label %5, label %18, !llvm.loop !286

18:                                               ; preds = %15
  br label %19

19:                                               ; preds = %18, %10
  %.03 = phi i32 [ %.0.lcssa4, %10 ], [ -2, %18 ]
  %.1 = phi float [ %13, %10 ], [ -1.000000e+00, %18 ]
  %20 = sitofp i32 %.03 to float
  %21 = fadd float %.1, %20
  %22 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef %21)
  br label %23

23:                                               ; preds = %19
  %24 = add i32 %.016, 1
  %25 = icmp slt i32 %24, 256
  br i1 %25, label %4, label %26, !llvm.loop !287

26:                                               ; preds = %23
  %.02.lcssa = phi float [ %.1, %23 ]
  %27 = call i32 @clock()
  %28 = sub i32 %27, %3
  %29 = sitofp i32 %28 to double
  %30 = fdiv double %29, 1.000000e+06
  %31 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@KNDNHDJP@S332?7?5?$CF?42f?5?7?7?$AA@", double noundef %30)
  store float %.02.lcssa, ptr @temp, align 4
  call void @check(i32 noundef -1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s341() #7 {
  %1 = call i32 @clock()
  %2 = call i32 @init(ptr noundef @"??_C@_05OKGOCHJG@s341?5?$AA@")
  %3 = call i32 @clock()
  br label %4

4:                                                ; preds = %0, %23
  %.015 = phi i32 [ 0, %0 ], [ %24, %23 ]
  br label %5

5:                                                ; preds = %4, %18
  %.04 = phi i32 [ 0, %4 ], [ %19, %18 ]
  %.023 = phi i32 [ -1, %4 ], [ %.1, %18 ]
  %6 = sext i32 %.04 to i64
  %7 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %6
  %8 = load float, ptr %7, align 4
  %9 = fcmp ogt float %8, 0.000000e+00
  br i1 %9, label %10, label %17

10:                                               ; preds = %5
  %11 = add i32 %.023, 1
  %12 = sext i32 %.04 to i64
  %13 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %12
  %14 = load float, ptr %13, align 4
  %15 = sext i32 %11 to i64
  %16 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %15
  store float %14, ptr %16, align 4
  br label %17

17:                                               ; preds = %10, %5
  %.1 = phi i32 [ %11, %10 ], [ %.023, %5 ]
  br label %18

18:                                               ; preds = %17
  %19 = add i32 %.04, 1
  %20 = icmp slt i32 %19, 32000
  br i1 %20, label %5, label %21, !llvm.loop !288

21:                                               ; preds = %18
  %22 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %23

23:                                               ; preds = %21
  %24 = add i32 %.015, 1
  %25 = icmp slt i32 %24, 256
  br i1 %25, label %4, label %26, !llvm.loop !289

26:                                               ; preds = %23
  %27 = call i32 @clock()
  %28 = sub i32 %27, %3
  %29 = sitofp i32 %28 to double
  %30 = fdiv double %29, 1.000000e+06
  %31 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@EAEHPMBB@S341?7?5?$CF?42f?5?7?7?$AA@", double noundef %30)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s342() #7 {
  %1 = call i32 @clock()
  %2 = call i32 @init(ptr noundef @"??_C@_05OICIJJMP@s342?5?$AA@")
  %3 = call i32 @clock()
  br label %4

4:                                                ; preds = %0, %23
  %.015 = phi i32 [ 0, %0 ], [ %24, %23 ]
  br label %5

5:                                                ; preds = %4, %18
  %.04 = phi i32 [ 0, %4 ], [ %19, %18 ]
  %.023 = phi i32 [ -1, %4 ], [ %.1, %18 ]
  %6 = sext i32 %.04 to i64
  %7 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %6
  %8 = load float, ptr %7, align 4
  %9 = fcmp ogt float %8, 0.000000e+00
  br i1 %9, label %10, label %17

10:                                               ; preds = %5
  %11 = add i32 %.023, 1
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %12
  %14 = load float, ptr %13, align 4
  %15 = sext i32 %.04 to i64
  %16 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %15
  store float %14, ptr %16, align 4
  br label %17

17:                                               ; preds = %10, %5
  %.1 = phi i32 [ %11, %10 ], [ %.023, %5 ]
  br label %18

18:                                               ; preds = %17
  %19 = add i32 %.04, 1
  %20 = icmp slt i32 %19, 32000
  br i1 %20, label %5, label %21, !llvm.loop !290

21:                                               ; preds = %18
  %22 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %23

23:                                               ; preds = %21
  %24 = add i32 %.015, 1
  %25 = icmp slt i32 %24, 256
  br i1 %25, label %4, label %26, !llvm.loop !291

26:                                               ; preds = %23
  %27 = call i32 @clock()
  %28 = sub i32 %27, %3
  %29 = sitofp i32 %28 to double
  %30 = fdiv double %29, 1.000000e+06
  %31 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@NJKFJKBA@S342?7?5?$CF?42f?5?7?7?$AA@", double noundef %30)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s343() #7 {
  %1 = call i32 @clock()
  %2 = call i32 @init(ptr noundef @"??_C@_05OJOKPDPI@s343?5?$AA@")
  %3 = call i32 @clock()
  br label %4

4:                                                ; preds = %0, %32
  %.028 = phi i32 [ 0, %0 ], [ %33, %32 ]
  br label %5

5:                                                ; preds = %4, %27
  %.017 = phi i32 [ 0, %4 ], [ %28, %27 ]
  %.036 = phi i32 [ -1, %4 ], [ %.1.lcssa, %27 ]
  br label %6

6:                                                ; preds = %5, %23
  %.05 = phi i32 [ 0, %5 ], [ %24, %23 ]
  %.14 = phi i32 [ %.036, %5 ], [ %.2, %23 ]
  %7 = sext i32 %.05 to i64
  %8 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %7
  %9 = sext i32 %.017 to i64
  %10 = getelementptr inbounds [256 x float], ptr %8, i64 0, i64 %9
  %11 = load float, ptr %10, align 4
  %12 = fcmp ogt float %11, 0.000000e+00
  br i1 %12, label %13, label %22

13:                                               ; preds = %6
  %14 = add i32 %.14, 1
  %15 = sext i32 %.05 to i64
  %16 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %15
  %17 = sext i32 %.017 to i64
  %18 = getelementptr inbounds [256 x float], ptr %16, i64 0, i64 %17
  %19 = load float, ptr %18, align 4
  %20 = sext i32 %14 to i64
  %21 = getelementptr inbounds [65536 x float], ptr @array, i64 0, i64 %20
  store float %19, ptr %21, align 4
  br label %22

22:                                               ; preds = %13, %6
  %.2 = phi i32 [ %14, %13 ], [ %.14, %6 ]
  br label %23

23:                                               ; preds = %22
  %24 = add i32 %.05, 1
  %25 = icmp slt i32 %24, 256
  br i1 %25, label %6, label %26, !llvm.loop !292

26:                                               ; preds = %23
  %.1.lcssa = phi i32 [ %.2, %23 ]
  br label %27

27:                                               ; preds = %26
  %28 = add i32 %.017, 1
  %29 = icmp slt i32 %28, 256
  br i1 %29, label %5, label %30, !llvm.loop !293

30:                                               ; preds = %27
  %31 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %32

32:                                               ; preds = %30
  %33 = add i32 %.028, 1
  %34 = icmp slt i32 %33, 10
  br i1 %34, label %4, label %35, !llvm.loop !294

35:                                               ; preds = %32
  %36 = call i32 @clock()
  %37 = sub i32 %36, %3
  %38 = sitofp i32 %37 to double
  %39 = fdiv double %38, 1.000000e+06
  %40 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@BICLEFNA@S343?7?5?$CF?42f?5?7?7?$AA@", double noundef %39)
  call void @check(i32 noundef 0)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s351() #7 {
  %1 = call i32 @clock()
  %2 = call i32 @init(ptr noundef @"??_C@_05FCNCEAPD@s351?5?$AA@")
  %3 = call i32 @clock()
  %4 = load float, ptr @c, align 16
  br label %5

5:                                                ; preds = %0, %55
  %.013 = phi i32 [ 0, %0 ], [ %56, %55 ]
  br label %6

6:                                                ; preds = %5, %50
  %.02 = phi i32 [ 0, %5 ], [ %51, %50 ]
  %7 = sext i32 %.02 to i64
  %8 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %7
  %9 = load float, ptr %8, align 4
  %10 = sext i32 %.02 to i64
  %11 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %10
  %12 = load float, ptr %11, align 4
  %13 = call float @llvm.fmuladd.f32(float %4, float %9, float %12)
  store float %13, ptr %11, align 4
  %14 = add i32 %.02, 1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %15
  %17 = load float, ptr %16, align 4
  %18 = add i32 %.02, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %19
  %21 = load float, ptr %20, align 4
  %22 = call float @llvm.fmuladd.f32(float %4, float %17, float %21)
  store float %22, ptr %20, align 4
  %23 = add i32 %.02, 2
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %24
  %26 = load float, ptr %25, align 4
  %27 = add i32 %.02, 2
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %28
  %30 = load float, ptr %29, align 4
  %31 = call float @llvm.fmuladd.f32(float %4, float %26, float %30)
  store float %31, ptr %29, align 4
  %32 = add i32 %.02, 3
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %33
  %35 = load float, ptr %34, align 4
  %36 = add i32 %.02, 3
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %37
  %39 = load float, ptr %38, align 4
  %40 = call float @llvm.fmuladd.f32(float %4, float %35, float %39)
  store float %40, ptr %38, align 4
  %41 = add i32 %.02, 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %42
  %44 = load float, ptr %43, align 4
  %45 = add i32 %.02, 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %46
  %48 = load float, ptr %47, align 4
  %49 = call float @llvm.fmuladd.f32(float %4, float %44, float %48)
  store float %49, ptr %47, align 4
  br label %50

50:                                               ; preds = %6
  %51 = add i32 %.02, 5
  %52 = icmp slt i32 %51, 32000
  br i1 %52, label %6, label %53, !llvm.loop !295

53:                                               ; preds = %50
  %54 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %55

55:                                               ; preds = %53
  %56 = add i32 %.013, 1
  %57 = icmp slt i32 %56, 2048
  br i1 %57, label %5, label %58, !llvm.loop !296

58:                                               ; preds = %55
  %59 = call i32 @clock()
  %60 = sub i32 %59, %3
  %61 = sitofp i32 %60 to double
  %62 = fdiv double %61, 1.000000e+06
  %63 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@NLOCLAHO@S351?7?5?$CF?42f?5?7?7?$AA@", double noundef %62)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s1351() #7 {
  %1 = call i32 @clock()
  %2 = call i32 @init(ptr noundef @"??_C@_05FCNCEAPD@s351?5?$AA@")
  %3 = call i32 @clock()
  br label %4

4:                                                ; preds = %0, %17
  %.039 = phi i32 [ 0, %0 ], [ %18, %17 ]
  br label %5

5:                                                ; preds = %4, %12
  %.08 = phi i32 [ 0, %4 ], [ %13, %12 ]
  %.017 = phi ptr [ @c, %4 ], [ %11, %12 ]
  %.026 = phi ptr [ @b, %4 ], [ %10, %12 ]
  %.045 = phi ptr [ @a, %4 ], [ %9, %12 ]
  %6 = load float, ptr %.026, align 4
  %7 = load float, ptr %.017, align 4
  %8 = fadd float %6, %7
  store float %8, ptr %.045, align 4
  %9 = getelementptr inbounds nuw float, ptr %.045, i32 1
  %10 = getelementptr inbounds nuw float, ptr %.026, i32 1
  %11 = getelementptr inbounds nuw float, ptr %.017, i32 1
  br label %12

12:                                               ; preds = %5
  %13 = add i32 %.08, 1
  %14 = icmp slt i32 %13, 32000
  br i1 %14, label %5, label %15, !llvm.loop !297

15:                                               ; preds = %12
  %16 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %17

17:                                               ; preds = %15
  %18 = add i32 %.039, 1
  %19 = icmp slt i32 %18, 2048
  br i1 %19, label %4, label %20, !llvm.loop !298

20:                                               ; preds = %17
  %21 = call i32 @clock()
  %22 = sub i32 %21, %3
  %23 = sitofp i32 %22 to double
  %24 = fdiv double %23, 1.000000e+06
  %25 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@CPNNAPJB@S1351?7?5?$CF?42f?5?7?7?$AA@", double noundef %24)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s352() #7 {
  %1 = call i32 @clock()
  %2 = call i32 @init(ptr noundef @"??_C@_05FAJEPOKK@s352?5?$AA@")
  %3 = call i32 @clock()
  br label %4

4:                                                ; preds = %0, %54
  %.015 = phi i32 [ 0, %0 ], [ %55, %54 ]
  br label %5

5:                                                ; preds = %4, %49
  %.04 = phi i32 [ 0, %4 ], [ %50, %49 ]
  %.13 = phi float [ 0.000000e+00, %4 ], [ %48, %49 ]
  %6 = sext i32 %.04 to i64
  %7 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %6
  %8 = load float, ptr %7, align 4
  %9 = sext i32 %.04 to i64
  %10 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %9
  %11 = load float, ptr %10, align 4
  %12 = call float @llvm.fmuladd.f32(float %8, float %11, float %.13)
  %13 = add i32 %.04, 1
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %14
  %16 = load float, ptr %15, align 4
  %17 = add i32 %.04, 1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %18
  %20 = load float, ptr %19, align 4
  %21 = call float @llvm.fmuladd.f32(float %16, float %20, float %12)
  %22 = add i32 %.04, 2
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %23
  %25 = load float, ptr %24, align 4
  %26 = add i32 %.04, 2
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %27
  %29 = load float, ptr %28, align 4
  %30 = call float @llvm.fmuladd.f32(float %25, float %29, float %21)
  %31 = add i32 %.04, 3
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %32
  %34 = load float, ptr %33, align 4
  %35 = add i32 %.04, 3
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %36
  %38 = load float, ptr %37, align 4
  %39 = call float @llvm.fmuladd.f32(float %34, float %38, float %30)
  %40 = add i32 %.04, 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %41
  %43 = load float, ptr %42, align 4
  %44 = add i32 %.04, 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %45
  %47 = load float, ptr %46, align 4
  %48 = call float @llvm.fmuladd.f32(float %43, float %47, float %39)
  br label %49

49:                                               ; preds = %5
  %50 = add i32 %.04, 5
  %51 = icmp slt i32 %50, 32000
  br i1 %51, label %5, label %52, !llvm.loop !299

52:                                               ; preds = %49
  %.1.lcssa = phi float [ %48, %49 ]
  %53 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef %.1.lcssa)
  br label %54

54:                                               ; preds = %52
  %55 = add i32 %.015, 1
  %56 = icmp slt i32 %55, 2048
  br i1 %56, label %4, label %57, !llvm.loop !300

57:                                               ; preds = %54
  %.02.lcssa = phi float [ %.1.lcssa, %54 ]
  %58 = call i32 @clock()
  %59 = sub i32 %58, %3
  %60 = sitofp i32 %59 to double
  %61 = fdiv double %60, 1.000000e+06
  %62 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@ECAANGHP@S352?7?5?$CF?42f?5?7?7?$AA@", double noundef %61)
  store float %.02.lcssa, ptr @temp, align 4
  call void @check(i32 noundef -1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s353(ptr noalias noundef %0) #7 {
  %2 = call i32 @clock()
  %3 = call i32 @init(ptr noundef @"??_C@_05FBFGJEJN@s353?5?$AA@")
  %4 = call i32 @clock()
  %5 = load float, ptr @c, align 16
  br label %6

6:                                                ; preds = %1, %71
  %.013 = phi i32 [ 0, %1 ], [ %72, %71 ]
  br label %7

7:                                                ; preds = %6, %66
  %.02 = phi i32 [ 0, %6 ], [ %67, %66 ]
  %8 = sext i32 %.02 to i64
  %9 = getelementptr inbounds i32, ptr %0, i64 %8
  %10 = load i32, ptr %9, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %11
  %13 = load float, ptr %12, align 4
  %14 = sext i32 %.02 to i64
  %15 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %14
  %16 = load float, ptr %15, align 4
  %17 = call float @llvm.fmuladd.f32(float %5, float %13, float %16)
  store float %17, ptr %15, align 4
  %18 = add i32 %.02, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, ptr %0, i64 %19
  %21 = load i32, ptr %20, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %22
  %24 = load float, ptr %23, align 4
  %25 = add i32 %.02, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %26
  %28 = load float, ptr %27, align 4
  %29 = call float @llvm.fmuladd.f32(float %5, float %24, float %28)
  store float %29, ptr %27, align 4
  %30 = add i32 %.02, 2
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, ptr %0, i64 %31
  %33 = load i32, ptr %32, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %34
  %36 = load float, ptr %35, align 4
  %37 = add i32 %.02, 2
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %38
  %40 = load float, ptr %39, align 4
  %41 = call float @llvm.fmuladd.f32(float %5, float %36, float %40)
  store float %41, ptr %39, align 4
  %42 = add i32 %.02, 3
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, ptr %0, i64 %43
  %45 = load i32, ptr %44, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %46
  %48 = load float, ptr %47, align 4
  %49 = add i32 %.02, 3
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %50
  %52 = load float, ptr %51, align 4
  %53 = call float @llvm.fmuladd.f32(float %5, float %48, float %52)
  store float %53, ptr %51, align 4
  %54 = add i32 %.02, 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, ptr %0, i64 %55
  %57 = load i32, ptr %56, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %58
  %60 = load float, ptr %59, align 4
  %61 = add i32 %.02, 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %62
  %64 = load float, ptr %63, align 4
  %65 = call float @llvm.fmuladd.f32(float %5, float %60, float %64)
  store float %65, ptr %63, align 4
  br label %66

66:                                               ; preds = %7
  %67 = add i32 %.02, 5
  %68 = icmp slt i32 %67, 32000
  br i1 %68, label %7, label %69, !llvm.loop !301

69:                                               ; preds = %66
  %70 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %71

71:                                               ; preds = %69
  %72 = add i32 %.013, 1
  %73 = icmp slt i32 %72, 256
  br i1 %73, label %6, label %74, !llvm.loop !302

74:                                               ; preds = %71
  %75 = call i32 @clock()
  %76 = sub i32 %75, %4
  %77 = sitofp i32 %76 to double
  %78 = fdiv double %77, 1.000000e+06
  %79 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@IDIOAJLP@S353?7?5?$CF?42f?5?7?7?$AA@", double noundef %78)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s421() #7 {
  %1 = load ptr, ptr @xx, align 8
  %2 = call i32 @set1d(ptr noundef %1, float noundef 1.000000e+00, i32 noundef 1)
  %3 = call i32 @init(ptr noundef @"??_C@_05HNCFKEFK@s421?5?$AA@")
  %4 = call i32 @clock()
  br label %5

5:                                                ; preds = %0, %25
  %.024 = phi i32 [ 0, %0 ], [ %26, %25 ]
  %6 = load ptr, ptr @xx, align 8
  store ptr %6, ptr @yy, align 8
  br label %7

7:                                                ; preds = %5, %20
  %.013 = phi i32 [ 0, %5 ], [ %21, %20 ]
  %8 = load ptr, ptr @yy, align 8
  %9 = add i32 %.013, 1
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds float, ptr %8, i64 %10
  %12 = load float, ptr %11, align 4
  %13 = sext i32 %.013 to i64
  %14 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %13
  %15 = load float, ptr %14, align 4
  %16 = fadd float %12, %15
  %17 = load ptr, ptr @xx, align 8
  %18 = sext i32 %.013 to i64
  %19 = getelementptr inbounds float, ptr %17, i64 %18
  store float %16, ptr %19, align 4
  br label %20

20:                                               ; preds = %7
  %21 = add i32 %.013, 1
  %22 = icmp slt i32 %21, 31999
  br i1 %22, label %7, label %23, !llvm.loop !303

23:                                               ; preds = %20
  %24 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 1.000000e+00)
  br label %25

25:                                               ; preds = %23
  %26 = add i32 %.024, 1
  %27 = icmp slt i32 %26, 1024
  br i1 %27, label %5, label %28, !llvm.loop !304

28:                                               ; preds = %25
  %29 = call i32 @clock()
  %30 = sub i32 %29, %4
  %31 = sitofp i32 %30 to double
  %32 = fdiv double %31, 1.000000e+06
  %33 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@NCAJFPKJ@S421?7?5?$CF?42f?5?7?7?$AA@", double noundef %32)
  store float 0.000000e+00, ptr @temp, align 4
  br label %34

34:                                               ; preds = %28, %41
  %.05 = phi i32 [ 0, %28 ], [ %42, %41 ]
  %35 = load ptr, ptr @xx, align 8
  %36 = sext i32 %.05 to i64
  %37 = getelementptr inbounds float, ptr %35, i64 %36
  %38 = load float, ptr %37, align 4
  %39 = load float, ptr @temp, align 4
  %40 = fadd float %39, %38
  store float %40, ptr @temp, align 4
  br label %41

41:                                               ; preds = %34
  %42 = add i32 %.05, 1
  %43 = icmp slt i32 %42, 32000
  br i1 %43, label %34, label %44, !llvm.loop !305

44:                                               ; preds = %41
  call void @check(i32 noundef -1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s1421() #7 {
  %1 = load ptr, ptr @xx, align 8
  %2 = call i32 @set1d(ptr noundef %1, float noundef 1.000000e+00, i32 noundef 1)
  %3 = call i32 @init(ptr noundef @"??_C@_05HNCFKEFK@s421?5?$AA@")
  %4 = call i32 @clock()
  store ptr getelementptr inbounds nuw (i8, ptr @b, i64 64000), ptr @xx, align 8
  br label %5

5:                                                ; preds = %0, %22
  %.024 = phi i32 [ 0, %0 ], [ %23, %22 ]
  br label %6

6:                                                ; preds = %5, %17
  %.013 = phi i32 [ 0, %5 ], [ %18, %17 ]
  %7 = load ptr, ptr @xx, align 8
  %8 = sext i32 %.013 to i64
  %9 = getelementptr inbounds float, ptr %7, i64 %8
  %10 = load float, ptr %9, align 4
  %11 = sext i32 %.013 to i64
  %12 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %11
  %13 = load float, ptr %12, align 4
  %14 = fadd float %10, %13
  %15 = sext i32 %.013 to i64
  %16 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %15
  store float %14, ptr %16, align 4
  br label %17

17:                                               ; preds = %6
  %18 = add i32 %.013, 1
  %19 = icmp slt i32 %18, 16000
  br i1 %19, label %6, label %20, !llvm.loop !306

20:                                               ; preds = %17
  %21 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 1.000000e+00)
  br label %22

22:                                               ; preds = %20
  %23 = add i32 %.024, 1
  %24 = icmp slt i32 %23, 2048
  br i1 %24, label %5, label %25, !llvm.loop !307

25:                                               ; preds = %22
  %26 = call i32 @clock()
  %27 = sub i32 %26, %4
  %28 = sitofp i32 %27 to double
  %29 = fdiv double %28, 1.000000e+06
  %30 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@CGDGOAEG@S1421?7?5?$CF?42f?5?7?7?$AA@", double noundef %29)
  store float 0.000000e+00, ptr @temp, align 4
  br label %31

31:                                               ; preds = %25, %38
  %.05 = phi i32 [ 0, %25 ], [ %39, %38 ]
  %32 = load ptr, ptr @xx, align 8
  %33 = sext i32 %.05 to i64
  %34 = getelementptr inbounds float, ptr %32, i64 %33
  %35 = load float, ptr %34, align 4
  %36 = load float, ptr @temp, align 4
  %37 = fadd float %36, %35
  store float %37, ptr @temp, align 4
  br label %38

38:                                               ; preds = %31
  %39 = add i32 %.05, 1
  %40 = icmp slt i32 %39, 16000
  br i1 %40, label %31, label %41, !llvm.loop !308

41:                                               ; preds = %38
  call void @check(i32 noundef -1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s422() #7 {
  store ptr getelementptr inbounds nuw (i8, ptr @array, i64 16), ptr @xx, align 8
  %1 = load ptr, ptr @xx, align 8
  %2 = call i32 @set1d(ptr noundef %1, float noundef 0.000000e+00, i32 noundef 1)
  %3 = call i32 @init(ptr noundef @"??_C@_05HPGDBKAD@s422?5?$AA@")
  %4 = call i32 @clock()
  br label %5

5:                                                ; preds = %0, %23
  %.024 = phi i32 [ 0, %0 ], [ %24, %23 ]
  br label %6

6:                                                ; preds = %5, %18
  %.013 = phi i32 [ 0, %5 ], [ %19, %18 ]
  %7 = add i32 %.013, 8
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [65536 x float], ptr @array, i64 0, i64 %8
  %10 = load float, ptr %9, align 4
  %11 = sext i32 %.013 to i64
  %12 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %11
  %13 = load float, ptr %12, align 4
  %14 = fadd float %10, %13
  %15 = load ptr, ptr @xx, align 8
  %16 = sext i32 %.013 to i64
  %17 = getelementptr inbounds float, ptr %15, i64 %16
  store float %14, ptr %17, align 4
  br label %18

18:                                               ; preds = %6
  %19 = add i32 %.013, 1
  %20 = icmp slt i32 %19, 32000
  br i1 %20, label %6, label %21, !llvm.loop !309

21:                                               ; preds = %18
  %22 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %23

23:                                               ; preds = %21
  %24 = add i32 %.024, 1
  %25 = icmp slt i32 %24, 2048
  br i1 %25, label %5, label %26, !llvm.loop !310

26:                                               ; preds = %23
  %27 = call i32 @clock()
  %28 = sub i32 %27, %4
  %29 = sitofp i32 %28 to double
  %30 = fdiv double %29, 1.000000e+06
  %31 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@ELOLDJKI@S422?7?5?$CF?42f?5?7?7?$AA@", double noundef %30)
  store float 0.000000e+00, ptr @temp, align 4
  br label %32

32:                                               ; preds = %26, %39
  %.05 = phi i32 [ 0, %26 ], [ %40, %39 ]
  %33 = load ptr, ptr @xx, align 8
  %34 = sext i32 %.05 to i64
  %35 = getelementptr inbounds float, ptr %33, i64 %34
  %36 = load float, ptr %35, align 4
  %37 = load float, ptr @temp, align 4
  %38 = fadd float %37, %36
  store float %38, ptr @temp, align 4
  br label %39

39:                                               ; preds = %32
  %40 = add i32 %.05, 1
  %41 = icmp slt i32 %40, 32000
  br i1 %41, label %32, label %42, !llvm.loop !311

42:                                               ; preds = %39
  call void @check(i32 noundef -1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s423() #7 {
  %1 = sext i32 64 to i64
  %2 = getelementptr inbounds float, ptr @array, i64 %1
  store ptr %2, ptr @xx, align 8
  %3 = load ptr, ptr @xx, align 8
  %4 = call i32 @set1d(ptr noundef %3, float noundef 1.000000e+00, i32 noundef 1)
  %5 = call i32 @init(ptr noundef @"??_C@_05HOKBHADE@s423?5?$AA@")
  %6 = call i32 @clock()
  br label %7

7:                                                ; preds = %0, %25
  %.024 = phi i32 [ 0, %0 ], [ %26, %25 ]
  br label %8

8:                                                ; preds = %7, %20
  %.013 = phi i32 [ 0, %7 ], [ %21, %20 ]
  %9 = load ptr, ptr @xx, align 8
  %10 = sext i32 %.013 to i64
  %11 = getelementptr inbounds float, ptr %9, i64 %10
  %12 = load float, ptr %11, align 4
  %13 = sext i32 %.013 to i64
  %14 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %13
  %15 = load float, ptr %14, align 4
  %16 = fadd float %12, %15
  %17 = add i32 %.013, 1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [65536 x float], ptr @array, i64 0, i64 %18
  store float %16, ptr %19, align 4
  br label %20

20:                                               ; preds = %8
  %21 = add i32 %.013, 1
  %22 = icmp slt i32 %21, 31999
  br i1 %22, label %8, label %23, !llvm.loop !312

23:                                               ; preds = %20
  %24 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 1.000000e+00)
  br label %25

25:                                               ; preds = %23
  %26 = add i32 %.024, 1
  %27 = icmp slt i32 %26, 1024
  br i1 %27, label %7, label %28, !llvm.loop !313

28:                                               ; preds = %25
  %29 = call i32 @clock()
  %30 = sub i32 %29, %6
  %31 = sitofp i32 %30 to double
  %32 = fdiv double %31, 1.000000e+06
  %33 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@IKGFOGGI@S423?7?5?$CF?42f?5?7?7?$AA@", double noundef %32)
  store float 0.000000e+00, ptr @temp, align 4
  br label %34

34:                                               ; preds = %28, %40
  %.05 = phi i32 [ 0, %28 ], [ %41, %40 ]
  %35 = sext i32 %.05 to i64
  %36 = getelementptr inbounds [65536 x float], ptr @array, i64 0, i64 %35
  %37 = load float, ptr %36, align 4
  %38 = load float, ptr @temp, align 4
  %39 = fadd float %38, %37
  store float %39, ptr @temp, align 4
  br label %40

40:                                               ; preds = %34
  %41 = add i32 %.05, 1
  %42 = icmp slt i32 %41, 32000
  br i1 %42, label %34, label %43, !llvm.loop !314

43:                                               ; preds = %40
  call void @check(i32 noundef -1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s424() #7 {
  %1 = sext i32 63 to i64
  %2 = getelementptr inbounds float, ptr @array, i64 %1
  store ptr %2, ptr @xx, align 8
  %3 = load ptr, ptr @xx, align 8
  %4 = call i32 @set1d(ptr noundef %3, float noundef 0.000000e+00, i32 noundef 1)
  %5 = call i32 @init(ptr noundef @"??_C@_05HLOOGGLB@s424?5?$AA@")
  %6 = call i32 @clock()
  br label %7

7:                                                ; preds = %0, %25
  %.024 = phi i32 [ 0, %0 ], [ %26, %25 ]
  br label %8

8:                                                ; preds = %7, %20
  %.013 = phi i32 [ 0, %7 ], [ %21, %20 ]
  %9 = sext i32 %.013 to i64
  %10 = getelementptr inbounds [65536 x float], ptr @array, i64 0, i64 %9
  %11 = load float, ptr %10, align 4
  %12 = sext i32 %.013 to i64
  %13 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %12
  %14 = load float, ptr %13, align 4
  %15 = fadd float %11, %14
  %16 = load ptr, ptr @xx, align 8
  %17 = add i32 %.013, 1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds float, ptr %16, i64 %18
  store float %15, ptr %19, align 4
  br label %20

20:                                               ; preds = %8
  %21 = add i32 %.013, 1
  %22 = icmp slt i32 %21, 31999
  br i1 %22, label %8, label %23, !llvm.loop !315

23:                                               ; preds = %20
  %24 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 1.000000e+00)
  br label %25

25:                                               ; preds = %23
  %26 = add i32 %.024, 1
  %27 = icmp slt i32 %26, 1024
  br i1 %27, label %7, label %28, !llvm.loop !316

28:                                               ; preds = %25
  %29 = call i32 @clock()
  %30 = sub i32 %29, %6
  %31 = sitofp i32 %30 to double
  %32 = fdiv double %31, 1.000000e+06
  %33 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@KDFOPDOL@S424?7?5?$CF?42f?5?7?7?$AA@", double noundef %32)
  store float 0.000000e+00, ptr @temp, align 4
  br label %34

34:                                               ; preds = %28, %41
  %.05 = phi i32 [ 0, %28 ], [ %42, %41 ]
  %35 = load ptr, ptr @xx, align 8
  %36 = sext i32 %.05 to i64
  %37 = getelementptr inbounds float, ptr %35, i64 %36
  %38 = load float, ptr %37, align 4
  %39 = load float, ptr @temp, align 4
  %40 = fadd float %39, %38
  store float %40, ptr @temp, align 4
  br label %41

41:                                               ; preds = %34
  %42 = add i32 %.05, 1
  %43 = icmp slt i32 %42, 32000
  br i1 %43, label %34, label %44, !llvm.loop !317

44:                                               ; preds = %41
  call void @check(i32 noundef -1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s431() #7 {
  %1 = mul i32 2, 1
  %2 = sub i32 %1, 2
  %3 = call i32 @init(ptr noundef @"??_C@_05MFJJMDDP@s431?5?$AA@")
  %4 = call i32 @clock()
  br label %5

5:                                                ; preds = %0, %22
  %.013 = phi i32 [ 0, %0 ], [ %23, %22 ]
  br label %6

6:                                                ; preds = %5, %17
  %.02 = phi i32 [ 0, %5 ], [ %18, %17 ]
  %7 = add i32 %.02, %2
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %8
  %10 = load float, ptr %9, align 4
  %11 = sext i32 %.02 to i64
  %12 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %11
  %13 = load float, ptr %12, align 4
  %14 = fadd float %10, %13
  %15 = sext i32 %.02 to i64
  %16 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %15
  store float %14, ptr %16, align 4
  br label %17

17:                                               ; preds = %6
  %18 = add i32 %.02, 1
  %19 = icmp slt i32 %18, 32000
  br i1 %19, label %6, label %20, !llvm.loop !318

20:                                               ; preds = %17
  %21 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %22

22:                                               ; preds = %20
  %23 = add i32 %.013, 1
  %24 = icmp slt i32 %23, 2560
  br i1 %24, label %5, label %25, !llvm.loop !319

25:                                               ; preds = %22
  %26 = call i32 @clock()
  %27 = sub i32 %26, %4
  %28 = sitofp i32 %27 to double
  %29 = fdiv double %28, 1.000000e+06
  %30 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@EJKMBDMG@S431?7?5?$CF?42f?5?7?7?$AA@", double noundef %29)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s441() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05FIEOPLIG@s441?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %54
  %.014 = phi i32 [ 0, %0 ], [ %55, %54 ]
  br label %4

4:                                                ; preds = %3, %49
  %.02 = phi i32 [ 0, %3 ], [ %50, %49 ]
  %5 = sext i32 %.02 to i64
  %6 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %5
  %7 = load float, ptr %6, align 4
  %8 = fcmp olt float %7, 0.000000e+00
  br i1 %8, label %9, label %20

9:                                                ; preds = %4
  %10 = sext i32 %.02 to i64
  %11 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %10
  %12 = load float, ptr %11, align 4
  %13 = sext i32 %.02 to i64
  %14 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %13
  %15 = load float, ptr %14, align 4
  %16 = sext i32 %.02 to i64
  %17 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %16
  %18 = load float, ptr %17, align 4
  %19 = call float @llvm.fmuladd.f32(float %12, float %15, float %18)
  store float %19, ptr %17, align 4
  br label %48

20:                                               ; preds = %4
  %21 = sext i32 %.02 to i64
  %22 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %21
  %23 = load float, ptr %22, align 4
  %24 = fcmp oeq float %23, 0.000000e+00
  br i1 %24, label %25, label %36

25:                                               ; preds = %20
  %26 = sext i32 %.02 to i64
  %27 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %26
  %28 = load float, ptr %27, align 4
  %29 = sext i32 %.02 to i64
  %30 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %29
  %31 = load float, ptr %30, align 4
  %32 = sext i32 %.02 to i64
  %33 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %32
  %34 = load float, ptr %33, align 4
  %35 = call float @llvm.fmuladd.f32(float %28, float %31, float %34)
  store float %35, ptr %33, align 4
  br label %47

36:                                               ; preds = %20
  %37 = sext i32 %.02 to i64
  %38 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %37
  %39 = load float, ptr %38, align 4
  %40 = sext i32 %.02 to i64
  %41 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %40
  %42 = load float, ptr %41, align 4
  %43 = sext i32 %.02 to i64
  %44 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %43
  %45 = load float, ptr %44, align 4
  %46 = call float @llvm.fmuladd.f32(float %39, float %42, float %45)
  store float %46, ptr %44, align 4
  br label %47

47:                                               ; preds = %36, %25
  br label %48

48:                                               ; preds = %47, %9
  %.03 = phi i32 [ %.02, %47 ], [ %.02, %9 ]
  br label %49

49:                                               ; preds = %48
  %50 = add i32 %.03, 1
  %51 = icmp slt i32 %50, 32000
  br i1 %51, label %4, label %52, !llvm.loop !320

52:                                               ; preds = %49
  %53 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %54

54:                                               ; preds = %52
  %55 = add i32 %.014, 1
  %56 = icmp slt i32 %55, 256
  br i1 %56, label %3, label %57, !llvm.loop !321

57:                                               ; preds = %54
  %58 = call i32 @clock()
  %59 = sub i32 %58, %2
  %60 = sitofp i32 %59 to double
  %61 = fdiv double %60, 1.000000e+06
  %62 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@DNDEPKEJ@S441?7?5?$CF?42f?5?7?7?$AA@", double noundef %61)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s442() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05FKAIEFNP@s442?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %63
  %.013 = phi i32 [ 0, %0 ], [ %64, %63 ]
  br label %4

4:                                                ; preds = %3, %58
  %.02 = phi i32 [ 0, %3 ], [ %59, %58 ]
  %5 = sext i32 %.02 to i64
  %6 = getelementptr inbounds [32000 x i32], ptr @indx, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4
  switch i32 %7, label %12 [
    i32 1, label %8
    i32 2, label %9
    i32 3, label %10
    i32 4, label %11
  ]

8:                                                ; preds = %4
  br label %13

9:                                                ; preds = %4
  br label %24

10:                                               ; preds = %4
  br label %35

11:                                               ; preds = %4
  br label %46

12:                                               ; preds = %4
  br label %13

13:                                               ; preds = %12, %8
  %14 = sext i32 %.02 to i64
  %15 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %14
  %16 = load float, ptr %15, align 4
  %17 = sext i32 %.02 to i64
  %18 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %17
  %19 = load float, ptr %18, align 4
  %20 = sext i32 %.02 to i64
  %21 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %20
  %22 = load float, ptr %21, align 4
  %23 = call float @llvm.fmuladd.f32(float %16, float %19, float %22)
  store float %23, ptr %21, align 4
  br label %57

24:                                               ; preds = %9
  %25 = sext i32 %.02 to i64
  %26 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %25
  %27 = load float, ptr %26, align 4
  %28 = sext i32 %.02 to i64
  %29 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %28
  %30 = load float, ptr %29, align 4
  %31 = sext i32 %.02 to i64
  %32 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %31
  %33 = load float, ptr %32, align 4
  %34 = call float @llvm.fmuladd.f32(float %27, float %30, float %33)
  store float %34, ptr %32, align 4
  br label %57

35:                                               ; preds = %10
  %36 = sext i32 %.02 to i64
  %37 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %36
  %38 = load float, ptr %37, align 4
  %39 = sext i32 %.02 to i64
  %40 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %39
  %41 = load float, ptr %40, align 4
  %42 = sext i32 %.02 to i64
  %43 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %42
  %44 = load float, ptr %43, align 4
  %45 = call float @llvm.fmuladd.f32(float %38, float %41, float %44)
  store float %45, ptr %43, align 4
  br label %57

46:                                               ; preds = %11
  %47 = sext i32 %.02 to i64
  %48 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %47
  %49 = load float, ptr %48, align 4
  %50 = sext i32 %.02 to i64
  %51 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %50
  %52 = load float, ptr %51, align 4
  %53 = sext i32 %.02 to i64
  %54 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %53
  %55 = load float, ptr %54, align 4
  %56 = call float @llvm.fmuladd.f32(float %49, float %52, float %55)
  store float %56, ptr %54, align 4
  br label %57

57:                                               ; preds = %46, %35, %24, %13
  br label %58

58:                                               ; preds = %57
  %59 = add i32 %.02, 1
  %60 = icmp slt i32 %59, 32000
  br i1 %60, label %4, label %61, !llvm.loop !322

61:                                               ; preds = %58
  %62 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %63

63:                                               ; preds = %61
  %64 = add i32 %.013, 1
  %65 = icmp slt i32 %64, 128
  br i1 %65, label %3, label %66, !llvm.loop !323

66:                                               ; preds = %63
  %67 = call i32 @clock()
  %68 = sub i32 %67, %2
  %69 = sitofp i32 %68 to double
  %70 = fdiv double %69, 1.000000e+06
  %71 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@KENGJMEI@S442?7?5?$CF?42f?5?7?7?$AA@", double noundef %70)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s443() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05FLMKCPOI@s443?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %39
  %.013 = phi i32 [ 0, %0 ], [ %40, %39 ]
  br label %4

4:                                                ; preds = %3, %34
  %.02 = phi i32 [ 0, %3 ], [ %35, %34 ]
  %5 = sext i32 %.02 to i64
  %6 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %5
  %7 = load float, ptr %6, align 4
  %8 = fcmp ole float %7, 0.000000e+00
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  br label %11

10:                                               ; preds = %4
  br label %22

11:                                               ; preds = %9
  %12 = sext i32 %.02 to i64
  %13 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %12
  %14 = load float, ptr %13, align 4
  %15 = sext i32 %.02 to i64
  %16 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %15
  %17 = load float, ptr %16, align 4
  %18 = sext i32 %.02 to i64
  %19 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %18
  %20 = load float, ptr %19, align 4
  %21 = call float @llvm.fmuladd.f32(float %14, float %17, float %20)
  store float %21, ptr %19, align 4
  br label %33

22:                                               ; preds = %10
  %23 = sext i32 %.02 to i64
  %24 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %23
  %25 = load float, ptr %24, align 4
  %26 = sext i32 %.02 to i64
  %27 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %26
  %28 = load float, ptr %27, align 4
  %29 = sext i32 %.02 to i64
  %30 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %29
  %31 = load float, ptr %30, align 4
  %32 = call float @llvm.fmuladd.f32(float %25, float %28, float %31)
  store float %32, ptr %30, align 4
  br label %33

33:                                               ; preds = %22, %11
  br label %34

34:                                               ; preds = %33
  %35 = add i32 %.02, 1
  %36 = icmp slt i32 %35, 32000
  br i1 %36, label %4, label %37, !llvm.loop !324

37:                                               ; preds = %34
  %38 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %39

39:                                               ; preds = %37
  %40 = add i32 %.013, 1
  %41 = icmp slt i32 %40, 512
  br i1 %41, label %3, label %42, !llvm.loop !325

42:                                               ; preds = %39
  %43 = call i32 @clock()
  %44 = sub i32 %43, %2
  %45 = sitofp i32 %44 to double
  %46 = fdiv double %45, 1.000000e+06
  %47 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@GFFIEDII@S443?7?5?$CF?42f?5?7?7?$AA@", double noundef %46)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s451() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05OAPCJMOD@s451?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %21
  %.013 = phi i32 [ 0, %0 ], [ %22, %21 ]
  br label %4

4:                                                ; preds = %3, %16
  %.02 = phi i32 [ 0, %3 ], [ %17, %16 ]
  %5 = sext i32 %.02 to i64
  %6 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %5
  %7 = load float, ptr %6, align 4
  %8 = call float @sinf(float noundef %7) #13
  %9 = sext i32 %.02 to i64
  %10 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %9
  %11 = load float, ptr %10, align 4
  %12 = call float @cosf(float noundef %11) #13
  %13 = fadd float %8, %12
  %14 = sext i32 %.02 to i64
  %15 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %14
  store float %13, ptr %15, align 4
  br label %16

16:                                               ; preds = %4
  %17 = add i32 %.02, 1
  %18 = icmp slt i32 %17, 32000
  br i1 %18, label %4, label %19, !llvm.loop !326

19:                                               ; preds = %16
  %20 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %21

21:                                               ; preds = %19
  %22 = add i32 %.013, 1
  %23 = icmp slt i32 %22, 51
  br i1 %23, label %3, label %24, !llvm.loop !327

24:                                               ; preds = %21
  %25 = call i32 @clock()
  %26 = sub i32 %25, %2
  %27 = sitofp i32 %26 to double
  %28 = fdiv double %27, 1.000000e+06
  %29 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@KGJBLGCG@S451?7?5?$CF?42f?5?7?7?$AA@", double noundef %28)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local float @sinf(float noundef) #8

; Function Attrs: nounwind
declare dso_local float @cosf(float noundef) #8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s452() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05OCLECCLK@s452?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %21
  %.013 = phi i32 [ 0, %0 ], [ %22, %21 ]
  br label %4

4:                                                ; preds = %3, %16
  %.02 = phi i32 [ 0, %3 ], [ %17, %16 ]
  %5 = sext i32 %.02 to i64
  %6 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %5
  %7 = load float, ptr %6, align 4
  %8 = sext i32 %.02 to i64
  %9 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %8
  %10 = load float, ptr %9, align 4
  %11 = add i32 %.02, 1
  %12 = sitofp i32 %11 to float
  %13 = call float @llvm.fmuladd.f32(float %10, float %12, float %7)
  %14 = sext i32 %.02 to i64
  %15 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %14
  store float %13, ptr %15, align 4
  br label %16

16:                                               ; preds = %4
  %17 = add i32 %.02, 1
  %18 = icmp slt i32 %17, 32000
  br i1 %18, label %4, label %19, !llvm.loop !328

19:                                               ; preds = %16
  %20 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %21

21:                                               ; preds = %19
  %22 = add i32 %.013, 1
  %23 = icmp slt i32 %22, 1024
  br i1 %23, label %3, label %24, !llvm.loop !329

24:                                               ; preds = %21
  %25 = call i32 @clock()
  %26 = sub i32 %25, %2
  %27 = sitofp i32 %26 to double
  %28 = fdiv double %27, 1.000000e+06
  %29 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@DPHDNACH@S452?7?5?$CF?42f?5?7?7?$AA@", double noundef %28)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s453() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05ODHGEIIN@s453?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %17
  %.025 = phi i32 [ 0, %0 ], [ %18, %17 ]
  br label %4

4:                                                ; preds = %3, %12
  %.04 = phi float [ 0.000000e+00, %3 ], [ %5, %12 ]
  %.013 = phi i32 [ 0, %3 ], [ %13, %12 ]
  %5 = fadd float %.04, 2.000000e+00
  %6 = sext i32 %.013 to i64
  %7 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %6
  %8 = load float, ptr %7, align 4
  %9 = fmul float %5, %8
  %10 = sext i32 %.013 to i64
  %11 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %10
  store float %9, ptr %11, align 4
  br label %12

12:                                               ; preds = %4
  %13 = add i32 %.013, 1
  %14 = icmp slt i32 %13, 32000
  br i1 %14, label %4, label %15, !llvm.loop !330

15:                                               ; preds = %12
  %16 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %17

17:                                               ; preds = %15
  %18 = add i32 %.025, 1
  %19 = icmp slt i32 %18, 512
  br i1 %19, label %3, label %20, !llvm.loop !331

20:                                               ; preds = %17
  %21 = call i32 @clock()
  %22 = sub i32 %21, %2
  %23 = sitofp i32 %22 to double
  %24 = fdiv double %23, 1.000000e+06
  %25 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@POPNAPOH@S453?7?5?$CF?42f?5?7?7?$AA@", double noundef %24)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s471() #7 {
  %1 = call i32 @set1d(ptr noundef @x, float noundef 0.000000e+00, i32 noundef 1)
  %2 = call i32 @init(ptr noundef @"??_C@_05EKPLFEGI@s471?5?$AA@")
  %3 = call i32 @clock()
  br label %4

4:                                                ; preds = %0, %36
  %.024 = phi i32 [ 0, %0 ], [ %37, %36 ]
  br label %5

5:                                                ; preds = %4, %31
  %.013 = phi i32 [ 0, %4 ], [ %32, %31 ]
  %6 = sext i32 %.013 to i64
  %7 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %6
  %8 = load float, ptr %7, align 4
  %9 = sext i32 %.013 to i64
  %10 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %9
  %11 = load float, ptr %10, align 4
  %12 = sext i32 %.013 to i64
  %13 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %12
  %14 = load float, ptr %13, align 4
  %15 = call float @llvm.fmuladd.f32(float %11, float %14, float %8)
  %16 = sext i32 %.013 to i64
  %17 = getelementptr inbounds [32000 x float], ptr @x, i64 0, i64 %16
  store float %15, ptr %17, align 4
  %18 = call i32 @s471s()
  %19 = sext i32 %.013 to i64
  %20 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %19
  %21 = load float, ptr %20, align 4
  %22 = sext i32 %.013 to i64
  %23 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %22
  %24 = load float, ptr %23, align 4
  %25 = sext i32 %.013 to i64
  %26 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %25
  %27 = load float, ptr %26, align 4
  %28 = call float @llvm.fmuladd.f32(float %24, float %27, float %21)
  %29 = sext i32 %.013 to i64
  %30 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %29
  store float %28, ptr %30, align 4
  br label %31

31:                                               ; preds = %5
  %32 = add i32 %.013, 1
  %33 = icmp slt i32 %32, 32000
  br i1 %33, label %5, label %34, !llvm.loop !332

34:                                               ; preds = %31
  %35 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %36

36:                                               ; preds = %34
  %37 = add i32 %.024, 1
  %38 = icmp slt i32 %37, 128
  br i1 %38, label %4, label %39, !llvm.loop !333

39:                                               ; preds = %36
  %40 = call i32 @clock()
  %41 = sub i32 %40, %3
  %42 = sitofp i32 %41 to double
  %43 = fdiv double %42, 1.000000e+06
  %44 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@EKKKCILJ@S471?7?5?$CF?42f?5?7?7?$AA@", double noundef %43)
  store float 0.000000e+00, ptr @temp, align 4
  br label %45

45:                                               ; preds = %39, %51
  %.05 = phi i32 [ 0, %39 ], [ %52, %51 ]
  %46 = sext i32 %.05 to i64
  %47 = getelementptr inbounds [32000 x float], ptr @x, i64 0, i64 %46
  %48 = load float, ptr %47, align 4
  %49 = load float, ptr @temp, align 4
  %50 = fadd float %49, %48
  store float %50, ptr @temp, align 4
  br label %51

51:                                               ; preds = %45
  %52 = add i32 %.05, 1
  %53 = icmp slt i32 %52, 32000
  br i1 %53, label %45, label %54, !llvm.loop !334

54:                                               ; preds = %51
  call void @check(i32 noundef -12)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i32 @s471s() #7 comdat {
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s481() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05BCJIEEDO@s481?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %26
  %.013 = phi i32 [ 0, %0 ], [ %27, %26 ]
  br label %4

4:                                                ; preds = %3, %21
  %.02 = phi i32 [ 0, %3 ], [ %22, %21 ]
  %5 = sext i32 %.02 to i64
  %6 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %5
  %7 = load float, ptr %6, align 4
  %8 = fcmp olt float %7, 0.000000e+00
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  call void @exit(i32 noundef 0) #14
  unreachable

10:                                               ; preds = %4
  %11 = sext i32 %.02 to i64
  %12 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %11
  %13 = load float, ptr %12, align 4
  %14 = sext i32 %.02 to i64
  %15 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %14
  %16 = load float, ptr %15, align 4
  %17 = sext i32 %.02 to i64
  %18 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %17
  %19 = load float, ptr %18, align 4
  %20 = call float @llvm.fmuladd.f32(float %13, float %16, float %19)
  store float %20, ptr %18, align 4
  br label %21

21:                                               ; preds = %10
  %22 = add i32 %.02, 1
  %23 = icmp slt i32 %22, 32000
  br i1 %23, label %4, label %24, !llvm.loop !335

24:                                               ; preds = %21
  %25 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %26

26:                                               ; preds = %24
  %27 = add i32 %.013, 1
  %28 = icmp slt i32 %27, 256
  br i1 %28, label %3, label %29, !llvm.loop !336

29:                                               ; preds = %26
  %30 = call i32 @clock()
  %31 = sub i32 %30, %2
  %32 = sitofp i32 %31 to double
  %33 = fdiv double %32, 1.000000e+06
  %34 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@DIDOLHMI@S481?7?5?$CF?42f?5?7?7?$AA@", double noundef %33)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #12

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s482() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05BANOPKGH@s482?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %29
  %.013 = phi i32 [ 0, %0 ], [ %30, %29 ]
  br label %4

4:                                                ; preds = %3, %24
  %.02 = phi i32 [ 0, %3 ], [ %25, %24 ]
  %5 = sext i32 %.02 to i64
  %6 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %5
  %7 = load float, ptr %6, align 4
  %8 = sext i32 %.02 to i64
  %9 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %8
  %10 = load float, ptr %9, align 4
  %11 = sext i32 %.02 to i64
  %12 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %11
  %13 = load float, ptr %12, align 4
  %14 = call float @llvm.fmuladd.f32(float %7, float %10, float %13)
  store float %14, ptr %12, align 4
  %15 = sext i32 %.02 to i64
  %16 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %15
  %17 = load float, ptr %16, align 4
  %18 = sext i32 %.02 to i64
  %19 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %18
  %20 = load float, ptr %19, align 4
  %21 = fcmp ogt float %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  br label %27

23:                                               ; preds = %4
  br label %24

24:                                               ; preds = %23
  %25 = add i32 %.02, 1
  %26 = icmp slt i32 %25, 32000
  br i1 %26, label %4, label %.loopexit, !llvm.loop !337

.loopexit:                                        ; preds = %24
  br label %27

27:                                               ; preds = %.loopexit, %22
  %28 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %29

29:                                               ; preds = %27
  %30 = add i32 %.013, 1
  %31 = icmp slt i32 %30, 256
  br i1 %31, label %3, label %32, !llvm.loop !338

32:                                               ; preds = %29
  %33 = call i32 @clock()
  %34 = sub i32 %33, %2
  %35 = sitofp i32 %34 to double
  %36 = fdiv double %35, 1.000000e+06
  %37 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@KBNMNBMJ@S482?7?5?$CF?42f?5?7?7?$AA@", double noundef %36)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @tsvc_min(i32 noundef %0, i32 noundef %1) #7 {
  %3 = icmp slt i32 %0, %1
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  br label %6

5:                                                ; preds = %2
  br label %6

6:                                                ; preds = %5, %4
  %7 = phi i32 [ %0, %4 ], [ %1, %5 ]
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s491(ptr noalias noundef %0) #7 {
  %2 = call i32 @init(ptr noundef @"??_C@_05KKCECDFL@s491?5?$AA@")
  %3 = call i32 @clock()
  br label %4

4:                                                ; preds = %1, %26
  %.013 = phi i32 [ 0, %1 ], [ %27, %26 ]
  br label %5

5:                                                ; preds = %4, %21
  %.02 = phi i32 [ 0, %4 ], [ %22, %21 ]
  %6 = sext i32 %.02 to i64
  %7 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %6
  %8 = load float, ptr %7, align 4
  %9 = sext i32 %.02 to i64
  %10 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %9
  %11 = load float, ptr %10, align 4
  %12 = sext i32 %.02 to i64
  %13 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %12
  %14 = load float, ptr %13, align 4
  %15 = call float @llvm.fmuladd.f32(float %11, float %14, float %8)
  %16 = sext i32 %.02 to i64
  %17 = getelementptr inbounds i32, ptr %0, i64 %16
  %18 = load i32, ptr %17, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %19
  store float %15, ptr %20, align 4
  br label %21

21:                                               ; preds = %5
  %22 = add i32 %.02, 1
  %23 = icmp slt i32 %22, 32000
  br i1 %23, label %5, label %24, !llvm.loop !339

24:                                               ; preds = %21
  %25 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %26

26:                                               ; preds = %24
  %27 = add i32 %.013, 1
  %28 = icmp slt i32 %27, 256
  br i1 %28, label %4, label %29, !llvm.loop !340

29:                                               ; preds = %26
  %30 = call i32 @clock()
  %31 = sub i32 %30, %3
  %32 = sitofp i32 %31 to double
  %33 = fdiv double %32, 1.000000e+06
  %34 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@KDJLPLKH@S491?7?5?$CF?42f?5?7?7?$AA@", double noundef %33)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s4112(ptr noalias noundef %0, float noundef %1) #7 {
  %3 = call i32 @init(ptr noundef @"??_C@_05BHGEHLGH@s4112?$AA@")
  %4 = call i32 @clock()
  br label %5

5:                                                ; preds = %2, %22
  %.013 = phi i32 [ 0, %2 ], [ %23, %22 ]
  br label %6

6:                                                ; preds = %5, %17
  %.02 = phi i32 [ 0, %5 ], [ %18, %17 ]
  %7 = sext i32 %.02 to i64
  %8 = getelementptr inbounds i32, ptr %0, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %10
  %12 = load float, ptr %11, align 4
  %13 = sext i32 %.02 to i64
  %14 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %13
  %15 = load float, ptr %14, align 4
  %16 = call float @llvm.fmuladd.f32(float %12, float %1, float %15)
  store float %16, ptr %14, align 4
  br label %17

17:                                               ; preds = %6
  %18 = add i32 %.02, 1
  %19 = icmp slt i32 %18, 32000
  br i1 %19, label %6, label %20, !llvm.loop !341

20:                                               ; preds = %17
  %21 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %22

22:                                               ; preds = %20
  %23 = add i32 %.013, 1
  %24 = icmp slt i32 %23, 256
  br i1 %24, label %5, label %25, !llvm.loop !342

25:                                               ; preds = %22
  %26 = call i32 @clock()
  %27 = sub i32 %26, %4
  %28 = sitofp i32 %27 to double
  %29 = fdiv double %28, 1.000000e+06
  %30 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@FBMGIJMJ@S4112?7?5?$CF?42f?5?7?7?$AA@", double noundef %29)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s4113(ptr noalias noundef %0) #7 {
  %2 = call i32 @init(ptr noundef @"??_C@_05OHPEKCG@s4113?$AA@")
  %3 = call i32 @clock()
  br label %4

4:                                                ; preds = %1, %26
  %.013 = phi i32 [ 0, %1 ], [ %27, %26 ]
  br label %5

5:                                                ; preds = %4, %21
  %.02 = phi i32 [ 0, %4 ], [ %22, %21 ]
  %6 = sext i32 %.02 to i64
  %7 = getelementptr inbounds i32, ptr %0, i64 %6
  %8 = load i32, ptr %7, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %9
  %11 = load float, ptr %10, align 4
  %12 = sext i32 %.02 to i64
  %13 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %12
  %14 = load float, ptr %13, align 4
  %15 = fadd float %11, %14
  %16 = sext i32 %.02 to i64
  %17 = getelementptr inbounds i32, ptr %0, i64 %16
  %18 = load i32, ptr %17, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %19
  store float %15, ptr %20, align 4
  br label %21

21:                                               ; preds = %5
  %22 = add i32 %.02, 1
  %23 = icmp slt i32 %22, 32000
  br i1 %23, label %5, label %24, !llvm.loop !343

24:                                               ; preds = %21
  %25 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %26

26:                                               ; preds = %24
  %27 = add i32 %.013, 1
  %28 = icmp slt i32 %27, 256
  br i1 %28, label %4, label %29, !llvm.loop !344

29:                                               ; preds = %26
  %30 = call i32 @clock()
  %31 = sub i32 %30, %3
  %32 = sitofp i32 %31 to double
  %33 = fdiv double %32, 1.000000e+06
  %34 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@JAEIFGAJ@S4113?7?5?$CF?42f?5?7?7?$AA@", double noundef %33)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s4114(ptr noundef %0, i32 noundef %1) #7 {
  %3 = call i32 @init(ptr noundef @"??_C@_05EBDONMOB@s4114?$AA@")
  %4 = call i32 @clock()
  br label %5

5:                                                ; preds = %2, %33
  %.013 = phi i32 [ 0, %2 ], [ %34, %33 ]
  %6 = sub i32 %1, 1
  %7 = icmp slt i32 %6, 32000
  br i1 %7, label %.lr.ph, label %31

.lr.ph:                                           ; preds = %5
  br label %8

8:                                                ; preds = %.lr.ph, %28
  %.02 = phi i32 [ %6, %.lr.ph ], [ %29, %28 ]
  %9 = sext i32 %.02 to i64
  %10 = getelementptr inbounds i32, ptr %0, i64 %9
  %11 = load i32, ptr %10, align 4
  %12 = sext i32 %.02 to i64
  %13 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %12
  %14 = load float, ptr %13, align 4
  %15 = sub i32 32000, %11
  %16 = add i32 %15, 1
  %17 = sub i32 %16, 2
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %18
  %20 = load float, ptr %19, align 4
  %21 = sext i32 %.02 to i64
  %22 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %21
  %23 = load float, ptr %22, align 4
  %24 = call float @llvm.fmuladd.f32(float %20, float %23, float %14)
  %25 = sext i32 %.02 to i64
  %26 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %25
  store float %24, ptr %26, align 4
  %27 = add i32 %11, 5
  br label %28

28:                                               ; preds = %8
  %29 = add i32 %.02, 1
  %30 = icmp slt i32 %29, 32000
  br i1 %30, label %8, label %._crit_edge, !llvm.loop !345

._crit_edge:                                      ; preds = %28
  br label %31

31:                                               ; preds = %._crit_edge, %5
  %32 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %33

33:                                               ; preds = %31
  %34 = add i32 %.013, 1
  %35 = icmp slt i32 %34, 256
  br i1 %35, label %5, label %36, !llvm.loop !346

36:                                               ; preds = %33
  %37 = call i32 @clock()
  %38 = sub i32 %37, %4
  %39 = sitofp i32 %38 to double
  %40 = fdiv double %39, 1.000000e+06
  %41 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@LJHDEDIK@S4114?7?5?$CF?42f?5?7?7?$AA@", double noundef %40)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s4115(ptr noalias noundef %0) #7 {
  %2 = call i32 @init(ptr noundef @"??_C@_05FICFONKA@s4115?$AA@")
  %3 = call i32 @clock()
  br label %4

4:                                                ; preds = %1, %21
  %.015 = phi i32 [ 0, %1 ], [ %22, %21 ]
  br label %5

5:                                                ; preds = %4, %16
  %.04 = phi i32 [ 0, %4 ], [ %17, %16 ]
  %.13 = phi float [ 0.000000e+00, %4 ], [ %15, %16 ]
  %6 = sext i32 %.04 to i64
  %7 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %6
  %8 = load float, ptr %7, align 4
  %9 = sext i32 %.04 to i64
  %10 = getelementptr inbounds i32, ptr %0, i64 %9
  %11 = load i32, ptr %10, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %12
  %14 = load float, ptr %13, align 4
  %15 = call float @llvm.fmuladd.f32(float %8, float %14, float %.13)
  br label %16

16:                                               ; preds = %5
  %17 = add i32 %.04, 1
  %18 = icmp slt i32 %17, 32000
  br i1 %18, label %5, label %19, !llvm.loop !347

19:                                               ; preds = %16
  %.1.lcssa = phi float [ %15, %16 ]
  %20 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %21

21:                                               ; preds = %19
  %22 = add i32 %.015, 1
  %23 = icmp slt i32 %22, 256
  br i1 %23, label %4, label %24, !llvm.loop !348

24:                                               ; preds = %21
  %.02.lcssa = phi float [ %.1.lcssa, %21 ]
  %25 = call i32 @clock()
  %26 = sub i32 %25, %3
  %27 = sitofp i32 %26 to double
  %28 = fdiv double %27, 1.000000e+06
  %29 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@HIPNJMEK@S4115?7?5?$CF?42f?5?7?7?$AA@", double noundef %28)
  store float %.02.lcssa, ptr @temp, align 4
  call void @check(i32 noundef -1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s4116(ptr noalias noundef %0, i32 noundef %1, i32 noundef %2) #7 {
  %4 = call i32 @init(ptr noundef @"??_C@_05HDAILOGD@s4116?$AA@")
  %5 = call i32 @clock()
  br label %6

6:                                                ; preds = %3, %27
  %.015 = phi i32 [ 0, %3 ], [ %28, %27 ]
  br label %7

7:                                                ; preds = %6, %22
  %.04 = phi i32 [ 0, %6 ], [ %23, %22 ]
  %.13 = phi float [ 0.000000e+00, %6 ], [ %21, %22 ]
  %8 = add i32 %2, %.04
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %9
  %11 = load float, ptr %10, align 4
  %12 = sub i32 %1, 1
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %13
  %15 = sext i32 %.04 to i64
  %16 = getelementptr inbounds i32, ptr %0, i64 %15
  %17 = load i32, ptr %16, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [256 x float], ptr %14, i64 0, i64 %18
  %20 = load float, ptr %19, align 4
  %21 = call float @llvm.fmuladd.f32(float %11, float %20, float %.13)
  br label %22

22:                                               ; preds = %7
  %23 = add i32 %.04, 1
  %24 = icmp slt i32 %23, 255
  br i1 %24, label %7, label %25, !llvm.loop !349

25:                                               ; preds = %22
  %.1.lcssa = phi float [ %21, %22 ]
  %26 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %27

27:                                               ; preds = %25
  %28 = add i32 %.015, 1
  %29 = icmp slt i32 %28, 25600
  br i1 %29, label %6, label %30, !llvm.loop !350

30:                                               ; preds = %27
  %.02.lcssa = phi float [ %.1.lcssa, %27 ]
  %31 = call i32 @clock()
  %32 = sub i32 %31, %5
  %33 = sitofp i32 %32 to double
  %34 = fdiv double %33, 1.000000e+06
  %35 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@OBBPPKEL@S4116?7?5?$CF?42f?5?7?7?$AA@", double noundef %34)
  store float %.02.lcssa, ptr @temp, align 4
  call void @check(i32 noundef -1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s4117() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05GKBDIPCC@s4117?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %23
  %.013 = phi i32 [ 0, %0 ], [ %24, %23 ]
  br label %4

4:                                                ; preds = %3, %18
  %.02 = phi i32 [ 0, %3 ], [ %19, %18 ]
  %5 = sext i32 %.02 to i64
  %6 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %5
  %7 = load float, ptr %6, align 4
  %8 = sdiv i32 %.02, 2
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %9
  %11 = load float, ptr %10, align 4
  %12 = sext i32 %.02 to i64
  %13 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %12
  %14 = load float, ptr %13, align 4
  %15 = call float @llvm.fmuladd.f32(float %11, float %14, float %7)
  %16 = sext i32 %.02 to i64
  %17 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %16
  store float %15, ptr %17, align 4
  br label %18

18:                                               ; preds = %4
  %19 = add i32 %.02, 1
  %20 = icmp slt i32 %19, 32000
  br i1 %20, label %4, label %21, !llvm.loop !351

21:                                               ; preds = %18
  %22 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %23

23:                                               ; preds = %21
  %24 = add i32 %.013, 1
  %25 = icmp slt i32 %24, 256
  br i1 %25, label %3, label %26, !llvm.loop !352

26:                                               ; preds = %23
  %27 = call i32 @clock()
  %28 = sub i32 %27, %2
  %29 = sitofp i32 %28 to double
  %30 = fdiv double %29, 1.000000e+06
  %31 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@CAJBCFIL@S4117?7?5?$CF?42f?5?7?7?$AA@", double noundef %30)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s4121() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05DOAPJGPN@s4121?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %21
  %.013 = phi i32 [ 0, %0 ], [ %22, %21 ]
  br label %4

4:                                                ; preds = %3, %16
  %.02 = phi i32 [ 0, %3 ], [ %17, %16 ]
  %5 = sext i32 %.02 to i64
  %6 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %5
  %7 = load float, ptr %6, align 4
  %8 = sext i32 %.02 to i64
  %9 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %8
  %10 = load float, ptr %9, align 4
  %11 = call float @f(float noundef %10, float noundef %7)
  %12 = sext i32 %.02 to i64
  %13 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %12
  %14 = load float, ptr %13, align 4
  %15 = fadd float %14, %11
  store float %15, ptr %13, align 4
  br label %16

16:                                               ; preds = %4
  %17 = add i32 %.02, 1
  %18 = icmp slt i32 %17, 32000
  br i1 %18, label %4, label %19, !llvm.loop !353

19:                                               ; preds = %16
  %20 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %21

21:                                               ; preds = %19
  %22 = add i32 %.013, 1
  %23 = icmp slt i32 %22, 256
  br i1 %23, label %3, label %24, !llvm.loop !354

24:                                               ; preds = %21
  %25 = call i32 @clock()
  %26 = sub i32 %25, %2
  %27 = sitofp i32 %26 to double
  %28 = fdiv double %27, 1.000000e+06
  %29 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@LPLKDNDI@S4121?7?5?$CF?42f?5?7?7?$AA@", double noundef %28)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local float @f(float noundef %0, float noundef %1) #7 comdat {
  %3 = fmul float %0, %1
  ret float %3
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @va() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_03IDIMFPN@va?7?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %15
  %.013 = phi i32 [ 0, %0 ], [ %16, %15 ]
  br label %4

4:                                                ; preds = %3, %10
  %.02 = phi i32 [ 0, %3 ], [ %11, %10 ]
  %5 = sext i32 %.02 to i64
  %6 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %5
  %7 = load float, ptr %6, align 4
  %8 = sext i32 %.02 to i64
  %9 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %8
  store float %7, ptr %9, align 4
  br label %10

10:                                               ; preds = %4
  %11 = add i32 %.02, 1
  %12 = icmp slt i32 %11, 32000
  br i1 %12, label %4, label %13, !llvm.loop !355

13:                                               ; preds = %10
  %14 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %15

15:                                               ; preds = %13
  %16 = add i32 %.013, 1
  %17 = icmp slt i32 %16, 2560
  br i1 %17, label %3, label %18, !llvm.loop !356

18:                                               ; preds = %15
  %19 = call i32 @clock()
  %20 = sub i32 %19, %2
  %21 = sitofp i32 %20 to double
  %22 = fdiv double %21, 1.000000e+06
  %23 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0M@KPBGNIFF@va?7?5?$CF?42f?5?7?7?$AA@", double noundef %22)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @vag(ptr noalias noundef %0) #7 {
  %2 = call i32 @init(ptr noundef @"??_C@_05DMCMEDIF@vag?5?5?$AA@")
  %3 = call i32 @clock()
  br label %4

4:                                                ; preds = %1, %19
  %.013 = phi i32 [ 0, %1 ], [ %20, %19 ]
  br label %5

5:                                                ; preds = %4, %14
  %.02 = phi i32 [ 0, %4 ], [ %15, %14 ]
  %6 = sext i32 %.02 to i64
  %7 = getelementptr inbounds i32, ptr %0, i64 %6
  %8 = load i32, ptr %7, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %9
  %11 = load float, ptr %10, align 4
  %12 = sext i32 %.02 to i64
  %13 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %12
  store float %11, ptr %13, align 4
  br label %14

14:                                               ; preds = %5
  %15 = add i32 %.02, 1
  %16 = icmp slt i32 %15, 32000
  br i1 %16, label %5, label %17, !llvm.loop !357

17:                                               ; preds = %14
  %18 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %19

19:                                               ; preds = %17
  %20 = add i32 %.013, 1
  %21 = icmp slt i32 %20, 512
  br i1 %21, label %4, label %22, !llvm.loop !358

22:                                               ; preds = %19
  %23 = call i32 @clock()
  %24 = sub i32 %23, %3
  %25 = sitofp i32 %24 to double
  %26 = fdiv double %25, 1.000000e+06
  %27 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0N@FBJDDFNB@vag?7?5?$CF?42f?5?7?7?$AA@", double noundef %26)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @vas(ptr noalias noundef %0) #7 {
  %2 = call i32 @init(ptr noundef @"??_C@_05ODFHIDEN@vas?5?5?$AA@")
  %3 = call i32 @clock()
  br label %4

4:                                                ; preds = %1, %19
  %.013 = phi i32 [ 0, %1 ], [ %20, %19 ]
  br label %5

5:                                                ; preds = %4, %14
  %.02 = phi i32 [ 0, %4 ], [ %15, %14 ]
  %6 = sext i32 %.02 to i64
  %7 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %6
  %8 = load float, ptr %7, align 4
  %9 = sext i32 %.02 to i64
  %10 = getelementptr inbounds i32, ptr %0, i64 %9
  %11 = load i32, ptr %10, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %12
  store float %8, ptr %13, align 4
  br label %14

14:                                               ; preds = %5
  %15 = add i32 %.02, 1
  %16 = icmp slt i32 %15, 32000
  br i1 %16, label %5, label %17, !llvm.loop !359

17:                                               ; preds = %14
  %18 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %19

19:                                               ; preds = %17
  %20 = add i32 %.013, 1
  %21 = icmp slt i32 %20, 512
  br i1 %21, label %4, label %22, !llvm.loop !360

22:                                               ; preds = %19
  %23 = call i32 @clock()
  %24 = sub i32 %23, %3
  %25 = sitofp i32 %24 to double
  %26 = fdiv double %25, 1.000000e+06
  %27 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0N@EPLMICJI@vas?7?5?$CF?42f?5?7?7?$AA@", double noundef %26)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @vif() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05LEOAGPCB@vif?5?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %21
  %.013 = phi i32 [ 0, %0 ], [ %22, %21 ]
  br label %4

4:                                                ; preds = %3, %16
  %.02 = phi i32 [ 0, %3 ], [ %17, %16 ]
  %5 = sext i32 %.02 to i64
  %6 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %5
  %7 = load float, ptr %6, align 4
  %8 = fcmp ogt float %7, 0.000000e+00
  br i1 %8, label %9, label %15

9:                                                ; preds = %4
  %10 = sext i32 %.02 to i64
  %11 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %10
  %12 = load float, ptr %11, align 4
  %13 = sext i32 %.02 to i64
  %14 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %13
  store float %12, ptr %14, align 4
  br label %15

15:                                               ; preds = %9, %4
  br label %16

16:                                               ; preds = %15
  %17 = add i32 %.02, 1
  %18 = icmp slt i32 %17, 32000
  br i1 %18, label %4, label %19, !llvm.loop !361

19:                                               ; preds = %16
  %20 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %21

21:                                               ; preds = %19
  %22 = add i32 %.013, 1
  %23 = icmp slt i32 %22, 256
  br i1 %23, label %3, label %24, !llvm.loop !362

24:                                               ; preds = %21
  %25 = call i32 @clock()
  %26 = sub i32 %25, %2
  %27 = sitofp i32 %26 to double
  %28 = fdiv double %27, 1.000000e+06
  %29 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0N@JGBBJMOP@vif?7?5?$CF?42f?5?7?7?$AA@", double noundef %28)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @vpv() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05IJAJMNEN@vpv?5?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %17
  %.013 = phi i32 [ 0, %0 ], [ %18, %17 ]
  br label %4

4:                                                ; preds = %3, %12
  %.02 = phi i32 [ 0, %3 ], [ %13, %12 ]
  %5 = sext i32 %.02 to i64
  %6 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %5
  %7 = load float, ptr %6, align 4
  %8 = sext i32 %.02 to i64
  %9 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %8
  %10 = load float, ptr %9, align 4
  %11 = fadd float %10, %7
  store float %11, ptr %9, align 4
  br label %12

12:                                               ; preds = %4
  %13 = add i32 %.02, 1
  %14 = icmp slt i32 %13, 32000
  br i1 %14, label %4, label %15, !llvm.loop !363

15:                                               ; preds = %12
  %16 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %17

17:                                               ; preds = %15
  %18 = add i32 %.013, 1
  %19 = icmp slt i32 %18, 2560
  br i1 %19, label %3, label %20, !llvm.loop !364

20:                                               ; preds = %17
  %21 = call i32 @clock()
  %22 = sub i32 %21, %2
  %23 = sitofp i32 %22 to double
  %24 = fdiv double %23, 1.000000e+06
  %25 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0N@KJFGIPEJ@vpv?7?5?$CF?42f?5?7?7?$AA@", double noundef %24)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @vtv() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05HMIJGLIN@vtv?5?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %17
  %.013 = phi i32 [ 0, %0 ], [ %18, %17 ]
  br label %4

4:                                                ; preds = %3, %12
  %.02 = phi i32 [ 0, %3 ], [ %13, %12 ]
  %5 = sext i32 %.02 to i64
  %6 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %5
  %7 = load float, ptr %6, align 4
  %8 = sext i32 %.02 to i64
  %9 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %8
  %10 = load float, ptr %9, align 4
  %11 = fmul float %10, %7
  store float %11, ptr %9, align 4
  br label %12

12:                                               ; preds = %4
  %13 = add i32 %.02, 1
  %14 = icmp slt i32 %13, 32000
  br i1 %14, label %4, label %15, !llvm.loop !365

15:                                               ; preds = %12
  %16 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %17

17:                                               ; preds = %15
  %18 = add i32 %.013, 1
  %19 = icmp slt i32 %18, 2560
  br i1 %19, label %3, label %20, !llvm.loop !366

20:                                               ; preds = %17
  %21 = call i32 @clock()
  %22 = sub i32 %21, %2
  %23 = sitofp i32 %22 to double
  %24 = fdiv double %23, 1.000000e+06
  %25 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0N@KKFALEDG@vtv?7?5?$CF?42f?5?7?7?$AA@", double noundef %24)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @vpvtv() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05OFNLBPD@vpvtv?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %20
  %.013 = phi i32 [ 0, %0 ], [ %21, %20 ]
  br label %4

4:                                                ; preds = %3, %15
  %.02 = phi i32 [ 0, %3 ], [ %16, %15 ]
  %5 = sext i32 %.02 to i64
  %6 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %5
  %7 = load float, ptr %6, align 4
  %8 = sext i32 %.02 to i64
  %9 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %8
  %10 = load float, ptr %9, align 4
  %11 = sext i32 %.02 to i64
  %12 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %11
  %13 = load float, ptr %12, align 4
  %14 = call float @llvm.fmuladd.f32(float %7, float %10, float %13)
  store float %14, ptr %12, align 4
  br label %15

15:                                               ; preds = %4
  %16 = add i32 %.02, 1
  %17 = icmp slt i32 %16, 32000
  br i1 %17, label %4, label %18, !llvm.loop !367

18:                                               ; preds = %15
  %19 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %20

20:                                               ; preds = %18
  %21 = add i32 %.013, 1
  %22 = icmp slt i32 %21, 1024
  br i1 %22, label %3, label %23, !llvm.loop !368

23:                                               ; preds = %20
  %24 = call i32 @clock()
  %25 = sub i32 %24, %2
  %26 = sitofp i32 %25 to double
  %27 = fdiv double %26, 1.000000e+06
  %28 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@LMDOEMEI@vpvtv?7?5?$CF?42f?5?7?7?$AA@", double noundef %27)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @vpvts(float noundef %0) #7 {
  %2 = call i32 @init(ptr noundef @"??_C@_05HDCKEFLG@vpvts?$AA@")
  %3 = call i32 @clock()
  br label %4

4:                                                ; preds = %1, %18
  %.013 = phi i32 [ 0, %1 ], [ %19, %18 ]
  br label %5

5:                                                ; preds = %4, %13
  %.02 = phi i32 [ 0, %4 ], [ %14, %13 ]
  %6 = sext i32 %.02 to i64
  %7 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %6
  %8 = load float, ptr %7, align 4
  %9 = sext i32 %.02 to i64
  %10 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %9
  %11 = load float, ptr %10, align 4
  %12 = call float @llvm.fmuladd.f32(float %8, float %0, float %11)
  store float %12, ptr %10, align 4
  br label %13

13:                                               ; preds = %5
  %14 = add i32 %.02, 1
  %15 = icmp slt i32 %14, 32000
  br i1 %15, label %5, label %16, !llvm.loop !369

16:                                               ; preds = %13
  %17 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %18

18:                                               ; preds = %16
  %19 = add i32 %.013, 1
  %20 = icmp slt i32 %19, 256
  br i1 %20, label %4, label %21, !llvm.loop !370

21:                                               ; preds = %18
  %22 = call i32 @clock()
  %23 = sub i32 %22, %3
  %24 = sitofp i32 %23 to double
  %25 = fdiv double %24, 1.000000e+06
  %26 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@MNGJOAAK@vpvts?7?5?$CF?42f?5?7?7?$AA@", double noundef %25)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @vpvpv() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05JFEBJCP@vpvpv?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %21
  %.013 = phi i32 [ 0, %0 ], [ %22, %21 ]
  br label %4

4:                                                ; preds = %3, %16
  %.02 = phi i32 [ 0, %3 ], [ %17, %16 ]
  %5 = sext i32 %.02 to i64
  %6 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %5
  %7 = load float, ptr %6, align 4
  %8 = sext i32 %.02 to i64
  %9 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %8
  %10 = load float, ptr %9, align 4
  %11 = fadd float %7, %10
  %12 = sext i32 %.02 to i64
  %13 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %12
  %14 = load float, ptr %13, align 4
  %15 = fadd float %14, %11
  store float %15, ptr %13, align 4
  br label %16

16:                                               ; preds = %4
  %17 = add i32 %.02, 1
  %18 = icmp slt i32 %17, 32000
  br i1 %18, label %4, label %19, !llvm.loop !371

19:                                               ; preds = %16
  %20 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %21

21:                                               ; preds = %19
  %22 = add i32 %.013, 1
  %23 = icmp slt i32 %22, 1024
  br i1 %23, label %3, label %24, !llvm.loop !372

24:                                               ; preds = %21
  %25 = call i32 @clock()
  %26 = sub i32 %25, %2
  %27 = sitofp i32 %26 to double
  %28 = fdiv double %27, 1.000000e+06
  %29 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@LPDIHHDH@vpvpv?7?5?$CF?42f?5?7?7?$AA@", double noundef %28)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @vtvtv() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05PLNNBHDD@vtvtv?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %23
  %.013 = phi i32 [ 0, %0 ], [ %24, %23 ]
  br label %4

4:                                                ; preds = %3, %18
  %.02 = phi i32 [ 0, %3 ], [ %19, %18 ]
  %5 = sext i32 %.02 to i64
  %6 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %5
  %7 = load float, ptr %6, align 4
  %8 = sext i32 %.02 to i64
  %9 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %8
  %10 = load float, ptr %9, align 4
  %11 = fmul float %7, %10
  %12 = sext i32 %.02 to i64
  %13 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %12
  %14 = load float, ptr %13, align 4
  %15 = fmul float %11, %14
  %16 = sext i32 %.02 to i64
  %17 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %16
  store float %15, ptr %17, align 4
  br label %18

18:                                               ; preds = %4
  %19 = add i32 %.02, 1
  %20 = icmp slt i32 %19, 32000
  br i1 %20, label %4, label %21, !llvm.loop !373

21:                                               ; preds = %18
  %22 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %23

23:                                               ; preds = %21
  %24 = add i32 %.013, 1
  %25 = icmp slt i32 %24, 1024
  br i1 %25, label %3, label %26, !llvm.loop !374

26:                                               ; preds = %23
  %27 = call i32 @clock()
  %28 = sub i32 %27, %2
  %29 = sitofp i32 %28 to double
  %30 = fdiv double %29, 1.000000e+06
  %31 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@KFJCMDFD@vtvtv?7?5?$CF?42f?5?7?7?$AA@", double noundef %30)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @vsumr() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05CMNDDJDG@vsumr?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %14
  %.015 = phi i32 [ 0, %0 ], [ %15, %14 ]
  br label %4

4:                                                ; preds = %3, %9
  %.04 = phi i32 [ 0, %3 ], [ %10, %9 ]
  %.023 = phi float [ 0.000000e+00, %3 ], [ %8, %9 ]
  %5 = sext i32 %.04 to i64
  %6 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %5
  %7 = load float, ptr %6, align 4
  %8 = fadd float %.023, %7
  br label %9

9:                                                ; preds = %4
  %10 = add i32 %.04, 1
  %11 = icmp slt i32 %10, 32000
  br i1 %11, label %4, label %12, !llvm.loop !375

12:                                               ; preds = %9
  %.02.lcssa = phi float [ %8, %9 ]
  %13 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef %.02.lcssa)
  br label %14

14:                                               ; preds = %12
  %15 = add i32 %.015, 1
  %16 = icmp slt i32 %15, 2560
  br i1 %16, label %3, label %17, !llvm.loop !376

17:                                               ; preds = %14
  %18 = call i32 @clock()
  %19 = sub i32 %18, %2
  %20 = sitofp i32 %19 to double
  %21 = fdiv double %20, 1.000000e+06
  %22 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@FMPNKBLC@vsumr?7?5?$CF?42f?5?7?7?$AA@", double noundef %21)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @vdotr() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05NCEAFNKA@vdotr?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %17
  %.015 = phi i32 [ 0, %0 ], [ %18, %17 ]
  br label %4

4:                                                ; preds = %3, %12
  %.04 = phi i32 [ 0, %3 ], [ %13, %12 ]
  %.13 = phi float [ 0.000000e+00, %3 ], [ %11, %12 ]
  %5 = sext i32 %.04 to i64
  %6 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %5
  %7 = load float, ptr %6, align 4
  %8 = sext i32 %.04 to i64
  %9 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %8
  %10 = load float, ptr %9, align 4
  %11 = call float @llvm.fmuladd.f32(float %7, float %10, float %.13)
  br label %12

12:                                               ; preds = %4
  %13 = add i32 %.04, 1
  %14 = icmp slt i32 %13, 32000
  br i1 %14, label %4, label %15, !llvm.loop !377

15:                                               ; preds = %12
  %.1.lcssa = phi float [ %11, %12 ]
  %16 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef %.1.lcssa)
  br label %17

17:                                               ; preds = %15
  %18 = add i32 %.015, 1
  %19 = icmp slt i32 %18, 2560
  br i1 %19, label %3, label %20, !llvm.loop !378

20:                                               ; preds = %17
  %.02.lcssa = phi float [ %.1.lcssa, %17 ]
  %21 = call i32 @clock()
  %22 = sub i32 %21, %2
  %23 = sitofp i32 %22 to double
  %24 = fdiv double %23, 1.000000e+06
  %25 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@EAGLCAIP@vdotr?7?5?$CF?42f?5?7?7?$AA@", double noundef %24)
  store float %.02.lcssa, ptr @temp, align 4
  call void @check(i32 noundef -1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @vbor() #7 {
  %1 = call i32 @init(ptr noundef @"??_C@_05NBAAOLGE@vbor?5?$AA@")
  %2 = call i32 @clock()
  br label %3

3:                                                ; preds = %0, %73
  %.024 = phi i32 [ 0, %0 ], [ %74, %73 ]
  br label %4

4:                                                ; preds = %3, %68
  %.013 = phi i32 [ 0, %3 ], [ %69, %68 ]
  %5 = sext i32 %.013 to i64
  %6 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %5
  %7 = load float, ptr %6, align 4
  %8 = sext i32 %.013 to i64
  %9 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %8
  %10 = load float, ptr %9, align 4
  %11 = sext i32 %.013 to i64
  %12 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %11
  %13 = load float, ptr %12, align 4
  %14 = sext i32 %.013 to i64
  %15 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %14
  %16 = load float, ptr %15, align 4
  %17 = sext i32 %.013 to i64
  %18 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %17
  %19 = load float, ptr %18, align 4
  %20 = sext i32 %.013 to i64
  %21 = getelementptr inbounds [256 x float], ptr @aa, i64 0, i64 %20
  %22 = load float, ptr %21, align 4
  %23 = fmul float %7, %10
  %24 = fmul float %7, %10
  %25 = fmul float %24, %16
  %26 = call float @llvm.fmuladd.f32(float %23, float %13, float %25)
  %27 = fmul float %7, %10
  %28 = call float @llvm.fmuladd.f32(float %27, float %19, float %26)
  %29 = fmul float %7, %10
  %30 = call float @llvm.fmuladd.f32(float %29, float %22, float %28)
  %31 = fmul float %7, %13
  %32 = call float @llvm.fmuladd.f32(float %31, float %16, float %30)
  %33 = fmul float %7, %13
  %34 = call float @llvm.fmuladd.f32(float %33, float %19, float %32)
  %35 = fmul float %7, %13
  %36 = call float @llvm.fmuladd.f32(float %35, float %22, float %34)
  %37 = fmul float %7, %16
  %38 = call float @llvm.fmuladd.f32(float %37, float %19, float %36)
  %39 = fmul float %7, %16
  %40 = call float @llvm.fmuladd.f32(float %39, float %22, float %38)
  %41 = fmul float %7, %19
  %42 = call float @llvm.fmuladd.f32(float %41, float %22, float %40)
  %43 = fmul float %10, %13
  %44 = fmul float %10, %13
  %45 = fmul float %44, %19
  %46 = call float @llvm.fmuladd.f32(float %43, float %16, float %45)
  %47 = fmul float %10, %13
  %48 = call float @llvm.fmuladd.f32(float %47, float %22, float %46)
  %49 = fmul float %10, %16
  %50 = call float @llvm.fmuladd.f32(float %49, float %19, float %48)
  %51 = fmul float %10, %16
  %52 = call float @llvm.fmuladd.f32(float %51, float %22, float %50)
  %53 = fmul float %10, %19
  %54 = call float @llvm.fmuladd.f32(float %53, float %22, float %52)
  %55 = fmul float %13, %16
  %56 = fmul float %13, %16
  %57 = fmul float %56, %22
  %58 = call float @llvm.fmuladd.f32(float %55, float %19, float %57)
  %59 = fmul float %13, %19
  %60 = call float @llvm.fmuladd.f32(float %59, float %22, float %58)
  %61 = fmul float %16, %19
  %62 = fmul float %61, %22
  %63 = fmul float %42, %54
  %64 = fmul float %63, %60
  %65 = fmul float %64, %62
  %66 = sext i32 %.013 to i64
  %67 = getelementptr inbounds [32000 x float], ptr @x, i64 0, i64 %66
  store float %65, ptr %67, align 4
  br label %68

68:                                               ; preds = %4
  %69 = add i32 %.013, 1
  %70 = icmp slt i32 %69, 256
  br i1 %70, label %4, label %71, !llvm.loop !379

71:                                               ; preds = %68
  %72 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %73

73:                                               ; preds = %71
  %74 = add i32 %.024, 1
  %75 = icmp slt i32 %74, 2560
  br i1 %75, label %3, label %76, !llvm.loop !380

76:                                               ; preds = %73
  %77 = call i32 @clock()
  %78 = sub i32 %77, %2
  %79 = sitofp i32 %78 to double
  %80 = fdiv double %79, 1.000000e+06
  %81 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@NPNPIFLM@vbor?7?5?$CF?42f?5?7?7?$AA@", double noundef %80)
  store float 0.000000e+00, ptr @temp, align 4
  br label %82

82:                                               ; preds = %76, %88
  %.05 = phi i32 [ 0, %76 ], [ %89, %88 ]
  %83 = sext i32 %.05 to i64
  %84 = getelementptr inbounds [32000 x float], ptr @x, i64 0, i64 %83
  %85 = load float, ptr %84, align 4
  %86 = load float, ptr @temp, align 4
  %87 = fadd float %86, %85
  store float %87, ptr @temp, align 4
  br label %88

88:                                               ; preds = %82
  %89 = add i32 %.05, 1
  %90 = icmp slt i32 %89, 32000
  br i1 %90, label %82, label %91, !llvm.loop !381

91:                                               ; preds = %88
  call void @check(i32 noundef -1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @set(ptr noundef %0, ptr noundef %1, ptr noundef %2) #7 {
  %4 = call ptr @tsvc_memalign(i64 noundef 16, i64 noundef 128000)
  store ptr %4, ptr @xx, align 8
  %5 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_01EEMJAFIK@?6?$AA@")
  br label %6

6:                                                ; preds = %3, %25
  %.012 = phi i32 [ 0, %3 ], [ %26, %25 ]
  %7 = add i32 %.012, 4
  %8 = sext i32 %.012 to i64
  %9 = getelementptr inbounds i32, ptr %0, i64 %8
  store i32 %7, ptr %9, align 4
  %10 = add i32 %.012, 2
  %11 = add i32 %.012, 1
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, ptr %0, i64 %12
  store i32 %10, ptr %13, align 4
  %14 = add i32 %.012, 2
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, ptr %0, i64 %15
  store i32 %.012, ptr %16, align 4
  %17 = add i32 %.012, 3
  %18 = add i32 %.012, 3
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, ptr %0, i64 %19
  store i32 %17, ptr %20, align 4
  %21 = add i32 %.012, 1
  %22 = add i32 %.012, 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, ptr %0, i64 %23
  store i32 %21, ptr %24, align 4
  br label %25

25:                                               ; preds = %6
  %26 = add i32 %.012, 5
  %27 = icmp slt i32 %26, 32000
  br i1 %27, label %6, label %28, !llvm.loop !382

28:                                               ; preds = %25
  %29 = call i32 @set1d(ptr noundef @a, float noundef 1.000000e+00, i32 noundef 1)
  %30 = call i32 @set1d(ptr noundef @b, float noundef 1.000000e+00, i32 noundef 1)
  %31 = call i32 @set1d(ptr noundef @c, float noundef 1.000000e+00, i32 noundef 1)
  %32 = call i32 @set1d(ptr noundef @d, float noundef 1.000000e+00, i32 noundef 1)
  %33 = call i32 @set1d(ptr noundef @e, float noundef 1.000000e+00, i32 noundef 1)
  %34 = call i32 @set2d(ptr noundef @aa, float noundef 0.000000e+00, i32 noundef -1)
  %35 = call i32 @set2d(ptr noundef @bb, float noundef 0.000000e+00, i32 noundef -1)
  %36 = call i32 @set2d(ptr noundef @cc, float noundef 0.000000e+00, i32 noundef -1)
  br label %37

37:                                               ; preds = %28, %43
  %.03 = phi i32 [ 0, %28 ], [ %44, %43 ]
  %38 = add i32 %.03, 1
  %39 = srem i32 %38, 4
  %40 = add i32 %39, 1
  %41 = sext i32 %.03 to i64
  %42 = getelementptr inbounds [32000 x i32], ptr @indx, i64 0, i64 %41
  store i32 %40, ptr %42, align 4
  br label %43

43:                                               ; preds = %37
  %44 = add i32 %.03, 1
  %45 = icmp slt i32 %44, 32000
  br i1 %45, label %37, label %46, !llvm.loop !383

46:                                               ; preds = %43
  store float 1.000000e+00, ptr %1, align 4
  store float 2.000000e+00, ptr %2, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal ptr @tsvc_memalign(i64 noundef %0, i64 noundef %1) #7 {
  %3 = call noalias ptr @_aligned_malloc(i64 noundef %1, i64 noundef %0)
  ret ptr %3
}

declare dso_local noalias ptr @_aligned_malloc(i64 noundef, i64 noundef) #9

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @tsvc_original_main() #7 {
  %1 = alloca float, align 4
  %2 = alloca float, align 4
  %3 = call ptr @tsvc_memalign(i64 noundef 16, i64 noundef 128000)
  call void @set(ptr noundef %3, ptr noundef %1, ptr noundef %2)
  %4 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0BO@IODOONNG@Loop?5?7?5Time?$CISec?$CJ?5?7?5Checksum?5?6?$AA@")
  %5 = call i32 @s000()
  %6 = call i32 @s111()
  %7 = call i32 @s1111()
  %8 = call i32 @s112()
  %9 = call i32 @s1112()
  %10 = call i32 @s113()
  %11 = call i32 @s1113()
  %12 = call i32 @s114()
  %13 = call i32 @s115()
  %14 = call i32 @s1115()
  %15 = call i32 @s116()
  %16 = call i32 @s118()
  %17 = call i32 @s119()
  %18 = call i32 @s1119()
  %19 = call i32 @s121()
  %20 = call i32 @s122(i32 noundef 1, i32 noundef 1)
  %21 = call i32 @s123()
  %22 = call i32 @s124()
  %23 = call i32 @s125()
  %24 = call i32 @s126()
  %25 = call i32 @s127()
  %26 = call i32 @s128()
  %27 = call i32 @s131()
  %28 = call i32 @s132()
  %29 = call i32 @s141()
  %30 = call i32 @s151()
  %31 = call i32 @s152()
  %32 = call i32 @s161()
  %33 = call i32 @s1161()
  %34 = call i32 @s162(i32 noundef 1)
  %35 = call i32 @s171(i32 noundef 1)
  %36 = call i32 @s172(i32 noundef 1, i32 noundef 1)
  %37 = call i32 @s173()
  %38 = call i32 @s174(i32 noundef 16000)
  %39 = call i32 @s175(i32 noundef 1)
  %40 = call i32 @s176()
  %41 = call i32 @s211()
  %42 = call i32 @s212()
  %43 = call i32 @s1213()
  %44 = call i32 @s221()
  %45 = call i32 @s1221()
  %46 = call i32 @s222()
  %47 = call i32 @s231()
  %48 = call i32 @s232()
  %49 = call i32 @s1232()
  %50 = call i32 @s233()
  %51 = call i32 @s2233()
  %52 = call i32 @s235()
  %53 = call i32 @s241()
  %54 = load float, ptr %2, align 4
  %55 = load float, ptr %1, align 4
  %56 = call i32 @s242(float noundef %55, float noundef %54)
  %57 = call i32 @s243()
  %58 = call i32 @s244()
  %59 = call i32 @s1244()
  %60 = call i32 @s2244()
  %61 = call i32 @s251()
  %62 = call i32 @s1251()
  %63 = call i32 @s2251()
  %64 = call i32 @s3251()
  %65 = call i32 @s252()
  %66 = call i32 @s253()
  %67 = call i32 @s254()
  %68 = call i32 @s255()
  %69 = call i32 @s256()
  %70 = call i32 @s257()
  %71 = call i32 @s258()
  %72 = call i32 @s261()
  %73 = call i32 @s271()
  %74 = load float, ptr %1, align 4
  %75 = call i32 @s272(float noundef %74)
  %76 = call i32 @s273()
  %77 = call i32 @s274()
  %78 = call i32 @s275()
  %79 = call i32 @s2275()
  %80 = call i32 @s276()
  %81 = call i32 @s277()
  %82 = call i32 @s278()
  %83 = call i32 @s279()
  %84 = call i32 @s1279()
  %85 = load float, ptr %1, align 4
  %86 = call i32 @s2710(float noundef %85)
  %87 = call i32 @s2711()
  %88 = call i32 @s2712()
  %89 = call i32 @s281()
  %90 = call i32 @s1281()
  %91 = call i32 @s291()
  %92 = call i32 @s292()
  %93 = call i32 @s293()
  %94 = call i32 @s2101()
  %95 = call i32 @s2102()
  %96 = call i32 @s2111()
  %97 = call i32 @s311()
  %98 = call i32 @s31111()
  %99 = call i32 @s312()
  %100 = call i32 @s313()
  %101 = call i32 @s314()
  %102 = call i32 @s315()
  %103 = call i32 @s316()
  %104 = call i32 @s317()
  %105 = call i32 @s318(i32 noundef 1)
  %106 = call i32 @s319()
  %107 = call i32 @s3110()
  %108 = call i32 @s13110()
  %109 = call i32 @s3111()
  %110 = call i32 @s3112()
  %111 = call i32 @s3113()
  %112 = call i32 @s321()
  %113 = call i32 @s322()
  %114 = call i32 @s323()
  %115 = call i32 @s331()
  %116 = load float, ptr %1, align 4
  %117 = call i32 @s332(float noundef %116)
  %118 = call i32 @s341()
  %119 = call i32 @s342()
  %120 = call i32 @s343()
  %121 = call i32 @s351()
  %122 = call i32 @s1351()
  %123 = call i32 @s352()
  %124 = call i32 @s353(ptr noundef %3)
  %125 = call i32 @s421()
  %126 = call i32 @s1421()
  %127 = call i32 @s422()
  %128 = call i32 @s423()
  %129 = call i32 @s424()
  %130 = call i32 @s431()
  %131 = call i32 @s441()
  %132 = call i32 @s442()
  %133 = call i32 @s443()
  %134 = call i32 @s451()
  %135 = call i32 @s452()
  %136 = call i32 @s453()
  %137 = call i32 @s471()
  %138 = call i32 @s481()
  %139 = call i32 @s482()
  %140 = call i32 @s491(ptr noundef %3)
  %141 = load float, ptr %1, align 4
  %142 = call i32 @s4112(ptr noundef %3, float noundef %141)
  %143 = call i32 @s4113(ptr noundef %3)
  %144 = call i32 @s4114(ptr noundef %3, i32 noundef 1)
  %145 = call i32 @s4115(ptr noundef %3)
  %146 = call i32 @s4116(ptr noundef %3, i32 noundef 128, i32 noundef 1)
  %147 = call i32 @s4117()
  %148 = call i32 @s4121()
  %149 = call i32 @va()
  %150 = call i32 @vag(ptr noundef %3)
  %151 = call i32 @vas(ptr noundef %3)
  %152 = call i32 @vif()
  %153 = call i32 @vpv()
  %154 = call i32 @vtv()
  %155 = call i32 @vpvtv()
  %156 = load float, ptr %1, align 4
  %157 = call i32 @vpvts(float noundef %156)
  %158 = call i32 @vpvpv()
  %159 = call i32 @vtvtv()
  %160 = call i32 @vsumr()
  %161 = call i32 @vdotr()
  %162 = call i32 @vbor()
  ret i32 0
}

attributes #0 = { mustprogress noinline norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="alderlake" "target-features"="+adx,+aes,+avx,+avx2,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+pconfig,+pku,+popcnt,+prfchw,+ptwrite,+rdpid,+rdrnd,+rdseed,+sahf,+serialize,+sgx,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+waitpkg,+widekl,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="alderlake" "target-features"="+adx,+aes,+avx,+avx2,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+pconfig,+pku,+popcnt,+prfchw,+ptwrite,+rdpid,+rdrnd,+rdseed,+sahf,+serialize,+sgx,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+waitpkg,+widekl,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #2 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="alderlake" "target-features"="+adx,+aes,+avx,+avx2,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+pconfig,+pku,+popcnt,+prfchw,+ptwrite,+rdpid,+rdrnd,+rdseed,+sahf,+serialize,+sgx,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+waitpkg,+widekl,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="alderlake" "target-features"="+adx,+aes,+avx,+avx2,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+pconfig,+pku,+popcnt,+prfchw,+ptwrite,+rdpid,+rdrnd,+rdseed,+sahf,+serialize,+sgx,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+waitpkg,+widekl,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="alderlake" "target-features"="+adx,+aes,+avx,+avx2,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+pconfig,+pku,+popcnt,+prfchw,+ptwrite,+rdpid,+rdrnd,+rdseed,+sahf,+serialize,+sgx,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+waitpkg,+widekl,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { nocallback nofree nosync nounwind willreturn }
attributes #7 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind }
attributes #14 = { noreturn }

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
!25 = distinct !{!25, !22}
!26 = distinct !{!26, !22}
!27 = distinct !{!27, !22}
!28 = distinct !{!28, !22}
!29 = distinct !{!29, !22}
!30 = distinct !{!30, !22}
!31 = distinct !{!31, !22}
!32 = distinct !{!32, !22}
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
!43 = distinct !{!43, !22}
!44 = distinct !{!44, !22}
!45 = distinct !{!45, !22}
!46 = distinct !{!46, !22}
!47 = distinct !{!47, !22}
!48 = distinct !{!48, !22}
!49 = distinct !{!49, !22}
!50 = distinct !{!50, !22}
!51 = distinct !{!51, !22}
!52 = distinct !{!52, !22}
!53 = distinct !{!53, !22}
!54 = distinct !{!54, !22}
!55 = distinct !{!55, !22}
!56 = distinct !{!56, !22}
!57 = distinct !{!57, !22}
!58 = distinct !{!58, !22}
!59 = distinct !{!59, !22}
!60 = distinct !{!60, !22}
!61 = distinct !{!61, !22}
!62 = distinct !{!62, !22}
!63 = distinct !{!63, !22}
!64 = distinct !{!64, !22}
!65 = distinct !{!65, !22}
!66 = distinct !{!66, !22}
!67 = distinct !{!67, !22}
!68 = distinct !{!68, !22}
!69 = distinct !{!69, !22}
!70 = distinct !{!70, !22}
!71 = distinct !{!71, !22}
!72 = distinct !{!72, !22}
!73 = distinct !{!73, !22}
!74 = distinct !{!74, !22}
!75 = distinct !{!75, !22}
!76 = distinct !{!76, !22}
!77 = distinct !{!77, !22}
!78 = distinct !{!78, !22}
!79 = distinct !{!79, !22}
!80 = distinct !{!80, !22}
!81 = distinct !{!81, !22}
!82 = distinct !{!82, !22}
!83 = distinct !{!83, !22}
!84 = distinct !{!84, !22}
!85 = distinct !{!85, !22}
!86 = distinct !{!86, !22}
!87 = distinct !{!87, !22}
!88 = distinct !{!88, !22}
!89 = distinct !{!89, !22}
!90 = distinct !{!90, !22}
!91 = distinct !{!91, !22}
!92 = distinct !{!92, !22}
!93 = distinct !{!93, !22}
!94 = distinct !{!94, !22}
!95 = distinct !{!95, !22}
!96 = distinct !{!96, !22}
!97 = distinct !{!97, !22}
!98 = distinct !{!98, !22}
!99 = distinct !{!99, !22}
!100 = distinct !{!100, !22}
!101 = distinct !{!101, !22}
!102 = distinct !{!102, !22}
!103 = distinct !{!103, !22}
!104 = distinct !{!104, !22}
!105 = distinct !{!105, !22}
!106 = distinct !{!106, !22}
!107 = distinct !{!107, !22}
!108 = distinct !{!108, !22}
!109 = distinct !{!109, !22}
!110 = distinct !{!110, !22}
!111 = distinct !{!111, !22}
!112 = distinct !{!112, !22}
!113 = distinct !{!113, !22}
!114 = distinct !{!114, !22}
!115 = distinct !{!115, !22}
!116 = distinct !{!116, !22}
!117 = distinct !{!117, !22}
!118 = distinct !{!118, !22}
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
!137 = distinct !{!137, !22}
!138 = distinct !{!138, !22}
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
!157 = distinct !{!157, !22}
!158 = distinct !{!158, !22}
!159 = distinct !{!159, !22}
!160 = distinct !{!160, !22}
!161 = distinct !{!161, !22}
!162 = distinct !{!162, !22}
!163 = distinct !{!163, !22}
!164 = distinct !{!164, !22}
!165 = distinct !{!165, !22}
!166 = distinct !{!166, !22}
!167 = distinct !{!167, !22}
!168 = distinct !{!168, !22}
!169 = distinct !{!169, !22}
!170 = distinct !{!170, !22}
!171 = distinct !{!171, !22}
!172 = distinct !{!172, !22}
!173 = distinct !{!173, !22}
!174 = distinct !{!174, !22}
!175 = distinct !{!175, !22}
!176 = distinct !{!176, !22}
!177 = distinct !{!177, !22}
!178 = distinct !{!178, !22}
!179 = distinct !{!179, !22}
!180 = distinct !{!180, !22}
!181 = distinct !{!181, !22}
!182 = distinct !{!182, !22}
!183 = distinct !{!183, !22}
!184 = distinct !{!184, !22}
!185 = distinct !{!185, !22}
!186 = distinct !{!186, !22}
!187 = distinct !{!187, !22}
!188 = distinct !{!188, !22}
!189 = distinct !{!189, !22}
!190 = distinct !{!190, !22}
!191 = distinct !{!191, !22}
!192 = distinct !{!192, !22}
!193 = distinct !{!193, !22}
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
!209 = distinct !{!209, !22}
!210 = distinct !{!210, !22}
!211 = distinct !{!211, !22}
!212 = distinct !{!212, !22}
!213 = distinct !{!213, !22}
!214 = distinct !{!214, !22}
!215 = distinct !{!215, !22}
!216 = distinct !{!216, !22}
!217 = distinct !{!217, !22}
!218 = distinct !{!218, !22}
!219 = distinct !{!219, !22}
!220 = distinct !{!220, !22}
!221 = distinct !{!221, !22}
!222 = distinct !{!222, !22}
!223 = distinct !{!223, !22}
!224 = distinct !{!224, !22}
!225 = distinct !{!225, !22}
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
!243 = distinct !{!243, !22}
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
!270 = distinct !{!270, !22}
!271 = distinct !{!271, !22}
!272 = distinct !{!272, !22}
!273 = distinct !{!273, !22}
!274 = distinct !{!274, !22}
!275 = distinct !{!275, !22}
!276 = distinct !{!276, !22}
!277 = distinct !{!277, !22}
!278 = distinct !{!278, !22}
!279 = distinct !{!279, !22}
!280 = distinct !{!280, !22}
!281 = distinct !{!281, !22}
!282 = distinct !{!282, !22}
!283 = distinct !{!283, !22}
!284 = distinct !{!284, !22}
!285 = distinct !{!285, !22}
!286 = distinct !{!286, !22}
!287 = distinct !{!287, !22}
!288 = distinct !{!288, !22}
!289 = distinct !{!289, !22}
!290 = distinct !{!290, !22}
!291 = distinct !{!291, !22}
!292 = distinct !{!292, !22}
!293 = distinct !{!293, !22}
!294 = distinct !{!294, !22}
!295 = distinct !{!295, !22}
!296 = distinct !{!296, !22}
!297 = distinct !{!297, !22}
!298 = distinct !{!298, !22}
!299 = distinct !{!299, !22}
!300 = distinct !{!300, !22}
!301 = distinct !{!301, !22}
!302 = distinct !{!302, !22}
!303 = distinct !{!303, !22}
!304 = distinct !{!304, !22}
!305 = distinct !{!305, !22}
!306 = distinct !{!306, !22}
!307 = distinct !{!307, !22}
!308 = distinct !{!308, !22}
!309 = distinct !{!309, !22}
!310 = distinct !{!310, !22}
!311 = distinct !{!311, !22}
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
!333 = distinct !{!333, !22}
!334 = distinct !{!334, !22}
!335 = distinct !{!335, !22}
!336 = distinct !{!336, !22}
!337 = distinct !{!337, !22}
!338 = distinct !{!338, !22}
!339 = distinct !{!339, !22}
!340 = distinct !{!340, !22}
!341 = distinct !{!341, !22}
!342 = distinct !{!342, !22}
!343 = distinct !{!343, !22}
!344 = distinct !{!344, !22}
!345 = distinct !{!345, !22}
!346 = distinct !{!346, !22}
!347 = distinct !{!347, !22}
!348 = distinct !{!348, !22}
!349 = distinct !{!349, !22}
!350 = distinct !{!350, !22}
!351 = distinct !{!351, !22}
!352 = distinct !{!352, !22}
!353 = distinct !{!353, !22}
!354 = distinct !{!354, !22}
!355 = distinct !{!355, !22}
!356 = distinct !{!356, !22}
!357 = distinct !{!357, !22}
!358 = distinct !{!358, !22}
!359 = distinct !{!359, !22}
!360 = distinct !{!360, !22}
!361 = distinct !{!361, !22}
!362 = distinct !{!362, !22}
!363 = distinct !{!363, !22}
!364 = distinct !{!364, !22}
!365 = distinct !{!365, !22}
!366 = distinct !{!366, !22}
!367 = distinct !{!367, !22}
!368 = distinct !{!368, !22}
!369 = distinct !{!369, !22}
!370 = distinct !{!370, !22}
!371 = distinct !{!371, !22}
!372 = distinct !{!372, !22}
!373 = distinct !{!373, !22}
!374 = distinct !{!374, !22}
!375 = distinct !{!375, !22}
!376 = distinct !{!376, !22}
!377 = distinct !{!377, !22}
!378 = distinct !{!378, !22}
!379 = distinct !{!379, !22}
!380 = distinct !{!380, !22}
!381 = distinct !{!381, !22}
!382 = distinct !{!382, !22}
!383 = distinct !{!383, !22}
