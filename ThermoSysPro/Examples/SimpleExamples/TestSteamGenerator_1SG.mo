within ThermoSysPro.Examples.SimpleExamples;
model TestSteamGenerator_1SG
  ThermoSysPro.WaterSteam.BoundaryConditions.SinkP sinkP(
    option_temperature=2,
    P0(fixed=true) = 15450000,
    h0=1.27187e6,
    C(h(start=1271453.0789958118)),
    Q(start=4756.000000000019))
    annotation (Placement(transformation(extent={{68,-64},{88,-44}})));
  ThermoSysPro.WaterSteam.BoundaryConditions.SourceQ sourceQ(Q0=4756, h0=
        1.47084e6,
    C(h(start=1470840.0)),
    P(start=15603796.298727792))
    annotation (Placement(transformation(extent={{-74,-62},{-56,-44}})));
  ThermoSysPro.WaterSteam.BoundaryConditions.SourceQ sourceQ1(            h0=
        991272, Q0=531.242,
    P(start=6704397.556426741))
    annotation (Placement(transformation(extent={{96,22},{72,46}})));
  ThermoSysPro.WaterSteam.BoundaryConditions.SinkP sinkP1(
    h0=2.77257e6,
    option_temperature=2,
    C(Q(start=531.242), h(start=2776304.4264558135)),
    P0=6600000) annotation (Placement(transformation(extent={{74,56},{94,76}})));
  ThermoSysPro.WaterSteam.PressureLosses.SingularPressureLoss singularPressureLoss1(
    C1(h_vol(start=991272)),
    C2(h_vol(start=991271.9375)),
    mode=0,
    rho(start=34),
    h(start=2.77257e6),
    Q(start=531.242),
    continuous_flow_reversal=true,
    K(fixed=false),
    T(start=503.196),
    Pm(start=669455),
    pro(
      T(start=555.5635779732289),
      cp(start=5183.453852937443),
      d(start=34.53068824587431),
      ddhp(start=-2.156841613579318E-05),
      ddph(start=5.481510930910603E-06),
      s(start=5838.851085717999),
      u(start=2583625.398001984),
      x(start=0.9995688867393426)))
                      annotation (Placement(transformation(
        origin={41,66},
        extent={{9,-10},{-9,10}},
        rotation=180)));
  ThermoSysPro.WaterSteam.PressureLosses.SingularPressureLoss singularPressureLoss2(
    mode=1,
    C1(h_vol(start=991272)),
    Q(start=530.891),
    rho(start=830.88),
    h(start=991272),
    K=1e-2,
    C2(h_vol(start=991272.0), P(start=6704394.159371604)),
    T(start=503.196),
    Pm(start=6704395.857899172),
    deltaP(start=3.3970551367455455),
    pro(
      T(start=503.1981380178025),
      cp(start=4647.872167379586),
      d(start=830.7726875295028),
      ddhp(start=-0.00029227872818718767),
      ddph(start=9.9693370719189E-07),
      duhp(start=0.9971608232003352),
      duph(start=-0.0011940145451926898),
      s(start=2602.778049180844),
      u(start=983143.9313756793)))
                       annotation (Placement(transformation(
        origin={39,35},
        extent={{-9,-11},{9,11}},
        rotation=180)));
  ThermoSysPro.WaterSteam.HeatExchangers.SteamGenerator_1SG
    steamGenerator_1SG(DomeGV(zl(fixed=true),
      Cm(Q(start=3674.543111465144), h(start=1472510.1268426012)),
      Cs(Q(start=3143.3011114717247), h(start=1252158.8888439273)),
      P(start=6706678.926114233),
      Pfond(start=6713155.65634596),
      Tp(start=556.0857394942999),
      Wlv(start=-748.4701526083975),
      Wpl(start=185.7513849789081),
      hl(start=1252158.8888439273),
      hv(start=2776304.4264558135),
      lsat(
        P(start=6706678.926114233),
        T(start=556.0979754471518),
        cp(start=5341.980766557827),
        h(start=1252159.186054214),
        rho(start=744.9920451286558)),
      prod(
        T(start=295.51270247400157),
        cp(start=4163.931630049154),
        d(start=1000.6707309660103),
        ddhp(start=-5.7612413191868046E-05),
        ddph(start=5.013387042126168E-07),
        duhp(start=0.9996137572062725),
        duph(start=-0.0009959686640933023),
        s(start=328.5118402659254),
        u(start=93346.94015574278)),
      prol(
        T(start=556.0919019058653),
        cp(start=5341.843073436941),
        d(start=745.0040954228513),
        ddhp(start=-0.00037140817913333907),
        ddph(start=1.5005173848478167E-06),
        duhp(start=0.99551211563078),
        duph(start=-0.0013241431051173875),
        s(start=3095.2420470602237),
        u(start=1243124.5376265536),
        x(start=0.0)),
      prom(
        T(start=556.0979754471518),
        cp(start=5322.793136052821),
        d(start=188.68359292764998),
        ddhp(start=-0.0006394536492507623),
        ddph(start=5.1133513773564396E-05),
        s(start=3491.54489930648),
        u(start=1436965.5475707515),
        x(start=0.14457362014386263)),
      prov(
        T(start=556.0789076325113),
        cp(start=5211.391721748124),
        d(start=34.82711185326052),
        ddhp(start=-3.901275006925452E-05),
        ddph(start=5.273416580142731E-06),
        duhp(start=0.784285588979114),
        duph(start=0.00044520376975680856),
        s(start=5835.901887967359),
        u(start=2583632.686761629),
        x(start=1.0)),
      vsat(
        P(start=6706678.926114233),
        T(start=556.0979754471518),
        cp(start=5209.262014091696),
        h(start=2776302.667894954),
        rho(start=34.82323622886482)),
      xmv(start=0.14457362014386263)),
    CapteurPAlim(C2(h_vol(start=1214441.5268755828))),
    DPSeparateurCyclone(
      Pm(start=6707752.054694749),
      deltaP(start=2146.25716103334),
      deltaPf(start=2146.25716103334),
      pro(
        T(start=556.1086935353277),
        cp(start=5323.052716283155),
        d(start=188.73846727302114),
        ddhp(start=-0.0006397351053078553),
        ddph(start=5.114516226384435E-05),
        s(start=3491.5346735317003),
        u(start=1436970.1961034606),
        x(start=0.14454313806934876))),
    DPnulle_AlimDwnc(
      Pm(start=6704394.142386328),
      deltaP(start=0.03397055143729243),
      pro(
        T(start=503.1981380947931),
        cp(start=4647.872182942484),
        d(start=830.7726858215926),
        ddhp(start=-0.00029227873038032787),
        ddph(start=9.969337188465612E-07),
        duhp(start=0.9971608238938426),
        duph(start=-0.0011940145499922032),
        s(start=2602.778053268592),
        u(start=983143.9334160357))),
    DPnulle_DomeDwnc(
      Pm(start=6705536.525757642),
      deltaP(start=2284.800713180426),
      pro(
        T(start=556.0865640531288),
        cp(start=5341.751445758121),
        d(start=744.4157218298644),
        ddhp(start=-0.00995490926717634),
        ddph(start=0.0005068167393487037),
        s(start=3095.302614244789),
        u(start=1243151.1041758733),
        x(start=3.931424690222598E-05))),
    DownComerGV(
      Pm(start=6731634.748061769),
      deltaP(start=-54481.245321432085),
      deltaPf(start=25883.401832656895),
      pro(
        T(start=548.9248327285786),
        cp(start=5193.648289919676),
        d(start=758.7882745673616),
        ddhp(start=-0.0003571815945850099),
        ddph(start=1.3973083815380471E-06),
        duhp(start=0.995823924007589),
        duph(start=-0.0013015537136234854),
        s(start=3026.856808580834),
        u(start=1205504.3315645182))),
    MixAlimDomeGV(
      Cs(Q(start=3674.5431114717244), h(start=1214441.5268755828)),
      P(start=6704394.125401053),
      h(start=1214441.5268755828)),
    RiserGV(
      Bo(start={5.264551982702729E-05,4.24124411076559E-05,
            3.409050891381302E-05,2.7385279816437412E-05,2.2009213639388002E-05}),
      E(start={1.5087815666722353,1.760919957987664,1.9476847403074915,
            2.097116088661417,2.2191758439457385}),
      P(start={6758875.5,6744780.661967858,6734858.682936351,6727554.331945282,
            6721071.1962960195,6714893.297883738,6708825.0}),
      Pb(start={6758875.370722485,6744780.661967858,6734858.682936351,
            6727554.331945282,6721071.1962960195,6714893.297883738,
            6708825.183275267}),
      Prl(start={0.8614060609915553,0.8612177743481639,0.8610795419185651,
            0.8609571209529038,0.860840700352387}),
      Prv(start={1.558060122469759,1.5573349629944262,1.5568015066398002,
            1.5563283028859216,1.5558776204321105}),
      Q(start={3674.543111473107,3674.54311170587,3674.543111581315,
            3674.5431115457377,3674.543111529379,3674.5431114738362}),
      Rel1(start={251532.7450854159,240987.01172095592,232483.9984969632,
            225629.0583738281,220106.5497190104}),
      Rel2(start={248927.84623701972,257504.08120653126,257411.52273225,
            257337.40584396885,257269.3164124718,257203.43335380178}),
      Rev1(start={126015.47546629705,126045.05144488405,126066.84046334997,
            155209.85787602403,182019.8146249652}),
      Rev2(start={1285890.5820611913,1260302.6037093343,1260559.4427392383,
            1260765.1443104607,1260954.1455479627,1261137.0479626092}),
      S(start={0.1549634611710962,0.12399319566793483,0.10767347985477606,
            0.09730316139006305,0.09015797512251608}),
      Xtt(start={7.311009664045045,2.8439271576801577,1.897054678974084,
            1.4856019790614363,1.258516343197067}),
      cpl(start={5349.469481129635,5347.516592209151,5346.080165928101,
            5344.806120274413,5343.592832739081}),
      cpv(start={5227.826905277505,5222.985689734148,5219.424745327635,
            5216.2663179883575,5213.258487155894}),
      dpf(start={640.5716824740767,987.6792218283877,1565.132025124198,
            2033.342774898577,2412.0434228872004,2717.9759070918435}),
      dpg(start={13454.137072152957,8934.299809678538,5739.21896594421,
            4449.792874364351,3765.854989394447,3350.1387013794383}),
      filo(start={1.0,1.5127576625518269,2.397698418903442,3.115489764426855,
            3.69629921982833,4.165735623228427}),
      h(start={1214441.5,1289758.2348790504,1350993.226176363,
            1400513.9851121805,1440421.3369830078,1472510.126842601,1472510.125}),
      hb(start={1214441.5268755823,1289758.2348790504,1350993.226176363,
            1400513.9851121805,1440421.3369830078,1472510.126842601}),
      hcl(start={7035.100994857359,6799.356131209278,6607.618400143516,
            6452.049964861143,6326.112386914556}),
      hcv(start={566.4591939112424,566.0661558687939,565.7769561570168,
            667.8050163368257,758.1769879991693}),
      heb(start={23295.840202370804,20136.327196381662,17383.684434211296,
            15004.435655175634,12955.702450307694}),
      hi(start={14224.434729366436,14469.889471006716,14741.319323463362,
            14990.676810280005,15206.815694336261}),
      khi(start={2.34544191189234,3.5476325020812607,5.62295229531067,
            7.306285427856448,8.668378220483625,9.769286547251083}),
      kl(start={0.5726540836020793,0.5728072487009809,0.5729200372395459,
            0.573020167674377,0.5731156035260583}),
      kv(start={0.06323778626765368,0.06319381227590415,0.06316144860435968,
            0.06313272992044888,0.06310536893560353}),
      lambdal(start={0.047855836354927225,0.04784973013189612,
            0.04784979386553329,0.047849844933704144,0.04784989187470238,
            0.04784993731823128}),
      lambdav(start={0.04770773819080876,0.047708461262474786,
            0.047708453858867454,0.04770844793151606,0.04770844248709371,
            0.04770843721990883}),
      lsat1(
        P(start={6744780.661967858,6734858.682936351,6727554.331945282,
              6721071.1962960195,6714893.297883738}),
        T(start={556.4777242585986,556.3789929681456,556.3062380340273,
              556.24161223393,556.1799847947086}),
        cp(start={5349.469481129635,5347.516592209151,5346.080165928101,
              5344.806120274413,5343.592832739081}),
        h(start={1254164.4193918111,1253642.8508641238,1253258.6094974852,
              1252917.3728564607,1252592.0313789598}),
        rho(start={744.3038527038548,744.4829488814046,744.6148470020331,
              744.7319526076345,744.8435767532254})),
      lsat2(
        P(start={6751828.016345171,6739819.672452104,6731206.507440817,
              6724312.764120651,6717982.247089879,6711859.240579503}),
        T(start={556.5477834490828,556.4283724952538,556.3426230413967,
              556.2739310847983,556.2108039269156,556.1497027843936}),
        cp(start={5350.857762973237,5348.492792087017,5346.798246788609,
              5345.443039065573,5344.19938218037,5342.997245450023}),
        h(start={1254534.6181015647,1253903.6885891953,1253450.759228525,
              1253088.0141070336,1252754.7229785018,1252432.1902232456}),
        rho(start={744.1766933998682,744.393390773562,744.5488924935185,
              744.6733955012804,744.7877607629224,744.8984085068838})),
      lv(start={1521663.0060791962,1522308.614823357,1522784.044517484,
            1523206.1266938604,1523608.4279569504}),
      mul1(start={9.221245213314675E-05,9.225063173725626E-05,
            9.227877396345615E-05,9.230377729464815E-05,9.232762543199986E-05}),
      mul2(start={9.54091599276262E-05,9.223153505875156E-05,
            9.22646991116657E-05,9.22912726762199E-05,9.231569867567667E-05,
            9.233934548378382E-05}),
      muv1(start={1.8846888927678993E-05,1.8842466579145694E-05,
            1.8839209902747067E-05,1.8836318627906903E-05,1.883356282791608E-05}),
      muv2(start={1.846968709732503E-05,1.884467795565175E-05,
            1.8840838351230148E-05,1.883776435263538E-05,1.883494080755032E-05,
            1.883220918015266E-05}),
      pro1(
        T(start={556.4777242585986,556.3789929681456,556.3062380340273,
              556.24161223393,556.1799847947086}),
        cp(start={5346.624091984354,5339.552944118439,5333.832407225015,
              5328.983099309423,5324.780334377812}),
        d(start={505.1476771686893,324.12933637240366,251.22634915738507,
              212.58399061849084,189.10395271899358}),
        ddhp(start={-0.004560382069667427,-0.0018800385426296002,-0.0011305175875149266,
              -0.0008101742520365192,-0.0006416110037500664}),
        ddph(start={0.0002526074465431572,0.00011948952669955124,
              7.932514344963074E-05,6.117892216854974E-05,5.122276521956781E-05}),
        s(start={3162.775727202852,3272.870886399854,3361.9284629388753,
              3433.719481764495,3491.4667057518886}),
        u(start={1276406.1381223714,1330214.9197190963,1373735.1286964042,
              1408805.26289981,1437001.1213388292}),
        x(start={0.023391391750366815,0.06394917191185662,0.09670141747601199,
              0.12309822081239064,0.1443402986150028})),
      pro2(
        T(start={548.9265959900218,556.4283724952538,556.3426230413967,
              556.2739310847983,556.2108039269156,556.1497027843936}),
        cp(start={5193.192624799688,5345.59313827574,5338.752064316225,
              5333.091571706786,5328.254175988971,5324.046285875985}),
        d(start={758.8164659348321,503.89659112471367,323.69328702454266,
              250.96935499905894,212.3950989164459,188.94860340273425}),
        ddhp(start={-0.00035713056859328855,-0.0045407754940881,-0.0018758834037291676,
              -0.0011286868959148294,-0.0008090640434138537,-0.0006408133811349972}),
        ddph(start={1.3969923267307114E-06,0.00025179538730201796,
              0.00011931701826041977,7.924917146391011E-05,
              6.113292003174817E-05,5.118977604478324E-05}),
        duhp(start={0.9958123063446975,0.0,0.0,0.0,0.0,0.0}),
        duph(start={-0.0013014606682714325,0.0,0.0,0.0,0.0,0.0}),
        s(start={3026.808438887448,3162.793397822675,3272.891152212068,
              3361.951669299596,3433.7456165328513,3491.4955656881084}),
        u(start={1205478.1102843666,1276382.8324826804,1330198.2119537464,
              1373720.6231730473,1408791.6888349934,1436987.9842085352}),
        x(start={0.0,0.023557740628157332,0.06406535291687379,
              0.09680003145518278,0.12318873499805512,0.1444264764040964})),
      rhol1(start={744.3038527038548,744.4829488814046,744.6148470020331,
            744.7319526076345,744.8435767532254}),
      rhol2(start={758.8164659348321,744.393390773562,744.5488924935185,
            744.6733955012804,744.7877607629224,744.8984085068838}),
      rhov1(start={35.04281039746895,34.985594751303,34.943490415577,
            34.90613158466056,34.87054197829741}),
      rhov2(start={35.08346516605899,35.01419932328164,34.96454082354485,
            34.92480961500706,34.888335524811154,34.85306707615831}),
      vsat1(
        P(start={6744780.661967858,6734858.682936351,6727554.331945282,
              6721071.1962960195,6714893.297883738}),
        T(start={556.4777242585986,556.3789929681456,556.3062380340273,
              556.24161223393,556.1799847947086}),
        cp(start={5227.826905277505,5222.985689734148,5219.424745327635,
              5216.2663179883575,5213.258487155894}),
        h(start={2775827.4254710074,2775951.4656874808,2776042.6540149692,
              2776123.499550321,2776200.45933591}),
        rho(start={35.04281039746895,34.985594751303,34.943490415577,
              34.90613158466056,34.87054197829741})),
      vsat2(
        P(start={6751828.016345171,6739819.672452104,6731206.507440817,
              6724312.764120651,6717982.247089879,6711859.240579503}),
        T(start={556.5477834490828,556.4283724952538,556.3426230413967,
              556.2739310847983,556.2108039269156,556.1497027843936}),
        cp(start={5231.268420588046,5225.40569909934,5221.204893969272,
              5217.845277235249,5214.762171938293,5211.781972143657}),
        h(start={2775739.2015562006,2775889.4704939374,2775997.073371233,
              2776083.0874444144,2776161.9891337138,2776238.22703045}),
        rho(start={35.08346516605899,35.01419932328164,34.96454082354485,
              34.92480961500706,34.888335524811154,34.85306707615831})),
      xbi(start={0.1,0.1,0.1,0.12309822081239064,0.1443402986150028}),
      xbs(start={0.023391391750366815,0.06394917191185662,0.09670141747601199,
            0.12309822081239064,0.1443402986150028}),
      xv1(start={0.023391391750366815,0.06394917191185662,0.09670141747601199,
            0.12309822081239064,0.1443402986150028}),
      xv2(start={0.0,0.023557740628157332,0.06406535291687379,
            0.09680003145518278,0.12318873499805512,0.1444264764040964})),
    UtubeColdtLeg(
      P(start={15447784.0,15447791.72370848,15447988.956335694,
            15448336.419381844,15448802.873723604,15449363.813566398,15450000.0}),
      Pr(start={0.848483077540291,0.8437031935743279,0.8401599107455334,
            0.8374996225903174,0.8354783769371337}),
      Q(start={4756.0,4755.999999999917,4756.000000000249,4755.999999999868,
            4756.000000000222,4756.0}),
      Re1(start={740583.6661554204,733579.2410024012,727989.6956322317,
            723523.7719978726,719949.083452038}),
      Re2(start={749362.2436296802,740583.4363275196,733578.847078971,
            727989.1781243386,723523.160221331,719948.3989712799}),
      Tp(start={566.7107587234816,564.6165444590515,562.9210253140708,
            561.5507555369106,560.4439112345017}),
      dW1(start={-69249119.55799206,-55812352.70639346,-44875175.25275211,-36058712.5154484,
            -28987599.176050894}),
      dpf(start={12983.927210121412,12889.366640373046,12815.082130952236,
            12756.553536106847,12710.273274401074,12673.539690947257}),
      dpg(start={-12991.184976744373,-13086.599267586045,-13162.545177102518,-13223.007877866754,
            -13271.213117195162,-13309.726124549381}),
      h(start={1320860.75,1306300.3959955038,1294565.2503465663,
            1285129.7635398565,1277548.0325652133,1271453.0789958118,1271870.0}),
      hb(start={1320860.75,1306300.3959955038,1294565.2503465663,
            1285129.7635398565,1277548.0325652133,1271453.125}),
      hc(start={180523.44772428906,179936.1621517401,179471.06777899901,
            179101.33846240045,178806.39043659117}),
      k(start={0.569946753359113,0.573722908985942,0.5767222692010983,
            0.5791085565193318,0.5810115503486866}),
      khi(start={7.049457985512229,7.049515489164797,7.049562358112466,
            7.049600406454843,7.04963122860244,7.0496561752247535}),
      lambda(start={0.0657767456944642,0.06577728224679763,0.06577771956933479,
            0.0657780745889896,0.06577836218281148,0.06577859495356282}),
      mu1(start={9.076564447329419E-05,9.163230089927165E-05,
            9.233585880170094E-05,9.290579846378351E-05,9.336709399321005E-05}),
      mu2(start={8.970234931960748E-05,9.076567264091691E-05,
            9.163235010476983E-05,9.233592444077152E-05,9.290587702048174E-05,
            9.336718276065221E-05}),
      pro1(
        T(start={567.3354921625174,565.1217010135307,563.3282422450218,
              561.8786435198738,560.7079351861411}),
        cp(start={5327.898877713838,5282.546064954703,5247.57051599579,
              5220.375967306578,5199.075673302522}),
        d(start={738.087100783966,742.370361086612,745.7803902544199,
              748.4991144642266,750.6712084932996}),
        ddhp(start={-0.0003667150163882106,-0.00036267125202324435,-0.00035949446348235956,
              -0.0003569875343856488,-0.0003550004903398353}),
        ddph(start={1.4930262025550521E-06,1.4614963550783731E-06,
              1.4370805647083529E-06,1.4180340988903081E-06,
              1.4030766202504239E-06}),
        duhp(start={0.9896012803795444,0.9898341468247962,0.9900149095023224,
              0.9901561428863999,0.9902671498899273}),
        duph(start={-0.0013125167905256381,-0.0013060700764397169,-0.00130096186580618,
              -0.0012969049288770042,-0.0012936737729170376}),
        s(start={3170.7342210727907,3149.9924774998135,3133.256064817905,
              3119.768900323932,3108.9010528430404}),
        u(start={1285388.1244827309,1273764.296231102,1264416.3343936033,
              1256903.6453549922,1250863.3161830567})),
      pro2(
        T(start={570.0555662247484,567.3355046989993,565.1217212621291,
              563.3282675173539,561.8786721184558,560.7079660237657}),
        cp(start={5387.235260232886,5327.896269310702,5282.541730235789,
              5247.5649580660265,5220.369521796719,5199.068570662013}),
        d(start={732.7058598772968,738.0872481140804,742.3706151076258,
              745.7807255196681,748.499512250512,750.6716548395405}),
        ddhp(start={-0.0003718843818194896,-0.00036671474593060073,-0.0003626707952835976,
              -0.00035949387041209376,-0.00035698683971734465,-0.0003549997187830147}),
        ddph(start={1.5340643290419507E-06,1.49302442083723E-06,
              1.4614933825355711E-06,1.4370767411953497E-06,
              1.418029653345425E-06,1.403071711285525E-06}),
        duhp(start={0.9892992328674202,0.9896012258163954,0.989834052257208,
              0.9900147842057546,0.990155993791931,0.9902669822245412}),
        duph(start={-0.0013206623008500686,-0.0013125163172357074,-0.0013060692661573865,
              -0.0013009608024922982,-0.001296903673122904,-0.001293672369146186}),
        s(start={3196.35777614949,3170.733985118013,3149.9920628368727,
              3133.255509181626,3119.76823308283,3108.900296920819}),
        u(start={1299806.4489164315,1285387.9947949746,1273764.0690164426,
              1264416.0307001695,1256903.2814154255,1250862.9045688016}))),
    UtubeHotLeg(
      P(start={15603796.0,15577727.614323026,15551709.344574464,
            15525716.51949442,15499735.670685165,15473759.57870937,
            15447784.465941858}),
      Pr(start={0.9268004226314326,0.8971396347539066,0.8775416482324144,
            0.8642027240272148,0.8549049826417218}),
      Q(start={4756.0,4756.000000000027,4756.000000000049,4756.00000000023,
            4755.999999999889,4756.000000000298}),
      Re1(start={816995.3279499422,793442.6308189121,775076.3558366023,
            760661.5616884755,749299.5768554021}),
      Re2(start={847542.9276429247,817037.1249277274,793480.3047247764,
            775111.1863511867,760694.370248839,749330.9116737837}),
      Tp(start={587.1410688151972,581.351590143596,576.5140193067363,
            572.5233561655502,569.2602531471077}),
      dW1(start={-207505371.01517224,-169198262.74651945,-137090988.37001908,-110582572.39883913,
            -88924042.55678439}),
      dpf(start={14143.81194485569,13764.518632868756,13482.820473560074,
            13270.392383482202,13108.327493526067,12983.5743541072}),
      dpg(start={11924.872459909686,12253.751115692325,12510.004606484494,
            12710.456425773087,12867.764482269038,12991.53841340589}),
      h(start={1470840.0,1427209.7706023622,1391634.021496701,
            1362809.1711245335,1339557.9994679198,1320860.765961436,
            1320860.765961436}),
      hb(start={1470840.0,1427209.7706023622,1391634.021496701,
            1362809.1711245335,1339557.9994679198,1320860.765961436}),
      hc(start={187555.38528948984,185216.582662697,183515.50482115385,
            182238.61828450867,181260.3808521235}),
      k(start={0.5284168200072052,0.5411786649657128,0.551197601495285,
            0.5590597516696791,0.5652344210825633}),
      khi(start={7.048896016373707,7.049056166801461,7.049188260214804,
            7.049296834023914,7.049385718832419,7.049458188350117}),
      lambda(start={0.06577150209968165,0.06577299642363973,0.06577422895454853,
            0.06577524202985809,0.06577607139198169,0.06577674758709429}),
      mu1(start={8.22765460772732E-05,8.47188582186634E-05,
            8.672636345929643E-05,8.836985741172549E-05,8.970985146834447E-05}),
      mu2(start={7.931109039153023E-05,8.227233707518074E-05,
            8.471483582482414E-05,8.672246631019158E-05,8.83660460415918E-05,
            8.970610006578506E-05}),
      pro1(
        T(start={588.9428992538874,582.8393407915719,577.7306261648956,
              573.5115915269528,570.059223059897}),
        cp(start={5952.327309027776,5730.870788777803,5577.298902252968,
              5467.259701867626,5386.495630467126}),
        d(start={691.1393696485393,705.5901911305042,716.894355844004,
              725.7655801061711,732.7457300092888}),
        ddhp(start={-0.00041548998270447905,-0.0003994572498629732,-0.00038757428035144335,
              -0.00037862878142235715,-0.00037180924688829547}),
        ddph(start={1.91319578865726E-06,1.767277665407395E-06,
              1.663998785124558E-06,1.5890580790989328E-06,
              1.5335615339458522E-06}),
        duhp(start={0.9864501839877983,0.9875220463222908,0.9882916342886477,
              0.9888584611169464,0.9892845740694509}),
        duph(start={-0.0013844936953371597,-0.0013620483336613369,-0.0013446373517510808,
              -0.0013310957092423643,-0.0013205331280377107}),
        s(start={3379.650823297018,3318.9650580844377,3269.3205658271177,
              3228.9588862272317,3196.2954342913017}),
        u(start={1404770.003448196,1369675.1460435805,1341214.065496725,
              1318245.3532209487,1299772.0586219742})),
      pro2(
        T(start={596.0859322328323,588.9394205009859,582.836496418955,
              577.7282303951965,573.5095216624127,570.0573948474027}),
        cp(start={6287.424893223906,5953.011747630397,5731.418726272235,
              5577.762203425434,5467.667497320038,5386.865405832935}),
        d(start={672.5655854570739,691.1144182780886,705.5671748706197,
              716.872704187517,725.7449152296059,732.7257937873638}),
        ddhp(start={-0.0004375544161877137,-0.0004155478210543805,-0.0003995069791889279,
              -0.00038761845216844966,-0.0003786690912750822,-0.000371846811703855}),
        ddph(start={2.125515395357024E-06,1.9136349569729935E-06,
              1.7676396373469588E-06,1.6643091376964355E-06,
              1.5893335766528007E-06,1.5338129070568418E-06}),
        duhp(start={0.9849190003473353,0.9864586372445425,0.987530108397677,
              0.9882993906829337,0.9888659780016286,0.9892919034522494}),
        duph(start={-0.0014135846194819153,-0.0013845792245474017,-0.0013621258029841872,
              -0.001344709139399962,-0.001331163363567023,-0.001320597713727444}),
        s(start={3453.2540402962327,3379.6830272823818,3318.99685723751,
              3269.3520811919257,3228.9902023965774,3196.326609120125}),
        u(start={1447760.1167475448,1404788.1563056246,1369692.9611076529,
              1341231.6190219296,1318262.7055270243,1299789.255762014}))),
    heatExchangerWall(Tp(start={572.0789891848713,569.0700877693051,
            566.5630702140578,564.4965590612192,562.8055719815632}), Tp2(start=
            {558.6506498964086,558.1207245404745,557.6914718731815,
            557.340405491338,557.0510114671325})),
    heatExchangerWall1(
      Tp(start={561.6842105044655,560.5653235354345,559.6636953482239,
            558.9333813618834,558.339804121777}),
      Tp2(start={557.2028774753418,556.9535268626199,556.7596785703945,
            556.5999062157297,556.4639234387017}),
      dW2(start={-69249119.55796921,-55812352.70606944,-44875175.252391525,-36058712.51509096,
            -28987599.19303869})),
    volumeA(P(start=6758875.370722485), h(start=1214441.5268755823)),
    volumeA1(P(start=6708825.183275267), h(start=1472510.1268426012)))
    annotation (Placement(transformation(extent={{-34,-32},{32,44}})));

equation
  connect(sinkP1.C, singularPressureLoss1.C2)
    annotation (Line(points={{74,66},{52,66},{50,66}}));
  connect(singularPressureLoss2.C1, sourceQ1.C)
    annotation (Line(points={{48,35},{72,35},{72,34}}));
  connect(sourceQ.C, steamGenerator_1SG.fluidInlet1) annotation (Line(points={{-56,-53},
          {-36,-53},{-36,-24.9067},{-11.12,-24.9067}},            color={0,0,
          255}));
  connect(sinkP.C, steamGenerator_1SG.fluidOutletI1) annotation (Line(points={{68,-54},
          {34,-54},{34,-24.9067},{9.12,-24.9067}},           color={0,0,255}));
  connect(singularPressureLoss2.C2, steamGenerator_1SG.fluidInlet)
    annotation (Line(points={{30,35},{26,35},{26,34.3733},{10.44,34.3733}},
        color={0,0,255}));
  connect(singularPressureLoss1.C1, steamGenerator_1SG.fluidOutletI)
    annotation (Line(points={{32,66},{-2,66},{-2,43.7467},{-1,43.7467}},
        color={0,0,255}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
        Rectangle(
          lineColor={200,200,200},
          fillColor={248,248,248},
          fillPattern=FillPattern.HorizontalCylinder,
          extent={{-100.0,-100.0},{100.0,100.0}},
          radius=25.0),
        Rectangle(
          lineColor={128,128,128},
          extent={{-100.0,-100.0},{100.0,100.0}},
          radius=25.0),
        Polygon(
          origin={8.0,14.0},
          lineColor={78,138,73},
          fillColor={78,138,73},
          pattern=LinePattern.None,
          fillPattern=FillPattern.Solid,
          points={{-58.0,46.0},{42.0,-14.0},{-58.0,-74.0},{-58.0,46.0}})}),
                                                                 Diagram(
        coordinateSystem(preserveAspectRatio=false)),
    Documentation(info="<html>
<p><b>Copyright &copy; EDF 2002 - 2019 </p>
<p><b>ThermoSysPro Version 3.2 </h4>
</html>"));
end TestSteamGenerator_1SG;
