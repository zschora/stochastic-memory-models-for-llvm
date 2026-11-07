; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc19.51.36260"

%"class.std::chrono::time_point" = type { %"class.std::chrono::duration" }
%"class.std::chrono::duration" = type { i64 }
%"class.std::chrono::duration.0" = type { double }

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

$s471s = comdat any

$f = comdat any

$_Avx2WmemEnabledWeakValue = comdat any

$"??_C@_01FHEEJDEE@A?$AA@" = comdat any

$"??_C@_0P@MAICADEK@CHECK?5?$CF016llx?6?$AA@" = comdat any

$"??_C@_0L@JOFKNBBO@VERIFY?5OK?6?$AA@" = comdat any

$"??_C@_0P@MGLMMHNL@TRIAL?5?$CFd?5?$CF?43f?6?$AA@" = comdat any

$"??_C@_0DC@GOEANMGN@META?5case?$DNtsvc_s2233?5config?$DN?$CFs?5r@" = comdat any

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
@g_fn = internal global ptr @s2233, align 8
@"??_C@_0P@MAICADEK@CHECK?5?$CF016llx?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"CHECK %016llx\0A\00", comdat, align 8
@"??_C@_0L@JOFKNBBO@VERIFY?5OK?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [11 x i8] c"VERIFY OK\0A\00", comdat, align 8
@"??_C@_0P@MGLMMHNL@TRIAL?5?$CFd?5?$CF?43f?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"TRIAL %d %.3f\0A\00", comdat, align 8
@"??_C@_0DC@GOEANMGN@META?5case?$DNtsvc_s2233?5config?$DN?$CFs?5r@" = linkonce_odr dso_local unnamed_addr constant [50 x i8] c"META case=tsvc_s2233 config=%s reps=%d trials=%d\0A\00", comdat, align 8
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
  call void @"?now@steady_clock@chrono@std@@SA?AV?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@23@XZ"(ptr dead_on_unwind writable sret(%"class.std::chrono::time_point") align 8 %12) #13
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
  br label %65, !llvm.loop !20

75:                                               ; preds = %65
  call void @"?now@steady_clock@chrono@std@@SA?AV?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@23@XZ"(ptr dead_on_unwind writable sret(%"class.std::chrono::time_point") align 8 %14) #13
  call void @"??$?GUsteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@12@V312@@chrono@std@@YA?AV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@01@AEBV?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@01@0@Z"(ptr dead_on_unwind writable sret(%"class.std::chrono::duration") align 8 %17, ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %12) #13
  %76 = call noundef ptr @"??$?0_JU?$ratio@$00$0DLJKMKAA@@std@@$0A@@?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEAA@AEBV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@12@@Z"(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %17) #13
  %77 = call noundef double @"?count@?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEBANXZ"(ptr noundef nonnull align 8 dereferenceable(8) %16) #13
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
  br label %60, !llvm.loop !22

87:                                               ; preds = %60
  %88 = load i32, ptr %8, align 4
  %89 = load i32, ptr %7, align 4
  %90 = load ptr, ptr %6, align 8
  %91 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0DC@GOEANMGN@META?5case?$DNtsvc_s2233?5config?$DN?$CFs?5r@", ptr noundef %90, i32 noundef %89, i32 noundef %88)
  ret i32 0
}

declare dso_local i32 @atoi(ptr noundef) #1

; Function Attrs: mustprogress noinline nounwind uwtable
define internal noundef i64 @"?hash_bytes@@YA_KPEBX_K@Z"(ptr noundef %0, i64 noundef %1) #2 {
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
  br label %9, !llvm.loop !23

26:                                               ; preds = %9
  %27 = load i64, ptr %6, align 8
  ret i64 %27
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local i32 @printf(ptr noundef %0, ...) #3 comdat {
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
define linkonce_odr dso_local void @"?now@steady_clock@chrono@std@@SA?AV?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@23@XZ"(ptr dead_on_unwind noalias writable sret(%"class.std::chrono::time_point") align 8 %0) #2 comdat align 2 {
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
  %21 = call i64 @_Query_perf_frequency() #13
  store i64 %21, ptr %3, align 8
  %22 = call i64 @_Query_perf_counter() #13
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
  %28 = call noundef ptr @"??$?0_J$0A@@?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEAA@AEB_J@Z"(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %9) #13
  %29 = call noundef ptr @"??0?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@chrono@std@@QEAA@AEBV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@12@@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %8) #13
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
  %42 = call noundef ptr @"??$?0_J$0A@@?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEAA@AEB_J@Z"(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %16) #13
  %43 = call noundef ptr @"??0?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@chrono@std@@QEAA@AEBV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@12@@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %15) #13
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
  %58 = call noundef ptr @"??$?0_J$0A@@?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEAA@AEB_J@Z"(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(8) %20) #13
  %59 = call noundef ptr @"??0?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@chrono@std@@QEAA@AEBV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@12@@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %19) #13
  br label %60

60:                                               ; preds = %44, %33, %25
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"??$?GUsteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@12@V312@@chrono@std@@YA?AV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@01@AEBV?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@01@0@Z"(ptr dead_on_unwind noalias writable sret(%"class.std::chrono::duration") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #2 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %"class.std::chrono::duration", align 8
  %8 = alloca %"class.std::chrono::duration", align 8
  store ptr %0, ptr %4, align 8
  store ptr %2, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %9 = load ptr, ptr %5, align 8, !nonnull !24, !align !25
  call void @"?time_since_epoch@?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@chrono@std@@QEBA?AV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@XZ"(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr dead_on_unwind writable sret(%"class.std::chrono::duration") align 8 %7) #13
  %10 = load ptr, ptr %6, align 8, !nonnull !24, !align !25
  call void @"?time_since_epoch@?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@chrono@std@@QEBA?AV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@XZ"(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr dead_on_unwind writable sret(%"class.std::chrono::duration") align 8 %8) #13
  call void @"??$?G_JU?$ratio@$00$0DLJKMKAA@@std@@_JU01@@chrono@std@@YA?AV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@01@AEBV201@0@Z"(ptr dead_on_unwind writable sret(%"class.std::chrono::duration") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %7) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"??$?0_JU?$ratio@$00$0DLJKMKAA@@std@@$0A@@?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEAA@AEBV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@12@@Z"(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %"class.std::chrono::duration.0", align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = getelementptr inbounds nuw %"class.std::chrono::duration.0", ptr %6, i32 0, i32 0
  %8 = load ptr, ptr %3, align 8, !nonnull !24, !align !25
  call void @"??$duration_cast@V?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@_JU?$ratio@$00$0DLJKMKAA@@3@$0A@@chrono@std@@YA?AV?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@01@AEBV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@01@@Z"(ptr dead_on_unwind writable sret(%"class.std::chrono::duration.0") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %8) #13
  %9 = call noundef double @"?count@?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEBANXZ"(ptr noundef nonnull align 8 dereferenceable(8) %5) #13
  store double %9, ptr %7, align 8
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef double @"?count@?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEBANXZ"(ptr noundef nonnull align 8 dereferenceable(8) %0) #2 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %"class.std::chrono::duration.0", ptr %3, i32 0, i32 0
  %5 = load double, ptr %4, align 8
  ret double %5
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"??$duration_cast@V?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@_JU?$ratio@$00$0DLJKMKAA@@3@$0A@@chrono@std@@YA?AV?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@01@AEBV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@01@@Z"(ptr dead_on_unwind noalias writable sret(%"class.std::chrono::duration.0") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #2 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca double, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  store i8 1, ptr %5, align 1
  store i8 1, ptr %6, align 1
  %8 = load ptr, ptr %4, align 8, !nonnull !24, !align !25
  %9 = call noundef i64 @"?count@?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEBA_JXZ"(ptr noundef nonnull align 8 dereferenceable(8) %8) #13
  %10 = sitofp i64 %9 to double
  store double %10, ptr %7, align 8
  %11 = call noundef ptr @"??$?0N$0A@@?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEAA@AEBN@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %7) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @"?count@?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEBA_JXZ"(ptr noundef nonnull align 8 dereferenceable(8) %0) #2 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %"class.std::chrono::duration", ptr %3, i32 0, i32 0
  %5 = load i64, ptr %4, align 8
  ret i64 %5
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"??$?0N$0A@@?$duration@NU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEAA@AEBN@Z"(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds nuw %"class.std::chrono::duration.0", ptr %5, i32 0, i32 0
  %7 = load ptr, ptr %3, align 8, !nonnull !24, !align !25
  %8 = load double, ptr %7, align 8
  store double %8, ptr %6, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @"?time_since_epoch@?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@chrono@std@@QEBA?AV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@XZ"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr dead_on_unwind noalias writable sret(%"class.std::chrono::duration") align 8 %1) #2 comdat align 2 {
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
define linkonce_odr dso_local void @"??$?G_JU?$ratio@$00$0DLJKMKAA@@std@@_JU01@@chrono@std@@YA?AV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@01@AEBV201@0@Z"(ptr dead_on_unwind noalias writable sret(%"class.std::chrono::duration") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #2 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca %"class.std::chrono::duration", align 8
  %9 = alloca %"class.std::chrono::duration", align 8
  store ptr %0, ptr %4, align 8
  store ptr %2, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %10 = load ptr, ptr %6, align 8, !nonnull !24, !align !25
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %8, ptr align 8 %10, i64 8, i1 false)
  %11 = call noundef i64 @"?count@?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEBA_JXZ"(ptr noundef nonnull align 8 dereferenceable(8) %8) #13
  %12 = load ptr, ptr %5, align 8, !nonnull !24, !align !25
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %9, ptr align 8 %12, i64 8, i1 false)
  %13 = call noundef i64 @"?count@?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEBA_JXZ"(ptr noundef nonnull align 8 dereferenceable(8) %9) #13
  %14 = sub i64 %11, %13
  store i64 %14, ptr %7, align 8
  %15 = call noundef ptr @"??$?0_J$0A@@?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEAA@AEB_J@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %7) #13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"??$?0_J$0A@@?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@QEAA@AEB_J@Z"(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds nuw %"class.std::chrono::duration", ptr %5, i32 0, i32 0
  %7 = load ptr, ptr %3, align 8, !nonnull !24, !align !25
  %8 = load i64, ptr %7, align 8
  store i64 %8, ptr %6, align 8
  ret ptr %5
}

; Function Attrs: nounwind
declare dso_local i64 @_Query_perf_frequency() #5

; Function Attrs: nounwind
declare dso_local i64 @_Query_perf_counter() #5

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @"??0?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@chrono@std@@QEAA@AEBV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@12@@Z"(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds nuw %"class.std::chrono::time_point", ptr %5, i32 0, i32 0
  %7 = load ptr, ptr %3, align 8, !nonnull !24, !align !25
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %6, ptr align 8 %7, i64 8, i1 false)
  ret ptr %5
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #6

declare dso_local ptr @__acrt_iob_func(i32 noundef) #1

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local i32 @_vfprintf_l(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #3 comdat {
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
declare void @llvm.va_end.p0(ptr) #6

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local ptr @__local_stdio_printf_options() #2 comdat {
  ret ptr @"?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA"
}

declare dso_local i32 @__stdio_common_vfprintf(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @set1d(ptr noundef %0, float noundef %1, i32 noundef %2) #7 {
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %2, ptr %4, align 4
  store float %1, ptr %5, align 4
  store ptr %0, ptr %6, align 8
  %10 = load i32, ptr %4, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %31

12:                                               ; preds = %3
  store i32 0, ptr %7, align 4
  br label %13

13:                                               ; preds = %27, %12
  %14 = load i32, ptr %7, align 4
  %15 = icmp slt i32 %14, 32000
  br i1 %15, label %16, label %30

16:                                               ; preds = %13
  %17 = load i32, ptr %7, align 4
  %18 = add i32 %17, 1
  %19 = sitofp i32 %18 to float
  %20 = fpext float %19 to double
  %21 = fdiv double 1.000000e+00, %20
  %22 = fptrunc double %21 to float
  %23 = load ptr, ptr %6, align 8
  %24 = load i32, ptr %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds float, ptr %23, i64 %25
  store float %22, ptr %26, align 4
  br label %27

27:                                               ; preds = %16
  %28 = load i32, ptr %7, align 4
  %29 = add i32 %28, 1
  store i32 %29, ptr %7, align 4
  br label %13, !llvm.loop !26

30:                                               ; preds = %13
  br label %72

31:                                               ; preds = %3
  %32 = load i32, ptr %4, align 4
  %33 = icmp eq i32 %32, -2
  br i1 %33, label %34, label %56

34:                                               ; preds = %31
  store i32 0, ptr %8, align 4
  br label %35

35:                                               ; preds = %52, %34
  %36 = load i32, ptr %8, align 4
  %37 = icmp slt i32 %36, 32000
  br i1 %37, label %38, label %55

38:                                               ; preds = %35
  %39 = load i32, ptr %8, align 4
  %40 = add i32 %39, 1
  %41 = load i32, ptr %8, align 4
  %42 = add i32 %41, 1
  %43 = mul i32 %40, %42
  %44 = sitofp i32 %43 to float
  %45 = fpext float %44 to double
  %46 = fdiv double 1.000000e+00, %45
  %47 = fptrunc double %46 to float
  %48 = load ptr, ptr %6, align 8
  %49 = load i32, ptr %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds float, ptr %48, i64 %50
  store float %47, ptr %51, align 4
  br label %52

52:                                               ; preds = %38
  %53 = load i32, ptr %8, align 4
  %54 = add i32 %53, 1
  store i32 %54, ptr %8, align 4
  br label %35, !llvm.loop !27

55:                                               ; preds = %35
  br label %71

56:                                               ; preds = %31
  store i32 0, ptr %9, align 4
  br label %57

57:                                               ; preds = %66, %56
  %58 = load i32, ptr %9, align 4
  %59 = icmp slt i32 %58, 32000
  br i1 %59, label %60, label %70

60:                                               ; preds = %57
  %61 = load float, ptr %5, align 4
  %62 = load ptr, ptr %6, align 8
  %63 = load i32, ptr %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds float, ptr %62, i64 %64
  store float %61, ptr %65, align 4
  br label %66

66:                                               ; preds = %60
  %67 = load i32, ptr %4, align 4
  %68 = load i32, ptr %9, align 4
  %69 = add i32 %68, %67
  store i32 %69, ptr %9, align 4
  br label %57, !llvm.loop !28

70:                                               ; preds = %57
  br label %71

71:                                               ; preds = %70, %55
  br label %72

72:                                               ; preds = %71, %30
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @set1ds(i32 noundef %0, ptr noundef %1, float noundef %2, i32 noundef %3) #7 {
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %3, ptr %5, align 4
  store float %2, ptr %6, align 4
  store ptr %1, ptr %7, align 8
  store i32 %0, ptr %8, align 4
  %12 = load i32, ptr %5, align 4
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %33

14:                                               ; preds = %4
  store i32 0, ptr %9, align 4
  br label %15

15:                                               ; preds = %29, %14
  %16 = load i32, ptr %9, align 4
  %17 = icmp slt i32 %16, 32000
  br i1 %17, label %18, label %32

18:                                               ; preds = %15
  %19 = load i32, ptr %9, align 4
  %20 = add i32 %19, 1
  %21 = sitofp i32 %20 to float
  %22 = fpext float %21 to double
  %23 = fdiv double 1.000000e+00, %22
  %24 = fptrunc double %23 to float
  %25 = load ptr, ptr %7, align 8
  %26 = load i32, ptr %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds float, ptr %25, i64 %27
  store float %24, ptr %28, align 4
  br label %29

29:                                               ; preds = %18
  %30 = load i32, ptr %9, align 4
  %31 = add i32 %30, 1
  store i32 %31, ptr %9, align 4
  br label %15, !llvm.loop !29

32:                                               ; preds = %15
  br label %74

33:                                               ; preds = %4
  %34 = load i32, ptr %5, align 4
  %35 = icmp eq i32 %34, -2
  br i1 %35, label %36, label %58

36:                                               ; preds = %33
  store i32 0, ptr %10, align 4
  br label %37

37:                                               ; preds = %54, %36
  %38 = load i32, ptr %10, align 4
  %39 = icmp slt i32 %38, 32000
  br i1 %39, label %40, label %57

40:                                               ; preds = %37
  %41 = load i32, ptr %10, align 4
  %42 = add i32 %41, 1
  %43 = load i32, ptr %10, align 4
  %44 = add i32 %43, 1
  %45 = mul i32 %42, %44
  %46 = sitofp i32 %45 to float
  %47 = fpext float %46 to double
  %48 = fdiv double 1.000000e+00, %47
  %49 = fptrunc double %48 to float
  %50 = load ptr, ptr %7, align 8
  %51 = load i32, ptr %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds float, ptr %50, i64 %52
  store float %49, ptr %53, align 4
  br label %54

54:                                               ; preds = %40
  %55 = load i32, ptr %10, align 4
  %56 = add i32 %55, 1
  store i32 %56, ptr %10, align 4
  br label %37, !llvm.loop !30

57:                                               ; preds = %37
  br label %73

58:                                               ; preds = %33
  store i32 0, ptr %11, align 4
  br label %59

59:                                               ; preds = %68, %58
  %60 = load i32, ptr %11, align 4
  %61 = icmp slt i32 %60, 32000
  br i1 %61, label %62, label %72

62:                                               ; preds = %59
  %63 = load float, ptr %6, align 4
  %64 = load ptr, ptr %7, align 8
  %65 = load i32, ptr %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds float, ptr %64, i64 %66
  store float %63, ptr %67, align 4
  br label %68

68:                                               ; preds = %62
  %69 = load i32, ptr %5, align 4
  %70 = load i32, ptr %11, align 4
  %71 = add i32 %70, %69
  store i32 %71, ptr %11, align 4
  br label %59, !llvm.loop !31

72:                                               ; preds = %59
  br label %73

73:                                               ; preds = %72, %57
  br label %74

74:                                               ; preds = %73, %32
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @set2d(ptr noundef %0, float noundef %1, i32 noundef %2) #7 {
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %2, ptr %4, align 4
  store float %1, ptr %5, align 4
  store ptr %0, ptr %6, align 8
  %13 = load i32, ptr %4, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %45

15:                                               ; preds = %3
  store i32 0, ptr %7, align 4
  br label %16

16:                                               ; preds = %41, %15
  %17 = load i32, ptr %7, align 4
  %18 = icmp slt i32 %17, 256
  br i1 %18, label %19, label %44

19:                                               ; preds = %16
  store i32 0, ptr %8, align 4
  br label %20

20:                                               ; preds = %37, %19
  %21 = load i32, ptr %8, align 4
  %22 = icmp slt i32 %21, 256
  br i1 %22, label %23, label %40

23:                                               ; preds = %20
  %24 = load i32, ptr %7, align 4
  %25 = add i32 %24, 1
  %26 = sitofp i32 %25 to float
  %27 = fpext float %26 to double
  %28 = fdiv double 1.000000e+00, %27
  %29 = fptrunc double %28 to float
  %30 = load ptr, ptr %6, align 8
  %31 = load i32, ptr %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [256 x float], ptr %30, i64 %32
  %34 = load i32, ptr %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [256 x float], ptr %33, i64 0, i64 %35
  store float %29, ptr %36, align 4
  br label %37

37:                                               ; preds = %23
  %38 = load i32, ptr %8, align 4
  %39 = add i32 %38, 1
  store i32 %39, ptr %8, align 4
  br label %20, !llvm.loop !32

40:                                               ; preds = %20
  br label %41

41:                                               ; preds = %40
  %42 = load i32, ptr %7, align 4
  %43 = add i32 %42, 1
  store i32 %43, ptr %7, align 4
  br label %16, !llvm.loop !33

44:                                               ; preds = %16
  br label %108

45:                                               ; preds = %3
  %46 = load i32, ptr %4, align 4
  %47 = icmp eq i32 %46, -2
  br i1 %47, label %48, label %81

48:                                               ; preds = %45
  store i32 0, ptr %9, align 4
  br label %49

49:                                               ; preds = %77, %48
  %50 = load i32, ptr %9, align 4
  %51 = icmp slt i32 %50, 256
  br i1 %51, label %52, label %80

52:                                               ; preds = %49
  store i32 0, ptr %10, align 4
  br label %53

53:                                               ; preds = %73, %52
  %54 = load i32, ptr %10, align 4
  %55 = icmp slt i32 %54, 256
  br i1 %55, label %56, label %76

56:                                               ; preds = %53
  %57 = load i32, ptr %9, align 4
  %58 = add i32 %57, 1
  %59 = load i32, ptr %9, align 4
  %60 = add i32 %59, 1
  %61 = mul i32 %58, %60
  %62 = sitofp i32 %61 to float
  %63 = fpext float %62 to double
  %64 = fdiv double 1.000000e+00, %63
  %65 = fptrunc double %64 to float
  %66 = load ptr, ptr %6, align 8
  %67 = load i32, ptr %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [256 x float], ptr %66, i64 %68
  %70 = load i32, ptr %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [256 x float], ptr %69, i64 0, i64 %71
  store float %65, ptr %72, align 4
  br label %73

73:                                               ; preds = %56
  %74 = load i32, ptr %10, align 4
  %75 = add i32 %74, 1
  store i32 %75, ptr %10, align 4
  br label %53, !llvm.loop !34

76:                                               ; preds = %53
  br label %77

77:                                               ; preds = %76
  %78 = load i32, ptr %9, align 4
  %79 = add i32 %78, 1
  store i32 %79, ptr %9, align 4
  br label %49, !llvm.loop !35

80:                                               ; preds = %49
  br label %107

81:                                               ; preds = %45
  store i32 0, ptr %11, align 4
  br label %82

82:                                               ; preds = %103, %81
  %83 = load i32, ptr %11, align 4
  %84 = icmp slt i32 %83, 256
  br i1 %84, label %85, label %106

85:                                               ; preds = %82
  store i32 0, ptr %12, align 4
  br label %86

86:                                               ; preds = %98, %85
  %87 = load i32, ptr %12, align 4
  %88 = icmp slt i32 %87, 256
  br i1 %88, label %89, label %102

89:                                               ; preds = %86
  %90 = load float, ptr %5, align 4
  %91 = load ptr, ptr %6, align 8
  %92 = load i32, ptr %11, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [256 x float], ptr %91, i64 %93
  %95 = load i32, ptr %12, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [256 x float], ptr %94, i64 0, i64 %96
  store float %90, ptr %97, align 4
  br label %98

98:                                               ; preds = %89
  %99 = load i32, ptr %4, align 4
  %100 = load i32, ptr %12, align 4
  %101 = add i32 %100, %99
  store i32 %101, ptr %12, align 4
  br label %86, !llvm.loop !36

102:                                              ; preds = %86
  br label %103

103:                                              ; preds = %102
  %104 = load i32, ptr %11, align 4
  %105 = add i32 %104, 1
  store i32 %105, ptr %11, align 4
  br label %82, !llvm.loop !37

106:                                              ; preds = %82
  br label %107

107:                                              ; preds = %106, %80
  br label %108

108:                                              ; preds = %107, %44
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local float @sum1d(ptr noundef %0) #7 {
  %2 = alloca ptr, align 8
  %3 = alloca float, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  store float 0.000000e+00, ptr %3, align 4
  store i32 0, ptr %4, align 4
  br label %5

5:                                                ; preds = %16, %1
  %6 = load i32, ptr %4, align 4
  %7 = icmp slt i32 %6, 32000
  br i1 %7, label %8, label %19

8:                                                ; preds = %5
  %9 = load ptr, ptr %2, align 8
  %10 = load i32, ptr %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds float, ptr %9, i64 %11
  %13 = load float, ptr %12, align 4
  %14 = load float, ptr %3, align 4
  %15 = fadd float %14, %13
  store float %15, ptr %3, align 4
  br label %16

16:                                               ; preds = %8
  %17 = load i32, ptr %4, align 4
  %18 = add i32 %17, 1
  store i32 %18, ptr %4, align 4
  br label %5, !llvm.loop !38

19:                                               ; preds = %5
  %20 = load float, ptr %3, align 4
  ret float %20
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @check(i32 noundef %0) #7 {
  %2 = alloca i32, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca float, align 4
  %15 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  store float 0.000000e+00, ptr %3, align 4
  store float 0.000000e+00, ptr %4, align 4
  store float 0.000000e+00, ptr %5, align 4
  store float 0.000000e+00, ptr %6, align 4
  store float 0.000000e+00, ptr %7, align 4
  store i32 0, ptr %8, align 4
  br label %16

16:                                               ; preds = %50, %1
  %17 = load i32, ptr %8, align 4
  %18 = icmp slt i32 %17, 32000
  br i1 %18, label %19, label %53

19:                                               ; preds = %16
  %20 = load i32, ptr %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %21
  %23 = load float, ptr %22, align 4
  %24 = load float, ptr %3, align 4
  %25 = fadd float %24, %23
  store float %25, ptr %3, align 4
  %26 = load i32, ptr %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %27
  %29 = load float, ptr %28, align 4
  %30 = load float, ptr %4, align 4
  %31 = fadd float %30, %29
  store float %31, ptr %4, align 4
  %32 = load i32, ptr %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %33
  %35 = load float, ptr %34, align 4
  %36 = load float, ptr %5, align 4
  %37 = fadd float %36, %35
  store float %37, ptr %5, align 4
  %38 = load i32, ptr %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %39
  %41 = load float, ptr %40, align 4
  %42 = load float, ptr %6, align 4
  %43 = fadd float %42, %41
  store float %43, ptr %6, align 4
  %44 = load i32, ptr %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %45
  %47 = load float, ptr %46, align 4
  %48 = load float, ptr %7, align 4
  %49 = fadd float %48, %47
  store float %49, ptr %7, align 4
  br label %50

50:                                               ; preds = %19
  %51 = load i32, ptr %8, align 4
  %52 = add i32 %51, 1
  store i32 %52, ptr %8, align 4
  br label %16, !llvm.loop !39

53:                                               ; preds = %16
  store float 0.000000e+00, ptr %9, align 4
  store float 0.000000e+00, ptr %10, align 4
  store float 0.000000e+00, ptr %11, align 4
  store i32 0, ptr %12, align 4
  br label %54

54:                                               ; preds = %93, %53
  %55 = load i32, ptr %12, align 4
  %56 = icmp slt i32 %55, 256
  br i1 %56, label %57, label %96

57:                                               ; preds = %54
  store i32 0, ptr %13, align 4
  br label %58

58:                                               ; preds = %89, %57
  %59 = load i32, ptr %13, align 4
  %60 = icmp slt i32 %59, 256
  br i1 %60, label %61, label %92

61:                                               ; preds = %58
  %62 = load i32, ptr %12, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %63
  %65 = load i32, ptr %13, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [256 x float], ptr %64, i64 0, i64 %66
  %68 = load float, ptr %67, align 4
  %69 = load float, ptr %9, align 4
  %70 = fadd float %69, %68
  store float %70, ptr %9, align 4
  %71 = load i32, ptr %12, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %72
  %74 = load i32, ptr %13, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [256 x float], ptr %73, i64 0, i64 %75
  %77 = load float, ptr %76, align 4
  %78 = load float, ptr %10, align 4
  %79 = fadd float %78, %77
  store float %79, ptr %10, align 4
  %80 = load i32, ptr %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [256 x [256 x float]], ptr @cc, i64 0, i64 %81
  %83 = load i32, ptr %13, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [256 x float], ptr %82, i64 0, i64 %84
  %86 = load float, ptr %85, align 4
  %87 = load float, ptr %11, align 4
  %88 = fadd float %87, %86
  store float %88, ptr %11, align 4
  br label %89

89:                                               ; preds = %61
  %90 = load i32, ptr %13, align 4
  %91 = add i32 %90, 1
  store i32 %91, ptr %13, align 4
  br label %58, !llvm.loop !40

92:                                               ; preds = %58
  br label %93

93:                                               ; preds = %92
  %94 = load i32, ptr %12, align 4
  %95 = add i32 %94, 1
  store i32 %95, ptr %12, align 4
  br label %54, !llvm.loop !41

96:                                               ; preds = %54
  store float 0.000000e+00, ptr %14, align 4
  store i32 0, ptr %15, align 4
  br label %97

97:                                               ; preds = %107, %96
  %98 = load i32, ptr %15, align 4
  %99 = icmp slt i32 %98, 65536
  br i1 %99, label %100, label %110

100:                                              ; preds = %97
  %101 = load i32, ptr %15, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [65536 x float], ptr @array, i64 0, i64 %102
  %104 = load float, ptr %103, align 4
  %105 = load float, ptr %14, align 4
  %106 = fadd float %105, %104
  store float %106, ptr %14, align 4
  br label %107

107:                                              ; preds = %100
  %108 = load i32, ptr %15, align 4
  %109 = add i32 %108, 1
  store i32 %109, ptr %15, align 4
  br label %97, !llvm.loop !42

110:                                              ; preds = %97
  %111 = load i32, ptr %2, align 4
  %112 = icmp eq i32 %111, 1
  br i1 %112, label %113, label %117

113:                                              ; preds = %110
  %114 = load float, ptr %3, align 4
  %115 = fpext float %114 to double
  %116 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_04OMBDKOCD@?$CFf?5?6?$AA@", double noundef %115)
  br label %117

117:                                              ; preds = %113, %110
  %118 = load i32, ptr %2, align 4
  %119 = icmp eq i32 %118, 2
  br i1 %119, label %120, label %124

120:                                              ; preds = %117
  %121 = load float, ptr %4, align 4
  %122 = fpext float %121 to double
  %123 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_04OMBDKOCD@?$CFf?5?6?$AA@", double noundef %122)
  br label %124

124:                                              ; preds = %120, %117
  %125 = load i32, ptr %2, align 4
  %126 = icmp eq i32 %125, 3
  br i1 %126, label %127, label %131

127:                                              ; preds = %124
  %128 = load float, ptr %5, align 4
  %129 = fpext float %128 to double
  %130 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_04OMBDKOCD@?$CFf?5?6?$AA@", double noundef %129)
  br label %131

131:                                              ; preds = %127, %124
  %132 = load i32, ptr %2, align 4
  %133 = icmp eq i32 %132, 4
  br i1 %133, label %134, label %138

134:                                              ; preds = %131
  %135 = load float, ptr %6, align 4
  %136 = fpext float %135 to double
  %137 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_04OMBDKOCD@?$CFf?5?6?$AA@", double noundef %136)
  br label %138

138:                                              ; preds = %134, %131
  %139 = load i32, ptr %2, align 4
  %140 = icmp eq i32 %139, 5
  br i1 %140, label %141, label %145

141:                                              ; preds = %138
  %142 = load float, ptr %7, align 4
  %143 = fpext float %142 to double
  %144 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_04OMBDKOCD@?$CFf?5?6?$AA@", double noundef %143)
  br label %145

145:                                              ; preds = %141, %138
  %146 = load i32, ptr %2, align 4
  %147 = icmp eq i32 %146, 11
  br i1 %147, label %148, label %152

148:                                              ; preds = %145
  %149 = load float, ptr %9, align 4
  %150 = fpext float %149 to double
  %151 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_04OMBDKOCD@?$CFf?5?6?$AA@", double noundef %150)
  br label %152

152:                                              ; preds = %148, %145
  %153 = load i32, ptr %2, align 4
  %154 = icmp eq i32 %153, 22
  br i1 %154, label %155, label %159

155:                                              ; preds = %152
  %156 = load float, ptr %10, align 4
  %157 = fpext float %156 to double
  %158 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_04OMBDKOCD@?$CFf?5?6?$AA@", double noundef %157)
  br label %159

159:                                              ; preds = %155, %152
  %160 = load i32, ptr %2, align 4
  %161 = icmp eq i32 %160, 33
  br i1 %161, label %162, label %166

162:                                              ; preds = %159
  %163 = load float, ptr %11, align 4
  %164 = fpext float %163 to double
  %165 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_04OMBDKOCD@?$CFf?5?6?$AA@", double noundef %164)
  br label %166

166:                                              ; preds = %162, %159
  %167 = load i32, ptr %2, align 4
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %166
  %170 = load float, ptr %14, align 4
  %171 = fpext float %170 to double
  %172 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_04OMBDKOCD@?$CFf?5?6?$AA@", double noundef %171)
  br label %173

173:                                              ; preds = %169, %166
  %174 = load i32, ptr %2, align 4
  %175 = icmp eq i32 %174, 12
  br i1 %175, label %176, label %182

176:                                              ; preds = %173
  %177 = load float, ptr %3, align 4
  %178 = load float, ptr %4, align 4
  %179 = fadd float %177, %178
  %180 = fpext float %179 to double
  %181 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_04OMBDKOCD@?$CFf?5?6?$AA@", double noundef %180)
  br label %182

182:                                              ; preds = %176, %173
  %183 = load i32, ptr %2, align 4
  %184 = icmp eq i32 %183, 25
  br i1 %184, label %185, label %191

185:                                              ; preds = %182
  %186 = load float, ptr %4, align 4
  %187 = load float, ptr %7, align 4
  %188 = fadd float %186, %187
  %189 = fpext float %188 to double
  %190 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_04OMBDKOCD@?$CFf?5?6?$AA@", double noundef %189)
  br label %191

191:                                              ; preds = %185, %182
  %192 = load i32, ptr %2, align 4
  %193 = icmp eq i32 %192, 13
  br i1 %193, label %194, label %200

194:                                              ; preds = %191
  %195 = load float, ptr %3, align 4
  %196 = load float, ptr %5, align 4
  %197 = fadd float %195, %196
  %198 = fpext float %197 to double
  %199 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_04OMBDKOCD@?$CFf?5?6?$AA@", double noundef %198)
  br label %200

200:                                              ; preds = %194, %191
  %201 = load i32, ptr %2, align 4
  %202 = icmp eq i32 %201, 123
  br i1 %202, label %203, label %211

203:                                              ; preds = %200
  %204 = load float, ptr %3, align 4
  %205 = load float, ptr %4, align 4
  %206 = fadd float %204, %205
  %207 = load float, ptr %5, align 4
  %208 = fadd float %206, %207
  %209 = fpext float %208 to double
  %210 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_04OMBDKOCD@?$CFf?5?6?$AA@", double noundef %209)
  br label %211

211:                                              ; preds = %203, %200
  %212 = load i32, ptr %2, align 4
  %213 = icmp eq i32 %212, 1122
  br i1 %213, label %214, label %220

214:                                              ; preds = %211
  %215 = load float, ptr %9, align 4
  %216 = load float, ptr %10, align 4
  %217 = fadd float %215, %216
  %218 = fpext float %217 to double
  %219 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_04OMBDKOCD@?$CFf?5?6?$AA@", double noundef %218)
  br label %220

220:                                              ; preds = %214, %211
  %221 = load i32, ptr %2, align 4
  %222 = icmp eq i32 %221, 112233
  br i1 %222, label %223, label %231

223:                                              ; preds = %220
  %224 = load float, ptr %9, align 4
  %225 = load float, ptr %10, align 4
  %226 = fadd float %224, %225
  %227 = load float, ptr %11, align 4
  %228 = fadd float %226, %227
  %229 = fpext float %228 to double
  %230 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_04OMBDKOCD@?$CFf?5?6?$AA@", double noundef %229)
  br label %231

231:                                              ; preds = %223, %220
  %232 = load i32, ptr %2, align 4
  %233 = icmp eq i32 %232, 111
  br i1 %233, label %234, label %240

234:                                              ; preds = %231
  %235 = load float, ptr %9, align 4
  %236 = load float, ptr %3, align 4
  %237 = fadd float %235, %236
  %238 = fpext float %237 to double
  %239 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_04OMBDKOCD@?$CFf?5?6?$AA@", double noundef %238)
  br label %240

240:                                              ; preds = %234, %231
  %241 = load i32, ptr %2, align 4
  %242 = icmp eq i32 %241, -1
  br i1 %242, label %243, label %247

243:                                              ; preds = %240
  %244 = load float, ptr @temp, align 4
  %245 = fpext float %244 to double
  %246 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_04OMBDKOCD@?$CFf?5?6?$AA@", double noundef %245)
  br label %247

247:                                              ; preds = %243, %240
  %248 = load i32, ptr %2, align 4
  %249 = icmp eq i32 %248, -12
  br i1 %249, label %250, label %256

250:                                              ; preds = %247
  %251 = load float, ptr @temp, align 4
  %252 = load float, ptr %4, align 4
  %253 = fadd float %251, %252
  %254 = fpext float %253 to double
  %255 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_04OMBDKOCD@?$CFf?5?6?$AA@", double noundef %254)
  br label %256

256:                                              ; preds = %250, %247
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @init(ptr noundef %0) #7 {
  %2 = alloca ptr, align 8
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  store float 0.000000e+00, ptr %3, align 4
  store float 0.000000e+00, ptr %4, align 4
  store float 5.000000e-01, ptr %5, align 4
  store float 1.000000e+00, ptr %6, align 4
  store float 2.000000e+00, ptr %7, align 4
  store float f0x358637BD, ptr %8, align 4
  store i32 1, ptr %9, align 4
  store i32 -1, ptr %10, align 4
  store i32 -2, ptr %11, align 4
  %13 = load ptr, ptr %2, align 8
  %14 = call i32 @strcmp(ptr noundef %13, ptr noundef @"??_C@_05CDGOKACG@s000?5?$AA@") #13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %55, label %16

16:                                               ; preds = %1
  store i32 0, ptr %12, align 4
  br label %17

17:                                               ; preds = %51, %16
  %18 = load i32, ptr %12, align 4
  %19 = icmp slt i32 %18, 32000
  br i1 %19, label %20, label %54

20:                                               ; preds = %17
  %21 = load i32, ptr %12, align 4
  %22 = add i32 1, %21
  %23 = sitofp i32 %22 to float
  %24 = load i32, ptr %12, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [32000 x float], ptr @X, i64 0, i64 %25
  store float %23, ptr %26, align 4
  %27 = load i32, ptr %12, align 4
  %28 = add i32 2, %27
  %29 = sitofp i32 %28 to float
  %30 = load i32, ptr %12, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [32000 x float], ptr @Y, i64 0, i64 %31
  store float %29, ptr %32, align 4
  %33 = load i32, ptr %12, align 4
  %34 = add i32 3, %33
  %35 = sitofp i32 %34 to float
  %36 = load i32, ptr %12, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [32000 x float], ptr @Z, i64 0, i64 %37
  store float %35, ptr %38, align 4
  %39 = load i32, ptr %12, align 4
  %40 = add i32 4, %39
  %41 = sitofp i32 %40 to float
  %42 = load i32, ptr %12, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [32000 x float], ptr @U, i64 0, i64 %43
  store float %41, ptr %44, align 4
  %45 = load i32, ptr %12, align 4
  %46 = add i32 5, %45
  %47 = sitofp i32 %46 to float
  %48 = load i32, ptr %12, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [32000 x float], ptr @V, i64 0, i64 %49
  store float %47, ptr %50, align 4
  br label %51

51:                                               ; preds = %20
  %52 = load i32, ptr %12, align 4
  %53 = add i32 %52, 1
  store i32 %53, ptr %12, align 4
  br label %17, !llvm.loop !43

54:                                               ; preds = %17
  br label %2055

55:                                               ; preds = %1
  %56 = load ptr, ptr %2, align 8
  %57 = call i32 @strcmp(ptr noundef %56, ptr noundef @"??_C@_05KHHAIEME@s111?5?$AA@") #13
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %75, label %59

59:                                               ; preds = %55
  %60 = load i32, ptr %9, align 4
  %61 = load float, ptr %6, align 4
  %62 = call i32 @set1d(ptr noundef @a, float noundef %61, i32 noundef %60)
  %63 = load i32, ptr %11, align 4
  %64 = load float, ptr %3, align 4
  %65 = call i32 @set1d(ptr noundef @b, float noundef %64, i32 noundef %63)
  %66 = load i32, ptr %11, align 4
  %67 = load float, ptr %3, align 4
  %68 = call i32 @set1d(ptr noundef @c, float noundef %67, i32 noundef %66)
  %69 = load i32, ptr %11, align 4
  %70 = load float, ptr %3, align 4
  %71 = call i32 @set1d(ptr noundef @d, float noundef %70, i32 noundef %69)
  %72 = load i32, ptr %11, align 4
  %73 = load float, ptr %3, align 4
  %74 = call i32 @set1d(ptr noundef @e, float noundef %73, i32 noundef %72)
  br label %2054

75:                                               ; preds = %55
  %76 = load ptr, ptr %2, align 8
  %77 = call i32 @strcmp(ptr noundef %76, ptr noundef @"??_C@_05KFDGDKJN@s112?5?$AA@") #13
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %86, label %79

79:                                               ; preds = %75
  %80 = load i32, ptr %9, align 4
  %81 = load float, ptr %6, align 4
  %82 = call i32 @set1d(ptr noundef @a, float noundef %81, i32 noundef %80)
  %83 = load i32, ptr %11, align 4
  %84 = load float, ptr %3, align 4
  %85 = call i32 @set1d(ptr noundef @b, float noundef %84, i32 noundef %83)
  br label %2053

86:                                               ; preds = %75
  %87 = load ptr, ptr %2, align 8
  %88 = call i32 @strcmp(ptr noundef %87, ptr noundef @"??_C@_05KEPEFAKK@s113?5?$AA@") #13
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %97, label %90

90:                                               ; preds = %86
  %91 = load i32, ptr %9, align 4
  %92 = load float, ptr %6, align 4
  %93 = call i32 @set1d(ptr noundef @a, float noundef %92, i32 noundef %91)
  %94 = load i32, ptr %11, align 4
  %95 = load float, ptr %3, align 4
  %96 = call i32 @set1d(ptr noundef @b, float noundef %95, i32 noundef %94)
  br label %2052

97:                                               ; preds = %86
  %98 = load ptr, ptr %2, align 8
  %99 = call i32 @strcmp(ptr noundef %98, ptr noundef @"??_C@_05KBLLEGCP@s114?5?$AA@") #13
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %108, label %101

101:                                              ; preds = %97
  %102 = load i32, ptr %10, align 4
  %103 = load float, ptr %3, align 4
  %104 = call i32 @set2d(ptr noundef @aa, float noundef %103, i32 noundef %102)
  %105 = load i32, ptr %11, align 4
  %106 = load float, ptr %3, align 4
  %107 = call i32 @set2d(ptr noundef @bb, float noundef %106, i32 noundef %105)
  br label %2051

108:                                              ; preds = %97
  %109 = load ptr, ptr %2, align 8
  %110 = call i32 @strcmp(ptr noundef %109, ptr noundef @"??_C@_05KAHJCMBI@s115?5?$AA@") #13
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %125, label %112

112:                                              ; preds = %108
  %113 = load i32, ptr %9, align 4
  %114 = load float, ptr %6, align 4
  %115 = call i32 @set1d(ptr noundef @a, float noundef %114, i32 noundef %113)
  %116 = load i32, ptr %9, align 4
  %117 = load float, ptr %8, align 4
  %118 = call i32 @set2d(ptr noundef @aa, float noundef %117, i32 noundef %116)
  %119 = load i32, ptr %9, align 4
  %120 = load float, ptr %8, align 4
  %121 = call i32 @set2d(ptr noundef @bb, float noundef %120, i32 noundef %119)
  %122 = load i32, ptr %9, align 4
  %123 = load float, ptr %8, align 4
  %124 = call i32 @set2d(ptr noundef @cc, float noundef %123, i32 noundef %122)
  br label %2050

125:                                              ; preds = %108
  %126 = load ptr, ptr %2, align 8
  %127 = call i32 @strcmp(ptr noundef %126, ptr noundef @"??_C@_05KCDPJCEB@s116?5?$AA@") #13
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %133, label %129

129:                                              ; preds = %125
  %130 = load i32, ptr %9, align 4
  %131 = load float, ptr %6, align 4
  %132 = call i32 @set1d(ptr noundef @a, float noundef %131, i32 noundef %130)
  br label %2049

133:                                              ; preds = %125
  %134 = load ptr, ptr %2, align 8
  %135 = call i32 @strcmp(ptr noundef %134, ptr noundef @"??_C@_05KIKBLPEL@s118?5?$AA@") #13
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %144, label %137

137:                                              ; preds = %133
  %138 = load i32, ptr %9, align 4
  %139 = load float, ptr %6, align 4
  %140 = call i32 @set1d(ptr noundef @a, float noundef %139, i32 noundef %138)
  %141 = load i32, ptr %9, align 4
  %142 = load float, ptr %8, align 4
  %143 = call i32 @set2d(ptr noundef @bb, float noundef %142, i32 noundef %141)
  br label %2048

144:                                              ; preds = %133
  %145 = load ptr, ptr %2, align 8
  %146 = call i32 @strcmp(ptr noundef %145, ptr noundef @"??_C@_05KJGDNFHM@s119?5?$AA@") #13
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %155, label %148

148:                                              ; preds = %144
  %149 = load i32, ptr %9, align 4
  %150 = load float, ptr %6, align 4
  %151 = call i32 @set2d(ptr noundef @aa, float noundef %150, i32 noundef %149)
  %152 = load i32, ptr %11, align 4
  %153 = load float, ptr %3, align 4
  %154 = call i32 @set2d(ptr noundef @bb, float noundef %153, i32 noundef %152)
  br label %2047

155:                                              ; preds = %144
  %156 = load ptr, ptr %2, align 8
  %157 = call i32 @strcmp(ptr noundef %156, ptr noundef @"??_C@_05LFMFCLCK@s121?5?$AA@") #13
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %166, label %159

159:                                              ; preds = %155
  %160 = load i32, ptr %9, align 4
  %161 = load float, ptr %6, align 4
  %162 = call i32 @set1d(ptr noundef @a, float noundef %161, i32 noundef %160)
  %163 = load i32, ptr %11, align 4
  %164 = load float, ptr %3, align 4
  %165 = call i32 @set1d(ptr noundef @b, float noundef %164, i32 noundef %163)
  br label %2046

166:                                              ; preds = %155
  %167 = load ptr, ptr %2, align 8
  %168 = call i32 @strcmp(ptr noundef %167, ptr noundef @"??_C@_05LHIDJFHD@s122?5?$AA@") #13
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %177, label %170

170:                                              ; preds = %166
  %171 = load i32, ptr %9, align 4
  %172 = load float, ptr %6, align 4
  %173 = call i32 @set1d(ptr noundef @a, float noundef %172, i32 noundef %171)
  %174 = load i32, ptr %11, align 4
  %175 = load float, ptr %3, align 4
  %176 = call i32 @set1d(ptr noundef @b, float noundef %175, i32 noundef %174)
  br label %2045

177:                                              ; preds = %166
  %178 = load ptr, ptr %2, align 8
  %179 = call i32 @strcmp(ptr noundef %178, ptr noundef @"??_C@_05LGEBPPEE@s123?5?$AA@") #13
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %197, label %181

181:                                              ; preds = %177
  %182 = load i32, ptr %9, align 4
  %183 = load float, ptr %4, align 4
  %184 = call i32 @set1d(ptr noundef @a, float noundef %183, i32 noundef %182)
  %185 = load i32, ptr %9, align 4
  %186 = load float, ptr %6, align 4
  %187 = call i32 @set1d(ptr noundef @b, float noundef %186, i32 noundef %185)
  %188 = load i32, ptr %9, align 4
  %189 = load float, ptr %6, align 4
  %190 = call i32 @set1d(ptr noundef @c, float noundef %189, i32 noundef %188)
  %191 = load i32, ptr %10, align 4
  %192 = load float, ptr %3, align 4
  %193 = call i32 @set1d(ptr noundef @d, float noundef %192, i32 noundef %191)
  %194 = load i32, ptr %10, align 4
  %195 = load float, ptr %3, align 4
  %196 = call i32 @set1d(ptr noundef @e, float noundef %195, i32 noundef %194)
  br label %2044

197:                                              ; preds = %177
  %198 = load ptr, ptr %2, align 8
  %199 = call i32 @strcmp(ptr noundef %198, ptr noundef @"??_C@_05LDAOOJMB@s124?5?$AA@") #13
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %217, label %201

201:                                              ; preds = %197
  %202 = load i32, ptr %9, align 4
  %203 = load float, ptr %4, align 4
  %204 = call i32 @set1d(ptr noundef @a, float noundef %203, i32 noundef %202)
  %205 = load i32, ptr %9, align 4
  %206 = load float, ptr %6, align 4
  %207 = call i32 @set1d(ptr noundef @b, float noundef %206, i32 noundef %205)
  %208 = load i32, ptr %9, align 4
  %209 = load float, ptr %6, align 4
  %210 = call i32 @set1d(ptr noundef @c, float noundef %209, i32 noundef %208)
  %211 = load i32, ptr %10, align 4
  %212 = load float, ptr %3, align 4
  %213 = call i32 @set1d(ptr noundef @d, float noundef %212, i32 noundef %211)
  %214 = load i32, ptr %10, align 4
  %215 = load float, ptr %3, align 4
  %216 = call i32 @set1d(ptr noundef @e, float noundef %215, i32 noundef %214)
  br label %2043

217:                                              ; preds = %197
  %218 = load ptr, ptr %2, align 8
  %219 = call i32 @strcmp(ptr noundef %218, ptr noundef @"??_C@_05LCMMIDPG@s125?5?$AA@") #13
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %234, label %221

221:                                              ; preds = %217
  %222 = load i32, ptr %9, align 4
  %223 = load float, ptr %4, align 4
  %224 = call i32 @set1ds(i32 noundef 1024000000, ptr noundef @array, float noundef %223, i32 noundef %222)
  %225 = load i32, ptr %9, align 4
  %226 = load float, ptr %6, align 4
  %227 = call i32 @set2d(ptr noundef @aa, float noundef %226, i32 noundef %225)
  %228 = load i32, ptr %9, align 4
  %229 = load float, ptr %5, align 4
  %230 = call i32 @set2d(ptr noundef @bb, float noundef %229, i32 noundef %228)
  %231 = load i32, ptr %9, align 4
  %232 = load float, ptr %7, align 4
  %233 = call i32 @set2d(ptr noundef @cc, float noundef %232, i32 noundef %231)
  br label %2042

234:                                              ; preds = %217
  %235 = load ptr, ptr %2, align 8
  %236 = call i32 @strcmp(ptr noundef %235, ptr noundef @"??_C@_05LAIKDNKP@s126?5?$AA@") #13
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %248, label %238

238:                                              ; preds = %234
  %239 = load i32, ptr %9, align 4
  %240 = load float, ptr %6, align 4
  %241 = call i32 @set2d(ptr noundef @bb, float noundef %240, i32 noundef %239)
  %242 = load i32, ptr %10, align 4
  %243 = load float, ptr %3, align 4
  %244 = call i32 @set1ds(i32 noundef 1024000000, ptr noundef @array, float noundef %243, i32 noundef %242)
  %245 = load i32, ptr %10, align 4
  %246 = load float, ptr %3, align 4
  %247 = call i32 @set2d(ptr noundef @cc, float noundef %246, i32 noundef %245)
  br label %2041

248:                                              ; preds = %234
  %249 = load ptr, ptr %2, align 8
  %250 = call i32 @strcmp(ptr noundef %249, ptr noundef @"??_C@_05LBEIFHJI@s127?5?$AA@") #13
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %268, label %252

252:                                              ; preds = %248
  %253 = load i32, ptr %9, align 4
  %254 = load float, ptr %4, align 4
  %255 = call i32 @set1d(ptr noundef @a, float noundef %254, i32 noundef %253)
  %256 = load i32, ptr %9, align 4
  %257 = load float, ptr %6, align 4
  %258 = call i32 @set1d(ptr noundef @b, float noundef %257, i32 noundef %256)
  %259 = load i32, ptr %10, align 4
  %260 = load float, ptr %3, align 4
  %261 = call i32 @set1d(ptr noundef @c, float noundef %260, i32 noundef %259)
  %262 = load i32, ptr %10, align 4
  %263 = load float, ptr %3, align 4
  %264 = call i32 @set1d(ptr noundef @d, float noundef %263, i32 noundef %262)
  %265 = load i32, ptr %10, align 4
  %266 = load float, ptr %3, align 4
  %267 = call i32 @set1d(ptr noundef @e, float noundef %266, i32 noundef %265)
  br label %2040

268:                                              ; preds = %248
  %269 = load ptr, ptr %2, align 8
  %270 = call i32 @strcmp(ptr noundef %269, ptr noundef @"??_C@_05LKBEBAKF@s128?5?$AA@") #13
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %285, label %272

272:                                              ; preds = %268
  %273 = load i32, ptr %9, align 4
  %274 = load float, ptr %4, align 4
  %275 = call i32 @set1d(ptr noundef @a, float noundef %274, i32 noundef %273)
  %276 = load i32, ptr %9, align 4
  %277 = load float, ptr %7, align 4
  %278 = call i32 @set1d(ptr noundef @b, float noundef %277, i32 noundef %276)
  %279 = load i32, ptr %9, align 4
  %280 = load float, ptr %6, align 4
  %281 = call i32 @set1d(ptr noundef @c, float noundef %280, i32 noundef %279)
  %282 = load i32, ptr %9, align 4
  %283 = load float, ptr %6, align 4
  %284 = call i32 @set1d(ptr noundef @d, float noundef %283, i32 noundef %282)
  br label %2039

285:                                              ; preds = %268
  %286 = load ptr, ptr %2, align 8
  %287 = call i32 @strcmp(ptr noundef %286, ptr noundef @"??_C@_05NHJEMEP@s131?5?$AA@") #13
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %296, label %289

289:                                              ; preds = %285
  %290 = load i32, ptr %9, align 4
  %291 = load float, ptr %6, align 4
  %292 = call i32 @set1d(ptr noundef @a, float noundef %291, i32 noundef %290)
  %293 = load i32, ptr %11, align 4
  %294 = load float, ptr %3, align 4
  %295 = call i32 @set1d(ptr noundef @b, float noundef %294, i32 noundef %293)
  br label %2038

296:                                              ; preds = %285
  %297 = load ptr, ptr %2, align 8
  %298 = call i32 @strcmp(ptr noundef %297, ptr noundef @"??_C@_05PDPPCBG@s132?5?$AA@") #13
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %310, label %300

300:                                              ; preds = %296
  %301 = load i32, ptr %9, align 4
  %302 = load float, ptr %6, align 4
  %303 = call i32 @set2d(ptr noundef @aa, float noundef %302, i32 noundef %301)
  %304 = load i32, ptr %10, align 4
  %305 = load float, ptr %3, align 4
  %306 = call i32 @set1d(ptr noundef @b, float noundef %305, i32 noundef %304)
  %307 = load i32, ptr %10, align 4
  %308 = load float, ptr %3, align 4
  %309 = call i32 @set1d(ptr noundef @c, float noundef %308, i32 noundef %307)
  br label %2037

310:                                              ; preds = %296
  %311 = load ptr, ptr %2, align 8
  %312 = call i32 @strcmp(ptr noundef %311, ptr noundef @"??_C@_05JAKOHEPG@s141?5?$AA@") #13
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %321, label %314

314:                                              ; preds = %310
  %315 = load i32, ptr %9, align 4
  %316 = load float, ptr %6, align 4
  %317 = call i32 @set1ds(i32 noundef 1024000000, ptr noundef @array, float noundef %316, i32 noundef %315)
  %318 = load i32, ptr %11, align 4
  %319 = load float, ptr %3, align 4
  %320 = call i32 @set2d(ptr noundef @bb, float noundef %319, i32 noundef %318)
  br label %2036

321:                                              ; preds = %310
  %322 = load ptr, ptr %2, align 8
  %323 = call i32 @strcmp(ptr noundef %322, ptr noundef @"??_C@_05CIBCBDJD@s151?5?$AA@") #13
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %332, label %325

325:                                              ; preds = %321
  %326 = load i32, ptr %9, align 4
  %327 = load float, ptr %6, align 4
  %328 = call i32 @set1d(ptr noundef @a, float noundef %327, i32 noundef %326)
  %329 = load i32, ptr %11, align 4
  %330 = load float, ptr %3, align 4
  %331 = call i32 @set1d(ptr noundef @b, float noundef %330, i32 noundef %329)
  br label %2035

332:                                              ; preds = %321
  %333 = load ptr, ptr %2, align 8
  %334 = call i32 @strcmp(ptr noundef %333, ptr noundef @"??_C@_05CKFEKNMK@s152?5?$AA@") #13
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %352, label %336

336:                                              ; preds = %332
  %337 = load i32, ptr %9, align 4
  %338 = load float, ptr %6, align 4
  %339 = call i32 @set1d(ptr noundef @a, float noundef %338, i32 noundef %337)
  %340 = load i32, ptr %9, align 4
  %341 = load float, ptr %4, align 4
  %342 = call i32 @set1d(ptr noundef @b, float noundef %341, i32 noundef %340)
  %343 = load i32, ptr %10, align 4
  %344 = load float, ptr %3, align 4
  %345 = call i32 @set1d(ptr noundef @c, float noundef %344, i32 noundef %343)
  %346 = load i32, ptr %10, align 4
  %347 = load float, ptr %3, align 4
  %348 = call i32 @set1d(ptr noundef @d, float noundef %347, i32 noundef %346)
  %349 = load i32, ptr %10, align 4
  %350 = load float, ptr %3, align 4
  %351 = call i32 @set1d(ptr noundef @e, float noundef %350, i32 noundef %349)
  br label %2034

352:                                              ; preds = %332
  %353 = load ptr, ptr %2, align 8
  %354 = call i32 @strcmp(ptr noundef %353, ptr noundef @"??_C@_05DKKHLMHN@s161?5?$AA@") #13
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %374, label %356

356:                                              ; preds = %352
  %357 = load i32, ptr %9, align 4
  %358 = load float, ptr %6, align 4
  %359 = call i32 @set1d(ptr noundef @a, float noundef %358, i32 noundef %357)
  %360 = load float, ptr %6, align 4
  %361 = call i32 @set1ds(i32 noundef 16000, ptr noundef @b, float noundef %360, i32 noundef 2)
  %362 = load float, ptr %6, align 4
  %363 = fneg float %362
  %364 = call i32 @set1ds(i32 noundef 16000, ptr noundef getelementptr inbounds nuw (i8, ptr @b, i64 4), float noundef %363, i32 noundef 2)
  %365 = load i32, ptr %9, align 4
  %366 = load float, ptr %6, align 4
  %367 = call i32 @set1d(ptr noundef @c, float noundef %366, i32 noundef %365)
  %368 = load i32, ptr %10, align 4
  %369 = load float, ptr %3, align 4
  %370 = call i32 @set1d(ptr noundef @d, float noundef %369, i32 noundef %368)
  %371 = load i32, ptr %10, align 4
  %372 = load float, ptr %3, align 4
  %373 = call i32 @set1d(ptr noundef @e, float noundef %372, i32 noundef %371)
  br label %2033

374:                                              ; preds = %352
  %375 = load ptr, ptr %2, align 8
  %376 = call i32 @strcmp(ptr noundef %375, ptr noundef @"??_C@_05DIOBACCE@s162?5?$AA@") #13
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %388, label %378

378:                                              ; preds = %374
  %379 = load i32, ptr %9, align 4
  %380 = load float, ptr %6, align 4
  %381 = call i32 @set1d(ptr noundef @a, float noundef %380, i32 noundef %379)
  %382 = load i32, ptr %10, align 4
  %383 = load float, ptr %3, align 4
  %384 = call i32 @set1d(ptr noundef @b, float noundef %383, i32 noundef %382)
  %385 = load i32, ptr %10, align 4
  %386 = load float, ptr %3, align 4
  %387 = call i32 @set1d(ptr noundef @c, float noundef %386, i32 noundef %385)
  br label %2032

388:                                              ; preds = %374
  %389 = load ptr, ptr %2, align 8
  %390 = call i32 @strcmp(ptr noundef %389, ptr noundef @"??_C@_05ICBLNLBI@s171?5?$AA@") #13
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %399, label %392

392:                                              ; preds = %388
  %393 = load i32, ptr %9, align 4
  %394 = load float, ptr %6, align 4
  %395 = call i32 @set1d(ptr noundef @a, float noundef %394, i32 noundef %393)
  %396 = load i32, ptr %11, align 4
  %397 = load float, ptr %3, align 4
  %398 = call i32 @set1d(ptr noundef @b, float noundef %397, i32 noundef %396)
  br label %2031

399:                                              ; preds = %388
  %400 = load ptr, ptr %2, align 8
  %401 = call i32 @strcmp(ptr noundef %400, ptr noundef @"??_C@_05IAFNGFEB@s172?5?$AA@") #13
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %410, label %403

403:                                              ; preds = %399
  %404 = load i32, ptr %9, align 4
  %405 = load float, ptr %6, align 4
  %406 = call i32 @set1d(ptr noundef @a, float noundef %405, i32 noundef %404)
  %407 = load i32, ptr %11, align 4
  %408 = load float, ptr %3, align 4
  %409 = call i32 @set1d(ptr noundef @b, float noundef %408, i32 noundef %407)
  br label %2030

410:                                              ; preds = %399
  %411 = load ptr, ptr %2, align 8
  %412 = call i32 @strcmp(ptr noundef %411, ptr noundef @"??_C@_05IBJPAPHG@s173?5?$AA@") #13
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %421, label %414

414:                                              ; preds = %410
  %415 = load i32, ptr %9, align 4
  %416 = load float, ptr %6, align 4
  %417 = call i32 @set1d(ptr noundef @a, float noundef %416, i32 noundef %415)
  %418 = load i32, ptr %11, align 4
  %419 = load float, ptr %3, align 4
  %420 = call i32 @set1d(ptr noundef @b, float noundef %419, i32 noundef %418)
  br label %2029

421:                                              ; preds = %410
  %422 = load ptr, ptr %2, align 8
  %423 = call i32 @strcmp(ptr noundef %422, ptr noundef @"??_C@_05IENABJPD@s174?5?$AA@") #13
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %432, label %425

425:                                              ; preds = %421
  %426 = load i32, ptr %9, align 4
  %427 = load float, ptr %6, align 4
  %428 = call i32 @set1d(ptr noundef @a, float noundef %427, i32 noundef %426)
  %429 = load i32, ptr %11, align 4
  %430 = load float, ptr %3, align 4
  %431 = call i32 @set1d(ptr noundef @b, float noundef %430, i32 noundef %429)
  br label %2028

432:                                              ; preds = %421
  %433 = load ptr, ptr %2, align 8
  %434 = call i32 @strcmp(ptr noundef %433, ptr noundef @"??_C@_05IFBCHDME@s175?5?$AA@") #13
  %435 = icmp ne i32 %434, 0
  br i1 %435, label %443, label %436

436:                                              ; preds = %432
  %437 = load i32, ptr %9, align 4
  %438 = load float, ptr %6, align 4
  %439 = call i32 @set1d(ptr noundef @a, float noundef %438, i32 noundef %437)
  %440 = load i32, ptr %11, align 4
  %441 = load float, ptr %3, align 4
  %442 = call i32 @set1d(ptr noundef @b, float noundef %441, i32 noundef %440)
  br label %2027

443:                                              ; preds = %432
  %444 = load ptr, ptr %2, align 8
  %445 = call i32 @strcmp(ptr noundef %444, ptr noundef @"??_C@_05IHFEMNJN@s176?5?$AA@") #13
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %457, label %447

447:                                              ; preds = %443
  %448 = load i32, ptr %9, align 4
  %449 = load float, ptr %6, align 4
  %450 = call i32 @set1d(ptr noundef @a, float noundef %449, i32 noundef %448)
  %451 = load i32, ptr %10, align 4
  %452 = load float, ptr %3, align 4
  %453 = call i32 @set1d(ptr noundef @b, float noundef %452, i32 noundef %451)
  %454 = load i32, ptr %10, align 4
  %455 = load float, ptr %3, align 4
  %456 = call i32 @set1d(ptr noundef @c, float noundef %455, i32 noundef %454)
  br label %2026

457:                                              ; preds = %443
  %458 = load ptr, ptr %2, align 8
  %459 = call i32 @strcmp(ptr noundef %458, ptr noundef @"??_C@_05OANAPOBE@s211?5?$AA@") #13
  %460 = icmp ne i32 %459, 0
  br i1 %460, label %477, label %461

461:                                              ; preds = %457
  %462 = load i32, ptr %9, align 4
  %463 = load float, ptr %4, align 4
  %464 = call i32 @set1d(ptr noundef @a, float noundef %463, i32 noundef %462)
  %465 = load i32, ptr %9, align 4
  %466 = load float, ptr %6, align 4
  %467 = call i32 @set1d(ptr noundef @b, float noundef %466, i32 noundef %465)
  %468 = load i32, ptr %10, align 4
  %469 = load float, ptr %3, align 4
  %470 = call i32 @set1d(ptr noundef @c, float noundef %469, i32 noundef %468)
  %471 = load i32, ptr %10, align 4
  %472 = load float, ptr %3, align 4
  %473 = call i32 @set1d(ptr noundef @d, float noundef %472, i32 noundef %471)
  %474 = load i32, ptr %10, align 4
  %475 = load float, ptr %3, align 4
  %476 = call i32 @set1d(ptr noundef @e, float noundef %475, i32 noundef %474)
  br label %2025

477:                                              ; preds = %457
  %478 = load ptr, ptr %2, align 8
  %479 = call i32 @strcmp(ptr noundef %478, ptr noundef @"??_C@_05OCJGEAEN@s212?5?$AA@") #13
  %480 = icmp ne i32 %479, 0
  br i1 %480, label %494, label %481

481:                                              ; preds = %477
  %482 = load i32, ptr %10, align 4
  %483 = load float, ptr %3, align 4
  %484 = call i32 @set1d(ptr noundef @a, float noundef %483, i32 noundef %482)
  %485 = load i32, ptr %9, align 4
  %486 = load float, ptr %6, align 4
  %487 = call i32 @set1d(ptr noundef @b, float noundef %486, i32 noundef %485)
  %488 = load i32, ptr %9, align 4
  %489 = load float, ptr %6, align 4
  %490 = call i32 @set1d(ptr noundef @c, float noundef %489, i32 noundef %488)
  %491 = load i32, ptr %10, align 4
  %492 = load float, ptr %3, align 4
  %493 = call i32 @set1d(ptr noundef @d, float noundef %492, i32 noundef %491)
  br label %2024

494:                                              ; preds = %477
  %495 = load ptr, ptr %2, align 8
  %496 = call i32 @strcmp(ptr noundef %495, ptr noundef @"??_C@_05PCGFFBPK@s221?5?$AA@") #13
  %497 = icmp ne i32 %496, 0
  br i1 %497, label %511, label %498

498:                                              ; preds = %494
  %499 = load i32, ptr %9, align 4
  %500 = load float, ptr %6, align 4
  %501 = call i32 @set1d(ptr noundef @a, float noundef %500, i32 noundef %499)
  %502 = load i32, ptr %10, align 4
  %503 = load float, ptr %3, align 4
  %504 = call i32 @set1d(ptr noundef @b, float noundef %503, i32 noundef %502)
  %505 = load i32, ptr %10, align 4
  %506 = load float, ptr %3, align 4
  %507 = call i32 @set1d(ptr noundef @c, float noundef %506, i32 noundef %505)
  %508 = load i32, ptr %10, align 4
  %509 = load float, ptr %3, align 4
  %510 = call i32 @set1d(ptr noundef @d, float noundef %509, i32 noundef %508)
  br label %2023

511:                                              ; preds = %494
  %512 = load ptr, ptr %2, align 8
  %513 = call i32 @strcmp(ptr noundef %512, ptr noundef @"??_C@_05PACDOPKD@s222?5?$AA@") #13
  %514 = icmp ne i32 %513, 0
  br i1 %514, label %525, label %515

515:                                              ; preds = %511
  %516 = load i32, ptr %9, align 4
  %517 = load float, ptr %4, align 4
  %518 = call i32 @set1d(ptr noundef @a, float noundef %517, i32 noundef %516)
  %519 = load i32, ptr %9, align 4
  %520 = load float, ptr %6, align 4
  %521 = call i32 @set1d(ptr noundef @b, float noundef %520, i32 noundef %519)
  %522 = load i32, ptr %9, align 4
  %523 = load float, ptr %6, align 4
  %524 = call i32 @set1d(ptr noundef @c, float noundef %523, i32 noundef %522)
  br label %2022

525:                                              ; preds = %511
  %526 = load ptr, ptr %2, align 8
  %527 = call i32 @strcmp(ptr noundef %526, ptr noundef @"??_C@_05EKNJDGJP@s231?5?$AA@") #13
  %528 = icmp ne i32 %527, 0
  br i1 %528, label %536, label %529

529:                                              ; preds = %525
  %530 = load i32, ptr %9, align 4
  %531 = load float, ptr %6, align 4
  %532 = call i32 @set2d(ptr noundef @aa, float noundef %531, i32 noundef %530)
  %533 = load i32, ptr %11, align 4
  %534 = load float, ptr %3, align 4
  %535 = call i32 @set2d(ptr noundef @bb, float noundef %534, i32 noundef %533)
  br label %2021

536:                                              ; preds = %525
  %537 = load ptr, ptr %2, align 8
  %538 = call i32 @strcmp(ptr noundef %537, ptr noundef @"??_C@_05EIJPIIMG@s232?5?$AA@") #13
  %539 = icmp ne i32 %538, 0
  br i1 %539, label %547, label %540

540:                                              ; preds = %536
  %541 = load i32, ptr %9, align 4
  %542 = load float, ptr %6, align 4
  %543 = call i32 @set2d(ptr noundef @aa, float noundef %542, i32 noundef %541)
  %544 = load i32, ptr %9, align 4
  %545 = load float, ptr %4, align 4
  %546 = call i32 @set2d(ptr noundef @bb, float noundef %545, i32 noundef %544)
  br label %2020

547:                                              ; preds = %536
  %548 = load ptr, ptr %2, align 8
  %549 = call i32 @strcmp(ptr noundef %548, ptr noundef @"??_C@_05EJFNOCPB@s233?5?$AA@") #13
  %550 = icmp ne i32 %549, 0
  br i1 %550, label %561, label %551

551:                                              ; preds = %547
  %552 = load i32, ptr %10, align 4
  %553 = load float, ptr %3, align 4
  %554 = call i32 @set2d(ptr noundef @aa, float noundef %553, i32 noundef %552)
  %555 = load i32, ptr %10, align 4
  %556 = load float, ptr %3, align 4
  %557 = call i32 @set2d(ptr noundef @bb, float noundef %556, i32 noundef %555)
  %558 = load i32, ptr %10, align 4
  %559 = load float, ptr %3, align 4
  %560 = call i32 @set2d(ptr noundef @cc, float noundef %559, i32 noundef %558)
  br label %2019

561:                                              ; preds = %547
  %562 = load ptr, ptr %2, align 8
  %563 = call i32 @strcmp(ptr noundef %562, ptr noundef @"??_C@_05EMBCPEHE@s234?5?$AA@") #13
  %564 = icmp ne i32 %563, 0
  br i1 %564, label %575, label %565

565:                                              ; preds = %561
  %566 = load i32, ptr %9, align 4
  %567 = load float, ptr %6, align 4
  %568 = call i32 @set2d(ptr noundef @aa, float noundef %567, i32 noundef %566)
  %569 = load i32, ptr %10, align 4
  %570 = load float, ptr %3, align 4
  %571 = call i32 @set2d(ptr noundef @bb, float noundef %570, i32 noundef %569)
  %572 = load i32, ptr %10, align 4
  %573 = load float, ptr %3, align 4
  %574 = call i32 @set2d(ptr noundef @cc, float noundef %573, i32 noundef %572)
  br label %2018

575:                                              ; preds = %561
  %576 = load ptr, ptr %2, align 8
  %577 = call i32 @strcmp(ptr noundef %576, ptr noundef @"??_C@_05ENNAJOED@s235?5?$AA@") #13
  %578 = icmp ne i32 %577, 0
  br i1 %578, label %595, label %579

579:                                              ; preds = %575
  %580 = load i32, ptr %9, align 4
  %581 = load float, ptr %6, align 4
  %582 = call i32 @set1d(ptr noundef @a, float noundef %581, i32 noundef %580)
  %583 = load i32, ptr %10, align 4
  %584 = load float, ptr %3, align 4
  %585 = call i32 @set1d(ptr noundef @b, float noundef %584, i32 noundef %583)
  %586 = load i32, ptr %10, align 4
  %587 = load float, ptr %3, align 4
  %588 = call i32 @set1d(ptr noundef @c, float noundef %587, i32 noundef %586)
  %589 = load i32, ptr %9, align 4
  %590 = load float, ptr %6, align 4
  %591 = call i32 @set2d(ptr noundef @aa, float noundef %590, i32 noundef %589)
  %592 = load i32, ptr %11, align 4
  %593 = load float, ptr %3, align 4
  %594 = call i32 @set2d(ptr noundef @bb, float noundef %593, i32 noundef %592)
  br label %2017

595:                                              ; preds = %575
  %596 = load ptr, ptr %2, align 8
  %597 = call i32 @strcmp(ptr noundef %596, ptr noundef @"??_C@_05NHAOAOCG@s241?5?$AA@") #13
  %598 = icmp ne i32 %597, 0
  br i1 %598, label %612, label %599

599:                                              ; preds = %595
  %600 = load i32, ptr %9, align 4
  %601 = load float, ptr %6, align 4
  %602 = call i32 @set1d(ptr noundef @a, float noundef %601, i32 noundef %600)
  %603 = load i32, ptr %9, align 4
  %604 = load float, ptr %6, align 4
  %605 = call i32 @set1d(ptr noundef @b, float noundef %604, i32 noundef %603)
  %606 = load i32, ptr %9, align 4
  %607 = load float, ptr %6, align 4
  %608 = call i32 @set1d(ptr noundef @c, float noundef %607, i32 noundef %606)
  %609 = load i32, ptr %9, align 4
  %610 = load float, ptr %6, align 4
  %611 = call i32 @set1d(ptr noundef @d, float noundef %610, i32 noundef %609)
  br label %2016

612:                                              ; preds = %595
  %613 = load ptr, ptr %2, align 8
  %614 = call i32 @strcmp(ptr noundef %613, ptr noundef @"??_C@_05NFEILAHP@s242?5?$AA@") #13
  %615 = icmp ne i32 %614, 0
  br i1 %615, label %629, label %616

616:                                              ; preds = %612
  %617 = load i32, ptr %9, align 4
  %618 = load float, ptr %8, align 4
  %619 = call i32 @set1d(ptr noundef @a, float noundef %618, i32 noundef %617)
  %620 = load i32, ptr %9, align 4
  %621 = load float, ptr %8, align 4
  %622 = call i32 @set1d(ptr noundef @b, float noundef %621, i32 noundef %620)
  %623 = load i32, ptr %9, align 4
  %624 = load float, ptr %8, align 4
  %625 = call i32 @set1d(ptr noundef @c, float noundef %624, i32 noundef %623)
  %626 = load i32, ptr %9, align 4
  %627 = load float, ptr %8, align 4
  %628 = call i32 @set1d(ptr noundef @d, float noundef %627, i32 noundef %626)
  br label %2015

629:                                              ; preds = %612
  %630 = load ptr, ptr %2, align 8
  %631 = call i32 @strcmp(ptr noundef %630, ptr noundef @"??_C@_05NEIKNKEI@s243?5?$AA@") #13
  %632 = icmp ne i32 %631, 0
  br i1 %632, label %649, label %633

633:                                              ; preds = %629
  %634 = load i32, ptr %9, align 4
  %635 = load float, ptr %4, align 4
  %636 = call i32 @set1d(ptr noundef @a, float noundef %635, i32 noundef %634)
  %637 = load i32, ptr %9, align 4
  %638 = load float, ptr %6, align 4
  %639 = call i32 @set1d(ptr noundef @b, float noundef %638, i32 noundef %637)
  %640 = load i32, ptr %10, align 4
  %641 = load float, ptr %3, align 4
  %642 = call i32 @set1d(ptr noundef @c, float noundef %641, i32 noundef %640)
  %643 = load i32, ptr %10, align 4
  %644 = load float, ptr %3, align 4
  %645 = call i32 @set1d(ptr noundef @d, float noundef %644, i32 noundef %643)
  %646 = load i32, ptr %10, align 4
  %647 = load float, ptr %3, align 4
  %648 = call i32 @set1d(ptr noundef @e, float noundef %647, i32 noundef %646)
  br label %2014

649:                                              ; preds = %629
  %650 = load ptr, ptr %2, align 8
  %651 = call i32 @strcmp(ptr noundef %650, ptr noundef @"??_C@_05NBMFMMMN@s244?5?$AA@") #13
  %652 = icmp ne i32 %651, 0
  br i1 %652, label %666, label %653

653:                                              ; preds = %649
  %654 = load i32, ptr %9, align 4
  %655 = load float, ptr %4, align 4
  %656 = call i32 @set1d(ptr noundef @a, float noundef %655, i32 noundef %654)
  %657 = load i32, ptr %9, align 4
  %658 = load float, ptr %6, align 4
  %659 = call i32 @set1d(ptr noundef @b, float noundef %658, i32 noundef %657)
  %660 = load i32, ptr %9, align 4
  %661 = load float, ptr %8, align 4
  %662 = call i32 @set1d(ptr noundef @c, float noundef %661, i32 noundef %660)
  %663 = load i32, ptr %9, align 4
  %664 = load float, ptr %8, align 4
  %665 = call i32 @set1d(ptr noundef @d, float noundef %664, i32 noundef %663)
  br label %2013

666:                                              ; preds = %649
  %667 = load ptr, ptr %2, align 8
  %668 = call i32 @strcmp(ptr noundef %667, ptr noundef @"??_C@_05GPLCGJED@s251?5?$AA@") #13
  %669 = icmp ne i32 %668, 0
  br i1 %669, label %686, label %670

670:                                              ; preds = %666
  %671 = load i32, ptr %9, align 4
  %672 = load float, ptr %4, align 4
  %673 = call i32 @set1d(ptr noundef @a, float noundef %672, i32 noundef %671)
  %674 = load i32, ptr %9, align 4
  %675 = load float, ptr %6, align 4
  %676 = call i32 @set1d(ptr noundef @b, float noundef %675, i32 noundef %674)
  %677 = load i32, ptr %10, align 4
  %678 = load float, ptr %3, align 4
  %679 = call i32 @set1d(ptr noundef @c, float noundef %678, i32 noundef %677)
  %680 = load i32, ptr %10, align 4
  %681 = load float, ptr %3, align 4
  %682 = call i32 @set1d(ptr noundef @d, float noundef %681, i32 noundef %680)
  %683 = load i32, ptr %10, align 4
  %684 = load float, ptr %3, align 4
  %685 = call i32 @set1d(ptr noundef @e, float noundef %684, i32 noundef %683)
  br label %2012

686:                                              ; preds = %666
  %687 = load ptr, ptr %2, align 8
  %688 = call i32 @strcmp(ptr noundef %687, ptr noundef @"??_C@_05GNPENHBK@s252?5?$AA@") #13
  %689 = icmp ne i32 %688, 0
  br i1 %689, label %700, label %690

690:                                              ; preds = %686
  %691 = load i32, ptr %9, align 4
  %692 = load float, ptr %4, align 4
  %693 = call i32 @set1d(ptr noundef @a, float noundef %692, i32 noundef %691)
  %694 = load i32, ptr %9, align 4
  %695 = load float, ptr %6, align 4
  %696 = call i32 @set1d(ptr noundef @b, float noundef %695, i32 noundef %694)
  %697 = load i32, ptr %9, align 4
  %698 = load float, ptr %6, align 4
  %699 = call i32 @set1d(ptr noundef @c, float noundef %698, i32 noundef %697)
  br label %2011

700:                                              ; preds = %686
  %701 = load ptr, ptr %2, align 8
  %702 = call i32 @strcmp(ptr noundef %701, ptr noundef @"??_C@_05GMDGLNCN@s253?5?$AA@") #13
  %703 = icmp ne i32 %702, 0
  br i1 %703, label %717, label %704

704:                                              ; preds = %700
  %705 = load i32, ptr %9, align 4
  %706 = load float, ptr %6, align 4
  %707 = call i32 @set1d(ptr noundef @a, float noundef %706, i32 noundef %705)
  %708 = load i32, ptr %9, align 4
  %709 = load float, ptr %8, align 4
  %710 = call i32 @set1d(ptr noundef @b, float noundef %709, i32 noundef %708)
  %711 = load i32, ptr %9, align 4
  %712 = load float, ptr %6, align 4
  %713 = call i32 @set1d(ptr noundef @c, float noundef %712, i32 noundef %711)
  %714 = load i32, ptr %10, align 4
  %715 = load float, ptr %3, align 4
  %716 = call i32 @set1d(ptr noundef @d, float noundef %715, i32 noundef %714)
  br label %2010

717:                                              ; preds = %700
  %718 = load ptr, ptr %2, align 8
  %719 = call i32 @strcmp(ptr noundef %718, ptr noundef @"??_C@_05GJHJKLKI@s254?5?$AA@") #13
  %720 = icmp ne i32 %719, 0
  br i1 %720, label %728, label %721

721:                                              ; preds = %717
  %722 = load i32, ptr %9, align 4
  %723 = load float, ptr %4, align 4
  %724 = call i32 @set1d(ptr noundef @a, float noundef %723, i32 noundef %722)
  %725 = load i32, ptr %9, align 4
  %726 = load float, ptr %6, align 4
  %727 = call i32 @set1d(ptr noundef @b, float noundef %726, i32 noundef %725)
  br label %2009

728:                                              ; preds = %717
  %729 = load ptr, ptr %2, align 8
  %730 = call i32 @strcmp(ptr noundef %729, ptr noundef @"??_C@_05GILLMBJP@s255?5?$AA@") #13
  %731 = icmp ne i32 %730, 0
  br i1 %731, label %739, label %732

732:                                              ; preds = %728
  %733 = load i32, ptr %9, align 4
  %734 = load float, ptr %4, align 4
  %735 = call i32 @set1d(ptr noundef @a, float noundef %734, i32 noundef %733)
  %736 = load i32, ptr %9, align 4
  %737 = load float, ptr %6, align 4
  %738 = call i32 @set1d(ptr noundef @b, float noundef %737, i32 noundef %736)
  br label %2008

739:                                              ; preds = %728
  %740 = load ptr, ptr %2, align 8
  %741 = call i32 @strcmp(ptr noundef %740, ptr noundef @"??_C@_05GKPNHPMG@s256?5?$AA@") #13
  %742 = icmp ne i32 %741, 0
  br i1 %742, label %753, label %743

743:                                              ; preds = %739
  %744 = load i32, ptr %9, align 4
  %745 = load float, ptr %6, align 4
  %746 = call i32 @set1d(ptr noundef @a, float noundef %745, i32 noundef %744)
  %747 = load i32, ptr %9, align 4
  %748 = load float, ptr %7, align 4
  %749 = call i32 @set2d(ptr noundef @aa, float noundef %748, i32 noundef %747)
  %750 = load i32, ptr %9, align 4
  %751 = load float, ptr %6, align 4
  %752 = call i32 @set2d(ptr noundef @bb, float noundef %751, i32 noundef %750)
  br label %2007

753:                                              ; preds = %739
  %754 = load ptr, ptr %2, align 8
  %755 = call i32 @strcmp(ptr noundef %754, ptr noundef @"??_C@_05GLDPBFPB@s257?5?$AA@") #13
  %756 = icmp ne i32 %755, 0
  br i1 %756, label %767, label %757

757:                                              ; preds = %753
  %758 = load i32, ptr %9, align 4
  %759 = load float, ptr %6, align 4
  %760 = call i32 @set1d(ptr noundef @a, float noundef %759, i32 noundef %758)
  %761 = load i32, ptr %9, align 4
  %762 = load float, ptr %7, align 4
  %763 = call i32 @set2d(ptr noundef @aa, float noundef %762, i32 noundef %761)
  %764 = load i32, ptr %9, align 4
  %765 = load float, ptr %6, align 4
  %766 = call i32 @set2d(ptr noundef @bb, float noundef %765, i32 noundef %764)
  br label %2006

767:                                              ; preds = %753
  %768 = load ptr, ptr %2, align 8
  %769 = call i32 @strcmp(ptr noundef %768, ptr noundef @"??_C@_05GAGDFCMM@s258?5?$AA@") #13
  %770 = icmp ne i32 %769, 0
  br i1 %770, label %790, label %771

771:                                              ; preds = %767
  %772 = load i32, ptr %10, align 4
  %773 = load float, ptr %3, align 4
  %774 = call i32 @set1d(ptr noundef @a, float noundef %773, i32 noundef %772)
  %775 = load i32, ptr %9, align 4
  %776 = load float, ptr %4, align 4
  %777 = call i32 @set1d(ptr noundef @b, float noundef %776, i32 noundef %775)
  %778 = load i32, ptr %10, align 4
  %779 = load float, ptr %3, align 4
  %780 = call i32 @set1d(ptr noundef @c, float noundef %779, i32 noundef %778)
  %781 = load i32, ptr %10, align 4
  %782 = load float, ptr %3, align 4
  %783 = call i32 @set1d(ptr noundef @d, float noundef %782, i32 noundef %781)
  %784 = load i32, ptr %9, align 4
  %785 = load float, ptr %4, align 4
  %786 = call i32 @set1d(ptr noundef @e, float noundef %785, i32 noundef %784)
  %787 = load i32, ptr %10, align 4
  %788 = load float, ptr %3, align 4
  %789 = call i32 @set2d(ptr noundef @aa, float noundef %788, i32 noundef %787)
  br label %2005

790:                                              ; preds = %767
  %791 = load ptr, ptr %2, align 8
  %792 = call i32 @strcmp(ptr noundef %791, ptr noundef @"??_C@_05HNAHMGKN@s261?5?$AA@") #13
  %793 = icmp ne i32 %792, 0
  br i1 %793, label %807, label %794

794:                                              ; preds = %790
  %795 = load i32, ptr %9, align 4
  %796 = load float, ptr %6, align 4
  %797 = call i32 @set1d(ptr noundef @a, float noundef %796, i32 noundef %795)
  %798 = load i32, ptr %11, align 4
  %799 = load float, ptr %3, align 4
  %800 = call i32 @set1d(ptr noundef @b, float noundef %799, i32 noundef %798)
  %801 = load i32, ptr %11, align 4
  %802 = load float, ptr %3, align 4
  %803 = call i32 @set1d(ptr noundef @c, float noundef %802, i32 noundef %801)
  %804 = load i32, ptr %9, align 4
  %805 = load float, ptr %6, align 4
  %806 = call i32 @set1d(ptr noundef @d, float noundef %805, i32 noundef %804)
  br label %2004

807:                                              ; preds = %790
  %808 = load ptr, ptr %2, align 8
  %809 = call i32 @strcmp(ptr noundef %808, ptr noundef @"??_C@_05MFLLKBMI@s271?5?$AA@") #13
  %810 = icmp ne i32 %809, 0
  br i1 %810, label %821, label %811

811:                                              ; preds = %807
  %812 = load i32, ptr %9, align 4
  %813 = load float, ptr %6, align 4
  %814 = call i32 @set1d(ptr noundef @a, float noundef %813, i32 noundef %812)
  %815 = load i32, ptr %10, align 4
  %816 = load float, ptr %3, align 4
  %817 = call i32 @set1d(ptr noundef @b, float noundef %816, i32 noundef %815)
  %818 = load i32, ptr %10, align 4
  %819 = load float, ptr %3, align 4
  %820 = call i32 @set1d(ptr noundef @c, float noundef %819, i32 noundef %818)
  br label %2003

821:                                              ; preds = %807
  %822 = load ptr, ptr %2, align 8
  %823 = call i32 @strcmp(ptr noundef %822, ptr noundef @"??_C@_05MHPNBPJB@s272?5?$AA@") #13
  %824 = icmp ne i32 %823, 0
  br i1 %824, label %841, label %825

825:                                              ; preds = %821
  %826 = load i32, ptr %9, align 4
  %827 = load float, ptr %6, align 4
  %828 = call i32 @set1d(ptr noundef @a, float noundef %827, i32 noundef %826)
  %829 = load i32, ptr %9, align 4
  %830 = load float, ptr %6, align 4
  %831 = call i32 @set1d(ptr noundef @b, float noundef %830, i32 noundef %829)
  %832 = load i32, ptr %10, align 4
  %833 = load float, ptr %3, align 4
  %834 = call i32 @set1d(ptr noundef @c, float noundef %833, i32 noundef %832)
  %835 = load i32, ptr %10, align 4
  %836 = load float, ptr %3, align 4
  %837 = call i32 @set1d(ptr noundef @d, float noundef %836, i32 noundef %835)
  %838 = load i32, ptr %9, align 4
  %839 = load float, ptr %7, align 4
  %840 = call i32 @set1d(ptr noundef @e, float noundef %839, i32 noundef %838)
  br label %2002

841:                                              ; preds = %821
  %842 = load ptr, ptr %2, align 8
  %843 = call i32 @strcmp(ptr noundef %842, ptr noundef @"??_C@_05MGDPHFKG@s273?5?$AA@") #13
  %844 = icmp ne i32 %843, 0
  br i1 %844, label %861, label %845

845:                                              ; preds = %841
  %846 = load i32, ptr %9, align 4
  %847 = load float, ptr %6, align 4
  %848 = call i32 @set1d(ptr noundef @a, float noundef %847, i32 noundef %846)
  %849 = load i32, ptr %9, align 4
  %850 = load float, ptr %6, align 4
  %851 = call i32 @set1d(ptr noundef @b, float noundef %850, i32 noundef %849)
  %852 = load i32, ptr %9, align 4
  %853 = load float, ptr %6, align 4
  %854 = call i32 @set1d(ptr noundef @c, float noundef %853, i32 noundef %852)
  %855 = load i32, ptr %9, align 4
  %856 = load float, ptr %8, align 4
  %857 = call i32 @set1d(ptr noundef @d, float noundef %856, i32 noundef %855)
  %858 = load i32, ptr %10, align 4
  %859 = load float, ptr %3, align 4
  %860 = call i32 @set1d(ptr noundef @e, float noundef %859, i32 noundef %858)
  br label %2001

861:                                              ; preds = %841
  %862 = load ptr, ptr %2, align 8
  %863 = call i32 @strcmp(ptr noundef %862, ptr noundef @"??_C@_05MDHAGDCD@s274?5?$AA@") #13
  %864 = icmp ne i32 %863, 0
  br i1 %864, label %881, label %865

865:                                              ; preds = %861
  %866 = load i32, ptr %9, align 4
  %867 = load float, ptr %4, align 4
  %868 = call i32 @set1d(ptr noundef @a, float noundef %867, i32 noundef %866)
  %869 = load i32, ptr %9, align 4
  %870 = load float, ptr %6, align 4
  %871 = call i32 @set1d(ptr noundef @b, float noundef %870, i32 noundef %869)
  %872 = load i32, ptr %9, align 4
  %873 = load float, ptr %6, align 4
  %874 = call i32 @set1d(ptr noundef @c, float noundef %873, i32 noundef %872)
  %875 = load i32, ptr %10, align 4
  %876 = load float, ptr %3, align 4
  %877 = call i32 @set1d(ptr noundef @d, float noundef %876, i32 noundef %875)
  %878 = load i32, ptr %10, align 4
  %879 = load float, ptr %3, align 4
  %880 = call i32 @set1d(ptr noundef @e, float noundef %879, i32 noundef %878)
  br label %2000

881:                                              ; preds = %861
  %882 = load ptr, ptr %2, align 8
  %883 = call i32 @strcmp(ptr noundef %882, ptr noundef @"??_C@_05MCLCAJBE@s275?5?$AA@") #13
  %884 = icmp ne i32 %883, 0
  br i1 %884, label %895, label %885

885:                                              ; preds = %881
  %886 = load i32, ptr %9, align 4
  %887 = load float, ptr %6, align 4
  %888 = call i32 @set2d(ptr noundef @aa, float noundef %887, i32 noundef %886)
  %889 = load i32, ptr %9, align 4
  %890 = load float, ptr %8, align 4
  %891 = call i32 @set2d(ptr noundef @bb, float noundef %890, i32 noundef %889)
  %892 = load i32, ptr %9, align 4
  %893 = load float, ptr %8, align 4
  %894 = call i32 @set2d(ptr noundef @cc, float noundef %893, i32 noundef %892)
  br label %1999

895:                                              ; preds = %881
  %896 = load ptr, ptr %2, align 8
  %897 = call i32 @strcmp(ptr noundef %896, ptr noundef @"??_C@_05MAPELHEN@s276?5?$AA@") #13
  %898 = icmp ne i32 %897, 0
  br i1 %898, label %912, label %899

899:                                              ; preds = %895
  %900 = load i32, ptr %9, align 4
  %901 = load float, ptr %6, align 4
  %902 = call i32 @set1d(ptr noundef @a, float noundef %901, i32 noundef %900)
  %903 = load i32, ptr %10, align 4
  %904 = load float, ptr %3, align 4
  %905 = call i32 @set1d(ptr noundef @b, float noundef %904, i32 noundef %903)
  %906 = load i32, ptr %10, align 4
  %907 = load float, ptr %3, align 4
  %908 = call i32 @set1d(ptr noundef @c, float noundef %907, i32 noundef %906)
  %909 = load i32, ptr %10, align 4
  %910 = load float, ptr %3, align 4
  %911 = call i32 @set1d(ptr noundef @d, float noundef %910, i32 noundef %909)
  br label %1998

912:                                              ; preds = %895
  %913 = load ptr, ptr %2, align 8
  %914 = call i32 @strcmp(ptr noundef %913, ptr noundef @"??_C@_05MBDGNNHK@s277?5?$AA@") #13
  %915 = icmp ne i32 %914, 0
  br i1 %915, label %936, label %916

916:                                              ; preds = %912
  %917 = load i32, ptr %9, align 4
  %918 = load float, ptr %6, align 4
  %919 = call i32 @set1d(ptr noundef @a, float noundef %918, i32 noundef %917)
  %920 = load i32, ptr %9, align 4
  %921 = load float, ptr %6, align 4
  %922 = call i32 @set1ds(i32 noundef 16000, ptr noundef @b, float noundef %921, i32 noundef %920)
  %923 = load i32, ptr %9, align 4
  %924 = load float, ptr %6, align 4
  %925 = fneg float %924
  %926 = call i32 @set1ds(i32 noundef 16000, ptr noundef getelementptr inbounds nuw (i8, ptr @b, i64 64000), float noundef %925, i32 noundef %923)
  %927 = load i32, ptr %10, align 4
  %928 = load float, ptr %3, align 4
  %929 = call i32 @set1d(ptr noundef @c, float noundef %928, i32 noundef %927)
  %930 = load i32, ptr %10, align 4
  %931 = load float, ptr %3, align 4
  %932 = call i32 @set1d(ptr noundef @d, float noundef %931, i32 noundef %930)
  %933 = load i32, ptr %10, align 4
  %934 = load float, ptr %3, align 4
  %935 = call i32 @set1d(ptr noundef @e, float noundef %934, i32 noundef %933)
  br label %1997

936:                                              ; preds = %912
  %937 = load ptr, ptr %2, align 8
  %938 = call i32 @strcmp(ptr noundef %937, ptr noundef @"??_C@_05MKGKJKEH@s278?5?$AA@") #13
  %939 = icmp ne i32 %938, 0
  br i1 %939, label %960, label %940

940:                                              ; preds = %936
  %941 = load i32, ptr %9, align 4
  %942 = load float, ptr %6, align 4
  %943 = fneg float %942
  %944 = call i32 @set1ds(i32 noundef 16000, ptr noundef @a, float noundef %943, i32 noundef %941)
  %945 = load i32, ptr %9, align 4
  %946 = load float, ptr %6, align 4
  %947 = call i32 @set1ds(i32 noundef 16000, ptr noundef getelementptr inbounds nuw (i8, ptr @a, i64 64000), float noundef %946, i32 noundef %945)
  %948 = load i32, ptr %9, align 4
  %949 = load float, ptr %6, align 4
  %950 = call i32 @set1d(ptr noundef @b, float noundef %949, i32 noundef %948)
  %951 = load i32, ptr %10, align 4
  %952 = load float, ptr %3, align 4
  %953 = call i32 @set1d(ptr noundef @c, float noundef %952, i32 noundef %951)
  %954 = load i32, ptr %10, align 4
  %955 = load float, ptr %3, align 4
  %956 = call i32 @set1d(ptr noundef @d, float noundef %955, i32 noundef %954)
  %957 = load i32, ptr %10, align 4
  %958 = load float, ptr %3, align 4
  %959 = call i32 @set1d(ptr noundef @e, float noundef %958, i32 noundef %957)
  br label %1996

960:                                              ; preds = %936
  %961 = load ptr, ptr %2, align 8
  %962 = call i32 @strcmp(ptr noundef %961, ptr noundef @"??_C@_05MLKIPAHA@s279?5?$AA@") #13
  %963 = icmp ne i32 %962, 0
  br i1 %963, label %984, label %964

964:                                              ; preds = %960
  %965 = load i32, ptr %9, align 4
  %966 = load float, ptr %6, align 4
  %967 = fneg float %966
  %968 = call i32 @set1ds(i32 noundef 16000, ptr noundef @a, float noundef %967, i32 noundef %965)
  %969 = load i32, ptr %9, align 4
  %970 = load float, ptr %6, align 4
  %971 = call i32 @set1ds(i32 noundef 16000, ptr noundef getelementptr inbounds nuw (i8, ptr @a, i64 64000), float noundef %970, i32 noundef %969)
  %972 = load i32, ptr %9, align 4
  %973 = load float, ptr %6, align 4
  %974 = call i32 @set1d(ptr noundef @b, float noundef %973, i32 noundef %972)
  %975 = load i32, ptr %10, align 4
  %976 = load float, ptr %3, align 4
  %977 = call i32 @set1d(ptr noundef @c, float noundef %976, i32 noundef %975)
  %978 = load i32, ptr %10, align 4
  %979 = load float, ptr %3, align 4
  %980 = call i32 @set1d(ptr noundef @d, float noundef %979, i32 noundef %978)
  %981 = load i32, ptr %10, align 4
  %982 = load float, ptr %3, align 4
  %983 = call i32 @set1d(ptr noundef @e, float noundef %982, i32 noundef %981)
  br label %1995

984:                                              ; preds = %960
  %985 = load ptr, ptr %2, align 8
  %986 = call i32 @strcmp(ptr noundef %985, ptr noundef @"??_C@_05IPHJLDJJ@s2710?$AA@") #13
  %987 = icmp ne i32 %986, 0
  br i1 %987, label %1004, label %988

988:                                              ; preds = %984
  %989 = load i32, ptr %9, align 4
  %990 = load float, ptr %6, align 4
  %991 = call i32 @set1d(ptr noundef @a, float noundef %990, i32 noundef %989)
  %992 = load i32, ptr %9, align 4
  %993 = load float, ptr %6, align 4
  %994 = call i32 @set1d(ptr noundef @b, float noundef %993, i32 noundef %992)
  %995 = load i32, ptr %10, align 4
  %996 = load float, ptr %3, align 4
  %997 = call i32 @set1d(ptr noundef @c, float noundef %996, i32 noundef %995)
  %998 = load i32, ptr %10, align 4
  %999 = load float, ptr %3, align 4
  %1000 = call i32 @set1d(ptr noundef @d, float noundef %999, i32 noundef %998)
  %1001 = load i32, ptr %10, align 4
  %1002 = load float, ptr %3, align 4
  %1003 = call i32 @set1d(ptr noundef @e, float noundef %1002, i32 noundef %1001)
  br label %1994

1004:                                             ; preds = %984
  %1005 = load ptr, ptr %2, align 8
  %1006 = call i32 @strcmp(ptr noundef %1005, ptr noundef @"??_C@_05JGGCICNI@s2711?$AA@") #13
  %1007 = icmp ne i32 %1006, 0
  br i1 %1007, label %1018, label %1008

1008:                                             ; preds = %1004
  %1009 = load i32, ptr %9, align 4
  %1010 = load float, ptr %6, align 4
  %1011 = call i32 @set1d(ptr noundef @a, float noundef %1010, i32 noundef %1009)
  %1012 = load i32, ptr %10, align 4
  %1013 = load float, ptr %3, align 4
  %1014 = call i32 @set1d(ptr noundef @b, float noundef %1013, i32 noundef %1012)
  %1015 = load i32, ptr %10, align 4
  %1016 = load float, ptr %3, align 4
  %1017 = call i32 @set1d(ptr noundef @c, float noundef %1016, i32 noundef %1015)
  br label %1993

1018:                                             ; preds = %1004
  %1019 = load ptr, ptr %2, align 8
  %1020 = call i32 @strcmp(ptr noundef %1019, ptr noundef @"??_C@_05LNEPNBBL@s2712?$AA@") #13
  %1021 = icmp ne i32 %1020, 0
  br i1 %1021, label %1032, label %1022

1022:                                             ; preds = %1018
  %1023 = load i32, ptr %9, align 4
  %1024 = load float, ptr %6, align 4
  %1025 = call i32 @set1d(ptr noundef @a, float noundef %1024, i32 noundef %1023)
  %1026 = load i32, ptr %10, align 4
  %1027 = load float, ptr %3, align 4
  %1028 = call i32 @set1d(ptr noundef @b, float noundef %1027, i32 noundef %1026)
  %1029 = load i32, ptr %10, align 4
  %1030 = load float, ptr %3, align 4
  %1031 = call i32 @set1d(ptr noundef @c, float noundef %1030, i32 noundef %1029)
  br label %1992

1032:                                             ; preds = %1018
  %1033 = load ptr, ptr %2, align 8
  %1034 = call i32 @strcmp(ptr noundef %1033, ptr noundef @"??_C@_05JNNILBJO@s281?5?$AA@") #13
  %1035 = icmp ne i32 %1034, 0
  br i1 %1035, label %1046, label %1036

1036:                                             ; preds = %1032
  %1037 = load i32, ptr %9, align 4
  %1038 = load float, ptr %4, align 4
  %1039 = call i32 @set1d(ptr noundef @a, float noundef %1038, i32 noundef %1037)
  %1040 = load i32, ptr %9, align 4
  %1041 = load float, ptr %6, align 4
  %1042 = call i32 @set1d(ptr noundef @b, float noundef %1041, i32 noundef %1040)
  %1043 = load i32, ptr %9, align 4
  %1044 = load float, ptr %6, align 4
  %1045 = call i32 @set1d(ptr noundef @c, float noundef %1044, i32 noundef %1043)
  br label %1991

1046:                                             ; preds = %1032
  %1047 = load ptr, ptr %2, align 8
  %1048 = call i32 @strcmp(ptr noundef %1047, ptr noundef @"??_C@_05CFGENGPL@s291?5?$AA@") #13
  %1049 = icmp ne i32 %1048, 0
  br i1 %1049, label %1057, label %1050

1050:                                             ; preds = %1046
  %1051 = load i32, ptr %9, align 4
  %1052 = load float, ptr %4, align 4
  %1053 = call i32 @set1d(ptr noundef @a, float noundef %1052, i32 noundef %1051)
  %1054 = load i32, ptr %9, align 4
  %1055 = load float, ptr %6, align 4
  %1056 = call i32 @set1d(ptr noundef @b, float noundef %1055, i32 noundef %1054)
  br label %1990

1057:                                             ; preds = %1046
  %1058 = load ptr, ptr %2, align 8
  %1059 = call i32 @strcmp(ptr noundef %1058, ptr noundef @"??_C@_05CHCCGIKC@s292?5?$AA@") #13
  %1060 = icmp ne i32 %1059, 0
  br i1 %1060, label %1068, label %1061

1061:                                             ; preds = %1057
  %1062 = load i32, ptr %9, align 4
  %1063 = load float, ptr %4, align 4
  %1064 = call i32 @set1d(ptr noundef @a, float noundef %1063, i32 noundef %1062)
  %1065 = load i32, ptr %9, align 4
  %1066 = load float, ptr %6, align 4
  %1067 = call i32 @set1d(ptr noundef @b, float noundef %1066, i32 noundef %1065)
  br label %1989

1068:                                             ; preds = %1057
  %1069 = load ptr, ptr %2, align 8
  %1070 = call i32 @strcmp(ptr noundef %1069, ptr noundef @"??_C@_05CGOAACJF@s293?5?$AA@") #13
  %1071 = icmp ne i32 %1070, 0
  br i1 %1071, label %1076, label %1072

1072:                                             ; preds = %1068
  %1073 = load i32, ptr %10, align 4
  %1074 = load float, ptr %3, align 4
  %1075 = call i32 @set1d(ptr noundef @a, float noundef %1074, i32 noundef %1073)
  br label %1988

1076:                                             ; preds = %1068
  %1077 = load ptr, ptr %2, align 8
  %1078 = call i32 @strcmp(ptr noundef %1077, ptr noundef @"??_C@_05LCMLLHDD@s2101?$AA@") #13
  %1079 = icmp ne i32 %1078, 0
  br i1 %1079, label %1090, label %1080

1080:                                             ; preds = %1076
  %1081 = load i32, ptr %9, align 4
  %1082 = load float, ptr %6, align 4
  %1083 = call i32 @set2d(ptr noundef @aa, float noundef %1082, i32 noundef %1081)
  %1084 = load i32, ptr %10, align 4
  %1085 = load float, ptr %3, align 4
  %1086 = call i32 @set2d(ptr noundef @bb, float noundef %1085, i32 noundef %1084)
  %1087 = load i32, ptr %10, align 4
  %1088 = load float, ptr %3, align 4
  %1089 = call i32 @set2d(ptr noundef @cc, float noundef %1088, i32 noundef %1087)
  br label %1987

1090:                                             ; preds = %1076
  %1091 = load ptr, ptr %2, align 8
  %1092 = call i32 @strcmp(ptr noundef %1091, ptr noundef @"??_C@_05JJOGOEPA@s2102?$AA@") #13
  %1093 = icmp ne i32 %1092, 0
  br i1 %1093, label %1098, label %1094

1094:                                             ; preds = %1090
  %1095 = load i32, ptr %9, align 4
  %1096 = load float, ptr %4, align 4
  %1097 = call i32 @set2d(ptr noundef @aa, float noundef %1096, i32 noundef %1095)
  br label %1986

1098:                                             ; preds = %1090
  %1099 = load ptr, ptr %2, align 8
  %1100 = call i32 @strcmp(ptr noundef %1099, ptr noundef @"??_C@_05LDAJNNAE@s2111?$AA@") #13
  %1101 = icmp ne i32 %1100, 0
  br i1 %1101, label %1106, label %1102

1102:                                             ; preds = %1098
  %1103 = load i32, ptr %9, align 4
  %1104 = load float, ptr %4, align 4
  %1105 = call i32 @set2d(ptr noundef @aa, float noundef %1104, i32 noundef %1103)
  br label %1985

1106:                                             ; preds = %1098
  %1107 = load ptr, ptr %2, align 8
  %1108 = call i32 @strcmp(ptr noundef %1107, ptr noundef @"??_C@_05NNLANHKE@s311?5?$AA@") #13
  %1109 = icmp ne i32 %1108, 0
  br i1 %1109, label %1114, label %1110

1110:                                             ; preds = %1106
  %1111 = load i32, ptr %10, align 4
  %1112 = load float, ptr %3, align 4
  %1113 = call i32 @set1d(ptr noundef @a, float noundef %1112, i32 noundef %1111)
  br label %1984

1114:                                             ; preds = %1106
  %1115 = load ptr, ptr %2, align 8
  %1116 = call i32 @strcmp(ptr noundef %1115, ptr noundef @"??_C@_05NPPGGJPN@s312?5?$AA@") #13
  %1117 = icmp ne i32 %1116, 0
  br i1 %1117, label %1121, label %1118

1118:                                             ; preds = %1114
  %1119 = load i32, ptr %9, align 4
  %1120 = call i32 @set1d(ptr noundef @a, float noundef f0x3F800008, i32 noundef %1119)
  br label %1983

1121:                                             ; preds = %1114
  %1122 = load ptr, ptr %2, align 8
  %1123 = call i32 @strcmp(ptr noundef %1122, ptr noundef @"??_C@_05NODEADMK@s313?5?$AA@") #13
  %1124 = icmp ne i32 %1123, 0
  br i1 %1124, label %1132, label %1125

1125:                                             ; preds = %1121
  %1126 = load i32, ptr %10, align 4
  %1127 = load float, ptr %3, align 4
  %1128 = call i32 @set1d(ptr noundef @a, float noundef %1127, i32 noundef %1126)
  %1129 = load i32, ptr %10, align 4
  %1130 = load float, ptr %3, align 4
  %1131 = call i32 @set1d(ptr noundef @b, float noundef %1130, i32 noundef %1129)
  br label %1982

1132:                                             ; preds = %1121
  %1133 = load ptr, ptr %2, align 8
  %1134 = call i32 @strcmp(ptr noundef %1133, ptr noundef @"??_C@_05NLHLBFEP@s314?5?$AA@") #13
  %1135 = icmp ne i32 %1134, 0
  br i1 %1135, label %1140, label %1136

1136:                                             ; preds = %1132
  %1137 = load i32, ptr %10, align 4
  %1138 = load float, ptr %3, align 4
  %1139 = call i32 @set1d(ptr noundef @a, float noundef %1138, i32 noundef %1137)
  br label %1981

1140:                                             ; preds = %1132
  %1141 = load ptr, ptr %2, align 8
  %1142 = call i32 @strcmp(ptr noundef %1141, ptr noundef @"??_C@_05NKLJHPHI@s315?5?$AA@") #13
  %1143 = icmp ne i32 %1142, 0
  br i1 %1143, label %1148, label %1144

1144:                                             ; preds = %1140
  %1145 = load i32, ptr %10, align 4
  %1146 = load float, ptr %3, align 4
  %1147 = call i32 @set1d(ptr noundef @a, float noundef %1146, i32 noundef %1145)
  br label %1980

1148:                                             ; preds = %1140
  %1149 = load ptr, ptr %2, align 8
  %1150 = call i32 @strcmp(ptr noundef %1149, ptr noundef @"??_C@_05NIPPMBCB@s316?5?$AA@") #13
  %1151 = icmp ne i32 %1150, 0
  br i1 %1151, label %1156, label %1152

1152:                                             ; preds = %1148
  %1153 = load i32, ptr %10, align 4
  %1154 = load float, ptr %3, align 4
  %1155 = call i32 @set1d(ptr noundef @a, float noundef %1154, i32 noundef %1153)
  br label %1979

1156:                                             ; preds = %1148
  %1157 = load ptr, ptr %2, align 8
  %1158 = call i32 @strcmp(ptr noundef %1157, ptr noundef @"??_C@_05NJDNKLBG@s317?5?$AA@") #13
  %1159 = icmp ne i32 %1158, 0
  br i1 %1159, label %1161, label %1160

1160:                                             ; preds = %1156
  br label %1978

1161:                                             ; preds = %1156
  %1162 = load ptr, ptr %2, align 8
  %1163 = call i32 @strcmp(ptr noundef %1162, ptr noundef @"??_C@_05NCGBOMCL@s318?5?$AA@") #13
  %1164 = icmp ne i32 %1163, 0
  br i1 %1164, label %1171, label %1165

1165:                                             ; preds = %1161
  %1166 = load i32, ptr %10, align 4
  %1167 = load float, ptr %3, align 4
  %1168 = call i32 @set1d(ptr noundef @a, float noundef %1167, i32 noundef %1166)
  %1169 = load float, ptr %7, align 4
  %1170 = fneg float %1169
  store float %1170, ptr getelementptr inbounds nuw (i8, ptr @a, i64 127996), align 4
  br label %1977

1171:                                             ; preds = %1161
  %1172 = load ptr, ptr %2, align 8
  %1173 = call i32 @strcmp(ptr noundef %1172, ptr noundef @"??_C@_05NDKDIGBM@s319?5?$AA@") #13
  %1174 = icmp ne i32 %1173, 0
  br i1 %1174, label %1191, label %1175

1175:                                             ; preds = %1171
  %1176 = load i32, ptr %9, align 4
  %1177 = load float, ptr %4, align 4
  %1178 = call i32 @set1d(ptr noundef @a, float noundef %1177, i32 noundef %1176)
  %1179 = load i32, ptr %9, align 4
  %1180 = load float, ptr %4, align 4
  %1181 = call i32 @set1d(ptr noundef @b, float noundef %1180, i32 noundef %1179)
  %1182 = load i32, ptr %10, align 4
  %1183 = load float, ptr %3, align 4
  %1184 = call i32 @set1d(ptr noundef @c, float noundef %1183, i32 noundef %1182)
  %1185 = load i32, ptr %10, align 4
  %1186 = load float, ptr %3, align 4
  %1187 = call i32 @set1d(ptr noundef @d, float noundef %1186, i32 noundef %1185)
  %1188 = load i32, ptr %10, align 4
  %1189 = load float, ptr %3, align 4
  %1190 = call i32 @set1d(ptr noundef @e, float noundef %1189, i32 noundef %1188)
  br label %1976

1191:                                             ; preds = %1171
  %1192 = load ptr, ptr %2, align 8
  %1193 = call i32 @strcmp(ptr noundef %1192, ptr noundef @"??_C@_05JHHCMFPF@s3110?$AA@") #13
  %1194 = icmp ne i32 %1193, 0
  br i1 %1194, label %1200, label %1195

1195:                                             ; preds = %1191
  %1196 = load i32, ptr %10, align 4
  %1197 = load float, ptr %3, align 4
  %1198 = call i32 @set2d(ptr noundef @aa, float noundef %1197, i32 noundef %1196)
  %1199 = load float, ptr %7, align 4
  store float %1199, ptr getelementptr inbounds nuw (i8, ptr @aa, i64 262140), align 4
  br label %1975

1200:                                             ; preds = %1191
  %1201 = load ptr, ptr %2, align 8
  %1202 = call i32 @strcmp(ptr noundef %1201, ptr noundef @"??_C@_05IOGJPELE@s3111?$AA@") #13
  %1203 = icmp ne i32 %1202, 0
  br i1 %1203, label %1208, label %1204

1204:                                             ; preds = %1200
  %1205 = load i32, ptr %10, align 4
  %1206 = load float, ptr %3, align 4
  %1207 = call i32 @set1d(ptr noundef @a, float noundef %1206, i32 noundef %1205)
  br label %1974

1208:                                             ; preds = %1200
  %1209 = load ptr, ptr %2, align 8
  %1210 = call i32 @strcmp(ptr noundef %1209, ptr noundef @"??_C@_05KFEEKHHH@s3112?$AA@") #13
  %1211 = icmp ne i32 %1210, 0
  br i1 %1211, label %1219, label %1212

1212:                                             ; preds = %1208
  %1213 = load i32, ptr %11, align 4
  %1214 = load float, ptr %3, align 4
  %1215 = call i32 @set1d(ptr noundef @a, float noundef %1214, i32 noundef %1213)
  %1216 = load i32, ptr %9, align 4
  %1217 = load float, ptr %4, align 4
  %1218 = call i32 @set1d(ptr noundef @b, float noundef %1217, i32 noundef %1216)
  br label %1973

1219:                                             ; preds = %1208
  %1220 = load ptr, ptr %2, align 8
  %1221 = call i32 @strcmp(ptr noundef %1220, ptr noundef @"??_C@_05LMFPJGDG@s3113?$AA@") #13
  %1222 = icmp ne i32 %1221, 0
  br i1 %1222, label %1229, label %1223

1223:                                             ; preds = %1219
  %1224 = load i32, ptr %10, align 4
  %1225 = load float, ptr %3, align 4
  %1226 = call i32 @set1d(ptr noundef @a, float noundef %1225, i32 noundef %1224)
  %1227 = load float, ptr %7, align 4
  %1228 = fneg float %1227
  store float %1228, ptr getelementptr inbounds nuw (i8, ptr @a, i64 127996), align 4
  br label %1972

1229:                                             ; preds = %1219
  %1230 = load ptr, ptr %2, align 8
  %1231 = call i32 @strcmp(ptr noundef %1230, ptr noundef @"??_C@_05MPAFHIEK@s321?5?$AA@") #13
  %1232 = icmp ne i32 %1231, 0
  br i1 %1232, label %1240, label %1233

1233:                                             ; preds = %1229
  %1234 = load i32, ptr %9, align 4
  %1235 = load float, ptr %6, align 4
  %1236 = call i32 @set1d(ptr noundef @a, float noundef %1235, i32 noundef %1234)
  %1237 = load i32, ptr %9, align 4
  %1238 = load float, ptr %4, align 4
  %1239 = call i32 @set1d(ptr noundef @b, float noundef %1238, i32 noundef %1237)
  br label %1971

1240:                                             ; preds = %1229
  %1241 = load ptr, ptr %2, align 8
  %1242 = call i32 @strcmp(ptr noundef %1241, ptr noundef @"??_C@_05MNEDMGBD@s322?5?$AA@") #13
  %1243 = icmp ne i32 %1242, 0
  br i1 %1243, label %1254, label %1244

1244:                                             ; preds = %1240
  %1245 = load i32, ptr %9, align 4
  %1246 = load float, ptr %6, align 4
  %1247 = call i32 @set1d(ptr noundef @a, float noundef %1246, i32 noundef %1245)
  %1248 = load i32, ptr %9, align 4
  %1249 = load float, ptr %4, align 4
  %1250 = call i32 @set1d(ptr noundef @b, float noundef %1249, i32 noundef %1248)
  %1251 = load i32, ptr %9, align 4
  %1252 = load float, ptr %4, align 4
  %1253 = call i32 @set1d(ptr noundef @c, float noundef %1252, i32 noundef %1251)
  br label %1970

1254:                                             ; preds = %1240
  %1255 = load ptr, ptr %2, align 8
  %1256 = call i32 @strcmp(ptr noundef %1255, ptr noundef @"??_C@_05MMIBKMCE@s323?5?$AA@") #13
  %1257 = icmp ne i32 %1256, 0
  br i1 %1257, label %1274, label %1258

1258:                                             ; preds = %1254
  %1259 = load i32, ptr %9, align 4
  %1260 = load float, ptr %6, align 4
  %1261 = call i32 @set1d(ptr noundef @a, float noundef %1260, i32 noundef %1259)
  %1262 = load i32, ptr %9, align 4
  %1263 = load float, ptr %6, align 4
  %1264 = call i32 @set1d(ptr noundef @b, float noundef %1263, i32 noundef %1262)
  %1265 = load i32, ptr %10, align 4
  %1266 = load float, ptr %3, align 4
  %1267 = call i32 @set1d(ptr noundef @c, float noundef %1266, i32 noundef %1265)
  %1268 = load i32, ptr %10, align 4
  %1269 = load float, ptr %3, align 4
  %1270 = call i32 @set1d(ptr noundef @d, float noundef %1269, i32 noundef %1268)
  %1271 = load i32, ptr %10, align 4
  %1272 = load float, ptr %3, align 4
  %1273 = call i32 @set1d(ptr noundef @e, float noundef %1272, i32 noundef %1271)
  br label %1969

1274:                                             ; preds = %1254
  %1275 = load ptr, ptr %2, align 8
  %1276 = call i32 @strcmp(ptr noundef %1275, ptr noundef @"??_C@_05HHLJBPCP@s331?5?$AA@") #13
  %1277 = icmp ne i32 %1276, 0
  br i1 %1277, label %1284, label %1278

1278:                                             ; preds = %1274
  %1279 = load i32, ptr %10, align 4
  %1280 = load float, ptr %3, align 4
  %1281 = call i32 @set1d(ptr noundef @a, float noundef %1280, i32 noundef %1279)
  %1282 = load float, ptr %6, align 4
  %1283 = fneg float %1282
  store float %1283, ptr getelementptr inbounds nuw (i8, ptr @a, i64 127996), align 4
  br label %1968

1284:                                             ; preds = %1274
  %1285 = load ptr, ptr %2, align 8
  %1286 = call i32 @strcmp(ptr noundef %1285, ptr noundef @"??_C@_05HFPPKBHG@s332?5?$AA@") #13
  %1287 = icmp ne i32 %1286, 0
  br i1 %1287, label %1293, label %1288

1288:                                             ; preds = %1284
  %1289 = load i32, ptr %11, align 4
  %1290 = load float, ptr %3, align 4
  %1291 = call i32 @set1d(ptr noundef @a, float noundef %1290, i32 noundef %1289)
  %1292 = load float, ptr %7, align 4
  store float %1292, ptr getelementptr inbounds nuw (i8, ptr @a, i64 127996), align 4
  br label %1967

1293:                                             ; preds = %1284
  %1294 = load ptr, ptr %2, align 8
  %1295 = call i32 @strcmp(ptr noundef %1294, ptr noundef @"??_C@_05OKGOCHJG@s341?5?$AA@") #13
  %1296 = icmp ne i32 %1295, 0
  br i1 %1296, label %1304, label %1297

1297:                                             ; preds = %1293
  %1298 = load i32, ptr %9, align 4
  %1299 = load float, ptr %4, align 4
  %1300 = call i32 @set1d(ptr noundef @a, float noundef %1299, i32 noundef %1298)
  %1301 = load i32, ptr %10, align 4
  %1302 = load float, ptr %3, align 4
  %1303 = call i32 @set1d(ptr noundef @b, float noundef %1302, i32 noundef %1301)
  br label %1966

1304:                                             ; preds = %1293
  %1305 = load ptr, ptr %2, align 8
  %1306 = call i32 @strcmp(ptr noundef %1305, ptr noundef @"??_C@_05OICIJJMP@s342?5?$AA@") #13
  %1307 = icmp ne i32 %1306, 0
  br i1 %1307, label %1315, label %1308

1308:                                             ; preds = %1304
  %1309 = load i32, ptr %10, align 4
  %1310 = load float, ptr %3, align 4
  %1311 = call i32 @set1d(ptr noundef @a, float noundef %1310, i32 noundef %1309)
  %1312 = load i32, ptr %10, align 4
  %1313 = load float, ptr %3, align 4
  %1314 = call i32 @set1d(ptr noundef @b, float noundef %1313, i32 noundef %1312)
  br label %1965

1315:                                             ; preds = %1304
  %1316 = load ptr, ptr %2, align 8
  %1317 = call i32 @strcmp(ptr noundef %1316, ptr noundef @"??_C@_05OJOKPDPI@s343?5?$AA@") #13
  %1318 = icmp ne i32 %1317, 0
  br i1 %1318, label %1326, label %1319

1319:                                             ; preds = %1315
  %1320 = load i32, ptr %10, align 4
  %1321 = load float, ptr %3, align 4
  %1322 = call i32 @set2d(ptr noundef @aa, float noundef %1321, i32 noundef %1320)
  %1323 = load i32, ptr %9, align 4
  %1324 = load float, ptr %6, align 4
  %1325 = call i32 @set2d(ptr noundef @bb, float noundef %1324, i32 noundef %1323)
  br label %1964

1326:                                             ; preds = %1315
  %1327 = load ptr, ptr %2, align 8
  %1328 = call i32 @strcmp(ptr noundef %1327, ptr noundef @"??_C@_05FCNCEAPD@s351?5?$AA@") #13
  %1329 = icmp ne i32 %1328, 0
  br i1 %1329, label %1337, label %1330

1330:                                             ; preds = %1326
  %1331 = load i32, ptr %9, align 4
  %1332 = load float, ptr %6, align 4
  %1333 = call i32 @set1d(ptr noundef @a, float noundef %1332, i32 noundef %1331)
  %1334 = load i32, ptr %9, align 4
  %1335 = load float, ptr %6, align 4
  %1336 = call i32 @set1d(ptr noundef @b, float noundef %1335, i32 noundef %1334)
  store float 1.000000e+00, ptr @c, align 16
  br label %1963

1337:                                             ; preds = %1326
  %1338 = load ptr, ptr %2, align 8
  %1339 = call i32 @strcmp(ptr noundef %1338, ptr noundef @"??_C@_05FAJEPOKK@s352?5?$AA@") #13
  %1340 = icmp ne i32 %1339, 0
  br i1 %1340, label %1348, label %1341

1341:                                             ; preds = %1337
  %1342 = load i32, ptr %10, align 4
  %1343 = load float, ptr %3, align 4
  %1344 = call i32 @set1d(ptr noundef @a, float noundef %1343, i32 noundef %1342)
  %1345 = load i32, ptr %10, align 4
  %1346 = load float, ptr %3, align 4
  %1347 = call i32 @set1d(ptr noundef @b, float noundef %1346, i32 noundef %1345)
  br label %1962

1348:                                             ; preds = %1337
  %1349 = load ptr, ptr %2, align 8
  %1350 = call i32 @strcmp(ptr noundef %1349, ptr noundef @"??_C@_05FBFGJEJN@s353?5?$AA@") #13
  %1351 = icmp ne i32 %1350, 0
  br i1 %1351, label %1359, label %1352

1352:                                             ; preds = %1348
  %1353 = load i32, ptr %9, align 4
  %1354 = load float, ptr %6, align 4
  %1355 = call i32 @set1d(ptr noundef @a, float noundef %1354, i32 noundef %1353)
  %1356 = load i32, ptr %9, align 4
  %1357 = load float, ptr %6, align 4
  %1358 = call i32 @set1d(ptr noundef @b, float noundef %1357, i32 noundef %1356)
  store float 1.000000e+00, ptr @c, align 16
  br label %1961

1359:                                             ; preds = %1348
  %1360 = load ptr, ptr %2, align 8
  %1361 = call i32 @strcmp(ptr noundef %1360, ptr noundef @"??_C@_05GPJAALLE@s411?5?$AA@") #13
  %1362 = icmp ne i32 %1361, 0
  br i1 %1362, label %1373, label %1363

1363:                                             ; preds = %1359
  %1364 = load i32, ptr %9, align 4
  %1365 = load float, ptr %6, align 4
  %1366 = call i32 @set1d(ptr noundef @a, float noundef %1365, i32 noundef %1364)
  %1367 = load i32, ptr %10, align 4
  %1368 = load float, ptr %3, align 4
  %1369 = call i32 @set1d(ptr noundef @b, float noundef %1368, i32 noundef %1367)
  %1370 = load i32, ptr %10, align 4
  %1371 = load float, ptr %3, align 4
  %1372 = call i32 @set1d(ptr noundef @c, float noundef %1371, i32 noundef %1370)
  br label %1960

1373:                                             ; preds = %1359
  %1374 = load ptr, ptr %2, align 8
  %1375 = call i32 @strcmp(ptr noundef %1374, ptr noundef @"??_C@_05GNNGLFON@s412?5?$AA@") #13
  %1376 = icmp ne i32 %1375, 0
  br i1 %1376, label %1387, label %1377

1377:                                             ; preds = %1373
  %1378 = load i32, ptr %9, align 4
  %1379 = load float, ptr %6, align 4
  %1380 = call i32 @set1d(ptr noundef @a, float noundef %1379, i32 noundef %1378)
  %1381 = load i32, ptr %10, align 4
  %1382 = load float, ptr %3, align 4
  %1383 = call i32 @set1d(ptr noundef @b, float noundef %1382, i32 noundef %1381)
  %1384 = load i32, ptr %10, align 4
  %1385 = load float, ptr %3, align 4
  %1386 = call i32 @set1d(ptr noundef @c, float noundef %1385, i32 noundef %1384)
  br label %1959

1387:                                             ; preds = %1373
  %1388 = load ptr, ptr %2, align 8
  %1389 = call i32 @strcmp(ptr noundef %1388, ptr noundef @"??_C@_05GMBENPNK@s413?5?$AA@") #13
  %1390 = icmp ne i32 %1389, 0
  br i1 %1390, label %1407, label %1391

1391:                                             ; preds = %1387
  %1392 = load i32, ptr %9, align 4
  %1393 = load float, ptr %4, align 4
  %1394 = call i32 @set1d(ptr noundef @a, float noundef %1393, i32 noundef %1392)
  %1395 = load i32, ptr %9, align 4
  %1396 = load float, ptr %6, align 4
  %1397 = call i32 @set1d(ptr noundef @b, float noundef %1396, i32 noundef %1395)
  %1398 = load i32, ptr %9, align 4
  %1399 = load float, ptr %6, align 4
  %1400 = call i32 @set1d(ptr noundef @c, float noundef %1399, i32 noundef %1398)
  %1401 = load i32, ptr %10, align 4
  %1402 = load float, ptr %3, align 4
  %1403 = call i32 @set1d(ptr noundef @d, float noundef %1402, i32 noundef %1401)
  %1404 = load i32, ptr %10, align 4
  %1405 = load float, ptr %3, align 4
  %1406 = call i32 @set1d(ptr noundef @e, float noundef %1405, i32 noundef %1404)
  br label %1958

1407:                                             ; preds = %1387
  %1408 = load ptr, ptr %2, align 8
  %1409 = call i32 @strcmp(ptr noundef %1408, ptr noundef @"??_C@_05GJFLMJFP@s414?5?$AA@") #13
  %1410 = icmp ne i32 %1409, 0
  br i1 %1410, label %1421, label %1411

1411:                                             ; preds = %1407
  %1412 = load i32, ptr %9, align 4
  %1413 = load float, ptr %6, align 4
  %1414 = call i32 @set2d(ptr noundef @aa, float noundef %1413, i32 noundef %1412)
  %1415 = load i32, ptr %10, align 4
  %1416 = load float, ptr %3, align 4
  %1417 = call i32 @set2d(ptr noundef @bb, float noundef %1416, i32 noundef %1415)
  %1418 = load i32, ptr %10, align 4
  %1419 = load float, ptr %3, align 4
  %1420 = call i32 @set2d(ptr noundef @cc, float noundef %1419, i32 noundef %1418)
  br label %1957

1421:                                             ; preds = %1407
  %1422 = load ptr, ptr %2, align 8
  %1423 = call i32 @strcmp(ptr noundef %1422, ptr noundef @"??_C@_05GIJJKDGI@s415?5?$AA@") #13
  %1424 = icmp ne i32 %1423, 0
  br i1 %1424, label %1437, label %1425

1425:                                             ; preds = %1421
  %1426 = load i32, ptr %9, align 4
  %1427 = load float, ptr %6, align 4
  %1428 = call i32 @set1d(ptr noundef @a, float noundef %1427, i32 noundef %1426)
  %1429 = load i32, ptr %10, align 4
  %1430 = load float, ptr %3, align 4
  %1431 = call i32 @set1d(ptr noundef @b, float noundef %1430, i32 noundef %1429)
  %1432 = load i32, ptr %10, align 4
  %1433 = load float, ptr %3, align 4
  %1434 = call i32 @set1d(ptr noundef @c, float noundef %1433, i32 noundef %1432)
  %1435 = load float, ptr %6, align 4
  %1436 = fneg float %1435
  store float %1436, ptr getelementptr inbounds nuw (i8, ptr @a, i64 127996), align 4
  br label %1956

1437:                                             ; preds = %1421
  %1438 = load ptr, ptr %2, align 8
  %1439 = call i32 @strcmp(ptr noundef %1438, ptr noundef @"??_C@_05HNCFKEFK@s421?5?$AA@") #13
  %1440 = icmp ne i32 %1439, 0
  br i1 %1440, label %1445, label %1441

1441:                                             ; preds = %1437
  %1442 = load i32, ptr %11, align 4
  %1443 = load float, ptr %3, align 4
  %1444 = call i32 @set1d(ptr noundef @a, float noundef %1443, i32 noundef %1442)
  br label %1955

1445:                                             ; preds = %1437
  %1446 = load ptr, ptr %2, align 8
  %1447 = call i32 @strcmp(ptr noundef %1446, ptr noundef @"??_C@_05HPGDBKAD@s422?5?$AA@") #13
  %1448 = icmp ne i32 %1447, 0
  br i1 %1448, label %1456, label %1449

1449:                                             ; preds = %1445
  %1450 = load i32, ptr %9, align 4
  %1451 = load float, ptr %6, align 4
  %1452 = call i32 @set1d(ptr noundef @array, float noundef %1451, i32 noundef %1450)
  %1453 = load i32, ptr %11, align 4
  %1454 = load float, ptr %3, align 4
  %1455 = call i32 @set1d(ptr noundef @a, float noundef %1454, i32 noundef %1453)
  br label %1954

1456:                                             ; preds = %1445
  %1457 = load ptr, ptr %2, align 8
  %1458 = call i32 @strcmp(ptr noundef %1457, ptr noundef @"??_C@_05HOKBHADE@s423?5?$AA@") #13
  %1459 = icmp ne i32 %1458, 0
  br i1 %1459, label %1467, label %1460

1460:                                             ; preds = %1456
  %1461 = load i32, ptr %9, align 4
  %1462 = load float, ptr %4, align 4
  %1463 = call i32 @set1d(ptr noundef @array, float noundef %1462, i32 noundef %1461)
  %1464 = load i32, ptr %11, align 4
  %1465 = load float, ptr %3, align 4
  %1466 = call i32 @set1d(ptr noundef @a, float noundef %1465, i32 noundef %1464)
  br label %1953

1467:                                             ; preds = %1456
  %1468 = load ptr, ptr %2, align 8
  %1469 = call i32 @strcmp(ptr noundef %1468, ptr noundef @"??_C@_05HLOOGGLB@s424?5?$AA@") #13
  %1470 = icmp ne i32 %1469, 0
  br i1 %1470, label %1478, label %1471

1471:                                             ; preds = %1467
  %1472 = load i32, ptr %9, align 4
  %1473 = load float, ptr %6, align 4
  %1474 = call i32 @set1d(ptr noundef @array, float noundef %1473, i32 noundef %1472)
  %1475 = load i32, ptr %11, align 4
  %1476 = load float, ptr %3, align 4
  %1477 = call i32 @set1d(ptr noundef @a, float noundef %1476, i32 noundef %1475)
  br label %1952

1478:                                             ; preds = %1467
  %1479 = load ptr, ptr %2, align 8
  %1480 = call i32 @strcmp(ptr noundef %1479, ptr noundef @"??_C@_05MFJJMDDP@s431?5?$AA@") #13
  %1481 = icmp ne i32 %1480, 0
  br i1 %1481, label %1489, label %1482

1482:                                             ; preds = %1478
  %1483 = load i32, ptr %9, align 4
  %1484 = load float, ptr %6, align 4
  %1485 = call i32 @set1d(ptr noundef @a, float noundef %1484, i32 noundef %1483)
  %1486 = load i32, ptr %11, align 4
  %1487 = load float, ptr %3, align 4
  %1488 = call i32 @set1d(ptr noundef @b, float noundef %1487, i32 noundef %1486)
  br label %1951

1489:                                             ; preds = %1478
  %1490 = load ptr, ptr %2, align 8
  %1491 = call i32 @strcmp(ptr noundef %1490, ptr noundef @"??_C@_05MHNPHNGG@s432?5?$AA@") #13
  %1492 = icmp ne i32 %1491, 0
  br i1 %1492, label %1500, label %1493

1493:                                             ; preds = %1489
  %1494 = load i32, ptr %9, align 4
  %1495 = load float, ptr %6, align 4
  %1496 = call i32 @set1d(ptr noundef @a, float noundef %1495, i32 noundef %1494)
  %1497 = load i32, ptr %11, align 4
  %1498 = load float, ptr %3, align 4
  %1499 = call i32 @set1d(ptr noundef @b, float noundef %1498, i32 noundef %1497)
  br label %1950

1500:                                             ; preds = %1489
  %1501 = load ptr, ptr %2, align 8
  %1502 = call i32 @strcmp(ptr noundef %1501, ptr noundef @"??_C@_05FIEOPLIG@s441?5?$AA@") #13
  %1503 = icmp ne i32 %1502, 0
  br i1 %1503, label %1524, label %1504

1504:                                             ; preds = %1500
  %1505 = load i32, ptr %9, align 4
  %1506 = load float, ptr %6, align 4
  %1507 = call i32 @set1d(ptr noundef @a, float noundef %1506, i32 noundef %1505)
  %1508 = load i32, ptr %10, align 4
  %1509 = load float, ptr %3, align 4
  %1510 = call i32 @set1d(ptr noundef @b, float noundef %1509, i32 noundef %1508)
  %1511 = load i32, ptr %10, align 4
  %1512 = load float, ptr %3, align 4
  %1513 = call i32 @set1d(ptr noundef @c, float noundef %1512, i32 noundef %1511)
  %1514 = load i32, ptr %9, align 4
  %1515 = load float, ptr %6, align 4
  %1516 = fneg float %1515
  %1517 = call i32 @set1ds(i32 noundef 10666, ptr noundef @d, float noundef %1516, i32 noundef %1514)
  %1518 = load i32, ptr %9, align 4
  %1519 = load float, ptr %4, align 4
  %1520 = call i32 @set1ds(i32 noundef 10666, ptr noundef getelementptr inbounds nuw (i8, ptr @d, i64 42664), float noundef %1519, i32 noundef %1518)
  %1521 = load i32, ptr %9, align 4
  %1522 = load float, ptr %6, align 4
  %1523 = call i32 @set1ds(i32 noundef 10667, ptr noundef getelementptr inbounds nuw (i8, ptr @d, i64 85332), float noundef %1522, i32 noundef %1521)
  br label %1949

1524:                                             ; preds = %1500
  %1525 = load ptr, ptr %2, align 8
  %1526 = call i32 @strcmp(ptr noundef %1525, ptr noundef @"??_C@_05FKAIEFNP@s442?5?$AA@") #13
  %1527 = icmp ne i32 %1526, 0
  br i1 %1527, label %1544, label %1528

1528:                                             ; preds = %1524
  %1529 = load i32, ptr %9, align 4
  %1530 = load float, ptr %6, align 4
  %1531 = call i32 @set1d(ptr noundef @a, float noundef %1530, i32 noundef %1529)
  %1532 = load i32, ptr %10, align 4
  %1533 = load float, ptr %3, align 4
  %1534 = call i32 @set1d(ptr noundef @b, float noundef %1533, i32 noundef %1532)
  %1535 = load i32, ptr %10, align 4
  %1536 = load float, ptr %3, align 4
  %1537 = call i32 @set1d(ptr noundef @c, float noundef %1536, i32 noundef %1535)
  %1538 = load i32, ptr %10, align 4
  %1539 = load float, ptr %3, align 4
  %1540 = call i32 @set1d(ptr noundef @d, float noundef %1539, i32 noundef %1538)
  %1541 = load i32, ptr %10, align 4
  %1542 = load float, ptr %3, align 4
  %1543 = call i32 @set1d(ptr noundef @e, float noundef %1542, i32 noundef %1541)
  br label %1948

1544:                                             ; preds = %1524
  %1545 = load ptr, ptr %2, align 8
  %1546 = call i32 @strcmp(ptr noundef %1545, ptr noundef @"??_C@_05FLMKCPOI@s443?5?$AA@") #13
  %1547 = icmp ne i32 %1546, 0
  br i1 %1547, label %1558, label %1548

1548:                                             ; preds = %1544
  %1549 = load i32, ptr %9, align 4
  %1550 = load float, ptr %6, align 4
  %1551 = call i32 @set1d(ptr noundef @a, float noundef %1550, i32 noundef %1549)
  %1552 = load i32, ptr %10, align 4
  %1553 = load float, ptr %3, align 4
  %1554 = call i32 @set1d(ptr noundef @b, float noundef %1553, i32 noundef %1552)
  %1555 = load i32, ptr %10, align 4
  %1556 = load float, ptr %3, align 4
  %1557 = call i32 @set1d(ptr noundef @c, float noundef %1556, i32 noundef %1555)
  br label %1947

1558:                                             ; preds = %1544
  %1559 = load ptr, ptr %2, align 8
  %1560 = call i32 @strcmp(ptr noundef %1559, ptr noundef @"??_C@_05OAPCJMOD@s451?5?$AA@") #13
  %1561 = icmp ne i32 %1560, 0
  br i1 %1561, label %1569, label %1562

1562:                                             ; preds = %1558
  %1563 = load i32, ptr %10, align 4
  %1564 = load float, ptr %3, align 4
  %1565 = call i32 @set1d(ptr noundef @b, float noundef %1564, i32 noundef %1563)
  %1566 = load i32, ptr %10, align 4
  %1567 = load float, ptr %3, align 4
  %1568 = call i32 @set1d(ptr noundef @c, float noundef %1567, i32 noundef %1566)
  br label %1946

1569:                                             ; preds = %1558
  %1570 = load ptr, ptr %2, align 8
  %1571 = call i32 @strcmp(ptr noundef %1570, ptr noundef @"??_C@_05OCLECCLK@s452?5?$AA@") #13
  %1572 = icmp ne i32 %1571, 0
  br i1 %1572, label %1583, label %1573

1573:                                             ; preds = %1569
  %1574 = load i32, ptr %9, align 4
  %1575 = load float, ptr %4, align 4
  %1576 = call i32 @set1d(ptr noundef @a, float noundef %1575, i32 noundef %1574)
  %1577 = load i32, ptr %9, align 4
  %1578 = load float, ptr %6, align 4
  %1579 = call i32 @set1d(ptr noundef @b, float noundef %1578, i32 noundef %1577)
  %1580 = load i32, ptr %9, align 4
  %1581 = load float, ptr %8, align 4
  %1582 = call i32 @set1d(ptr noundef @c, float noundef %1581, i32 noundef %1580)
  br label %1945

1583:                                             ; preds = %1569
  %1584 = load ptr, ptr %2, align 8
  %1585 = call i32 @strcmp(ptr noundef %1584, ptr noundef @"??_C@_05ODHGEIIN@s453?5?$AA@") #13
  %1586 = icmp ne i32 %1585, 0
  br i1 %1586, label %1594, label %1587

1587:                                             ; preds = %1583
  %1588 = load i32, ptr %9, align 4
  %1589 = load float, ptr %4, align 4
  %1590 = call i32 @set1d(ptr noundef @a, float noundef %1589, i32 noundef %1588)
  %1591 = load i32, ptr %11, align 4
  %1592 = load float, ptr %3, align 4
  %1593 = call i32 @set1d(ptr noundef @b, float noundef %1592, i32 noundef %1591)
  br label %1944

1594:                                             ; preds = %1583
  %1595 = load ptr, ptr %2, align 8
  %1596 = call i32 @strcmp(ptr noundef %1595, ptr noundef @"??_C@_05EKPLFEGI@s471?5?$AA@") #13
  %1597 = icmp ne i32 %1596, 0
  br i1 %1597, label %1614, label %1598

1598:                                             ; preds = %1594
  %1599 = load i32, ptr %9, align 4
  %1600 = load float, ptr %6, align 4
  %1601 = call i32 @set1d(ptr noundef @a, float noundef %1600, i32 noundef %1599)
  %1602 = load i32, ptr %9, align 4
  %1603 = load float, ptr %6, align 4
  %1604 = call i32 @set1d(ptr noundef @b, float noundef %1603, i32 noundef %1602)
  %1605 = load i32, ptr %9, align 4
  %1606 = load float, ptr %6, align 4
  %1607 = call i32 @set1d(ptr noundef @c, float noundef %1606, i32 noundef %1605)
  %1608 = load i32, ptr %10, align 4
  %1609 = load float, ptr %3, align 4
  %1610 = call i32 @set1d(ptr noundef @d, float noundef %1609, i32 noundef %1608)
  %1611 = load i32, ptr %10, align 4
  %1612 = load float, ptr %3, align 4
  %1613 = call i32 @set1d(ptr noundef @e, float noundef %1612, i32 noundef %1611)
  br label %1943

1614:                                             ; preds = %1594
  %1615 = load ptr, ptr %2, align 8
  %1616 = call i32 @strcmp(ptr noundef %1615, ptr noundef @"??_C@_05BCJIEEDO@s481?5?$AA@") #13
  %1617 = icmp ne i32 %1616, 0
  br i1 %1617, label %1631, label %1618

1618:                                             ; preds = %1614
  %1619 = load i32, ptr %9, align 4
  %1620 = load float, ptr %6, align 4
  %1621 = call i32 @set1d(ptr noundef @a, float noundef %1620, i32 noundef %1619)
  %1622 = load i32, ptr %10, align 4
  %1623 = load float, ptr %3, align 4
  %1624 = call i32 @set1d(ptr noundef @b, float noundef %1623, i32 noundef %1622)
  %1625 = load i32, ptr %10, align 4
  %1626 = load float, ptr %3, align 4
  %1627 = call i32 @set1d(ptr noundef @c, float noundef %1626, i32 noundef %1625)
  %1628 = load i32, ptr %10, align 4
  %1629 = load float, ptr %3, align 4
  %1630 = call i32 @set1d(ptr noundef @d, float noundef %1629, i32 noundef %1628)
  br label %1942

1631:                                             ; preds = %1614
  %1632 = load ptr, ptr %2, align 8
  %1633 = call i32 @strcmp(ptr noundef %1632, ptr noundef @"??_C@_05BANOPKGH@s482?5?$AA@") #13
  %1634 = icmp ne i32 %1633, 0
  br i1 %1634, label %1645, label %1635

1635:                                             ; preds = %1631
  %1636 = load i32, ptr %9, align 4
  %1637 = load float, ptr %6, align 4
  %1638 = call i32 @set1d(ptr noundef @a, float noundef %1637, i32 noundef %1636)
  %1639 = load i32, ptr %10, align 4
  %1640 = load float, ptr %3, align 4
  %1641 = call i32 @set1d(ptr noundef @b, float noundef %1640, i32 noundef %1639)
  %1642 = load i32, ptr %10, align 4
  %1643 = load float, ptr %3, align 4
  %1644 = call i32 @set1d(ptr noundef @c, float noundef %1643, i32 noundef %1642)
  br label %1941

1645:                                             ; preds = %1631
  %1646 = load ptr, ptr %2, align 8
  %1647 = call i32 @strcmp(ptr noundef %1646, ptr noundef @"??_C@_05KKCECDFL@s491?5?$AA@") #13
  %1648 = icmp ne i32 %1647, 0
  br i1 %1648, label %1662, label %1649

1649:                                             ; preds = %1645
  %1650 = load i32, ptr %9, align 4
  %1651 = load float, ptr %4, align 4
  %1652 = call i32 @set1d(ptr noundef @a, float noundef %1651, i32 noundef %1650)
  %1653 = load i32, ptr %9, align 4
  %1654 = load float, ptr %6, align 4
  %1655 = call i32 @set1d(ptr noundef @b, float noundef %1654, i32 noundef %1653)
  %1656 = load i32, ptr %10, align 4
  %1657 = load float, ptr %3, align 4
  %1658 = call i32 @set1d(ptr noundef @c, float noundef %1657, i32 noundef %1656)
  %1659 = load i32, ptr %10, align 4
  %1660 = load float, ptr %3, align 4
  %1661 = call i32 @set1d(ptr noundef @d, float noundef %1660, i32 noundef %1659)
  br label %1940

1662:                                             ; preds = %1645
  %1663 = load ptr, ptr %2, align 8
  %1664 = call i32 @strcmp(ptr noundef %1663, ptr noundef @"??_C@_05BHGEHLGH@s4112?$AA@") #13
  %1665 = icmp ne i32 %1664, 0
  br i1 %1665, label %1673, label %1666

1666:                                             ; preds = %1662
  %1667 = load i32, ptr %9, align 4
  %1668 = load float, ptr %6, align 4
  %1669 = call i32 @set1d(ptr noundef @a, float noundef %1668, i32 noundef %1667)
  %1670 = load i32, ptr %10, align 4
  %1671 = load float, ptr %3, align 4
  %1672 = call i32 @set1d(ptr noundef @b, float noundef %1671, i32 noundef %1670)
  br label %1939

1673:                                             ; preds = %1662
  %1674 = load ptr, ptr %2, align 8
  %1675 = call i32 @strcmp(ptr noundef %1674, ptr noundef @"??_C@_05OHPEKCG@s4113?$AA@") #13
  %1676 = icmp ne i32 %1675, 0
  br i1 %1676, label %1687, label %1677

1677:                                             ; preds = %1673
  %1678 = load i32, ptr %9, align 4
  %1679 = load float, ptr %4, align 4
  %1680 = call i32 @set1d(ptr noundef @a, float noundef %1679, i32 noundef %1678)
  %1681 = load i32, ptr %9, align 4
  %1682 = load float, ptr %6, align 4
  %1683 = call i32 @set1d(ptr noundef @b, float noundef %1682, i32 noundef %1681)
  %1684 = load i32, ptr %11, align 4
  %1685 = load float, ptr %3, align 4
  %1686 = call i32 @set1d(ptr noundef @c, float noundef %1685, i32 noundef %1684)
  br label %1938

1687:                                             ; preds = %1673
  %1688 = load ptr, ptr %2, align 8
  %1689 = call i32 @strcmp(ptr noundef %1688, ptr noundef @"??_C@_05EBDONMOB@s4114?$AA@") #13
  %1690 = icmp ne i32 %1689, 0
  br i1 %1690, label %1704, label %1691

1691:                                             ; preds = %1687
  %1692 = load i32, ptr %9, align 4
  %1693 = load float, ptr %4, align 4
  %1694 = call i32 @set1d(ptr noundef @a, float noundef %1693, i32 noundef %1692)
  %1695 = load i32, ptr %9, align 4
  %1696 = load float, ptr %6, align 4
  %1697 = call i32 @set1d(ptr noundef @b, float noundef %1696, i32 noundef %1695)
  %1698 = load i32, ptr %10, align 4
  %1699 = load float, ptr %3, align 4
  %1700 = call i32 @set1d(ptr noundef @c, float noundef %1699, i32 noundef %1698)
  %1701 = load i32, ptr %10, align 4
  %1702 = load float, ptr %3, align 4
  %1703 = call i32 @set1d(ptr noundef @d, float noundef %1702, i32 noundef %1701)
  br label %1937

1704:                                             ; preds = %1687
  %1705 = load ptr, ptr %2, align 8
  %1706 = call i32 @strcmp(ptr noundef %1705, ptr noundef @"??_C@_05FICFONKA@s4115?$AA@") #13
  %1707 = icmp ne i32 %1706, 0
  br i1 %1707, label %1715, label %1708

1708:                                             ; preds = %1704
  %1709 = load i32, ptr %10, align 4
  %1710 = load float, ptr %3, align 4
  %1711 = call i32 @set1d(ptr noundef @a, float noundef %1710, i32 noundef %1709)
  %1712 = load i32, ptr %10, align 4
  %1713 = load float, ptr %3, align 4
  %1714 = call i32 @set1d(ptr noundef @b, float noundef %1713, i32 noundef %1712)
  br label %1936

1715:                                             ; preds = %1704
  %1716 = load ptr, ptr %2, align 8
  %1717 = call i32 @strcmp(ptr noundef %1716, ptr noundef @"??_C@_05HDAILOGD@s4116?$AA@") #13
  %1718 = icmp ne i32 %1717, 0
  br i1 %1718, label %1726, label %1719

1719:                                             ; preds = %1715
  %1720 = load i32, ptr %10, align 4
  %1721 = load float, ptr %3, align 4
  %1722 = call i32 @set1d(ptr noundef @a, float noundef %1721, i32 noundef %1720)
  %1723 = load i32, ptr %10, align 4
  %1724 = load float, ptr %3, align 4
  %1725 = call i32 @set2d(ptr noundef @aa, float noundef %1724, i32 noundef %1723)
  br label %1935

1726:                                             ; preds = %1715
  %1727 = load ptr, ptr %2, align 8
  %1728 = call i32 @strcmp(ptr noundef %1727, ptr noundef @"??_C@_05GKBDIPCC@s4117?$AA@") #13
  %1729 = icmp ne i32 %1728, 0
  br i1 %1729, label %1743, label %1730

1730:                                             ; preds = %1726
  %1731 = load i32, ptr %9, align 4
  %1732 = load float, ptr %4, align 4
  %1733 = call i32 @set1d(ptr noundef @a, float noundef %1732, i32 noundef %1731)
  %1734 = load i32, ptr %9, align 4
  %1735 = load float, ptr %6, align 4
  %1736 = call i32 @set1d(ptr noundef @b, float noundef %1735, i32 noundef %1734)
  %1737 = load i32, ptr %10, align 4
  %1738 = load float, ptr %3, align 4
  %1739 = call i32 @set1d(ptr noundef @c, float noundef %1738, i32 noundef %1737)
  %1740 = load i32, ptr %10, align 4
  %1741 = load float, ptr %3, align 4
  %1742 = call i32 @set1d(ptr noundef @d, float noundef %1741, i32 noundef %1740)
  br label %1934

1743:                                             ; preds = %1726
  %1744 = load ptr, ptr %2, align 8
  %1745 = call i32 @strcmp(ptr noundef %1744, ptr noundef @"??_C@_05DOAPJGPN@s4121?$AA@") #13
  %1746 = icmp ne i32 %1745, 0
  br i1 %1746, label %1757, label %1747

1747:                                             ; preds = %1743
  %1748 = load i32, ptr %9, align 4
  %1749 = load float, ptr %6, align 4
  %1750 = call i32 @set1d(ptr noundef @a, float noundef %1749, i32 noundef %1748)
  %1751 = load i32, ptr %10, align 4
  %1752 = load float, ptr %3, align 4
  %1753 = call i32 @set1d(ptr noundef @b, float noundef %1752, i32 noundef %1751)
  %1754 = load i32, ptr %10, align 4
  %1755 = load float, ptr %3, align 4
  %1756 = call i32 @set1d(ptr noundef @c, float noundef %1755, i32 noundef %1754)
  br label %1933

1757:                                             ; preds = %1743
  %1758 = load ptr, ptr %2, align 8
  %1759 = call i32 @strcmp(ptr noundef %1758, ptr noundef @"??_C@_03IDIMFPN@va?7?$AA@") #13
  %1760 = icmp ne i32 %1759, 0
  br i1 %1760, label %1768, label %1761

1761:                                             ; preds = %1757
  %1762 = load i32, ptr %9, align 4
  %1763 = load float, ptr %4, align 4
  %1764 = call i32 @set1d(ptr noundef @a, float noundef %1763, i32 noundef %1762)
  %1765 = load i32, ptr %11, align 4
  %1766 = load float, ptr %3, align 4
  %1767 = call i32 @set1d(ptr noundef @b, float noundef %1766, i32 noundef %1765)
  br label %1932

1768:                                             ; preds = %1757
  %1769 = load ptr, ptr %2, align 8
  %1770 = call i32 @strcmp(ptr noundef %1769, ptr noundef @"??_C@_05DMCMEDIF@vag?5?5?$AA@") #13
  %1771 = icmp ne i32 %1770, 0
  br i1 %1771, label %1779, label %1772

1772:                                             ; preds = %1768
  %1773 = load i32, ptr %9, align 4
  %1774 = load float, ptr %4, align 4
  %1775 = call i32 @set1d(ptr noundef @a, float noundef %1774, i32 noundef %1773)
  %1776 = load i32, ptr %11, align 4
  %1777 = load float, ptr %3, align 4
  %1778 = call i32 @set1d(ptr noundef @b, float noundef %1777, i32 noundef %1776)
  br label %1931

1779:                                             ; preds = %1768
  %1780 = load ptr, ptr %2, align 8
  %1781 = call i32 @strcmp(ptr noundef %1780, ptr noundef @"??_C@_05ODFHIDEN@vas?5?5?$AA@") #13
  %1782 = icmp ne i32 %1781, 0
  br i1 %1782, label %1790, label %1783

1783:                                             ; preds = %1779
  %1784 = load i32, ptr %9, align 4
  %1785 = load float, ptr %4, align 4
  %1786 = call i32 @set1d(ptr noundef @a, float noundef %1785, i32 noundef %1784)
  %1787 = load i32, ptr %11, align 4
  %1788 = load float, ptr %3, align 4
  %1789 = call i32 @set1d(ptr noundef @b, float noundef %1788, i32 noundef %1787)
  br label %1930

1790:                                             ; preds = %1779
  %1791 = load ptr, ptr %2, align 8
  %1792 = call i32 @strcmp(ptr noundef %1791, ptr noundef @"??_C@_05LEOAGPCB@vif?5?5?$AA@") #13
  %1793 = icmp ne i32 %1792, 0
  br i1 %1793, label %1801, label %1794

1794:                                             ; preds = %1790
  %1795 = load i32, ptr %9, align 4
  %1796 = load float, ptr %4, align 4
  %1797 = call i32 @set1d(ptr noundef @a, float noundef %1796, i32 noundef %1795)
  %1798 = load i32, ptr %11, align 4
  %1799 = load float, ptr %3, align 4
  %1800 = call i32 @set1d(ptr noundef @b, float noundef %1799, i32 noundef %1798)
  br label %1929

1801:                                             ; preds = %1790
  %1802 = load ptr, ptr %2, align 8
  %1803 = call i32 @strcmp(ptr noundef %1802, ptr noundef @"??_C@_05IJAJMNEN@vpv?5?5?$AA@") #13
  %1804 = icmp ne i32 %1803, 0
  br i1 %1804, label %1812, label %1805

1805:                                             ; preds = %1801
  %1806 = load i32, ptr %9, align 4
  %1807 = load float, ptr %4, align 4
  %1808 = call i32 @set1d(ptr noundef @a, float noundef %1807, i32 noundef %1806)
  %1809 = load i32, ptr %11, align 4
  %1810 = load float, ptr %3, align 4
  %1811 = call i32 @set1d(ptr noundef @b, float noundef %1810, i32 noundef %1809)
  br label %1928

1812:                                             ; preds = %1801
  %1813 = load ptr, ptr %2, align 8
  %1814 = call i32 @strcmp(ptr noundef %1813, ptr noundef @"??_C@_05HMIJGLIN@vtv?5?5?$AA@") #13
  %1815 = icmp ne i32 %1814, 0
  br i1 %1815, label %1823, label %1816

1816:                                             ; preds = %1812
  %1817 = load i32, ptr %9, align 4
  %1818 = load float, ptr %6, align 4
  %1819 = call i32 @set1d(ptr noundef @a, float noundef %1818, i32 noundef %1817)
  %1820 = load i32, ptr %9, align 4
  %1821 = load float, ptr %6, align 4
  %1822 = call i32 @set1d(ptr noundef @b, float noundef %1821, i32 noundef %1820)
  br label %1927

1823:                                             ; preds = %1812
  %1824 = load ptr, ptr %2, align 8
  %1825 = call i32 @strcmp(ptr noundef %1824, ptr noundef @"??_C@_05OFNLBPD@vpvtv?$AA@") #13
  %1826 = icmp ne i32 %1825, 0
  br i1 %1826, label %1837, label %1827

1827:                                             ; preds = %1823
  %1828 = load i32, ptr %9, align 4
  %1829 = load float, ptr %6, align 4
  %1830 = call i32 @set1d(ptr noundef @a, float noundef %1829, i32 noundef %1828)
  %1831 = load i32, ptr %10, align 4
  %1832 = load float, ptr %3, align 4
  %1833 = call i32 @set1d(ptr noundef @b, float noundef %1832, i32 noundef %1831)
  %1834 = load i32, ptr %10, align 4
  %1835 = load float, ptr %3, align 4
  %1836 = call i32 @set1d(ptr noundef @c, float noundef %1835, i32 noundef %1834)
  br label %1926

1837:                                             ; preds = %1823
  %1838 = load ptr, ptr %2, align 8
  %1839 = call i32 @strcmp(ptr noundef %1838, ptr noundef @"??_C@_05HDCKEFLG@vpvts?$AA@") #13
  %1840 = icmp ne i32 %1839, 0
  br i1 %1840, label %1848, label %1841

1841:                                             ; preds = %1837
  %1842 = load i32, ptr %9, align 4
  %1843 = load float, ptr %6, align 4
  %1844 = call i32 @set1d(ptr noundef @a, float noundef %1843, i32 noundef %1842)
  %1845 = load i32, ptr %11, align 4
  %1846 = load float, ptr %3, align 4
  %1847 = call i32 @set1d(ptr noundef @b, float noundef %1846, i32 noundef %1845)
  br label %1925

1848:                                             ; preds = %1837
  %1849 = load ptr, ptr %2, align 8
  %1850 = call i32 @strcmp(ptr noundef %1849, ptr noundef @"??_C@_05JFEBJCP@vpvpv?$AA@") #13
  %1851 = icmp ne i32 %1850, 0
  br i1 %1851, label %1863, label %1852

1852:                                             ; preds = %1848
  %1853 = load i32, ptr %11, align 4
  %1854 = load float, ptr %3, align 4
  %1855 = call i32 @set1d(ptr noundef @a, float noundef %1854, i32 noundef %1853)
  %1856 = load i32, ptr %9, align 4
  %1857 = load float, ptr %6, align 4
  %1858 = call i32 @set1d(ptr noundef @b, float noundef %1857, i32 noundef %1856)
  %1859 = load i32, ptr %9, align 4
  %1860 = load float, ptr %6, align 4
  %1861 = fneg float %1860
  %1862 = call i32 @set1d(ptr noundef @c, float noundef %1861, i32 noundef %1859)
  br label %1924

1863:                                             ; preds = %1848
  %1864 = load ptr, ptr %2, align 8
  %1865 = call i32 @strcmp(ptr noundef %1864, ptr noundef @"??_C@_05PLNNBHDD@vtvtv?$AA@") #13
  %1866 = icmp ne i32 %1865, 0
  br i1 %1866, label %1877, label %1867

1867:                                             ; preds = %1863
  %1868 = load i32, ptr %9, align 4
  %1869 = load float, ptr %6, align 4
  %1870 = call i32 @set1d(ptr noundef @a, float noundef %1869, i32 noundef %1868)
  %1871 = load i32, ptr %9, align 4
  %1872 = load float, ptr %7, align 4
  %1873 = call i32 @set1d(ptr noundef @b, float noundef %1872, i32 noundef %1871)
  %1874 = load i32, ptr %9, align 4
  %1875 = load float, ptr %5, align 4
  %1876 = call i32 @set1d(ptr noundef @c, float noundef %1875, i32 noundef %1874)
  br label %1923

1877:                                             ; preds = %1863
  %1878 = load ptr, ptr %2, align 8
  %1879 = call i32 @strcmp(ptr noundef %1878, ptr noundef @"??_C@_05CMNDDJDG@vsumr?$AA@") #13
  %1880 = icmp ne i32 %1879, 0
  br i1 %1880, label %1885, label %1881

1881:                                             ; preds = %1877
  %1882 = load i32, ptr %10, align 4
  %1883 = load float, ptr %3, align 4
  %1884 = call i32 @set1d(ptr noundef @a, float noundef %1883, i32 noundef %1882)
  br label %1922

1885:                                             ; preds = %1877
  %1886 = load ptr, ptr %2, align 8
  %1887 = call i32 @strcmp(ptr noundef %1886, ptr noundef @"??_C@_05NCEAFNKA@vdotr?$AA@") #13
  %1888 = icmp ne i32 %1887, 0
  br i1 %1888, label %1896, label %1889

1889:                                             ; preds = %1885
  %1890 = load i32, ptr %10, align 4
  %1891 = load float, ptr %3, align 4
  %1892 = call i32 @set1d(ptr noundef @a, float noundef %1891, i32 noundef %1890)
  %1893 = load i32, ptr %10, align 4
  %1894 = load float, ptr %3, align 4
  %1895 = call i32 @set1d(ptr noundef @b, float noundef %1894, i32 noundef %1893)
  br label %1921

1896:                                             ; preds = %1885
  %1897 = load ptr, ptr %2, align 8
  %1898 = call i32 @strcmp(ptr noundef %1897, ptr noundef @"??_C@_05NBAAOLGE@vbor?5?$AA@") #13
  %1899 = icmp ne i32 %1898, 0
  br i1 %1899, label %1919, label %1900

1900:                                             ; preds = %1896
  %1901 = load i32, ptr %10, align 4
  %1902 = load float, ptr %3, align 4
  %1903 = call i32 @set1d(ptr noundef @a, float noundef %1902, i32 noundef %1901)
  %1904 = load i32, ptr %10, align 4
  %1905 = load float, ptr %3, align 4
  %1906 = call i32 @set1d(ptr noundef @b, float noundef %1905, i32 noundef %1904)
  %1907 = load i32, ptr %10, align 4
  %1908 = load float, ptr %6, align 4
  %1909 = call i32 @set1d(ptr noundef @c, float noundef %1908, i32 noundef %1907)
  %1910 = load i32, ptr %10, align 4
  %1911 = load float, ptr %7, align 4
  %1912 = call i32 @set1d(ptr noundef @d, float noundef %1911, i32 noundef %1910)
  %1913 = load i32, ptr %10, align 4
  %1914 = load float, ptr %5, align 4
  %1915 = call i32 @set1d(ptr noundef @e, float noundef %1914, i32 noundef %1913)
  %1916 = load i32, ptr %10, align 4
  %1917 = load float, ptr %3, align 4
  %1918 = call i32 @set2d(ptr noundef @aa, float noundef %1917, i32 noundef %1916)
  br label %1920

1919:                                             ; preds = %1896
  br label %1920

1920:                                             ; preds = %1919, %1900
  br label %1921

1921:                                             ; preds = %1920, %1889
  br label %1922

1922:                                             ; preds = %1921, %1881
  br label %1923

1923:                                             ; preds = %1922, %1867
  br label %1924

1924:                                             ; preds = %1923, %1852
  br label %1925

1925:                                             ; preds = %1924, %1841
  br label %1926

1926:                                             ; preds = %1925, %1827
  br label %1927

1927:                                             ; preds = %1926, %1816
  br label %1928

1928:                                             ; preds = %1927, %1805
  br label %1929

1929:                                             ; preds = %1928, %1794
  br label %1930

1930:                                             ; preds = %1929, %1783
  br label %1931

1931:                                             ; preds = %1930, %1772
  br label %1932

1932:                                             ; preds = %1931, %1761
  br label %1933

1933:                                             ; preds = %1932, %1747
  br label %1934

1934:                                             ; preds = %1933, %1730
  br label %1935

1935:                                             ; preds = %1934, %1719
  br label %1936

1936:                                             ; preds = %1935, %1708
  br label %1937

1937:                                             ; preds = %1936, %1691
  br label %1938

1938:                                             ; preds = %1937, %1677
  br label %1939

1939:                                             ; preds = %1938, %1666
  br label %1940

1940:                                             ; preds = %1939, %1649
  br label %1941

1941:                                             ; preds = %1940, %1635
  br label %1942

1942:                                             ; preds = %1941, %1618
  br label %1943

1943:                                             ; preds = %1942, %1598
  br label %1944

1944:                                             ; preds = %1943, %1587
  br label %1945

1945:                                             ; preds = %1944, %1573
  br label %1946

1946:                                             ; preds = %1945, %1562
  br label %1947

1947:                                             ; preds = %1946, %1548
  br label %1948

1948:                                             ; preds = %1947, %1528
  br label %1949

1949:                                             ; preds = %1948, %1504
  br label %1950

1950:                                             ; preds = %1949, %1493
  br label %1951

1951:                                             ; preds = %1950, %1482
  br label %1952

1952:                                             ; preds = %1951, %1471
  br label %1953

1953:                                             ; preds = %1952, %1460
  br label %1954

1954:                                             ; preds = %1953, %1449
  br label %1955

1955:                                             ; preds = %1954, %1441
  br label %1956

1956:                                             ; preds = %1955, %1425
  br label %1957

1957:                                             ; preds = %1956, %1411
  br label %1958

1958:                                             ; preds = %1957, %1391
  br label %1959

1959:                                             ; preds = %1958, %1377
  br label %1960

1960:                                             ; preds = %1959, %1363
  br label %1961

1961:                                             ; preds = %1960, %1352
  br label %1962

1962:                                             ; preds = %1961, %1341
  br label %1963

1963:                                             ; preds = %1962, %1330
  br label %1964

1964:                                             ; preds = %1963, %1319
  br label %1965

1965:                                             ; preds = %1964, %1308
  br label %1966

1966:                                             ; preds = %1965, %1297
  br label %1967

1967:                                             ; preds = %1966, %1288
  br label %1968

1968:                                             ; preds = %1967, %1278
  br label %1969

1969:                                             ; preds = %1968, %1258
  br label %1970

1970:                                             ; preds = %1969, %1244
  br label %1971

1971:                                             ; preds = %1970, %1233
  br label %1972

1972:                                             ; preds = %1971, %1223
  br label %1973

1973:                                             ; preds = %1972, %1212
  br label %1974

1974:                                             ; preds = %1973, %1204
  br label %1975

1975:                                             ; preds = %1974, %1195
  br label %1976

1976:                                             ; preds = %1975, %1175
  br label %1977

1977:                                             ; preds = %1976, %1165
  br label %1978

1978:                                             ; preds = %1977, %1160
  br label %1979

1979:                                             ; preds = %1978, %1152
  br label %1980

1980:                                             ; preds = %1979, %1144
  br label %1981

1981:                                             ; preds = %1980, %1136
  br label %1982

1982:                                             ; preds = %1981, %1125
  br label %1983

1983:                                             ; preds = %1982, %1118
  br label %1984

1984:                                             ; preds = %1983, %1110
  br label %1985

1985:                                             ; preds = %1984, %1102
  br label %1986

1986:                                             ; preds = %1985, %1094
  br label %1987

1987:                                             ; preds = %1986, %1080
  br label %1988

1988:                                             ; preds = %1987, %1072
  br label %1989

1989:                                             ; preds = %1988, %1061
  br label %1990

1990:                                             ; preds = %1989, %1050
  br label %1991

1991:                                             ; preds = %1990, %1036
  br label %1992

1992:                                             ; preds = %1991, %1022
  br label %1993

1993:                                             ; preds = %1992, %1008
  br label %1994

1994:                                             ; preds = %1993, %988
  br label %1995

1995:                                             ; preds = %1994, %964
  br label %1996

1996:                                             ; preds = %1995, %940
  br label %1997

1997:                                             ; preds = %1996, %916
  br label %1998

1998:                                             ; preds = %1997, %899
  br label %1999

1999:                                             ; preds = %1998, %885
  br label %2000

2000:                                             ; preds = %1999, %865
  br label %2001

2001:                                             ; preds = %2000, %845
  br label %2002

2002:                                             ; preds = %2001, %825
  br label %2003

2003:                                             ; preds = %2002, %811
  br label %2004

2004:                                             ; preds = %2003, %794
  br label %2005

2005:                                             ; preds = %2004, %771
  br label %2006

2006:                                             ; preds = %2005, %757
  br label %2007

2007:                                             ; preds = %2006, %743
  br label %2008

2008:                                             ; preds = %2007, %732
  br label %2009

2009:                                             ; preds = %2008, %721
  br label %2010

2010:                                             ; preds = %2009, %704
  br label %2011

2011:                                             ; preds = %2010, %690
  br label %2012

2012:                                             ; preds = %2011, %670
  br label %2013

2013:                                             ; preds = %2012, %653
  br label %2014

2014:                                             ; preds = %2013, %633
  br label %2015

2015:                                             ; preds = %2014, %616
  br label %2016

2016:                                             ; preds = %2015, %599
  br label %2017

2017:                                             ; preds = %2016, %579
  br label %2018

2018:                                             ; preds = %2017, %565
  br label %2019

2019:                                             ; preds = %2018, %551
  br label %2020

2020:                                             ; preds = %2019, %540
  br label %2021

2021:                                             ; preds = %2020, %529
  br label %2022

2022:                                             ; preds = %2021, %515
  br label %2023

2023:                                             ; preds = %2022, %498
  br label %2024

2024:                                             ; preds = %2023, %481
  br label %2025

2025:                                             ; preds = %2024, %461
  br label %2026

2026:                                             ; preds = %2025, %447
  br label %2027

2027:                                             ; preds = %2026, %436
  br label %2028

2028:                                             ; preds = %2027, %425
  br label %2029

2029:                                             ; preds = %2028, %414
  br label %2030

2030:                                             ; preds = %2029, %403
  br label %2031

2031:                                             ; preds = %2030, %392
  br label %2032

2032:                                             ; preds = %2031, %378
  br label %2033

2033:                                             ; preds = %2032, %356
  br label %2034

2034:                                             ; preds = %2033, %336
  br label %2035

2035:                                             ; preds = %2034, %325
  br label %2036

2036:                                             ; preds = %2035, %314
  br label %2037

2037:                                             ; preds = %2036, %300
  br label %2038

2038:                                             ; preds = %2037, %289
  br label %2039

2039:                                             ; preds = %2038, %272
  br label %2040

2040:                                             ; preds = %2039, %252
  br label %2041

2041:                                             ; preds = %2040, %238
  br label %2042

2042:                                             ; preds = %2041, %221
  br label %2043

2043:                                             ; preds = %2042, %201
  br label %2044

2044:                                             ; preds = %2043, %181
  br label %2045

2045:                                             ; preds = %2044, %170
  br label %2046

2046:                                             ; preds = %2045, %159
  br label %2047

2047:                                             ; preds = %2046, %148
  br label %2048

2048:                                             ; preds = %2047, %137
  br label %2049

2049:                                             ; preds = %2048, %129
  br label %2050

2050:                                             ; preds = %2049, %112
  br label %2051

2051:                                             ; preds = %2050, %101
  br label %2052

2052:                                             ; preds = %2051, %90
  br label %2053

2053:                                             ; preds = %2052, %79
  br label %2054

2054:                                             ; preds = %2053, %59
  br label %2055

2055:                                             ; preds = %2054, %54
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @strcmp(ptr noundef, ptr noundef) #8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s000() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 @init(ptr noundef @"??_C@_05CDGOKACG@s000?5?$AA@")
  %8 = call i32 @clock()
  store i32 %8, ptr %1, align 4
  store i32 0, ptr %5, align 4
  br label %9

9:                                                ; preds = %30, %0
  %10 = load i32, ptr %5, align 4
  %11 = icmp slt i32 %10, 512
  br i1 %11, label %12, label %33

12:                                               ; preds = %9
  store i32 0, ptr %6, align 4
  br label %13

13:                                               ; preds = %25, %12
  %14 = load i32, ptr %6, align 4
  %15 = icmp slt i32 %14, 32000
  br i1 %15, label %16, label %28

16:                                               ; preds = %13
  %17 = load i32, ptr %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [32000 x float], ptr @Y, i64 0, i64 %18
  %20 = load float, ptr %19, align 4
  %21 = fadd float %20, 1.000000e+00
  %22 = load i32, ptr %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [32000 x float], ptr @X, i64 0, i64 %23
  store float %21, ptr %24, align 4
  br label %25

25:                                               ; preds = %16
  %26 = load i32, ptr %6, align 4
  %27 = add i32 %26, 1
  store i32 %27, ptr %6, align 4
  br label %13, !llvm.loop !44

28:                                               ; preds = %13
  %29 = call i32 @dummy(ptr noundef @X, ptr noundef @Y, ptr noundef @Z, ptr noundef @U, ptr noundef @V, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %30

30:                                               ; preds = %28
  %31 = load i32, ptr %5, align 4
  %32 = add i32 %31, 1
  store i32 %32, ptr %5, align 4
  br label %9, !llvm.loop !45

33:                                               ; preds = %9
  %34 = call i32 @clock()
  store i32 %34, ptr %2, align 4
  %35 = load i32, ptr %2, align 4
  %36 = load i32, ptr %1, align 4
  %37 = sub i32 %35, %36
  store i32 %37, ptr %3, align 4
  %38 = load i32, ptr %3, align 4
  %39 = sitofp i32 %38 to double
  %40 = fdiv double %39, 1.000000e+06
  store double %40, ptr %4, align 8
  %41 = load double, ptr %4, align 8
  %42 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@DPAFHEGA@S000?7?5?$CF?42f?5?7?7?$AA@", double noundef %41)
  call void @check(i32 noundef 1)
  ret i32 0
}

declare dso_local i32 @clock() #9

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dummy(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, float noundef %8) #7 {
  %10 = alloca float, align 4
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  store float %8, ptr %10, align 4
  store ptr %7, ptr %11, align 8
  store ptr %6, ptr %12, align 8
  store ptr %5, ptr %13, align 8
  store ptr %4, ptr %14, align 8
  store ptr %3, ptr %15, align 8
  store ptr %2, ptr %16, align 8
  store ptr %1, ptr %17, align 8
  store ptr %0, ptr %18, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s111() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 @init(ptr noundef @"??_C@_05KHHAIEME@s111?5?$AA@")
  %8 = call i32 @clock()
  store i32 %8, ptr %1, align 4
  store i32 0, ptr %5, align 4
  br label %9

9:                                                ; preds = %35, %0
  %10 = load i32, ptr %5, align 4
  %11 = icmp slt i32 %10, 512
  br i1 %11, label %12, label %38

12:                                               ; preds = %9
  store i32 1, ptr %6, align 4
  br label %13

13:                                               ; preds = %30, %12
  %14 = load i32, ptr %6, align 4
  %15 = icmp slt i32 %14, 32000
  br i1 %15, label %16, label %33

16:                                               ; preds = %13
  %17 = load i32, ptr %6, align 4
  %18 = sub i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %19
  %21 = load float, ptr %20, align 4
  %22 = load i32, ptr %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %23
  %25 = load float, ptr %24, align 4
  %26 = fadd float %21, %25
  %27 = load i32, ptr %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %28
  store float %26, ptr %29, align 4
  br label %30

30:                                               ; preds = %16
  %31 = load i32, ptr %6, align 4
  %32 = add i32 %31, 2
  store i32 %32, ptr %6, align 4
  br label %13, !llvm.loop !46

33:                                               ; preds = %13
  %34 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %35

35:                                               ; preds = %33
  %36 = load i32, ptr %5, align 4
  %37 = add i32 %36, 1
  store i32 %37, ptr %5, align 4
  br label %9, !llvm.loop !47

38:                                               ; preds = %9
  %39 = call i32 @clock()
  store i32 %39, ptr %2, align 4
  %40 = load i32, ptr %2, align 4
  %41 = load i32, ptr %1, align 4
  %42 = sub i32 %40, %41
  store i32 %42, ptr %3, align 4
  %43 = load i32, ptr %3, align 4
  %44 = sitofp i32 %43 to double
  %45 = fdiv double %44, 1.000000e+06
  store double %45, ptr %4, align 8
  %46 = load double, ptr %4, align 8
  %47 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@LILIDOEK@S111?7?5?$CF?42f?5?7?7?$AA@", double noundef %46)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s1111() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 @init(ptr noundef @"??_C@_05KHHAIEME@s111?5?$AA@")
  %8 = call i32 @clock()
  store i32 %8, ptr %1, align 4
  store i32 0, ptr %5, align 4
  br label %9

9:                                                ; preds = %71, %0
  %10 = load i32, ptr %5, align 4
  %11 = icmp slt i32 %10, 512
  br i1 %11, label %12, label %74

12:                                               ; preds = %9
  store i32 0, ptr %6, align 4
  br label %13

13:                                               ; preds = %66, %12
  %14 = load i32, ptr %6, align 4
  %15 = icmp slt i32 %14, 16000
  br i1 %15, label %16, label %69

16:                                               ; preds = %13
  %17 = load i32, ptr %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %18
  %20 = load float, ptr %19, align 4
  %21 = load i32, ptr %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %22
  %24 = load float, ptr %23, align 4
  %25 = load i32, ptr %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %26
  %28 = load float, ptr %27, align 4
  %29 = load i32, ptr %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %30
  %32 = load float, ptr %31, align 4
  %33 = fmul float %28, %32
  %34 = call float @llvm.fmuladd.f32(float %20, float %24, float %33)
  %35 = load i32, ptr %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %36
  %38 = load float, ptr %37, align 4
  %39 = load i32, ptr %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %40
  %42 = load float, ptr %41, align 4
  %43 = call float @llvm.fmuladd.f32(float %38, float %42, float %34)
  %44 = load i32, ptr %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %45
  %47 = load float, ptr %46, align 4
  %48 = load i32, ptr %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %49
  %51 = load float, ptr %50, align 4
  %52 = call float @llvm.fmuladd.f32(float %47, float %51, float %43)
  %53 = load i32, ptr %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %54
  %56 = load float, ptr %55, align 4
  %57 = load i32, ptr %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %58
  %60 = load float, ptr %59, align 4
  %61 = call float @llvm.fmuladd.f32(float %56, float %60, float %52)
  %62 = load i32, ptr %6, align 4
  %63 = mul i32 2, %62
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %64
  store float %61, ptr %65, align 4
  br label %66

66:                                               ; preds = %16
  %67 = load i32, ptr %6, align 4
  %68 = add i32 %67, 1
  store i32 %68, ptr %6, align 4
  br label %13, !llvm.loop !48

69:                                               ; preds = %13
  %70 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %71

71:                                               ; preds = %69
  %72 = load i32, ptr %5, align 4
  %73 = add i32 %72, 1
  store i32 %73, ptr %5, align 4
  br label %9, !llvm.loop !49

74:                                               ; preds = %9
  %75 = call i32 @clock()
  store i32 %75, ptr %2, align 4
  %76 = load i32, ptr %2, align 4
  %77 = load i32, ptr %1, align 4
  %78 = sub i32 %76, %77
  store i32 %78, ptr %3, align 4
  %79 = load i32, ptr %3, align 4
  %80 = sitofp i32 %79 to double
  %81 = fdiv double %80, 1.000000e+06
  store double %81, ptr %4, align 8
  %82 = load double, ptr %4, align 8
  %83 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0BA@DDHEPEEE@S1111?7?5?$CF?42f?5?7?7?5?$AA@", double noundef %82)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #10

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s112() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 @init(ptr noundef @"??_C@_05KFDGDKJN@s112?5?$AA@")
  %8 = call i32 @clock()
  store i32 %8, ptr %1, align 4
  store i32 0, ptr %5, align 4
  br label %9

9:                                                ; preds = %35, %0
  %10 = load i32, ptr %5, align 4
  %11 = icmp slt i32 %10, 768
  br i1 %11, label %12, label %38

12:                                               ; preds = %9
  store i32 31998, ptr %6, align 4
  br label %13

13:                                               ; preds = %30, %12
  %14 = load i32, ptr %6, align 4
  %15 = icmp sge i32 %14, 0
  br i1 %15, label %16, label %33

16:                                               ; preds = %13
  %17 = load i32, ptr %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %18
  %20 = load float, ptr %19, align 4
  %21 = load i32, ptr %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %22
  %24 = load float, ptr %23, align 4
  %25 = fadd float %20, %24
  %26 = load i32, ptr %6, align 4
  %27 = add i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %28
  store float %25, ptr %29, align 4
  br label %30

30:                                               ; preds = %16
  %31 = load i32, ptr %6, align 4
  %32 = add i32 %31, -1
  store i32 %32, ptr %6, align 4
  br label %13, !llvm.loop !50

33:                                               ; preds = %13
  %34 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %35

35:                                               ; preds = %33
  %36 = load i32, ptr %5, align 4
  %37 = add i32 %36, 1
  store i32 %37, ptr %5, align 4
  br label %9, !llvm.loop !51

38:                                               ; preds = %9
  %39 = call i32 @clock()
  store i32 %39, ptr %2, align 4
  %40 = load i32, ptr %2, align 4
  %41 = load i32, ptr %1, align 4
  %42 = sub i32 %40, %41
  store i32 %42, ptr %3, align 4
  %43 = load i32, ptr %3, align 4
  %44 = sitofp i32 %43 to double
  %45 = fdiv double %44, 1.000000e+06
  store double %45, ptr %4, align 8
  %46 = load double, ptr %4, align 8
  %47 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@CBFKFIEL@S112?7?5?$CF?42f?5?7?7?$AA@", double noundef %46)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s1112() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 @init(ptr noundef @"??_C@_05KFDGDKJN@s112?5?$AA@")
  %8 = call i32 @clock()
  store i32 %8, ptr %1, align 4
  store i32 0, ptr %5, align 4
  br label %9

9:                                                ; preds = %30, %0
  %10 = load i32, ptr %5, align 4
  %11 = icmp slt i32 %10, 768
  br i1 %11, label %12, label %33

12:                                               ; preds = %9
  store i32 31999, ptr %6, align 4
  br label %13

13:                                               ; preds = %25, %12
  %14 = load i32, ptr %6, align 4
  %15 = icmp sge i32 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %13
  %17 = load i32, ptr %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %18
  %20 = load float, ptr %19, align 4
  %21 = fadd float %20, 1.000000e+00
  %22 = load i32, ptr %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %23
  store float %21, ptr %24, align 4
  br label %25

25:                                               ; preds = %16
  %26 = load i32, ptr %6, align 4
  %27 = add i32 %26, -1
  store i32 %27, ptr %6, align 4
  br label %13, !llvm.loop !52

28:                                               ; preds = %13
  %29 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %30

30:                                               ; preds = %28
  %31 = load i32, ptr %5, align 4
  %32 = add i32 %31, 1
  store i32 %32, ptr %5, align 4
  br label %9, !llvm.loop !53

33:                                               ; preds = %9
  %34 = call i32 @clock()
  store i32 %34, ptr %2, align 4
  %35 = load i32, ptr %2, align 4
  %36 = load i32, ptr %1, align 4
  %37 = sub i32 %35, %36
  store i32 %37, ptr %3, align 4
  %38 = load i32, ptr %3, align 4
  %39 = sitofp i32 %38 to double
  %40 = fdiv double %39, 1.000000e+06
  store double %40, ptr %4, align 8
  %41 = load double, ptr %4, align 8
  %42 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0BA@EEOKCGLE@S1112?7?5?$CF?42f?5?7?7?5?$AA@", double noundef %41)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s113() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 @init(ptr noundef @"??_C@_05KEPEFAKK@s113?5?$AA@")
  %8 = call i32 @clock()
  store i32 %8, ptr %1, align 4
  store i32 0, ptr %5, align 4
  br label %9

9:                                                ; preds = %31, %0
  %10 = load i32, ptr %5, align 4
  %11 = icmp slt i32 %10, 1024
  br i1 %11, label %12, label %34

12:                                               ; preds = %9
  store i32 1, ptr %6, align 4
  br label %13

13:                                               ; preds = %26, %12
  %14 = load i32, ptr %6, align 4
  %15 = icmp slt i32 %14, 32000
  br i1 %15, label %16, label %29

16:                                               ; preds = %13
  %17 = load float, ptr @a, align 16
  %18 = load i32, ptr %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %19
  %21 = load float, ptr %20, align 4
  %22 = fadd float %17, %21
  %23 = load i32, ptr %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %24
  store float %22, ptr %25, align 4
  br label %26

26:                                               ; preds = %16
  %27 = load i32, ptr %6, align 4
  %28 = add i32 %27, 1
  store i32 %28, ptr %6, align 4
  br label %13, !llvm.loop !54

29:                                               ; preds = %13
  %30 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %31

31:                                               ; preds = %29
  %32 = load i32, ptr %5, align 4
  %33 = add i32 %32, 1
  store i32 %33, ptr %5, align 4
  br label %9, !llvm.loop !55

34:                                               ; preds = %9
  %35 = call i32 @clock()
  store i32 %35, ptr %2, align 4
  %36 = load i32, ptr %2, align 4
  %37 = load i32, ptr %1, align 4
  %38 = sub i32 %36, %37
  store i32 %38, ptr %3, align 4
  %39 = load i32, ptr %3, align 4
  %40 = sitofp i32 %39 to double
  %41 = fdiv double %40, 1.000000e+06
  store double %41, ptr %4, align 8
  %42 = load double, ptr %4, align 8
  %43 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@OANEIHIL@S113?7?5?$CF?42f?5?7?7?$AA@", double noundef %42)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s1113() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 @init(ptr noundef @"??_C@_05KEPEFAKK@s113?5?$AA@")
  %8 = call i32 @clock()
  store i32 %8, ptr %1, align 4
  store i32 0, ptr %5, align 4
  br label %9

9:                                                ; preds = %31, %0
  %10 = load i32, ptr %5, align 4
  %11 = icmp slt i32 %10, 512
  br i1 %11, label %12, label %34

12:                                               ; preds = %9
  store i32 0, ptr %6, align 4
  br label %13

13:                                               ; preds = %26, %12
  %14 = load i32, ptr %6, align 4
  %15 = icmp slt i32 %14, 32000
  br i1 %15, label %16, label %29

16:                                               ; preds = %13
  %17 = load float, ptr getelementptr inbounds nuw (i8, ptr @a, i64 64000), align 16
  %18 = load i32, ptr %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %19
  %21 = load float, ptr %20, align 4
  %22 = fadd float %17, %21
  %23 = load i32, ptr %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %24
  store float %22, ptr %25, align 4
  br label %26

26:                                               ; preds = %16
  %27 = load i32, ptr %6, align 4
  %28 = add i32 %27, 1
  store i32 %28, ptr %6, align 4
  br label %13, !llvm.loop !56

29:                                               ; preds = %13
  %30 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %31

31:                                               ; preds = %29
  %32 = load i32, ptr %5, align 4
  %33 = add i32 %32, 1
  store i32 %33, ptr %5, align 4
  br label %9, !llvm.loop !57

34:                                               ; preds = %9
  %35 = call i32 @clock()
  store i32 %35, ptr %2, align 4
  %36 = load i32, ptr %2, align 4
  %37 = load i32, ptr %1, align 4
  %38 = sub i32 %36, %37
  store i32 %38, ptr %3, align 4
  %39 = load i32, ptr %3, align 4
  %40 = sitofp i32 %39 to double
  %41 = fdiv double %40, 1.000000e+06
  store double %41, ptr %4, align 8
  %42 = load double, ptr %4, align 8
  %43 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@BEOLDIGE@S1113?7?5?$CF?42f?5?7?7?$AA@", double noundef %42)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s114() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = call i32 @init(ptr noundef @"??_C@_05KBLLEGCP@s114?5?$AA@")
  %9 = call i32 @clock()
  store i32 %9, ptr %1, align 4
  store i32 0, ptr %5, align 4
  br label %10

10:                                               ; preds = %53, %0
  %11 = load i32, ptr %5, align 4
  %12 = icmp slt i32 %11, 200
  br i1 %12, label %13, label %56

13:                                               ; preds = %10
  store i32 0, ptr %6, align 4
  br label %14

14:                                               ; preds = %48, %13
  %15 = load i32, ptr %6, align 4
  %16 = icmp slt i32 %15, 256
  br i1 %16, label %17, label %51

17:                                               ; preds = %14
  store i32 0, ptr %7, align 4
  br label %18

18:                                               ; preds = %44, %17
  %19 = load i32, ptr %7, align 4
  %20 = load i32, ptr %6, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %47

22:                                               ; preds = %18
  %23 = load i32, ptr %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %24
  %26 = load i32, ptr %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [256 x float], ptr %25, i64 0, i64 %27
  %29 = load float, ptr %28, align 4
  %30 = load i32, ptr %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %31
  %33 = load i32, ptr %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [256 x float], ptr %32, i64 0, i64 %34
  %36 = load float, ptr %35, align 4
  %37 = fadd float %29, %36
  %38 = load i32, ptr %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %39
  %41 = load i32, ptr %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [256 x float], ptr %40, i64 0, i64 %42
  store float %37, ptr %43, align 4
  br label %44

44:                                               ; preds = %22
  %45 = load i32, ptr %7, align 4
  %46 = add i32 %45, 1
  store i32 %46, ptr %7, align 4
  br label %18, !llvm.loop !58

47:                                               ; preds = %18
  br label %48

48:                                               ; preds = %47
  %49 = load i32, ptr %6, align 4
  %50 = add i32 %49, 1
  store i32 %50, ptr %6, align 4
  br label %14, !llvm.loop !59

51:                                               ; preds = %14
  %52 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %53

53:                                               ; preds = %51
  %54 = load i32, ptr %5, align 4
  %55 = add i32 %54, 1
  store i32 %55, ptr %5, align 4
  br label %10, !llvm.loop !60

56:                                               ; preds = %10
  %57 = call i32 @clock()
  store i32 %57, ptr %2, align 4
  %58 = load i32, ptr %2, align 4
  %59 = load i32, ptr %1, align 4
  %60 = sub i32 %58, %59
  store i32 %60, ptr %3, align 4
  %61 = load i32, ptr %3, align 4
  %62 = sitofp i32 %61 to double
  %63 = fdiv double %62, 1.000000e+06
  store double %63, ptr %4, align 8
  %64 = load double, ptr %4, align 8
  %65 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@MJOPJCAI@S114?7?5?$CF?42f?5?7?7?$AA@", double noundef %64)
  call void @check(i32 noundef 11)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s115() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = call i32 @init(ptr noundef @"??_C@_05KAHJCMBI@s115?5?$AA@")
  %9 = call i32 @clock()
  store i32 %9, ptr %1, align 4
  store i32 0, ptr %5, align 4
  br label %10

10:                                               ; preds = %50, %0
  %11 = load i32, ptr %5, align 4
  %12 = icmp slt i32 %11, 1000
  br i1 %12, label %13, label %53

13:                                               ; preds = %10
  store i32 0, ptr %6, align 4
  br label %14

14:                                               ; preds = %45, %13
  %15 = load i32, ptr %6, align 4
  %16 = icmp slt i32 %15, 256
  br i1 %16, label %17, label %48

17:                                               ; preds = %14
  %18 = load i32, ptr %6, align 4
  %19 = add i32 %18, 1
  store i32 %19, ptr %7, align 4
  br label %20

20:                                               ; preds = %41, %17
  %21 = load i32, ptr %7, align 4
  %22 = icmp slt i32 %21, 256
  br i1 %22, label %23, label %44

23:                                               ; preds = %20
  %24 = load i32, ptr %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %25
  %27 = load i32, ptr %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [256 x float], ptr %26, i64 0, i64 %28
  %30 = load float, ptr %29, align 4
  %31 = load i32, ptr %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %32
  %34 = load float, ptr %33, align 4
  %35 = load i32, ptr %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %36
  %38 = load float, ptr %37, align 4
  %39 = fneg float %30
  %40 = call float @llvm.fmuladd.f32(float %39, float %34, float %38)
  store float %40, ptr %37, align 4
  br label %41

41:                                               ; preds = %23
  %42 = load i32, ptr %7, align 4
  %43 = add i32 %42, 1
  store i32 %43, ptr %7, align 4
  br label %20, !llvm.loop !61

44:                                               ; preds = %20
  br label %45

45:                                               ; preds = %44
  %46 = load i32, ptr %6, align 4
  %47 = add i32 %46, 1
  store i32 %47, ptr %6, align 4
  br label %14, !llvm.loop !62

48:                                               ; preds = %14
  %49 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %50

50:                                               ; preds = %48
  %51 = load i32, ptr %5, align 4
  %52 = add i32 %51, 1
  store i32 %52, ptr %5, align 4
  br label %10, !llvm.loop !63

53:                                               ; preds = %10
  %54 = call i32 @clock()
  store i32 %54, ptr %2, align 4
  %55 = load i32, ptr %2, align 4
  %56 = load i32, ptr %1, align 4
  %57 = sub i32 %55, %56
  store i32 %57, ptr %3, align 4
  %58 = load i32, ptr %3, align 4
  %59 = sitofp i32 %58 to double
  %60 = fdiv double %59, 1.000000e+06
  store double %60, ptr %4, align 8
  %61 = load double, ptr %4, align 8
  %62 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@IGBENMI@S115?7?5?$CF?42f?5?7?7?$AA@", double noundef %61)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s1115() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = call i32 @init(ptr noundef @"??_C@_05KAHJCMBI@s115?5?$AA@")
  %9 = call i32 @clock()
  store i32 %9, ptr %1, align 4
  store i32 0, ptr %5, align 4
  br label %10

10:                                               ; preds = %59, %0
  %11 = load i32, ptr %5, align 4
  %12 = icmp slt i32 %11, 100
  br i1 %12, label %13, label %62

13:                                               ; preds = %10
  store i32 0, ptr %6, align 4
  br label %14

14:                                               ; preds = %54, %13
  %15 = load i32, ptr %6, align 4
  %16 = icmp slt i32 %15, 256
  br i1 %16, label %17, label %57

17:                                               ; preds = %14
  store i32 0, ptr %7, align 4
  br label %18

18:                                               ; preds = %50, %17
  %19 = load i32, ptr %7, align 4
  %20 = icmp slt i32 %19, 256
  br i1 %20, label %21, label %53

21:                                               ; preds = %18
  %22 = load i32, ptr %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %23
  %25 = load i32, ptr %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [256 x float], ptr %24, i64 0, i64 %26
  %28 = load float, ptr %27, align 4
  %29 = load i32, ptr %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [256 x [256 x float]], ptr @cc, i64 0, i64 %30
  %32 = load i32, ptr %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [256 x float], ptr %31, i64 0, i64 %33
  %35 = load float, ptr %34, align 4
  %36 = load i32, ptr %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %37
  %39 = load i32, ptr %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [256 x float], ptr %38, i64 0, i64 %40
  %42 = load float, ptr %41, align 4
  %43 = call float @llvm.fmuladd.f32(float %28, float %35, float %42)
  %44 = load i32, ptr %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %45
  %47 = load i32, ptr %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [256 x float], ptr %46, i64 0, i64 %48
  store float %43, ptr %49, align 4
  br label %50

50:                                               ; preds = %21
  %51 = load i32, ptr %7, align 4
  %52 = add i32 %51, 1
  store i32 %52, ptr %7, align 4
  br label %18, !llvm.loop !64

53:                                               ; preds = %18
  br label %54

54:                                               ; preds = %53
  %55 = load i32, ptr %6, align 4
  %56 = add i32 %55, 1
  store i32 %56, ptr %6, align 4
  br label %14, !llvm.loop !65

57:                                               ; preds = %14
  %58 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %59

59:                                               ; preds = %57
  %60 = load i32, ptr %5, align 4
  %61 = add i32 %60, 1
  store i32 %61, ptr %5, align 4
  br label %10, !llvm.loop !66

62:                                               ; preds = %10
  %63 = call i32 @clock()
  store i32 %63, ptr %2, align 4
  %64 = load i32, ptr %2, align 4
  %65 = load i32, ptr %1, align 4
  %66 = sub i32 %64, %65
  store i32 %66, ptr %3, align 4
  %67 = load i32, ptr %3, align 4
  %68 = sitofp i32 %67 to double
  %69 = fdiv double %68, 1.000000e+06
  store double %69, ptr %4, align 8
  %70 = load double, ptr %4, align 8
  %71 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@PMFOPCCH@S1115?7?5?$CF?42f?5?7?7?$AA@", double noundef %70)
  call void @check(i32 noundef 11)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s116() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 @init(ptr noundef @"??_C@_05KCDPJCEB@s116?5?$AA@")
  %8 = call i32 @clock()
  store i32 %8, ptr %1, align 4
  store i32 0, ptr %5, align 4
  br label %9

9:                                                ; preds = %95, %0
  %10 = load i32, ptr %5, align 4
  %11 = icmp slt i32 %10, 2560
  br i1 %11, label %12, label %98

12:                                               ; preds = %9
  store i32 0, ptr %6, align 4
  br label %13

13:                                               ; preds = %90, %12
  %14 = load i32, ptr %6, align 4
  %15 = icmp slt i32 %14, 31995
  br i1 %15, label %16, label %93

16:                                               ; preds = %13
  %17 = load i32, ptr %6, align 4
  %18 = add i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %19
  %21 = load float, ptr %20, align 4
  %22 = load i32, ptr %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %23
  %25 = load float, ptr %24, align 4
  %26 = fmul float %21, %25
  %27 = load i32, ptr %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %28
  store float %26, ptr %29, align 4
  %30 = load i32, ptr %6, align 4
  %31 = add i32 %30, 2
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %32
  %34 = load float, ptr %33, align 4
  %35 = load i32, ptr %6, align 4
  %36 = add i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %37
  %39 = load float, ptr %38, align 4
  %40 = fmul float %34, %39
  %41 = load i32, ptr %6, align 4
  %42 = add i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %43
  store float %40, ptr %44, align 4
  %45 = load i32, ptr %6, align 4
  %46 = add i32 %45, 3
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %47
  %49 = load float, ptr %48, align 4
  %50 = load i32, ptr %6, align 4
  %51 = add i32 %50, 2
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %52
  %54 = load float, ptr %53, align 4
  %55 = fmul float %49, %54
  %56 = load i32, ptr %6, align 4
  %57 = add i32 %56, 2
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %58
  store float %55, ptr %59, align 4
  %60 = load i32, ptr %6, align 4
  %61 = add i32 %60, 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %62
  %64 = load float, ptr %63, align 4
  %65 = load i32, ptr %6, align 4
  %66 = add i32 %65, 3
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %67
  %69 = load float, ptr %68, align 4
  %70 = fmul float %64, %69
  %71 = load i32, ptr %6, align 4
  %72 = add i32 %71, 3
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %73
  store float %70, ptr %74, align 4
  %75 = load i32, ptr %6, align 4
  %76 = add i32 %75, 5
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %77
  %79 = load float, ptr %78, align 4
  %80 = load i32, ptr %6, align 4
  %81 = add i32 %80, 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %82
  %84 = load float, ptr %83, align 4
  %85 = fmul float %79, %84
  %86 = load i32, ptr %6, align 4
  %87 = add i32 %86, 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %88
  store float %85, ptr %89, align 4
  br label %90

90:                                               ; preds = %16
  %91 = load i32, ptr %6, align 4
  %92 = add i32 %91, 5
  store i32 %92, ptr %6, align 4
  br label %13, !llvm.loop !67

93:                                               ; preds = %13
  %94 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %95

95:                                               ; preds = %93
  %96 = load i32, ptr %5, align 4
  %97 = add i32 %96, 1
  store i32 %97, ptr %5, align 4
  br label %9, !llvm.loop !68

98:                                               ; preds = %9
  %99 = call i32 @clock()
  store i32 %99, ptr %2, align 4
  %100 = load i32, ptr %2, align 4
  %101 = load i32, ptr %1, align 4
  %102 = sub i32 %100, %101
  store i32 %102, ptr %3, align 4
  %103 = load i32, ptr %3, align 4
  %104 = sitofp i32 %103 to double
  %105 = fdiv double %104, 1.000000e+06
  store double %105, ptr %4, align 8
  %106 = load double, ptr %4, align 8
  %107 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@JBIDCLMJ@S116?7?5?$CF?42f?5?7?7?$AA@", double noundef %106)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s118() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = call i32 @init(ptr noundef @"??_C@_05KIKBLPEL@s118?5?$AA@")
  %9 = call i32 @clock()
  store i32 %9, ptr %1, align 4
  store i32 0, ptr %5, align 4
  br label %10

10:                                               ; preds = %52, %0
  %11 = load i32, ptr %5, align 4
  %12 = icmp slt i32 %11, 200
  br i1 %12, label %13, label %55

13:                                               ; preds = %10
  store i32 1, ptr %6, align 4
  br label %14

14:                                               ; preds = %47, %13
  %15 = load i32, ptr %6, align 4
  %16 = icmp slt i32 %15, 256
  br i1 %16, label %17, label %50

17:                                               ; preds = %14
  store i32 0, ptr %7, align 4
  br label %18

18:                                               ; preds = %43, %17
  %19 = load i32, ptr %7, align 4
  %20 = load i32, ptr %6, align 4
  %21 = sub i32 %20, 1
  %22 = icmp sle i32 %19, %21
  br i1 %22, label %23, label %46

23:                                               ; preds = %18
  %24 = load i32, ptr %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %25
  %27 = load i32, ptr %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [256 x float], ptr %26, i64 0, i64 %28
  %30 = load float, ptr %29, align 4
  %31 = load i32, ptr %6, align 4
  %32 = load i32, ptr %7, align 4
  %33 = sub i32 %31, %32
  %34 = sub i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %35
  %37 = load float, ptr %36, align 4
  %38 = load i32, ptr %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %39
  %41 = load float, ptr %40, align 4
  %42 = call float @llvm.fmuladd.f32(float %30, float %37, float %41)
  store float %42, ptr %40, align 4
  br label %43

43:                                               ; preds = %23
  %44 = load i32, ptr %7, align 4
  %45 = add i32 %44, 1
  store i32 %45, ptr %7, align 4
  br label %18, !llvm.loop !69

46:                                               ; preds = %18
  br label %47

47:                                               ; preds = %46
  %48 = load i32, ptr %6, align 4
  %49 = add i32 %48, 1
  store i32 %49, ptr %6, align 4
  br label %14, !llvm.loop !70

50:                                               ; preds = %14
  %51 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %52

52:                                               ; preds = %50
  %53 = load i32, ptr %5, align 4
  %54 = add i32 %53, 1
  store i32 %54, ptr %5, align 4
  br label %10, !llvm.loop !71

55:                                               ; preds = %10
  %56 = call i32 @clock()
  store i32 %56, ptr %2, align 4
  %57 = load i32, ptr %2, align 4
  %58 = load i32, ptr %1, align 4
  %59 = sub i32 %57, %58
  store i32 %59, ptr %3, align 4
  %60 = load i32, ptr %3, align 4
  %61 = sitofp i32 %60 to double
  %62 = fdiv double %61, 1.000000e+06
  store double %62, ptr %4, align 8
  %63 = load double, ptr %4, align 8
  %64 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@MDPFAAMP@S118?7?5?$CF?42f?5?7?7?$AA@", double noundef %63)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s119() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = call i32 @init(ptr noundef @"??_C@_05KJGDNFHM@s119?5?$AA@")
  %9 = call i32 @clock()
  store i32 %9, ptr %1, align 4
  store i32 0, ptr %5, align 4
  br label %10

10:                                               ; preds = %54, %0
  %11 = load i32, ptr %5, align 4
  %12 = icmp slt i32 %11, 200
  br i1 %12, label %13, label %57

13:                                               ; preds = %10
  store i32 1, ptr %6, align 4
  br label %14

14:                                               ; preds = %49, %13
  %15 = load i32, ptr %6, align 4
  %16 = icmp slt i32 %15, 256
  br i1 %16, label %17, label %52

17:                                               ; preds = %14
  store i32 1, ptr %7, align 4
  br label %18

18:                                               ; preds = %45, %17
  %19 = load i32, ptr %7, align 4
  %20 = icmp slt i32 %19, 256
  br i1 %20, label %21, label %48

21:                                               ; preds = %18
  %22 = load i32, ptr %6, align 4
  %23 = sub i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %24
  %26 = load i32, ptr %7, align 4
  %27 = sub i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [256 x float], ptr %25, i64 0, i64 %28
  %30 = load float, ptr %29, align 4
  %31 = load i32, ptr %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %32
  %34 = load i32, ptr %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [256 x float], ptr %33, i64 0, i64 %35
  %37 = load float, ptr %36, align 4
  %38 = fadd float %30, %37
  %39 = load i32, ptr %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %40
  %42 = load i32, ptr %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [256 x float], ptr %41, i64 0, i64 %43
  store float %38, ptr %44, align 4
  br label %45

45:                                               ; preds = %21
  %46 = load i32, ptr %7, align 4
  %47 = add i32 %46, 1
  store i32 %47, ptr %7, align 4
  br label %18, !llvm.loop !72

48:                                               ; preds = %18
  br label %49

49:                                               ; preds = %48
  %50 = load i32, ptr %6, align 4
  %51 = add i32 %50, 1
  store i32 %51, ptr %6, align 4
  br label %14, !llvm.loop !73

52:                                               ; preds = %14
  %53 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %54

54:                                               ; preds = %52
  %55 = load i32, ptr %5, align 4
  %56 = add i32 %55, 1
  store i32 %56, ptr %5, align 4
  br label %10, !llvm.loop !74

57:                                               ; preds = %10
  %58 = call i32 @clock()
  store i32 %58, ptr %2, align 4
  %59 = load i32, ptr %2, align 4
  %60 = load i32, ptr %1, align 4
  %61 = sub i32 %59, %60
  store i32 %61, ptr %3, align 4
  %62 = load i32, ptr %3, align 4
  %63 = sitofp i32 %62 to double
  %64 = fdiv double %63, 1.000000e+06
  store double %64, ptr %4, align 8
  %65 = load double, ptr %4, align 8
  %66 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@FDJECOM@S119?7?5?$CF?42f?5?7?7?5?$AA@", double noundef %65)
  call void @check(i32 noundef 11)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s1119() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = call i32 @init(ptr noundef @"??_C@_05KJGDNFHM@s119?5?$AA@")
  %9 = call i32 @clock()
  store i32 %9, ptr %1, align 4
  store i32 0, ptr %5, align 4
  br label %10

10:                                               ; preds = %53, %0
  %11 = load i32, ptr %5, align 4
  %12 = icmp slt i32 %11, 200
  br i1 %12, label %13, label %56

13:                                               ; preds = %10
  store i32 1, ptr %6, align 4
  br label %14

14:                                               ; preds = %48, %13
  %15 = load i32, ptr %6, align 4
  %16 = icmp slt i32 %15, 256
  br i1 %16, label %17, label %51

17:                                               ; preds = %14
  store i32 0, ptr %7, align 4
  br label %18

18:                                               ; preds = %44, %17
  %19 = load i32, ptr %7, align 4
  %20 = icmp slt i32 %19, 256
  br i1 %20, label %21, label %47

21:                                               ; preds = %18
  %22 = load i32, ptr %6, align 4
  %23 = sub i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %24
  %26 = load i32, ptr %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [256 x float], ptr %25, i64 0, i64 %27
  %29 = load float, ptr %28, align 4
  %30 = load i32, ptr %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %31
  %33 = load i32, ptr %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [256 x float], ptr %32, i64 0, i64 %34
  %36 = load float, ptr %35, align 4
  %37 = fadd float %29, %36
  %38 = load i32, ptr %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %39
  %41 = load i32, ptr %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [256 x float], ptr %40, i64 0, i64 %42
  store float %37, ptr %43, align 4
  br label %44

44:                                               ; preds = %21
  %45 = load i32, ptr %7, align 4
  %46 = add i32 %45, 1
  store i32 %46, ptr %7, align 4
  br label %18, !llvm.loop !75

47:                                               ; preds = %18
  br label %48

48:                                               ; preds = %47
  %49 = load i32, ptr %6, align 4
  %50 = add i32 %49, 1
  store i32 %50, ptr %6, align 4
  br label %14, !llvm.loop !76

51:                                               ; preds = %14
  %52 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %53

53:                                               ; preds = %51
  %54 = load i32, ptr %5, align 4
  %55 = add i32 %54, 1
  store i32 %55, ptr %5, align 4
  br label %10, !llvm.loop !77

56:                                               ; preds = %10
  %57 = call i32 @clock()
  store i32 %57, ptr %2, align 4
  %58 = load i32, ptr %2, align 4
  %59 = load i32, ptr %1, align 4
  %60 = sub i32 %58, %59
  store i32 %60, ptr %3, align 4
  %61 = load i32, ptr %3, align 4
  %62 = sitofp i32 %61 to double
  %63 = fdiv double %62, 1.000000e+06
  store double %63, ptr %4, align 8
  %64 = load double, ptr %4, align 8
  %65 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0BA@DFHIICLK@S1119?7?5?$CF?42f?5?7?7?5?$AA@", double noundef %64)
  call void @check(i32 noundef 11)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s121() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = call i32 @init(ptr noundef @"??_C@_05LFMFCLCK@s121?5?$AA@")
  %9 = call i32 @clock()
  store i32 %9, ptr %1, align 4
  store i32 0, ptr %6, align 4
  br label %10

10:                                               ; preds = %37, %0
  %11 = load i32, ptr %6, align 4
  %12 = icmp slt i32 %11, 768
  br i1 %12, label %13, label %40

13:                                               ; preds = %10
  store i32 0, ptr %7, align 4
  br label %14

14:                                               ; preds = %32, %13
  %15 = load i32, ptr %7, align 4
  %16 = icmp slt i32 %15, 31999
  br i1 %16, label %17, label %35

17:                                               ; preds = %14
  %18 = load i32, ptr %7, align 4
  %19 = add i32 %18, 1
  store i32 %19, ptr %5, align 4
  %20 = load i32, ptr %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %21
  %23 = load float, ptr %22, align 4
  %24 = load i32, ptr %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %25
  %27 = load float, ptr %26, align 4
  %28 = fadd float %23, %27
  %29 = load i32, ptr %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %30
  store float %28, ptr %31, align 4
  br label %32

32:                                               ; preds = %17
  %33 = load i32, ptr %7, align 4
  %34 = add i32 %33, 1
  store i32 %34, ptr %7, align 4
  br label %14, !llvm.loop !78

35:                                               ; preds = %14
  %36 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %37

37:                                               ; preds = %35
  %38 = load i32, ptr %6, align 4
  %39 = add i32 %38, 1
  store i32 %39, ptr %6, align 4
  br label %10, !llvm.loop !79

40:                                               ; preds = %10
  %41 = call i32 @clock()
  store i32 %41, ptr %2, align 4
  %42 = load i32, ptr %2, align 4
  %43 = load i32, ptr %1, align 4
  %44 = sub i32 %42, %43
  store i32 %44, ptr %3, align 4
  %45 = load i32, ptr %3, align 4
  %46 = sitofp i32 %45 to double
  %47 = fdiv double %46, 1.000000e+06
  store double %47, ptr %4, align 8
  %48 = load double, ptr %4, align 8
  %49 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@MPCGOMLK@S121?7?5?$CF?42f?5?7?7?$AA@", double noundef %48)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s122(i32 noundef %0, i32 noundef %1) #7 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %1, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  %13 = call i32 @init(ptr noundef @"??_C@_05LHIDJFHD@s122?5?$AA@")
  %14 = call i32 @clock()
  store i32 %14, ptr %5, align 4
  store i32 0, ptr %11, align 4
  br label %15

15:                                               ; preds = %44, %2
  %16 = load i32, ptr %11, align 4
  %17 = icmp slt i32 %16, 256
  br i1 %17, label %18, label %47

18:                                               ; preds = %15
  store i32 1, ptr %9, align 4
  store i32 0, ptr %10, align 4
  %19 = load i32, ptr %4, align 4
  %20 = sub i32 %19, 1
  store i32 %20, ptr %12, align 4
  br label %21

21:                                               ; preds = %38, %18
  %22 = load i32, ptr %12, align 4
  %23 = icmp slt i32 %22, 32000
  br i1 %23, label %24, label %42

24:                                               ; preds = %21
  %25 = load i32, ptr %9, align 4
  %26 = load i32, ptr %10, align 4
  %27 = add i32 %26, %25
  store i32 %27, ptr %10, align 4
  %28 = load i32, ptr %10, align 4
  %29 = sub i32 32000, %28
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %30
  %32 = load float, ptr %31, align 4
  %33 = load i32, ptr %12, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %34
  %36 = load float, ptr %35, align 4
  %37 = fadd float %36, %32
  store float %37, ptr %35, align 4
  br label %38

38:                                               ; preds = %24
  %39 = load i32, ptr %3, align 4
  %40 = load i32, ptr %12, align 4
  %41 = add i32 %40, %39
  store i32 %41, ptr %12, align 4
  br label %21, !llvm.loop !80

42:                                               ; preds = %21
  %43 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %44

44:                                               ; preds = %42
  %45 = load i32, ptr %11, align 4
  %46 = add i32 %45, 1
  store i32 %46, ptr %11, align 4
  br label %15, !llvm.loop !81

47:                                               ; preds = %15
  %48 = call i32 @clock()
  store i32 %48, ptr %6, align 4
  %49 = load i32, ptr %6, align 4
  %50 = load i32, ptr %5, align 4
  %51 = sub i32 %49, %50
  store i32 %51, ptr %7, align 4
  %52 = load i32, ptr %7, align 4
  %53 = sitofp i32 %52 to double
  %54 = fdiv double %53, 1.000000e+06
  store double %54, ptr %8, align 8
  %55 = load double, ptr %8, align 8
  %56 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@FGMEIKLL@S122?7?5?$CF?42f?5?7?7?$AA@", double noundef %55)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s123() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = call i32 @init(ptr noundef @"??_C@_05LGEBPPEE@s123?5?$AA@")
  %9 = call i32 @clock()
  store i32 %9, ptr %1, align 4
  store i32 0, ptr %6, align 4
  br label %10

10:                                               ; preds = %66, %0
  %11 = load i32, ptr %6, align 4
  %12 = icmp slt i32 %11, 256
  br i1 %12, label %13, label %69

13:                                               ; preds = %10
  store i32 -1, ptr %5, align 4
  store i32 0, ptr %7, align 4
  br label %14

14:                                               ; preds = %61, %13
  %15 = load i32, ptr %7, align 4
  %16 = icmp slt i32 %15, 16000
  br i1 %16, label %17, label %64

17:                                               ; preds = %14
  %18 = load i32, ptr %5, align 4
  %19 = add i32 %18, 1
  store i32 %19, ptr %5, align 4
  %20 = load i32, ptr %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %21
  %23 = load float, ptr %22, align 4
  %24 = load i32, ptr %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %25
  %27 = load float, ptr %26, align 4
  %28 = load i32, ptr %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %29
  %31 = load float, ptr %30, align 4
  %32 = call float @llvm.fmuladd.f32(float %27, float %31, float %23)
  %33 = load i32, ptr %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %34
  store float %32, ptr %35, align 4
  %36 = load i32, ptr %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %37
  %39 = load float, ptr %38, align 4
  %40 = fcmp ogt float %39, 0.000000e+00
  br i1 %40, label %41, label %60

41:                                               ; preds = %17
  %42 = load i32, ptr %5, align 4
  %43 = add i32 %42, 1
  store i32 %43, ptr %5, align 4
  %44 = load i32, ptr %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %45
  %47 = load float, ptr %46, align 4
  %48 = load i32, ptr %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %49
  %51 = load float, ptr %50, align 4
  %52 = load i32, ptr %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %53
  %55 = load float, ptr %54, align 4
  %56 = call float @llvm.fmuladd.f32(float %51, float %55, float %47)
  %57 = load i32, ptr %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %58
  store float %56, ptr %59, align 4
  br label %60

60:                                               ; preds = %41, %17
  br label %61

61:                                               ; preds = %60
  %62 = load i32, ptr %7, align 4
  %63 = add i32 %62, 1
  store i32 %63, ptr %7, align 4
  br label %14, !llvm.loop !82

64:                                               ; preds = %14
  %65 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %66

66:                                               ; preds = %64
  %67 = load i32, ptr %6, align 4
  %68 = add i32 %67, 1
  store i32 %68, ptr %6, align 4
  br label %10, !llvm.loop !83

69:                                               ; preds = %10
  %70 = call i32 @clock()
  store i32 %70, ptr %2, align 4
  %71 = load i32, ptr %2, align 4
  %72 = load i32, ptr %1, align 4
  %73 = sub i32 %71, %72
  store i32 %73, ptr %3, align 4
  %74 = load i32, ptr %3, align 4
  %75 = sitofp i32 %74 to double
  %76 = fdiv double %75, 1.000000e+06
  store double %76, ptr %4, align 8
  %77 = load double, ptr %4, align 8
  %78 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@JHEKFFHL@S123?7?5?$CF?42f?5?7?7?$AA@", double noundef %77)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s124() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = call i32 @init(ptr noundef @"??_C@_05LDAOOJMB@s124?5?$AA@")
  %9 = call i32 @clock()
  store i32 %9, ptr %1, align 4
  store i32 0, ptr %6, align 4
  br label %10

10:                                               ; preds = %67, %0
  %11 = load i32, ptr %6, align 4
  %12 = icmp slt i32 %11, 256
  br i1 %12, label %13, label %70

13:                                               ; preds = %10
  store i32 -1, ptr %5, align 4
  store i32 0, ptr %7, align 4
  br label %14

14:                                               ; preds = %62, %13
  %15 = load i32, ptr %7, align 4
  %16 = icmp slt i32 %15, 32000
  br i1 %16, label %17, label %65

17:                                               ; preds = %14
  %18 = load i32, ptr %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %19
  %21 = load float, ptr %20, align 4
  %22 = fcmp ogt float %21, 0.000000e+00
  br i1 %22, label %23, label %42

23:                                               ; preds = %17
  %24 = load i32, ptr %5, align 4
  %25 = add i32 %24, 1
  store i32 %25, ptr %5, align 4
  %26 = load i32, ptr %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %27
  %29 = load float, ptr %28, align 4
  %30 = load i32, ptr %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %31
  %33 = load float, ptr %32, align 4
  %34 = load i32, ptr %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %35
  %37 = load float, ptr %36, align 4
  %38 = call float @llvm.fmuladd.f32(float %33, float %37, float %29)
  %39 = load i32, ptr %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %40
  store float %38, ptr %41, align 4
  br label %61

42:                                               ; preds = %17
  %43 = load i32, ptr %5, align 4
  %44 = add i32 %43, 1
  store i32 %44, ptr %5, align 4
  %45 = load i32, ptr %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %46
  %48 = load float, ptr %47, align 4
  %49 = load i32, ptr %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %50
  %52 = load float, ptr %51, align 4
  %53 = load i32, ptr %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %54
  %56 = load float, ptr %55, align 4
  %57 = call float @llvm.fmuladd.f32(float %52, float %56, float %48)
  %58 = load i32, ptr %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %59
  store float %57, ptr %60, align 4
  br label %61

61:                                               ; preds = %42, %23
  br label %62

62:                                               ; preds = %61
  %63 = load i32, ptr %7, align 4
  %64 = add i32 %63, 1
  store i32 %64, ptr %7, align 4
  br label %14, !llvm.loop !84

65:                                               ; preds = %14
  %66 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %67

67:                                               ; preds = %65
  %68 = load i32, ptr %6, align 4
  %69 = add i32 %68, 1
  store i32 %69, ptr %6, align 4
  br label %10, !llvm.loop !85

70:                                               ; preds = %10
  %71 = call i32 @clock()
  store i32 %71, ptr %2, align 4
  %72 = load i32, ptr %2, align 4
  %73 = load i32, ptr %1, align 4
  %74 = sub i32 %72, %73
  store i32 %74, ptr %3, align 4
  %75 = load i32, ptr %3, align 4
  %76 = sitofp i32 %75 to double
  %77 = fdiv double %76, 1.000000e+06
  store double %77, ptr %4, align 8
  %78 = load double, ptr %4, align 8
  %79 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@LOHBEAPI@S124?7?5?$CF?42f?5?7?7?$AA@", double noundef %78)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s125() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = call i32 @init(ptr noundef @"??_C@_05LCMMIDPG@s125?5?$AA@")
  %10 = call i32 @clock()
  store i32 %10, ptr %1, align 4
  store i32 0, ptr %6, align 4
  br label %11

11:                                               ; preds = %59, %0
  %12 = load i32, ptr %6, align 4
  %13 = icmp slt i32 %12, 100
  br i1 %13, label %14, label %62

14:                                               ; preds = %11
  store i32 -1, ptr %5, align 4
  store i32 0, ptr %7, align 4
  br label %15

15:                                               ; preds = %54, %14
  %16 = load i32, ptr %7, align 4
  %17 = icmp slt i32 %16, 256
  br i1 %17, label %18, label %57

18:                                               ; preds = %15
  store i32 0, ptr %8, align 4
  br label %19

19:                                               ; preds = %50, %18
  %20 = load i32, ptr %8, align 4
  %21 = icmp slt i32 %20, 256
  br i1 %21, label %22, label %53

22:                                               ; preds = %19
  %23 = load i32, ptr %5, align 4
  %24 = add i32 %23, 1
  store i32 %24, ptr %5, align 4
  %25 = load i32, ptr %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %26
  %28 = load i32, ptr %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [256 x float], ptr %27, i64 0, i64 %29
  %31 = load float, ptr %30, align 4
  %32 = load i32, ptr %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %33
  %35 = load i32, ptr %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [256 x float], ptr %34, i64 0, i64 %36
  %38 = load float, ptr %37, align 4
  %39 = load i32, ptr %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [256 x [256 x float]], ptr @cc, i64 0, i64 %40
  %42 = load i32, ptr %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [256 x float], ptr %41, i64 0, i64 %43
  %45 = load float, ptr %44, align 4
  %46 = call float @llvm.fmuladd.f32(float %38, float %45, float %31)
  %47 = load i32, ptr %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [65536 x float], ptr @array, i64 0, i64 %48
  store float %46, ptr %49, align 4
  br label %50

50:                                               ; preds = %22
  %51 = load i32, ptr %8, align 4
  %52 = add i32 %51, 1
  store i32 %52, ptr %8, align 4
  br label %19, !llvm.loop !86

53:                                               ; preds = %19
  br label %54

54:                                               ; preds = %53
  %55 = load i32, ptr %7, align 4
  %56 = add i32 %55, 1
  store i32 %56, ptr %7, align 4
  br label %15, !llvm.loop !87

57:                                               ; preds = %15
  %58 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %59

59:                                               ; preds = %57
  %60 = load i32, ptr %6, align 4
  %61 = add i32 %60, 1
  store i32 %61, ptr %6, align 4
  br label %11, !llvm.loop !88

62:                                               ; preds = %11
  %63 = call i32 @clock()
  store i32 %63, ptr %2, align 4
  %64 = load i32, ptr %2, align 4
  %65 = load i32, ptr %1, align 4
  %66 = sub i32 %64, %65
  store i32 %66, ptr %3, align 4
  %67 = load i32, ptr %3, align 4
  %68 = sitofp i32 %67 to double
  %69 = fdiv double %68, 1.000000e+06
  store double %69, ptr %4, align 8
  %70 = load double, ptr %4, align 8
  %71 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@HPPPJPDI@S125?7?5?$CF?42f?5?7?7?$AA@", double noundef %70)
  call void @check(i32 noundef 0)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s126() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = call i32 @init(ptr noundef @"??_C@_05LAIKDNKP@s126?5?$AA@")
  %10 = call i32 @clock()
  store i32 %10, ptr %1, align 4
  store i32 0, ptr %6, align 4
  br label %11

11:                                               ; preds = %63, %0
  %12 = load i32, ptr %6, align 4
  %13 = icmp slt i32 %12, 10
  br i1 %13, label %14, label %66

14:                                               ; preds = %11
  store i32 1, ptr %5, align 4
  store i32 0, ptr %7, align 4
  br label %15

15:                                               ; preds = %58, %14
  %16 = load i32, ptr %7, align 4
  %17 = icmp slt i32 %16, 256
  br i1 %17, label %18, label %61

18:                                               ; preds = %15
  store i32 1, ptr %8, align 4
  br label %19

19:                                               ; preds = %52, %18
  %20 = load i32, ptr %8, align 4
  %21 = icmp slt i32 %20, 256
  br i1 %21, label %22, label %55

22:                                               ; preds = %19
  %23 = load i32, ptr %8, align 4
  %24 = sub i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %25
  %27 = load i32, ptr %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [256 x float], ptr %26, i64 0, i64 %28
  %30 = load float, ptr %29, align 4
  %31 = load i32, ptr %5, align 4
  %32 = sub i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [65536 x float], ptr @array, i64 0, i64 %33
  %35 = load float, ptr %34, align 4
  %36 = load i32, ptr %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [256 x [256 x float]], ptr @cc, i64 0, i64 %37
  %39 = load i32, ptr %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [256 x float], ptr %38, i64 0, i64 %40
  %42 = load float, ptr %41, align 4
  %43 = call float @llvm.fmuladd.f32(float %35, float %42, float %30)
  %44 = load i32, ptr %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %45
  %47 = load i32, ptr %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [256 x float], ptr %46, i64 0, i64 %48
  store float %43, ptr %49, align 4
  %50 = load i32, ptr %5, align 4
  %51 = add i32 %50, 1
  store i32 %51, ptr %5, align 4
  br label %52

52:                                               ; preds = %22
  %53 = load i32, ptr %8, align 4
  %54 = add i32 %53, 1
  store i32 %54, ptr %8, align 4
  br label %19, !llvm.loop !89

55:                                               ; preds = %19
  %56 = load i32, ptr %5, align 4
  %57 = add i32 %56, 1
  store i32 %57, ptr %5, align 4
  br label %58

58:                                               ; preds = %55
  %59 = load i32, ptr %7, align 4
  %60 = add i32 %59, 1
  store i32 %60, ptr %7, align 4
  br label %15, !llvm.loop !90

61:                                               ; preds = %15
  %62 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %63

63:                                               ; preds = %61
  %64 = load i32, ptr %6, align 4
  %65 = add i32 %64, 1
  store i32 %65, ptr %6, align 4
  br label %11, !llvm.loop !91

66:                                               ; preds = %11
  %67 = call i32 @clock()
  store i32 %67, ptr %2, align 4
  %68 = load i32, ptr %2, align 4
  %69 = load i32, ptr %1, align 4
  %70 = sub i32 %68, %69
  store i32 %70, ptr %3, align 4
  %71 = load i32, ptr %3, align 4
  %72 = sitofp i32 %71 to double
  %73 = fdiv double %72, 1.000000e+06
  store double %73, ptr %4, align 8
  %74 = load double, ptr %4, align 8
  %75 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@OGBNPJDJ@S126?7?5?$CF?42f?5?7?7?$AA@", double noundef %74)
  call void @check(i32 noundef 22)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s127() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = call i32 @init(ptr noundef @"??_C@_05LBEIFHJI@s127?5?$AA@")
  %9 = call i32 @clock()
  store i32 %9, ptr %1, align 4
  store i32 0, ptr %6, align 4
  br label %10

10:                                               ; preds = %59, %0
  %11 = load i32, ptr %6, align 4
  %12 = icmp slt i32 %11, 512
  br i1 %12, label %13, label %62

13:                                               ; preds = %10
  store i32 -1, ptr %5, align 4
  store i32 0, ptr %7, align 4
  br label %14

14:                                               ; preds = %54, %13
  %15 = load i32, ptr %7, align 4
  %16 = icmp slt i32 %15, 16000
  br i1 %16, label %17, label %57

17:                                               ; preds = %14
  %18 = load i32, ptr %5, align 4
  %19 = add i32 %18, 1
  store i32 %19, ptr %5, align 4
  %20 = load i32, ptr %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %21
  %23 = load float, ptr %22, align 4
  %24 = load i32, ptr %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %25
  %27 = load float, ptr %26, align 4
  %28 = load i32, ptr %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %29
  %31 = load float, ptr %30, align 4
  %32 = call float @llvm.fmuladd.f32(float %27, float %31, float %23)
  %33 = load i32, ptr %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %34
  store float %32, ptr %35, align 4
  %36 = load i32, ptr %5, align 4
  %37 = add i32 %36, 1
  store i32 %37, ptr %5, align 4
  %38 = load i32, ptr %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %39
  %41 = load float, ptr %40, align 4
  %42 = load i32, ptr %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %43
  %45 = load float, ptr %44, align 4
  %46 = load i32, ptr %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %47
  %49 = load float, ptr %48, align 4
  %50 = call float @llvm.fmuladd.f32(float %45, float %49, float %41)
  %51 = load i32, ptr %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %52
  store float %50, ptr %53, align 4
  br label %54

54:                                               ; preds = %17
  %55 = load i32, ptr %7, align 4
  %56 = add i32 %55, 1
  store i32 %56, ptr %7, align 4
  br label %14, !llvm.loop !92

57:                                               ; preds = %14
  %58 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %59

59:                                               ; preds = %57
  %60 = load i32, ptr %6, align 4
  %61 = add i32 %60, 1
  store i32 %61, ptr %6, align 4
  br label %10, !llvm.loop !93

62:                                               ; preds = %10
  %63 = call i32 @clock()
  store i32 %63, ptr %2, align 4
  %64 = load i32, ptr %2, align 4
  %65 = load i32, ptr %1, align 4
  %66 = sub i32 %64, %65
  store i32 %66, ptr %3, align 4
  %67 = load i32, ptr %3, align 4
  %68 = sitofp i32 %67 to double
  %69 = fdiv double %68, 1.000000e+06
  store double %69, ptr %4, align 8
  %70 = load double, ptr %4, align 8
  %71 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@CHJDCGPJ@S127?7?5?$CF?42f?5?7?7?$AA@", double noundef %70)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s128() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = call i32 @init(ptr noundef @"??_C@_05LKBEBAKF@s128?5?$AA@")
  %10 = call i32 @clock()
  store i32 %10, ptr %1, align 4
  store i32 0, ptr %7, align 4
  br label %11

11:                                               ; preds = %52, %0
  %12 = load i32, ptr %7, align 4
  %13 = icmp slt i32 %12, 512
  br i1 %13, label %14, label %55

14:                                               ; preds = %11
  store i32 -1, ptr %5, align 4
  store i32 0, ptr %8, align 4
  br label %15

15:                                               ; preds = %47, %14
  %16 = load i32, ptr %8, align 4
  %17 = icmp slt i32 %16, 16000
  br i1 %17, label %18, label %50

18:                                               ; preds = %15
  %19 = load i32, ptr %5, align 4
  %20 = add i32 %19, 1
  store i32 %20, ptr %6, align 4
  %21 = load i32, ptr %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %22
  %24 = load float, ptr %23, align 4
  %25 = load i32, ptr %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %26
  %28 = load float, ptr %27, align 4
  %29 = fsub float %24, %28
  %30 = load i32, ptr %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %31
  store float %29, ptr %32, align 4
  %33 = load i32, ptr %6, align 4
  %34 = add i32 %33, 1
  store i32 %34, ptr %5, align 4
  %35 = load i32, ptr %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %36
  %38 = load float, ptr %37, align 4
  %39 = load i32, ptr %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %40
  %42 = load float, ptr %41, align 4
  %43 = fadd float %38, %42
  %44 = load i32, ptr %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %45
  store float %43, ptr %46, align 4
  br label %47

47:                                               ; preds = %18
  %48 = load i32, ptr %8, align 4
  %49 = add i32 %48, 1
  store i32 %49, ptr %8, align 4
  br label %15, !llvm.loop !94

50:                                               ; preds = %15
  %51 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 1.000000e+00)
  br label %52

52:                                               ; preds = %50
  %53 = load i32, ptr %7, align 4
  %54 = add i32 %53, 1
  store i32 %54, ptr %7, align 4
  br label %11, !llvm.loop !95

55:                                               ; preds = %11
  %56 = call i32 @clock()
  store i32 %56, ptr %2, align 4
  %57 = load i32, ptr %2, align 4
  %58 = load i32, ptr %1, align 4
  %59 = sub i32 %57, %58
  store i32 %59, ptr %3, align 4
  %60 = load i32, ptr %3, align 4
  %61 = sitofp i32 %60 to double
  %62 = fdiv double %61, 1.000000e+06
  store double %62, ptr %4, align 8
  %63 = load double, ptr %4, align 8
  %64 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@LEGLNCDP@S128?7?5?$CF?42f?5?7?7?$AA@", double noundef %63)
  call void @check(i32 noundef 12)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s131() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = call i32 @init(ptr noundef @"??_C@_05NHJEMEP@s131?5?$AA@")
  %9 = call i32 @clock()
  store i32 %9, ptr %1, align 4
  store i32 1, ptr %5, align 4
  store i32 0, ptr %6, align 4
  br label %10

10:                                               ; preds = %37, %0
  %11 = load i32, ptr %6, align 4
  %12 = icmp slt i32 %11, 1280
  br i1 %12, label %13, label %40

13:                                               ; preds = %10
  store i32 0, ptr %7, align 4
  br label %14

14:                                               ; preds = %32, %13
  %15 = load i32, ptr %7, align 4
  %16 = icmp slt i32 %15, 31999
  br i1 %16, label %17, label %35

17:                                               ; preds = %14
  %18 = load i32, ptr %7, align 4
  %19 = load i32, ptr %5, align 4
  %20 = add i32 %18, %19
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %21
  %23 = load float, ptr %22, align 4
  %24 = load i32, ptr %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %25
  %27 = load float, ptr %26, align 4
  %28 = fadd float %23, %27
  %29 = load i32, ptr %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %30
  store float %28, ptr %31, align 4
  br label %32

32:                                               ; preds = %17
  %33 = load i32, ptr %7, align 4
  %34 = add i32 %33, 1
  store i32 %34, ptr %7, align 4
  br label %14, !llvm.loop !96

35:                                               ; preds = %14
  %36 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %37

37:                                               ; preds = %35
  %38 = load i32, ptr %6, align 4
  %39 = add i32 %38, 1
  store i32 %39, ptr %6, align 4
  br label %10, !llvm.loop !97

40:                                               ; preds = %10
  %41 = call i32 @clock()
  store i32 %41, ptr %2, align 4
  %42 = load i32, ptr %2, align 4
  %43 = load i32, ptr %1, align 4
  %44 = sub i32 %42, %43
  store i32 %44, ptr %3, align 4
  %45 = load i32, ptr %3, align 4
  %46 = sitofp i32 %45 to double
  %47 = fdiv double %46, 1.000000e+06
  store double %47, ptr %4, align 8
  %48 = load double, ptr %4, align 8
  %49 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@FEIDKANF@S131?7?5?$CF?42f?5?7?7?$AA@", double noundef %48)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s132() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = call i32 @init(ptr noundef @"??_C@_05PDPPCBG@s132?5?$AA@")
  %11 = call i32 @clock()
  store i32 %11, ptr %1, align 4
  store i32 0, ptr %5, align 4
  %12 = load i32, ptr %5, align 4
  store i32 %12, ptr %6, align 4
  %13 = load i32, ptr %5, align 4
  %14 = add i32 %13, 1
  store i32 %14, ptr %7, align 4
  store i32 0, ptr %8, align 4
  br label %15

15:                                               ; preds = %48, %0
  %16 = load i32, ptr %8, align 4
  %17 = icmp slt i32 %16, 102400
  br i1 %17, label %18, label %51

18:                                               ; preds = %15
  store i32 1, ptr %9, align 4
  br label %19

19:                                               ; preds = %43, %18
  %20 = load i32, ptr %9, align 4
  %21 = icmp slt i32 %20, 256
  br i1 %21, label %22, label %46

22:                                               ; preds = %19
  %23 = load i32, ptr %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %24
  %26 = load i32, ptr %9, align 4
  %27 = sub i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [256 x float], ptr %25, i64 0, i64 %28
  %30 = load float, ptr %29, align 4
  %31 = load i32, ptr %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %32
  %34 = load float, ptr %33, align 4
  %35 = load float, ptr getelementptr inbounds nuw (i8, ptr @c, i64 4), align 4
  %36 = call float @llvm.fmuladd.f32(float %34, float %35, float %30)
  %37 = load i32, ptr %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %38
  %40 = load i32, ptr %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [256 x float], ptr %39, i64 0, i64 %41
  store float %36, ptr %42, align 4
  br label %43

43:                                               ; preds = %22
  %44 = load i32, ptr %9, align 4
  %45 = add i32 %44, 1
  store i32 %45, ptr %9, align 4
  br label %19, !llvm.loop !98

46:                                               ; preds = %19
  %47 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %48

48:                                               ; preds = %46
  %49 = load i32, ptr %8, align 4
  %50 = add i32 %49, 1
  store i32 %50, ptr %8, align 4
  br label %15, !llvm.loop !99

51:                                               ; preds = %15
  %52 = call i32 @clock()
  store i32 %52, ptr %2, align 4
  %53 = load i32, ptr %2, align 4
  %54 = load i32, ptr %1, align 4
  %55 = sub i32 %53, %54
  store i32 %55, ptr %3, align 4
  %56 = load i32, ptr %3, align 4
  %57 = sitofp i32 %56 to double
  %58 = fdiv double %57, 1.000000e+06
  store double %58, ptr %4, align 8
  %59 = load double, ptr %4, align 8
  %60 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@MNGBMGNE@S132?7?5?$CF?42f?5?7?7?$AA@", double noundef %59)
  call void @check(i32 noundef 11)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s141() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = call i32 @init(ptr noundef @"??_C@_05JAKOHEPG@s141?5?$AA@")
  %10 = call i32 @clock()
  store i32 %10, ptr %1, align 4
  store i32 0, ptr %6, align 4
  br label %11

11:                                               ; preds = %60, %0
  %12 = load i32, ptr %6, align 4
  %13 = icmp slt i32 %12, 200
  br i1 %13, label %14, label %63

14:                                               ; preds = %11
  store i32 0, ptr %7, align 4
  br label %15

15:                                               ; preds = %55, %14
  %16 = load i32, ptr %7, align 4
  %17 = icmp slt i32 %16, 256
  br i1 %17, label %18, label %58

18:                                               ; preds = %15
  %19 = load i32, ptr %7, align 4
  %20 = add i32 %19, 1
  %21 = load i32, ptr %7, align 4
  %22 = add i32 %21, 1
  %23 = sub i32 %22, 1
  %24 = mul i32 %20, %23
  %25 = sdiv i32 %24, 2
  %26 = load i32, ptr %7, align 4
  %27 = add i32 %26, 1
  %28 = add i32 %25, %27
  %29 = sub i32 %28, 1
  store i32 %29, ptr %5, align 4
  %30 = load i32, ptr %7, align 4
  store i32 %30, ptr %8, align 4
  br label %31

31:                                               ; preds = %51, %18
  %32 = load i32, ptr %8, align 4
  %33 = icmp slt i32 %32, 256
  br i1 %33, label %34, label %54

34:                                               ; preds = %31
  %35 = load i32, ptr %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %36
  %38 = load i32, ptr %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [256 x float], ptr %37, i64 0, i64 %39
  %41 = load float, ptr %40, align 4
  %42 = load i32, ptr %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [65536 x float], ptr @array, i64 0, i64 %43
  %45 = load float, ptr %44, align 4
  %46 = fadd float %45, %41
  store float %46, ptr %44, align 4
  %47 = load i32, ptr %8, align 4
  %48 = add i32 %47, 1
  %49 = load i32, ptr %5, align 4
  %50 = add i32 %49, %48
  store i32 %50, ptr %5, align 4
  br label %51

51:                                               ; preds = %34
  %52 = load i32, ptr %8, align 4
  %53 = add i32 %52, 1
  store i32 %53, ptr %8, align 4
  br label %31, !llvm.loop !100

54:                                               ; preds = %31
  br label %55

55:                                               ; preds = %54
  %56 = load i32, ptr %7, align 4
  %57 = add i32 %56, 1
  store i32 %57, ptr %7, align 4
  br label %15, !llvm.loop !101

58:                                               ; preds = %15
  %59 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %60

60:                                               ; preds = %58
  %61 = load i32, ptr %6, align 4
  %62 = add i32 %61, 1
  store i32 %62, ptr %6, align 4
  br label %11, !llvm.loop !102

63:                                               ; preds = %11
  %64 = call i32 @clock()
  store i32 %64, ptr %2, align 4
  %65 = load i32, ptr %2, align 4
  %66 = load i32, ptr %1, align 4
  %67 = sub i32 %65, %66
  store i32 %67, ptr %3, align 4
  %68 = load i32, ptr %3, align 4
  %69 = sitofp i32 %68 to double
  %70 = fdiv double %69, 1.000000e+06
  store double %70, ptr %4, align 8
  %71 = load double, ptr %4, align 8
  %72 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@CABLEJFK@S141?7?5?$CF?42f?5?7?7?$AA@", double noundef %71)
  call void @check(i32 noundef 0)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s151s(ptr noundef %0, ptr noundef %1, i32 noundef %2) #7 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store i32 %2, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  store i32 0, ptr %7, align 4
  br label %8

8:                                                ; preds = %29, %3
  %9 = load i32, ptr %7, align 4
  %10 = icmp slt i32 %9, 31999
  br i1 %10, label %11, label %32

11:                                               ; preds = %8
  %12 = load ptr, ptr %6, align 8
  %13 = load i32, ptr %7, align 4
  %14 = load i32, ptr %4, align 4
  %15 = add i32 %13, %14
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds float, ptr %12, i64 %16
  %18 = load float, ptr %17, align 4
  %19 = load ptr, ptr %5, align 8
  %20 = load i32, ptr %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds float, ptr %19, i64 %21
  %23 = load float, ptr %22, align 4
  %24 = fadd float %18, %23
  %25 = load ptr, ptr %6, align 8
  %26 = load i32, ptr %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds float, ptr %25, i64 %27
  store float %24, ptr %28, align 4
  br label %29

29:                                               ; preds = %11
  %30 = load i32, ptr %7, align 4
  %31 = add i32 %30, 1
  store i32 %31, ptr %7, align 4
  br label %8, !llvm.loop !103

32:                                               ; preds = %8
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s151() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = call i32 @init(ptr noundef @"??_C@_05CIBCBDJD@s151?5?$AA@")
  %7 = call i32 @clock()
  store i32 %7, ptr %1, align 4
  store i32 0, ptr %5, align 4
  br label %8

8:                                                ; preds = %14, %0
  %9 = load i32, ptr %5, align 4
  %10 = icmp slt i32 %9, 1280
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = call i32 @s151s(ptr noundef @a, ptr noundef @b, i32 noundef 1)
  %13 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %14

14:                                               ; preds = %11
  %15 = load i32, ptr %5, align 4
  %16 = add i32 %15, 1
  store i32 %16, ptr %5, align 4
  br label %8, !llvm.loop !104

17:                                               ; preds = %8
  %18 = call i32 @clock()
  store i32 %18, ptr %2, align 4
  %19 = load i32, ptr %2, align 4
  %20 = load i32, ptr %1, align 4
  %21 = sub i32 %19, %20
  store i32 %21, ptr %3, align 4
  %22 = load i32, ptr %3, align 4
  %23 = sitofp i32 %22 to double
  %24 = fdiv double %23, 1.000000e+06
  store double %24, ptr %4, align 8
  %25 = load double, ptr %4, align 8
  %26 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@LLLOAFDF@S151?7?5?$CF?42f?5?7?7?$AA@", double noundef %25)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s152s(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #7 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store i32 %3, ptr %5, align 4
  store ptr %2, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %0, ptr %8, align 8
  %9 = load ptr, ptr %7, align 8
  %10 = load i32, ptr %5, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds float, ptr %9, i64 %11
  %13 = load float, ptr %12, align 4
  %14 = load ptr, ptr %6, align 8
  %15 = load i32, ptr %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds float, ptr %14, i64 %16
  %18 = load float, ptr %17, align 4
  %19 = load ptr, ptr %8, align 8
  %20 = load i32, ptr %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds float, ptr %19, i64 %21
  %23 = load float, ptr %22, align 4
  %24 = call float @llvm.fmuladd.f32(float %13, float %18, float %23)
  store float %24, ptr %22, align 4
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s152() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 @init(ptr noundef @"??_C@_05CKFEKNMK@s152?5?$AA@")
  %8 = call i32 @clock()
  store i32 %8, ptr %1, align 4
  store i32 0, ptr %5, align 4
  br label %9

9:                                                ; preds = %36, %0
  %10 = load i32, ptr %5, align 4
  %11 = icmp slt i32 %10, 256
  br i1 %11, label %12, label %39

12:                                               ; preds = %9
  store i32 0, ptr %6, align 4
  br label %13

13:                                               ; preds = %31, %12
  %14 = load i32, ptr %6, align 4
  %15 = icmp slt i32 %14, 32000
  br i1 %15, label %16, label %34

16:                                               ; preds = %13
  %17 = load i32, ptr %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %18
  %20 = load float, ptr %19, align 4
  %21 = load i32, ptr %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %22
  %24 = load float, ptr %23, align 4
  %25 = fmul float %20, %24
  %26 = load i32, ptr %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %27
  store float %25, ptr %28, align 4
  %29 = load i32, ptr %6, align 4
  %30 = call i32 @s152s(ptr noundef @a, ptr noundef @b, ptr noundef @c, i32 noundef %29)
  br label %31

31:                                               ; preds = %16
  %32 = load i32, ptr %6, align 4
  %33 = add i32 %32, 1
  store i32 %33, ptr %6, align 4
  br label %13, !llvm.loop !105

34:                                               ; preds = %13
  %35 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %36

36:                                               ; preds = %34
  %37 = load i32, ptr %5, align 4
  %38 = add i32 %37, 1
  store i32 %38, ptr %5, align 4
  br label %9, !llvm.loop !106

39:                                               ; preds = %9
  %40 = call i32 @clock()
  store i32 %40, ptr %2, align 4
  %41 = load i32, ptr %2, align 4
  %42 = load i32, ptr %1, align 4
  %43 = sub i32 %41, %42
  store i32 %43, ptr %3, align 4
  %44 = load i32, ptr %3, align 4
  %45 = sitofp i32 %44 to double
  %46 = fdiv double %45, 1.000000e+06
  store double %46, ptr %4, align 8
  %47 = load double, ptr %4, align 8
  %48 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@CCFMGDDE@S152?7?5?$CF?42f?5?7?7?$AA@", double noundef %47)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s161() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 @init(ptr noundef @"??_C@_05DKKHLMHN@s161?5?$AA@")
  %8 = call i32 @clock()
  store i32 %8, ptr %1, align 4
  store i32 0, ptr %5, align 4
  br label %9

9:                                                ; preds = %64, %0
  %10 = load i32, ptr %5, align 4
  %11 = icmp slt i32 %10, 128
  br i1 %11, label %12, label %67

12:                                               ; preds = %9
  store i32 0, ptr %6, align 4
  br label %13

13:                                               ; preds = %59, %12
  %14 = load i32, ptr %6, align 4
  %15 = icmp slt i32 %14, 31999
  br i1 %15, label %16, label %62

16:                                               ; preds = %13
  %17 = load i32, ptr %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %18
  %20 = load float, ptr %19, align 4
  %21 = fcmp olt float %20, 0.000000e+00
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %40

23:                                               ; preds = %16
  %24 = load i32, ptr %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %25
  %27 = load float, ptr %26, align 4
  %28 = load i32, ptr %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %29
  %31 = load float, ptr %30, align 4
  %32 = load i32, ptr %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %33
  %35 = load float, ptr %34, align 4
  %36 = call float @llvm.fmuladd.f32(float %31, float %35, float %27)
  %37 = load i32, ptr %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %38
  store float %36, ptr %39, align 4
  br label %58

40:                                               ; preds = %22
  %41 = load i32, ptr %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %42
  %44 = load float, ptr %43, align 4
  %45 = load i32, ptr %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %46
  %48 = load float, ptr %47, align 4
  %49 = load i32, ptr %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %50
  %52 = load float, ptr %51, align 4
  %53 = call float @llvm.fmuladd.f32(float %48, float %52, float %44)
  %54 = load i32, ptr %6, align 4
  %55 = add i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %56
  store float %53, ptr %57, align 4
  br label %58

58:                                               ; preds = %40, %23
  br label %59

59:                                               ; preds = %58
  %60 = load i32, ptr %6, align 4
  %61 = add i32 %60, 1
  store i32 %61, ptr %6, align 4
  br label %13, !llvm.loop !107

62:                                               ; preds = %13
  %63 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %64

64:                                               ; preds = %62
  %65 = load i32, ptr %5, align 4
  %66 = add i32 %65, 1
  store i32 %66, ptr %5, align 4
  br label %9, !llvm.loop !108

67:                                               ; preds = %9
  %68 = call i32 @clock()
  store i32 %68, ptr %2, align 4
  %69 = load i32, ptr %2, align 4
  %70 = load i32, ptr %1, align 4
  %71 = sub i32 %69, %70
  store i32 %71, ptr %3, align 4
  %72 = load i32, ptr %3, align 4
  %73 = sitofp i32 %72 to double
  %74 = fdiv double %73, 1.000000e+06
  store double %74, ptr %4, align 8
  %75 = load double, ptr %4, align 8
  %76 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@MMCANHMF@S161?7?5?$CF?42f?5?7?7?$AA@", double noundef %75)
  call void @check(i32 noundef 13)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s1161() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 @init(ptr noundef @"??_C@_05DKKHLMHN@s161?5?$AA@")
  %8 = call i32 @clock()
  store i32 %8, ptr %1, align 4
  store i32 0, ptr %5, align 4
  br label %9

9:                                                ; preds = %63, %0
  %10 = load i32, ptr %5, align 4
  %11 = icmp slt i32 %10, 256
  br i1 %11, label %12, label %66

12:                                               ; preds = %9
  store i32 0, ptr %6, align 4
  br label %13

13:                                               ; preds = %58, %12
  %14 = load i32, ptr %6, align 4
  %15 = icmp slt i32 %14, 31999
  br i1 %15, label %16, label %61

16:                                               ; preds = %13
  %17 = load i32, ptr %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %18
  %20 = load float, ptr %19, align 4
  %21 = fcmp olt float %20, 0.000000e+00
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %40

23:                                               ; preds = %16
  %24 = load i32, ptr %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %25
  %27 = load float, ptr %26, align 4
  %28 = load i32, ptr %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %29
  %31 = load float, ptr %30, align 4
  %32 = load i32, ptr %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %33
  %35 = load float, ptr %34, align 4
  %36 = call float @llvm.fmuladd.f32(float %31, float %35, float %27)
  %37 = load i32, ptr %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %38
  store float %36, ptr %39, align 4
  br label %57

40:                                               ; preds = %22
  %41 = load i32, ptr %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %42
  %44 = load float, ptr %43, align 4
  %45 = load i32, ptr %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %46
  %48 = load float, ptr %47, align 4
  %49 = load i32, ptr %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %50
  %52 = load float, ptr %51, align 4
  %53 = call float @llvm.fmuladd.f32(float %48, float %52, float %44)
  %54 = load i32, ptr %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %55
  store float %53, ptr %56, align 4
  br label %57

57:                                               ; preds = %40, %23
  br label %58

58:                                               ; preds = %57
  %59 = load i32, ptr %6, align 4
  %60 = add i32 %59, 1
  store i32 %60, ptr %6, align 4
  br label %13, !llvm.loop !109

61:                                               ; preds = %13
  %62 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %63

63:                                               ; preds = %61
  %64 = load i32, ptr %5, align 4
  %65 = add i32 %64, 1
  store i32 %65, ptr %5, align 4
  br label %9, !llvm.loop !110

66:                                               ; preds = %9
  %67 = call i32 @clock()
  store i32 %67, ptr %2, align 4
  %68 = load i32, ptr %2, align 4
  %69 = load i32, ptr %1, align 4
  %70 = sub i32 %68, %69
  store i32 %70, ptr %3, align 4
  %71 = load i32, ptr %3, align 4
  %72 = sitofp i32 %71 to double
  %73 = fdiv double %72, 1.000000e+06
  store double %73, ptr %4, align 8
  %74 = load double, ptr %4, align 8
  %75 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@DIBPGICK@S1161?7?5?$CF?42f?5?7?7?$AA@", double noundef %74)
  call void @check(i32 noundef 13)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s162(i32 noundef %0) #7 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %9 = call i32 @init(ptr noundef @"??_C@_05DIOBACCE@s162?5?$AA@")
  %10 = call i32 @clock()
  store i32 %10, ptr %3, align 4
  store i32 0, ptr %7, align 4
  br label %11

11:                                               ; preds = %46, %1
  %12 = load i32, ptr %7, align 4
  %13 = icmp slt i32 %12, 256
  br i1 %13, label %14, label %49

14:                                               ; preds = %11
  %15 = load i32, ptr %2, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %44

17:                                               ; preds = %14
  store i32 0, ptr %8, align 4
  br label %18

18:                                               ; preds = %40, %17
  %19 = load i32, ptr %8, align 4
  %20 = icmp slt i32 %19, 31999
  br i1 %20, label %21, label %43

21:                                               ; preds = %18
  %22 = load i32, ptr %8, align 4
  %23 = load i32, ptr %2, align 4
  %24 = add i32 %22, %23
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %25
  %27 = load float, ptr %26, align 4
  %28 = load i32, ptr %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %29
  %31 = load float, ptr %30, align 4
  %32 = load i32, ptr %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %33
  %35 = load float, ptr %34, align 4
  %36 = call float @llvm.fmuladd.f32(float %31, float %35, float %27)
  %37 = load i32, ptr %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %38
  store float %36, ptr %39, align 4
  br label %40

40:                                               ; preds = %21
  %41 = load i32, ptr %8, align 4
  %42 = add i32 %41, 1
  store i32 %42, ptr %8, align 4
  br label %18, !llvm.loop !111

43:                                               ; preds = %18
  br label %44

44:                                               ; preds = %43, %14
  %45 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %46

46:                                               ; preds = %44
  %47 = load i32, ptr %7, align 4
  %48 = add i32 %47, 1
  store i32 %48, ptr %7, align 4
  br label %11, !llvm.loop !112

49:                                               ; preds = %11
  %50 = call i32 @clock()
  store i32 %50, ptr %4, align 4
  %51 = load i32, ptr %4, align 4
  %52 = load i32, ptr %3, align 4
  %53 = sub i32 %51, %52
  store i32 %53, ptr %5, align 4
  %54 = load i32, ptr %5, align 4
  %55 = sitofp i32 %54 to double
  %56 = fdiv double %55, 1.000000e+06
  store double %56, ptr %6, align 8
  %57 = load double, ptr %6, align 8
  %58 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@FFMCLBME@S162?7?5?$CF?42f?5?7?7?$AA@", double noundef %57)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s171(i32 noundef %0) #7 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %9 = call i32 @init(ptr noundef @"??_C@_05ICBLNLBI@s171?5?$AA@")
  %10 = call i32 @clock()
  store i32 %10, ptr %3, align 4
  store i32 0, ptr %7, align 4
  br label %11

11:                                               ; preds = %35, %1
  %12 = load i32, ptr %7, align 4
  %13 = icmp slt i32 %12, 256
  br i1 %13, label %14, label %38

14:                                               ; preds = %11
  store i32 0, ptr %8, align 4
  br label %15

15:                                               ; preds = %30, %14
  %16 = load i32, ptr %8, align 4
  %17 = icmp slt i32 %16, 32000
  br i1 %17, label %18, label %33

18:                                               ; preds = %15
  %19 = load i32, ptr %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %20
  %22 = load float, ptr %21, align 4
  %23 = load i32, ptr %8, align 4
  %24 = load i32, ptr %2, align 4
  %25 = mul i32 %23, %24
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %26
  %28 = load float, ptr %27, align 4
  %29 = fadd float %28, %22
  store float %29, ptr %27, align 4
  br label %30

30:                                               ; preds = %18
  %31 = load i32, ptr %8, align 4
  %32 = add i32 %31, 1
  store i32 %32, ptr %8, align 4
  br label %15, !llvm.loop !113

33:                                               ; preds = %15
  %34 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %35

35:                                               ; preds = %33
  %36 = load i32, ptr %7, align 4
  %37 = add i32 %36, 1
  store i32 %37, ptr %7, align 4
  br label %11, !llvm.loop !114

38:                                               ; preds = %11
  %39 = call i32 @clock()
  store i32 %39, ptr %4, align 4
  %40 = load i32, ptr %4, align 4
  %41 = load i32, ptr %3, align 4
  %42 = sub i32 %40, %41
  store i32 %42, ptr %5, align 4
  %43 = load i32, ptr %5, align 4
  %44 = sitofp i32 %43 to double
  %45 = fdiv double %44, 1.000000e+06
  store double %45, ptr %6, align 8
  %46 = load double, ptr %6, align 8
  %47 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@FHIFJLKK@S171?7?5?$CF?42f?5?7?7?$AA@", double noundef %46)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s172(i32 noundef %0, i32 noundef %1) #7 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %1, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  %11 = call i32 @init(ptr noundef @"??_C@_05IAFNGFEB@s172?5?$AA@")
  %12 = call i32 @clock()
  store i32 %12, ptr %5, align 4
  store i32 0, ptr %9, align 4
  br label %13

13:                                               ; preds = %38, %2
  %14 = load i32, ptr %9, align 4
  %15 = icmp slt i32 %14, 256
  br i1 %15, label %16, label %41

16:                                               ; preds = %13
  %17 = load i32, ptr %4, align 4
  %18 = sub i32 %17, 1
  store i32 %18, ptr %10, align 4
  br label %19

19:                                               ; preds = %32, %16
  %20 = load i32, ptr %10, align 4
  %21 = icmp slt i32 %20, 32000
  br i1 %21, label %22, label %36

22:                                               ; preds = %19
  %23 = load i32, ptr %10, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %24
  %26 = load float, ptr %25, align 4
  %27 = load i32, ptr %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %28
  %30 = load float, ptr %29, align 4
  %31 = fadd float %30, %26
  store float %31, ptr %29, align 4
  br label %32

32:                                               ; preds = %22
  %33 = load i32, ptr %3, align 4
  %34 = load i32, ptr %10, align 4
  %35 = add i32 %34, %33
  store i32 %35, ptr %10, align 4
  br label %19, !llvm.loop !115

36:                                               ; preds = %19
  %37 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %38

38:                                               ; preds = %36
  %39 = load i32, ptr %9, align 4
  %40 = add i32 %39, 1
  store i32 %40, ptr %9, align 4
  br label %13, !llvm.loop !116

41:                                               ; preds = %13
  %42 = call i32 @clock()
  store i32 %42, ptr %6, align 4
  %43 = load i32, ptr %6, align 4
  %44 = load i32, ptr %5, align 4
  %45 = sub i32 %43, %44
  store i32 %45, ptr %7, align 4
  %46 = load i32, ptr %7, align 4
  %47 = sitofp i32 %46 to double
  %48 = fdiv double %47, 1.000000e+06
  store double %48, ptr %8, align 8
  %49 = load double, ptr %8, align 8
  %50 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@MOGHPNKL@S172?7?5?$CF?42f?5?7?7?$AA@", double noundef %49)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s173() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = call i32 @init(ptr noundef @"??_C@_05IBJPAPHG@s173?5?$AA@")
  %9 = call i32 @clock()
  store i32 %9, ptr %1, align 4
  store i32 16000, ptr %5, align 4
  store i32 0, ptr %6, align 4
  br label %10

10:                                               ; preds = %37, %0
  %11 = load i32, ptr %6, align 4
  %12 = icmp slt i32 %11, 2560
  br i1 %12, label %13, label %40

13:                                               ; preds = %10
  store i32 0, ptr %7, align 4
  br label %14

14:                                               ; preds = %32, %13
  %15 = load i32, ptr %7, align 4
  %16 = icmp slt i32 %15, 16000
  br i1 %16, label %17, label %35

17:                                               ; preds = %14
  %18 = load i32, ptr %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %19
  %21 = load float, ptr %20, align 4
  %22 = load i32, ptr %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %23
  %25 = load float, ptr %24, align 4
  %26 = fadd float %21, %25
  %27 = load i32, ptr %7, align 4
  %28 = load i32, ptr %5, align 4
  %29 = add i32 %27, %28
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %30
  store float %26, ptr %31, align 4
  br label %32

32:                                               ; preds = %17
  %33 = load i32, ptr %7, align 4
  %34 = add i32 %33, 1
  store i32 %34, ptr %7, align 4
  br label %14, !llvm.loop !117

35:                                               ; preds = %14
  %36 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %37

37:                                               ; preds = %35
  %38 = load i32, ptr %6, align 4
  %39 = add i32 %38, 1
  store i32 %39, ptr %6, align 4
  br label %10, !llvm.loop !118

40:                                               ; preds = %10
  %41 = call i32 @clock()
  store i32 %41, ptr %2, align 4
  %42 = load i32, ptr %2, align 4
  %43 = load i32, ptr %1, align 4
  %44 = sub i32 %42, %43
  store i32 %44, ptr %3, align 4
  %45 = load i32, ptr %3, align 4
  %46 = sitofp i32 %45 to double
  %47 = fdiv double %46, 1.000000e+06
  store double %47, ptr %4, align 8
  %48 = load double, ptr %4, align 8
  %49 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@POJCCGL@S173?7?5?$CF?42f?5?7?7?$AA@", double noundef %48)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s174(i32 noundef %0) #7 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %9 = call i32 @init(ptr noundef @"??_C@_05IENABJPD@s174?5?$AA@")
  %10 = call i32 @clock()
  store i32 %10, ptr %3, align 4
  store i32 0, ptr %7, align 4
  br label %11

11:                                               ; preds = %39, %1
  %12 = load i32, ptr %7, align 4
  %13 = icmp slt i32 %12, 2560
  br i1 %13, label %14, label %42

14:                                               ; preds = %11
  store i32 0, ptr %8, align 4
  br label %15

15:                                               ; preds = %34, %14
  %16 = load i32, ptr %8, align 4
  %17 = load i32, ptr %2, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %37

19:                                               ; preds = %15
  %20 = load i32, ptr %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %21
  %23 = load float, ptr %22, align 4
  %24 = load i32, ptr %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %25
  %27 = load float, ptr %26, align 4
  %28 = fadd float %23, %27
  %29 = load i32, ptr %8, align 4
  %30 = load i32, ptr %2, align 4
  %31 = add i32 %29, %30
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %32
  store float %28, ptr %33, align 4
  br label %34

34:                                               ; preds = %19
  %35 = load i32, ptr %8, align 4
  %36 = add i32 %35, 1
  store i32 %36, ptr %8, align 4
  br label %15, !llvm.loop !119

37:                                               ; preds = %15
  %38 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %39

39:                                               ; preds = %37
  %40 = load i32, ptr %7, align 4
  %41 = add i32 %40, 1
  store i32 %41, ptr %7, align 4
  br label %11, !llvm.loop !120

42:                                               ; preds = %11
  %43 = call i32 @clock()
  store i32 %43, ptr %4, align 4
  %44 = load i32, ptr %4, align 4
  %45 = load i32, ptr %3, align 4
  %46 = sub i32 %44, %45
  store i32 %46, ptr %5, align 4
  %47 = load i32, ptr %5, align 4
  %48 = sitofp i32 %47 to double
  %49 = fdiv double %48, 1.000000e+06
  store double %49, ptr %6, align 8
  %50 = load double, ptr %6, align 8
  %51 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@CGNCDHOI@S174?7?5?$CF?42f?5?7?7?$AA@", double noundef %50)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s175(i32 noundef %0) #7 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %9 = call i32 @init(ptr noundef @"??_C@_05IFBCHDME@s175?5?$AA@")
  %10 = call i32 @clock()
  store i32 %10, ptr %3, align 4
  store i32 0, ptr %7, align 4
  br label %11

11:                                               ; preds = %39, %1
  %12 = load i32, ptr %7, align 4
  %13 = icmp slt i32 %12, 256
  br i1 %13, label %14, label %42

14:                                               ; preds = %11
  store i32 0, ptr %8, align 4
  br label %15

15:                                               ; preds = %33, %14
  %16 = load i32, ptr %8, align 4
  %17 = icmp slt i32 %16, 31999
  br i1 %17, label %18, label %37

18:                                               ; preds = %15
  %19 = load i32, ptr %8, align 4
  %20 = load i32, ptr %2, align 4
  %21 = add i32 %19, %20
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %22
  %24 = load float, ptr %23, align 4
  %25 = load i32, ptr %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %26
  %28 = load float, ptr %27, align 4
  %29 = fadd float %24, %28
  %30 = load i32, ptr %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %31
  store float %29, ptr %32, align 4
  br label %33

33:                                               ; preds = %18
  %34 = load i32, ptr %2, align 4
  %35 = load i32, ptr %8, align 4
  %36 = add i32 %35, %34
  store i32 %36, ptr %8, align 4
  br label %15, !llvm.loop !121

37:                                               ; preds = %15
  %38 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %39

39:                                               ; preds = %37
  %40 = load i32, ptr %7, align 4
  %41 = add i32 %40, 1
  store i32 %41, ptr %7, align 4
  br label %11, !llvm.loop !122

42:                                               ; preds = %11
  %43 = call i32 @clock()
  store i32 %43, ptr %4, align 4
  %44 = load i32, ptr %4, align 4
  %45 = load i32, ptr %3, align 4
  %46 = sub i32 %44, %45
  store i32 %46, ptr %5, align 4
  %47 = load i32, ptr %5, align 4
  %48 = sitofp i32 %47 to double
  %49 = fdiv double %48, 1.000000e+06
  store double %49, ptr %6, align 8
  %50 = load double, ptr %6, align 8
  %51 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@OHFMOICI@S175?7?5?$CF?42f?5?7?7?$AA@", double noundef %50)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s176() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = call i32 @init(ptr noundef @"??_C@_05IHFEMNJN@s176?5?$AA@")
  %10 = call i32 @clock()
  store i32 %10, ptr %1, align 4
  store i32 16000, ptr %5, align 4
  store i32 0, ptr %6, align 4
  br label %11

11:                                               ; preds = %51, %0
  %12 = load i32, ptr %6, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %54

14:                                               ; preds = %11
  store i32 0, ptr %7, align 4
  br label %15

15:                                               ; preds = %46, %14
  %16 = load i32, ptr %7, align 4
  %17 = icmp slt i32 %16, 16000
  br i1 %17, label %18, label %49

18:                                               ; preds = %15
  store i32 0, ptr %8, align 4
  br label %19

19:                                               ; preds = %42, %18
  %20 = load i32, ptr %8, align 4
  %21 = load i32, ptr %5, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %45

23:                                               ; preds = %19
  %24 = load i32, ptr %8, align 4
  %25 = load i32, ptr %5, align 4
  %26 = add i32 %24, %25
  %27 = load i32, ptr %7, align 4
  %28 = sub i32 %26, %27
  %29 = sub i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %30
  %32 = load float, ptr %31, align 4
  %33 = load i32, ptr %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %34
  %36 = load float, ptr %35, align 4
  %37 = load i32, ptr %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %38
  %40 = load float, ptr %39, align 4
  %41 = call float @llvm.fmuladd.f32(float %32, float %36, float %40)
  store float %41, ptr %39, align 4
  br label %42

42:                                               ; preds = %23
  %43 = load i32, ptr %8, align 4
  %44 = add i32 %43, 1
  store i32 %44, ptr %8, align 4
  br label %19, !llvm.loop !123

45:                                               ; preds = %19
  br label %46

46:                                               ; preds = %45
  %47 = load i32, ptr %7, align 4
  %48 = add i32 %47, 1
  store i32 %48, ptr %7, align 4
  br label %15, !llvm.loop !124

49:                                               ; preds = %15
  %50 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %51

51:                                               ; preds = %49
  %52 = load i32, ptr %6, align 4
  %53 = add i32 %52, 1
  store i32 %53, ptr %6, align 4
  br label %11, !llvm.loop !125

54:                                               ; preds = %11
  %55 = call i32 @clock()
  store i32 %55, ptr %2, align 4
  %56 = load i32, ptr %2, align 4
  %57 = load i32, ptr %1, align 4
  %58 = sub i32 %56, %57
  store i32 %58, ptr %3, align 4
  %59 = load i32, ptr %3, align 4
  %60 = sitofp i32 %59 to double
  %61 = fdiv double %60, 1.000000e+06
  store double %61, ptr %4, align 8
  %62 = load double, ptr %4, align 8
  %63 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@HOLOIOCJ@S176?7?5?$CF?42f?5?7?7?$AA@", double noundef %62)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s211() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 @init(ptr noundef @"??_C@_05OANAPOBE@s211?5?$AA@")
  %8 = call i32 @clock()
  store i32 %8, ptr %1, align 4
  store i32 0, ptr %5, align 4
  br label %9

9:                                                ; preds = %57, %0
  %10 = load i32, ptr %5, align 4
  %11 = icmp slt i32 %10, 256
  br i1 %11, label %12, label %60

12:                                               ; preds = %9
  store i32 1, ptr %6, align 4
  br label %13

13:                                               ; preds = %52, %12
  %14 = load i32, ptr %6, align 4
  %15 = icmp slt i32 %14, 31999
  br i1 %15, label %16, label %55

16:                                               ; preds = %13
  %17 = load i32, ptr %6, align 4
  %18 = sub i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %19
  %21 = load float, ptr %20, align 4
  %22 = load i32, ptr %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %23
  %25 = load float, ptr %24, align 4
  %26 = load i32, ptr %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %27
  %29 = load float, ptr %28, align 4
  %30 = call float @llvm.fmuladd.f32(float %25, float %29, float %21)
  %31 = load i32, ptr %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %32
  store float %30, ptr %33, align 4
  %34 = load i32, ptr %6, align 4
  %35 = add i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %36
  %38 = load float, ptr %37, align 4
  %39 = load i32, ptr %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %40
  %42 = load float, ptr %41, align 4
  %43 = load i32, ptr %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %44
  %46 = load float, ptr %45, align 4
  %47 = fneg float %42
  %48 = call float @llvm.fmuladd.f32(float %47, float %46, float %38)
  %49 = load i32, ptr %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %50
  store float %48, ptr %51, align 4
  br label %52

52:                                               ; preds = %16
  %53 = load i32, ptr %6, align 4
  %54 = add i32 %53, 1
  store i32 %54, ptr %6, align 4
  br label %13, !llvm.loop !126

55:                                               ; preds = %13
  %56 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %57

57:                                               ; preds = %55
  %58 = load i32, ptr %5, align 4
  %59 = add i32 %58, 1
  store i32 %59, ptr %5, align 4
  br label %9, !llvm.loop !127

60:                                               ; preds = %9
  %61 = call i32 @clock()
  store i32 %61, ptr %2, align 4
  %62 = load i32, ptr %2, align 4
  %63 = load i32, ptr %1, align 4
  %64 = sub i32 %62, %63
  store i32 %64, ptr %3, align 4
  %65 = load i32, ptr %3, align 4
  %66 = sitofp i32 %65 to double
  %67 = fdiv double %66, 1.000000e+06
  store double %67, ptr %4, align 8
  %68 = load double, ptr %4, align 8
  %69 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@FHCFCIE@S211?7?5?$CF?42f?5?7?7?$AA@", double noundef %68)
  call void @check(i32 noundef 12)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s212() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 @init(ptr noundef @"??_C@_05OCJGEAEN@s212?5?$AA@")
  %8 = call i32 @clock()
  store i32 %8, ptr %1, align 4
  store i32 0, ptr %5, align 4
  br label %9

9:                                                ; preds = %45, %0
  %10 = load i32, ptr %5, align 4
  %11 = icmp slt i32 %10, 256
  br i1 %11, label %12, label %48

12:                                               ; preds = %9
  store i32 0, ptr %6, align 4
  br label %13

13:                                               ; preds = %40, %12
  %14 = load i32, ptr %6, align 4
  %15 = icmp slt i32 %14, 31999
  br i1 %15, label %16, label %43

16:                                               ; preds = %13
  %17 = load i32, ptr %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %18
  %20 = load float, ptr %19, align 4
  %21 = load i32, ptr %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %22
  %24 = load float, ptr %23, align 4
  %25 = fmul float %24, %20
  store float %25, ptr %23, align 4
  %26 = load i32, ptr %6, align 4
  %27 = add i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %28
  %30 = load float, ptr %29, align 4
  %31 = load i32, ptr %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %32
  %34 = load float, ptr %33, align 4
  %35 = load i32, ptr %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %36
  %38 = load float, ptr %37, align 4
  %39 = call float @llvm.fmuladd.f32(float %30, float %34, float %38)
  store float %39, ptr %37, align 4
  br label %40

40:                                               ; preds = %16
  %41 = load i32, ptr %6, align 4
  %42 = add i32 %41, 1
  store i32 %42, ptr %6, align 4
  br label %13, !llvm.loop !128

43:                                               ; preds = %13
  %44 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %45

45:                                               ; preds = %43
  %46 = load i32, ptr %5, align 4
  %47 = add i32 %46, 1
  store i32 %47, ptr %5, align 4
  br label %9, !llvm.loop !129

48:                                               ; preds = %9
  %49 = call i32 @clock()
  store i32 %49, ptr %2, align 4
  %50 = load i32, ptr %2, align 4
  %51 = load i32, ptr %1, align 4
  %52 = sub i32 %50, %51
  store i32 %52, ptr %3, align 4
  %53 = load i32, ptr %3, align 4
  %54 = sitofp i32 %53 to double
  %55 = fdiv double %54, 1.000000e+06
  store double %55, ptr %4, align 8
  %56 = load double, ptr %4, align 8
  %57 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@JMJADEIF@S212?7?5?$CF?42f?5?7?7?$AA@", double noundef %56)
  call void @check(i32 noundef 12)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s1213() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 @init(ptr noundef @"??_C@_05OCJGEAEN@s212?5?$AA@")
  %8 = call i32 @clock()
  store i32 %8, ptr %1, align 4
  store i32 0, ptr %5, align 4
  br label %9

9:                                                ; preds = %48, %0
  %10 = load i32, ptr %5, align 4
  %11 = icmp slt i32 %10, 256
  br i1 %11, label %12, label %51

12:                                               ; preds = %9
  store i32 1, ptr %6, align 4
  br label %13

13:                                               ; preds = %43, %12
  %14 = load i32, ptr %6, align 4
  %15 = icmp slt i32 %14, 31999
  br i1 %15, label %16, label %46

16:                                               ; preds = %13
  %17 = load i32, ptr %6, align 4
  %18 = sub i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %19
  %21 = load float, ptr %20, align 4
  %22 = load i32, ptr %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %23
  %25 = load float, ptr %24, align 4
  %26 = fadd float %21, %25
  %27 = load i32, ptr %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %28
  store float %26, ptr %29, align 4
  %30 = load i32, ptr %6, align 4
  %31 = add i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %32
  %34 = load float, ptr %33, align 4
  %35 = load i32, ptr %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %36
  %38 = load float, ptr %37, align 4
  %39 = fmul float %34, %38
  %40 = load i32, ptr %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %41
  store float %39, ptr %42, align 4
  br label %43

43:                                               ; preds = %16
  %44 = load i32, ptr %6, align 4
  %45 = add i32 %44, 1
  store i32 %45, ptr %6, align 4
  br label %13, !llvm.loop !130

46:                                               ; preds = %13
  %47 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %48

48:                                               ; preds = %46
  %49 = load i32, ptr %5, align 4
  %50 = add i32 %49, 1
  store i32 %50, ptr %5, align 4
  br label %9, !llvm.loop !131

51:                                               ; preds = %9
  %52 = call i32 @clock()
  store i32 %52, ptr %2, align 4
  %53 = load i32, ptr %2, align 4
  %54 = load i32, ptr %1, align 4
  %55 = sub i32 %53, %54
  store i32 %55, ptr %3, align 4
  %56 = load i32, ptr %3, align 4
  %57 = sitofp i32 %56 to double
  %58 = fdiv double %57, 1.000000e+06
  store double %58, ptr %4, align 8
  %59 = load double, ptr %4, align 8
  %60 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@KJCBFEKK@S1213?7?5?$CF?42f?5?7?7?$AA@", double noundef %59)
  call void @check(i32 noundef 12)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s221() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 @init(ptr noundef @"??_C@_05PCGFFBPK@s221?5?$AA@")
  %8 = call i32 @clock()
  store i32 %8, ptr %1, align 4
  store i32 0, ptr %5, align 4
  br label %9

9:                                                ; preds = %53, %0
  %10 = load i32, ptr %5, align 4
  %11 = icmp slt i32 %10, 128
  br i1 %11, label %12, label %56

12:                                               ; preds = %9
  store i32 1, ptr %6, align 4
  br label %13

13:                                               ; preds = %48, %12
  %14 = load i32, ptr %6, align 4
  %15 = icmp slt i32 %14, 32000
  br i1 %15, label %16, label %51

16:                                               ; preds = %13
  %17 = load i32, ptr %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %18
  %20 = load float, ptr %19, align 4
  %21 = load i32, ptr %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %22
  %24 = load float, ptr %23, align 4
  %25 = load i32, ptr %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %26
  %28 = load float, ptr %27, align 4
  %29 = call float @llvm.fmuladd.f32(float %20, float %24, float %28)
  store float %29, ptr %27, align 4
  %30 = load i32, ptr %6, align 4
  %31 = sub i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %32
  %34 = load float, ptr %33, align 4
  %35 = load i32, ptr %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %36
  %38 = load float, ptr %37, align 4
  %39 = fadd float %34, %38
  %40 = load i32, ptr %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %41
  %43 = load float, ptr %42, align 4
  %44 = fadd float %39, %43
  %45 = load i32, ptr %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %46
  store float %44, ptr %47, align 4
  br label %48

48:                                               ; preds = %16
  %49 = load i32, ptr %6, align 4
  %50 = add i32 %49, 1
  store i32 %50, ptr %6, align 4
  br label %13, !llvm.loop !132

51:                                               ; preds = %13
  %52 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %53

53:                                               ; preds = %51
  %54 = load i32, ptr %5, align 4
  %55 = add i32 %54, 1
  store i32 %55, ptr %5, align 4
  br label %9, !llvm.loop !133

56:                                               ; preds = %9
  %57 = call i32 @clock()
  store i32 %57, ptr %2, align 4
  %58 = load i32, ptr %2, align 4
  %59 = load i32, ptr %1, align 4
  %60 = sub i32 %58, %59
  store i32 %60, ptr %3, align 4
  %61 = load i32, ptr %3, align 4
  %62 = sitofp i32 %61 to double
  %63 = fdiv double %62, 1.000000e+06
  store double %63, ptr %4, align 8
  %64 = load double, ptr %4, align 8
  %65 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@HCOMIAHE@S221?7?5?$CF?42f?5?7?7?$AA@", double noundef %64)
  call void @check(i32 noundef 12)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s1221() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 @init(ptr noundef @"??_C@_05PCGFFBPK@s221?5?$AA@")
  %8 = call i32 @clock()
  store i32 %8, ptr %1, align 4
  store i32 0, ptr %5, align 4
  br label %9

9:                                                ; preds = %35, %0
  %10 = load i32, ptr %5, align 4
  %11 = icmp slt i32 %10, 256
  br i1 %11, label %12, label %38

12:                                               ; preds = %9
  store i32 4, ptr %6, align 4
  br label %13

13:                                               ; preds = %30, %12
  %14 = load i32, ptr %6, align 4
  %15 = icmp slt i32 %14, 32000
  br i1 %15, label %16, label %33

16:                                               ; preds = %13
  %17 = load i32, ptr %6, align 4
  %18 = sub i32 %17, 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %19
  %21 = load float, ptr %20, align 4
  %22 = load i32, ptr %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %23
  %25 = load float, ptr %24, align 4
  %26 = fadd float %21, %25
  %27 = load i32, ptr %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %28
  store float %26, ptr %29, align 4
  br label %30

30:                                               ; preds = %16
  %31 = load i32, ptr %6, align 4
  %32 = add i32 %31, 1
  store i32 %32, ptr %6, align 4
  br label %13, !llvm.loop !134

33:                                               ; preds = %13
  %34 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %35

35:                                               ; preds = %33
  %36 = load i32, ptr %5, align 4
  %37 = add i32 %36, 1
  store i32 %37, ptr %5, align 4
  br label %9, !llvm.loop !135

38:                                               ; preds = %9
  %39 = call i32 @clock()
  store i32 %39, ptr %2, align 4
  %40 = load i32, ptr %2, align 4
  %41 = load i32, ptr %1, align 4
  %42 = sub i32 %40, %41
  store i32 %42, ptr %3, align 4
  %43 = load i32, ptr %3, align 4
  %44 = sitofp i32 %43 to double
  %45 = fdiv double %44, 1.000000e+06
  store double %45, ptr %4, align 8
  %46 = load double, ptr %4, align 8
  %47 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@IGNDDPJL@S1221?7?5?$CF?42f?5?7?7?$AA@", double noundef %46)
  call void @check(i32 noundef 12)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s222() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 @init(ptr noundef @"??_C@_05PACDOPKD@s222?5?$AA@")
  %8 = call i32 @clock()
  store i32 %8, ptr %1, align 4
  store i32 0, ptr %5, align 4
  br label %9

9:                                                ; preds = %63, %0
  %10 = load i32, ptr %5, align 4
  %11 = icmp slt i32 %10, 128
  br i1 %11, label %12, label %66

12:                                               ; preds = %9
  store i32 1, ptr %6, align 4
  br label %13

13:                                               ; preds = %58, %12
  %14 = load i32, ptr %6, align 4
  %15 = icmp slt i32 %14, 32000
  br i1 %15, label %16, label %61

16:                                               ; preds = %13
  %17 = load i32, ptr %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %18
  %20 = load float, ptr %19, align 4
  %21 = load i32, ptr %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %22
  %24 = load float, ptr %23, align 4
  %25 = load i32, ptr %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %26
  %28 = load float, ptr %27, align 4
  %29 = call float @llvm.fmuladd.f32(float %20, float %24, float %28)
  store float %29, ptr %27, align 4
  %30 = load i32, ptr %6, align 4
  %31 = sub i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %32
  %34 = load float, ptr %33, align 4
  %35 = load i32, ptr %6, align 4
  %36 = sub i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %37
  %39 = load float, ptr %38, align 4
  %40 = fmul float %34, %39
  %41 = load i32, ptr %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %42
  store float %40, ptr %43, align 4
  %44 = load i32, ptr %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %45
  %47 = load float, ptr %46, align 4
  %48 = load i32, ptr %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %49
  %51 = load float, ptr %50, align 4
  %52 = load i32, ptr %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %53
  %55 = load float, ptr %54, align 4
  %56 = fneg float %47
  %57 = call float @llvm.fmuladd.f32(float %56, float %51, float %55)
  store float %57, ptr %54, align 4
  br label %58

58:                                               ; preds = %16
  %59 = load i32, ptr %6, align 4
  %60 = add i32 %59, 1
  store i32 %60, ptr %6, align 4
  br label %13, !llvm.loop !136

61:                                               ; preds = %13
  %62 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %63

63:                                               ; preds = %61
  %64 = load i32, ptr %5, align 4
  %65 = add i32 %64, 1
  store i32 %65, ptr %5, align 4
  br label %9, !llvm.loop !137

66:                                               ; preds = %9
  %67 = call i32 @clock()
  store i32 %67, ptr %2, align 4
  %68 = load i32, ptr %2, align 4
  %69 = load i32, ptr %1, align 4
  %70 = sub i32 %68, %69
  store i32 %70, ptr %3, align 4
  %71 = load i32, ptr %3, align 4
  %72 = sitofp i32 %71 to double
  %73 = fdiv double %72, 1.000000e+06
  store double %73, ptr %4, align 8
  %74 = load double, ptr %4, align 8
  %75 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@OLAOOGHF@S222?7?5?$CF?42f?5?7?7?$AA@", double noundef %74)
  call void @check(i32 noundef 12)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s231() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = call i32 @init(ptr noundef @"??_C@_05EKNJDGJP@s231?5?$AA@")
  %9 = call i32 @clock()
  store i32 %9, ptr %1, align 4
  store i32 0, ptr %5, align 4
  br label %10

10:                                               ; preds = %53, %0
  %11 = load i32, ptr %5, align 4
  %12 = icmp slt i32 %11, 100
  br i1 %12, label %13, label %56

13:                                               ; preds = %10
  store i32 0, ptr %6, align 4
  br label %14

14:                                               ; preds = %48, %13
  %15 = load i32, ptr %6, align 4
  %16 = icmp slt i32 %15, 256
  br i1 %16, label %17, label %51

17:                                               ; preds = %14
  store i32 1, ptr %7, align 4
  br label %18

18:                                               ; preds = %44, %17
  %19 = load i32, ptr %7, align 4
  %20 = icmp slt i32 %19, 256
  br i1 %20, label %21, label %47

21:                                               ; preds = %18
  %22 = load i32, ptr %7, align 4
  %23 = sub i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %24
  %26 = load i32, ptr %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [256 x float], ptr %25, i64 0, i64 %27
  %29 = load float, ptr %28, align 4
  %30 = load i32, ptr %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %31
  %33 = load i32, ptr %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [256 x float], ptr %32, i64 0, i64 %34
  %36 = load float, ptr %35, align 4
  %37 = fadd float %29, %36
  %38 = load i32, ptr %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %39
  %41 = load i32, ptr %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [256 x float], ptr %40, i64 0, i64 %42
  store float %37, ptr %43, align 4
  br label %44

44:                                               ; preds = %21
  %45 = load i32, ptr %7, align 4
  %46 = add i32 %45, 1
  store i32 %46, ptr %7, align 4
  br label %18, !llvm.loop !138

47:                                               ; preds = %18
  br label %48

48:                                               ; preds = %47
  %49 = load i32, ptr %6, align 4
  %50 = add i32 %49, 1
  store i32 %50, ptr %6, align 4
  br label %14, !llvm.loop !139

51:                                               ; preds = %14
  %52 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %53

53:                                               ; preds = %51
  %54 = load i32, ptr %5, align 4
  %55 = add i32 %54, 1
  store i32 %55, ptr %5, align 4
  br label %10, !llvm.loop !140

56:                                               ; preds = %10
  %57 = call i32 @clock()
  store i32 %57, ptr %2, align 4
  %58 = load i32, ptr %2, align 4
  %59 = load i32, ptr %1, align 4
  %60 = sub i32 %58, %59
  store i32 %60, ptr %3, align 4
  %61 = load i32, ptr %3, align 4
  %62 = sitofp i32 %61 to double
  %63 = fdiv double %62, 1.000000e+06
  store double %63, ptr %4, align 8
  %64 = load double, ptr %4, align 8
  %65 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@OJEJMMBL@S231?7?5?$CF?42f?5?7?7?$AA@", double noundef %64)
  call void @check(i32 noundef 11)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s232() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = call i32 @init(ptr noundef @"??_C@_05EIJPIIMG@s232?5?$AA@")
  %9 = call i32 @clock()
  store i32 %9, ptr %1, align 4
  store i32 0, ptr %5, align 4
  br label %10

10:                                               ; preds = %62, %0
  %11 = load i32, ptr %5, align 4
  %12 = icmp slt i32 %11, 100
  br i1 %12, label %13, label %65

13:                                               ; preds = %10
  store i32 1, ptr %6, align 4
  br label %14

14:                                               ; preds = %57, %13
  %15 = load i32, ptr %6, align 4
  %16 = icmp slt i32 %15, 256
  br i1 %16, label %17, label %60

17:                                               ; preds = %14
  store i32 1, ptr %7, align 4
  br label %18

18:                                               ; preds = %53, %17
  %19 = load i32, ptr %7, align 4
  %20 = load i32, ptr %6, align 4
  %21 = icmp sle i32 %19, %20
  br i1 %21, label %22, label %56

22:                                               ; preds = %18
  %23 = load i32, ptr %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %24
  %26 = load i32, ptr %7, align 4
  %27 = sub i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [256 x float], ptr %25, i64 0, i64 %28
  %30 = load float, ptr %29, align 4
  %31 = load i32, ptr %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %32
  %34 = load i32, ptr %7, align 4
  %35 = sub i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [256 x float], ptr %33, i64 0, i64 %36
  %38 = load float, ptr %37, align 4
  %39 = load i32, ptr %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %40
  %42 = load i32, ptr %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [256 x float], ptr %41, i64 0, i64 %43
  %45 = load float, ptr %44, align 4
  %46 = call float @llvm.fmuladd.f32(float %30, float %38, float %45)
  %47 = load i32, ptr %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %48
  %50 = load i32, ptr %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [256 x float], ptr %49, i64 0, i64 %51
  store float %46, ptr %52, align 4
  br label %53

53:                                               ; preds = %22
  %54 = load i32, ptr %7, align 4
  %55 = add i32 %54, 1
  store i32 %55, ptr %7, align 4
  br label %18, !llvm.loop !141

56:                                               ; preds = %18
  br label %57

57:                                               ; preds = %56
  %58 = load i32, ptr %6, align 4
  %59 = add i32 %58, 1
  store i32 %59, ptr %6, align 4
  br label %14, !llvm.loop !142

60:                                               ; preds = %14
  %61 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 1.000000e+00)
  br label %62

62:                                               ; preds = %60
  %63 = load i32, ptr %5, align 4
  %64 = add i32 %63, 1
  store i32 %64, ptr %5, align 4
  br label %10, !llvm.loop !143

65:                                               ; preds = %10
  %66 = call i32 @clock()
  store i32 %66, ptr %2, align 4
  %67 = load i32, ptr %2, align 4
  %68 = load i32, ptr %1, align 4
  %69 = sub i32 %67, %68
  store i32 %69, ptr %3, align 4
  %70 = load i32, ptr %3, align 4
  %71 = sitofp i32 %70 to double
  %72 = fdiv double %71, 1.000000e+06
  store double %72, ptr %4, align 8
  %73 = load double, ptr %4, align 8
  %74 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@HAKLKKBK@S232?7?5?$CF?42f?5?7?7?$AA@", double noundef %73)
  call void @check(i32 noundef 11)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s1232() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = call i32 @init(ptr noundef @"??_C@_05EIJPIIMG@s232?5?$AA@")
  %9 = call i32 @clock()
  store i32 %9, ptr %1, align 4
  store i32 0, ptr %5, align 4
  br label %10

10:                                               ; preds = %53, %0
  %11 = load i32, ptr %5, align 4
  %12 = icmp slt i32 %11, 100
  br i1 %12, label %13, label %56

13:                                               ; preds = %10
  store i32 0, ptr %6, align 4
  br label %14

14:                                               ; preds = %48, %13
  %15 = load i32, ptr %6, align 4
  %16 = icmp slt i32 %15, 256
  br i1 %16, label %17, label %51

17:                                               ; preds = %14
  %18 = load i32, ptr %6, align 4
  store i32 %18, ptr %7, align 4
  br label %19

19:                                               ; preds = %44, %17
  %20 = load i32, ptr %7, align 4
  %21 = icmp slt i32 %20, 256
  br i1 %21, label %22, label %47

22:                                               ; preds = %19
  %23 = load i32, ptr %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %24
  %26 = load i32, ptr %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [256 x float], ptr %25, i64 0, i64 %27
  %29 = load float, ptr %28, align 4
  %30 = load i32, ptr %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [256 x [256 x float]], ptr @cc, i64 0, i64 %31
  %33 = load i32, ptr %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [256 x float], ptr %32, i64 0, i64 %34
  %36 = load float, ptr %35, align 4
  %37 = fadd float %29, %36
  %38 = load i32, ptr %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %39
  %41 = load i32, ptr %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [256 x float], ptr %40, i64 0, i64 %42
  store float %37, ptr %43, align 4
  br label %44

44:                                               ; preds = %22
  %45 = load i32, ptr %7, align 4
  %46 = add i32 %45, 1
  store i32 %46, ptr %7, align 4
  br label %19, !llvm.loop !144

47:                                               ; preds = %19
  br label %48

48:                                               ; preds = %47
  %49 = load i32, ptr %6, align 4
  %50 = add i32 %49, 1
  store i32 %50, ptr %6, align 4
  br label %14, !llvm.loop !145

51:                                               ; preds = %14
  %52 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 1.000000e+00)
  br label %53

53:                                               ; preds = %51
  %54 = load i32, ptr %5, align 4
  %55 = add i32 %54, 1
  store i32 %55, ptr %5, align 4
  br label %10, !llvm.loop !146

56:                                               ; preds = %10
  %57 = call i32 @clock()
  store i32 %57, ptr %2, align 4
  %58 = load i32, ptr %2, align 4
  %59 = load i32, ptr %1, align 4
  %60 = sub i32 %58, %59
  store i32 %60, ptr %3, align 4
  %61 = load i32, ptr %3, align 4
  %62 = sitofp i32 %61 to double
  %63 = fdiv double %62, 1.000000e+06
  store double %63, ptr %4, align 8
  %64 = load double, ptr %4, align 8
  %65 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@IEJEBFPF@S1232?7?5?$CF?42f?5?7?7?$AA@", double noundef %64)
  call void @check(i32 noundef 11)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s233() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = call i32 @init(ptr noundef @"??_C@_05EJFNOCPB@s233?5?$AA@")
  %10 = call i32 @clock()
  store i32 %10, ptr %1, align 4
  store i32 0, ptr %5, align 4
  br label %11

11:                                               ; preds = %84, %0
  %12 = load i32, ptr %5, align 4
  %13 = icmp slt i32 %12, 100
  br i1 %13, label %14, label %87

14:                                               ; preds = %11
  store i32 1, ptr %6, align 4
  br label %15

15:                                               ; preds = %79, %14
  %16 = load i32, ptr %6, align 4
  %17 = icmp slt i32 %16, 256
  br i1 %17, label %18, label %82

18:                                               ; preds = %15
  store i32 1, ptr %7, align 4
  br label %19

19:                                               ; preds = %45, %18
  %20 = load i32, ptr %7, align 4
  %21 = icmp slt i32 %20, 256
  br i1 %21, label %22, label %48

22:                                               ; preds = %19
  %23 = load i32, ptr %7, align 4
  %24 = sub i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %25
  %27 = load i32, ptr %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [256 x float], ptr %26, i64 0, i64 %28
  %30 = load float, ptr %29, align 4
  %31 = load i32, ptr %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [256 x [256 x float]], ptr @cc, i64 0, i64 %32
  %34 = load i32, ptr %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [256 x float], ptr %33, i64 0, i64 %35
  %37 = load float, ptr %36, align 4
  %38 = fadd float %30, %37
  %39 = load i32, ptr %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %40
  %42 = load i32, ptr %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [256 x float], ptr %41, i64 0, i64 %43
  store float %38, ptr %44, align 4
  br label %45

45:                                               ; preds = %22
  %46 = load i32, ptr %7, align 4
  %47 = add i32 %46, 1
  store i32 %47, ptr %7, align 4
  br label %19, !llvm.loop !147

48:                                               ; preds = %19
  store i32 1, ptr %8, align 4
  br label %49

49:                                               ; preds = %75, %48
  %50 = load i32, ptr %8, align 4
  %51 = icmp slt i32 %50, 256
  br i1 %51, label %52, label %78

52:                                               ; preds = %49
  %53 = load i32, ptr %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %54
  %56 = load i32, ptr %6, align 4
  %57 = sub i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [256 x float], ptr %55, i64 0, i64 %58
  %60 = load float, ptr %59, align 4
  %61 = load i32, ptr %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [256 x [256 x float]], ptr @cc, i64 0, i64 %62
  %64 = load i32, ptr %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [256 x float], ptr %63, i64 0, i64 %65
  %67 = load float, ptr %66, align 4
  %68 = fadd float %60, %67
  %69 = load i32, ptr %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %70
  %72 = load i32, ptr %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [256 x float], ptr %71, i64 0, i64 %73
  store float %68, ptr %74, align 4
  br label %75

75:                                               ; preds = %52
  %76 = load i32, ptr %8, align 4
  %77 = add i32 %76, 1
  store i32 %77, ptr %8, align 4
  br label %49, !llvm.loop !148

78:                                               ; preds = %49
  br label %79

79:                                               ; preds = %78
  %80 = load i32, ptr %6, align 4
  %81 = add i32 %80, 1
  store i32 %81, ptr %6, align 4
  br label %15, !llvm.loop !149

82:                                               ; preds = %15
  %83 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %84

84:                                               ; preds = %82
  %85 = load i32, ptr %5, align 4
  %86 = add i32 %85, 1
  store i32 %86, ptr %5, align 4
  br label %11, !llvm.loop !150

87:                                               ; preds = %11
  %88 = call i32 @clock()
  store i32 %88, ptr %2, align 4
  %89 = load i32, ptr %2, align 4
  %90 = load i32, ptr %1, align 4
  %91 = sub i32 %89, %90
  store i32 %91, ptr %3, align 4
  %92 = load i32, ptr %3, align 4
  %93 = sitofp i32 %92 to double
  %94 = fdiv double %93, 1.000000e+06
  store double %94, ptr %4, align 8
  %95 = load double, ptr %4, align 8
  %96 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@LBCFHFNK@S233?7?5?$CF?42f?5?7?7?$AA@", double noundef %95)
  call void @check(i32 noundef 1122)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s2233() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = call i32 @init(ptr noundef @"??_C@_05EJFNOCPB@s233?5?$AA@")
  %10 = call i32 @clock()
  store i32 %10, ptr %1, align 4
  store i32 0, ptr %5, align 4
  br label %11

11:                                               ; preds = %84, %0
  %12 = load i32, ptr %5, align 4
  %13 = icmp slt i32 %12, 100
  br i1 %13, label %14, label %87

14:                                               ; preds = %11
  store i32 1, ptr %6, align 4
  br label %15

15:                                               ; preds = %79, %14
  %16 = load i32, ptr %6, align 4
  %17 = icmp slt i32 %16, 256
  br i1 %17, label %18, label %82

18:                                               ; preds = %15
  store i32 1, ptr %7, align 4
  br label %19

19:                                               ; preds = %45, %18
  %20 = load i32, ptr %7, align 4
  %21 = icmp slt i32 %20, 256
  br i1 %21, label %22, label %48

22:                                               ; preds = %19
  %23 = load i32, ptr %7, align 4
  %24 = sub i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %25
  %27 = load i32, ptr %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [256 x float], ptr %26, i64 0, i64 %28
  %30 = load float, ptr %29, align 4
  %31 = load i32, ptr %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [256 x [256 x float]], ptr @cc, i64 0, i64 %32
  %34 = load i32, ptr %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [256 x float], ptr %33, i64 0, i64 %35
  %37 = load float, ptr %36, align 4
  %38 = fadd float %30, %37
  %39 = load i32, ptr %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %40
  %42 = load i32, ptr %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [256 x float], ptr %41, i64 0, i64 %43
  store float %38, ptr %44, align 4
  br label %45

45:                                               ; preds = %22
  %46 = load i32, ptr %7, align 4
  %47 = add i32 %46, 1
  store i32 %47, ptr %7, align 4
  br label %19, !llvm.loop !151

48:                                               ; preds = %19
  store i32 1, ptr %8, align 4
  br label %49

49:                                               ; preds = %75, %48
  %50 = load i32, ptr %8, align 4
  %51 = icmp slt i32 %50, 256
  br i1 %51, label %52, label %78

52:                                               ; preds = %49
  %53 = load i32, ptr %6, align 4
  %54 = sub i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %55
  %57 = load i32, ptr %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [256 x float], ptr %56, i64 0, i64 %58
  %60 = load float, ptr %59, align 4
  %61 = load i32, ptr %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [256 x [256 x float]], ptr @cc, i64 0, i64 %62
  %64 = load i32, ptr %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [256 x float], ptr %63, i64 0, i64 %65
  %67 = load float, ptr %66, align 4
  %68 = fadd float %60, %67
  %69 = load i32, ptr %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %70
  %72 = load i32, ptr %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [256 x float], ptr %71, i64 0, i64 %73
  store float %68, ptr %74, align 4
  br label %75

75:                                               ; preds = %52
  %76 = load i32, ptr %8, align 4
  %77 = add i32 %76, 1
  store i32 %77, ptr %8, align 4
  br label %49, !llvm.loop !152

78:                                               ; preds = %49
  br label %79

79:                                               ; preds = %78
  %80 = load i32, ptr %6, align 4
  %81 = add i32 %80, 1
  store i32 %81, ptr %6, align 4
  br label %15, !llvm.loop !153

82:                                               ; preds = %15
  %83 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %84

84:                                               ; preds = %82
  %85 = load i32, ptr %5, align 4
  %86 = add i32 %85, 1
  store i32 %86, ptr %5, align 4
  br label %11, !llvm.loop !154

87:                                               ; preds = %11
  %88 = call i32 @clock()
  store i32 %88, ptr %2, align 4
  %89 = load i32, ptr %2, align 4
  %90 = load i32, ptr %1, align 4
  %91 = sub i32 %89, %90
  store i32 %91, ptr %3, align 4
  %92 = load i32, ptr %3, align 4
  %93 = sitofp i32 %92 to double
  %94 = fdiv double %93, 1.000000e+06
  store double %94, ptr %4, align 8
  %95 = load double, ptr %4, align 8
  %96 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@DJHLOPOO@S2233?7?5?$CF?42f?5?7?7?$AA@", double noundef %95)
  call void @check(i32 noundef 1122)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s235() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = call i32 @init(ptr noundef @"??_C@_05ENNAJOED@s235?5?$AA@")
  %9 = call i32 @clock()
  store i32 %9, ptr %1, align 4
  store i32 0, ptr %5, align 4
  br label %10

10:                                               ; preds = %70, %0
  %11 = load i32, ptr %5, align 4
  %12 = icmp slt i32 %11, 200
  br i1 %12, label %13, label %73

13:                                               ; preds = %10
  store i32 0, ptr %6, align 4
  br label %14

14:                                               ; preds = %65, %13
  %15 = load i32, ptr %6, align 4
  %16 = icmp slt i32 %15, 256
  br i1 %16, label %17, label %68

17:                                               ; preds = %14
  %18 = load i32, ptr %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %19
  %21 = load float, ptr %20, align 4
  %22 = load i32, ptr %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %23
  %25 = load float, ptr %24, align 4
  %26 = load i32, ptr %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %27
  %29 = load float, ptr %28, align 4
  %30 = call float @llvm.fmuladd.f32(float %21, float %25, float %29)
  store float %30, ptr %28, align 4
  store i32 1, ptr %7, align 4
  br label %31

31:                                               ; preds = %61, %17
  %32 = load i32, ptr %7, align 4
  %33 = icmp slt i32 %32, 256
  br i1 %33, label %34, label %64

34:                                               ; preds = %31
  %35 = load i32, ptr %7, align 4
  %36 = sub i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %37
  %39 = load i32, ptr %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [256 x float], ptr %38, i64 0, i64 %40
  %42 = load float, ptr %41, align 4
  %43 = load i32, ptr %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %44
  %46 = load i32, ptr %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [256 x float], ptr %45, i64 0, i64 %47
  %49 = load float, ptr %48, align 4
  %50 = load i32, ptr %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %51
  %53 = load float, ptr %52, align 4
  %54 = call float @llvm.fmuladd.f32(float %49, float %53, float %42)
  %55 = load i32, ptr %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %56
  %58 = load i32, ptr %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [256 x float], ptr %57, i64 0, i64 %59
  store float %54, ptr %60, align 4
  br label %61

61:                                               ; preds = %34
  %62 = load i32, ptr %7, align 4
  %63 = add i32 %62, 1
  store i32 %63, ptr %7, align 4
  br label %31, !llvm.loop !155

64:                                               ; preds = %31
  br label %65

65:                                               ; preds = %64
  %66 = load i32, ptr %6, align 4
  %67 = add i32 %66, 1
  store i32 %67, ptr %6, align 4
  br label %14, !llvm.loop !156

68:                                               ; preds = %14
  %69 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %70

70:                                               ; preds = %68
  %71 = load i32, ptr %5, align 4
  %72 = add i32 %71, 1
  store i32 %72, ptr %5, align 4
  br label %10, !llvm.loop !157

73:                                               ; preds = %10
  %74 = call i32 @clock()
  store i32 %74, ptr %2, align 4
  %75 = load i32, ptr %2, align 4
  %76 = load i32, ptr %1, align 4
  %77 = sub i32 %75, %76
  store i32 %77, ptr %3, align 4
  %78 = load i32, ptr %3, align 4
  %79 = sitofp i32 %78 to double
  %80 = fdiv double %79, 1.000000e+06
  store double %80, ptr %4, align 8
  %81 = load double, ptr %4, align 8
  %82 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@FJJALPJJ@S235?7?5?$CF?42f?5?7?7?$AA@", double noundef %81)
  call void @check(i32 noundef 111)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s241() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 @init(ptr noundef @"??_C@_05NHAOAOCG@s241?5?$AA@")
  %8 = call i32 @clock()
  store i32 %8, ptr %1, align 4
  store i32 0, ptr %5, align 4
  br label %9

9:                                                ; preds = %57, %0
  %10 = load i32, ptr %5, align 4
  %11 = icmp slt i32 %10, 512
  br i1 %11, label %12, label %60

12:                                               ; preds = %9
  store i32 0, ptr %6, align 4
  br label %13

13:                                               ; preds = %52, %12
  %14 = load i32, ptr %6, align 4
  %15 = icmp slt i32 %14, 31999
  br i1 %15, label %16, label %55

16:                                               ; preds = %13
  %17 = load i32, ptr %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %18
  %20 = load float, ptr %19, align 4
  %21 = load i32, ptr %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %22
  %24 = load float, ptr %23, align 4
  %25 = fmul float %20, %24
  %26 = load i32, ptr %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %27
  %29 = load float, ptr %28, align 4
  %30 = fmul float %25, %29
  %31 = load i32, ptr %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %32
  store float %30, ptr %33, align 4
  %34 = load i32, ptr %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %35
  %37 = load float, ptr %36, align 4
  %38 = load i32, ptr %6, align 4
  %39 = add i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %40
  %42 = load float, ptr %41, align 4
  %43 = fmul float %37, %42
  %44 = load i32, ptr %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %45
  %47 = load float, ptr %46, align 4
  %48 = fmul float %43, %47
  %49 = load i32, ptr %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %50
  store float %48, ptr %51, align 4
  br label %52

52:                                               ; preds = %16
  %53 = load i32, ptr %6, align 4
  %54 = add i32 %53, 1
  store i32 %54, ptr %6, align 4
  br label %13, !llvm.loop !158

55:                                               ; preds = %13
  %56 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %57

57:                                               ; preds = %55
  %58 = load i32, ptr %5, align 4
  %59 = add i32 %58, 1
  store i32 %59, ptr %5, align 4
  br label %9, !llvm.loop !159

60:                                               ; preds = %9
  %61 = call i32 @clock()
  store i32 %61, ptr %2, align 4
  %62 = load i32, ptr %2, align 4
  %63 = load i32, ptr %1, align 4
  %64 = sub i32 %62, %63
  store i32 %64, ptr %3, align 4
  %65 = load i32, ptr %3, align 4
  %66 = sitofp i32 %65 to double
  %67 = fdiv double %66, 1.000000e+06
  store double %67, ptr %4, align 8
  %68 = load double, ptr %4, align 8
  %69 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@JNNBCFJE@S241?7?5?$CF?42f?5?7?7?$AA@", double noundef %68)
  call void @check(i32 noundef 12)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s242(float noundef %0, float noundef %1) #7 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store float %1, ptr %3, align 4
  store float %0, ptr %4, align 4
  %11 = call i32 @init(ptr noundef @"??_C@_05NFEILAHP@s242?5?$AA@")
  %12 = call i32 @clock()
  store i32 %12, ptr %5, align 4
  store i32 0, ptr %9, align 4
  br label %13

13:                                               ; preds = %53, %2
  %14 = load i32, ptr %9, align 4
  %15 = icmp slt i32 %14, 51
  br i1 %15, label %16, label %56

16:                                               ; preds = %13
  store i32 1, ptr %10, align 4
  br label %17

17:                                               ; preds = %48, %16
  %18 = load i32, ptr %10, align 4
  %19 = icmp slt i32 %18, 32000
  br i1 %19, label %20, label %51

20:                                               ; preds = %17
  %21 = load i32, ptr %10, align 4
  %22 = sub i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %23
  %25 = load float, ptr %24, align 4
  %26 = load float, ptr %4, align 4
  %27 = fadd float %25, %26
  %28 = load float, ptr %3, align 4
  %29 = fadd float %27, %28
  %30 = load i32, ptr %10, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %31
  %33 = load float, ptr %32, align 4
  %34 = fadd float %29, %33
  %35 = load i32, ptr %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %36
  %38 = load float, ptr %37, align 4
  %39 = fadd float %34, %38
  %40 = load i32, ptr %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %41
  %43 = load float, ptr %42, align 4
  %44 = fadd float %39, %43
  %45 = load i32, ptr %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %46
  store float %44, ptr %47, align 4
  br label %48

48:                                               ; preds = %20
  %49 = load i32, ptr %10, align 4
  %50 = add i32 %49, 1
  store i32 %50, ptr %10, align 4
  br label %17, !llvm.loop !160

51:                                               ; preds = %17
  %52 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %53

53:                                               ; preds = %51
  %54 = load i32, ptr %9, align 4
  %55 = add i32 %54, 1
  store i32 %55, ptr %9, align 4
  br label %13, !llvm.loop !161

56:                                               ; preds = %13
  %57 = call i32 @clock()
  store i32 %57, ptr %6, align 4
  %58 = load i32, ptr %6, align 4
  %59 = load i32, ptr %5, align 4
  %60 = sub i32 %58, %59
  store i32 %60, ptr %7, align 4
  %61 = load i32, ptr %7, align 4
  %62 = sitofp i32 %61 to double
  %63 = fdiv double %62, 1.000000e+06
  store double %63, ptr %8, align 8
  %64 = load double, ptr %8, align 8
  %65 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@EDDEDJF@S242?7?5?$CF?42f?5?7?7?$AA@", double noundef %64)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s243() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 @init(ptr noundef @"??_C@_05NEIKNKEI@s243?5?$AA@")
  %8 = call i32 @clock()
  store i32 %8, ptr %1, align 4
  store i32 0, ptr %5, align 4
  br label %9

9:                                                ; preds = %71, %0
  %10 = load i32, ptr %5, align 4
  %11 = icmp slt i32 %10, 256
  br i1 %11, label %12, label %74

12:                                               ; preds = %9
  store i32 0, ptr %6, align 4
  br label %13

13:                                               ; preds = %66, %12
  %14 = load i32, ptr %6, align 4
  %15 = icmp slt i32 %14, 31999
  br i1 %15, label %16, label %69

16:                                               ; preds = %13
  %17 = load i32, ptr %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %18
  %20 = load float, ptr %19, align 4
  %21 = load i32, ptr %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %22
  %24 = load float, ptr %23, align 4
  %25 = load i32, ptr %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %26
  %28 = load float, ptr %27, align 4
  %29 = call float @llvm.fmuladd.f32(float %24, float %28, float %20)
  %30 = load i32, ptr %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %31
  store float %29, ptr %32, align 4
  %33 = load i32, ptr %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %34
  %36 = load float, ptr %35, align 4
  %37 = load i32, ptr %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %38
  %40 = load float, ptr %39, align 4
  %41 = load i32, ptr %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %42
  %44 = load float, ptr %43, align 4
  %45 = call float @llvm.fmuladd.f32(float %40, float %44, float %36)
  %46 = load i32, ptr %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %47
  store float %45, ptr %48, align 4
  %49 = load i32, ptr %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %50
  %52 = load float, ptr %51, align 4
  %53 = load i32, ptr %6, align 4
  %54 = add i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %55
  %57 = load float, ptr %56, align 4
  %58 = load i32, ptr %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %59
  %61 = load float, ptr %60, align 4
  %62 = call float @llvm.fmuladd.f32(float %57, float %61, float %52)
  %63 = load i32, ptr %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %64
  store float %62, ptr %65, align 4
  br label %66

66:                                               ; preds = %16
  %67 = load i32, ptr %6, align 4
  %68 = add i32 %67, 1
  store i32 %68, ptr %6, align 4
  br label %13, !llvm.loop !162

69:                                               ; preds = %13
  %70 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %71

71:                                               ; preds = %69
  %72 = load i32, ptr %5, align 4
  %73 = add i32 %72, 1
  store i32 %73, ptr %5, align 4
  br label %9, !llvm.loop !163

74:                                               ; preds = %9
  %75 = call i32 @clock()
  store i32 %75, ptr %2, align 4
  %76 = load i32, ptr %2, align 4
  %77 = load i32, ptr %1, align 4
  %78 = sub i32 %76, %77
  store i32 %78, ptr %3, align 4
  %79 = load i32, ptr %3, align 4
  %80 = sitofp i32 %79 to double
  %81 = fdiv double %80, 1.000000e+06
  store double %81, ptr %4, align 8
  %82 = load double, ptr %4, align 8
  %83 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@MFLNJMFF@S243?7?5?$CF?42f?5?7?7?$AA@", double noundef %82)
  call void @check(i32 noundef 12)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s244() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 @init(ptr noundef @"??_C@_05NBMFMMMN@s244?5?$AA@")
  %8 = call i32 @clock()
  store i32 %8, ptr %1, align 4
  store i32 0, ptr %5, align 4
  br label %9

9:                                                ; preds = %68, %0
  %10 = load i32, ptr %5, align 4
  %11 = icmp slt i32 %10, 256
  br i1 %11, label %12, label %71

12:                                               ; preds = %9
  store i32 0, ptr %6, align 4
  br label %13

13:                                               ; preds = %63, %12
  %14 = load i32, ptr %6, align 4
  %15 = icmp slt i32 %14, 31999
  br i1 %15, label %16, label %66

16:                                               ; preds = %13
  %17 = load i32, ptr %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %18
  %20 = load float, ptr %19, align 4
  %21 = load i32, ptr %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %22
  %24 = load float, ptr %23, align 4
  %25 = load i32, ptr %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %26
  %28 = load float, ptr %27, align 4
  %29 = call float @llvm.fmuladd.f32(float %24, float %28, float %20)
  %30 = load i32, ptr %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %31
  store float %29, ptr %32, align 4
  %33 = load i32, ptr %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %34
  %36 = load float, ptr %35, align 4
  %37 = load i32, ptr %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %38
  %40 = load float, ptr %39, align 4
  %41 = fadd float %36, %40
  %42 = load i32, ptr %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %43
  store float %41, ptr %44, align 4
  %45 = load i32, ptr %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %46
  %48 = load float, ptr %47, align 4
  %49 = load i32, ptr %6, align 4
  %50 = add i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %51
  %53 = load float, ptr %52, align 4
  %54 = load i32, ptr %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %55
  %57 = load float, ptr %56, align 4
  %58 = call float @llvm.fmuladd.f32(float %53, float %57, float %48)
  %59 = load i32, ptr %6, align 4
  %60 = add i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %61
  store float %58, ptr %62, align 4
  br label %63

63:                                               ; preds = %16
  %64 = load i32, ptr %6, align 4
  %65 = add i32 %64, 1
  store i32 %65, ptr %6, align 4
  br label %13, !llvm.loop !164

66:                                               ; preds = %13
  %67 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %68

68:                                               ; preds = %66
  %69 = load i32, ptr %5, align 4
  %70 = add i32 %69, 1
  store i32 %70, ptr %5, align 4
  br label %9, !llvm.loop !165

71:                                               ; preds = %9
  %72 = call i32 @clock()
  store i32 %72, ptr %2, align 4
  %73 = load i32, ptr %2, align 4
  %74 = load i32, ptr %1, align 4
  %75 = sub i32 %73, %74
  store i32 %75, ptr %3, align 4
  %76 = load i32, ptr %3, align 4
  %77 = sitofp i32 %76 to double
  %78 = fdiv double %77, 1.000000e+06
  store double %78, ptr %4, align 8
  %79 = load double, ptr %4, align 8
  %80 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@OMIGIJNG@S244?7?5?$CF?42f?5?7?7?$AA@", double noundef %79)
  call void @check(i32 noundef 12)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s1244() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 @init(ptr noundef @"??_C@_05NBMFMMMN@s244?5?$AA@")
  %8 = call i32 @clock()
  store i32 %8, ptr %1, align 4
  store i32 0, ptr %5, align 4
  br label %9

9:                                                ; preds = %65, %0
  %10 = load i32, ptr %5, align 4
  %11 = icmp slt i32 %10, 256
  br i1 %11, label %12, label %68

12:                                               ; preds = %9
  store i32 0, ptr %6, align 4
  br label %13

13:                                               ; preds = %60, %12
  %14 = load i32, ptr %6, align 4
  %15 = icmp slt i32 %14, 31999
  br i1 %15, label %16, label %63

16:                                               ; preds = %13
  %17 = load i32, ptr %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %18
  %20 = load float, ptr %19, align 4
  %21 = load i32, ptr %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %22
  %24 = load float, ptr %23, align 4
  %25 = load i32, ptr %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %26
  %28 = load float, ptr %27, align 4
  %29 = call float @llvm.fmuladd.f32(float %24, float %28, float %20)
  %30 = load i32, ptr %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %31
  %33 = load float, ptr %32, align 4
  %34 = load i32, ptr %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %35
  %37 = load float, ptr %36, align 4
  %38 = call float @llvm.fmuladd.f32(float %33, float %37, float %29)
  %39 = load i32, ptr %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %40
  %42 = load float, ptr %41, align 4
  %43 = fadd float %38, %42
  %44 = load i32, ptr %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %45
  store float %43, ptr %46, align 4
  %47 = load i32, ptr %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %48
  %50 = load float, ptr %49, align 4
  %51 = load i32, ptr %6, align 4
  %52 = add i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %53
  %55 = load float, ptr %54, align 4
  %56 = fadd float %50, %55
  %57 = load i32, ptr %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %58
  store float %56, ptr %59, align 4
  br label %60

60:                                               ; preds = %16
  %61 = load i32, ptr %6, align 4
  %62 = add i32 %61, 1
  store i32 %62, ptr %6, align 4
  br label %13, !llvm.loop !166

63:                                               ; preds = %13
  %64 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %65

65:                                               ; preds = %63
  %66 = load i32, ptr %5, align 4
  %67 = add i32 %66, 1
  store i32 %67, ptr %5, align 4
  br label %9, !llvm.loop !167

68:                                               ; preds = %9
  %69 = call i32 @clock()
  store i32 %69, ptr %2, align 4
  %70 = load i32, ptr %2, align 4
  %71 = load i32, ptr %1, align 4
  %72 = sub i32 %70, %71
  store i32 %72, ptr %3, align 4
  %73 = load i32, ptr %3, align 4
  %74 = sitofp i32 %73 to double
  %75 = fdiv double %74, 1.000000e+06
  store double %75, ptr %4, align 8
  %76 = load double, ptr %4, align 8
  %77 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@BILJDGDJ@S1244?7?5?$CF?42f?5?7?7?$AA@", double noundef %76)
  call void @check(i32 noundef 12)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s2244() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 @init(ptr noundef @"??_C@_05NBMFMMMN@s244?5?$AA@")
  %8 = call i32 @clock()
  store i32 %8, ptr %1, align 4
  store i32 0, ptr %5, align 4
  br label %9

9:                                                ; preds = %47, %0
  %10 = load i32, ptr %5, align 4
  %11 = icmp slt i32 %10, 256
  br i1 %11, label %12, label %50

12:                                               ; preds = %9
  store i32 0, ptr %6, align 4
  br label %13

13:                                               ; preds = %42, %12
  %14 = load i32, ptr %6, align 4
  %15 = icmp slt i32 %14, 31999
  br i1 %15, label %16, label %45

16:                                               ; preds = %13
  %17 = load i32, ptr %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %18
  %20 = load float, ptr %19, align 4
  %21 = load i32, ptr %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %22
  %24 = load float, ptr %23, align 4
  %25 = fadd float %20, %24
  %26 = load i32, ptr %6, align 4
  %27 = add i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %28
  store float %25, ptr %29, align 4
  %30 = load i32, ptr %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %31
  %33 = load float, ptr %32, align 4
  %34 = load i32, ptr %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %35
  %37 = load float, ptr %36, align 4
  %38 = fadd float %33, %37
  %39 = load i32, ptr %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %40
  store float %38, ptr %41, align 4
  br label %42

42:                                               ; preds = %16
  %43 = load i32, ptr %6, align 4
  %44 = add i32 %43, 1
  store i32 %44, ptr %6, align 4
  br label %13, !llvm.loop !168

45:                                               ; preds = %13
  %46 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %47

47:                                               ; preds = %45
  %48 = load i32, ptr %5, align 4
  %49 = add i32 %48, 1
  store i32 %49, ptr %5, align 4
  br label %9, !llvm.loop !169

50:                                               ; preds = %9
  %51 = call i32 @clock()
  store i32 %51, ptr %2, align 4
  %52 = load i32, ptr %2, align 4
  %53 = load i32, ptr %1, align 4
  %54 = sub i32 %52, %53
  store i32 %54, ptr %3, align 4
  %55 = load i32, ptr %3, align 4
  %56 = sitofp i32 %55 to double
  %57 = fdiv double %56, 1.000000e+06
  store double %57, ptr %4, align 8
  %58 = load double, ptr %4, align 8
  %59 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@GENIBDOC@S2244?7?5?$CF?42f?5?7?7?$AA@", double noundef %58)
  call void @check(i32 noundef 12)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s251() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = call i32 @init(ptr noundef @"??_C@_05GPLCGJED@s251?5?$AA@")
  %9 = call i32 @clock()
  store i32 %9, ptr %1, align 4
  store i32 0, ptr %6, align 4
  br label %10

10:                                               ; preds = %42, %0
  %11 = load i32, ptr %6, align 4
  %12 = icmp slt i32 %11, 1024
  br i1 %12, label %13, label %45

13:                                               ; preds = %10
  store i32 0, ptr %7, align 4
  br label %14

14:                                               ; preds = %37, %13
  %15 = load i32, ptr %7, align 4
  %16 = icmp slt i32 %15, 32000
  br i1 %16, label %17, label %40

17:                                               ; preds = %14
  %18 = load i32, ptr %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %19
  %21 = load float, ptr %20, align 4
  %22 = load i32, ptr %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %23
  %25 = load float, ptr %24, align 4
  %26 = load i32, ptr %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %27
  %29 = load float, ptr %28, align 4
  %30 = call float @llvm.fmuladd.f32(float %25, float %29, float %21)
  store float %30, ptr %5, align 4
  %31 = load float, ptr %5, align 4
  %32 = load float, ptr %5, align 4
  %33 = fmul float %31, %32
  %34 = load i32, ptr %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %35
  store float %33, ptr %36, align 4
  br label %37

37:                                               ; preds = %17
  %38 = load i32, ptr %7, align 4
  %39 = add i32 %38, 1
  store i32 %39, ptr %7, align 4
  br label %14, !llvm.loop !170

40:                                               ; preds = %14
  %41 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %42

42:                                               ; preds = %40
  %43 = load i32, ptr %6, align 4
  %44 = add i32 %43, 1
  store i32 %44, ptr %6, align 4
  br label %10, !llvm.loop !171

45:                                               ; preds = %10
  %46 = call i32 @clock()
  store i32 %46, ptr %2, align 4
  %47 = load i32, ptr %2, align 4
  %48 = load i32, ptr %1, align 4
  %49 = sub i32 %47, %48
  store i32 %49, ptr %3, align 4
  %50 = load i32, ptr %3, align 4
  %51 = sitofp i32 %50 to double
  %52 = fdiv double %51, 1.000000e+06
  store double %52, ptr %4, align 8
  %53 = load double, ptr %4, align 8
  %54 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@GHEGJPL@S251?7?5?$CF?42f?5?7?7?$AA@", double noundef %53)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s1251() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = call i32 @init(ptr noundef @"??_C@_05GPLCGJED@s251?5?$AA@")
  %9 = call i32 @clock()
  store i32 %9, ptr %1, align 4
  store i32 0, ptr %6, align 4
  br label %10

10:                                               ; preds = %53, %0
  %11 = load i32, ptr %6, align 4
  %12 = icmp slt i32 %11, 1024
  br i1 %12, label %13, label %56

13:                                               ; preds = %10
  store i32 0, ptr %7, align 4
  br label %14

14:                                               ; preds = %48, %13
  %15 = load i32, ptr %7, align 4
  %16 = icmp slt i32 %15, 32000
  br i1 %16, label %17, label %51

17:                                               ; preds = %14
  %18 = load i32, ptr %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %19
  %21 = load float, ptr %20, align 4
  %22 = load i32, ptr %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %23
  %25 = load float, ptr %24, align 4
  %26 = fadd float %21, %25
  store float %26, ptr %5, align 4
  %27 = load i32, ptr %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %28
  %30 = load float, ptr %29, align 4
  %31 = load i32, ptr %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %32
  %34 = load float, ptr %33, align 4
  %35 = fadd float %30, %34
  %36 = load i32, ptr %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %37
  store float %35, ptr %38, align 4
  %39 = load float, ptr %5, align 4
  %40 = load i32, ptr %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %41
  %43 = load float, ptr %42, align 4
  %44 = fmul float %39, %43
  %45 = load i32, ptr %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %46
  store float %44, ptr %47, align 4
  br label %48

48:                                               ; preds = %17
  %49 = load i32, ptr %7, align 4
  %50 = add i32 %49, 1
  store i32 %50, ptr %7, align 4
  br label %14, !llvm.loop !172

51:                                               ; preds = %14
  %52 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %53

53:                                               ; preds = %51
  %54 = load i32, ptr %6, align 4
  %55 = add i32 %54, 1
  store i32 %55, ptr %6, align 4
  br label %10, !llvm.loop !173

56:                                               ; preds = %10
  %57 = call i32 @clock()
  store i32 %57, ptr %2, align 4
  %58 = load i32, ptr %2, align 4
  %59 = load i32, ptr %1, align 4
  %60 = sub i32 %58, %59
  store i32 %60, ptr %3, align 4
  %61 = load i32, ptr %3, align 4
  %62 = sitofp i32 %61 to double
  %63 = fdiv double %62, 1.000000e+06
  store double %63, ptr %4, align 8
  %64 = load double, ptr %4, align 8
  %65 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@PCELNGBE@S1251?7?5?$CF?42f?5?7?7?$AA@", double noundef %64)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s2251() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = call i32 @init(ptr noundef @"??_C@_05GPLCGJED@s251?5?$AA@")
  %9 = call i32 @clock()
  store i32 %9, ptr %1, align 4
  store i32 0, ptr %5, align 4
  br label %10

10:                                               ; preds = %53, %0
  %11 = load i32, ptr %5, align 4
  %12 = icmp slt i32 %11, 256
  br i1 %12, label %13, label %56

13:                                               ; preds = %10
  store float 0.000000e+00, ptr %6, align 4
  store i32 0, ptr %7, align 4
  br label %14

14:                                               ; preds = %48, %13
  %15 = load i32, ptr %7, align 4
  %16 = icmp slt i32 %15, 32000
  br i1 %16, label %17, label %51

17:                                               ; preds = %14
  %18 = load float, ptr %6, align 4
  %19 = load i32, ptr %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %20
  %22 = load float, ptr %21, align 4
  %23 = fmul float %18, %22
  %24 = load i32, ptr %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %25
  store float %23, ptr %26, align 4
  %27 = load i32, ptr %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %28
  %30 = load float, ptr %29, align 4
  %31 = load i32, ptr %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %32
  %34 = load float, ptr %33, align 4
  %35 = fadd float %30, %34
  store float %35, ptr %6, align 4
  %36 = load i32, ptr %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %37
  %39 = load float, ptr %38, align 4
  %40 = load i32, ptr %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %41
  %43 = load float, ptr %42, align 4
  %44 = fadd float %39, %43
  %45 = load i32, ptr %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %46
  store float %44, ptr %47, align 4
  br label %48

48:                                               ; preds = %17
  %49 = load i32, ptr %7, align 4
  %50 = add i32 %49, 1
  store i32 %50, ptr %7, align 4
  br label %14, !llvm.loop !174

51:                                               ; preds = %14
  %52 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %53

53:                                               ; preds = %51
  %54 = load i32, ptr %5, align 4
  %55 = add i32 %54, 1
  store i32 %55, ptr %5, align 4
  br label %10, !llvm.loop !175

56:                                               ; preds = %10
  %57 = call i32 @clock()
  store i32 %57, ptr %2, align 4
  %58 = load i32, ptr %2, align 4
  %59 = load i32, ptr %1, align 4
  %60 = sub i32 %58, %59
  store i32 %60, ptr %3, align 4
  %61 = load i32, ptr %3, align 4
  %62 = sitofp i32 %61 to double
  %63 = fdiv double %62, 1.000000e+06
  store double %63, ptr %4, align 8
  %64 = load double, ptr %4, align 8
  %65 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@IOCKPDMP@S2251?7?5?$CF?42f?5?7?7?$AA@", double noundef %64)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s3251() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 @init(ptr noundef @"??_C@_05GPLCGJED@s251?5?$AA@")
  %8 = call i32 @clock()
  store i32 %8, ptr %1, align 4
  store i32 0, ptr %5, align 4
  br label %9

9:                                                ; preds = %59, %0
  %10 = load i32, ptr %5, align 4
  %11 = icmp slt i32 %10, 256
  br i1 %11, label %12, label %62

12:                                               ; preds = %9
  store i32 0, ptr %6, align 4
  br label %13

13:                                               ; preds = %54, %12
  %14 = load i32, ptr %6, align 4
  %15 = icmp slt i32 %14, 31999
  br i1 %15, label %16, label %57

16:                                               ; preds = %13
  %17 = load i32, ptr %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %18
  %20 = load float, ptr %19, align 4
  %21 = load i32, ptr %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %22
  %24 = load float, ptr %23, align 4
  %25 = fadd float %20, %24
  %26 = load i32, ptr %6, align 4
  %27 = add i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %28
  store float %25, ptr %29, align 4
  %30 = load i32, ptr %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %31
  %33 = load float, ptr %32, align 4
  %34 = load i32, ptr %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %35
  %37 = load float, ptr %36, align 4
  %38 = fmul float %33, %37
  %39 = load i32, ptr %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %40
  store float %38, ptr %41, align 4
  %42 = load i32, ptr %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %43
  %45 = load float, ptr %44, align 4
  %46 = load i32, ptr %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %47
  %49 = load float, ptr %48, align 4
  %50 = fmul float %45, %49
  %51 = load i32, ptr %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %52
  store float %50, ptr %53, align 4
  br label %54

54:                                               ; preds = %16
  %55 = load i32, ptr %6, align 4
  %56 = add i32 %55, 1
  store i32 %56, ptr %6, align 4
  br label %13, !llvm.loop !176

57:                                               ; preds = %13
  %58 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %59

59:                                               ; preds = %57
  %60 = load i32, ptr %5, align 4
  %61 = add i32 %60, 1
  store i32 %61, ptr %5, align 4
  br label %9, !llvm.loop !177

62:                                               ; preds = %9
  %63 = call i32 @clock()
  store i32 %63, ptr %2, align 4
  %64 = load i32, ptr %2, align 4
  %65 = load i32, ptr %1, align 4
  %66 = sub i32 %64, %65
  store i32 %66, ptr %3, align 4
  %67 = load i32, ptr %3, align 4
  %68 = sitofp i32 %67 to double
  %69 = fdiv double %68, 1.000000e+06
  store double %69, ptr %4, align 8
  %70 = load double, ptr %4, align 8
  %71 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@BDCFBCLJ@S3251?7?5?$CF?42f?5?7?7?$AA@", double noundef %70)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s252() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = call i32 @init(ptr noundef @"??_C@_05GNPENHBK@s252?5?$AA@")
  %10 = call i32 @clock()
  store i32 %10, ptr %1, align 4
  store i32 0, ptr %7, align 4
  br label %11

11:                                               ; preds = %40, %0
  %12 = load i32, ptr %7, align 4
  %13 = icmp slt i32 %12, 256
  br i1 %13, label %14, label %43

14:                                               ; preds = %11
  store float 0.000000e+00, ptr %5, align 4
  store i32 0, ptr %8, align 4
  br label %15

15:                                               ; preds = %35, %14
  %16 = load i32, ptr %8, align 4
  %17 = icmp slt i32 %16, 32000
  br i1 %17, label %18, label %38

18:                                               ; preds = %15
  %19 = load i32, ptr %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %20
  %22 = load float, ptr %21, align 4
  %23 = load i32, ptr %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %24
  %26 = load float, ptr %25, align 4
  %27 = fmul float %22, %26
  store float %27, ptr %6, align 4
  %28 = load float, ptr %6, align 4
  %29 = load float, ptr %5, align 4
  %30 = fadd float %28, %29
  %31 = load i32, ptr %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %32
  store float %30, ptr %33, align 4
  %34 = load float, ptr %6, align 4
  store float %34, ptr %5, align 4
  br label %35

35:                                               ; preds = %18
  %36 = load i32, ptr %8, align 4
  %37 = add i32 %36, 1
  store i32 %37, ptr %8, align 4
  br label %15, !llvm.loop !178

38:                                               ; preds = %15
  %39 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %40

40:                                               ; preds = %38
  %41 = load i32, ptr %7, align 4
  %42 = add i32 %41, 1
  store i32 %42, ptr %7, align 4
  br label %11, !llvm.loop !179

43:                                               ; preds = %11
  %44 = call i32 @clock()
  store i32 %44, ptr %2, align 4
  %45 = load i32, ptr %2, align 4
  %46 = load i32, ptr %1, align 4
  %47 = sub i32 %45, %46
  store i32 %47, ptr %3, align 4
  %48 = load i32, ptr %3, align 4
  %49 = sitofp i32 %48 to double
  %50 = fdiv double %49, 1.000000e+06
  store double %50, ptr %4, align 8
  %51 = load double, ptr %4, align 8
  %52 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@JPJGAPPK@S252?7?5?$CF?42f?5?7?7?$AA@", double noundef %51)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s253() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = call i32 @init(ptr noundef @"??_C@_05GMDGLNCN@s253?5?$AA@")
  %9 = call i32 @clock()
  store i32 %9, ptr %1, align 4
  store i32 0, ptr %6, align 4
  br label %10

10:                                               ; preds = %58, %0
  %11 = load i32, ptr %6, align 4
  %12 = icmp slt i32 %11, 256
  br i1 %12, label %13, label %61

13:                                               ; preds = %10
  store i32 0, ptr %7, align 4
  br label %14

14:                                               ; preds = %53, %13
  %15 = load i32, ptr %7, align 4
  %16 = icmp slt i32 %15, 32000
  br i1 %16, label %17, label %56

17:                                               ; preds = %14
  %18 = load i32, ptr %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %19
  %21 = load float, ptr %20, align 4
  %22 = load i32, ptr %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %23
  %25 = load float, ptr %24, align 4
  %26 = fcmp ogt float %21, %25
  br i1 %26, label %27, label %52

27:                                               ; preds = %17
  %28 = load i32, ptr %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %29
  %31 = load float, ptr %30, align 4
  %32 = load i32, ptr %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %33
  %35 = load float, ptr %34, align 4
  %36 = load i32, ptr %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %37
  %39 = load float, ptr %38, align 4
  %40 = fneg float %35
  %41 = call float @llvm.fmuladd.f32(float %40, float %39, float %31)
  store float %41, ptr %5, align 4
  %42 = load float, ptr %5, align 4
  %43 = load i32, ptr %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %44
  %46 = load float, ptr %45, align 4
  %47 = fadd float %46, %42
  store float %47, ptr %45, align 4
  %48 = load float, ptr %5, align 4
  %49 = load i32, ptr %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %50
  store float %48, ptr %51, align 4
  br label %52

52:                                               ; preds = %27, %17
  br label %53

53:                                               ; preds = %52
  %54 = load i32, ptr %7, align 4
  %55 = add i32 %54, 1
  store i32 %55, ptr %7, align 4
  br label %14, !llvm.loop !180

56:                                               ; preds = %14
  %57 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %58

58:                                               ; preds = %56
  %59 = load i32, ptr %6, align 4
  %60 = add i32 %59, 1
  store i32 %60, ptr %6, align 4
  br label %10, !llvm.loop !181

61:                                               ; preds = %10
  %62 = call i32 @clock()
  store i32 %62, ptr %2, align 4
  %63 = load i32, ptr %2, align 4
  %64 = load i32, ptr %1, align 4
  %65 = sub i32 %63, %64
  store i32 %65, ptr %3, align 4
  %66 = load i32, ptr %3, align 4
  %67 = sitofp i32 %66 to double
  %68 = fdiv double %67, 1.000000e+06
  store double %68, ptr %4, align 8
  %69 = load double, ptr %4, align 8
  %70 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@FOBINADK@S253?7?5?$CF?42f?5?7?7?$AA@", double noundef %69)
  call void @check(i32 noundef 13)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s254() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = call i32 @init(ptr noundef @"??_C@_05GJHJKLKI@s254?5?$AA@")
  %9 = call i32 @clock()
  store i32 %9, ptr %1, align 4
  store i32 0, ptr %6, align 4
  br label %10

10:                                               ; preds = %38, %0
  %11 = load i32, ptr %6, align 4
  %12 = icmp slt i32 %11, 1024
  br i1 %12, label %13, label %41

13:                                               ; preds = %10
  %14 = load float, ptr getelementptr inbounds nuw (i8, ptr @b, i64 127996), align 4
  store float %14, ptr %5, align 4
  store i32 0, ptr %7, align 4
  br label %15

15:                                               ; preds = %33, %13
  %16 = load i32, ptr %7, align 4
  %17 = icmp slt i32 %16, 32000
  br i1 %17, label %18, label %36

18:                                               ; preds = %15
  %19 = load i32, ptr %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %20
  %22 = load float, ptr %21, align 4
  %23 = load float, ptr %5, align 4
  %24 = fadd float %22, %23
  %25 = fmul float %24, 5.000000e-01
  %26 = load i32, ptr %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %27
  store float %25, ptr %28, align 4
  %29 = load i32, ptr %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %30
  %32 = load float, ptr %31, align 4
  store float %32, ptr %5, align 4
  br label %33

33:                                               ; preds = %18
  %34 = load i32, ptr %7, align 4
  %35 = add i32 %34, 1
  store i32 %35, ptr %7, align 4
  br label %15, !llvm.loop !182

36:                                               ; preds = %15
  %37 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %38

38:                                               ; preds = %36
  %39 = load i32, ptr %6, align 4
  %40 = add i32 %39, 1
  store i32 %40, ptr %6, align 4
  br label %10, !llvm.loop !183

41:                                               ; preds = %10
  %42 = call i32 @clock()
  store i32 %42, ptr %2, align 4
  %43 = load i32, ptr %2, align 4
  %44 = load i32, ptr %1, align 4
  %45 = sub i32 %43, %44
  store i32 %45, ptr %3, align 4
  %46 = load i32, ptr %3, align 4
  %47 = sitofp i32 %46 to double
  %48 = fdiv double %47, 1.000000e+06
  store double %48, ptr %4, align 8
  %49 = load double, ptr %4, align 8
  %50 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@HHCDMFLJ@S254?7?5?$CF?42f?5?7?7?$AA@", double noundef %49)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s255() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = call i32 @init(ptr noundef @"??_C@_05GILLMBJP@s255?5?$AA@")
  %10 = call i32 @clock()
  store i32 %10, ptr %1, align 4
  store i32 0, ptr %7, align 4
  br label %11

11:                                               ; preds = %43, %0
  %12 = load i32, ptr %7, align 4
  %13 = icmp slt i32 %12, 256
  br i1 %13, label %14, label %46

14:                                               ; preds = %11
  %15 = load float, ptr getelementptr inbounds nuw (i8, ptr @b, i64 127996), align 4
  store float %15, ptr %5, align 4
  %16 = load float, ptr getelementptr inbounds nuw (i8, ptr @b, i64 127992), align 8
  store float %16, ptr %6, align 4
  store i32 0, ptr %8, align 4
  br label %17

17:                                               ; preds = %38, %14
  %18 = load i32, ptr %8, align 4
  %19 = icmp slt i32 %18, 32000
  br i1 %19, label %20, label %41

20:                                               ; preds = %17
  %21 = load i32, ptr %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %22
  %24 = load float, ptr %23, align 4
  %25 = load float, ptr %5, align 4
  %26 = fadd float %24, %25
  %27 = load float, ptr %6, align 4
  %28 = fadd float %26, %27
  %29 = fmul float %28, 3.330000e-01
  %30 = load i32, ptr %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %31
  store float %29, ptr %32, align 4
  %33 = load float, ptr %5, align 4
  store float %33, ptr %6, align 4
  %34 = load i32, ptr %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %35
  %37 = load float, ptr %36, align 4
  store float %37, ptr %5, align 4
  br label %38

38:                                               ; preds = %20
  %39 = load i32, ptr %8, align 4
  %40 = add i32 %39, 1
  store i32 %40, ptr %8, align 4
  br label %17, !llvm.loop !184

41:                                               ; preds = %17
  %42 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %43

43:                                               ; preds = %41
  %44 = load i32, ptr %7, align 4
  %45 = add i32 %44, 1
  store i32 %45, ptr %7, align 4
  br label %11, !llvm.loop !185

46:                                               ; preds = %11
  %47 = call i32 @clock()
  store i32 %47, ptr %2, align 4
  %48 = load i32, ptr %2, align 4
  %49 = load i32, ptr %1, align 4
  %50 = sub i32 %48, %49
  store i32 %50, ptr %3, align 4
  %51 = load i32, ptr %3, align 4
  %52 = sitofp i32 %51 to double
  %53 = fdiv double %52, 1.000000e+06
  store double %53, ptr %4, align 8
  %54 = load double, ptr %4, align 8
  %55 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@LGKNBKHJ@S255?7?5?$CF?42f?5?7?7?$AA@", double noundef %54)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s256() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = call i32 @init(ptr noundef @"??_C@_05GKPNHPMG@s256?5?$AA@")
  %9 = call i32 @clock()
  store i32 %9, ptr %1, align 4
  store i32 0, ptr %5, align 4
  br label %10

10:                                               ; preds = %62, %0
  %11 = load i32, ptr %5, align 4
  %12 = icmp slt i32 %11, 10
  br i1 %12, label %13, label %65

13:                                               ; preds = %10
  store i32 0, ptr %6, align 4
  br label %14

14:                                               ; preds = %57, %13
  %15 = load i32, ptr %6, align 4
  %16 = icmp slt i32 %15, 256
  br i1 %16, label %17, label %60

17:                                               ; preds = %14
  store i32 1, ptr %7, align 4
  br label %18

18:                                               ; preds = %53, %17
  %19 = load i32, ptr %7, align 4
  %20 = icmp slt i32 %19, 256
  br i1 %20, label %21, label %56

21:                                               ; preds = %18
  %22 = load i32, ptr %7, align 4
  %23 = sub i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %24
  %26 = load float, ptr %25, align 4
  %27 = fsub float 1.000000e+00, %26
  %28 = load i32, ptr %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %29
  store float %27, ptr %30, align 4
  %31 = load i32, ptr %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %32
  %34 = load float, ptr %33, align 4
  %35 = load i32, ptr %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %36
  %38 = load i32, ptr %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [256 x float], ptr %37, i64 0, i64 %39
  %41 = load float, ptr %40, align 4
  %42 = load i32, ptr %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %43
  %45 = load float, ptr %44, align 4
  %46 = call float @llvm.fmuladd.f32(float %41, float %45, float %34)
  %47 = load i32, ptr %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [256 x [256 x float]], ptr @cc, i64 0, i64 %48
  %50 = load i32, ptr %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [256 x float], ptr %49, i64 0, i64 %51
  store float %46, ptr %52, align 4
  br label %53

53:                                               ; preds = %21
  %54 = load i32, ptr %7, align 4
  %55 = add i32 %54, 1
  store i32 %55, ptr %7, align 4
  br label %18, !llvm.loop !186

56:                                               ; preds = %18
  br label %57

57:                                               ; preds = %56
  %58 = load i32, ptr %6, align 4
  %59 = add i32 %58, 1
  store i32 %59, ptr %6, align 4
  br label %14, !llvm.loop !187

60:                                               ; preds = %14
  %61 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %62

62:                                               ; preds = %60
  %63 = load i32, ptr %5, align 4
  %64 = add i32 %63, 1
  store i32 %64, ptr %5, align 4
  br label %10, !llvm.loop !188

65:                                               ; preds = %10
  %66 = call i32 @clock()
  store i32 %66, ptr %2, align 4
  %67 = load i32, ptr %2, align 4
  %68 = load i32, ptr %1, align 4
  %69 = sub i32 %67, %68
  store i32 %69, ptr %3, align 4
  %70 = load i32, ptr %3, align 4
  %71 = sitofp i32 %70 to double
  %72 = fdiv double %71, 1.000000e+06
  store double %72, ptr %4, align 8
  %73 = load double, ptr %4, align 8
  %74 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@CPEPHMHI@S256?7?5?$CF?42f?5?7?7?$AA@", double noundef %73)
  call void @check(i32 noundef 111)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s257() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = call i32 @init(ptr noundef @"??_C@_05GLDPBFPB@s257?5?$AA@")
  %9 = call i32 @clock()
  store i32 %9, ptr %1, align 4
  store i32 0, ptr %5, align 4
  br label %10

10:                                               ; preds = %65, %0
  %11 = load i32, ptr %5, align 4
  %12 = icmp slt i32 %11, 10
  br i1 %12, label %13, label %68

13:                                               ; preds = %10
  store i32 1, ptr %6, align 4
  br label %14

14:                                               ; preds = %60, %13
  %15 = load i32, ptr %6, align 4
  %16 = icmp slt i32 %15, 256
  br i1 %16, label %17, label %63

17:                                               ; preds = %14
  store i32 0, ptr %7, align 4
  br label %18

18:                                               ; preds = %56, %17
  %19 = load i32, ptr %7, align 4
  %20 = icmp slt i32 %19, 256
  br i1 %20, label %21, label %59

21:                                               ; preds = %18
  %22 = load i32, ptr %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %23
  %25 = load i32, ptr %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [256 x float], ptr %24, i64 0, i64 %26
  %28 = load float, ptr %27, align 4
  %29 = load i32, ptr %6, align 4
  %30 = sub i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %31
  %33 = load float, ptr %32, align 4
  %34 = fsub float %28, %33
  %35 = load i32, ptr %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %36
  store float %34, ptr %37, align 4
  %38 = load i32, ptr %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %39
  %41 = load float, ptr %40, align 4
  %42 = load i32, ptr %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %43
  %45 = load i32, ptr %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [256 x float], ptr %44, i64 0, i64 %46
  %48 = load float, ptr %47, align 4
  %49 = fadd float %41, %48
  %50 = load i32, ptr %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %51
  %53 = load i32, ptr %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [256 x float], ptr %52, i64 0, i64 %54
  store float %49, ptr %55, align 4
  br label %56

56:                                               ; preds = %21
  %57 = load i32, ptr %7, align 4
  %58 = add i32 %57, 1
  store i32 %58, ptr %7, align 4
  br label %18, !llvm.loop !189

59:                                               ; preds = %18
  br label %60

60:                                               ; preds = %59
  %61 = load i32, ptr %6, align 4
  %62 = add i32 %61, 1
  store i32 %62, ptr %6, align 4
  br label %14, !llvm.loop !190

63:                                               ; preds = %14
  %64 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %65

65:                                               ; preds = %63
  %66 = load i32, ptr %5, align 4
  %67 = add i32 %66, 1
  store i32 %67, ptr %5, align 4
  br label %10, !llvm.loop !191

68:                                               ; preds = %10
  %69 = call i32 @clock()
  store i32 %69, ptr %2, align 4
  %70 = load i32, ptr %2, align 4
  %71 = load i32, ptr %1, align 4
  %72 = sub i32 %70, %71
  store i32 %72, ptr %3, align 4
  %73 = load i32, ptr %3, align 4
  %74 = sitofp i32 %73 to double
  %75 = fdiv double %74, 1.000000e+06
  store double %75, ptr %4, align 8
  %76 = load double, ptr %4, align 8
  %77 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@OOMBKDLI@S257?7?5?$CF?42f?5?7?7?$AA@", double noundef %76)
  call void @check(i32 noundef 111)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s258() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = call i32 @init(ptr noundef @"??_C@_05GAGDFCMM@s258?5?$AA@")
  %9 = call i32 @clock()
  store i32 %9, ptr %1, align 4
  store i32 0, ptr %6, align 4
  br label %10

10:                                               ; preds = %63, %0
  %11 = load i32, ptr %6, align 4
  %12 = icmp slt i32 %11, 256
  br i1 %12, label %13, label %66

13:                                               ; preds = %10
  store float 0.000000e+00, ptr %5, align 4
  store i32 0, ptr %7, align 4
  br label %14

14:                                               ; preds = %58, %13
  %15 = load i32, ptr %7, align 4
  %16 = icmp slt i32 %15, 256
  br i1 %16, label %17, label %61

17:                                               ; preds = %14
  %18 = load i32, ptr %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %19
  %21 = load float, ptr %20, align 4
  %22 = fpext float %21 to double
  %23 = fcmp ogt double %22, 0.000000e+00
  br i1 %23, label %24, label %34

24:                                               ; preds = %17
  %25 = load i32, ptr %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %26
  %28 = load float, ptr %27, align 4
  %29 = load i32, ptr %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %30
  %32 = load float, ptr %31, align 4
  %33 = fmul float %28, %32
  store float %33, ptr %5, align 4
  br label %34

34:                                               ; preds = %24, %17
  %35 = load float, ptr %5, align 4
  %36 = load i32, ptr %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %37
  %39 = load float, ptr %38, align 4
  %40 = load i32, ptr %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %41
  %43 = load float, ptr %42, align 4
  %44 = call float @llvm.fmuladd.f32(float %35, float %39, float %43)
  %45 = load i32, ptr %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %46
  store float %44, ptr %47, align 4
  %48 = load float, ptr %5, align 4
  %49 = fadd float %48, 1.000000e+00
  %50 = load i32, ptr %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [256 x float], ptr @aa, i64 0, i64 %51
  %53 = load float, ptr %52, align 4
  %54 = fmul float %49, %53
  %55 = load i32, ptr %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %56
  store float %54, ptr %57, align 4
  br label %58

58:                                               ; preds = %34
  %59 = load i32, ptr %7, align 4
  %60 = add i32 %59, 1
  store i32 %60, ptr %7, align 4
  br label %14, !llvm.loop !192

61:                                               ; preds = %14
  %62 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %63

63:                                               ; preds = %61
  %64 = load i32, ptr %6, align 4
  %65 = add i32 %64, 1
  store i32 %65, ptr %6, align 4
  br label %10, !llvm.loop !193

66:                                               ; preds = %10
  %67 = call i32 @clock()
  store i32 %67, ptr %2, align 4
  %68 = load i32, ptr %2, align 4
  %69 = load i32, ptr %1, align 4
  %70 = sub i32 %68, %69
  store i32 %70, ptr %3, align 4
  %71 = load i32, ptr %3, align 4
  %72 = sitofp i32 %71 to double
  %73 = fdiv double %72, 1.000000e+06
  store double %73, ptr %4, align 8
  %74 = load double, ptr %4, align 8
  %75 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@HNDJFHHO@S258?7?5?$CF?42f?5?7?7?$AA@", double noundef %74)
  call void @check(i32 noundef 25)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s261() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = call i32 @init(ptr noundef @"??_C@_05HNAHMGKN@s261?5?$AA@")
  %9 = call i32 @clock()
  store i32 %9, ptr %1, align 4
  store i32 0, ptr %6, align 4
  br label %10

10:                                               ; preds = %55, %0
  %11 = load i32, ptr %6, align 4
  %12 = icmp slt i32 %11, 256
  br i1 %12, label %13, label %58

13:                                               ; preds = %10
  store i32 1, ptr %7, align 4
  br label %14

14:                                               ; preds = %50, %13
  %15 = load i32, ptr %7, align 4
  %16 = icmp slt i32 %15, 32000
  br i1 %16, label %17, label %53

17:                                               ; preds = %14
  %18 = load i32, ptr %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %19
  %21 = load float, ptr %20, align 4
  %22 = load i32, ptr %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %23
  %25 = load float, ptr %24, align 4
  %26 = fadd float %21, %25
  store float %26, ptr %5, align 4
  %27 = load float, ptr %5, align 4
  %28 = load i32, ptr %7, align 4
  %29 = sub i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %30
  %32 = load float, ptr %31, align 4
  %33 = fadd float %27, %32
  %34 = load i32, ptr %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %35
  store float %33, ptr %36, align 4
  %37 = load i32, ptr %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %38
  %40 = load float, ptr %39, align 4
  %41 = load i32, ptr %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %42
  %44 = load float, ptr %43, align 4
  %45 = fmul float %40, %44
  store float %45, ptr %5, align 4
  %46 = load float, ptr %5, align 4
  %47 = load i32, ptr %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %48
  store float %46, ptr %49, align 4
  br label %50

50:                                               ; preds = %17
  %51 = load i32, ptr %7, align 4
  %52 = add i32 %51, 1
  store i32 %52, ptr %7, align 4
  br label %14, !llvm.loop !194

53:                                               ; preds = %14
  %54 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %55

55:                                               ; preds = %53
  %56 = load i32, ptr %6, align 4
  %57 = add i32 %56, 1
  store i32 %57, ptr %6, align 4
  br label %10, !llvm.loop !195

58:                                               ; preds = %10
  %59 = call i32 @clock()
  store i32 %59, ptr %2, align 4
  %60 = load i32, ptr %2, align 4
  %61 = load i32, ptr %1, align 4
  %62 = sub i32 %60, %61
  store i32 %62, ptr %3, align 4
  %63 = load i32, ptr %3, align 4
  %64 = sitofp i32 %63 to double
  %65 = fdiv double %64, 1.000000e+06
  store double %65, ptr %4, align 8
  %66 = load double, ptr %4, align 8
  %67 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@HBOKLLAL@S261?7?5?$CF?42f?5?7?7?$AA@", double noundef %66)
  call void @check(i32 noundef 13)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s271() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 @init(ptr noundef @"??_C@_05MFLLKBMI@s271?5?$AA@")
  %8 = call i32 @clock()
  store i32 %8, ptr %1, align 4
  store i32 0, ptr %5, align 4
  br label %9

9:                                                ; preds = %42, %0
  %10 = load i32, ptr %5, align 4
  %11 = icmp slt i32 %10, 1024
  br i1 %11, label %12, label %45

12:                                               ; preds = %9
  store i32 0, ptr %6, align 4
  br label %13

13:                                               ; preds = %37, %12
  %14 = load i32, ptr %6, align 4
  %15 = icmp slt i32 %14, 32000
  br i1 %15, label %16, label %40

16:                                               ; preds = %13
  %17 = load i32, ptr %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %18
  %20 = load float, ptr %19, align 4
  %21 = fcmp ogt float %20, 0.000000e+00
  br i1 %21, label %22, label %36

22:                                               ; preds = %16
  %23 = load i32, ptr %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %24
  %26 = load float, ptr %25, align 4
  %27 = load i32, ptr %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %28
  %30 = load float, ptr %29, align 4
  %31 = load i32, ptr %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %32
  %34 = load float, ptr %33, align 4
  %35 = call float @llvm.fmuladd.f32(float %26, float %30, float %34)
  store float %35, ptr %33, align 4
  br label %36

36:                                               ; preds = %22, %16
  br label %37

37:                                               ; preds = %36
  %38 = load i32, ptr %6, align 4
  %39 = add i32 %38, 1
  store i32 %39, ptr %6, align 4
  br label %13, !llvm.loop !196

40:                                               ; preds = %13
  %41 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %42

42:                                               ; preds = %40
  %43 = load i32, ptr %5, align 4
  %44 = add i32 %43, 1
  store i32 %44, ptr %5, align 4
  br label %9, !llvm.loop !197

45:                                               ; preds = %9
  %46 = call i32 @clock()
  store i32 %46, ptr %2, align 4
  %47 = load i32, ptr %2, align 4
  %48 = load i32, ptr %1, align 4
  %49 = sub i32 %47, %48
  store i32 %49, ptr %3, align 4
  %50 = load i32, ptr %3, align 4
  %51 = sitofp i32 %50 to double
  %52 = fdiv double %51, 1.000000e+06
  store double %52, ptr %4, align 8
  %53 = load double, ptr %4, align 8
  %54 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@OKEPPHGE@S271?7?5?$CF?42f?5?7?7?$AA@", double noundef %53)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s272(float noundef %0) #7 {
  %2 = alloca float, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store float %0, ptr %2, align 4
  %9 = call i32 @init(ptr noundef @"??_C@_05MHPNBPJB@s272?5?$AA@")
  %10 = call i32 @clock()
  store i32 %10, ptr %3, align 4
  store i32 0, ptr %7, align 4
  br label %11

11:                                               ; preds = %58, %1
  %12 = load i32, ptr %7, align 4
  %13 = icmp slt i32 %12, 256
  br i1 %13, label %14, label %61

14:                                               ; preds = %11
  store i32 0, ptr %8, align 4
  br label %15

15:                                               ; preds = %53, %14
  %16 = load i32, ptr %8, align 4
  %17 = icmp slt i32 %16, 32000
  br i1 %17, label %18, label %56

18:                                               ; preds = %15
  %19 = load i32, ptr %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %20
  %22 = load float, ptr %21, align 4
  %23 = load float, ptr %2, align 4
  %24 = fcmp oge float %22, %23
  br i1 %24, label %25, label %52

25:                                               ; preds = %18
  %26 = load i32, ptr %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %27
  %29 = load float, ptr %28, align 4
  %30 = load i32, ptr %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %31
  %33 = load float, ptr %32, align 4
  %34 = load i32, ptr %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %35
  %37 = load float, ptr %36, align 4
  %38 = call float @llvm.fmuladd.f32(float %29, float %33, float %37)
  store float %38, ptr %36, align 4
  %39 = load i32, ptr %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %40
  %42 = load float, ptr %41, align 4
  %43 = load i32, ptr %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %44
  %46 = load float, ptr %45, align 4
  %47 = load i32, ptr %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %48
  %50 = load float, ptr %49, align 4
  %51 = call float @llvm.fmuladd.f32(float %42, float %46, float %50)
  store float %51, ptr %49, align 4
  br label %52

52:                                               ; preds = %25, %18
  br label %53

53:                                               ; preds = %52
  %54 = load i32, ptr %8, align 4
  %55 = add i32 %54, 1
  store i32 %55, ptr %8, align 4
  br label %15, !llvm.loop !198

56:                                               ; preds = %15
  %57 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %58

58:                                               ; preds = %56
  %59 = load i32, ptr %7, align 4
  %60 = add i32 %59, 1
  store i32 %60, ptr %7, align 4
  br label %11, !llvm.loop !199

61:                                               ; preds = %11
  %62 = call i32 @clock()
  store i32 %62, ptr %4, align 4
  %63 = load i32, ptr %4, align 4
  %64 = load i32, ptr %3, align 4
  %65 = sub i32 %63, %64
  store i32 %65, ptr %5, align 4
  %66 = load i32, ptr %5, align 4
  %67 = sitofp i32 %66 to double
  %68 = fdiv double %67, 1.000000e+06
  store double %68, ptr %6, align 8
  %69 = load double, ptr %6, align 8
  %70 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@HDKNJBGF@S272?7?5?$CF?42f?5?7?7?$AA@", double noundef %69)
  call void @check(i32 noundef 12)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s273() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 @init(ptr noundef @"??_C@_05MGDPHFKG@s273?5?$AA@")
  %8 = call i32 @clock()
  store i32 %8, ptr %1, align 4
  store i32 0, ptr %5, align 4
  br label %9

9:                                                ; preds = %68, %0
  %10 = load i32, ptr %5, align 4
  %11 = icmp slt i32 %10, 256
  br i1 %11, label %12, label %71

12:                                               ; preds = %9
  store i32 0, ptr %6, align 4
  br label %13

13:                                               ; preds = %63, %12
  %14 = load i32, ptr %6, align 4
  %15 = icmp slt i32 %14, 32000
  br i1 %15, label %16, label %66

16:                                               ; preds = %13
  %17 = load i32, ptr %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %18
  %20 = load float, ptr %19, align 4
  %21 = load i32, ptr %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %22
  %24 = load float, ptr %23, align 4
  %25 = load i32, ptr %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %26
  %28 = load float, ptr %27, align 4
  %29 = call float @llvm.fmuladd.f32(float %20, float %24, float %28)
  store float %29, ptr %27, align 4
  %30 = load i32, ptr %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %31
  %33 = load float, ptr %32, align 4
  %34 = fcmp olt float %33, 0.000000e+00
  br i1 %34, label %35, label %49

35:                                               ; preds = %16
  %36 = load i32, ptr %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %37
  %39 = load float, ptr %38, align 4
  %40 = load i32, ptr %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %41
  %43 = load float, ptr %42, align 4
  %44 = load i32, ptr %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %45
  %47 = load float, ptr %46, align 4
  %48 = call float @llvm.fmuladd.f32(float %39, float %43, float %47)
  store float %48, ptr %46, align 4
  br label %49

49:                                               ; preds = %35, %16
  %50 = load i32, ptr %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %51
  %53 = load float, ptr %52, align 4
  %54 = load i32, ptr %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %55
  %57 = load float, ptr %56, align 4
  %58 = load i32, ptr %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %59
  %61 = load float, ptr %60, align 4
  %62 = call float @llvm.fmuladd.f32(float %53, float %57, float %61)
  store float %62, ptr %60, align 4
  br label %63

63:                                               ; preds = %49
  %64 = load i32, ptr %6, align 4
  %65 = add i32 %64, 1
  store i32 %65, ptr %6, align 4
  br label %13, !llvm.loop !200

66:                                               ; preds = %13
  %67 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %68

68:                                               ; preds = %66
  %69 = load i32, ptr %5, align 4
  %70 = add i32 %69, 1
  store i32 %70, ptr %5, align 4
  br label %9, !llvm.loop !201

71:                                               ; preds = %9
  %72 = call i32 @clock()
  store i32 %72, ptr %2, align 4
  %73 = load i32, ptr %2, align 4
  %74 = load i32, ptr %1, align 4
  %75 = sub i32 %73, %74
  store i32 %75, ptr %3, align 4
  %76 = load i32, ptr %3, align 4
  %77 = sitofp i32 %76 to double
  %78 = fdiv double %77, 1.000000e+06
  store double %78, ptr %4, align 8
  %79 = load double, ptr %4, align 8
  %80 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@LCCDEOKF@S273?7?5?$CF?42f?5?7?7?$AA@", double noundef %79)
  call void @check(i32 noundef 123)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s274() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 @init(ptr noundef @"??_C@_05MDHAGDCD@s274?5?$AA@")
  %8 = call i32 @clock()
  store i32 %8, ptr %1, align 4
  store i32 0, ptr %5, align 4
  br label %9

9:                                                ; preds = %70, %0
  %10 = load i32, ptr %5, align 4
  %11 = icmp slt i32 %10, 256
  br i1 %11, label %12, label %73

12:                                               ; preds = %9
  store i32 0, ptr %6, align 4
  br label %13

13:                                               ; preds = %65, %12
  %14 = load i32, ptr %6, align 4
  %15 = icmp slt i32 %14, 32000
  br i1 %15, label %16, label %68

16:                                               ; preds = %13
  %17 = load i32, ptr %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %18
  %20 = load float, ptr %19, align 4
  %21 = load i32, ptr %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %22
  %24 = load float, ptr %23, align 4
  %25 = load i32, ptr %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %26
  %28 = load float, ptr %27, align 4
  %29 = call float @llvm.fmuladd.f32(float %24, float %28, float %20)
  %30 = load i32, ptr %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %31
  store float %29, ptr %32, align 4
  %33 = load i32, ptr %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %34
  %36 = load float, ptr %35, align 4
  %37 = fcmp ogt float %36, 0.000000e+00
  br i1 %37, label %38, label %51

38:                                               ; preds = %16
  %39 = load i32, ptr %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %40
  %42 = load float, ptr %41, align 4
  %43 = load i32, ptr %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %44
  %46 = load float, ptr %45, align 4
  %47 = fadd float %42, %46
  %48 = load i32, ptr %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %49
  store float %47, ptr %50, align 4
  br label %64

51:                                               ; preds = %16
  %52 = load i32, ptr %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %53
  %55 = load float, ptr %54, align 4
  %56 = load i32, ptr %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %57
  %59 = load float, ptr %58, align 4
  %60 = fmul float %55, %59
  %61 = load i32, ptr %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %62
  store float %60, ptr %63, align 4
  br label %64

64:                                               ; preds = %51, %38
  br label %65

65:                                               ; preds = %64
  %66 = load i32, ptr %6, align 4
  %67 = add i32 %66, 1
  store i32 %67, ptr %6, align 4
  br label %13, !llvm.loop !202

68:                                               ; preds = %13
  %69 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %70

70:                                               ; preds = %68
  %71 = load i32, ptr %5, align 4
  %72 = add i32 %71, 1
  store i32 %72, ptr %5, align 4
  br label %9, !llvm.loop !203

73:                                               ; preds = %9
  %74 = call i32 @clock()
  store i32 %74, ptr %2, align 4
  %75 = load i32, ptr %2, align 4
  %76 = load i32, ptr %1, align 4
  %77 = sub i32 %75, %76
  store i32 %77, ptr %3, align 4
  %78 = load i32, ptr %3, align 4
  %79 = sitofp i32 %78 to double
  %80 = fdiv double %79, 1.000000e+06
  store double %80, ptr %4, align 8
  %81 = load double, ptr %4, align 8
  %82 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@JLBIFLCG@S274?7?5?$CF?42f?5?7?7?$AA@", double noundef %81)
  call void @check(i32 noundef 12)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s275() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = call i32 @init(ptr noundef @"??_C@_05MCLCAJBE@s275?5?$AA@")
  %9 = call i32 @clock()
  store i32 %9, ptr %1, align 4
  store i32 0, ptr %5, align 4
  br label %10

10:                                               ; preds = %67, %0
  %11 = load i32, ptr %5, align 4
  %12 = icmp slt i32 %11, 10
  br i1 %12, label %13, label %70

13:                                               ; preds = %10
  store i32 0, ptr %6, align 4
  br label %14

14:                                               ; preds = %62, %13
  %15 = load i32, ptr %6, align 4
  %16 = icmp slt i32 %15, 256
  br i1 %16, label %17, label %65

17:                                               ; preds = %14
  %18 = load i32, ptr %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [256 x float], ptr @aa, i64 0, i64 %19
  %21 = load float, ptr %20, align 4
  %22 = fcmp ogt float %21, 0.000000e+00
  br i1 %22, label %23, label %61

23:                                               ; preds = %17
  store i32 1, ptr %7, align 4
  br label %24

24:                                               ; preds = %57, %23
  %25 = load i32, ptr %7, align 4
  %26 = icmp slt i32 %25, 256
  br i1 %26, label %27, label %60

27:                                               ; preds = %24
  %28 = load i32, ptr %7, align 4
  %29 = sub i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %30
  %32 = load i32, ptr %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [256 x float], ptr %31, i64 0, i64 %33
  %35 = load float, ptr %34, align 4
  %36 = load i32, ptr %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %37
  %39 = load i32, ptr %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [256 x float], ptr %38, i64 0, i64 %40
  %42 = load float, ptr %41, align 4
  %43 = load i32, ptr %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [256 x [256 x float]], ptr @cc, i64 0, i64 %44
  %46 = load i32, ptr %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [256 x float], ptr %45, i64 0, i64 %47
  %49 = load float, ptr %48, align 4
  %50 = call float @llvm.fmuladd.f32(float %42, float %49, float %35)
  %51 = load i32, ptr %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %52
  %54 = load i32, ptr %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [256 x float], ptr %53, i64 0, i64 %55
  store float %50, ptr %56, align 4
  br label %57

57:                                               ; preds = %27
  %58 = load i32, ptr %7, align 4
  %59 = add i32 %58, 1
  store i32 %59, ptr %7, align 4
  br label %24, !llvm.loop !204

60:                                               ; preds = %24
  br label %61

61:                                               ; preds = %60, %17
  br label %62

62:                                               ; preds = %61
  %63 = load i32, ptr %6, align 4
  %64 = add i32 %63, 1
  store i32 %64, ptr %6, align 4
  br label %14, !llvm.loop !205

65:                                               ; preds = %14
  %66 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %67

67:                                               ; preds = %65
  %68 = load i32, ptr %5, align 4
  %69 = add i32 %68, 1
  store i32 %69, ptr %5, align 4
  br label %10, !llvm.loop !206

70:                                               ; preds = %10
  %71 = call i32 @clock()
  store i32 %71, ptr %2, align 4
  %72 = load i32, ptr %2, align 4
  %73 = load i32, ptr %1, align 4
  %74 = sub i32 %72, %73
  store i32 %74, ptr %3, align 4
  %75 = load i32, ptr %3, align 4
  %76 = sitofp i32 %75 to double
  %77 = fdiv double %76, 1.000000e+06
  store double %77, ptr %4, align 8
  %78 = load double, ptr %4, align 8
  %79 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@FKJGIEOG@S275?7?5?$CF?42f?5?7?7?$AA@", double noundef %78)
  call void @check(i32 noundef 11)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s2275() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = call i32 @init(ptr noundef @"??_C@_05MCLCAJBE@s275?5?$AA@")
  %9 = call i32 @clock()
  store i32 %9, ptr %1, align 4
  store i32 0, ptr %5, align 4
  br label %10

10:                                               ; preds = %75, %0
  %11 = load i32, ptr %5, align 4
  %12 = icmp slt i32 %11, 100
  br i1 %12, label %13, label %78

13:                                               ; preds = %10
  store i32 0, ptr %6, align 4
  br label %14

14:                                               ; preds = %70, %13
  %15 = load i32, ptr %6, align 4
  %16 = icmp slt i32 %15, 256
  br i1 %16, label %17, label %73

17:                                               ; preds = %14
  store i32 0, ptr %7, align 4
  br label %18

18:                                               ; preds = %50, %17
  %19 = load i32, ptr %7, align 4
  %20 = icmp slt i32 %19, 256
  br i1 %20, label %21, label %53

21:                                               ; preds = %18
  %22 = load i32, ptr %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %23
  %25 = load i32, ptr %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [256 x float], ptr %24, i64 0, i64 %26
  %28 = load float, ptr %27, align 4
  %29 = load i32, ptr %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %30
  %32 = load i32, ptr %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [256 x float], ptr %31, i64 0, i64 %33
  %35 = load float, ptr %34, align 4
  %36 = load i32, ptr %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [256 x [256 x float]], ptr @cc, i64 0, i64 %37
  %39 = load i32, ptr %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [256 x float], ptr %38, i64 0, i64 %40
  %42 = load float, ptr %41, align 4
  %43 = call float @llvm.fmuladd.f32(float %35, float %42, float %28)
  %44 = load i32, ptr %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %45
  %47 = load i32, ptr %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [256 x float], ptr %46, i64 0, i64 %48
  store float %43, ptr %49, align 4
  br label %50

50:                                               ; preds = %21
  %51 = load i32, ptr %7, align 4
  %52 = add i32 %51, 1
  store i32 %52, ptr %7, align 4
  br label %18, !llvm.loop !207

53:                                               ; preds = %18
  %54 = load i32, ptr %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %55
  %57 = load float, ptr %56, align 4
  %58 = load i32, ptr %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %59
  %61 = load float, ptr %60, align 4
  %62 = load i32, ptr %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %63
  %65 = load float, ptr %64, align 4
  %66 = call float @llvm.fmuladd.f32(float %61, float %65, float %57)
  %67 = load i32, ptr %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %68
  store float %66, ptr %69, align 4
  br label %70

70:                                               ; preds = %53
  %71 = load i32, ptr %6, align 4
  %72 = add i32 %71, 1
  store i32 %72, ptr %6, align 4
  br label %14, !llvm.loop !208

73:                                               ; preds = %14
  %74 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %75

75:                                               ; preds = %73
  %76 = load i32, ptr %5, align 4
  %77 = add i32 %76, 1
  store i32 %77, ptr %5, align 4
  br label %10, !llvm.loop !209

78:                                               ; preds = %10
  %79 = call i32 @clock()
  store i32 %79, ptr %2, align 4
  %80 = load i32, ptr %2, align 4
  %81 = load i32, ptr %1, align 4
  %82 = sub i32 %80, %81
  store i32 %82, ptr %3, align 4
  %83 = load i32, ptr %3, align 4
  %84 = sitofp i32 %83 to double
  %85 = fdiv double %84, 1.000000e+06
  store double %85, ptr %4, align 8
  %86 = load double, ptr %4, align 8
  %87 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@NCMIBONC@S2275?7?5?$CF?42f?5?7?7?$AA@", double noundef %86)
  call void @check(i32 noundef 11)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s276() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = call i32 @init(ptr noundef @"??_C@_05MAPELHEN@s276?5?$AA@")
  %9 = call i32 @clock()
  store i32 %9, ptr %1, align 4
  store i32 16000, ptr %5, align 4
  store i32 0, ptr %6, align 4
  br label %10

10:                                               ; preds = %56, %0
  %11 = load i32, ptr %6, align 4
  %12 = icmp slt i32 %11, 1024
  br i1 %12, label %13, label %59

13:                                               ; preds = %10
  store i32 0, ptr %7, align 4
  br label %14

14:                                               ; preds = %51, %13
  %15 = load i32, ptr %7, align 4
  %16 = icmp slt i32 %15, 32000
  br i1 %16, label %17, label %54

17:                                               ; preds = %14
  %18 = load i32, ptr %7, align 4
  %19 = add i32 %18, 1
  %20 = load i32, ptr %5, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %17
  %23 = load i32, ptr %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %24
  %26 = load float, ptr %25, align 4
  %27 = load i32, ptr %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %28
  %30 = load float, ptr %29, align 4
  %31 = load i32, ptr %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %32
  %34 = load float, ptr %33, align 4
  %35 = call float @llvm.fmuladd.f32(float %26, float %30, float %34)
  store float %35, ptr %33, align 4
  br label %50

36:                                               ; preds = %17
  %37 = load i32, ptr %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %38
  %40 = load float, ptr %39, align 4
  %41 = load i32, ptr %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %42
  %44 = load float, ptr %43, align 4
  %45 = load i32, ptr %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %46
  %48 = load float, ptr %47, align 4
  %49 = call float @llvm.fmuladd.f32(float %40, float %44, float %48)
  store float %49, ptr %47, align 4
  br label %50

50:                                               ; preds = %36, %22
  br label %51

51:                                               ; preds = %50
  %52 = load i32, ptr %7, align 4
  %53 = add i32 %52, 1
  store i32 %53, ptr %7, align 4
  br label %14, !llvm.loop !210

54:                                               ; preds = %14
  %55 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %56

56:                                               ; preds = %54
  %57 = load i32, ptr %6, align 4
  %58 = add i32 %57, 1
  store i32 %58, ptr %6, align 4
  br label %10, !llvm.loop !211

59:                                               ; preds = %10
  %60 = call i32 @clock()
  store i32 %60, ptr %2, align 4
  %61 = load i32, ptr %2, align 4
  %62 = load i32, ptr %1, align 4
  %63 = sub i32 %61, %62
  store i32 %63, ptr %3, align 4
  %64 = load i32, ptr %3, align 4
  %65 = sitofp i32 %64 to double
  %66 = fdiv double %65, 1.000000e+06
  store double %66, ptr %4, align 8
  %67 = load double, ptr %4, align 8
  %68 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@MDHEOCOH@S276?7?5?$CF?42f?5?7?7?$AA@", double noundef %67)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s277() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 @init(ptr noundef @"??_C@_05MBDGNNHK@s277?5?$AA@")
  %8 = call i32 @clock()
  store i32 %8, ptr %1, align 4
  store i32 0, ptr %5, align 4
  br label %9

9:                                                ; preds = %68, %0
  %10 = load i32, ptr %5, align 4
  %11 = icmp slt i32 %10, 256
  br i1 %11, label %12, label %71

12:                                               ; preds = %9
  store i32 0, ptr %6, align 4
  br label %13

13:                                               ; preds = %63, %12
  %14 = load i32, ptr %6, align 4
  %15 = icmp slt i32 %14, 31999
  br i1 %15, label %16, label %66

16:                                               ; preds = %13
  %17 = load i32, ptr %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %18
  %20 = load float, ptr %19, align 4
  %21 = fcmp oge float %20, 0.000000e+00
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %62

23:                                               ; preds = %16
  %24 = load i32, ptr %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %25
  %27 = load float, ptr %26, align 4
  %28 = fcmp oge float %27, 0.000000e+00
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %44

30:                                               ; preds = %23
  %31 = load i32, ptr %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %32
  %34 = load float, ptr %33, align 4
  %35 = load i32, ptr %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %36
  %38 = load float, ptr %37, align 4
  %39 = load i32, ptr %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %40
  %42 = load float, ptr %41, align 4
  %43 = call float @llvm.fmuladd.f32(float %34, float %38, float %42)
  store float %43, ptr %41, align 4
  br label %44

44:                                               ; preds = %30, %29
  %45 = load i32, ptr %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %46
  %48 = load float, ptr %47, align 4
  %49 = load i32, ptr %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %50
  %52 = load float, ptr %51, align 4
  %53 = load i32, ptr %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %54
  %56 = load float, ptr %55, align 4
  %57 = call float @llvm.fmuladd.f32(float %52, float %56, float %48)
  %58 = load i32, ptr %6, align 4
  %59 = add i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %60
  store float %57, ptr %61, align 4
  br label %62

62:                                               ; preds = %44, %22
  br label %63

63:                                               ; preds = %62
  %64 = load i32, ptr %6, align 4
  %65 = add i32 %64, 1
  store i32 %65, ptr %6, align 4
  br label %13, !llvm.loop !212

66:                                               ; preds = %13
  %67 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %68

68:                                               ; preds = %66
  %69 = load i32, ptr %5, align 4
  %70 = add i32 %69, 1
  store i32 %70, ptr %5, align 4
  br label %9, !llvm.loop !213

71:                                               ; preds = %9
  %72 = call i32 @clock()
  store i32 %72, ptr %2, align 4
  %73 = load i32, ptr %2, align 4
  %74 = load i32, ptr %1, align 4
  %75 = sub i32 %73, %74
  store i32 %75, ptr %3, align 4
  %76 = load i32, ptr %3, align 4
  %77 = sitofp i32 %76 to double
  %78 = fdiv double %77, 1.000000e+06
  store double %78, ptr %4, align 8
  %79 = load double, ptr %4, align 8
  %80 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@CPKDNCH@S277?7?5?$CF?42f?5?7?7?$AA@", double noundef %79)
  call void @check(i32 noundef 12)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s278() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 @init(ptr noundef @"??_C@_05MKGKJKEH@s278?5?$AA@")
  %8 = call i32 @clock()
  store i32 %8, ptr %1, align 4
  store i32 0, ptr %5, align 4
  br label %9

9:                                                ; preds = %81, %0
  %10 = load i32, ptr %5, align 4
  %11 = icmp slt i32 %10, 256
  br i1 %11, label %12, label %84

12:                                               ; preds = %9
  store i32 0, ptr %6, align 4
  br label %13

13:                                               ; preds = %76, %12
  %14 = load i32, ptr %6, align 4
  %15 = icmp slt i32 %14, 32000
  br i1 %15, label %16, label %79

16:                                               ; preds = %13
  %17 = load i32, ptr %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %18
  %20 = load float, ptr %19, align 4
  %21 = fcmp ogt float %20, 0.000000e+00
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %41

23:                                               ; preds = %16
  %24 = load i32, ptr %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %25
  %27 = load float, ptr %26, align 4
  %28 = fneg float %27
  %29 = load i32, ptr %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %30
  %32 = load float, ptr %31, align 4
  %33 = load i32, ptr %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %34
  %36 = load float, ptr %35, align 4
  %37 = call float @llvm.fmuladd.f32(float %32, float %36, float %28)
  %38 = load i32, ptr %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %39
  store float %37, ptr %40, align 4
  br label %59

41:                                               ; preds = %22
  %42 = load i32, ptr %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %43
  %45 = load float, ptr %44, align 4
  %46 = fneg float %45
  %47 = load i32, ptr %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %48
  %50 = load float, ptr %49, align 4
  %51 = load i32, ptr %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %52
  %54 = load float, ptr %53, align 4
  %55 = call float @llvm.fmuladd.f32(float %50, float %54, float %46)
  %56 = load i32, ptr %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %57
  store float %55, ptr %58, align 4
  br label %59

59:                                               ; preds = %41, %23
  %60 = load i32, ptr %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %61
  %63 = load float, ptr %62, align 4
  %64 = load i32, ptr %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %65
  %67 = load float, ptr %66, align 4
  %68 = load i32, ptr %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %69
  %71 = load float, ptr %70, align 4
  %72 = call float @llvm.fmuladd.f32(float %67, float %71, float %63)
  %73 = load i32, ptr %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %74
  store float %72, ptr %75, align 4
  br label %76

76:                                               ; preds = %59
  %77 = load i32, ptr %6, align 4
  %78 = add i32 %77, 1
  store i32 %78, ptr %6, align 4
  br label %13, !llvm.loop !214

79:                                               ; preds = %13
  %80 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %81

81:                                               ; preds = %79
  %82 = load i32, ptr %5, align 4
  %83 = add i32 %82, 1
  store i32 %83, ptr %5, align 4
  br label %9, !llvm.loop !215

84:                                               ; preds = %9
  %85 = call i32 @clock()
  store i32 %85, ptr %2, align 4
  %86 = load i32, ptr %2, align 4
  %87 = load i32, ptr %1, align 4
  %88 = sub i32 %86, %87
  store i32 %88, ptr %3, align 4
  %89 = load i32, ptr %3, align 4
  %90 = sitofp i32 %89 to double
  %91 = fdiv double %90, 1.000000e+06
  store double %91, ptr %4, align 8
  %92 = load double, ptr %4, align 8
  %93 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@JBACMJOB@S278?7?5?$CF?42f?5?7?7?$AA@", double noundef %92)
  call void @check(i32 noundef 123)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s279() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 @init(ptr noundef @"??_C@_05MLKIPAHA@s279?5?$AA@")
  %8 = call i32 @clock()
  store i32 %8, ptr %1, align 4
  store i32 0, ptr %5, align 4
  br label %9

9:                                                ; preds = %105, %0
  %10 = load i32, ptr %5, align 4
  %11 = icmp slt i32 %10, 128
  br i1 %11, label %12, label %108

12:                                               ; preds = %9
  store i32 0, ptr %6, align 4
  br label %13

13:                                               ; preds = %100, %12
  %14 = load i32, ptr %6, align 4
  %15 = icmp slt i32 %14, 32000
  br i1 %15, label %16, label %103

16:                                               ; preds = %13
  %17 = load i32, ptr %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %18
  %20 = load float, ptr %19, align 4
  %21 = fcmp ogt float %20, 0.000000e+00
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %65

23:                                               ; preds = %16
  %24 = load i32, ptr %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %25
  %27 = load float, ptr %26, align 4
  %28 = fneg float %27
  %29 = load i32, ptr %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %30
  %32 = load float, ptr %31, align 4
  %33 = load i32, ptr %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %34
  %36 = load float, ptr %35, align 4
  %37 = call float @llvm.fmuladd.f32(float %32, float %36, float %28)
  %38 = load i32, ptr %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %39
  store float %37, ptr %40, align 4
  %41 = load i32, ptr %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %42
  %44 = load float, ptr %43, align 4
  %45 = load i32, ptr %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %46
  %48 = load float, ptr %47, align 4
  %49 = fcmp ole float %44, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %23
  br label %83

51:                                               ; preds = %23
  %52 = load i32, ptr %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %53
  %55 = load float, ptr %54, align 4
  %56 = load i32, ptr %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %57
  %59 = load float, ptr %58, align 4
  %60 = load i32, ptr %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %61
  %63 = load float, ptr %62, align 4
  %64 = call float @llvm.fmuladd.f32(float %55, float %59, float %63)
  store float %64, ptr %62, align 4
  br label %83

65:                                               ; preds = %22
  %66 = load i32, ptr %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %67
  %69 = load float, ptr %68, align 4
  %70 = fneg float %69
  %71 = load i32, ptr %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %72
  %74 = load float, ptr %73, align 4
  %75 = load i32, ptr %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %76
  %78 = load float, ptr %77, align 4
  %79 = call float @llvm.fmuladd.f32(float %74, float %78, float %70)
  %80 = load i32, ptr %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %81
  store float %79, ptr %82, align 4
  br label %83

83:                                               ; preds = %65, %51, %50
  %84 = load i32, ptr %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %85
  %87 = load float, ptr %86, align 4
  %88 = load i32, ptr %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %89
  %91 = load float, ptr %90, align 4
  %92 = load i32, ptr %6, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %93
  %95 = load float, ptr %94, align 4
  %96 = call float @llvm.fmuladd.f32(float %91, float %95, float %87)
  %97 = load i32, ptr %6, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %98
  store float %96, ptr %99, align 4
  br label %100

100:                                              ; preds = %83
  %101 = load i32, ptr %6, align 4
  %102 = add i32 %101, 1
  store i32 %102, ptr %6, align 4
  br label %13, !llvm.loop !216

103:                                              ; preds = %13
  %104 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %105

105:                                              ; preds = %103
  %106 = load i32, ptr %5, align 4
  %107 = add i32 %106, 1
  store i32 %107, ptr %5, align 4
  br label %9, !llvm.loop !217

108:                                              ; preds = %9
  %109 = call i32 @clock()
  store i32 %109, ptr %2, align 4
  %110 = load i32, ptr %2, align 4
  %111 = load i32, ptr %1, align 4
  %112 = sub i32 %110, %111
  store i32 %112, ptr %3, align 4
  %113 = load i32, ptr %3, align 4
  %114 = sitofp i32 %113 to double
  %115 = fdiv double %114, 1.000000e+06
  store double %115, ptr %4, align 8
  %116 = load double, ptr %4, align 8
  %117 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@FAIMBGCB@S279?7?5?$CF?42f?5?7?7?$AA@", double noundef %116)
  call void @check(i32 noundef 123)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s1279() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 @init(ptr noundef @"??_C@_05MLKIPAHA@s279?5?$AA@")
  %8 = call i32 @clock()
  store i32 %8, ptr %1, align 4
  store i32 0, ptr %5, align 4
  br label %9

9:                                                ; preds = %53, %0
  %10 = load i32, ptr %5, align 4
  %11 = icmp slt i32 %10, 256
  br i1 %11, label %12, label %56

12:                                               ; preds = %9
  store i32 0, ptr %6, align 4
  br label %13

13:                                               ; preds = %48, %12
  %14 = load i32, ptr %6, align 4
  %15 = icmp slt i32 %14, 32000
  br i1 %15, label %16, label %51

16:                                               ; preds = %13
  %17 = load i32, ptr %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %18
  %20 = load float, ptr %19, align 4
  %21 = fcmp olt float %20, 0.000000e+00
  br i1 %21, label %22, label %47

22:                                               ; preds = %16
  %23 = load i32, ptr %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %24
  %26 = load float, ptr %25, align 4
  %27 = load i32, ptr %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %28
  %30 = load float, ptr %29, align 4
  %31 = fcmp ogt float %26, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %22
  %33 = load i32, ptr %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %34
  %36 = load float, ptr %35, align 4
  %37 = load i32, ptr %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %38
  %40 = load float, ptr %39, align 4
  %41 = load i32, ptr %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %42
  %44 = load float, ptr %43, align 4
  %45 = call float @llvm.fmuladd.f32(float %36, float %40, float %44)
  store float %45, ptr %43, align 4
  br label %46

46:                                               ; preds = %32, %22
  br label %47

47:                                               ; preds = %46, %16
  br label %48

48:                                               ; preds = %47
  %49 = load i32, ptr %6, align 4
  %50 = add i32 %49, 1
  store i32 %50, ptr %6, align 4
  br label %13, !llvm.loop !218

51:                                               ; preds = %13
  %52 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %53

53:                                               ; preds = %51
  %54 = load i32, ptr %5, align 4
  %55 = add i32 %54, 1
  store i32 %55, ptr %5, align 4
  br label %9, !llvm.loop !219

56:                                               ; preds = %9
  %57 = call i32 @clock()
  store i32 %57, ptr %2, align 4
  %58 = load i32, ptr %2, align 4
  %59 = load i32, ptr %1, align 4
  %60 = sub i32 %58, %59
  store i32 %60, ptr %3, align 4
  %61 = load i32, ptr %3, align 4
  %62 = sitofp i32 %61 to double
  %63 = fdiv double %62, 1.000000e+06
  store double %63, ptr %4, align 8
  %64 = load double, ptr %4, align 8
  %65 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@KELDKJMO@S1279?7?5?$CF?42f?5?7?7?$AA@", double noundef %64)
  call void @check(i32 noundef 123)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s2710(float noundef %0) #7 {
  %2 = alloca float, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store float %0, ptr %2, align 4
  %9 = call i32 @init(ptr noundef @"??_C@_05IPHJLDJJ@s2710?$AA@")
  %10 = call i32 @clock()
  store i32 %10, ptr %3, align 4
  store i32 0, ptr %7, align 4
  br label %11

11:                                               ; preds = %112, %1
  %12 = load i32, ptr %7, align 4
  %13 = icmp slt i32 %12, 128
  br i1 %13, label %14, label %115

14:                                               ; preds = %11
  store i32 0, ptr %8, align 4
  br label %15

15:                                               ; preds = %107, %14
  %16 = load i32, ptr %8, align 4
  %17 = icmp slt i32 %16, 32000
  br i1 %17, label %18, label %110

18:                                               ; preds = %15
  %19 = load i32, ptr %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %20
  %22 = load float, ptr %21, align 4
  %23 = load i32, ptr %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %24
  %26 = load float, ptr %25, align 4
  %27 = fcmp ogt float %22, %26
  br i1 %27, label %28, label %55

28:                                               ; preds = %18
  %29 = load i32, ptr %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %30
  %32 = load float, ptr %31, align 4
  %33 = load i32, ptr %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %34
  %36 = load float, ptr %35, align 4
  %37 = load i32, ptr %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %38
  %40 = load float, ptr %39, align 4
  %41 = call float @llvm.fmuladd.f32(float %32, float %36, float %40)
  store float %41, ptr %39, align 4
  %42 = load i32, ptr %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %43
  %45 = load float, ptr %44, align 4
  %46 = load i32, ptr %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %47
  %49 = load float, ptr %48, align 4
  %50 = load i32, ptr %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %51
  %53 = load float, ptr %52, align 4
  %54 = call float @llvm.fmuladd.f32(float %45, float %49, float %53)
  store float %54, ptr %52, align 4
  br label %106

55:                                               ; preds = %18
  %56 = load i32, ptr %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %57
  %59 = load float, ptr %58, align 4
  %60 = load i32, ptr %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %61
  %63 = load float, ptr %62, align 4
  %64 = load i32, ptr %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %65
  %67 = load float, ptr %66, align 4
  %68 = call float @llvm.fmuladd.f32(float %63, float %67, float %59)
  %69 = load i32, ptr %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %70
  store float %68, ptr %71, align 4
  %72 = load float, ptr %2, align 4
  %73 = fcmp ogt float %72, 0.000000e+00
  br i1 %73, label %74, label %91

74:                                               ; preds = %55
  %75 = load i32, ptr %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %76
  %78 = load float, ptr %77, align 4
  %79 = load i32, ptr %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %80
  %82 = load float, ptr %81, align 4
  %83 = load i32, ptr %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %84
  %86 = load float, ptr %85, align 4
  %87 = call float @llvm.fmuladd.f32(float %82, float %86, float %78)
  %88 = load i32, ptr %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %89
  store float %87, ptr %90, align 4
  br label %105

91:                                               ; preds = %55
  %92 = load i32, ptr %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %93
  %95 = load float, ptr %94, align 4
  %96 = load i32, ptr %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %97
  %99 = load float, ptr %98, align 4
  %100 = load i32, ptr %8, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %101
  %103 = load float, ptr %102, align 4
  %104 = call float @llvm.fmuladd.f32(float %95, float %99, float %103)
  store float %104, ptr %102, align 4
  br label %105

105:                                              ; preds = %91, %74
  br label %106

106:                                              ; preds = %105, %28
  br label %107

107:                                              ; preds = %106
  %108 = load i32, ptr %8, align 4
  %109 = add i32 %108, 1
  store i32 %109, ptr %8, align 4
  br label %15, !llvm.loop !220

110:                                              ; preds = %15
  %111 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %112

112:                                              ; preds = %110
  %113 = load i32, ptr %7, align 4
  %114 = add i32 %113, 1
  store i32 %114, ptr %7, align 4
  br label %11, !llvm.loop !221

115:                                              ; preds = %11
  %116 = call i32 @clock()
  store i32 %116, ptr %4, align 4
  %117 = load i32, ptr %4, align 4
  %118 = load i32, ptr %3, align 4
  %119 = sub i32 %117, %118
  store i32 %119, ptr %5, align 4
  %120 = load i32, ptr %5, align 4
  %121 = sitofp i32 %120 to double
  %122 = fdiv double %121, 1.000000e+06
  store double %122, ptr %6, align 8
  %123 = load double, ptr %6, align 8
  %124 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@FBINKEGD@S2710?7?5?$CF?42f?5?7?7?$AA@", double noundef %123)
  call void @check(i32 noundef 123)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s2711() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 @init(ptr noundef @"??_C@_05JGGCICNI@s2711?$AA@")
  %8 = call i32 @clock()
  store i32 %8, ptr %1, align 4
  store i32 0, ptr %5, align 4
  br label %9

9:                                                ; preds = %42, %0
  %10 = load i32, ptr %5, align 4
  %11 = icmp slt i32 %10, 1024
  br i1 %11, label %12, label %45

12:                                               ; preds = %9
  store i32 0, ptr %6, align 4
  br label %13

13:                                               ; preds = %37, %12
  %14 = load i32, ptr %6, align 4
  %15 = icmp slt i32 %14, 32000
  br i1 %15, label %16, label %40

16:                                               ; preds = %13
  %17 = load i32, ptr %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %18
  %20 = load float, ptr %19, align 4
  %21 = fcmp une float %20, 0.000000e+00
  br i1 %21, label %22, label %36

22:                                               ; preds = %16
  %23 = load i32, ptr %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %24
  %26 = load float, ptr %25, align 4
  %27 = load i32, ptr %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %28
  %30 = load float, ptr %29, align 4
  %31 = load i32, ptr %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %32
  %34 = load float, ptr %33, align 4
  %35 = call float @llvm.fmuladd.f32(float %26, float %30, float %34)
  store float %35, ptr %33, align 4
  br label %36

36:                                               ; preds = %22, %16
  br label %37

37:                                               ; preds = %36
  %38 = load i32, ptr %6, align 4
  %39 = add i32 %38, 1
  store i32 %39, ptr %6, align 4
  br label %13, !llvm.loop !222

40:                                               ; preds = %13
  %41 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %42

42:                                               ; preds = %40
  %43 = load i32, ptr %5, align 4
  %44 = add i32 %43, 1
  store i32 %44, ptr %5, align 4
  br label %9, !llvm.loop !223

45:                                               ; preds = %9
  %46 = call i32 @clock()
  store i32 %46, ptr %2, align 4
  %47 = load i32, ptr %2, align 4
  %48 = load i32, ptr %1, align 4
  %49 = sub i32 %47, %48
  store i32 %49, ptr %3, align 4
  %50 = load i32, ptr %3, align 4
  %51 = sitofp i32 %50 to double
  %52 = fdiv double %51, 1.000000e+06
  store double %52, ptr %4, align 8
  %53 = load double, ptr %4, align 8
  %54 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@JAADHLKD@S2711?7?5?$CF?42f?5?7?7?$AA@", double noundef %53)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s2712() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 @init(ptr noundef @"??_C@_05LNEPNBBL@s2712?$AA@")
  %8 = call i32 @clock()
  store i32 %8, ptr %1, align 4
  store i32 0, ptr %5, align 4
  br label %9

9:                                                ; preds = %46, %0
  %10 = load i32, ptr %5, align 4
  %11 = icmp slt i32 %10, 1024
  br i1 %11, label %12, label %49

12:                                               ; preds = %9
  store i32 0, ptr %6, align 4
  br label %13

13:                                               ; preds = %41, %12
  %14 = load i32, ptr %6, align 4
  %15 = icmp slt i32 %14, 32000
  br i1 %15, label %16, label %44

16:                                               ; preds = %13
  %17 = load i32, ptr %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %18
  %20 = load float, ptr %19, align 4
  %21 = load i32, ptr %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %22
  %24 = load float, ptr %23, align 4
  %25 = fcmp ogt float %20, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %16
  %27 = load i32, ptr %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %28
  %30 = load float, ptr %29, align 4
  %31 = load i32, ptr %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %32
  %34 = load float, ptr %33, align 4
  %35 = load i32, ptr %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %36
  %38 = load float, ptr %37, align 4
  %39 = call float @llvm.fmuladd.f32(float %30, float %34, float %38)
  store float %39, ptr %37, align 4
  br label %40

40:                                               ; preds = %26, %16
  br label %41

41:                                               ; preds = %40
  %42 = load i32, ptr %6, align 4
  %43 = add i32 %42, 1
  store i32 %43, ptr %6, align 4
  br label %13, !llvm.loop !224

44:                                               ; preds = %13
  %45 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %46

46:                                               ; preds = %44
  %47 = load i32, ptr %5, align 4
  %48 = add i32 %47, 1
  store i32 %48, ptr %5, align 4
  br label %9, !llvm.loop !225

49:                                               ; preds = %9
  %50 = call i32 @clock()
  store i32 %50, ptr %2, align 4
  %51 = load i32, ptr %2, align 4
  %52 = load i32, ptr %1, align 4
  %53 = sub i32 %51, %52
  store i32 %53, ptr %3, align 4
  %54 = load i32, ptr %3, align 4
  %55 = sitofp i32 %54 to double
  %56 = fdiv double %55, 1.000000e+06
  store double %56, ptr %4, align 8
  %57 = load double, ptr %4, align 8
  %58 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@JOBBNKC@S2712?7?5?$CF?42f?5?7?7?$AA@", double noundef %57)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s281() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = call i32 @init(ptr noundef @"??_C@_05JNNILBJO@s281?5?$AA@")
  %9 = call i32 @clock()
  store i32 %9, ptr %1, align 4
  store i32 0, ptr %6, align 4
  br label %10

10:                                               ; preds = %47, %0
  %11 = load i32, ptr %6, align 4
  %12 = icmp slt i32 %11, 256
  br i1 %12, label %13, label %50

13:                                               ; preds = %10
  store i32 0, ptr %7, align 4
  br label %14

14:                                               ; preds = %42, %13
  %15 = load i32, ptr %7, align 4
  %16 = icmp slt i32 %15, 32000
  br i1 %16, label %17, label %45

17:                                               ; preds = %14
  %18 = load i32, ptr %7, align 4
  %19 = sub i32 32000, %18
  %20 = sub i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %21
  %23 = load float, ptr %22, align 4
  %24 = load i32, ptr %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %25
  %27 = load float, ptr %26, align 4
  %28 = load i32, ptr %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %29
  %31 = load float, ptr %30, align 4
  %32 = call float @llvm.fmuladd.f32(float %27, float %31, float %23)
  store float %32, ptr %5, align 4
  %33 = load float, ptr %5, align 4
  %34 = fsub float %33, 1.000000e+00
  %35 = load i32, ptr %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %36
  store float %34, ptr %37, align 4
  %38 = load float, ptr %5, align 4
  %39 = load i32, ptr %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %40
  store float %38, ptr %41, align 4
  br label %42

42:                                               ; preds = %17
  %43 = load i32, ptr %7, align 4
  %44 = add i32 %43, 1
  store i32 %44, ptr %7, align 4
  br label %14, !llvm.loop !226

45:                                               ; preds = %14
  %46 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %47

47:                                               ; preds = %45
  %48 = load i32, ptr %6, align 4
  %49 = add i32 %48, 1
  store i32 %49, ptr %6, align 4
  br label %10, !llvm.loop !227

50:                                               ; preds = %10
  %51 = call i32 @clock()
  store i32 %51, ptr %2, align 4
  %52 = load i32, ptr %2, align 4
  %53 = load i32, ptr %1, align 4
  %54 = sub i32 %52, %53
  store i32 %54, ptr %3, align 4
  %55 = load i32, ptr %3, align 4
  %56 = sitofp i32 %55 to double
  %57 = fdiv double %56, 1.000000e+06
  store double %57, ptr %4, align 8
  %58 = load double, ptr %4, align 8
  %59 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@JINLGIBF@S281?7?5?$CF?42f?5?7?7?$AA@", double noundef %58)
  call void @check(i32 noundef 12)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s1281() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = call i32 @init(ptr noundef @"??_C@_05JNNILBJO@s281?5?$AA@")
  %9 = call i32 @clock()
  store i32 %9, ptr %1, align 4
  store i32 0, ptr %6, align 4
  br label %10

10:                                               ; preds = %55, %0
  %11 = load i32, ptr %6, align 4
  %12 = icmp slt i32 %11, 1024
  br i1 %12, label %13, label %58

13:                                               ; preds = %10
  store i32 0, ptr %7, align 4
  br label %14

14:                                               ; preds = %50, %13
  %15 = load i32, ptr %7, align 4
  %16 = icmp slt i32 %15, 32000
  br i1 %16, label %17, label %53

17:                                               ; preds = %14
  %18 = load i32, ptr %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %19
  %21 = load float, ptr %20, align 4
  %22 = load i32, ptr %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %23
  %25 = load float, ptr %24, align 4
  %26 = load i32, ptr %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %27
  %29 = load float, ptr %28, align 4
  %30 = load i32, ptr %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %31
  %33 = load float, ptr %32, align 4
  %34 = fmul float %29, %33
  %35 = call float @llvm.fmuladd.f32(float %21, float %25, float %34)
  %36 = load i32, ptr %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %37
  %39 = load float, ptr %38, align 4
  %40 = fadd float %35, %39
  store float %40, ptr %5, align 4
  %41 = load float, ptr %5, align 4
  %42 = fsub float %41, 1.000000e+00
  %43 = load i32, ptr %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %44
  store float %42, ptr %45, align 4
  %46 = load float, ptr %5, align 4
  %47 = load i32, ptr %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %48
  store float %46, ptr %49, align 4
  br label %50

50:                                               ; preds = %17
  %51 = load i32, ptr %7, align 4
  %52 = add i32 %51, 1
  store i32 %52, ptr %7, align 4
  br label %14, !llvm.loop !228

53:                                               ; preds = %14
  %54 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %55

55:                                               ; preds = %53
  %56 = load i32, ptr %6, align 4
  %57 = add i32 %56, 1
  store i32 %57, ptr %6, align 4
  br label %10, !llvm.loop !229

58:                                               ; preds = %10
  %59 = call i32 @clock()
  store i32 %59, ptr %2, align 4
  %60 = load i32, ptr %2, align 4
  %61 = load i32, ptr %1, align 4
  %62 = sub i32 %60, %61
  store i32 %62, ptr %3, align 4
  %63 = load i32, ptr %3, align 4
  %64 = sitofp i32 %63 to double
  %65 = fdiv double %64, 1.000000e+06
  store double %65, ptr %4, align 8
  %66 = load double, ptr %4, align 8
  %67 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@GMOENHPK@S1281?7?5?$CF?42f?5?7?7?$AA@", double noundef %66)
  call void @check(i32 noundef 12)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s291() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = call i32 @init(ptr noundef @"??_C@_05CFGENGPL@s291?5?$AA@")
  %9 = call i32 @clock()
  store i32 %9, ptr %1, align 4
  store i32 0, ptr %6, align 4
  br label %10

10:                                               ; preds = %37, %0
  %11 = load i32, ptr %6, align 4
  %12 = icmp slt i32 %11, 512
  br i1 %12, label %13, label %40

13:                                               ; preds = %10
  store i32 31999, ptr %5, align 4
  store i32 0, ptr %7, align 4
  br label %14

14:                                               ; preds = %32, %13
  %15 = load i32, ptr %7, align 4
  %16 = icmp slt i32 %15, 32000
  br i1 %16, label %17, label %35

17:                                               ; preds = %14
  %18 = load i32, ptr %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %19
  %21 = load float, ptr %20, align 4
  %22 = load i32, ptr %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %23
  %25 = load float, ptr %24, align 4
  %26 = fadd float %21, %25
  %27 = fmul float %26, 5.000000e-01
  %28 = load i32, ptr %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %29
  store float %27, ptr %30, align 4
  %31 = load i32, ptr %7, align 4
  store i32 %31, ptr %5, align 4
  br label %32

32:                                               ; preds = %17
  %33 = load i32, ptr %7, align 4
  %34 = add i32 %33, 1
  store i32 %34, ptr %7, align 4
  br label %14, !llvm.loop !230

35:                                               ; preds = %14
  %36 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %37

37:                                               ; preds = %35
  %38 = load i32, ptr %6, align 4
  %39 = add i32 %38, 1
  store i32 %39, ptr %6, align 4
  br label %10, !llvm.loop !231

40:                                               ; preds = %10
  %41 = call i32 @clock()
  store i32 %41, ptr %2, align 4
  %42 = load i32, ptr %2, align 4
  %43 = load i32, ptr %1, align 4
  %44 = sub i32 %42, %43
  store i32 %44, ptr %3, align 4
  %45 = load i32, ptr %3, align 4
  %46 = sitofp i32 %45 to double
  %47 = fdiv double %46, 1.000000e+06
  store double %47, ptr %4, align 8
  %48 = load double, ptr %4, align 8
  %49 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@DHOCEHK@S291?7?5?$CF?42f?5?7?7?$AA@", double noundef %48)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s292() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = call i32 @init(ptr noundef @"??_C@_05CHCCGIKC@s292?5?$AA@")
  %10 = call i32 @clock()
  store i32 %10, ptr %1, align 4
  store i32 0, ptr %7, align 4
  br label %11

11:                                               ; preds = %44, %0
  %12 = load i32, ptr %7, align 4
  %13 = icmp slt i32 %12, 256
  br i1 %13, label %14, label %47

14:                                               ; preds = %11
  store i32 31999, ptr %5, align 4
  store i32 31998, ptr %6, align 4
  store i32 0, ptr %8, align 4
  br label %15

15:                                               ; preds = %39, %14
  %16 = load i32, ptr %8, align 4
  %17 = icmp slt i32 %16, 32000
  br i1 %17, label %18, label %42

18:                                               ; preds = %15
  %19 = load i32, ptr %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %20
  %22 = load float, ptr %21, align 4
  %23 = load i32, ptr %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %24
  %26 = load float, ptr %25, align 4
  %27 = fadd float %22, %26
  %28 = load i32, ptr %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %29
  %31 = load float, ptr %30, align 4
  %32 = fadd float %27, %31
  %33 = fmul float %32, 3.330000e-01
  %34 = load i32, ptr %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %35
  store float %33, ptr %36, align 4
  %37 = load i32, ptr %5, align 4
  store i32 %37, ptr %6, align 4
  %38 = load i32, ptr %8, align 4
  store i32 %38, ptr %5, align 4
  br label %39

39:                                               ; preds = %18
  %40 = load i32, ptr %8, align 4
  %41 = add i32 %40, 1
  store i32 %41, ptr %8, align 4
  br label %15, !llvm.loop !232

42:                                               ; preds = %15
  %43 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %44

44:                                               ; preds = %42
  %45 = load i32, ptr %7, align 4
  %46 = add i32 %45, 1
  store i32 %46, ptr %7, align 4
  br label %11, !llvm.loop !233

47:                                               ; preds = %11
  %48 = call i32 @clock()
  store i32 %48, ptr %2, align 4
  %49 = load i32, ptr %2, align 4
  %50 = load i32, ptr %1, align 4
  %51 = sub i32 %49, %50
  store i32 %51, ptr %3, align 4
  %52 = load i32, ptr %3, align 4
  %53 = sitofp i32 %52 to double
  %54 = fdiv double %53, 1.000000e+06
  store double %54, ptr %4, align 8
  %55 = load double, ptr %4, align 8
  %56 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@JKJMECHL@S292?7?5?$CF?42f?5?7?7?$AA@", double noundef %55)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s293() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 @init(ptr noundef @"??_C@_05CGOAACJF@s293?5?$AA@")
  %8 = call i32 @clock()
  store i32 %8, ptr %1, align 4
  store i32 0, ptr %5, align 4
  br label %9

9:                                                ; preds = %26, %0
  %10 = load i32, ptr %5, align 4
  %11 = icmp slt i32 %10, 1024
  br i1 %11, label %12, label %29

12:                                               ; preds = %9
  store i32 0, ptr %6, align 4
  br label %13

13:                                               ; preds = %21, %12
  %14 = load i32, ptr %6, align 4
  %15 = icmp slt i32 %14, 32000
  br i1 %15, label %16, label %24

16:                                               ; preds = %13
  %17 = load float, ptr @a, align 16
  %18 = load i32, ptr %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %19
  store float %17, ptr %20, align 4
  br label %21

21:                                               ; preds = %16
  %22 = load i32, ptr %6, align 4
  %23 = add i32 %22, 1
  store i32 %23, ptr %6, align 4
  br label %13, !llvm.loop !234

24:                                               ; preds = %13
  %25 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %26

26:                                               ; preds = %24
  %27 = load i32, ptr %5, align 4
  %28 = add i32 %27, 1
  store i32 %28, ptr %5, align 4
  br label %9, !llvm.loop !235

29:                                               ; preds = %9
  %30 = call i32 @clock()
  store i32 %30, ptr %2, align 4
  %31 = load i32, ptr %2, align 4
  %32 = load i32, ptr %1, align 4
  %33 = sub i32 %31, %32
  store i32 %33, ptr %3, align 4
  %34 = load i32, ptr %3, align 4
  %35 = sitofp i32 %34 to double
  %36 = fdiv double %35, 1.000000e+06
  store double %36, ptr %4, align 8
  %37 = load double, ptr %4, align 8
  %38 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@FLBCJNLL@S293?7?5?$CF?42f?5?7?7?$AA@", double noundef %37)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s2101() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 @init(ptr noundef @"??_C@_05LCMLLHDD@s2101?$AA@")
  %8 = call i32 @clock()
  store i32 %8, ptr %1, align 4
  store i32 0, ptr %5, align 4
  br label %9

9:                                                ; preds = %44, %0
  %10 = load i32, ptr %5, align 4
  %11 = icmp slt i32 %10, 2560
  br i1 %11, label %12, label %47

12:                                               ; preds = %9
  store i32 0, ptr %6, align 4
  br label %13

13:                                               ; preds = %39, %12
  %14 = load i32, ptr %6, align 4
  %15 = icmp slt i32 %14, 256
  br i1 %15, label %16, label %42

16:                                               ; preds = %13
  %17 = load i32, ptr %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %18
  %20 = load i32, ptr %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [256 x float], ptr %19, i64 0, i64 %21
  %23 = load float, ptr %22, align 4
  %24 = load i32, ptr %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [256 x [256 x float]], ptr @cc, i64 0, i64 %25
  %27 = load i32, ptr %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [256 x float], ptr %26, i64 0, i64 %28
  %30 = load float, ptr %29, align 4
  %31 = load i32, ptr %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %32
  %34 = load i32, ptr %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [256 x float], ptr %33, i64 0, i64 %35
  %37 = load float, ptr %36, align 4
  %38 = call float @llvm.fmuladd.f32(float %23, float %30, float %37)
  store float %38, ptr %36, align 4
  br label %39

39:                                               ; preds = %16
  %40 = load i32, ptr %6, align 4
  %41 = add i32 %40, 1
  store i32 %41, ptr %6, align 4
  br label %13, !llvm.loop !236

42:                                               ; preds = %13
  %43 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %44

44:                                               ; preds = %42
  %45 = load i32, ptr %5, align 4
  %46 = add i32 %45, 1
  store i32 %46, ptr %5, align 4
  br label %9, !llvm.loop !237

47:                                               ; preds = %9
  %48 = call i32 @clock()
  store i32 %48, ptr %2, align 4
  %49 = load i32, ptr %2, align 4
  %50 = load i32, ptr %1, align 4
  %51 = sub i32 %49, %50
  store i32 %51, ptr %3, align 4
  %52 = load i32, ptr %3, align 4
  %53 = sitofp i32 %52 to double
  %54 = fdiv double %53, 1.000000e+06
  store double %54, ptr %4, align 8
  %55 = load double, ptr %4, align 8
  %56 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@KLEDOIBB@S2101?7?5?$CF?42f?5?7?7?$AA@", double noundef %55)
  call void @check(i32 noundef 11)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s2102() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = call i32 @init(ptr noundef @"??_C@_05JJOGOEPA@s2102?$AA@")
  %9 = call i32 @clock()
  store i32 %9, ptr %1, align 4
  store i32 0, ptr %5, align 4
  br label %10

10:                                               ; preds = %43, %0
  %11 = load i32, ptr %5, align 4
  %12 = icmp slt i32 %11, 100
  br i1 %12, label %13, label %46

13:                                               ; preds = %10
  store i32 0, ptr %6, align 4
  br label %14

14:                                               ; preds = %38, %13
  %15 = load i32, ptr %6, align 4
  %16 = icmp slt i32 %15, 256
  br i1 %16, label %17, label %41

17:                                               ; preds = %14
  store i32 0, ptr %7, align 4
  br label %18

18:                                               ; preds = %28, %17
  %19 = load i32, ptr %7, align 4
  %20 = icmp slt i32 %19, 256
  br i1 %20, label %21, label %31

21:                                               ; preds = %18
  %22 = load i32, ptr %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %23
  %25 = load i32, ptr %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [256 x float], ptr %24, i64 0, i64 %26
  store float 0.000000e+00, ptr %27, align 4
  br label %28

28:                                               ; preds = %21
  %29 = load i32, ptr %7, align 4
  %30 = add i32 %29, 1
  store i32 %30, ptr %7, align 4
  br label %18, !llvm.loop !238

31:                                               ; preds = %18
  %32 = load i32, ptr %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %33
  %35 = load i32, ptr %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [256 x float], ptr %34, i64 0, i64 %36
  store float 1.000000e+00, ptr %37, align 4
  br label %38

38:                                               ; preds = %31
  %39 = load i32, ptr %6, align 4
  %40 = add i32 %39, 1
  store i32 %40, ptr %6, align 4
  br label %14, !llvm.loop !239

41:                                               ; preds = %14
  %42 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %43

43:                                               ; preds = %41
  %44 = load i32, ptr %5, align 4
  %45 = add i32 %44, 1
  store i32 %45, ptr %5, align 4
  br label %10, !llvm.loop !240

46:                                               ; preds = %10
  %47 = call i32 @clock()
  store i32 %47, ptr %2, align 4
  %48 = load i32, ptr %2, align 4
  %49 = load i32, ptr %1, align 4
  %50 = sub i32 %48, %49
  store i32 %50, ptr %3, align 4
  %51 = load i32, ptr %3, align 4
  %52 = sitofp i32 %51 to double
  %53 = fdiv double %52, 1.000000e+06
  store double %53, ptr %4, align 8
  %54 = load double, ptr %4, align 8
  %55 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@DCKBIOBA@S2102?7?5?$CF?42f?5?7?7?$AA@", double noundef %54)
  call void @check(i32 noundef 11)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s2111() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = call i32 @init(ptr noundef @"??_C@_05LDAJNNAE@s2111?$AA@")
  %11 = call i32 @clock()
  store i32 %11, ptr %1, align 4
  store i32 0, ptr %5, align 4
  br label %12

12:                                               ; preds = %56, %0
  %13 = load i32, ptr %5, align 4
  %14 = icmp slt i32 %13, 100
  br i1 %14, label %15, label %59

15:                                               ; preds = %12
  store i32 1, ptr %6, align 4
  br label %16

16:                                               ; preds = %51, %15
  %17 = load i32, ptr %6, align 4
  %18 = icmp slt i32 %17, 256
  br i1 %18, label %19, label %54

19:                                               ; preds = %16
  store i32 1, ptr %7, align 4
  br label %20

20:                                               ; preds = %47, %19
  %21 = load i32, ptr %7, align 4
  %22 = icmp slt i32 %21, 256
  br i1 %22, label %23, label %50

23:                                               ; preds = %20
  %24 = load i32, ptr %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %25
  %27 = load i32, ptr %7, align 4
  %28 = sub i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [256 x float], ptr %26, i64 0, i64 %29
  %31 = load float, ptr %30, align 4
  %32 = load i32, ptr %6, align 4
  %33 = sub i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %34
  %36 = load i32, ptr %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [256 x float], ptr %35, i64 0, i64 %37
  %39 = load float, ptr %38, align 4
  %40 = fadd float %31, %39
  %41 = load i32, ptr %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %42
  %44 = load i32, ptr %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [256 x float], ptr %43, i64 0, i64 %45
  store float %40, ptr %46, align 4
  br label %47

47:                                               ; preds = %23
  %48 = load i32, ptr %7, align 4
  %49 = add i32 %48, 1
  store i32 %49, ptr %7, align 4
  br label %20, !llvm.loop !241

50:                                               ; preds = %20
  br label %51

51:                                               ; preds = %50
  %52 = load i32, ptr %6, align 4
  %53 = add i32 %52, 1
  store i32 %53, ptr %6, align 4
  br label %16, !llvm.loop !242

54:                                               ; preds = %16
  %55 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %56

56:                                               ; preds = %54
  %57 = load i32, ptr %5, align 4
  %58 = add i32 %57, 1
  store i32 %58, ptr %5, align 4
  br label %12, !llvm.loop !243

59:                                               ; preds = %12
  %60 = call i32 @clock()
  store i32 %60, ptr %2, align 4
  %61 = load i32, ptr %2, align 4
  %62 = load i32, ptr %1, align 4
  %63 = sub i32 %61, %62
  store i32 %63, ptr %3, align 4
  %64 = load i32, ptr %3, align 4
  %65 = sitofp i32 %64 to double
  %66 = fdiv double %65, 1.000000e+06
  store double %66, ptr %4, align 8
  %67 = load double, ptr %4, align 8
  %68 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@DAOGKEHO@S2111?7?5?$CF?42f?5?7?7?$AA@", double noundef %67)
  store float 0.000000e+00, ptr @temp, align 4
  store i32 0, ptr %8, align 4
  br label %69

69:                                               ; preds = %90, %59
  %70 = load i32, ptr %8, align 4
  %71 = icmp slt i32 %70, 256
  br i1 %71, label %72, label %93

72:                                               ; preds = %69
  store i32 0, ptr %9, align 4
  br label %73

73:                                               ; preds = %86, %72
  %74 = load i32, ptr %9, align 4
  %75 = icmp slt i32 %74, 256
  br i1 %75, label %76, label %89

76:                                               ; preds = %73
  %77 = load i32, ptr %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %78
  %80 = load i32, ptr %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [256 x float], ptr %79, i64 0, i64 %81
  %83 = load float, ptr %82, align 4
  %84 = load float, ptr @temp, align 4
  %85 = fadd float %84, %83
  store float %85, ptr @temp, align 4
  br label %86

86:                                               ; preds = %76
  %87 = load i32, ptr %9, align 4
  %88 = add i32 %87, 1
  store i32 %88, ptr %9, align 4
  br label %73, !llvm.loop !244

89:                                               ; preds = %73
  br label %90

90:                                               ; preds = %89
  %91 = load i32, ptr %8, align 4
  %92 = add i32 %91, 1
  store i32 %92, ptr %8, align 4
  br label %69, !llvm.loop !245

93:                                               ; preds = %69
  %94 = load float, ptr @temp, align 4
  %95 = fcmp oeq float %94, 0.000000e+00
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  store float 3.000000e+00, ptr @temp, align 4
  br label %97

97:                                               ; preds = %96, %93
  call void @check(i32 noundef -1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s311() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = call i32 @init(ptr noundef @"??_C@_05NNLANHKE@s311?5?$AA@")
  %9 = call i32 @clock()
  store i32 %9, ptr %1, align 4
  store i32 0, ptr %6, align 4
  br label %10

10:                                               ; preds = %30, %0
  %11 = load i32, ptr %6, align 4
  %12 = icmp slt i32 %11, 2560
  br i1 %12, label %13, label %33

13:                                               ; preds = %10
  store float 0.000000e+00, ptr %5, align 4
  store i32 0, ptr %7, align 4
  br label %14

14:                                               ; preds = %24, %13
  %15 = load i32, ptr %7, align 4
  %16 = icmp slt i32 %15, 32000
  br i1 %16, label %17, label %27

17:                                               ; preds = %14
  %18 = load i32, ptr %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %19
  %21 = load float, ptr %20, align 4
  %22 = load float, ptr %5, align 4
  %23 = fadd float %22, %21
  store float %23, ptr %5, align 4
  br label %24

24:                                               ; preds = %17
  %25 = load i32, ptr %7, align 4
  %26 = add i32 %25, 1
  store i32 %26, ptr %7, align 4
  br label %14, !llvm.loop !246

27:                                               ; preds = %14
  %28 = load float, ptr %5, align 4
  %29 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef %28)
  br label %30

30:                                               ; preds = %27
  %31 = load i32, ptr %6, align 4
  %32 = add i32 %31, 1
  store i32 %32, ptr %6, align 4
  br label %10, !llvm.loop !247

33:                                               ; preds = %10
  %34 = call i32 @clock()
  store i32 %34, ptr %2, align 4
  %35 = load i32, ptr %2, align 4
  %36 = load i32, ptr %1, align 4
  %37 = sub i32 %35, %36
  store i32 %37, ptr %3, align 4
  %38 = load i32, ptr %3, align 4
  %39 = sitofp i32 %38 to double
  %40 = fdiv double %39, 1.000000e+06
  store double %40, ptr %4, align 8
  %41 = load double, ptr %4, align 8
  %42 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@NIOEILAB@S311?7?5?$CF?42f?5?7?7?$AA@", double noundef %41)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local float @test(ptr noundef %0) #7 {
  %2 = alloca ptr, align 8
  %3 = alloca float, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  store float 0.000000e+00, ptr %3, align 4
  store i32 0, ptr %4, align 4
  br label %5

5:                                                ; preds = %16, %1
  %6 = load i32, ptr %4, align 4
  %7 = icmp slt i32 %6, 4
  br i1 %7, label %8, label %19

8:                                                ; preds = %5
  %9 = load ptr, ptr %2, align 8
  %10 = load i32, ptr %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds float, ptr %9, i64 %11
  %13 = load float, ptr %12, align 4
  %14 = load float, ptr %3, align 4
  %15 = fadd float %14, %13
  store float %15, ptr %3, align 4
  br label %16

16:                                               ; preds = %8
  %17 = load i32, ptr %4, align 4
  %18 = add i32 %17, 1
  store i32 %18, ptr %4, align 4
  br label %5, !llvm.loop !248

19:                                               ; preds = %5
  %20 = load float, ptr %3, align 4
  ret float %20
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s31111() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = call i32 @init(ptr noundef @"??_C@_05NNLANHKE@s311?5?$AA@")
  %8 = call i32 @clock()
  store i32 %8, ptr %1, align 4
  store i32 0, ptr %6, align 4
  br label %9

9:                                                ; preds = %39, %0
  %10 = load i32, ptr %6, align 4
  %11 = icmp slt i32 %10, 512000
  br i1 %11, label %12, label %42

12:                                               ; preds = %9
  store float 0.000000e+00, ptr %5, align 4
  %13 = call float @test(ptr noundef @a)
  %14 = load float, ptr %5, align 4
  %15 = fadd float %14, %13
  store float %15, ptr %5, align 4
  %16 = call float @test(ptr noundef getelementptr inbounds nuw (i8, ptr @a, i64 16))
  %17 = load float, ptr %5, align 4
  %18 = fadd float %17, %16
  store float %18, ptr %5, align 4
  %19 = call float @test(ptr noundef getelementptr inbounds nuw (i8, ptr @a, i64 32))
  %20 = load float, ptr %5, align 4
  %21 = fadd float %20, %19
  store float %21, ptr %5, align 4
  %22 = call float @test(ptr noundef getelementptr inbounds nuw (i8, ptr @a, i64 48))
  %23 = load float, ptr %5, align 4
  %24 = fadd float %23, %22
  store float %24, ptr %5, align 4
  %25 = call float @test(ptr noundef getelementptr inbounds nuw (i8, ptr @a, i64 64))
  %26 = load float, ptr %5, align 4
  %27 = fadd float %26, %25
  store float %27, ptr %5, align 4
  %28 = call float @test(ptr noundef getelementptr inbounds nuw (i8, ptr @a, i64 80))
  %29 = load float, ptr %5, align 4
  %30 = fadd float %29, %28
  store float %30, ptr %5, align 4
  %31 = call float @test(ptr noundef getelementptr inbounds nuw (i8, ptr @a, i64 96))
  %32 = load float, ptr %5, align 4
  %33 = fadd float %32, %31
  store float %33, ptr %5, align 4
  %34 = call float @test(ptr noundef getelementptr inbounds nuw (i8, ptr @a, i64 112))
  %35 = load float, ptr %5, align 4
  %36 = fadd float %35, %34
  store float %36, ptr %5, align 4
  %37 = load float, ptr %5, align 4
  %38 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef %37)
  br label %39

39:                                               ; preds = %12
  %40 = load i32, ptr %6, align 4
  %41 = add i32 %40, 1
  store i32 %41, ptr %6, align 4
  br label %9, !llvm.loop !249

42:                                               ; preds = %9
  %43 = call i32 @clock()
  store i32 %43, ptr %2, align 4
  %44 = load i32, ptr %2, align 4
  %45 = load i32, ptr %1, align 4
  %46 = sub i32 %44, %45
  store i32 %46, ptr %3, align 4
  %47 = load i32, ptr %3, align 4
  %48 = sitofp i32 %47 to double
  %49 = fdiv double %48, 1.000000e+06
  store double %49, ptr %4, align 8
  %50 = load double, ptr %4, align 8
  %51 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0BA@NEEAPAGC@S31111?7?5?$CF?42f?5?7?7?$AA@", double noundef %50)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s312() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = call i32 @init(ptr noundef @"??_C@_05NPPGGJPN@s312?5?$AA@")
  %9 = call i32 @clock()
  store i32 %9, ptr %1, align 4
  store i32 0, ptr %6, align 4
  br label %10

10:                                               ; preds = %30, %0
  %11 = load i32, ptr %6, align 4
  %12 = icmp slt i32 %11, 2560
  br i1 %12, label %13, label %33

13:                                               ; preds = %10
  store float 1.000000e+00, ptr %5, align 4
  store i32 0, ptr %7, align 4
  br label %14

14:                                               ; preds = %24, %13
  %15 = load i32, ptr %7, align 4
  %16 = icmp slt i32 %15, 32000
  br i1 %16, label %17, label %27

17:                                               ; preds = %14
  %18 = load i32, ptr %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %19
  %21 = load float, ptr %20, align 4
  %22 = load float, ptr %5, align 4
  %23 = fmul float %22, %21
  store float %23, ptr %5, align 4
  br label %24

24:                                               ; preds = %17
  %25 = load i32, ptr %7, align 4
  %26 = add i32 %25, 1
  store i32 %26, ptr %7, align 4
  br label %14, !llvm.loop !250

27:                                               ; preds = %14
  %28 = load float, ptr %5, align 4
  %29 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef %28)
  br label %30

30:                                               ; preds = %27
  %31 = load i32, ptr %6, align 4
  %32 = add i32 %31, 1
  store i32 %32, ptr %6, align 4
  br label %10, !llvm.loop !251

33:                                               ; preds = %10
  %34 = call i32 @clock()
  store i32 %34, ptr %2, align 4
  %35 = load i32, ptr %2, align 4
  %36 = load i32, ptr %1, align 4
  %37 = sub i32 %35, %36
  store i32 %37, ptr %3, align 4
  %38 = load i32, ptr %3, align 4
  %39 = sitofp i32 %38 to double
  %40 = fdiv double %39, 1.000000e+06
  store double %40, ptr %4, align 8
  %41 = load double, ptr %4, align 8
  %42 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@EBAGONAA@S312?7?5?$CF?42f?5?7?7?$AA@", double noundef %41)
  %43 = load float, ptr %5, align 4
  store float %43, ptr @temp, align 4
  call void @check(i32 noundef -1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s313() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = call i32 @init(ptr noundef @"??_C@_05NODEADMK@s313?5?$AA@")
  %9 = call i32 @clock()
  store i32 %9, ptr %1, align 4
  store i32 0, ptr %6, align 4
  br label %10

10:                                               ; preds = %34, %0
  %11 = load i32, ptr %6, align 4
  %12 = icmp slt i32 %11, 1280
  br i1 %12, label %13, label %37

13:                                               ; preds = %10
  store float 0.000000e+00, ptr %5, align 4
  store i32 0, ptr %7, align 4
  br label %14

14:                                               ; preds = %28, %13
  %15 = load i32, ptr %7, align 4
  %16 = icmp slt i32 %15, 32000
  br i1 %16, label %17, label %31

17:                                               ; preds = %14
  %18 = load i32, ptr %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %19
  %21 = load float, ptr %20, align 4
  %22 = load i32, ptr %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %23
  %25 = load float, ptr %24, align 4
  %26 = load float, ptr %5, align 4
  %27 = call float @llvm.fmuladd.f32(float %21, float %25, float %26)
  store float %27, ptr %5, align 4
  br label %28

28:                                               ; preds = %17
  %29 = load i32, ptr %7, align 4
  %30 = add i32 %29, 1
  store i32 %30, ptr %7, align 4
  br label %14, !llvm.loop !252

31:                                               ; preds = %14
  %32 = load float, ptr %5, align 4
  %33 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef %32)
  br label %34

34:                                               ; preds = %31
  %35 = load i32, ptr %6, align 4
  %36 = add i32 %35, 1
  store i32 %36, ptr %6, align 4
  br label %10, !llvm.loop !253

37:                                               ; preds = %10
  %38 = call i32 @clock()
  store i32 %38, ptr %2, align 4
  %39 = load i32, ptr %2, align 4
  %40 = load i32, ptr %1, align 4
  %41 = sub i32 %39, %40
  store i32 %41, ptr %3, align 4
  %42 = load i32, ptr %3, align 4
  %43 = sitofp i32 %42 to double
  %44 = fdiv double %43, 1.000000e+06
  store double %44, ptr %4, align 8
  %45 = load double, ptr %4, align 8
  %46 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@IAIIDCMA@S313?7?5?$CF?42f?5?7?7?$AA@", double noundef %45)
  %47 = load float, ptr %5, align 4
  store float %47, ptr @temp, align 4
  call void @check(i32 noundef -1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s314() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = call i32 @init(ptr noundef @"??_C@_05NLHLBFEP@s314?5?$AA@")
  %9 = call i32 @clock()
  store i32 %9, ptr %1, align 4
  store i32 0, ptr %6, align 4
  br label %10

10:                                               ; preds = %37, %0
  %11 = load i32, ptr %6, align 4
  %12 = icmp slt i32 %11, 1280
  br i1 %12, label %13, label %40

13:                                               ; preds = %10
  %14 = load float, ptr @a, align 16
  store float %14, ptr %5, align 4
  store i32 0, ptr %7, align 4
  br label %15

15:                                               ; preds = %31, %13
  %16 = load i32, ptr %7, align 4
  %17 = icmp slt i32 %16, 32000
  br i1 %17, label %18, label %34

18:                                               ; preds = %15
  %19 = load i32, ptr %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %20
  %22 = load float, ptr %21, align 4
  %23 = load float, ptr %5, align 4
  %24 = fcmp ogt float %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = load i32, ptr %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %27
  %29 = load float, ptr %28, align 4
  store float %29, ptr %5, align 4
  br label %30

30:                                               ; preds = %25, %18
  br label %31

31:                                               ; preds = %30
  %32 = load i32, ptr %7, align 4
  %33 = add i32 %32, 1
  store i32 %33, ptr %7, align 4
  br label %15, !llvm.loop !254

34:                                               ; preds = %15
  %35 = load float, ptr %5, align 4
  %36 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef %35)
  br label %37

37:                                               ; preds = %34
  %38 = load i32, ptr %6, align 4
  %39 = add i32 %38, 1
  store i32 %39, ptr %6, align 4
  br label %10, !llvm.loop !255

40:                                               ; preds = %10
  %41 = call i32 @clock()
  store i32 %41, ptr %2, align 4
  %42 = load i32, ptr %2, align 4
  %43 = load i32, ptr %1, align 4
  %44 = sub i32 %42, %43
  store i32 %44, ptr %3, align 4
  %45 = load i32, ptr %3, align 4
  %46 = sitofp i32 %45 to double
  %47 = fdiv double %46, 1.000000e+06
  store double %47, ptr %4, align 8
  %48 = load double, ptr %4, align 8
  %49 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@KJLDCHED@S314?7?5?$CF?42f?5?7?7?$AA@", double noundef %48)
  %50 = load float, ptr %5, align 4
  store float %50, ptr @temp, align 4
  call void @check(i32 noundef -1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s315() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = call i32 @init(ptr noundef @"??_C@_05NKLJHPHI@s315?5?$AA@")
  store i32 0, ptr %5, align 4
  br label %12

12:                                               ; preds = %23, %0
  %13 = load i32, ptr %5, align 4
  %14 = icmp slt i32 %13, 32000
  br i1 %14, label %15, label %26

15:                                               ; preds = %12
  %16 = load i32, ptr %5, align 4
  %17 = mul i32 %16, 7
  %18 = srem i32 %17, 32000
  %19 = sitofp i32 %18 to float
  %20 = load i32, ptr %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %21
  store float %19, ptr %22, align 4
  br label %23

23:                                               ; preds = %15
  %24 = load i32, ptr %5, align 4
  %25 = add i32 %24, 1
  store i32 %25, ptr %5, align 4
  br label %12, !llvm.loop !256

26:                                               ; preds = %12
  %27 = call i32 @clock()
  store i32 %27, ptr %1, align 4
  store i32 0, ptr %9, align 4
  br label %28

28:                                               ; preds = %60, %26
  %29 = load i32, ptr %9, align 4
  %30 = icmp slt i32 %29, 256
  br i1 %30, label %31, label %63

31:                                               ; preds = %28
  %32 = load float, ptr @a, align 16
  store float %32, ptr %6, align 4
  store i32 0, ptr %8, align 4
  store i32 0, ptr %10, align 4
  br label %33

33:                                               ; preds = %50, %31
  %34 = load i32, ptr %10, align 4
  %35 = icmp slt i32 %34, 32000
  br i1 %35, label %36, label %53

36:                                               ; preds = %33
  %37 = load i32, ptr %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %38
  %40 = load float, ptr %39, align 4
  %41 = load float, ptr %6, align 4
  %42 = fcmp ogt float %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %36
  %44 = load i32, ptr %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %45
  %47 = load float, ptr %46, align 4
  store float %47, ptr %6, align 4
  %48 = load i32, ptr %10, align 4
  store i32 %48, ptr %8, align 4
  br label %49

49:                                               ; preds = %43, %36
  br label %50

50:                                               ; preds = %49
  %51 = load i32, ptr %10, align 4
  %52 = add i32 %51, 1
  store i32 %52, ptr %10, align 4
  br label %33, !llvm.loop !257

53:                                               ; preds = %33
  %54 = load float, ptr %6, align 4
  %55 = load i32, ptr %8, align 4
  %56 = sitofp i32 %55 to float
  %57 = fadd float %54, %56
  store float %57, ptr %7, align 4
  %58 = load float, ptr %7, align 4
  %59 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef %58)
  br label %60

60:                                               ; preds = %53
  %61 = load i32, ptr %9, align 4
  %62 = add i32 %61, 1
  store i32 %62, ptr %9, align 4
  br label %28, !llvm.loop !258

63:                                               ; preds = %28
  %64 = call i32 @clock()
  store i32 %64, ptr %2, align 4
  %65 = load i32, ptr %2, align 4
  %66 = load i32, ptr %1, align 4
  %67 = sub i32 %65, %66
  store i32 %67, ptr %3, align 4
  %68 = load i32, ptr %3, align 4
  %69 = sitofp i32 %68 to double
  %70 = fdiv double %69, 1.000000e+06
  store double %70, ptr %4, align 8
  %71 = load double, ptr %4, align 8
  %72 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@GIDNPIID@S315?7?5?$CF?42f?5?7?7?$AA@", double noundef %71)
  %73 = load i32, ptr %8, align 4
  %74 = sitofp i32 %73 to float
  %75 = load float, ptr %6, align 4
  %76 = fadd float %74, %75
  %77 = fadd float %76, 1.000000e+00
  store float %77, ptr @temp, align 4
  call void @check(i32 noundef -1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s316() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = call i32 @init(ptr noundef @"??_C@_05NIPPMBCB@s316?5?$AA@")
  %9 = call i32 @clock()
  store i32 %9, ptr %1, align 4
  store i32 0, ptr %6, align 4
  br label %10

10:                                               ; preds = %37, %0
  %11 = load i32, ptr %6, align 4
  %12 = icmp slt i32 %11, 1280
  br i1 %12, label %13, label %40

13:                                               ; preds = %10
  %14 = load float, ptr @a, align 16
  store float %14, ptr %5, align 4
  store i32 1, ptr %7, align 4
  br label %15

15:                                               ; preds = %31, %13
  %16 = load i32, ptr %7, align 4
  %17 = icmp slt i32 %16, 32000
  br i1 %17, label %18, label %34

18:                                               ; preds = %15
  %19 = load i32, ptr %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %20
  %22 = load float, ptr %21, align 4
  %23 = load float, ptr %5, align 4
  %24 = fcmp olt float %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = load i32, ptr %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %27
  %29 = load float, ptr %28, align 4
  store float %29, ptr %5, align 4
  br label %30

30:                                               ; preds = %25, %18
  br label %31

31:                                               ; preds = %30
  %32 = load i32, ptr %7, align 4
  %33 = add i32 %32, 1
  store i32 %33, ptr %7, align 4
  br label %15, !llvm.loop !259

34:                                               ; preds = %15
  %35 = load float, ptr %5, align 4
  %36 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef %35)
  br label %37

37:                                               ; preds = %34
  %38 = load i32, ptr %6, align 4
  %39 = add i32 %38, 1
  store i32 %39, ptr %6, align 4
  br label %10, !llvm.loop !260

40:                                               ; preds = %10
  %41 = call i32 @clock()
  store i32 %41, ptr %2, align 4
  %42 = load i32, ptr %2, align 4
  %43 = load i32, ptr %1, align 4
  %44 = sub i32 %42, %43
  store i32 %44, ptr %3, align 4
  %45 = load i32, ptr %3, align 4
  %46 = sitofp i32 %45 to double
  %47 = fdiv double %46, 1.000000e+06
  store double %47, ptr %4, align 8
  %48 = load double, ptr %4, align 8
  %49 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@PBNPJOIC@S316?7?5?$CF?42f?5?7?7?$AA@", double noundef %48)
  %50 = load float, ptr %5, align 4
  store float %50, ptr @temp, align 4
  call void @check(i32 noundef -1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s317() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = call i32 @init(ptr noundef @"??_C@_05NJDNKLBG@s317?5?$AA@")
  %9 = call i32 @clock()
  store i32 %9, ptr %1, align 4
  store i32 0, ptr %6, align 4
  br label %10

10:                                               ; preds = %26, %0
  %11 = load i32, ptr %6, align 4
  %12 = icmp slt i32 %11, 1280
  br i1 %12, label %13, label %29

13:                                               ; preds = %10
  store float 1.000000e+00, ptr %5, align 4
  store i32 0, ptr %7, align 4
  br label %14

14:                                               ; preds = %20, %13
  %15 = load i32, ptr %7, align 4
  %16 = icmp slt i32 %15, 16000
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = load float, ptr %5, align 4
  %19 = fmul float %18, 9.900000e-01
  store float %19, ptr %5, align 4
  br label %20

20:                                               ; preds = %17
  %21 = load i32, ptr %7, align 4
  %22 = add i32 %21, 1
  store i32 %22, ptr %7, align 4
  br label %14, !llvm.loop !261

23:                                               ; preds = %14
  %24 = load float, ptr %5, align 4
  %25 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef %24)
  br label %26

26:                                               ; preds = %23
  %27 = load i32, ptr %6, align 4
  %28 = add i32 %27, 1
  store i32 %28, ptr %6, align 4
  br label %10, !llvm.loop !262

29:                                               ; preds = %10
  %30 = call i32 @clock()
  store i32 %30, ptr %2, align 4
  %31 = load i32, ptr %2, align 4
  %32 = load i32, ptr %1, align 4
  %33 = sub i32 %31, %32
  store i32 %33, ptr %3, align 4
  %34 = load i32, ptr %3, align 4
  %35 = sitofp i32 %34 to double
  %36 = fdiv double %35, 1.000000e+06
  store double %36, ptr %4, align 8
  %37 = load double, ptr %4, align 8
  %38 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@DAFBEBEC@S317?7?5?$CF?42f?5?7?7?$AA@", double noundef %37)
  %39 = load float, ptr %5, align 4
  store float %39, ptr @temp, align 4
  call void @check(i32 noundef -1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s318(i32 noundef %0) #7 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %13 = call i32 @init(ptr noundef @"??_C@_05NCGBOMCL@s318?5?$AA@")
  %14 = call i32 @clock()
  store i32 %14, ptr %3, align 4
  store i32 0, ptr %11, align 4
  br label %15

15:                                               ; preds = %63, %1
  %16 = load i32, ptr %11, align 4
  %17 = icmp slt i32 %16, 128
  br i1 %17, label %18, label %66

18:                                               ; preds = %15
  store i32 0, ptr %7, align 4
  store i32 0, ptr %8, align 4
  %19 = load float, ptr @a, align 16
  %20 = fptosi float %19 to i32
  %21 = call i32 @llvm.abs.i32(i32 %20, i1 false)
  %22 = sitofp i32 %21 to float
  store float %22, ptr %9, align 4
  %23 = load i32, ptr %2, align 4
  %24 = load i32, ptr %7, align 4
  %25 = add i32 %24, %23
  store i32 %25, ptr %7, align 4
  store i32 1, ptr %12, align 4
  br label %26

26:                                               ; preds = %53, %18
  %27 = load i32, ptr %12, align 4
  %28 = icmp slt i32 %27, 32000
  br i1 %28, label %29, label %56

29:                                               ; preds = %26
  %30 = load i32, ptr %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %31
  %33 = load float, ptr %32, align 4
  %34 = fptosi float %33 to i32
  %35 = call i32 @llvm.abs.i32(i32 %34, i1 false)
  %36 = sitofp i32 %35 to float
  %37 = load float, ptr %9, align 4
  %38 = fcmp ole float %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  br label %49

40:                                               ; preds = %29
  %41 = load i32, ptr %12, align 4
  store i32 %41, ptr %8, align 4
  %42 = load i32, ptr %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %43
  %45 = load float, ptr %44, align 4
  %46 = fptosi float %45 to i32
  %47 = call i32 @llvm.abs.i32(i32 %46, i1 false)
  %48 = sitofp i32 %47 to float
  store float %48, ptr %9, align 4
  br label %49

49:                                               ; preds = %40, %39
  %50 = load i32, ptr %2, align 4
  %51 = load i32, ptr %7, align 4
  %52 = add i32 %51, %50
  store i32 %52, ptr %7, align 4
  br label %53

53:                                               ; preds = %49
  %54 = load i32, ptr %12, align 4
  %55 = add i32 %54, 1
  store i32 %55, ptr %12, align 4
  br label %26, !llvm.loop !263

56:                                               ; preds = %26
  %57 = load float, ptr %9, align 4
  %58 = load i32, ptr %8, align 4
  %59 = sitofp i32 %58 to float
  %60 = fadd float %57, %59
  store float %60, ptr %10, align 4
  %61 = load float, ptr %10, align 4
  %62 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef %61)
  br label %63

63:                                               ; preds = %56
  %64 = load i32, ptr %11, align 4
  %65 = add i32 %64, 1
  store i32 %65, ptr %11, align 4
  br label %15, !llvm.loop !264

66:                                               ; preds = %15
  %67 = call i32 @clock()
  store i32 %67, ptr %4, align 4
  %68 = load i32, ptr %4, align 4
  %69 = load i32, ptr %3, align 4
  %70 = sub i32 %68, %69
  store i32 %70, ptr %5, align 4
  %71 = load i32, ptr %5, align 4
  %72 = sitofp i32 %71 to double
  %73 = fdiv double %72, 1.000000e+06
  store double %73, ptr %6, align 8
  %74 = load double, ptr %6, align 8
  %75 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@KDKJLFIE@S318?7?5?$CF?42f?5?7?7?$AA@", double noundef %74)
  %76 = load float, ptr %9, align 4
  %77 = load i32, ptr %8, align 4
  %78 = sitofp i32 %77 to float
  %79 = fadd float %76, %78
  %80 = fadd float %79, 1.000000e+00
  store float %80, ptr @temp, align 4
  call void @check(i32 noundef -1)
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #11

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s319() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = call i32 @init(ptr noundef @"??_C@_05NDKDIGBM@s319?5?$AA@")
  %9 = call i32 @clock()
  store i32 %9, ptr %1, align 4
  store i32 0, ptr %6, align 4
  br label %10

10:                                               ; preds = %60, %0
  %11 = load i32, ptr %6, align 4
  %12 = icmp slt i32 %11, 512
  br i1 %12, label %13, label %63

13:                                               ; preds = %10
  store float 0.000000e+00, ptr %5, align 4
  store i32 0, ptr %7, align 4
  br label %14

14:                                               ; preds = %54, %13
  %15 = load i32, ptr %7, align 4
  %16 = icmp slt i32 %15, 32000
  br i1 %16, label %17, label %57

17:                                               ; preds = %14
  %18 = load i32, ptr %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %19
  %21 = load float, ptr %20, align 4
  %22 = load i32, ptr %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %23
  %25 = load float, ptr %24, align 4
  %26 = fadd float %21, %25
  %27 = load i32, ptr %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %28
  store float %26, ptr %29, align 4
  %30 = load i32, ptr %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %31
  %33 = load float, ptr %32, align 4
  %34 = load float, ptr %5, align 4
  %35 = fadd float %34, %33
  store float %35, ptr %5, align 4
  %36 = load i32, ptr %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %37
  %39 = load float, ptr %38, align 4
  %40 = load i32, ptr %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %41
  %43 = load float, ptr %42, align 4
  %44 = fadd float %39, %43
  %45 = load i32, ptr %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %46
  store float %44, ptr %47, align 4
  %48 = load i32, ptr %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %49
  %51 = load float, ptr %50, align 4
  %52 = load float, ptr %5, align 4
  %53 = fadd float %52, %51
  store float %53, ptr %5, align 4
  br label %54

54:                                               ; preds = %17
  %55 = load i32, ptr %7, align 4
  %56 = add i32 %55, 1
  store i32 %56, ptr %7, align 4
  br label %14, !llvm.loop !265

57:                                               ; preds = %14
  %58 = load float, ptr %5, align 4
  %59 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef %58)
  br label %60

60:                                               ; preds = %57
  %61 = load i32, ptr %6, align 4
  %62 = add i32 %61, 1
  store i32 %62, ptr %6, align 4
  br label %10, !llvm.loop !266

63:                                               ; preds = %10
  %64 = call i32 @clock()
  store i32 %64, ptr %2, align 4
  %65 = load i32, ptr %2, align 4
  %66 = load i32, ptr %1, align 4
  %67 = sub i32 %65, %66
  store i32 %67, ptr %3, align 4
  %68 = load i32, ptr %3, align 4
  %69 = sitofp i32 %68 to double
  %70 = fdiv double %69, 1.000000e+06
  store double %70, ptr %4, align 8
  %71 = load double, ptr %4, align 8
  %72 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@GCCHGKEE@S319?7?5?$CF?42f?5?7?7?$AA@", double noundef %71)
  %73 = load float, ptr %5, align 4
  store float %73, ptr @temp, align 4
  call void @check(i32 noundef -1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s3110() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = call i32 @init(ptr noundef @"??_C@_05JHHCMFPF@s3110?$AA@")
  %13 = call i32 @clock()
  store i32 %13, ptr %1, align 4
  store i32 0, ptr %9, align 4
  br label %14

14:                                               ; preds = %64, %0
  %15 = load i32, ptr %9, align 4
  %16 = icmp slt i32 %15, 100
  br i1 %16, label %17, label %67

17:                                               ; preds = %14
  %18 = load float, ptr @aa, align 16
  store float %18, ptr %7, align 4
  store i32 0, ptr %5, align 4
  store i32 0, ptr %6, align 4
  store i32 0, ptr %10, align 4
  br label %19

19:                                               ; preds = %51, %17
  %20 = load i32, ptr %10, align 4
  %21 = icmp slt i32 %20, 256
  br i1 %21, label %22, label %54

22:                                               ; preds = %19
  store i32 0, ptr %11, align 4
  br label %23

23:                                               ; preds = %47, %22
  %24 = load i32, ptr %11, align 4
  %25 = icmp slt i32 %24, 256
  br i1 %25, label %26, label %50

26:                                               ; preds = %23
  %27 = load i32, ptr %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %28
  %30 = load i32, ptr %11, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [256 x float], ptr %29, i64 0, i64 %31
  %33 = load float, ptr %32, align 4
  %34 = load float, ptr %7, align 4
  %35 = fcmp ogt float %33, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %26
  %37 = load i32, ptr %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %38
  %40 = load i32, ptr %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [256 x float], ptr %39, i64 0, i64 %41
  %43 = load float, ptr %42, align 4
  store float %43, ptr %7, align 4
  %44 = load i32, ptr %10, align 4
  store i32 %44, ptr %5, align 4
  %45 = load i32, ptr %11, align 4
  store i32 %45, ptr %6, align 4
  br label %46

46:                                               ; preds = %36, %26
  br label %47

47:                                               ; preds = %46
  %48 = load i32, ptr %11, align 4
  %49 = add i32 %48, 1
  store i32 %49, ptr %11, align 4
  br label %23, !llvm.loop !267

50:                                               ; preds = %23
  br label %51

51:                                               ; preds = %50
  %52 = load i32, ptr %10, align 4
  %53 = add i32 %52, 1
  store i32 %53, ptr %10, align 4
  br label %19, !llvm.loop !268

54:                                               ; preds = %19
  %55 = load float, ptr %7, align 4
  %56 = load i32, ptr %5, align 4
  %57 = sitofp i32 %56 to float
  %58 = fadd float %55, %57
  %59 = load i32, ptr %6, align 4
  %60 = sitofp i32 %59 to float
  %61 = fadd float %58, %60
  store float %61, ptr %8, align 4
  %62 = load float, ptr %8, align 4
  %63 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef %62)
  br label %64

64:                                               ; preds = %54
  %65 = load i32, ptr %9, align 4
  %66 = add i32 %65, 1
  store i32 %66, ptr %9, align 4
  br label %14, !llvm.loop !269

67:                                               ; preds = %14
  %68 = call i32 @clock()
  store i32 %68, ptr %2, align 4
  %69 = load i32, ptr %2, align 4
  %70 = load i32, ptr %1, align 4
  %71 = sub i32 %69, %70
  store i32 %71, ptr %3, align 4
  %72 = load i32, ptr %3, align 4
  %73 = sitofp i32 %72 to double
  %74 = fdiv double %73, 1.000000e+06
  store double %74, ptr %4, align 8
  %75 = load double, ptr %4, align 8
  %76 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@GMGHJKMI@S3110?7?5?$CF?42f?5?7?7?$AA@", double noundef %75)
  %77 = load float, ptr %7, align 4
  %78 = load i32, ptr %5, align 4
  %79 = sitofp i32 %78 to float
  %80 = fadd float %77, %79
  %81 = fadd float %80, 1.000000e+00
  %82 = load i32, ptr %6, align 4
  %83 = sitofp i32 %82 to float
  %84 = fadd float %81, %83
  %85 = fadd float %84, 1.000000e+00
  store float %85, ptr @temp, align 4
  call void @check(i32 noundef -1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s13110() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = call i32 @init(ptr noundef @"??_C@_05JHHCMFPF@s3110?$AA@")
  %13 = call i32 @clock()
  store i32 %13, ptr %1, align 4
  store i32 0, ptr %9, align 4
  br label %14

14:                                               ; preds = %62, %0
  %15 = load i32, ptr %9, align 4
  %16 = icmp slt i32 %15, 100
  br i1 %16, label %17, label %65

17:                                               ; preds = %14
  %18 = load float, ptr @aa, align 16
  store float %18, ptr %7, align 4
  store i32 0, ptr %5, align 4
  store i32 0, ptr %6, align 4
  store i32 0, ptr %10, align 4
  br label %19

19:                                               ; preds = %49, %17
  %20 = load i32, ptr %10, align 4
  %21 = icmp slt i32 %20, 256
  br i1 %21, label %22, label %52

22:                                               ; preds = %19
  store i32 0, ptr %11, align 4
  br label %23

23:                                               ; preds = %45, %22
  %24 = load i32, ptr %11, align 4
  %25 = icmp slt i32 %24, 256
  br i1 %25, label %26, label %48

26:                                               ; preds = %23
  %27 = load i32, ptr %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %28
  %30 = load i32, ptr %11, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [256 x float], ptr %29, i64 0, i64 %31
  %33 = load float, ptr %32, align 4
  %34 = load float, ptr %7, align 4
  %35 = fcmp ogt float %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %26
  %37 = load i32, ptr %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %38
  %40 = load i32, ptr %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [256 x float], ptr %39, i64 0, i64 %41
  %43 = load float, ptr %42, align 4
  store float %43, ptr %7, align 4
  br label %44

44:                                               ; preds = %36, %26
  br label %45

45:                                               ; preds = %44
  %46 = load i32, ptr %11, align 4
  %47 = add i32 %46, 1
  store i32 %47, ptr %11, align 4
  br label %23, !llvm.loop !270

48:                                               ; preds = %23
  br label %49

49:                                               ; preds = %48
  %50 = load i32, ptr %10, align 4
  %51 = add i32 %50, 1
  store i32 %51, ptr %10, align 4
  br label %19, !llvm.loop !271

52:                                               ; preds = %19
  %53 = load float, ptr %7, align 4
  %54 = load i32, ptr %5, align 4
  %55 = sitofp i32 %54 to float
  %56 = fadd float %53, %55
  %57 = load i32, ptr %6, align 4
  %58 = sitofp i32 %57 to float
  %59 = fadd float %56, %58
  store float %59, ptr %8, align 4
  %60 = load float, ptr %8, align 4
  %61 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef %60)
  br label %62

62:                                               ; preds = %52
  %63 = load i32, ptr %9, align 4
  %64 = add i32 %63, 1
  store i32 %64, ptr %9, align 4
  br label %14, !llvm.loop !272

65:                                               ; preds = %14
  %66 = call i32 @clock()
  store i32 %66, ptr %2, align 4
  %67 = load i32, ptr %2, align 4
  %68 = load i32, ptr %1, align 4
  %69 = sub i32 %67, %68
  store i32 %69, ptr %3, align 4
  %70 = load i32, ptr %3, align 4
  %71 = sitofp i32 %70 to double
  %72 = fdiv double %71, 1.000000e+06
  store double %72, ptr %4, align 8
  %73 = load double, ptr %4, align 8
  %74 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0BA@FMCGFKJO@S13110?7?5?$CF?42f?5?7?7?$AA@", double noundef %73)
  %75 = load float, ptr %7, align 4
  %76 = load i32, ptr %5, align 4
  %77 = sitofp i32 %76 to float
  %78 = fadd float %75, %77
  %79 = fadd float %78, 1.000000e+00
  %80 = load i32, ptr %6, align 4
  %81 = sitofp i32 %80 to float
  %82 = fadd float %79, %81
  %83 = fadd float %82, 1.000000e+00
  store float %83, ptr @temp, align 4
  call void @check(i32 noundef -1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s3111() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = call i32 @init(ptr noundef @"??_C@_05IOGJPELE@s3111?$AA@")
  %9 = call i32 @clock()
  store i32 %9, ptr %1, align 4
  store i32 0, ptr %6, align 4
  br label %10

10:                                               ; preds = %37, %0
  %11 = load i32, ptr %6, align 4
  %12 = icmp slt i32 %11, 128
  br i1 %12, label %13, label %40

13:                                               ; preds = %10
  store float 0.000000e+00, ptr %5, align 4
  store i32 0, ptr %7, align 4
  br label %14

14:                                               ; preds = %31, %13
  %15 = load i32, ptr %7, align 4
  %16 = icmp slt i32 %15, 32000
  br i1 %16, label %17, label %34

17:                                               ; preds = %14
  %18 = load i32, ptr %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %19
  %21 = load float, ptr %20, align 4
  %22 = fcmp ogt float %21, 0.000000e+00
  br i1 %22, label %23, label %30

23:                                               ; preds = %17
  %24 = load i32, ptr %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %25
  %27 = load float, ptr %26, align 4
  %28 = load float, ptr %5, align 4
  %29 = fadd float %28, %27
  store float %29, ptr %5, align 4
  br label %30

30:                                               ; preds = %23, %17
  br label %31

31:                                               ; preds = %30
  %32 = load i32, ptr %7, align 4
  %33 = add i32 %32, 1
  store i32 %33, ptr %7, align 4
  br label %14, !llvm.loop !273

34:                                               ; preds = %14
  %35 = load float, ptr %5, align 4
  %36 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef %35)
  br label %37

37:                                               ; preds = %34
  %38 = load i32, ptr %6, align 4
  %39 = add i32 %38, 1
  store i32 %39, ptr %6, align 4
  br label %10, !llvm.loop !274

40:                                               ; preds = %10
  %41 = call i32 @clock()
  store i32 %41, ptr %2, align 4
  %42 = load i32, ptr %2, align 4
  %43 = load i32, ptr %1, align 4
  %44 = sub i32 %42, %43
  store i32 %44, ptr %3, align 4
  %45 = load i32, ptr %3, align 4
  %46 = sitofp i32 %45 to double
  %47 = fdiv double %46, 1.000000e+06
  store double %47, ptr %4, align 8
  %48 = load double, ptr %4, align 8
  %49 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@KNOJEFAI@S3111?7?5?$CF?42f?5?7?7?$AA@", double noundef %48)
  %50 = load float, ptr %5, align 4
  store float %50, ptr @temp, align 4
  call void @check(i32 noundef -1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s3112() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = call i32 @init(ptr noundef @"??_C@_05KFEEKHHH@s3112?$AA@")
  %9 = call i32 @clock()
  store i32 %9, ptr %1, align 4
  store i32 0, ptr %6, align 4
  br label %10

10:                                               ; preds = %34, %0
  %11 = load i32, ptr %6, align 4
  %12 = icmp slt i32 %11, 256
  br i1 %12, label %13, label %37

13:                                               ; preds = %10
  store float 0.000000e+00, ptr %5, align 4
  store i32 0, ptr %7, align 4
  br label %14

14:                                               ; preds = %28, %13
  %15 = load i32, ptr %7, align 4
  %16 = icmp slt i32 %15, 32000
  br i1 %16, label %17, label %31

17:                                               ; preds = %14
  %18 = load i32, ptr %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %19
  %21 = load float, ptr %20, align 4
  %22 = load float, ptr %5, align 4
  %23 = fadd float %22, %21
  store float %23, ptr %5, align 4
  %24 = load float, ptr %5, align 4
  %25 = load i32, ptr %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %26
  store float %24, ptr %27, align 4
  br label %28

28:                                               ; preds = %17
  %29 = load i32, ptr %7, align 4
  %30 = add i32 %29, 1
  store i32 %30, ptr %7, align 4
  br label %14, !llvm.loop !275

31:                                               ; preds = %14
  %32 = load float, ptr %5, align 4
  %33 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef %32)
  br label %34

34:                                               ; preds = %31
  %35 = load i32, ptr %6, align 4
  %36 = add i32 %35, 1
  store i32 %36, ptr %6, align 4
  br label %10, !llvm.loop !276

37:                                               ; preds = %10
  %38 = call i32 @clock()
  store i32 %38, ptr %2, align 4
  %39 = load i32, ptr %2, align 4
  %40 = load i32, ptr %1, align 4
  %41 = sub i32 %39, %40
  store i32 %41, ptr %3, align 4
  %42 = load i32, ptr %3, align 4
  %43 = sitofp i32 %42 to double
  %44 = fdiv double %43, 1.000000e+06
  store double %44, ptr %4, align 8
  %45 = load double, ptr %4, align 8
  %46 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@DEALCDAJ@S3112?7?5?$CF?42f?5?7?7?$AA@", double noundef %45)
  %47 = load float, ptr %5, align 4
  store float %47, ptr @temp, align 4
  call void @check(i32 noundef -12)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s3113() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = call i32 @init(ptr noundef @"??_C@_05LMFPJGDG@s3113?$AA@")
  %9 = call i32 @clock()
  store i32 %9, ptr %1, align 4
  store i32 0, ptr %6, align 4
  br label %10

10:                                               ; preds = %46, %0
  %11 = load i32, ptr %6, align 4
  %12 = icmp slt i32 %11, 1024
  br i1 %12, label %13, label %49

13:                                               ; preds = %10
  %14 = load float, ptr @a, align 16
  %15 = fptosi float %14 to i32
  %16 = call i32 @llvm.abs.i32(i32 %15, i1 false)
  %17 = sitofp i32 %16 to float
  store float %17, ptr %5, align 4
  store i32 0, ptr %7, align 4
  br label %18

18:                                               ; preds = %40, %13
  %19 = load i32, ptr %7, align 4
  %20 = icmp slt i32 %19, 32000
  br i1 %20, label %21, label %43

21:                                               ; preds = %18
  %22 = load i32, ptr %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %23
  %25 = load float, ptr %24, align 4
  %26 = fptosi float %25 to i32
  %27 = call i32 @llvm.abs.i32(i32 %26, i1 false)
  %28 = sitofp i32 %27 to float
  %29 = load float, ptr %5, align 4
  %30 = fcmp ogt float %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %21
  %32 = load i32, ptr %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %33
  %35 = load float, ptr %34, align 4
  %36 = fptosi float %35 to i32
  %37 = call i32 @llvm.abs.i32(i32 %36, i1 false)
  %38 = sitofp i32 %37 to float
  store float %38, ptr %5, align 4
  br label %39

39:                                               ; preds = %31, %21
  br label %40

40:                                               ; preds = %39
  %41 = load i32, ptr %7, align 4
  %42 = add i32 %41, 1
  store i32 %42, ptr %7, align 4
  br label %18, !llvm.loop !277

43:                                               ; preds = %18
  %44 = load float, ptr %5, align 4
  %45 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef %44)
  br label %46

46:                                               ; preds = %43
  %47 = load i32, ptr %6, align 4
  %48 = add i32 %47, 1
  store i32 %48, ptr %6, align 4
  br label %10, !llvm.loop !278

49:                                               ; preds = %10
  %50 = call i32 @clock()
  store i32 %50, ptr %2, align 4
  %51 = load i32, ptr %2, align 4
  %52 = load i32, ptr %1, align 4
  %53 = sub i32 %51, %52
  store i32 %53, ptr %3, align 4
  %54 = load i32, ptr %3, align 4
  %55 = sitofp i32 %54 to double
  %56 = fdiv double %55, 1.000000e+06
  store double %56, ptr %4, align 8
  %57 = load double, ptr %4, align 8
  %58 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@PFIFPMMJ@S3113?7?5?$CF?42f?5?7?7?$AA@", double noundef %57)
  %59 = load float, ptr %5, align 4
  store float %59, ptr @temp, align 4
  call void @check(i32 noundef -1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s321() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 @init(ptr noundef @"??_C@_05MPAFHIEK@s321?5?$AA@")
  %8 = call i32 @clock()
  store i32 %8, ptr %1, align 4
  store i32 0, ptr %5, align 4
  br label %9

9:                                                ; preds = %36, %0
  %10 = load i32, ptr %5, align 4
  %11 = icmp slt i32 %10, 256
  br i1 %11, label %12, label %39

12:                                               ; preds = %9
  store i32 1, ptr %6, align 4
  br label %13

13:                                               ; preds = %31, %12
  %14 = load i32, ptr %6, align 4
  %15 = icmp slt i32 %14, 32000
  br i1 %15, label %16, label %34

16:                                               ; preds = %13
  %17 = load i32, ptr %6, align 4
  %18 = sub i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %19
  %21 = load float, ptr %20, align 4
  %22 = load i32, ptr %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %23
  %25 = load float, ptr %24, align 4
  %26 = load i32, ptr %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %27
  %29 = load float, ptr %28, align 4
  %30 = call float @llvm.fmuladd.f32(float %21, float %25, float %29)
  store float %30, ptr %28, align 4
  br label %31

31:                                               ; preds = %16
  %32 = load i32, ptr %6, align 4
  %33 = add i32 %32, 1
  store i32 %33, ptr %6, align 4
  br label %13, !llvm.loop !279

34:                                               ; preds = %13
  %35 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %36

36:                                               ; preds = %34
  %37 = load i32, ptr %5, align 4
  %38 = add i32 %37, 1
  store i32 %38, ptr %5, align 4
  br label %9, !llvm.loop !280

39:                                               ; preds = %9
  %40 = call i32 @clock()
  store i32 %40, ptr %2, align 4
  %41 = load i32, ptr %2, align 4
  %42 = load i32, ptr %1, align 4
  %43 = sub i32 %41, %42
  store i32 %43, ptr %3, align 4
  %44 = load i32, ptr %3, align 4
  %45 = sitofp i32 %44 to double
  %46 = fdiv double %45, 1.000000e+06
  store double %46, ptr %4, align 8
  %47 = load double, ptr %4, align 8
  %48 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@KPHKFJPB@S321?7?5?$CF?42f?5?7?7?$AA@", double noundef %47)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s322() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 @init(ptr noundef @"??_C@_05MNEDMGBD@s322?5?$AA@")
  %8 = call i32 @clock()
  store i32 %8, ptr %1, align 4
  store i32 0, ptr %5, align 4
  br label %9

9:                                                ; preds = %49, %0
  %10 = load i32, ptr %5, align 4
  %11 = icmp slt i32 %10, 128
  br i1 %11, label %12, label %52

12:                                               ; preds = %9
  store i32 2, ptr %6, align 4
  br label %13

13:                                               ; preds = %44, %12
  %14 = load i32, ptr %6, align 4
  %15 = icmp slt i32 %14, 32000
  br i1 %15, label %16, label %47

16:                                               ; preds = %13
  %17 = load i32, ptr %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %18
  %20 = load float, ptr %19, align 4
  %21 = load i32, ptr %6, align 4
  %22 = sub i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %23
  %25 = load float, ptr %24, align 4
  %26 = load i32, ptr %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %27
  %29 = load float, ptr %28, align 4
  %30 = call float @llvm.fmuladd.f32(float %25, float %29, float %20)
  %31 = load i32, ptr %6, align 4
  %32 = sub i32 %31, 2
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %33
  %35 = load float, ptr %34, align 4
  %36 = load i32, ptr %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %37
  %39 = load float, ptr %38, align 4
  %40 = call float @llvm.fmuladd.f32(float %35, float %39, float %30)
  %41 = load i32, ptr %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %42
  store float %40, ptr %43, align 4
  br label %44

44:                                               ; preds = %16
  %45 = load i32, ptr %6, align 4
  %46 = add i32 %45, 1
  store i32 %46, ptr %6, align 4
  br label %13, !llvm.loop !281

47:                                               ; preds = %13
  %48 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %49

49:                                               ; preds = %47
  %50 = load i32, ptr %5, align 4
  %51 = add i32 %50, 1
  store i32 %51, ptr %5, align 4
  br label %9, !llvm.loop !282

52:                                               ; preds = %9
  %53 = call i32 @clock()
  store i32 %53, ptr %2, align 4
  %54 = load i32, ptr %2, align 4
  %55 = load i32, ptr %1, align 4
  %56 = sub i32 %54, %55
  store i32 %56, ptr %3, align 4
  %57 = load i32, ptr %3, align 4
  %58 = sitofp i32 %57 to double
  %59 = fdiv double %58, 1.000000e+06
  store double %59, ptr %4, align 8
  %60 = load double, ptr %4, align 8
  %61 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@DGJIDPPA@S322?7?5?$CF?42f?5?7?7?$AA@", double noundef %60)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s323() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 @init(ptr noundef @"??_C@_05MMIBKMCE@s323?5?$AA@")
  %8 = call i32 @clock()
  store i32 %8, ptr %1, align 4
  store i32 0, ptr %5, align 4
  br label %9

9:                                                ; preds = %55, %0
  %10 = load i32, ptr %5, align 4
  %11 = icmp slt i32 %10, 128
  br i1 %11, label %12, label %58

12:                                               ; preds = %9
  store i32 1, ptr %6, align 4
  br label %13

13:                                               ; preds = %50, %12
  %14 = load i32, ptr %6, align 4
  %15 = icmp slt i32 %14, 32000
  br i1 %15, label %16, label %53

16:                                               ; preds = %13
  %17 = load i32, ptr %6, align 4
  %18 = sub i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %19
  %21 = load float, ptr %20, align 4
  %22 = load i32, ptr %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %23
  %25 = load float, ptr %24, align 4
  %26 = load i32, ptr %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %27
  %29 = load float, ptr %28, align 4
  %30 = call float @llvm.fmuladd.f32(float %25, float %29, float %21)
  %31 = load i32, ptr %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %32
  store float %30, ptr %33, align 4
  %34 = load i32, ptr %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %35
  %37 = load float, ptr %36, align 4
  %38 = load i32, ptr %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %39
  %41 = load float, ptr %40, align 4
  %42 = load i32, ptr %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %43
  %45 = load float, ptr %44, align 4
  %46 = call float @llvm.fmuladd.f32(float %41, float %45, float %37)
  %47 = load i32, ptr %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %48
  store float %46, ptr %49, align 4
  br label %50

50:                                               ; preds = %16
  %51 = load i32, ptr %6, align 4
  %52 = add i32 %51, 1
  store i32 %52, ptr %6, align 4
  br label %13, !llvm.loop !283

53:                                               ; preds = %13
  %54 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %55

55:                                               ; preds = %53
  %56 = load i32, ptr %5, align 4
  %57 = add i32 %56, 1
  store i32 %57, ptr %5, align 4
  br label %9, !llvm.loop !284

58:                                               ; preds = %9
  %59 = call i32 @clock()
  store i32 %59, ptr %2, align 4
  %60 = load i32, ptr %2, align 4
  %61 = load i32, ptr %1, align 4
  %62 = sub i32 %60, %61
  store i32 %62, ptr %3, align 4
  %63 = load i32, ptr %3, align 4
  %64 = sitofp i32 %63 to double
  %65 = fdiv double %64, 1.000000e+06
  store double %65, ptr %4, align 8
  %66 = load double, ptr %4, align 8
  %67 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@PHBGOADA@S323?7?5?$CF?42f?5?7?7?$AA@", double noundef %66)
  call void @check(i32 noundef 12)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s331() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = call i32 @init(ptr noundef @"??_C@_05HHLJBPCP@s331?5?$AA@")
  %10 = call i32 @clock()
  store i32 %10, ptr %1, align 4
  store i32 0, ptr %7, align 4
  br label %11

11:                                               ; preds = %35, %0
  %12 = load i32, ptr %7, align 4
  %13 = icmp slt i32 %12, 256
  br i1 %13, label %14, label %38

14:                                               ; preds = %11
  store i32 -1, ptr %5, align 4
  store i32 0, ptr %8, align 4
  br label %15

15:                                               ; preds = %27, %14
  %16 = load i32, ptr %8, align 4
  %17 = icmp slt i32 %16, 32000
  br i1 %17, label %18, label %30

18:                                               ; preds = %15
  %19 = load i32, ptr %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %20
  %22 = load float, ptr %21, align 4
  %23 = fcmp olt float %22, 0.000000e+00
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, ptr %8, align 4
  store i32 %25, ptr %5, align 4
  br label %26

26:                                               ; preds = %24, %18
  br label %27

27:                                               ; preds = %26
  %28 = load i32, ptr %8, align 4
  %29 = add i32 %28, 1
  store i32 %29, ptr %8, align 4
  br label %15, !llvm.loop !285

30:                                               ; preds = %15
  %31 = load i32, ptr %5, align 4
  %32 = sitofp i32 %31 to float
  store float %32, ptr %6, align 4
  %33 = load float, ptr %6, align 4
  %34 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef %33)
  br label %35

35:                                               ; preds = %30
  %36 = load i32, ptr %7, align 4
  %37 = add i32 %36, 1
  store i32 %37, ptr %7, align 4
  br label %11, !llvm.loop !286

38:                                               ; preds = %11
  %39 = call i32 @clock()
  store i32 %39, ptr %2, align 4
  %40 = load i32, ptr %2, align 4
  %41 = load i32, ptr %1, align 4
  %42 = sub i32 %40, %41
  store i32 %42, ptr %3, align 4
  %43 = load i32, ptr %3, align 4
  %44 = sitofp i32 %43 to double
  %45 = fdiv double %44, 1.000000e+06
  store double %45, ptr %4, align 8
  %46 = load double, ptr %4, align 8
  %47 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@DENPBFJO@S331?7?5?$CF?42f?5?7?7?$AA@", double noundef %46)
  %48 = load i32, ptr %5, align 4
  %49 = add i32 %48, 1
  %50 = sitofp i32 %49 to float
  store float %50, ptr @temp, align 4
  call void @check(i32 noundef -1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @tsvc_max(i32 noundef %0, i32 noundef %1) #7 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %1, ptr %4, align 4
  store i32 %0, ptr %5, align 4
  %6 = load i32, ptr %4, align 4
  %7 = load i32, ptr %5, align 4
  %8 = icmp sgt i32 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, ptr %4, align 4
  store i32 %10, ptr %3, align 4
  br label %13

11:                                               ; preds = %2
  %12 = load i32, ptr %5, align 4
  store i32 %12, ptr %3, align 4
  br label %13

13:                                               ; preds = %11, %9
  %14 = load i32, ptr %3, align 4
  ret i32 %14
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s332(float noundef %0) #7 {
  %2 = alloca float, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store float %0, ptr %2, align 4
  %12 = call i32 @init(ptr noundef @"??_C@_05HFPPKBHG@s332?5?$AA@")
  %13 = call i32 @clock()
  store i32 %13, ptr %3, align 4
  store i32 0, ptr %10, align 4
  br label %14

14:                                               ; preds = %46, %1
  %15 = load i32, ptr %10, align 4
  %16 = icmp slt i32 %15, 256
  br i1 %16, label %17, label %49

17:                                               ; preds = %14
  store i32 -2, ptr %7, align 4
  store float -1.000000e+00, ptr %8, align 4
  store i32 0, ptr %11, align 4
  br label %18

18:                                               ; preds = %35, %17
  %19 = load i32, ptr %11, align 4
  %20 = icmp slt i32 %19, 32000
  br i1 %20, label %21, label %38

21:                                               ; preds = %18
  %22 = load i32, ptr %11, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %23
  %25 = load float, ptr %24, align 4
  %26 = load float, ptr %2, align 4
  %27 = fcmp ogt float %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %21
  %29 = load i32, ptr %11, align 4
  store i32 %29, ptr %7, align 4
  %30 = load i32, ptr %11, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %31
  %33 = load float, ptr %32, align 4
  store float %33, ptr %8, align 4
  br label %39

34:                                               ; preds = %21
  br label %35

35:                                               ; preds = %34
  %36 = load i32, ptr %11, align 4
  %37 = add i32 %36, 1
  store i32 %37, ptr %11, align 4
  br label %18, !llvm.loop !287

38:                                               ; preds = %18
  br label %39

39:                                               ; preds = %38, %28
  %40 = load float, ptr %8, align 4
  %41 = load i32, ptr %7, align 4
  %42 = sitofp i32 %41 to float
  %43 = fadd float %40, %42
  store float %43, ptr %9, align 4
  %44 = load float, ptr %9, align 4
  %45 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef %44)
  br label %46

46:                                               ; preds = %39
  %47 = load i32, ptr %10, align 4
  %48 = add i32 %47, 1
  store i32 %48, ptr %10, align 4
  br label %14, !llvm.loop !288

49:                                               ; preds = %14
  %50 = call i32 @clock()
  store i32 %50, ptr %4, align 4
  %51 = load i32, ptr %4, align 4
  %52 = load i32, ptr %3, align 4
  %53 = sub i32 %51, %52
  store i32 %53, ptr %5, align 4
  %54 = load i32, ptr %5, align 4
  %55 = sitofp i32 %54 to double
  %56 = fdiv double %55, 1.000000e+06
  store double %56, ptr %6, align 8
  %57 = load double, ptr %6, align 8
  %58 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@KNDNHDJP@S332?7?5?$CF?42f?5?7?7?$AA@", double noundef %57)
  %59 = load float, ptr %8, align 4
  store float %59, ptr @temp, align 4
  call void @check(i32 noundef -1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s341() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = call i32 @clock()
  store i32 %8, ptr %1, align 4
  %9 = call i32 @init(ptr noundef @"??_C@_05OKGOCHJG@s341?5?$AA@")
  %10 = call i32 @clock()
  store i32 %10, ptr %1, align 4
  store i32 0, ptr %6, align 4
  br label %11

11:                                               ; preds = %40, %0
  %12 = load i32, ptr %6, align 4
  %13 = icmp slt i32 %12, 256
  br i1 %13, label %14, label %43

14:                                               ; preds = %11
  store i32 -1, ptr %5, align 4
  store i32 0, ptr %7, align 4
  br label %15

15:                                               ; preds = %35, %14
  %16 = load i32, ptr %7, align 4
  %17 = icmp slt i32 %16, 32000
  br i1 %17, label %18, label %38

18:                                               ; preds = %15
  %19 = load i32, ptr %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %20
  %22 = load float, ptr %21, align 4
  %23 = fcmp ogt float %22, 0.000000e+00
  br i1 %23, label %24, label %34

24:                                               ; preds = %18
  %25 = load i32, ptr %5, align 4
  %26 = add i32 %25, 1
  store i32 %26, ptr %5, align 4
  %27 = load i32, ptr %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %28
  %30 = load float, ptr %29, align 4
  %31 = load i32, ptr %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %32
  store float %30, ptr %33, align 4
  br label %34

34:                                               ; preds = %24, %18
  br label %35

35:                                               ; preds = %34
  %36 = load i32, ptr %7, align 4
  %37 = add i32 %36, 1
  store i32 %37, ptr %7, align 4
  br label %15, !llvm.loop !289

38:                                               ; preds = %15
  %39 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %40

40:                                               ; preds = %38
  %41 = load i32, ptr %6, align 4
  %42 = add i32 %41, 1
  store i32 %42, ptr %6, align 4
  br label %11, !llvm.loop !290

43:                                               ; preds = %11
  %44 = call i32 @clock()
  store i32 %44, ptr %2, align 4
  %45 = load i32, ptr %2, align 4
  %46 = load i32, ptr %1, align 4
  %47 = sub i32 %45, %46
  store i32 %47, ptr %3, align 4
  %48 = load i32, ptr %3, align 4
  %49 = sitofp i32 %48 to double
  %50 = fdiv double %49, 1.000000e+06
  store double %50, ptr %4, align 8
  %51 = load double, ptr %4, align 8
  %52 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@EAEHPMBB@S341?7?5?$CF?42f?5?7?7?$AA@", double noundef %51)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s342() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = call i32 @clock()
  store i32 %8, ptr %1, align 4
  %9 = call i32 @init(ptr noundef @"??_C@_05OICIJJMP@s342?5?$AA@")
  %10 = call i32 @clock()
  store i32 %10, ptr %1, align 4
  store i32 0, ptr %5, align 4
  store i32 0, ptr %6, align 4
  br label %11

11:                                               ; preds = %40, %0
  %12 = load i32, ptr %6, align 4
  %13 = icmp slt i32 %12, 256
  br i1 %13, label %14, label %43

14:                                               ; preds = %11
  store i32 -1, ptr %5, align 4
  store i32 0, ptr %7, align 4
  br label %15

15:                                               ; preds = %35, %14
  %16 = load i32, ptr %7, align 4
  %17 = icmp slt i32 %16, 32000
  br i1 %17, label %18, label %38

18:                                               ; preds = %15
  %19 = load i32, ptr %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %20
  %22 = load float, ptr %21, align 4
  %23 = fcmp ogt float %22, 0.000000e+00
  br i1 %23, label %24, label %34

24:                                               ; preds = %18
  %25 = load i32, ptr %5, align 4
  %26 = add i32 %25, 1
  store i32 %26, ptr %5, align 4
  %27 = load i32, ptr %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %28
  %30 = load float, ptr %29, align 4
  %31 = load i32, ptr %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %32
  store float %30, ptr %33, align 4
  br label %34

34:                                               ; preds = %24, %18
  br label %35

35:                                               ; preds = %34
  %36 = load i32, ptr %7, align 4
  %37 = add i32 %36, 1
  store i32 %37, ptr %7, align 4
  br label %15, !llvm.loop !291

38:                                               ; preds = %15
  %39 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %40

40:                                               ; preds = %38
  %41 = load i32, ptr %6, align 4
  %42 = add i32 %41, 1
  store i32 %42, ptr %6, align 4
  br label %11, !llvm.loop !292

43:                                               ; preds = %11
  %44 = call i32 @clock()
  store i32 %44, ptr %2, align 4
  %45 = load i32, ptr %2, align 4
  %46 = load i32, ptr %1, align 4
  %47 = sub i32 %45, %46
  store i32 %47, ptr %3, align 4
  %48 = load i32, ptr %3, align 4
  %49 = sitofp i32 %48 to double
  %50 = fdiv double %49, 1.000000e+06
  store double %50, ptr %4, align 8
  %51 = load double, ptr %4, align 8
  %52 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@NJKFJKBA@S342?7?5?$CF?42f?5?7?7?$AA@", double noundef %51)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s343() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = call i32 @clock()
  store i32 %9, ptr %1, align 4
  %10 = call i32 @init(ptr noundef @"??_C@_05OJOKPDPI@s343?5?$AA@")
  %11 = call i32 @clock()
  store i32 %11, ptr %1, align 4
  store i32 0, ptr %6, align 4
  br label %12

12:                                               ; preds = %55, %0
  %13 = load i32, ptr %6, align 4
  %14 = icmp slt i32 %13, 10
  br i1 %14, label %15, label %58

15:                                               ; preds = %12
  store i32 -1, ptr %5, align 4
  store i32 0, ptr %7, align 4
  br label %16

16:                                               ; preds = %50, %15
  %17 = load i32, ptr %7, align 4
  %18 = icmp slt i32 %17, 256
  br i1 %18, label %19, label %53

19:                                               ; preds = %16
  store i32 0, ptr %8, align 4
  br label %20

20:                                               ; preds = %46, %19
  %21 = load i32, ptr %8, align 4
  %22 = icmp slt i32 %21, 256
  br i1 %22, label %23, label %49

23:                                               ; preds = %20
  %24 = load i32, ptr %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %25
  %27 = load i32, ptr %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [256 x float], ptr %26, i64 0, i64 %28
  %30 = load float, ptr %29, align 4
  %31 = fcmp ogt float %30, 0.000000e+00
  br i1 %31, label %32, label %45

32:                                               ; preds = %23
  %33 = load i32, ptr %5, align 4
  %34 = add i32 %33, 1
  store i32 %34, ptr %5, align 4
  %35 = load i32, ptr %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %36
  %38 = load i32, ptr %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [256 x float], ptr %37, i64 0, i64 %39
  %41 = load float, ptr %40, align 4
  %42 = load i32, ptr %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [65536 x float], ptr @array, i64 0, i64 %43
  store float %41, ptr %44, align 4
  br label %45

45:                                               ; preds = %32, %23
  br label %46

46:                                               ; preds = %45
  %47 = load i32, ptr %8, align 4
  %48 = add i32 %47, 1
  store i32 %48, ptr %8, align 4
  br label %20, !llvm.loop !293

49:                                               ; preds = %20
  br label %50

50:                                               ; preds = %49
  %51 = load i32, ptr %7, align 4
  %52 = add i32 %51, 1
  store i32 %52, ptr %7, align 4
  br label %16, !llvm.loop !294

53:                                               ; preds = %16
  %54 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %55

55:                                               ; preds = %53
  %56 = load i32, ptr %6, align 4
  %57 = add i32 %56, 1
  store i32 %57, ptr %6, align 4
  br label %12, !llvm.loop !295

58:                                               ; preds = %12
  %59 = call i32 @clock()
  store i32 %59, ptr %2, align 4
  %60 = load i32, ptr %2, align 4
  %61 = load i32, ptr %1, align 4
  %62 = sub i32 %60, %61
  store i32 %62, ptr %3, align 4
  %63 = load i32, ptr %3, align 4
  %64 = sitofp i32 %63 to double
  %65 = fdiv double %64, 1.000000e+06
  store double %65, ptr %4, align 8
  %66 = load double, ptr %4, align 8
  %67 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@BICLEFNA@S343?7?5?$CF?42f?5?7?7?$AA@", double noundef %66)
  call void @check(i32 noundef 0)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s351() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = call i32 @clock()
  store i32 %8, ptr %1, align 4
  %9 = call i32 @init(ptr noundef @"??_C@_05FCNCEAPD@s351?5?$AA@")
  %10 = call i32 @clock()
  store i32 %10, ptr %1, align 4
  %11 = load float, ptr @c, align 16
  store float %11, ptr %5, align 4
  store i32 0, ptr %6, align 4
  br label %12

12:                                               ; preds = %83, %0
  %13 = load i32, ptr %6, align 4
  %14 = icmp slt i32 %13, 2048
  br i1 %14, label %15, label %86

15:                                               ; preds = %12
  store i32 0, ptr %7, align 4
  br label %16

16:                                               ; preds = %78, %15
  %17 = load i32, ptr %7, align 4
  %18 = icmp slt i32 %17, 32000
  br i1 %18, label %19, label %81

19:                                               ; preds = %16
  %20 = load float, ptr %5, align 4
  %21 = load i32, ptr %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %22
  %24 = load float, ptr %23, align 4
  %25 = load i32, ptr %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %26
  %28 = load float, ptr %27, align 4
  %29 = call float @llvm.fmuladd.f32(float %20, float %24, float %28)
  store float %29, ptr %27, align 4
  %30 = load float, ptr %5, align 4
  %31 = load i32, ptr %7, align 4
  %32 = add i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %33
  %35 = load float, ptr %34, align 4
  %36 = load i32, ptr %7, align 4
  %37 = add i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %38
  %40 = load float, ptr %39, align 4
  %41 = call float @llvm.fmuladd.f32(float %30, float %35, float %40)
  store float %41, ptr %39, align 4
  %42 = load float, ptr %5, align 4
  %43 = load i32, ptr %7, align 4
  %44 = add i32 %43, 2
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %45
  %47 = load float, ptr %46, align 4
  %48 = load i32, ptr %7, align 4
  %49 = add i32 %48, 2
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %50
  %52 = load float, ptr %51, align 4
  %53 = call float @llvm.fmuladd.f32(float %42, float %47, float %52)
  store float %53, ptr %51, align 4
  %54 = load float, ptr %5, align 4
  %55 = load i32, ptr %7, align 4
  %56 = add i32 %55, 3
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %57
  %59 = load float, ptr %58, align 4
  %60 = load i32, ptr %7, align 4
  %61 = add i32 %60, 3
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %62
  %64 = load float, ptr %63, align 4
  %65 = call float @llvm.fmuladd.f32(float %54, float %59, float %64)
  store float %65, ptr %63, align 4
  %66 = load float, ptr %5, align 4
  %67 = load i32, ptr %7, align 4
  %68 = add i32 %67, 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %69
  %71 = load float, ptr %70, align 4
  %72 = load i32, ptr %7, align 4
  %73 = add i32 %72, 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %74
  %76 = load float, ptr %75, align 4
  %77 = call float @llvm.fmuladd.f32(float %66, float %71, float %76)
  store float %77, ptr %75, align 4
  br label %78

78:                                               ; preds = %19
  %79 = load i32, ptr %7, align 4
  %80 = add i32 %79, 5
  store i32 %80, ptr %7, align 4
  br label %16, !llvm.loop !296

81:                                               ; preds = %16
  %82 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %83

83:                                               ; preds = %81
  %84 = load i32, ptr %6, align 4
  %85 = add i32 %84, 1
  store i32 %85, ptr %6, align 4
  br label %12, !llvm.loop !297

86:                                               ; preds = %12
  %87 = call i32 @clock()
  store i32 %87, ptr %2, align 4
  %88 = load i32, ptr %2, align 4
  %89 = load i32, ptr %1, align 4
  %90 = sub i32 %88, %89
  store i32 %90, ptr %3, align 4
  %91 = load i32, ptr %3, align 4
  %92 = sitofp i32 %91 to double
  %93 = fdiv double %92, 1.000000e+06
  store double %93, ptr %4, align 8
  %94 = load double, ptr %4, align 8
  %95 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@NLOCLAHO@S351?7?5?$CF?42f?5?7?7?$AA@", double noundef %94)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s1351() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = call i32 @clock()
  store i32 %10, ptr %1, align 4
  %11 = call i32 @init(ptr noundef @"??_C@_05FCNCEAPD@s351?5?$AA@")
  %12 = call i32 @clock()
  store i32 %12, ptr %1, align 4
  store i32 0, ptr %5, align 4
  br label %13

13:                                               ; preds = %38, %0
  %14 = load i32, ptr %5, align 4
  %15 = icmp slt i32 %14, 2048
  br i1 %15, label %16, label %41

16:                                               ; preds = %13
  store ptr @a, ptr %6, align 8
  store ptr @b, ptr %7, align 8
  store ptr @c, ptr %8, align 8
  store i32 0, ptr %9, align 4
  br label %17

17:                                               ; preds = %33, %16
  %18 = load i32, ptr %9, align 4
  %19 = icmp slt i32 %18, 32000
  br i1 %19, label %20, label %36

20:                                               ; preds = %17
  %21 = load ptr, ptr %7, align 8
  %22 = load float, ptr %21, align 4
  %23 = load ptr, ptr %8, align 8
  %24 = load float, ptr %23, align 4
  %25 = fadd float %22, %24
  %26 = load ptr, ptr %6, align 8
  store float %25, ptr %26, align 4
  %27 = load ptr, ptr %6, align 8
  %28 = getelementptr inbounds nuw float, ptr %27, i32 1
  store ptr %28, ptr %6, align 8
  %29 = load ptr, ptr %7, align 8
  %30 = getelementptr inbounds nuw float, ptr %29, i32 1
  store ptr %30, ptr %7, align 8
  %31 = load ptr, ptr %8, align 8
  %32 = getelementptr inbounds nuw float, ptr %31, i32 1
  store ptr %32, ptr %8, align 8
  br label %33

33:                                               ; preds = %20
  %34 = load i32, ptr %9, align 4
  %35 = add i32 %34, 1
  store i32 %35, ptr %9, align 4
  br label %17, !llvm.loop !298

36:                                               ; preds = %17
  %37 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %38

38:                                               ; preds = %36
  %39 = load i32, ptr %5, align 4
  %40 = add i32 %39, 1
  store i32 %40, ptr %5, align 4
  br label %13, !llvm.loop !299

41:                                               ; preds = %13
  %42 = call i32 @clock()
  store i32 %42, ptr %2, align 4
  %43 = load i32, ptr %2, align 4
  %44 = load i32, ptr %1, align 4
  %45 = sub i32 %43, %44
  store i32 %45, ptr %3, align 4
  %46 = load i32, ptr %3, align 4
  %47 = sitofp i32 %46 to double
  %48 = fdiv double %47, 1.000000e+06
  store double %48, ptr %4, align 8
  %49 = load double, ptr %4, align 8
  %50 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@CPNNAPJB@S1351?7?5?$CF?42f?5?7?7?$AA@", double noundef %49)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s352() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = call i32 @clock()
  store i32 %8, ptr %1, align 4
  %9 = call i32 @init(ptr noundef @"??_C@_05FAJEPOKK@s352?5?$AA@")
  %10 = call i32 @clock()
  store i32 %10, ptr %1, align 4
  store i32 0, ptr %6, align 4
  br label %11

11:                                               ; preds = %79, %0
  %12 = load i32, ptr %6, align 4
  %13 = icmp slt i32 %12, 2048
  br i1 %13, label %14, label %82

14:                                               ; preds = %11
  store float 0.000000e+00, ptr %5, align 4
  store i32 0, ptr %7, align 4
  br label %15

15:                                               ; preds = %73, %14
  %16 = load i32, ptr %7, align 4
  %17 = icmp slt i32 %16, 32000
  br i1 %17, label %18, label %76

18:                                               ; preds = %15
  %19 = load float, ptr %5, align 4
  %20 = load i32, ptr %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %21
  %23 = load float, ptr %22, align 4
  %24 = load i32, ptr %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %25
  %27 = load float, ptr %26, align 4
  %28 = call float @llvm.fmuladd.f32(float %23, float %27, float %19)
  %29 = load i32, ptr %7, align 4
  %30 = add i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %31
  %33 = load float, ptr %32, align 4
  %34 = load i32, ptr %7, align 4
  %35 = add i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %36
  %38 = load float, ptr %37, align 4
  %39 = call float @llvm.fmuladd.f32(float %33, float %38, float %28)
  %40 = load i32, ptr %7, align 4
  %41 = add i32 %40, 2
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %42
  %44 = load float, ptr %43, align 4
  %45 = load i32, ptr %7, align 4
  %46 = add i32 %45, 2
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %47
  %49 = load float, ptr %48, align 4
  %50 = call float @llvm.fmuladd.f32(float %44, float %49, float %39)
  %51 = load i32, ptr %7, align 4
  %52 = add i32 %51, 3
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %53
  %55 = load float, ptr %54, align 4
  %56 = load i32, ptr %7, align 4
  %57 = add i32 %56, 3
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %58
  %60 = load float, ptr %59, align 4
  %61 = call float @llvm.fmuladd.f32(float %55, float %60, float %50)
  %62 = load i32, ptr %7, align 4
  %63 = add i32 %62, 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %64
  %66 = load float, ptr %65, align 4
  %67 = load i32, ptr %7, align 4
  %68 = add i32 %67, 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %69
  %71 = load float, ptr %70, align 4
  %72 = call float @llvm.fmuladd.f32(float %66, float %71, float %61)
  store float %72, ptr %5, align 4
  br label %73

73:                                               ; preds = %18
  %74 = load i32, ptr %7, align 4
  %75 = add i32 %74, 5
  store i32 %75, ptr %7, align 4
  br label %15, !llvm.loop !300

76:                                               ; preds = %15
  %77 = load float, ptr %5, align 4
  %78 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef %77)
  br label %79

79:                                               ; preds = %76
  %80 = load i32, ptr %6, align 4
  %81 = add i32 %80, 1
  store i32 %81, ptr %6, align 4
  br label %11, !llvm.loop !301

82:                                               ; preds = %11
  %83 = call i32 @clock()
  store i32 %83, ptr %2, align 4
  %84 = load i32, ptr %2, align 4
  %85 = load i32, ptr %1, align 4
  %86 = sub i32 %84, %85
  store i32 %86, ptr %3, align 4
  %87 = load i32, ptr %3, align 4
  %88 = sitofp i32 %87 to double
  %89 = fdiv double %88, 1.000000e+06
  store double %89, ptr %4, align 8
  %90 = load double, ptr %4, align 8
  %91 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@ECAANGHP@S352?7?5?$CF?42f?5?7?7?$AA@", double noundef %90)
  %92 = load float, ptr %5, align 4
  store float %92, ptr @temp, align 4
  call void @check(i32 noundef -1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s353(ptr noalias noundef %0) #7 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  %10 = call i32 @clock()
  store i32 %10, ptr %3, align 4
  %11 = call i32 @init(ptr noundef @"??_C@_05FBFGJEJN@s353?5?$AA@")
  %12 = call i32 @clock()
  store i32 %12, ptr %3, align 4
  %13 = load float, ptr @c, align 16
  store float %13, ptr %7, align 4
  store i32 0, ptr %8, align 4
  br label %14

14:                                               ; preds = %105, %1
  %15 = load i32, ptr %8, align 4
  %16 = icmp slt i32 %15, 256
  br i1 %16, label %17, label %108

17:                                               ; preds = %14
  store i32 0, ptr %9, align 4
  br label %18

18:                                               ; preds = %100, %17
  %19 = load i32, ptr %9, align 4
  %20 = icmp slt i32 %19, 32000
  br i1 %20, label %21, label %103

21:                                               ; preds = %18
  %22 = load float, ptr %7, align 4
  %23 = load ptr, ptr %2, align 8
  %24 = load i32, ptr %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, ptr %23, i64 %25
  %27 = load i32, ptr %26, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %28
  %30 = load float, ptr %29, align 4
  %31 = load i32, ptr %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %32
  %34 = load float, ptr %33, align 4
  %35 = call float @llvm.fmuladd.f32(float %22, float %30, float %34)
  store float %35, ptr %33, align 4
  %36 = load float, ptr %7, align 4
  %37 = load ptr, ptr %2, align 8
  %38 = load i32, ptr %9, align 4
  %39 = add i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, ptr %37, i64 %40
  %42 = load i32, ptr %41, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %43
  %45 = load float, ptr %44, align 4
  %46 = load i32, ptr %9, align 4
  %47 = add i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %48
  %50 = load float, ptr %49, align 4
  %51 = call float @llvm.fmuladd.f32(float %36, float %45, float %50)
  store float %51, ptr %49, align 4
  %52 = load float, ptr %7, align 4
  %53 = load ptr, ptr %2, align 8
  %54 = load i32, ptr %9, align 4
  %55 = add i32 %54, 2
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, ptr %53, i64 %56
  %58 = load i32, ptr %57, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %59
  %61 = load float, ptr %60, align 4
  %62 = load i32, ptr %9, align 4
  %63 = add i32 %62, 2
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %64
  %66 = load float, ptr %65, align 4
  %67 = call float @llvm.fmuladd.f32(float %52, float %61, float %66)
  store float %67, ptr %65, align 4
  %68 = load float, ptr %7, align 4
  %69 = load ptr, ptr %2, align 8
  %70 = load i32, ptr %9, align 4
  %71 = add i32 %70, 3
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, ptr %69, i64 %72
  %74 = load i32, ptr %73, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %75
  %77 = load float, ptr %76, align 4
  %78 = load i32, ptr %9, align 4
  %79 = add i32 %78, 3
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %80
  %82 = load float, ptr %81, align 4
  %83 = call float @llvm.fmuladd.f32(float %68, float %77, float %82)
  store float %83, ptr %81, align 4
  %84 = load float, ptr %7, align 4
  %85 = load ptr, ptr %2, align 8
  %86 = load i32, ptr %9, align 4
  %87 = add i32 %86, 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, ptr %85, i64 %88
  %90 = load i32, ptr %89, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %91
  %93 = load float, ptr %92, align 4
  %94 = load i32, ptr %9, align 4
  %95 = add i32 %94, 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %96
  %98 = load float, ptr %97, align 4
  %99 = call float @llvm.fmuladd.f32(float %84, float %93, float %98)
  store float %99, ptr %97, align 4
  br label %100

100:                                              ; preds = %21
  %101 = load i32, ptr %9, align 4
  %102 = add i32 %101, 5
  store i32 %102, ptr %9, align 4
  br label %18, !llvm.loop !302

103:                                              ; preds = %18
  %104 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %105

105:                                              ; preds = %103
  %106 = load i32, ptr %8, align 4
  %107 = add i32 %106, 1
  store i32 %107, ptr %8, align 4
  br label %14, !llvm.loop !303

108:                                              ; preds = %14
  %109 = call i32 @clock()
  store i32 %109, ptr %4, align 4
  %110 = load i32, ptr %4, align 4
  %111 = load i32, ptr %3, align 4
  %112 = sub i32 %110, %111
  store i32 %112, ptr %5, align 4
  %113 = load i32, ptr %5, align 4
  %114 = sitofp i32 %113 to double
  %115 = fdiv double %114, 1.000000e+06
  store double %115, ptr %6, align 8
  %116 = load double, ptr %6, align 8
  %117 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@IDIOAJLP@S353?7?5?$CF?42f?5?7?7?$AA@", double noundef %116)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s421() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = load ptr, ptr @xx, align 8
  %9 = call i32 @set1d(ptr noundef %8, float noundef 1.000000e+00, i32 noundef 1)
  %10 = call i32 @init(ptr noundef @"??_C@_05HNCFKEFK@s421?5?$AA@")
  %11 = call i32 @clock()
  store i32 %11, ptr %1, align 4
  store i32 0, ptr %5, align 4
  br label %12

12:                                               ; preds = %41, %0
  %13 = load i32, ptr %5, align 4
  %14 = icmp slt i32 %13, 1024
  br i1 %14, label %15, label %44

15:                                               ; preds = %12
  %16 = load ptr, ptr @xx, align 8
  store ptr %16, ptr @yy, align 8
  store i32 0, ptr %6, align 4
  br label %17

17:                                               ; preds = %36, %15
  %18 = load i32, ptr %6, align 4
  %19 = icmp slt i32 %18, 31999
  br i1 %19, label %20, label %39

20:                                               ; preds = %17
  %21 = load ptr, ptr @yy, align 8
  %22 = load i32, ptr %6, align 4
  %23 = add i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds float, ptr %21, i64 %24
  %26 = load float, ptr %25, align 4
  %27 = load i32, ptr %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %28
  %30 = load float, ptr %29, align 4
  %31 = fadd float %26, %30
  %32 = load ptr, ptr @xx, align 8
  %33 = load i32, ptr %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds float, ptr %32, i64 %34
  store float %31, ptr %35, align 4
  br label %36

36:                                               ; preds = %20
  %37 = load i32, ptr %6, align 4
  %38 = add i32 %37, 1
  store i32 %38, ptr %6, align 4
  br label %17, !llvm.loop !304

39:                                               ; preds = %17
  %40 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 1.000000e+00)
  br label %41

41:                                               ; preds = %39
  %42 = load i32, ptr %5, align 4
  %43 = add i32 %42, 1
  store i32 %43, ptr %5, align 4
  br label %12, !llvm.loop !305

44:                                               ; preds = %12
  %45 = call i32 @clock()
  store i32 %45, ptr %2, align 4
  %46 = load i32, ptr %2, align 4
  %47 = load i32, ptr %1, align 4
  %48 = sub i32 %46, %47
  store i32 %48, ptr %3, align 4
  %49 = load i32, ptr %3, align 4
  %50 = sitofp i32 %49 to double
  %51 = fdiv double %50, 1.000000e+06
  store double %51, ptr %4, align 8
  %52 = load double, ptr %4, align 8
  %53 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@NCAJFPKJ@S421?7?5?$CF?42f?5?7?7?$AA@", double noundef %52)
  store float 0.000000e+00, ptr @temp, align 4
  store i32 0, ptr %7, align 4
  br label %54

54:                                               ; preds = %65, %44
  %55 = load i32, ptr %7, align 4
  %56 = icmp slt i32 %55, 32000
  br i1 %56, label %57, label %68

57:                                               ; preds = %54
  %58 = load ptr, ptr @xx, align 8
  %59 = load i32, ptr %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds float, ptr %58, i64 %60
  %62 = load float, ptr %61, align 4
  %63 = load float, ptr @temp, align 4
  %64 = fadd float %63, %62
  store float %64, ptr @temp, align 4
  br label %65

65:                                               ; preds = %57
  %66 = load i32, ptr %7, align 4
  %67 = add i32 %66, 1
  store i32 %67, ptr %7, align 4
  br label %54, !llvm.loop !306

68:                                               ; preds = %54
  call void @check(i32 noundef -1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s1421() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = load ptr, ptr @xx, align 8
  %9 = call i32 @set1d(ptr noundef %8, float noundef 1.000000e+00, i32 noundef 1)
  %10 = call i32 @init(ptr noundef @"??_C@_05HNCFKEFK@s421?5?$AA@")
  %11 = call i32 @clock()
  store i32 %11, ptr %1, align 4
  store ptr getelementptr inbounds nuw (i8, ptr @b, i64 64000), ptr @xx, align 8
  store i32 0, ptr %5, align 4
  br label %12

12:                                               ; preds = %38, %0
  %13 = load i32, ptr %5, align 4
  %14 = icmp slt i32 %13, 2048
  br i1 %14, label %15, label %41

15:                                               ; preds = %12
  store i32 0, ptr %6, align 4
  br label %16

16:                                               ; preds = %33, %15
  %17 = load i32, ptr %6, align 4
  %18 = icmp slt i32 %17, 16000
  br i1 %18, label %19, label %36

19:                                               ; preds = %16
  %20 = load ptr, ptr @xx, align 8
  %21 = load i32, ptr %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds float, ptr %20, i64 %22
  %24 = load float, ptr %23, align 4
  %25 = load i32, ptr %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %26
  %28 = load float, ptr %27, align 4
  %29 = fadd float %24, %28
  %30 = load i32, ptr %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %31
  store float %29, ptr %32, align 4
  br label %33

33:                                               ; preds = %19
  %34 = load i32, ptr %6, align 4
  %35 = add i32 %34, 1
  store i32 %35, ptr %6, align 4
  br label %16, !llvm.loop !307

36:                                               ; preds = %16
  %37 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 1.000000e+00)
  br label %38

38:                                               ; preds = %36
  %39 = load i32, ptr %5, align 4
  %40 = add i32 %39, 1
  store i32 %40, ptr %5, align 4
  br label %12, !llvm.loop !308

41:                                               ; preds = %12
  %42 = call i32 @clock()
  store i32 %42, ptr %2, align 4
  %43 = load i32, ptr %2, align 4
  %44 = load i32, ptr %1, align 4
  %45 = sub i32 %43, %44
  store i32 %45, ptr %3, align 4
  %46 = load i32, ptr %3, align 4
  %47 = sitofp i32 %46 to double
  %48 = fdiv double %47, 1.000000e+06
  store double %48, ptr %4, align 8
  %49 = load double, ptr %4, align 8
  %50 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@CGDGOAEG@S1421?7?5?$CF?42f?5?7?7?$AA@", double noundef %49)
  store float 0.000000e+00, ptr @temp, align 4
  store i32 0, ptr %7, align 4
  br label %51

51:                                               ; preds = %62, %41
  %52 = load i32, ptr %7, align 4
  %53 = icmp slt i32 %52, 16000
  br i1 %53, label %54, label %65

54:                                               ; preds = %51
  %55 = load ptr, ptr @xx, align 8
  %56 = load i32, ptr %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds float, ptr %55, i64 %57
  %59 = load float, ptr %58, align 4
  %60 = load float, ptr @temp, align 4
  %61 = fadd float %60, %59
  store float %61, ptr @temp, align 4
  br label %62

62:                                               ; preds = %54
  %63 = load i32, ptr %7, align 4
  %64 = add i32 %63, 1
  store i32 %64, ptr %7, align 4
  br label %51, !llvm.loop !309

65:                                               ; preds = %51
  call void @check(i32 noundef -1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s422() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr getelementptr inbounds nuw (i8, ptr @array, i64 16), ptr @xx, align 8
  %8 = load ptr, ptr @xx, align 8
  %9 = call i32 @set1d(ptr noundef %8, float noundef 0.000000e+00, i32 noundef 1)
  %10 = call i32 @init(ptr noundef @"??_C@_05HPGDBKAD@s422?5?$AA@")
  %11 = call i32 @clock()
  store i32 %11, ptr %1, align 4
  store i32 0, ptr %5, align 4
  br label %12

12:                                               ; preds = %39, %0
  %13 = load i32, ptr %5, align 4
  %14 = icmp slt i32 %13, 2048
  br i1 %14, label %15, label %42

15:                                               ; preds = %12
  store i32 0, ptr %6, align 4
  br label %16

16:                                               ; preds = %34, %15
  %17 = load i32, ptr %6, align 4
  %18 = icmp slt i32 %17, 32000
  br i1 %18, label %19, label %37

19:                                               ; preds = %16
  %20 = load i32, ptr %6, align 4
  %21 = add i32 %20, 8
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [65536 x float], ptr @array, i64 0, i64 %22
  %24 = load float, ptr %23, align 4
  %25 = load i32, ptr %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %26
  %28 = load float, ptr %27, align 4
  %29 = fadd float %24, %28
  %30 = load ptr, ptr @xx, align 8
  %31 = load i32, ptr %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds float, ptr %30, i64 %32
  store float %29, ptr %33, align 4
  br label %34

34:                                               ; preds = %19
  %35 = load i32, ptr %6, align 4
  %36 = add i32 %35, 1
  store i32 %36, ptr %6, align 4
  br label %16, !llvm.loop !310

37:                                               ; preds = %16
  %38 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %39

39:                                               ; preds = %37
  %40 = load i32, ptr %5, align 4
  %41 = add i32 %40, 1
  store i32 %41, ptr %5, align 4
  br label %12, !llvm.loop !311

42:                                               ; preds = %12
  %43 = call i32 @clock()
  store i32 %43, ptr %2, align 4
  %44 = load i32, ptr %2, align 4
  %45 = load i32, ptr %1, align 4
  %46 = sub i32 %44, %45
  store i32 %46, ptr %3, align 4
  %47 = load i32, ptr %3, align 4
  %48 = sitofp i32 %47 to double
  %49 = fdiv double %48, 1.000000e+06
  store double %49, ptr %4, align 8
  %50 = load double, ptr %4, align 8
  %51 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@ELOLDJKI@S422?7?5?$CF?42f?5?7?7?$AA@", double noundef %50)
  store float 0.000000e+00, ptr @temp, align 4
  store i32 0, ptr %7, align 4
  br label %52

52:                                               ; preds = %63, %42
  %53 = load i32, ptr %7, align 4
  %54 = icmp slt i32 %53, 32000
  br i1 %54, label %55, label %66

55:                                               ; preds = %52
  %56 = load ptr, ptr @xx, align 8
  %57 = load i32, ptr %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds float, ptr %56, i64 %58
  %60 = load float, ptr %59, align 4
  %61 = load float, ptr @temp, align 4
  %62 = fadd float %61, %60
  store float %62, ptr @temp, align 4
  br label %63

63:                                               ; preds = %55
  %64 = load i32, ptr %7, align 4
  %65 = add i32 %64, 1
  store i32 %65, ptr %7, align 4
  br label %52, !llvm.loop !312

66:                                               ; preds = %52
  call void @check(i32 noundef -1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s423() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 64, ptr %1, align 4
  %9 = load i32, ptr %1, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds float, ptr @array, i64 %10
  store ptr %11, ptr @xx, align 8
  %12 = load ptr, ptr @xx, align 8
  %13 = call i32 @set1d(ptr noundef %12, float noundef 1.000000e+00, i32 noundef 1)
  %14 = call i32 @init(ptr noundef @"??_C@_05HOKBHADE@s423?5?$AA@")
  %15 = call i32 @clock()
  store i32 %15, ptr %2, align 4
  store i32 0, ptr %6, align 4
  br label %16

16:                                               ; preds = %43, %0
  %17 = load i32, ptr %6, align 4
  %18 = icmp slt i32 %17, 1024
  br i1 %18, label %19, label %46

19:                                               ; preds = %16
  store i32 0, ptr %7, align 4
  br label %20

20:                                               ; preds = %38, %19
  %21 = load i32, ptr %7, align 4
  %22 = icmp slt i32 %21, 31999
  br i1 %22, label %23, label %41

23:                                               ; preds = %20
  %24 = load ptr, ptr @xx, align 8
  %25 = load i32, ptr %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds float, ptr %24, i64 %26
  %28 = load float, ptr %27, align 4
  %29 = load i32, ptr %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %30
  %32 = load float, ptr %31, align 4
  %33 = fadd float %28, %32
  %34 = load i32, ptr %7, align 4
  %35 = add i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [65536 x float], ptr @array, i64 0, i64 %36
  store float %33, ptr %37, align 4
  br label %38

38:                                               ; preds = %23
  %39 = load i32, ptr %7, align 4
  %40 = add i32 %39, 1
  store i32 %40, ptr %7, align 4
  br label %20, !llvm.loop !313

41:                                               ; preds = %20
  %42 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 1.000000e+00)
  br label %43

43:                                               ; preds = %41
  %44 = load i32, ptr %6, align 4
  %45 = add i32 %44, 1
  store i32 %45, ptr %6, align 4
  br label %16, !llvm.loop !314

46:                                               ; preds = %16
  %47 = call i32 @clock()
  store i32 %47, ptr %3, align 4
  %48 = load i32, ptr %3, align 4
  %49 = load i32, ptr %2, align 4
  %50 = sub i32 %48, %49
  store i32 %50, ptr %4, align 4
  %51 = load i32, ptr %4, align 4
  %52 = sitofp i32 %51 to double
  %53 = fdiv double %52, 1.000000e+06
  store double %53, ptr %5, align 8
  %54 = load double, ptr %5, align 8
  %55 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@IKGFOGGI@S423?7?5?$CF?42f?5?7?7?$AA@", double noundef %54)
  store float 0.000000e+00, ptr @temp, align 4
  store i32 0, ptr %8, align 4
  br label %56

56:                                               ; preds = %66, %46
  %57 = load i32, ptr %8, align 4
  %58 = icmp slt i32 %57, 32000
  br i1 %58, label %59, label %69

59:                                               ; preds = %56
  %60 = load i32, ptr %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [65536 x float], ptr @array, i64 0, i64 %61
  %63 = load float, ptr %62, align 4
  %64 = load float, ptr @temp, align 4
  %65 = fadd float %64, %63
  store float %65, ptr @temp, align 4
  br label %66

66:                                               ; preds = %59
  %67 = load i32, ptr %8, align 4
  %68 = add i32 %67, 1
  store i32 %68, ptr %8, align 4
  br label %56, !llvm.loop !315

69:                                               ; preds = %56
  call void @check(i32 noundef -1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s424() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 63, ptr %1, align 4
  %9 = load i32, ptr %1, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds float, ptr @array, i64 %10
  store ptr %11, ptr @xx, align 8
  %12 = load ptr, ptr @xx, align 8
  %13 = call i32 @set1d(ptr noundef %12, float noundef 0.000000e+00, i32 noundef 1)
  %14 = call i32 @init(ptr noundef @"??_C@_05HLOOGGLB@s424?5?$AA@")
  %15 = call i32 @clock()
  store i32 %15, ptr %2, align 4
  store i32 0, ptr %6, align 4
  br label %16

16:                                               ; preds = %43, %0
  %17 = load i32, ptr %6, align 4
  %18 = icmp slt i32 %17, 1024
  br i1 %18, label %19, label %46

19:                                               ; preds = %16
  store i32 0, ptr %7, align 4
  br label %20

20:                                               ; preds = %38, %19
  %21 = load i32, ptr %7, align 4
  %22 = icmp slt i32 %21, 31999
  br i1 %22, label %23, label %41

23:                                               ; preds = %20
  %24 = load i32, ptr %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [65536 x float], ptr @array, i64 0, i64 %25
  %27 = load float, ptr %26, align 4
  %28 = load i32, ptr %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %29
  %31 = load float, ptr %30, align 4
  %32 = fadd float %27, %31
  %33 = load ptr, ptr @xx, align 8
  %34 = load i32, ptr %7, align 4
  %35 = add i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds float, ptr %33, i64 %36
  store float %32, ptr %37, align 4
  br label %38

38:                                               ; preds = %23
  %39 = load i32, ptr %7, align 4
  %40 = add i32 %39, 1
  store i32 %40, ptr %7, align 4
  br label %20, !llvm.loop !316

41:                                               ; preds = %20
  %42 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 1.000000e+00)
  br label %43

43:                                               ; preds = %41
  %44 = load i32, ptr %6, align 4
  %45 = add i32 %44, 1
  store i32 %45, ptr %6, align 4
  br label %16, !llvm.loop !317

46:                                               ; preds = %16
  %47 = call i32 @clock()
  store i32 %47, ptr %3, align 4
  %48 = load i32, ptr %3, align 4
  %49 = load i32, ptr %2, align 4
  %50 = sub i32 %48, %49
  store i32 %50, ptr %4, align 4
  %51 = load i32, ptr %4, align 4
  %52 = sitofp i32 %51 to double
  %53 = fdiv double %52, 1.000000e+06
  store double %53, ptr %5, align 8
  %54 = load double, ptr %5, align 8
  %55 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@KDFOPDOL@S424?7?5?$CF?42f?5?7?7?$AA@", double noundef %54)
  store float 0.000000e+00, ptr @temp, align 4
  store i32 0, ptr %8, align 4
  br label %56

56:                                               ; preds = %67, %46
  %57 = load i32, ptr %8, align 4
  %58 = icmp slt i32 %57, 32000
  br i1 %58, label %59, label %70

59:                                               ; preds = %56
  %60 = load ptr, ptr @xx, align 8
  %61 = load i32, ptr %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds float, ptr %60, i64 %62
  %64 = load float, ptr %63, align 4
  %65 = load float, ptr @temp, align 4
  %66 = fadd float %65, %64
  store float %66, ptr @temp, align 4
  br label %67

67:                                               ; preds = %59
  %68 = load i32, ptr %8, align 4
  %69 = add i32 %68, 1
  store i32 %69, ptr %8, align 4
  br label %56, !llvm.loop !318

70:                                               ; preds = %56
  call void @check(i32 noundef -1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s431() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 1, ptr %1, align 4
  store i32 2, ptr %2, align 4
  %10 = load i32, ptr %1, align 4
  %11 = mul i32 2, %10
  %12 = load i32, ptr %2, align 4
  %13 = sub i32 %11, %12
  store i32 %13, ptr %3, align 4
  %14 = call i32 @init(ptr noundef @"??_C@_05MFJJMDDP@s431?5?$AA@")
  %15 = call i32 @clock()
  store i32 %15, ptr %4, align 4
  store i32 0, ptr %8, align 4
  br label %16

16:                                               ; preds = %43, %0
  %17 = load i32, ptr %8, align 4
  %18 = icmp slt i32 %17, 2560
  br i1 %18, label %19, label %46

19:                                               ; preds = %16
  store i32 0, ptr %9, align 4
  br label %20

20:                                               ; preds = %38, %19
  %21 = load i32, ptr %9, align 4
  %22 = icmp slt i32 %21, 32000
  br i1 %22, label %23, label %41

23:                                               ; preds = %20
  %24 = load i32, ptr %9, align 4
  %25 = load i32, ptr %3, align 4
  %26 = add i32 %24, %25
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %27
  %29 = load float, ptr %28, align 4
  %30 = load i32, ptr %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %31
  %33 = load float, ptr %32, align 4
  %34 = fadd float %29, %33
  %35 = load i32, ptr %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %36
  store float %34, ptr %37, align 4
  br label %38

38:                                               ; preds = %23
  %39 = load i32, ptr %9, align 4
  %40 = add i32 %39, 1
  store i32 %40, ptr %9, align 4
  br label %20, !llvm.loop !319

41:                                               ; preds = %20
  %42 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %43

43:                                               ; preds = %41
  %44 = load i32, ptr %8, align 4
  %45 = add i32 %44, 1
  store i32 %45, ptr %8, align 4
  br label %16, !llvm.loop !320

46:                                               ; preds = %16
  %47 = call i32 @clock()
  store i32 %47, ptr %5, align 4
  %48 = load i32, ptr %5, align 4
  %49 = load i32, ptr %4, align 4
  %50 = sub i32 %48, %49
  store i32 %50, ptr %6, align 4
  %51 = load i32, ptr %6, align 4
  %52 = sitofp i32 %51 to double
  %53 = fdiv double %52, 1.000000e+06
  store double %53, ptr %7, align 8
  %54 = load double, ptr %7, align 8
  %55 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@EJKMBDMG@S431?7?5?$CF?42f?5?7?7?$AA@", double noundef %54)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s441() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 @init(ptr noundef @"??_C@_05FIEOPLIG@s441?5?$AA@")
  %8 = call i32 @clock()
  store i32 %8, ptr %1, align 4
  store i32 0, ptr %5, align 4
  br label %9

9:                                                ; preds = %77, %0
  %10 = load i32, ptr %5, align 4
  %11 = icmp slt i32 %10, 256
  br i1 %11, label %12, label %80

12:                                               ; preds = %9
  store i32 0, ptr %6, align 4
  br label %13

13:                                               ; preds = %72, %12
  %14 = load i32, ptr %6, align 4
  %15 = icmp slt i32 %14, 32000
  br i1 %15, label %16, label %75

16:                                               ; preds = %13
  %17 = load i32, ptr %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %18
  %20 = load float, ptr %19, align 4
  %21 = fcmp olt float %20, 0.000000e+00
  br i1 %21, label %22, label %36

22:                                               ; preds = %16
  %23 = load i32, ptr %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %24
  %26 = load float, ptr %25, align 4
  %27 = load i32, ptr %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %28
  %30 = load float, ptr %29, align 4
  %31 = load i32, ptr %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %32
  %34 = load float, ptr %33, align 4
  %35 = call float @llvm.fmuladd.f32(float %26, float %30, float %34)
  store float %35, ptr %33, align 4
  br label %71

36:                                               ; preds = %16
  %37 = load i32, ptr %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %38
  %40 = load float, ptr %39, align 4
  %41 = fcmp oeq float %40, 0.000000e+00
  br i1 %41, label %42, label %56

42:                                               ; preds = %36
  %43 = load i32, ptr %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %44
  %46 = load float, ptr %45, align 4
  %47 = load i32, ptr %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %48
  %50 = load float, ptr %49, align 4
  %51 = load i32, ptr %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %52
  %54 = load float, ptr %53, align 4
  %55 = call float @llvm.fmuladd.f32(float %46, float %50, float %54)
  store float %55, ptr %53, align 4
  br label %70

56:                                               ; preds = %36
  %57 = load i32, ptr %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %58
  %60 = load float, ptr %59, align 4
  %61 = load i32, ptr %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %62
  %64 = load float, ptr %63, align 4
  %65 = load i32, ptr %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %66
  %68 = load float, ptr %67, align 4
  %69 = call float @llvm.fmuladd.f32(float %60, float %64, float %68)
  store float %69, ptr %67, align 4
  br label %70

70:                                               ; preds = %56, %42
  br label %71

71:                                               ; preds = %70, %22
  br label %72

72:                                               ; preds = %71
  %73 = load i32, ptr %6, align 4
  %74 = add i32 %73, 1
  store i32 %74, ptr %6, align 4
  br label %13, !llvm.loop !321

75:                                               ; preds = %13
  %76 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %77

77:                                               ; preds = %75
  %78 = load i32, ptr %5, align 4
  %79 = add i32 %78, 1
  store i32 %79, ptr %5, align 4
  br label %9, !llvm.loop !322

80:                                               ; preds = %9
  %81 = call i32 @clock()
  store i32 %81, ptr %2, align 4
  %82 = load i32, ptr %2, align 4
  %83 = load i32, ptr %1, align 4
  %84 = sub i32 %82, %83
  store i32 %84, ptr %3, align 4
  %85 = load i32, ptr %3, align 4
  %86 = sitofp i32 %85 to double
  %87 = fdiv double %86, 1.000000e+06
  store double %87, ptr %4, align 8
  %88 = load double, ptr %4, align 8
  %89 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@DNDEPKEJ@S441?7?5?$CF?42f?5?7?7?$AA@", double noundef %88)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s442() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 @init(ptr noundef @"??_C@_05FKAIEFNP@s442?5?$AA@")
  %8 = call i32 @clock()
  store i32 %8, ptr %1, align 4
  store i32 0, ptr %5, align 4
  br label %9

9:                                                ; preds = %88, %0
  %10 = load i32, ptr %5, align 4
  %11 = icmp slt i32 %10, 128
  br i1 %11, label %12, label %91

12:                                               ; preds = %9
  store i32 0, ptr %6, align 4
  br label %13

13:                                               ; preds = %83, %12
  %14 = load i32, ptr %6, align 4
  %15 = icmp slt i32 %14, 32000
  br i1 %15, label %16, label %86

16:                                               ; preds = %13
  %17 = load i32, ptr %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [32000 x i32], ptr @indx, i64 0, i64 %18
  %20 = load i32, ptr %19, align 4
  switch i32 %20, label %25 [
    i32 1, label %21
    i32 2, label %22
    i32 3, label %23
    i32 4, label %24
  ]

21:                                               ; preds = %16
  br label %26

22:                                               ; preds = %16
  br label %40

23:                                               ; preds = %16
  br label %54

24:                                               ; preds = %16
  br label %68

25:                                               ; preds = %16
  br label %26

26:                                               ; preds = %25, %21
  %27 = load i32, ptr %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %28
  %30 = load float, ptr %29, align 4
  %31 = load i32, ptr %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %32
  %34 = load float, ptr %33, align 4
  %35 = load i32, ptr %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %36
  %38 = load float, ptr %37, align 4
  %39 = call float @llvm.fmuladd.f32(float %30, float %34, float %38)
  store float %39, ptr %37, align 4
  br label %82

40:                                               ; preds = %22
  %41 = load i32, ptr %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %42
  %44 = load float, ptr %43, align 4
  %45 = load i32, ptr %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %46
  %48 = load float, ptr %47, align 4
  %49 = load i32, ptr %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %50
  %52 = load float, ptr %51, align 4
  %53 = call float @llvm.fmuladd.f32(float %44, float %48, float %52)
  store float %53, ptr %51, align 4
  br label %82

54:                                               ; preds = %23
  %55 = load i32, ptr %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %56
  %58 = load float, ptr %57, align 4
  %59 = load i32, ptr %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %60
  %62 = load float, ptr %61, align 4
  %63 = load i32, ptr %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %64
  %66 = load float, ptr %65, align 4
  %67 = call float @llvm.fmuladd.f32(float %58, float %62, float %66)
  store float %67, ptr %65, align 4
  br label %82

68:                                               ; preds = %24
  %69 = load i32, ptr %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %70
  %72 = load float, ptr %71, align 4
  %73 = load i32, ptr %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %74
  %76 = load float, ptr %75, align 4
  %77 = load i32, ptr %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %78
  %80 = load float, ptr %79, align 4
  %81 = call float @llvm.fmuladd.f32(float %72, float %76, float %80)
  store float %81, ptr %79, align 4
  br label %82

82:                                               ; preds = %68, %54, %40, %26
  br label %83

83:                                               ; preds = %82
  %84 = load i32, ptr %6, align 4
  %85 = add i32 %84, 1
  store i32 %85, ptr %6, align 4
  br label %13, !llvm.loop !323

86:                                               ; preds = %13
  %87 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %88

88:                                               ; preds = %86
  %89 = load i32, ptr %5, align 4
  %90 = add i32 %89, 1
  store i32 %90, ptr %5, align 4
  br label %9, !llvm.loop !324

91:                                               ; preds = %9
  %92 = call i32 @clock()
  store i32 %92, ptr %2, align 4
  %93 = load i32, ptr %2, align 4
  %94 = load i32, ptr %1, align 4
  %95 = sub i32 %93, %94
  store i32 %95, ptr %3, align 4
  %96 = load i32, ptr %3, align 4
  %97 = sitofp i32 %96 to double
  %98 = fdiv double %97, 1.000000e+06
  store double %98, ptr %4, align 8
  %99 = load double, ptr %4, align 8
  %100 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@KENGJMEI@S442?7?5?$CF?42f?5?7?7?$AA@", double noundef %99)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s443() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 @init(ptr noundef @"??_C@_05FLMKCPOI@s443?5?$AA@")
  %8 = call i32 @clock()
  store i32 %8, ptr %1, align 4
  store i32 0, ptr %5, align 4
  br label %9

9:                                                ; preds = %58, %0
  %10 = load i32, ptr %5, align 4
  %11 = icmp slt i32 %10, 512
  br i1 %11, label %12, label %61

12:                                               ; preds = %9
  store i32 0, ptr %6, align 4
  br label %13

13:                                               ; preds = %53, %12
  %14 = load i32, ptr %6, align 4
  %15 = icmp slt i32 %14, 32000
  br i1 %15, label %16, label %56

16:                                               ; preds = %13
  %17 = load i32, ptr %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %18
  %20 = load float, ptr %19, align 4
  %21 = fcmp ole float %20, 0.000000e+00
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %24

23:                                               ; preds = %16
  br label %38

24:                                               ; preds = %22
  %25 = load i32, ptr %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %26
  %28 = load float, ptr %27, align 4
  %29 = load i32, ptr %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %30
  %32 = load float, ptr %31, align 4
  %33 = load i32, ptr %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %34
  %36 = load float, ptr %35, align 4
  %37 = call float @llvm.fmuladd.f32(float %28, float %32, float %36)
  store float %37, ptr %35, align 4
  br label %52

38:                                               ; preds = %23
  %39 = load i32, ptr %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %40
  %42 = load float, ptr %41, align 4
  %43 = load i32, ptr %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %44
  %46 = load float, ptr %45, align 4
  %47 = load i32, ptr %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %48
  %50 = load float, ptr %49, align 4
  %51 = call float @llvm.fmuladd.f32(float %42, float %46, float %50)
  store float %51, ptr %49, align 4
  br label %52

52:                                               ; preds = %38, %24
  br label %53

53:                                               ; preds = %52
  %54 = load i32, ptr %6, align 4
  %55 = add i32 %54, 1
  store i32 %55, ptr %6, align 4
  br label %13, !llvm.loop !325

56:                                               ; preds = %13
  %57 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %58

58:                                               ; preds = %56
  %59 = load i32, ptr %5, align 4
  %60 = add i32 %59, 1
  store i32 %60, ptr %5, align 4
  br label %9, !llvm.loop !326

61:                                               ; preds = %9
  %62 = call i32 @clock()
  store i32 %62, ptr %2, align 4
  %63 = load i32, ptr %2, align 4
  %64 = load i32, ptr %1, align 4
  %65 = sub i32 %63, %64
  store i32 %65, ptr %3, align 4
  %66 = load i32, ptr %3, align 4
  %67 = sitofp i32 %66 to double
  %68 = fdiv double %67, 1.000000e+06
  store double %68, ptr %4, align 8
  %69 = load double, ptr %4, align 8
  %70 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@GFFIEDII@S443?7?5?$CF?42f?5?7?7?$AA@", double noundef %69)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s451() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 @init(ptr noundef @"??_C@_05OAPCJMOD@s451?5?$AA@")
  %8 = call i32 @clock()
  store i32 %8, ptr %1, align 4
  store i32 0, ptr %5, align 4
  br label %9

9:                                                ; preds = %36, %0
  %10 = load i32, ptr %5, align 4
  %11 = icmp slt i32 %10, 51
  br i1 %11, label %12, label %39

12:                                               ; preds = %9
  store i32 0, ptr %6, align 4
  br label %13

13:                                               ; preds = %31, %12
  %14 = load i32, ptr %6, align 4
  %15 = icmp slt i32 %14, 32000
  br i1 %15, label %16, label %34

16:                                               ; preds = %13
  %17 = load i32, ptr %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %18
  %20 = load float, ptr %19, align 4
  %21 = call float @sinf(float noundef %20) #13
  %22 = load i32, ptr %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %23
  %25 = load float, ptr %24, align 4
  %26 = call float @cosf(float noundef %25) #13
  %27 = fadd float %21, %26
  %28 = load i32, ptr %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %29
  store float %27, ptr %30, align 4
  br label %31

31:                                               ; preds = %16
  %32 = load i32, ptr %6, align 4
  %33 = add i32 %32, 1
  store i32 %33, ptr %6, align 4
  br label %13, !llvm.loop !327

34:                                               ; preds = %13
  %35 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %36

36:                                               ; preds = %34
  %37 = load i32, ptr %5, align 4
  %38 = add i32 %37, 1
  store i32 %38, ptr %5, align 4
  br label %9, !llvm.loop !328

39:                                               ; preds = %9
  %40 = call i32 @clock()
  store i32 %40, ptr %2, align 4
  %41 = load i32, ptr %2, align 4
  %42 = load i32, ptr %1, align 4
  %43 = sub i32 %41, %42
  store i32 %43, ptr %3, align 4
  %44 = load i32, ptr %3, align 4
  %45 = sitofp i32 %44 to double
  %46 = fdiv double %45, 1.000000e+06
  store double %46, ptr %4, align 8
  %47 = load double, ptr %4, align 8
  %48 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@KGJBLGCG@S451?7?5?$CF?42f?5?7?7?$AA@", double noundef %47)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local float @sinf(float noundef) #8

; Function Attrs: nounwind
declare dso_local float @cosf(float noundef) #8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s452() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 @init(ptr noundef @"??_C@_05OCLECCLK@s452?5?$AA@")
  %8 = call i32 @clock()
  store i32 %8, ptr %1, align 4
  store i32 0, ptr %5, align 4
  br label %9

9:                                                ; preds = %37, %0
  %10 = load i32, ptr %5, align 4
  %11 = icmp slt i32 %10, 1024
  br i1 %11, label %12, label %40

12:                                               ; preds = %9
  store i32 0, ptr %6, align 4
  br label %13

13:                                               ; preds = %32, %12
  %14 = load i32, ptr %6, align 4
  %15 = icmp slt i32 %14, 32000
  br i1 %15, label %16, label %35

16:                                               ; preds = %13
  %17 = load i32, ptr %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %18
  %20 = load float, ptr %19, align 4
  %21 = load i32, ptr %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %22
  %24 = load float, ptr %23, align 4
  %25 = load i32, ptr %6, align 4
  %26 = add i32 %25, 1
  %27 = sitofp i32 %26 to float
  %28 = call float @llvm.fmuladd.f32(float %24, float %27, float %20)
  %29 = load i32, ptr %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %30
  store float %28, ptr %31, align 4
  br label %32

32:                                               ; preds = %16
  %33 = load i32, ptr %6, align 4
  %34 = add i32 %33, 1
  store i32 %34, ptr %6, align 4
  br label %13, !llvm.loop !329

35:                                               ; preds = %13
  %36 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %37

37:                                               ; preds = %35
  %38 = load i32, ptr %5, align 4
  %39 = add i32 %38, 1
  store i32 %39, ptr %5, align 4
  br label %9, !llvm.loop !330

40:                                               ; preds = %9
  %41 = call i32 @clock()
  store i32 %41, ptr %2, align 4
  %42 = load i32, ptr %2, align 4
  %43 = load i32, ptr %1, align 4
  %44 = sub i32 %42, %43
  store i32 %44, ptr %3, align 4
  %45 = load i32, ptr %3, align 4
  %46 = sitofp i32 %45 to double
  %47 = fdiv double %46, 1.000000e+06
  store double %47, ptr %4, align 8
  %48 = load double, ptr %4, align 8
  %49 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@DPHDNACH@S452?7?5?$CF?42f?5?7?7?$AA@", double noundef %48)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s453() #7 {
  %1 = alloca float, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = call i32 @init(ptr noundef @"??_C@_05ODHGEIIN@s453?5?$AA@")
  %9 = call i32 @clock()
  store i32 %9, ptr %2, align 4
  store i32 0, ptr %6, align 4
  br label %10

10:                                               ; preds = %34, %0
  %11 = load i32, ptr %6, align 4
  %12 = icmp slt i32 %11, 512
  br i1 %12, label %13, label %37

13:                                               ; preds = %10
  store float 0.000000e+00, ptr %1, align 4
  store i32 0, ptr %7, align 4
  br label %14

14:                                               ; preds = %29, %13
  %15 = load i32, ptr %7, align 4
  %16 = icmp slt i32 %15, 32000
  br i1 %16, label %17, label %32

17:                                               ; preds = %14
  %18 = load float, ptr %1, align 4
  %19 = fadd float %18, 2.000000e+00
  store float %19, ptr %1, align 4
  %20 = load float, ptr %1, align 4
  %21 = load i32, ptr %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %22
  %24 = load float, ptr %23, align 4
  %25 = fmul float %20, %24
  %26 = load i32, ptr %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %27
  store float %25, ptr %28, align 4
  br label %29

29:                                               ; preds = %17
  %30 = load i32, ptr %7, align 4
  %31 = add i32 %30, 1
  store i32 %31, ptr %7, align 4
  br label %14, !llvm.loop !331

32:                                               ; preds = %14
  %33 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %34

34:                                               ; preds = %32
  %35 = load i32, ptr %6, align 4
  %36 = add i32 %35, 1
  store i32 %36, ptr %6, align 4
  br label %10, !llvm.loop !332

37:                                               ; preds = %10
  %38 = call i32 @clock()
  store i32 %38, ptr %3, align 4
  %39 = load i32, ptr %3, align 4
  %40 = load i32, ptr %2, align 4
  %41 = sub i32 %39, %40
  store i32 %41, ptr %4, align 4
  %42 = load i32, ptr %4, align 4
  %43 = sitofp i32 %42 to double
  %44 = fdiv double %43, 1.000000e+06
  store double %44, ptr %5, align 8
  %45 = load double, ptr %5, align 8
  %46 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@POPNAPOH@S453?7?5?$CF?42f?5?7?7?$AA@", double noundef %45)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s471() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 32000, ptr %1, align 4
  %9 = call i32 @set1d(ptr noundef @x, float noundef 0.000000e+00, i32 noundef 1)
  %10 = call i32 @init(ptr noundef @"??_C@_05EKPLFEGI@s471?5?$AA@")
  %11 = call i32 @clock()
  store i32 %11, ptr %2, align 4
  store i32 0, ptr %6, align 4
  br label %12

12:                                               ; preds = %59, %0
  %13 = load i32, ptr %6, align 4
  %14 = icmp slt i32 %13, 128
  br i1 %14, label %15, label %62

15:                                               ; preds = %12
  store i32 0, ptr %7, align 4
  br label %16

16:                                               ; preds = %54, %15
  %17 = load i32, ptr %7, align 4
  %18 = load i32, ptr %1, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %57

20:                                               ; preds = %16
  %21 = load i32, ptr %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %22
  %24 = load float, ptr %23, align 4
  %25 = load i32, ptr %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %26
  %28 = load float, ptr %27, align 4
  %29 = load i32, ptr %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %30
  %32 = load float, ptr %31, align 4
  %33 = call float @llvm.fmuladd.f32(float %28, float %32, float %24)
  %34 = load i32, ptr %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [32000 x float], ptr @x, i64 0, i64 %35
  store float %33, ptr %36, align 4
  %37 = call i32 @s471s()
  %38 = load i32, ptr %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %39
  %41 = load float, ptr %40, align 4
  %42 = load i32, ptr %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %43
  %45 = load float, ptr %44, align 4
  %46 = load i32, ptr %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %47
  %49 = load float, ptr %48, align 4
  %50 = call float @llvm.fmuladd.f32(float %45, float %49, float %41)
  %51 = load i32, ptr %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %52
  store float %50, ptr %53, align 4
  br label %54

54:                                               ; preds = %20
  %55 = load i32, ptr %7, align 4
  %56 = add i32 %55, 1
  store i32 %56, ptr %7, align 4
  br label %16, !llvm.loop !333

57:                                               ; preds = %16
  %58 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %59

59:                                               ; preds = %57
  %60 = load i32, ptr %6, align 4
  %61 = add i32 %60, 1
  store i32 %61, ptr %6, align 4
  br label %12, !llvm.loop !334

62:                                               ; preds = %12
  %63 = call i32 @clock()
  store i32 %63, ptr %3, align 4
  %64 = load i32, ptr %3, align 4
  %65 = load i32, ptr %2, align 4
  %66 = sub i32 %64, %65
  store i32 %66, ptr %4, align 4
  %67 = load i32, ptr %4, align 4
  %68 = sitofp i32 %67 to double
  %69 = fdiv double %68, 1.000000e+06
  store double %69, ptr %5, align 8
  %70 = load double, ptr %5, align 8
  %71 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@EKKKCILJ@S471?7?5?$CF?42f?5?7?7?$AA@", double noundef %70)
  store float 0.000000e+00, ptr @temp, align 4
  store i32 0, ptr %8, align 4
  br label %72

72:                                               ; preds = %82, %62
  %73 = load i32, ptr %8, align 4
  %74 = icmp slt i32 %73, 32000
  br i1 %74, label %75, label %85

75:                                               ; preds = %72
  %76 = load i32, ptr %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [32000 x float], ptr @x, i64 0, i64 %77
  %79 = load float, ptr %78, align 4
  %80 = load float, ptr @temp, align 4
  %81 = fadd float %80, %79
  store float %81, ptr @temp, align 4
  br label %82

82:                                               ; preds = %75
  %83 = load i32, ptr %8, align 4
  %84 = add i32 %83, 1
  store i32 %84, ptr %8, align 4
  br label %72, !llvm.loop !335

85:                                               ; preds = %72
  call void @check(i32 noundef -12)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i32 @s471s() #7 comdat {
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s481() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 @init(ptr noundef @"??_C@_05BCJIEEDO@s481?5?$AA@")
  %8 = call i32 @clock()
  store i32 %8, ptr %1, align 4
  store i32 0, ptr %5, align 4
  br label %9

9:                                                ; preds = %42, %0
  %10 = load i32, ptr %5, align 4
  %11 = icmp slt i32 %10, 256
  br i1 %11, label %12, label %45

12:                                               ; preds = %9
  store i32 0, ptr %6, align 4
  br label %13

13:                                               ; preds = %37, %12
  %14 = load i32, ptr %6, align 4
  %15 = icmp slt i32 %14, 32000
  br i1 %15, label %16, label %40

16:                                               ; preds = %13
  %17 = load i32, ptr %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %18
  %20 = load float, ptr %19, align 4
  %21 = fcmp olt float %20, 0.000000e+00
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  call void @exit(i32 noundef 0) #14
  unreachable

23:                                               ; preds = %16
  %24 = load i32, ptr %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %25
  %27 = load float, ptr %26, align 4
  %28 = load i32, ptr %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %29
  %31 = load float, ptr %30, align 4
  %32 = load i32, ptr %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %33
  %35 = load float, ptr %34, align 4
  %36 = call float @llvm.fmuladd.f32(float %27, float %31, float %35)
  store float %36, ptr %34, align 4
  br label %37

37:                                               ; preds = %23
  %38 = load i32, ptr %6, align 4
  %39 = add i32 %38, 1
  store i32 %39, ptr %6, align 4
  br label %13, !llvm.loop !336

40:                                               ; preds = %13
  %41 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %42

42:                                               ; preds = %40
  %43 = load i32, ptr %5, align 4
  %44 = add i32 %43, 1
  store i32 %44, ptr %5, align 4
  br label %9, !llvm.loop !337

45:                                               ; preds = %9
  %46 = call i32 @clock()
  store i32 %46, ptr %2, align 4
  %47 = load i32, ptr %2, align 4
  %48 = load i32, ptr %1, align 4
  %49 = sub i32 %47, %48
  store i32 %49, ptr %3, align 4
  %50 = load i32, ptr %3, align 4
  %51 = sitofp i32 %50 to double
  %52 = fdiv double %51, 1.000000e+06
  store double %52, ptr %4, align 8
  %53 = load double, ptr %4, align 8
  %54 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@DIDOLHMI@S481?7?5?$CF?42f?5?7?7?$AA@", double noundef %53)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #12

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s482() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 @init(ptr noundef @"??_C@_05BANOPKGH@s482?5?$AA@")
  %8 = call i32 @clock()
  store i32 %8, ptr %1, align 4
  store i32 0, ptr %5, align 4
  br label %9

9:                                                ; preds = %46, %0
  %10 = load i32, ptr %5, align 4
  %11 = icmp slt i32 %10, 256
  br i1 %11, label %12, label %49

12:                                               ; preds = %9
  store i32 0, ptr %6, align 4
  br label %13

13:                                               ; preds = %41, %12
  %14 = load i32, ptr %6, align 4
  %15 = icmp slt i32 %14, 32000
  br i1 %15, label %16, label %44

16:                                               ; preds = %13
  %17 = load i32, ptr %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %18
  %20 = load float, ptr %19, align 4
  %21 = load i32, ptr %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %22
  %24 = load float, ptr %23, align 4
  %25 = load i32, ptr %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %26
  %28 = load float, ptr %27, align 4
  %29 = call float @llvm.fmuladd.f32(float %20, float %24, float %28)
  store float %29, ptr %27, align 4
  %30 = load i32, ptr %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %31
  %33 = load float, ptr %32, align 4
  %34 = load i32, ptr %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %35
  %37 = load float, ptr %36, align 4
  %38 = fcmp ogt float %33, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %16
  br label %44

40:                                               ; preds = %16
  br label %41

41:                                               ; preds = %40
  %42 = load i32, ptr %6, align 4
  %43 = add i32 %42, 1
  store i32 %43, ptr %6, align 4
  br label %13, !llvm.loop !338

44:                                               ; preds = %39, %13
  %45 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %46

46:                                               ; preds = %44
  %47 = load i32, ptr %5, align 4
  %48 = add i32 %47, 1
  store i32 %48, ptr %5, align 4
  br label %9, !llvm.loop !339

49:                                               ; preds = %9
  %50 = call i32 @clock()
  store i32 %50, ptr %2, align 4
  %51 = load i32, ptr %2, align 4
  %52 = load i32, ptr %1, align 4
  %53 = sub i32 %51, %52
  store i32 %53, ptr %3, align 4
  %54 = load i32, ptr %3, align 4
  %55 = sitofp i32 %54 to double
  %56 = fdiv double %55, 1.000000e+06
  store double %56, ptr %4, align 8
  %57 = load double, ptr %4, align 8
  %58 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@KBNMNBMJ@S482?7?5?$CF?42f?5?7?7?$AA@", double noundef %57)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @tsvc_min(i32 noundef %0, i32 noundef %1) #7 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %1, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  %5 = load i32, ptr %4, align 4
  %6 = load i32, ptr %3, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, ptr %4, align 4
  br label %12

10:                                               ; preds = %2
  %11 = load i32, ptr %3, align 4
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  ret i32 %13
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s491(ptr noalias noundef %0) #7 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  %9 = call i32 @init(ptr noundef @"??_C@_05KKCECDFL@s491?5?$AA@")
  %10 = call i32 @clock()
  store i32 %10, ptr %3, align 4
  store i32 0, ptr %7, align 4
  br label %11

11:                                               ; preds = %44, %1
  %12 = load i32, ptr %7, align 4
  %13 = icmp slt i32 %12, 256
  br i1 %13, label %14, label %47

14:                                               ; preds = %11
  store i32 0, ptr %8, align 4
  br label %15

15:                                               ; preds = %39, %14
  %16 = load i32, ptr %8, align 4
  %17 = icmp slt i32 %16, 32000
  br i1 %17, label %18, label %42

18:                                               ; preds = %15
  %19 = load i32, ptr %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %20
  %22 = load float, ptr %21, align 4
  %23 = load i32, ptr %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %24
  %26 = load float, ptr %25, align 4
  %27 = load i32, ptr %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %28
  %30 = load float, ptr %29, align 4
  %31 = call float @llvm.fmuladd.f32(float %26, float %30, float %22)
  %32 = load ptr, ptr %2, align 8
  %33 = load i32, ptr %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, ptr %32, i64 %34
  %36 = load i32, ptr %35, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %37
  store float %31, ptr %38, align 4
  br label %39

39:                                               ; preds = %18
  %40 = load i32, ptr %8, align 4
  %41 = add i32 %40, 1
  store i32 %41, ptr %8, align 4
  br label %15, !llvm.loop !340

42:                                               ; preds = %15
  %43 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %44

44:                                               ; preds = %42
  %45 = load i32, ptr %7, align 4
  %46 = add i32 %45, 1
  store i32 %46, ptr %7, align 4
  br label %11, !llvm.loop !341

47:                                               ; preds = %11
  %48 = call i32 @clock()
  store i32 %48, ptr %4, align 4
  %49 = load i32, ptr %4, align 4
  %50 = load i32, ptr %3, align 4
  %51 = sub i32 %49, %50
  store i32 %51, ptr %5, align 4
  %52 = load i32, ptr %5, align 4
  %53 = sitofp i32 %52 to double
  %54 = fdiv double %53, 1.000000e+06
  store double %54, ptr %6, align 8
  %55 = load double, ptr %6, align 8
  %56 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@KDJLPLKH@S491?7?5?$CF?42f?5?7?7?$AA@", double noundef %55)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s4112(ptr noalias noundef %0, float noundef %1) #7 {
  %3 = alloca float, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store float %1, ptr %3, align 4
  store ptr %0, ptr %4, align 8
  %11 = call i32 @init(ptr noundef @"??_C@_05BHGEHLGH@s4112?$AA@")
  %12 = call i32 @clock()
  store i32 %12, ptr %5, align 4
  store i32 0, ptr %9, align 4
  br label %13

13:                                               ; preds = %40, %2
  %14 = load i32, ptr %9, align 4
  %15 = icmp slt i32 %14, 256
  br i1 %15, label %16, label %43

16:                                               ; preds = %13
  store i32 0, ptr %10, align 4
  br label %17

17:                                               ; preds = %35, %16
  %18 = load i32, ptr %10, align 4
  %19 = icmp slt i32 %18, 32000
  br i1 %19, label %20, label %38

20:                                               ; preds = %17
  %21 = load ptr, ptr %4, align 8
  %22 = load i32, ptr %10, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, ptr %21, i64 %23
  %25 = load i32, ptr %24, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %26
  %28 = load float, ptr %27, align 4
  %29 = load float, ptr %3, align 4
  %30 = load i32, ptr %10, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %31
  %33 = load float, ptr %32, align 4
  %34 = call float @llvm.fmuladd.f32(float %28, float %29, float %33)
  store float %34, ptr %32, align 4
  br label %35

35:                                               ; preds = %20
  %36 = load i32, ptr %10, align 4
  %37 = add i32 %36, 1
  store i32 %37, ptr %10, align 4
  br label %17, !llvm.loop !342

38:                                               ; preds = %17
  %39 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %40

40:                                               ; preds = %38
  %41 = load i32, ptr %9, align 4
  %42 = add i32 %41, 1
  store i32 %42, ptr %9, align 4
  br label %13, !llvm.loop !343

43:                                               ; preds = %13
  %44 = call i32 @clock()
  store i32 %44, ptr %6, align 4
  %45 = load i32, ptr %6, align 4
  %46 = load i32, ptr %5, align 4
  %47 = sub i32 %45, %46
  store i32 %47, ptr %7, align 4
  %48 = load i32, ptr %7, align 4
  %49 = sitofp i32 %48 to double
  %50 = fdiv double %49, 1.000000e+06
  store double %50, ptr %8, align 8
  %51 = load double, ptr %8, align 8
  %52 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@FBMGIJMJ@S4112?7?5?$CF?42f?5?7?7?$AA@", double noundef %51)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s4113(ptr noalias noundef %0) #7 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  %9 = call i32 @init(ptr noundef @"??_C@_05OHPEKCG@s4113?$AA@")
  %10 = call i32 @clock()
  store i32 %10, ptr %3, align 4
  store i32 0, ptr %7, align 4
  br label %11

11:                                               ; preds = %44, %1
  %12 = load i32, ptr %7, align 4
  %13 = icmp slt i32 %12, 256
  br i1 %13, label %14, label %47

14:                                               ; preds = %11
  store i32 0, ptr %8, align 4
  br label %15

15:                                               ; preds = %39, %14
  %16 = load i32, ptr %8, align 4
  %17 = icmp slt i32 %16, 32000
  br i1 %17, label %18, label %42

18:                                               ; preds = %15
  %19 = load ptr, ptr %2, align 8
  %20 = load i32, ptr %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, ptr %19, i64 %21
  %23 = load i32, ptr %22, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %24
  %26 = load float, ptr %25, align 4
  %27 = load i32, ptr %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %28
  %30 = load float, ptr %29, align 4
  %31 = fadd float %26, %30
  %32 = load ptr, ptr %2, align 8
  %33 = load i32, ptr %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, ptr %32, i64 %34
  %36 = load i32, ptr %35, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %37
  store float %31, ptr %38, align 4
  br label %39

39:                                               ; preds = %18
  %40 = load i32, ptr %8, align 4
  %41 = add i32 %40, 1
  store i32 %41, ptr %8, align 4
  br label %15, !llvm.loop !344

42:                                               ; preds = %15
  %43 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %44

44:                                               ; preds = %42
  %45 = load i32, ptr %7, align 4
  %46 = add i32 %45, 1
  store i32 %46, ptr %7, align 4
  br label %11, !llvm.loop !345

47:                                               ; preds = %11
  %48 = call i32 @clock()
  store i32 %48, ptr %4, align 4
  %49 = load i32, ptr %4, align 4
  %50 = load i32, ptr %3, align 4
  %51 = sub i32 %49, %50
  store i32 %51, ptr %5, align 4
  %52 = load i32, ptr %5, align 4
  %53 = sitofp i32 %52 to double
  %54 = fdiv double %53, 1.000000e+06
  store double %54, ptr %6, align 8
  %55 = load double, ptr %6, align 8
  %56 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@JAEIFGAJ@S4113?7?5?$CF?42f?5?7?7?$AA@", double noundef %55)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s4114(ptr noundef %0, i32 noundef %1) #7 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %1, ptr %3, align 4
  store ptr %0, ptr %4, align 8
  %12 = call i32 @init(ptr noundef @"??_C@_05EBDONMOB@s4114?$AA@")
  %13 = call i32 @clock()
  store i32 %13, ptr %5, align 4
  store i32 0, ptr %10, align 4
  br label %14

14:                                               ; preds = %55, %2
  %15 = load i32, ptr %10, align 4
  %16 = icmp slt i32 %15, 256
  br i1 %16, label %17, label %58

17:                                               ; preds = %14
  %18 = load i32, ptr %3, align 4
  %19 = sub i32 %18, 1
  store i32 %19, ptr %11, align 4
  br label %20

20:                                               ; preds = %50, %17
  %21 = load i32, ptr %11, align 4
  %22 = icmp slt i32 %21, 32000
  br i1 %22, label %23, label %53

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 8
  %25 = load i32, ptr %11, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, ptr %24, i64 %26
  %28 = load i32, ptr %27, align 4
  store i32 %28, ptr %9, align 4
  %29 = load i32, ptr %11, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %30
  %32 = load float, ptr %31, align 4
  %33 = load i32, ptr %9, align 4
  %34 = sub i32 32000, %33
  %35 = add i32 %34, 1
  %36 = sub i32 %35, 2
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %37
  %39 = load float, ptr %38, align 4
  %40 = load i32, ptr %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %41
  %43 = load float, ptr %42, align 4
  %44 = call float @llvm.fmuladd.f32(float %39, float %43, float %32)
  %45 = load i32, ptr %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %46
  store float %44, ptr %47, align 4
  %48 = load i32, ptr %9, align 4
  %49 = add i32 %48, 5
  store i32 %49, ptr %9, align 4
  br label %50

50:                                               ; preds = %23
  %51 = load i32, ptr %11, align 4
  %52 = add i32 %51, 1
  store i32 %52, ptr %11, align 4
  br label %20, !llvm.loop !346

53:                                               ; preds = %20
  %54 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %55

55:                                               ; preds = %53
  %56 = load i32, ptr %10, align 4
  %57 = add i32 %56, 1
  store i32 %57, ptr %10, align 4
  br label %14, !llvm.loop !347

58:                                               ; preds = %14
  %59 = call i32 @clock()
  store i32 %59, ptr %6, align 4
  %60 = load i32, ptr %6, align 4
  %61 = load i32, ptr %5, align 4
  %62 = sub i32 %60, %61
  store i32 %62, ptr %7, align 4
  %63 = load i32, ptr %7, align 4
  %64 = sitofp i32 %63 to double
  %65 = fdiv double %64, 1.000000e+06
  store double %65, ptr %8, align 8
  %66 = load double, ptr %8, align 8
  %67 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@LJHDEDIK@S4114?7?5?$CF?42f?5?7?7?$AA@", double noundef %66)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s4115(ptr noalias noundef %0) #7 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  %10 = call i32 @init(ptr noundef @"??_C@_05FICFONKA@s4115?$AA@")
  %11 = call i32 @clock()
  store i32 %11, ptr %3, align 4
  store i32 0, ptr %8, align 4
  br label %12

12:                                               ; preds = %39, %1
  %13 = load i32, ptr %8, align 4
  %14 = icmp slt i32 %13, 256
  br i1 %14, label %15, label %42

15:                                               ; preds = %12
  store float 0.000000e+00, ptr %7, align 4
  store i32 0, ptr %9, align 4
  br label %16

16:                                               ; preds = %34, %15
  %17 = load i32, ptr %9, align 4
  %18 = icmp slt i32 %17, 32000
  br i1 %18, label %19, label %37

19:                                               ; preds = %16
  %20 = load i32, ptr %9, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %21
  %23 = load float, ptr %22, align 4
  %24 = load ptr, ptr %2, align 8
  %25 = load i32, ptr %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, ptr %24, i64 %26
  %28 = load i32, ptr %27, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %29
  %31 = load float, ptr %30, align 4
  %32 = load float, ptr %7, align 4
  %33 = call float @llvm.fmuladd.f32(float %23, float %31, float %32)
  store float %33, ptr %7, align 4
  br label %34

34:                                               ; preds = %19
  %35 = load i32, ptr %9, align 4
  %36 = add i32 %35, 1
  store i32 %36, ptr %9, align 4
  br label %16, !llvm.loop !348

37:                                               ; preds = %16
  %38 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %39

39:                                               ; preds = %37
  %40 = load i32, ptr %8, align 4
  %41 = add i32 %40, 1
  store i32 %41, ptr %8, align 4
  br label %12, !llvm.loop !349

42:                                               ; preds = %12
  %43 = call i32 @clock()
  store i32 %43, ptr %4, align 4
  %44 = load i32, ptr %4, align 4
  %45 = load i32, ptr %3, align 4
  %46 = sub i32 %44, %45
  store i32 %46, ptr %5, align 4
  %47 = load i32, ptr %5, align 4
  %48 = sitofp i32 %47 to double
  %49 = fdiv double %48, 1.000000e+06
  store double %49, ptr %6, align 8
  %50 = load double, ptr %6, align 8
  %51 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@HIPNJMEK@S4115?7?5?$CF?42f?5?7?7?$AA@", double noundef %50)
  %52 = load float, ptr %7, align 4
  store float %52, ptr @temp, align 4
  call void @check(i32 noundef -1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s4116(ptr noalias noundef %0, i32 noundef %1, i32 noundef %2) #7 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca float, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %2, ptr %4, align 4
  store i32 %1, ptr %5, align 4
  store ptr %0, ptr %6, align 8
  %15 = call i32 @init(ptr noundef @"??_C@_05HDAILOGD@s4116?$AA@")
  %16 = call i32 @clock()
  store i32 %16, ptr %7, align 4
  store i32 0, ptr %13, align 4
  br label %17

17:                                               ; preds = %51, %3
  %18 = load i32, ptr %13, align 4
  %19 = icmp slt i32 %18, 25600
  br i1 %19, label %20, label %54

20:                                               ; preds = %17
  store float 0.000000e+00, ptr %11, align 4
  store i32 0, ptr %14, align 4
  br label %21

21:                                               ; preds = %46, %20
  %22 = load i32, ptr %14, align 4
  %23 = icmp slt i32 %22, 255
  br i1 %23, label %24, label %49

24:                                               ; preds = %21
  %25 = load i32, ptr %4, align 4
  %26 = load i32, ptr %14, align 4
  %27 = add i32 %25, %26
  store i32 %27, ptr %12, align 4
  %28 = load i32, ptr %12, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %29
  %31 = load float, ptr %30, align 4
  %32 = load i32, ptr %5, align 4
  %33 = sub i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %34
  %36 = load ptr, ptr %6, align 8
  %37 = load i32, ptr %14, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, ptr %36, i64 %38
  %40 = load i32, ptr %39, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [256 x float], ptr %35, i64 0, i64 %41
  %43 = load float, ptr %42, align 4
  %44 = load float, ptr %11, align 4
  %45 = call float @llvm.fmuladd.f32(float %31, float %43, float %44)
  store float %45, ptr %11, align 4
  br label %46

46:                                               ; preds = %24
  %47 = load i32, ptr %14, align 4
  %48 = add i32 %47, 1
  store i32 %48, ptr %14, align 4
  br label %21, !llvm.loop !350

49:                                               ; preds = %21
  %50 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %51

51:                                               ; preds = %49
  %52 = load i32, ptr %13, align 4
  %53 = add i32 %52, 1
  store i32 %53, ptr %13, align 4
  br label %17, !llvm.loop !351

54:                                               ; preds = %17
  %55 = call i32 @clock()
  store i32 %55, ptr %8, align 4
  %56 = load i32, ptr %8, align 4
  %57 = load i32, ptr %7, align 4
  %58 = sub i32 %56, %57
  store i32 %58, ptr %9, align 4
  %59 = load i32, ptr %9, align 4
  %60 = sitofp i32 %59 to double
  %61 = fdiv double %60, 1.000000e+06
  store double %61, ptr %10, align 8
  %62 = load double, ptr %10, align 8
  %63 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@OBBPPKEL@S4116?7?5?$CF?42f?5?7?7?$AA@", double noundef %62)
  %64 = load float, ptr %11, align 4
  store float %64, ptr @temp, align 4
  call void @check(i32 noundef -1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s4117() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 @init(ptr noundef @"??_C@_05GKBDIPCC@s4117?$AA@")
  %8 = call i32 @clock()
  store i32 %8, ptr %1, align 4
  store i32 0, ptr %5, align 4
  br label %9

9:                                                ; preds = %39, %0
  %10 = load i32, ptr %5, align 4
  %11 = icmp slt i32 %10, 256
  br i1 %11, label %12, label %42

12:                                               ; preds = %9
  store i32 0, ptr %6, align 4
  br label %13

13:                                               ; preds = %34, %12
  %14 = load i32, ptr %6, align 4
  %15 = icmp slt i32 %14, 32000
  br i1 %15, label %16, label %37

16:                                               ; preds = %13
  %17 = load i32, ptr %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %18
  %20 = load float, ptr %19, align 4
  %21 = load i32, ptr %6, align 4
  %22 = sdiv i32 %21, 2
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %23
  %25 = load float, ptr %24, align 4
  %26 = load i32, ptr %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %27
  %29 = load float, ptr %28, align 4
  %30 = call float @llvm.fmuladd.f32(float %25, float %29, float %20)
  %31 = load i32, ptr %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %32
  store float %30, ptr %33, align 4
  br label %34

34:                                               ; preds = %16
  %35 = load i32, ptr %6, align 4
  %36 = add i32 %35, 1
  store i32 %36, ptr %6, align 4
  br label %13, !llvm.loop !352

37:                                               ; preds = %13
  %38 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %39

39:                                               ; preds = %37
  %40 = load i32, ptr %5, align 4
  %41 = add i32 %40, 1
  store i32 %41, ptr %5, align 4
  br label %9, !llvm.loop !353

42:                                               ; preds = %9
  %43 = call i32 @clock()
  store i32 %43, ptr %2, align 4
  %44 = load i32, ptr %2, align 4
  %45 = load i32, ptr %1, align 4
  %46 = sub i32 %44, %45
  store i32 %46, ptr %3, align 4
  %47 = load i32, ptr %3, align 4
  %48 = sitofp i32 %47 to double
  %49 = fdiv double %48, 1.000000e+06
  store double %49, ptr %4, align 8
  %50 = load double, ptr %4, align 8
  %51 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@CAJBCFIL@S4117?7?5?$CF?42f?5?7?7?$AA@", double noundef %50)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s4121() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 @init(ptr noundef @"??_C@_05DOAPJGPN@s4121?$AA@")
  %8 = call i32 @clock()
  store i32 %8, ptr %1, align 4
  store i32 0, ptr %5, align 4
  br label %9

9:                                                ; preds = %36, %0
  %10 = load i32, ptr %5, align 4
  %11 = icmp slt i32 %10, 256
  br i1 %11, label %12, label %39

12:                                               ; preds = %9
  store i32 0, ptr %6, align 4
  br label %13

13:                                               ; preds = %31, %12
  %14 = load i32, ptr %6, align 4
  %15 = icmp slt i32 %14, 32000
  br i1 %15, label %16, label %34

16:                                               ; preds = %13
  %17 = load i32, ptr %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %18
  %20 = load float, ptr %19, align 4
  %21 = load i32, ptr %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %22
  %24 = load float, ptr %23, align 4
  %25 = call float @f(float noundef %24, float noundef %20)
  %26 = load i32, ptr %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %27
  %29 = load float, ptr %28, align 4
  %30 = fadd float %29, %25
  store float %30, ptr %28, align 4
  br label %31

31:                                               ; preds = %16
  %32 = load i32, ptr %6, align 4
  %33 = add i32 %32, 1
  store i32 %33, ptr %6, align 4
  br label %13, !llvm.loop !354

34:                                               ; preds = %13
  %35 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %36

36:                                               ; preds = %34
  %37 = load i32, ptr %5, align 4
  %38 = add i32 %37, 1
  store i32 %38, ptr %5, align 4
  br label %9, !llvm.loop !355

39:                                               ; preds = %9
  %40 = call i32 @clock()
  store i32 %40, ptr %2, align 4
  %41 = load i32, ptr %2, align 4
  %42 = load i32, ptr %1, align 4
  %43 = sub i32 %41, %42
  store i32 %43, ptr %3, align 4
  %44 = load i32, ptr %3, align 4
  %45 = sitofp i32 %44 to double
  %46 = fdiv double %45, 1.000000e+06
  store double %46, ptr %4, align 8
  %47 = load double, ptr %4, align 8
  %48 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@LPLKDNDI@S4121?7?5?$CF?42f?5?7?7?$AA@", double noundef %47)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local float @f(float noundef %0, float noundef %1) #7 comdat {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  store float %1, ptr %3, align 4
  store float %0, ptr %4, align 4
  %5 = load float, ptr %4, align 4
  %6 = load float, ptr %3, align 4
  %7 = fmul float %5, %6
  ret float %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @va() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 @init(ptr noundef @"??_C@_03IDIMFPN@va?7?$AA@")
  %8 = call i32 @clock()
  store i32 %8, ptr %1, align 4
  store i32 0, ptr %5, align 4
  br label %9

9:                                                ; preds = %29, %0
  %10 = load i32, ptr %5, align 4
  %11 = icmp slt i32 %10, 2560
  br i1 %11, label %12, label %32

12:                                               ; preds = %9
  store i32 0, ptr %6, align 4
  br label %13

13:                                               ; preds = %24, %12
  %14 = load i32, ptr %6, align 4
  %15 = icmp slt i32 %14, 32000
  br i1 %15, label %16, label %27

16:                                               ; preds = %13
  %17 = load i32, ptr %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %18
  %20 = load float, ptr %19, align 4
  %21 = load i32, ptr %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %22
  store float %20, ptr %23, align 4
  br label %24

24:                                               ; preds = %16
  %25 = load i32, ptr %6, align 4
  %26 = add i32 %25, 1
  store i32 %26, ptr %6, align 4
  br label %13, !llvm.loop !356

27:                                               ; preds = %13
  %28 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %29

29:                                               ; preds = %27
  %30 = load i32, ptr %5, align 4
  %31 = add i32 %30, 1
  store i32 %31, ptr %5, align 4
  br label %9, !llvm.loop !357

32:                                               ; preds = %9
  %33 = call i32 @clock()
  store i32 %33, ptr %2, align 4
  %34 = load i32, ptr %2, align 4
  %35 = load i32, ptr %1, align 4
  %36 = sub i32 %34, %35
  store i32 %36, ptr %3, align 4
  %37 = load i32, ptr %3, align 4
  %38 = sitofp i32 %37 to double
  %39 = fdiv double %38, 1.000000e+06
  store double %39, ptr %4, align 8
  %40 = load double, ptr %4, align 8
  %41 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0M@KPBGNIFF@va?7?5?$CF?42f?5?7?7?$AA@", double noundef %40)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @vag(ptr noalias noundef %0) #7 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  %9 = call i32 @init(ptr noundef @"??_C@_05DMCMEDIF@vag?5?5?$AA@")
  %10 = call i32 @clock()
  store i32 %10, ptr %3, align 4
  store i32 0, ptr %7, align 4
  br label %11

11:                                               ; preds = %35, %1
  %12 = load i32, ptr %7, align 4
  %13 = icmp slt i32 %12, 512
  br i1 %13, label %14, label %38

14:                                               ; preds = %11
  store i32 0, ptr %8, align 4
  br label %15

15:                                               ; preds = %30, %14
  %16 = load i32, ptr %8, align 4
  %17 = icmp slt i32 %16, 32000
  br i1 %17, label %18, label %33

18:                                               ; preds = %15
  %19 = load ptr, ptr %2, align 8
  %20 = load i32, ptr %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, ptr %19, i64 %21
  %23 = load i32, ptr %22, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %24
  %26 = load float, ptr %25, align 4
  %27 = load i32, ptr %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %28
  store float %26, ptr %29, align 4
  br label %30

30:                                               ; preds = %18
  %31 = load i32, ptr %8, align 4
  %32 = add i32 %31, 1
  store i32 %32, ptr %8, align 4
  br label %15, !llvm.loop !358

33:                                               ; preds = %15
  %34 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %35

35:                                               ; preds = %33
  %36 = load i32, ptr %7, align 4
  %37 = add i32 %36, 1
  store i32 %37, ptr %7, align 4
  br label %11, !llvm.loop !359

38:                                               ; preds = %11
  %39 = call i32 @clock()
  store i32 %39, ptr %4, align 4
  %40 = load i32, ptr %4, align 4
  %41 = load i32, ptr %3, align 4
  %42 = sub i32 %40, %41
  store i32 %42, ptr %5, align 4
  %43 = load i32, ptr %5, align 4
  %44 = sitofp i32 %43 to double
  %45 = fdiv double %44, 1.000000e+06
  store double %45, ptr %6, align 8
  %46 = load double, ptr %6, align 8
  %47 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0N@FBJDDFNB@vag?7?5?$CF?42f?5?7?7?$AA@", double noundef %46)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @vas(ptr noalias noundef %0) #7 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  %9 = call i32 @init(ptr noundef @"??_C@_05ODFHIDEN@vas?5?5?$AA@")
  %10 = call i32 @clock()
  store i32 %10, ptr %3, align 4
  store i32 0, ptr %7, align 4
  br label %11

11:                                               ; preds = %35, %1
  %12 = load i32, ptr %7, align 4
  %13 = icmp slt i32 %12, 512
  br i1 %13, label %14, label %38

14:                                               ; preds = %11
  store i32 0, ptr %8, align 4
  br label %15

15:                                               ; preds = %30, %14
  %16 = load i32, ptr %8, align 4
  %17 = icmp slt i32 %16, 32000
  br i1 %17, label %18, label %33

18:                                               ; preds = %15
  %19 = load i32, ptr %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %20
  %22 = load float, ptr %21, align 4
  %23 = load ptr, ptr %2, align 8
  %24 = load i32, ptr %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, ptr %23, i64 %25
  %27 = load i32, ptr %26, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %28
  store float %22, ptr %29, align 4
  br label %30

30:                                               ; preds = %18
  %31 = load i32, ptr %8, align 4
  %32 = add i32 %31, 1
  store i32 %32, ptr %8, align 4
  br label %15, !llvm.loop !360

33:                                               ; preds = %15
  %34 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %35

35:                                               ; preds = %33
  %36 = load i32, ptr %7, align 4
  %37 = add i32 %36, 1
  store i32 %37, ptr %7, align 4
  br label %11, !llvm.loop !361

38:                                               ; preds = %11
  %39 = call i32 @clock()
  store i32 %39, ptr %4, align 4
  %40 = load i32, ptr %4, align 4
  %41 = load i32, ptr %3, align 4
  %42 = sub i32 %40, %41
  store i32 %42, ptr %5, align 4
  %43 = load i32, ptr %5, align 4
  %44 = sitofp i32 %43 to double
  %45 = fdiv double %44, 1.000000e+06
  store double %45, ptr %6, align 8
  %46 = load double, ptr %6, align 8
  %47 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0N@EPLMICJI@vas?7?5?$CF?42f?5?7?7?$AA@", double noundef %46)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @vif() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 @init(ptr noundef @"??_C@_05LEOAGPCB@vif?5?5?$AA@")
  %8 = call i32 @clock()
  store i32 %8, ptr %1, align 4
  store i32 0, ptr %5, align 4
  br label %9

9:                                                ; preds = %36, %0
  %10 = load i32, ptr %5, align 4
  %11 = icmp slt i32 %10, 256
  br i1 %11, label %12, label %39

12:                                               ; preds = %9
  store i32 0, ptr %6, align 4
  br label %13

13:                                               ; preds = %31, %12
  %14 = load i32, ptr %6, align 4
  %15 = icmp slt i32 %14, 32000
  br i1 %15, label %16, label %34

16:                                               ; preds = %13
  %17 = load i32, ptr %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %18
  %20 = load float, ptr %19, align 4
  %21 = fcmp ogt float %20, 0.000000e+00
  br i1 %21, label %22, label %30

22:                                               ; preds = %16
  %23 = load i32, ptr %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %24
  %26 = load float, ptr %25, align 4
  %27 = load i32, ptr %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %28
  store float %26, ptr %29, align 4
  br label %30

30:                                               ; preds = %22, %16
  br label %31

31:                                               ; preds = %30
  %32 = load i32, ptr %6, align 4
  %33 = add i32 %32, 1
  store i32 %33, ptr %6, align 4
  br label %13, !llvm.loop !362

34:                                               ; preds = %13
  %35 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %36

36:                                               ; preds = %34
  %37 = load i32, ptr %5, align 4
  %38 = add i32 %37, 1
  store i32 %38, ptr %5, align 4
  br label %9, !llvm.loop !363

39:                                               ; preds = %9
  %40 = call i32 @clock()
  store i32 %40, ptr %2, align 4
  %41 = load i32, ptr %2, align 4
  %42 = load i32, ptr %1, align 4
  %43 = sub i32 %41, %42
  store i32 %43, ptr %3, align 4
  %44 = load i32, ptr %3, align 4
  %45 = sitofp i32 %44 to double
  %46 = fdiv double %45, 1.000000e+06
  store double %46, ptr %4, align 8
  %47 = load double, ptr %4, align 8
  %48 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0N@JGBBJMOP@vif?7?5?$CF?42f?5?7?7?$AA@", double noundef %47)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @vpv() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 @init(ptr noundef @"??_C@_05IJAJMNEN@vpv?5?5?$AA@")
  %8 = call i32 @clock()
  store i32 %8, ptr %1, align 4
  store i32 0, ptr %5, align 4
  br label %9

9:                                                ; preds = %31, %0
  %10 = load i32, ptr %5, align 4
  %11 = icmp slt i32 %10, 2560
  br i1 %11, label %12, label %34

12:                                               ; preds = %9
  store i32 0, ptr %6, align 4
  br label %13

13:                                               ; preds = %26, %12
  %14 = load i32, ptr %6, align 4
  %15 = icmp slt i32 %14, 32000
  br i1 %15, label %16, label %29

16:                                               ; preds = %13
  %17 = load i32, ptr %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %18
  %20 = load float, ptr %19, align 4
  %21 = load i32, ptr %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %22
  %24 = load float, ptr %23, align 4
  %25 = fadd float %24, %20
  store float %25, ptr %23, align 4
  br label %26

26:                                               ; preds = %16
  %27 = load i32, ptr %6, align 4
  %28 = add i32 %27, 1
  store i32 %28, ptr %6, align 4
  br label %13, !llvm.loop !364

29:                                               ; preds = %13
  %30 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %31

31:                                               ; preds = %29
  %32 = load i32, ptr %5, align 4
  %33 = add i32 %32, 1
  store i32 %33, ptr %5, align 4
  br label %9, !llvm.loop !365

34:                                               ; preds = %9
  %35 = call i32 @clock()
  store i32 %35, ptr %2, align 4
  %36 = load i32, ptr %2, align 4
  %37 = load i32, ptr %1, align 4
  %38 = sub i32 %36, %37
  store i32 %38, ptr %3, align 4
  %39 = load i32, ptr %3, align 4
  %40 = sitofp i32 %39 to double
  %41 = fdiv double %40, 1.000000e+06
  store double %41, ptr %4, align 8
  %42 = load double, ptr %4, align 8
  %43 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0N@KJFGIPEJ@vpv?7?5?$CF?42f?5?7?7?$AA@", double noundef %42)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @vtv() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 @init(ptr noundef @"??_C@_05HMIJGLIN@vtv?5?5?$AA@")
  %8 = call i32 @clock()
  store i32 %8, ptr %1, align 4
  store i32 0, ptr %5, align 4
  br label %9

9:                                                ; preds = %31, %0
  %10 = load i32, ptr %5, align 4
  %11 = icmp slt i32 %10, 2560
  br i1 %11, label %12, label %34

12:                                               ; preds = %9
  store i32 0, ptr %6, align 4
  br label %13

13:                                               ; preds = %26, %12
  %14 = load i32, ptr %6, align 4
  %15 = icmp slt i32 %14, 32000
  br i1 %15, label %16, label %29

16:                                               ; preds = %13
  %17 = load i32, ptr %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %18
  %20 = load float, ptr %19, align 4
  %21 = load i32, ptr %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %22
  %24 = load float, ptr %23, align 4
  %25 = fmul float %24, %20
  store float %25, ptr %23, align 4
  br label %26

26:                                               ; preds = %16
  %27 = load i32, ptr %6, align 4
  %28 = add i32 %27, 1
  store i32 %28, ptr %6, align 4
  br label %13, !llvm.loop !366

29:                                               ; preds = %13
  %30 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %31

31:                                               ; preds = %29
  %32 = load i32, ptr %5, align 4
  %33 = add i32 %32, 1
  store i32 %33, ptr %5, align 4
  br label %9, !llvm.loop !367

34:                                               ; preds = %9
  %35 = call i32 @clock()
  store i32 %35, ptr %2, align 4
  %36 = load i32, ptr %2, align 4
  %37 = load i32, ptr %1, align 4
  %38 = sub i32 %36, %37
  store i32 %38, ptr %3, align 4
  %39 = load i32, ptr %3, align 4
  %40 = sitofp i32 %39 to double
  %41 = fdiv double %40, 1.000000e+06
  store double %41, ptr %4, align 8
  %42 = load double, ptr %4, align 8
  %43 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0N@KKFALEDG@vtv?7?5?$CF?42f?5?7?7?$AA@", double noundef %42)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @vpvtv() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 @init(ptr noundef @"??_C@_05OFNLBPD@vpvtv?$AA@")
  %8 = call i32 @clock()
  store i32 %8, ptr %1, align 4
  store i32 0, ptr %5, align 4
  br label %9

9:                                                ; preds = %35, %0
  %10 = load i32, ptr %5, align 4
  %11 = icmp slt i32 %10, 1024
  br i1 %11, label %12, label %38

12:                                               ; preds = %9
  store i32 0, ptr %6, align 4
  br label %13

13:                                               ; preds = %30, %12
  %14 = load i32, ptr %6, align 4
  %15 = icmp slt i32 %14, 32000
  br i1 %15, label %16, label %33

16:                                               ; preds = %13
  %17 = load i32, ptr %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %18
  %20 = load float, ptr %19, align 4
  %21 = load i32, ptr %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %22
  %24 = load float, ptr %23, align 4
  %25 = load i32, ptr %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %26
  %28 = load float, ptr %27, align 4
  %29 = call float @llvm.fmuladd.f32(float %20, float %24, float %28)
  store float %29, ptr %27, align 4
  br label %30

30:                                               ; preds = %16
  %31 = load i32, ptr %6, align 4
  %32 = add i32 %31, 1
  store i32 %32, ptr %6, align 4
  br label %13, !llvm.loop !368

33:                                               ; preds = %13
  %34 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %35

35:                                               ; preds = %33
  %36 = load i32, ptr %5, align 4
  %37 = add i32 %36, 1
  store i32 %37, ptr %5, align 4
  br label %9, !llvm.loop !369

38:                                               ; preds = %9
  %39 = call i32 @clock()
  store i32 %39, ptr %2, align 4
  %40 = load i32, ptr %2, align 4
  %41 = load i32, ptr %1, align 4
  %42 = sub i32 %40, %41
  store i32 %42, ptr %3, align 4
  %43 = load i32, ptr %3, align 4
  %44 = sitofp i32 %43 to double
  %45 = fdiv double %44, 1.000000e+06
  store double %45, ptr %4, align 8
  %46 = load double, ptr %4, align 8
  %47 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@LMDOEMEI@vpvtv?7?5?$CF?42f?5?7?7?$AA@", double noundef %46)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @vpvts(float noundef %0) #7 {
  %2 = alloca float, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store float %0, ptr %2, align 4
  %9 = call i32 @init(ptr noundef @"??_C@_05HDCKEFLG@vpvts?$AA@")
  %10 = call i32 @clock()
  store i32 %10, ptr %3, align 4
  store i32 0, ptr %7, align 4
  br label %11

11:                                               ; preds = %34, %1
  %12 = load i32, ptr %7, align 4
  %13 = icmp slt i32 %12, 256
  br i1 %13, label %14, label %37

14:                                               ; preds = %11
  store i32 0, ptr %8, align 4
  br label %15

15:                                               ; preds = %29, %14
  %16 = load i32, ptr %8, align 4
  %17 = icmp slt i32 %16, 32000
  br i1 %17, label %18, label %32

18:                                               ; preds = %15
  %19 = load i32, ptr %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %20
  %22 = load float, ptr %21, align 4
  %23 = load float, ptr %2, align 4
  %24 = load i32, ptr %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %25
  %27 = load float, ptr %26, align 4
  %28 = call float @llvm.fmuladd.f32(float %22, float %23, float %27)
  store float %28, ptr %26, align 4
  br label %29

29:                                               ; preds = %18
  %30 = load i32, ptr %8, align 4
  %31 = add i32 %30, 1
  store i32 %31, ptr %8, align 4
  br label %15, !llvm.loop !370

32:                                               ; preds = %15
  %33 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %34

34:                                               ; preds = %32
  %35 = load i32, ptr %7, align 4
  %36 = add i32 %35, 1
  store i32 %36, ptr %7, align 4
  br label %11, !llvm.loop !371

37:                                               ; preds = %11
  %38 = call i32 @clock()
  store i32 %38, ptr %4, align 4
  %39 = load i32, ptr %4, align 4
  %40 = load i32, ptr %3, align 4
  %41 = sub i32 %39, %40
  store i32 %41, ptr %5, align 4
  %42 = load i32, ptr %5, align 4
  %43 = sitofp i32 %42 to double
  %44 = fdiv double %43, 1.000000e+06
  store double %44, ptr %6, align 8
  %45 = load double, ptr %6, align 8
  %46 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@MNGJOAAK@vpvts?7?5?$CF?42f?5?7?7?$AA@", double noundef %45)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @vpvpv() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 @init(ptr noundef @"??_C@_05JFEBJCP@vpvpv?$AA@")
  %8 = call i32 @clock()
  store i32 %8, ptr %1, align 4
  store i32 0, ptr %5, align 4
  br label %9

9:                                                ; preds = %36, %0
  %10 = load i32, ptr %5, align 4
  %11 = icmp slt i32 %10, 1024
  br i1 %11, label %12, label %39

12:                                               ; preds = %9
  store i32 0, ptr %6, align 4
  br label %13

13:                                               ; preds = %31, %12
  %14 = load i32, ptr %6, align 4
  %15 = icmp slt i32 %14, 32000
  br i1 %15, label %16, label %34

16:                                               ; preds = %13
  %17 = load i32, ptr %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %18
  %20 = load float, ptr %19, align 4
  %21 = load i32, ptr %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %22
  %24 = load float, ptr %23, align 4
  %25 = fadd float %20, %24
  %26 = load i32, ptr %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %27
  %29 = load float, ptr %28, align 4
  %30 = fadd float %29, %25
  store float %30, ptr %28, align 4
  br label %31

31:                                               ; preds = %16
  %32 = load i32, ptr %6, align 4
  %33 = add i32 %32, 1
  store i32 %33, ptr %6, align 4
  br label %13, !llvm.loop !372

34:                                               ; preds = %13
  %35 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %36

36:                                               ; preds = %34
  %37 = load i32, ptr %5, align 4
  %38 = add i32 %37, 1
  store i32 %38, ptr %5, align 4
  br label %9, !llvm.loop !373

39:                                               ; preds = %9
  %40 = call i32 @clock()
  store i32 %40, ptr %2, align 4
  %41 = load i32, ptr %2, align 4
  %42 = load i32, ptr %1, align 4
  %43 = sub i32 %41, %42
  store i32 %43, ptr %3, align 4
  %44 = load i32, ptr %3, align 4
  %45 = sitofp i32 %44 to double
  %46 = fdiv double %45, 1.000000e+06
  store double %46, ptr %4, align 8
  %47 = load double, ptr %4, align 8
  %48 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@LPDIHHDH@vpvpv?7?5?$CF?42f?5?7?7?$AA@", double noundef %47)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @vtvtv() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 @init(ptr noundef @"??_C@_05PLNNBHDD@vtvtv?$AA@")
  %8 = call i32 @clock()
  store i32 %8, ptr %1, align 4
  store i32 0, ptr %5, align 4
  br label %9

9:                                                ; preds = %39, %0
  %10 = load i32, ptr %5, align 4
  %11 = icmp slt i32 %10, 1024
  br i1 %11, label %12, label %42

12:                                               ; preds = %9
  store i32 0, ptr %6, align 4
  br label %13

13:                                               ; preds = %34, %12
  %14 = load i32, ptr %6, align 4
  %15 = icmp slt i32 %14, 32000
  br i1 %15, label %16, label %37

16:                                               ; preds = %13
  %17 = load i32, ptr %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %18
  %20 = load float, ptr %19, align 4
  %21 = load i32, ptr %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %22
  %24 = load float, ptr %23, align 4
  %25 = fmul float %20, %24
  %26 = load i32, ptr %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %27
  %29 = load float, ptr %28, align 4
  %30 = fmul float %25, %29
  %31 = load i32, ptr %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %32
  store float %30, ptr %33, align 4
  br label %34

34:                                               ; preds = %16
  %35 = load i32, ptr %6, align 4
  %36 = add i32 %35, 1
  store i32 %36, ptr %6, align 4
  br label %13, !llvm.loop !374

37:                                               ; preds = %13
  %38 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %39

39:                                               ; preds = %37
  %40 = load i32, ptr %5, align 4
  %41 = add i32 %40, 1
  store i32 %41, ptr %5, align 4
  br label %9, !llvm.loop !375

42:                                               ; preds = %9
  %43 = call i32 @clock()
  store i32 %43, ptr %2, align 4
  %44 = load i32, ptr %2, align 4
  %45 = load i32, ptr %1, align 4
  %46 = sub i32 %44, %45
  store i32 %46, ptr %3, align 4
  %47 = load i32, ptr %3, align 4
  %48 = sitofp i32 %47 to double
  %49 = fdiv double %48, 1.000000e+06
  store double %49, ptr %4, align 8
  %50 = load double, ptr %4, align 8
  %51 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@KFJCMDFD@vtvtv?7?5?$CF?42f?5?7?7?$AA@", double noundef %50)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @vsumr() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = call i32 @init(ptr noundef @"??_C@_05CMNDDJDG@vsumr?$AA@")
  %9 = call i32 @clock()
  store i32 %9, ptr %1, align 4
  store i32 0, ptr %6, align 4
  br label %10

10:                                               ; preds = %30, %0
  %11 = load i32, ptr %6, align 4
  %12 = icmp slt i32 %11, 2560
  br i1 %12, label %13, label %33

13:                                               ; preds = %10
  store float 0.000000e+00, ptr %5, align 4
  store i32 0, ptr %7, align 4
  br label %14

14:                                               ; preds = %24, %13
  %15 = load i32, ptr %7, align 4
  %16 = icmp slt i32 %15, 32000
  br i1 %16, label %17, label %27

17:                                               ; preds = %14
  %18 = load i32, ptr %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %19
  %21 = load float, ptr %20, align 4
  %22 = load float, ptr %5, align 4
  %23 = fadd float %22, %21
  store float %23, ptr %5, align 4
  br label %24

24:                                               ; preds = %17
  %25 = load i32, ptr %7, align 4
  %26 = add i32 %25, 1
  store i32 %26, ptr %7, align 4
  br label %14, !llvm.loop !376

27:                                               ; preds = %14
  %28 = load float, ptr %5, align 4
  %29 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef %28)
  br label %30

30:                                               ; preds = %27
  %31 = load i32, ptr %6, align 4
  %32 = add i32 %31, 1
  store i32 %32, ptr %6, align 4
  br label %10, !llvm.loop !377

33:                                               ; preds = %10
  %34 = call i32 @clock()
  store i32 %34, ptr %2, align 4
  %35 = load i32, ptr %2, align 4
  %36 = load i32, ptr %1, align 4
  %37 = sub i32 %35, %36
  store i32 %37, ptr %3, align 4
  %38 = load i32, ptr %3, align 4
  %39 = sitofp i32 %38 to double
  %40 = fdiv double %39, 1.000000e+06
  store double %40, ptr %4, align 8
  %41 = load double, ptr %4, align 8
  %42 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@FMPNKBLC@vsumr?7?5?$CF?42f?5?7?7?$AA@", double noundef %41)
  call void @check(i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @vdotr() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = call i32 @init(ptr noundef @"??_C@_05NCEAFNKA@vdotr?$AA@")
  %9 = call i32 @clock()
  store i32 %9, ptr %1, align 4
  store i32 0, ptr %6, align 4
  br label %10

10:                                               ; preds = %34, %0
  %11 = load i32, ptr %6, align 4
  %12 = icmp slt i32 %11, 2560
  br i1 %12, label %13, label %37

13:                                               ; preds = %10
  store float 0.000000e+00, ptr %5, align 4
  store i32 0, ptr %7, align 4
  br label %14

14:                                               ; preds = %28, %13
  %15 = load i32, ptr %7, align 4
  %16 = icmp slt i32 %15, 32000
  br i1 %16, label %17, label %31

17:                                               ; preds = %14
  %18 = load i32, ptr %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %19
  %21 = load float, ptr %20, align 4
  %22 = load i32, ptr %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %23
  %25 = load float, ptr %24, align 4
  %26 = load float, ptr %5, align 4
  %27 = call float @llvm.fmuladd.f32(float %21, float %25, float %26)
  store float %27, ptr %5, align 4
  br label %28

28:                                               ; preds = %17
  %29 = load i32, ptr %7, align 4
  %30 = add i32 %29, 1
  store i32 %30, ptr %7, align 4
  br label %14, !llvm.loop !378

31:                                               ; preds = %14
  %32 = load float, ptr %5, align 4
  %33 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef %32)
  br label %34

34:                                               ; preds = %31
  %35 = load i32, ptr %6, align 4
  %36 = add i32 %35, 1
  store i32 %36, ptr %6, align 4
  br label %10, !llvm.loop !379

37:                                               ; preds = %10
  %38 = call i32 @clock()
  store i32 %38, ptr %2, align 4
  %39 = load i32, ptr %2, align 4
  %40 = load i32, ptr %1, align 4
  %41 = sub i32 %39, %40
  store i32 %41, ptr %3, align 4
  %42 = load i32, ptr %3, align 4
  %43 = sitofp i32 %42 to double
  %44 = fdiv double %43, 1.000000e+06
  store double %44, ptr %4, align 8
  %45 = load double, ptr %4, align 8
  %46 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@EAGLCAIP@vdotr?7?5?$CF?42f?5?7?7?$AA@", double noundef %45)
  %47 = load float, ptr %5, align 4
  store float %47, ptr @temp, align 4
  call void @check(i32 noundef -1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @vbor() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = call i32 @init(ptr noundef @"??_C@_05NBAAOLGE@vbor?5?$AA@")
  %15 = call i32 @clock()
  store i32 %15, ptr %1, align 4
  store i32 0, ptr %11, align 4
  br label %16

16:                                               ; preds = %163, %0
  %17 = load i32, ptr %11, align 4
  %18 = icmp slt i32 %17, 2560
  br i1 %18, label %19, label %166

19:                                               ; preds = %16
  store i32 0, ptr %12, align 4
  br label %20

20:                                               ; preds = %158, %19
  %21 = load i32, ptr %12, align 4
  %22 = icmp slt i32 %21, 256
  br i1 %22, label %23, label %161

23:                                               ; preds = %20
  %24 = load i32, ptr %12, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %25
  %27 = load float, ptr %26, align 4
  store float %27, ptr %5, align 4
  %28 = load i32, ptr %12, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %29
  %31 = load float, ptr %30, align 4
  store float %31, ptr %6, align 4
  %32 = load i32, ptr %12, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %33
  %35 = load float, ptr %34, align 4
  store float %35, ptr %7, align 4
  %36 = load i32, ptr %12, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %37
  %39 = load float, ptr %38, align 4
  store float %39, ptr %8, align 4
  %40 = load i32, ptr %12, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %41
  %43 = load float, ptr %42, align 4
  store float %43, ptr %9, align 4
  %44 = load i32, ptr %12, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [256 x float], ptr @aa, i64 0, i64 %45
  %47 = load float, ptr %46, align 4
  store float %47, ptr %10, align 4
  %48 = load float, ptr %5, align 4
  %49 = load float, ptr %6, align 4
  %50 = fmul float %48, %49
  %51 = load float, ptr %7, align 4
  %52 = load float, ptr %5, align 4
  %53 = load float, ptr %6, align 4
  %54 = fmul float %52, %53
  %55 = load float, ptr %8, align 4
  %56 = fmul float %54, %55
  %57 = call float @llvm.fmuladd.f32(float %50, float %51, float %56)
  %58 = load float, ptr %5, align 4
  %59 = load float, ptr %6, align 4
  %60 = fmul float %58, %59
  %61 = load float, ptr %9, align 4
  %62 = call float @llvm.fmuladd.f32(float %60, float %61, float %57)
  %63 = load float, ptr %5, align 4
  %64 = load float, ptr %6, align 4
  %65 = fmul float %63, %64
  %66 = load float, ptr %10, align 4
  %67 = call float @llvm.fmuladd.f32(float %65, float %66, float %62)
  %68 = load float, ptr %5, align 4
  %69 = load float, ptr %7, align 4
  %70 = fmul float %68, %69
  %71 = load float, ptr %8, align 4
  %72 = call float @llvm.fmuladd.f32(float %70, float %71, float %67)
  %73 = load float, ptr %5, align 4
  %74 = load float, ptr %7, align 4
  %75 = fmul float %73, %74
  %76 = load float, ptr %9, align 4
  %77 = call float @llvm.fmuladd.f32(float %75, float %76, float %72)
  %78 = load float, ptr %5, align 4
  %79 = load float, ptr %7, align 4
  %80 = fmul float %78, %79
  %81 = load float, ptr %10, align 4
  %82 = call float @llvm.fmuladd.f32(float %80, float %81, float %77)
  %83 = load float, ptr %5, align 4
  %84 = load float, ptr %8, align 4
  %85 = fmul float %83, %84
  %86 = load float, ptr %9, align 4
  %87 = call float @llvm.fmuladd.f32(float %85, float %86, float %82)
  %88 = load float, ptr %5, align 4
  %89 = load float, ptr %8, align 4
  %90 = fmul float %88, %89
  %91 = load float, ptr %10, align 4
  %92 = call float @llvm.fmuladd.f32(float %90, float %91, float %87)
  %93 = load float, ptr %5, align 4
  %94 = load float, ptr %9, align 4
  %95 = fmul float %93, %94
  %96 = load float, ptr %10, align 4
  %97 = call float @llvm.fmuladd.f32(float %95, float %96, float %92)
  store float %97, ptr %5, align 4
  %98 = load float, ptr %6, align 4
  %99 = load float, ptr %7, align 4
  %100 = fmul float %98, %99
  %101 = load float, ptr %8, align 4
  %102 = load float, ptr %6, align 4
  %103 = load float, ptr %7, align 4
  %104 = fmul float %102, %103
  %105 = load float, ptr %9, align 4
  %106 = fmul float %104, %105
  %107 = call float @llvm.fmuladd.f32(float %100, float %101, float %106)
  %108 = load float, ptr %6, align 4
  %109 = load float, ptr %7, align 4
  %110 = fmul float %108, %109
  %111 = load float, ptr %10, align 4
  %112 = call float @llvm.fmuladd.f32(float %110, float %111, float %107)
  %113 = load float, ptr %6, align 4
  %114 = load float, ptr %8, align 4
  %115 = fmul float %113, %114
  %116 = load float, ptr %9, align 4
  %117 = call float @llvm.fmuladd.f32(float %115, float %116, float %112)
  %118 = load float, ptr %6, align 4
  %119 = load float, ptr %8, align 4
  %120 = fmul float %118, %119
  %121 = load float, ptr %10, align 4
  %122 = call float @llvm.fmuladd.f32(float %120, float %121, float %117)
  %123 = load float, ptr %6, align 4
  %124 = load float, ptr %9, align 4
  %125 = fmul float %123, %124
  %126 = load float, ptr %10, align 4
  %127 = call float @llvm.fmuladd.f32(float %125, float %126, float %122)
  store float %127, ptr %6, align 4
  %128 = load float, ptr %7, align 4
  %129 = load float, ptr %8, align 4
  %130 = fmul float %128, %129
  %131 = load float, ptr %9, align 4
  %132 = load float, ptr %7, align 4
  %133 = load float, ptr %8, align 4
  %134 = fmul float %132, %133
  %135 = load float, ptr %10, align 4
  %136 = fmul float %134, %135
  %137 = call float @llvm.fmuladd.f32(float %130, float %131, float %136)
  %138 = load float, ptr %7, align 4
  %139 = load float, ptr %9, align 4
  %140 = fmul float %138, %139
  %141 = load float, ptr %10, align 4
  %142 = call float @llvm.fmuladd.f32(float %140, float %141, float %137)
  store float %142, ptr %7, align 4
  %143 = load float, ptr %8, align 4
  %144 = load float, ptr %9, align 4
  %145 = fmul float %143, %144
  %146 = load float, ptr %10, align 4
  %147 = fmul float %145, %146
  store float %147, ptr %8, align 4
  %148 = load float, ptr %5, align 4
  %149 = load float, ptr %6, align 4
  %150 = fmul float %148, %149
  %151 = load float, ptr %7, align 4
  %152 = fmul float %150, %151
  %153 = load float, ptr %8, align 4
  %154 = fmul float %152, %153
  %155 = load i32, ptr %12, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [32000 x float], ptr @x, i64 0, i64 %156
  store float %154, ptr %157, align 4
  br label %158

158:                                              ; preds = %23
  %159 = load i32, ptr %12, align 4
  %160 = add i32 %159, 1
  store i32 %160, ptr %12, align 4
  br label %20, !llvm.loop !380

161:                                              ; preds = %20
  %162 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %163

163:                                              ; preds = %161
  %164 = load i32, ptr %11, align 4
  %165 = add i32 %164, 1
  store i32 %165, ptr %11, align 4
  br label %16, !llvm.loop !381

166:                                              ; preds = %16
  %167 = call i32 @clock()
  store i32 %167, ptr %2, align 4
  %168 = load i32, ptr %2, align 4
  %169 = load i32, ptr %1, align 4
  %170 = sub i32 %168, %169
  store i32 %170, ptr %3, align 4
  %171 = load i32, ptr %3, align 4
  %172 = sitofp i32 %171 to double
  %173 = fdiv double %172, 1.000000e+06
  store double %173, ptr %4, align 8
  %174 = load double, ptr %4, align 8
  %175 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@NPNPIFLM@vbor?7?5?$CF?42f?5?7?7?$AA@", double noundef %174)
  store float 0.000000e+00, ptr @temp, align 4
  store i32 0, ptr %13, align 4
  br label %176

176:                                              ; preds = %186, %166
  %177 = load i32, ptr %13, align 4
  %178 = icmp slt i32 %177, 32000
  br i1 %178, label %179, label %189

179:                                              ; preds = %176
  %180 = load i32, ptr %13, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [32000 x float], ptr @x, i64 0, i64 %181
  %183 = load float, ptr %182, align 4
  %184 = load float, ptr @temp, align 4
  %185 = fadd float %184, %183
  store float %185, ptr @temp, align 4
  br label %186

186:                                              ; preds = %179
  %187 = load i32, ptr %13, align 4
  %188 = add i32 %187, 1
  store i32 %188, ptr %13, align 4
  br label %176, !llvm.loop !382

189:                                              ; preds = %176
  call void @check(i32 noundef -1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @set(ptr noundef %0, ptr noundef %1, ptr noundef %2) #7 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %2, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %9 = call ptr @tsvc_memalign(i64 noundef 16, i64 noundef 128000)
  store ptr %9, ptr @xx, align 8
  %10 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_01EEMJAFIK@?6?$AA@")
  store i32 0, ptr %7, align 4
  br label %11

11:                                               ; preds = %48, %3
  %12 = load i32, ptr %7, align 4
  %13 = icmp slt i32 %12, 32000
  br i1 %13, label %14, label %51

14:                                               ; preds = %11
  %15 = load i32, ptr %7, align 4
  %16 = add i32 %15, 4
  %17 = load ptr, ptr %6, align 8
  %18 = load i32, ptr %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, ptr %17, i64 %19
  store i32 %16, ptr %20, align 4
  %21 = load i32, ptr %7, align 4
  %22 = add i32 %21, 2
  %23 = load ptr, ptr %6, align 8
  %24 = load i32, ptr %7, align 4
  %25 = add i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, ptr %23, i64 %26
  store i32 %22, ptr %27, align 4
  %28 = load i32, ptr %7, align 4
  %29 = load ptr, ptr %6, align 8
  %30 = load i32, ptr %7, align 4
  %31 = add i32 %30, 2
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, ptr %29, i64 %32
  store i32 %28, ptr %33, align 4
  %34 = load i32, ptr %7, align 4
  %35 = add i32 %34, 3
  %36 = load ptr, ptr %6, align 8
  %37 = load i32, ptr %7, align 4
  %38 = add i32 %37, 3
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, ptr %36, i64 %39
  store i32 %35, ptr %40, align 4
  %41 = load i32, ptr %7, align 4
  %42 = add i32 %41, 1
  %43 = load ptr, ptr %6, align 8
  %44 = load i32, ptr %7, align 4
  %45 = add i32 %44, 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, ptr %43, i64 %46
  store i32 %42, ptr %47, align 4
  br label %48

48:                                               ; preds = %14
  %49 = load i32, ptr %7, align 4
  %50 = add i32 %49, 5
  store i32 %50, ptr %7, align 4
  br label %11, !llvm.loop !383

51:                                               ; preds = %11
  %52 = call i32 @set1d(ptr noundef @a, float noundef 1.000000e+00, i32 noundef 1)
  %53 = call i32 @set1d(ptr noundef @b, float noundef 1.000000e+00, i32 noundef 1)
  %54 = call i32 @set1d(ptr noundef @c, float noundef 1.000000e+00, i32 noundef 1)
  %55 = call i32 @set1d(ptr noundef @d, float noundef 1.000000e+00, i32 noundef 1)
  %56 = call i32 @set1d(ptr noundef @e, float noundef 1.000000e+00, i32 noundef 1)
  %57 = call i32 @set2d(ptr noundef @aa, float noundef 0.000000e+00, i32 noundef -1)
  %58 = call i32 @set2d(ptr noundef @bb, float noundef 0.000000e+00, i32 noundef -1)
  %59 = call i32 @set2d(ptr noundef @cc, float noundef 0.000000e+00, i32 noundef -1)
  store i32 0, ptr %8, align 4
  br label %60

60:                                               ; preds = %71, %51
  %61 = load i32, ptr %8, align 4
  %62 = icmp slt i32 %61, 32000
  br i1 %62, label %63, label %74

63:                                               ; preds = %60
  %64 = load i32, ptr %8, align 4
  %65 = add i32 %64, 1
  %66 = srem i32 %65, 4
  %67 = add i32 %66, 1
  %68 = load i32, ptr %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [32000 x i32], ptr @indx, i64 0, i64 %69
  store i32 %67, ptr %70, align 4
  br label %71

71:                                               ; preds = %63
  %72 = load i32, ptr %8, align 4
  %73 = add i32 %72, 1
  store i32 %73, ptr %8, align 4
  br label %60, !llvm.loop !384

74:                                               ; preds = %60
  %75 = load ptr, ptr %5, align 8
  store float 1.000000e+00, ptr %75, align 4
  %76 = load ptr, ptr %4, align 8
  store float 2.000000e+00, ptr %76, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal ptr @tsvc_memalign(i64 noundef %0, i64 noundef %1) #7 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %1, ptr %3, align 8
  store i64 %0, ptr %4, align 8
  %5 = load i64, ptr %4, align 8
  %6 = load i64, ptr %3, align 8
  %7 = call noalias ptr @_aligned_malloc(i64 noundef %6, i64 noundef %5)
  ret ptr %7
}

declare dso_local noalias ptr @_aligned_malloc(i64 noundef, i64 noundef) #9

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @tsvc_original_main() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  store i32 1, ptr %1, align 4
  store i32 1, ptr %2, align 4
  %6 = call ptr @tsvc_memalign(i64 noundef 16, i64 noundef 128000)
  store ptr %6, ptr %3, align 8
  %7 = load ptr, ptr %3, align 8
  call void @set(ptr noundef %7, ptr noundef %4, ptr noundef %5)
  %8 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0BO@IODOONNG@Loop?5?7?5Time?$CISec?$CJ?5?7?5Checksum?5?6?$AA@")
  %9 = call i32 @s000()
  %10 = call i32 @s111()
  %11 = call i32 @s1111()
  %12 = call i32 @s112()
  %13 = call i32 @s1112()
  %14 = call i32 @s113()
  %15 = call i32 @s1113()
  %16 = call i32 @s114()
  %17 = call i32 @s115()
  %18 = call i32 @s1115()
  %19 = call i32 @s116()
  %20 = call i32 @s118()
  %21 = call i32 @s119()
  %22 = call i32 @s1119()
  %23 = call i32 @s121()
  %24 = load i32, ptr %2, align 4
  %25 = load i32, ptr %1, align 4
  %26 = call i32 @s122(i32 noundef %25, i32 noundef %24)
  %27 = call i32 @s123()
  %28 = call i32 @s124()
  %29 = call i32 @s125()
  %30 = call i32 @s126()
  %31 = call i32 @s127()
  %32 = call i32 @s128()
  %33 = call i32 @s131()
  %34 = call i32 @s132()
  %35 = call i32 @s141()
  %36 = call i32 @s151()
  %37 = call i32 @s152()
  %38 = call i32 @s161()
  %39 = call i32 @s1161()
  %40 = load i32, ptr %1, align 4
  %41 = call i32 @s162(i32 noundef %40)
  %42 = load i32, ptr %1, align 4
  %43 = call i32 @s171(i32 noundef %42)
  %44 = load i32, ptr %2, align 4
  %45 = load i32, ptr %1, align 4
  %46 = call i32 @s172(i32 noundef %45, i32 noundef %44)
  %47 = call i32 @s173()
  %48 = call i32 @s174(i32 noundef 16000)
  %49 = load i32, ptr %1, align 4
  %50 = call i32 @s175(i32 noundef %49)
  %51 = call i32 @s176()
  %52 = call i32 @s211()
  %53 = call i32 @s212()
  %54 = call i32 @s1213()
  %55 = call i32 @s221()
  %56 = call i32 @s1221()
  %57 = call i32 @s222()
  %58 = call i32 @s231()
  %59 = call i32 @s232()
  %60 = call i32 @s1232()
  %61 = call i32 @s233()
  %62 = call i32 @s2233()
  %63 = call i32 @s235()
  %64 = call i32 @s241()
  %65 = load float, ptr %5, align 4
  %66 = load float, ptr %4, align 4
  %67 = call i32 @s242(float noundef %66, float noundef %65)
  %68 = call i32 @s243()
  %69 = call i32 @s244()
  %70 = call i32 @s1244()
  %71 = call i32 @s2244()
  %72 = call i32 @s251()
  %73 = call i32 @s1251()
  %74 = call i32 @s2251()
  %75 = call i32 @s3251()
  %76 = call i32 @s252()
  %77 = call i32 @s253()
  %78 = call i32 @s254()
  %79 = call i32 @s255()
  %80 = call i32 @s256()
  %81 = call i32 @s257()
  %82 = call i32 @s258()
  %83 = call i32 @s261()
  %84 = call i32 @s271()
  %85 = load float, ptr %4, align 4
  %86 = call i32 @s272(float noundef %85)
  %87 = call i32 @s273()
  %88 = call i32 @s274()
  %89 = call i32 @s275()
  %90 = call i32 @s2275()
  %91 = call i32 @s276()
  %92 = call i32 @s277()
  %93 = call i32 @s278()
  %94 = call i32 @s279()
  %95 = call i32 @s1279()
  %96 = load float, ptr %4, align 4
  %97 = call i32 @s2710(float noundef %96)
  %98 = call i32 @s2711()
  %99 = call i32 @s2712()
  %100 = call i32 @s281()
  %101 = call i32 @s1281()
  %102 = call i32 @s291()
  %103 = call i32 @s292()
  %104 = call i32 @s293()
  %105 = call i32 @s2101()
  %106 = call i32 @s2102()
  %107 = call i32 @s2111()
  %108 = call i32 @s311()
  %109 = call i32 @s31111()
  %110 = call i32 @s312()
  %111 = call i32 @s313()
  %112 = call i32 @s314()
  %113 = call i32 @s315()
  %114 = call i32 @s316()
  %115 = call i32 @s317()
  %116 = load i32, ptr %1, align 4
  %117 = call i32 @s318(i32 noundef %116)
  %118 = call i32 @s319()
  %119 = call i32 @s3110()
  %120 = call i32 @s13110()
  %121 = call i32 @s3111()
  %122 = call i32 @s3112()
  %123 = call i32 @s3113()
  %124 = call i32 @s321()
  %125 = call i32 @s322()
  %126 = call i32 @s323()
  %127 = call i32 @s331()
  %128 = load float, ptr %4, align 4
  %129 = call i32 @s332(float noundef %128)
  %130 = call i32 @s341()
  %131 = call i32 @s342()
  %132 = call i32 @s343()
  %133 = call i32 @s351()
  %134 = call i32 @s1351()
  %135 = call i32 @s352()
  %136 = load ptr, ptr %3, align 8
  %137 = call i32 @s353(ptr noundef %136)
  %138 = call i32 @s421()
  %139 = call i32 @s1421()
  %140 = call i32 @s422()
  %141 = call i32 @s423()
  %142 = call i32 @s424()
  %143 = call i32 @s431()
  %144 = call i32 @s441()
  %145 = call i32 @s442()
  %146 = call i32 @s443()
  %147 = call i32 @s451()
  %148 = call i32 @s452()
  %149 = call i32 @s453()
  %150 = call i32 @s471()
  %151 = call i32 @s481()
  %152 = call i32 @s482()
  %153 = load ptr, ptr %3, align 8
  %154 = call i32 @s491(ptr noundef %153)
  %155 = load float, ptr %4, align 4
  %156 = load ptr, ptr %3, align 8
  %157 = call i32 @s4112(ptr noundef %156, float noundef %155)
  %158 = load ptr, ptr %3, align 8
  %159 = call i32 @s4113(ptr noundef %158)
  %160 = load i32, ptr %1, align 4
  %161 = load ptr, ptr %3, align 8
  %162 = call i32 @s4114(ptr noundef %161, i32 noundef %160)
  %163 = load ptr, ptr %3, align 8
  %164 = call i32 @s4115(ptr noundef %163)
  %165 = load i32, ptr %1, align 4
  %166 = load ptr, ptr %3, align 8
  %167 = call i32 @s4116(ptr noundef %166, i32 noundef 128, i32 noundef %165)
  %168 = call i32 @s4117()
  %169 = call i32 @s4121()
  %170 = call i32 @va()
  %171 = load ptr, ptr %3, align 8
  %172 = call i32 @vag(ptr noundef %171)
  %173 = load ptr, ptr %3, align 8
  %174 = call i32 @vas(ptr noundef %173)
  %175 = call i32 @vif()
  %176 = call i32 @vpv()
  %177 = call i32 @vtv()
  %178 = call i32 @vpvtv()
  %179 = load float, ptr %4, align 4
  %180 = call i32 @vpvts(float noundef %179)
  %181 = call i32 @vpvpv()
  %182 = call i32 @vtvtv()
  %183 = call i32 @vsumr()
  %184 = call i32 @vdotr()
  %185 = call i32 @vbor()
  ret i32 0
}

attributes #0 = { mustprogress noinline norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="alderlake" "target-features"="+adx,+aes,+avx,+avx2,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+pconfig,+pku,+popcnt,+prfchw,+ptwrite,+rdpid,+rdrnd,+rdseed,+sahf,+serialize,+sgx,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+waitpkg,+widekl,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="alderlake" "target-features"="+adx,+aes,+avx,+avx2,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+pconfig,+pku,+popcnt,+prfchw,+ptwrite,+rdpid,+rdrnd,+rdseed,+sahf,+serialize,+sgx,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+waitpkg,+widekl,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #2 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="alderlake" "target-features"="+adx,+aes,+avx,+avx2,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+pconfig,+pku,+popcnt,+prfchw,+ptwrite,+rdpid,+rdrnd,+rdseed,+sahf,+serialize,+sgx,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+waitpkg,+widekl,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="alderlake" "target-features"="+adx,+aes,+avx,+avx2,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+pconfig,+pku,+popcnt,+prfchw,+ptwrite,+rdpid,+rdrnd,+rdseed,+sahf,+serialize,+sgx,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+waitpkg,+widekl,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
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
!llvm.linker.options = !{!6, !7, !8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}
!llvm.module.flags = !{!16, !17, !18, !19}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "clang version 24.0.0git (https://github.com/llvm/llvm-project.git 6f4196219399a3502cea3beb2d0c8c28b2241649)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "C:\\work\\llvm-profitability-research\\benchmarks\\tsvc_s2233.cpp", directory: "C:\\work\\llvm-profitability-research")
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
!15 = !{!"clang version 24.0.0git (https://github.com/llvm/llvm-project.git 6f4196219399a3502cea3beb2d0c8c28b2241649)"}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{i32 8, !"PIC Level", i32 2}
!18 = !{i32 7, !"uwtable", i32 2}
!19 = !{i32 1, !"MaxTLSAlign", i32 65536}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = distinct !{!22, !21}
!23 = distinct !{!23, !21}
!24 = !{}
!25 = !{i64 8}
!26 = distinct !{!26, !21}
!27 = distinct !{!27, !21}
!28 = distinct !{!28, !21}
!29 = distinct !{!29, !21}
!30 = distinct !{!30, !21}
!31 = distinct !{!31, !21}
!32 = distinct !{!32, !21}
!33 = distinct !{!33, !21}
!34 = distinct !{!34, !21}
!35 = distinct !{!35, !21}
!36 = distinct !{!36, !21}
!37 = distinct !{!37, !21}
!38 = distinct !{!38, !21}
!39 = distinct !{!39, !21}
!40 = distinct !{!40, !21}
!41 = distinct !{!41, !21}
!42 = distinct !{!42, !21}
!43 = distinct !{!43, !21}
!44 = distinct !{!44, !21}
!45 = distinct !{!45, !21}
!46 = distinct !{!46, !21}
!47 = distinct !{!47, !21}
!48 = distinct !{!48, !21}
!49 = distinct !{!49, !21}
!50 = distinct !{!50, !21}
!51 = distinct !{!51, !21}
!52 = distinct !{!52, !21}
!53 = distinct !{!53, !21}
!54 = distinct !{!54, !21}
!55 = distinct !{!55, !21}
!56 = distinct !{!56, !21}
!57 = distinct !{!57, !21}
!58 = distinct !{!58, !21}
!59 = distinct !{!59, !21}
!60 = distinct !{!60, !21}
!61 = distinct !{!61, !21}
!62 = distinct !{!62, !21}
!63 = distinct !{!63, !21}
!64 = distinct !{!64, !21}
!65 = distinct !{!65, !21}
!66 = distinct !{!66, !21}
!67 = distinct !{!67, !21}
!68 = distinct !{!68, !21}
!69 = distinct !{!69, !21}
!70 = distinct !{!70, !21}
!71 = distinct !{!71, !21}
!72 = distinct !{!72, !21}
!73 = distinct !{!73, !21}
!74 = distinct !{!74, !21}
!75 = distinct !{!75, !21}
!76 = distinct !{!76, !21}
!77 = distinct !{!77, !21}
!78 = distinct !{!78, !21}
!79 = distinct !{!79, !21}
!80 = distinct !{!80, !21}
!81 = distinct !{!81, !21}
!82 = distinct !{!82, !21}
!83 = distinct !{!83, !21}
!84 = distinct !{!84, !21}
!85 = distinct !{!85, !21}
!86 = distinct !{!86, !21}
!87 = distinct !{!87, !21}
!88 = distinct !{!88, !21}
!89 = distinct !{!89, !21}
!90 = distinct !{!90, !21}
!91 = distinct !{!91, !21}
!92 = distinct !{!92, !21}
!93 = distinct !{!93, !21}
!94 = distinct !{!94, !21}
!95 = distinct !{!95, !21}
!96 = distinct !{!96, !21}
!97 = distinct !{!97, !21}
!98 = distinct !{!98, !21}
!99 = distinct !{!99, !21}
!100 = distinct !{!100, !21}
!101 = distinct !{!101, !21}
!102 = distinct !{!102, !21}
!103 = distinct !{!103, !21}
!104 = distinct !{!104, !21}
!105 = distinct !{!105, !21}
!106 = distinct !{!106, !21}
!107 = distinct !{!107, !21}
!108 = distinct !{!108, !21}
!109 = distinct !{!109, !21}
!110 = distinct !{!110, !21}
!111 = distinct !{!111, !21}
!112 = distinct !{!112, !21}
!113 = distinct !{!113, !21}
!114 = distinct !{!114, !21}
!115 = distinct !{!115, !21}
!116 = distinct !{!116, !21}
!117 = distinct !{!117, !21}
!118 = distinct !{!118, !21}
!119 = distinct !{!119, !21}
!120 = distinct !{!120, !21}
!121 = distinct !{!121, !21}
!122 = distinct !{!122, !21}
!123 = distinct !{!123, !21}
!124 = distinct !{!124, !21}
!125 = distinct !{!125, !21}
!126 = distinct !{!126, !21}
!127 = distinct !{!127, !21}
!128 = distinct !{!128, !21}
!129 = distinct !{!129, !21}
!130 = distinct !{!130, !21}
!131 = distinct !{!131, !21}
!132 = distinct !{!132, !21}
!133 = distinct !{!133, !21}
!134 = distinct !{!134, !21}
!135 = distinct !{!135, !21}
!136 = distinct !{!136, !21}
!137 = distinct !{!137, !21}
!138 = distinct !{!138, !21}
!139 = distinct !{!139, !21}
!140 = distinct !{!140, !21}
!141 = distinct !{!141, !21}
!142 = distinct !{!142, !21}
!143 = distinct !{!143, !21}
!144 = distinct !{!144, !21}
!145 = distinct !{!145, !21}
!146 = distinct !{!146, !21}
!147 = distinct !{!147, !21}
!148 = distinct !{!148, !21}
!149 = distinct !{!149, !21}
!150 = distinct !{!150, !21}
!151 = distinct !{!151, !21}
!152 = distinct !{!152, !21}
!153 = distinct !{!153, !21}
!154 = distinct !{!154, !21}
!155 = distinct !{!155, !21}
!156 = distinct !{!156, !21}
!157 = distinct !{!157, !21}
!158 = distinct !{!158, !21}
!159 = distinct !{!159, !21}
!160 = distinct !{!160, !21}
!161 = distinct !{!161, !21}
!162 = distinct !{!162, !21}
!163 = distinct !{!163, !21}
!164 = distinct !{!164, !21}
!165 = distinct !{!165, !21}
!166 = distinct !{!166, !21}
!167 = distinct !{!167, !21}
!168 = distinct !{!168, !21}
!169 = distinct !{!169, !21}
!170 = distinct !{!170, !21}
!171 = distinct !{!171, !21}
!172 = distinct !{!172, !21}
!173 = distinct !{!173, !21}
!174 = distinct !{!174, !21}
!175 = distinct !{!175, !21}
!176 = distinct !{!176, !21}
!177 = distinct !{!177, !21}
!178 = distinct !{!178, !21}
!179 = distinct !{!179, !21}
!180 = distinct !{!180, !21}
!181 = distinct !{!181, !21}
!182 = distinct !{!182, !21}
!183 = distinct !{!183, !21}
!184 = distinct !{!184, !21}
!185 = distinct !{!185, !21}
!186 = distinct !{!186, !21}
!187 = distinct !{!187, !21}
!188 = distinct !{!188, !21}
!189 = distinct !{!189, !21}
!190 = distinct !{!190, !21}
!191 = distinct !{!191, !21}
!192 = distinct !{!192, !21}
!193 = distinct !{!193, !21}
!194 = distinct !{!194, !21}
!195 = distinct !{!195, !21}
!196 = distinct !{!196, !21}
!197 = distinct !{!197, !21}
!198 = distinct !{!198, !21}
!199 = distinct !{!199, !21}
!200 = distinct !{!200, !21}
!201 = distinct !{!201, !21}
!202 = distinct !{!202, !21}
!203 = distinct !{!203, !21}
!204 = distinct !{!204, !21}
!205 = distinct !{!205, !21}
!206 = distinct !{!206, !21}
!207 = distinct !{!207, !21}
!208 = distinct !{!208, !21}
!209 = distinct !{!209, !21}
!210 = distinct !{!210, !21}
!211 = distinct !{!211, !21}
!212 = distinct !{!212, !21}
!213 = distinct !{!213, !21}
!214 = distinct !{!214, !21}
!215 = distinct !{!215, !21}
!216 = distinct !{!216, !21}
!217 = distinct !{!217, !21}
!218 = distinct !{!218, !21}
!219 = distinct !{!219, !21}
!220 = distinct !{!220, !21}
!221 = distinct !{!221, !21}
!222 = distinct !{!222, !21}
!223 = distinct !{!223, !21}
!224 = distinct !{!224, !21}
!225 = distinct !{!225, !21}
!226 = distinct !{!226, !21}
!227 = distinct !{!227, !21}
!228 = distinct !{!228, !21}
!229 = distinct !{!229, !21}
!230 = distinct !{!230, !21}
!231 = distinct !{!231, !21}
!232 = distinct !{!232, !21}
!233 = distinct !{!233, !21}
!234 = distinct !{!234, !21}
!235 = distinct !{!235, !21}
!236 = distinct !{!236, !21}
!237 = distinct !{!237, !21}
!238 = distinct !{!238, !21}
!239 = distinct !{!239, !21}
!240 = distinct !{!240, !21}
!241 = distinct !{!241, !21}
!242 = distinct !{!242, !21}
!243 = distinct !{!243, !21}
!244 = distinct !{!244, !21}
!245 = distinct !{!245, !21}
!246 = distinct !{!246, !21}
!247 = distinct !{!247, !21}
!248 = distinct !{!248, !21}
!249 = distinct !{!249, !21}
!250 = distinct !{!250, !21}
!251 = distinct !{!251, !21}
!252 = distinct !{!252, !21}
!253 = distinct !{!253, !21}
!254 = distinct !{!254, !21}
!255 = distinct !{!255, !21}
!256 = distinct !{!256, !21}
!257 = distinct !{!257, !21}
!258 = distinct !{!258, !21}
!259 = distinct !{!259, !21}
!260 = distinct !{!260, !21}
!261 = distinct !{!261, !21}
!262 = distinct !{!262, !21}
!263 = distinct !{!263, !21}
!264 = distinct !{!264, !21}
!265 = distinct !{!265, !21}
!266 = distinct !{!266, !21}
!267 = distinct !{!267, !21}
!268 = distinct !{!268, !21}
!269 = distinct !{!269, !21}
!270 = distinct !{!270, !21}
!271 = distinct !{!271, !21}
!272 = distinct !{!272, !21}
!273 = distinct !{!273, !21}
!274 = distinct !{!274, !21}
!275 = distinct !{!275, !21}
!276 = distinct !{!276, !21}
!277 = distinct !{!277, !21}
!278 = distinct !{!278, !21}
!279 = distinct !{!279, !21}
!280 = distinct !{!280, !21}
!281 = distinct !{!281, !21}
!282 = distinct !{!282, !21}
!283 = distinct !{!283, !21}
!284 = distinct !{!284, !21}
!285 = distinct !{!285, !21}
!286 = distinct !{!286, !21}
!287 = distinct !{!287, !21}
!288 = distinct !{!288, !21}
!289 = distinct !{!289, !21}
!290 = distinct !{!290, !21}
!291 = distinct !{!291, !21}
!292 = distinct !{!292, !21}
!293 = distinct !{!293, !21}
!294 = distinct !{!294, !21}
!295 = distinct !{!295, !21}
!296 = distinct !{!296, !21}
!297 = distinct !{!297, !21}
!298 = distinct !{!298, !21}
!299 = distinct !{!299, !21}
!300 = distinct !{!300, !21}
!301 = distinct !{!301, !21}
!302 = distinct !{!302, !21}
!303 = distinct !{!303, !21}
!304 = distinct !{!304, !21}
!305 = distinct !{!305, !21}
!306 = distinct !{!306, !21}
!307 = distinct !{!307, !21}
!308 = distinct !{!308, !21}
!309 = distinct !{!309, !21}
!310 = distinct !{!310, !21}
!311 = distinct !{!311, !21}
!312 = distinct !{!312, !21}
!313 = distinct !{!313, !21}
!314 = distinct !{!314, !21}
!315 = distinct !{!315, !21}
!316 = distinct !{!316, !21}
!317 = distinct !{!317, !21}
!318 = distinct !{!318, !21}
!319 = distinct !{!319, !21}
!320 = distinct !{!320, !21}
!321 = distinct !{!321, !21}
!322 = distinct !{!322, !21}
!323 = distinct !{!323, !21}
!324 = distinct !{!324, !21}
!325 = distinct !{!325, !21}
!326 = distinct !{!326, !21}
!327 = distinct !{!327, !21}
!328 = distinct !{!328, !21}
!329 = distinct !{!329, !21}
!330 = distinct !{!330, !21}
!331 = distinct !{!331, !21}
!332 = distinct !{!332, !21}
!333 = distinct !{!333, !21}
!334 = distinct !{!334, !21}
!335 = distinct !{!335, !21}
!336 = distinct !{!336, !21}
!337 = distinct !{!337, !21}
!338 = distinct !{!338, !21}
!339 = distinct !{!339, !21}
!340 = distinct !{!340, !21}
!341 = distinct !{!341, !21}
!342 = distinct !{!342, !21}
!343 = distinct !{!343, !21}
!344 = distinct !{!344, !21}
!345 = distinct !{!345, !21}
!346 = distinct !{!346, !21}
!347 = distinct !{!347, !21}
!348 = distinct !{!348, !21}
!349 = distinct !{!349, !21}
!350 = distinct !{!350, !21}
!351 = distinct !{!351, !21}
!352 = distinct !{!352, !21}
!353 = distinct !{!353, !21}
!354 = distinct !{!354, !21}
!355 = distinct !{!355, !21}
!356 = distinct !{!356, !21}
!357 = distinct !{!357, !21}
!358 = distinct !{!358, !21}
!359 = distinct !{!359, !21}
!360 = distinct !{!360, !21}
!361 = distinct !{!361, !21}
!362 = distinct !{!362, !21}
!363 = distinct !{!363, !21}
!364 = distinct !{!364, !21}
!365 = distinct !{!365, !21}
!366 = distinct !{!366, !21}
!367 = distinct !{!367, !21}
!368 = distinct !{!368, !21}
!369 = distinct !{!369, !21}
!370 = distinct !{!370, !21}
!371 = distinct !{!371, !21}
!372 = distinct !{!372, !21}
!373 = distinct !{!373, !21}
!374 = distinct !{!374, !21}
!375 = distinct !{!375, !21}
!376 = distinct !{!376, !21}
!377 = distinct !{!377, !21}
!378 = distinct !{!378, !21}
!379 = distinct !{!379, !21}
!380 = distinct !{!380, !21}
!381 = distinct !{!381, !21}
!382 = distinct !{!382, !21}
!383 = distinct !{!383, !21}
!384 = distinct !{!384, !21}
