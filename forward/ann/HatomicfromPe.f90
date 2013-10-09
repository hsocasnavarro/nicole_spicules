 Module HatomicfromPe
 Implicit None
Integer, Parameter :: nlayers=4, nmaxperlayer=10, ninputs=3, noutputs=1
 Integer, Dimension(nlayers) :: Nonlin
 Integer, Dimension(0:nlayers) :: nperlayer
 Real (Kind=8), Dimension(nlayers,nmaxperlayer,nmaxperlayer) :: W
 Real (Kind=8), Dimension(nlayers,nmaxperlayer) :: Beta
 Real (Kind=8), Dimension(ninputs) :: xnorm,xmean,inputs
 Real (Kind=8), Dimension(noutputs) :: ynorm,ymean,outputs
 Real (Kind=8), Dimension(0:nlayers, nmaxperlayer) :: y
Data Nonlin(:)/1,1,1,1/
Data nperlayer(:)/3,10,10,10,1/
Data xnorm(:)/ 0.2096303283691406D+04, 0.5597151360148449D+01, 0.9996472597122192D+00/
Data xmean(:)/ 0.2687769131540399D+04,-0.3435466698725930D+01,-0.5005958698987961D+00/
Data ynorm(:)/ 0.7323348839269178D+00/
Data ymean(:)/ 0.4614444843476507D+00/
Data W(1,1,:)/-0.1121428112890370D+01,-0.2545138523345480D+00,-0.2144847183525621D-03, 0.5278299296818138D-01, 0.1464310146170390D&
&+00, 0.1069761215546140D+00,-0.5206530610222009D-01, 0.1313379920944350D+00, 0.9356030837875724D-01, 0.1052068083080850D+00/
Data W(1,2,:)/ 0.5633164867268831D-01,-0.2178683261083840D+00,-0.5138044641359766D-01, 0.1227861297147140D+00, 0.6355510856444056D&
&-01, 0.7417203870826779D-01,-0.6318995392801594D-01,-0.1423917566486950D+00, 0.1290808133531650D+00,-0.1272315213335000D+00/
Data W(1,3,:)/-0.1624893755384810D+01,-0.4975024316906830D+00,-0.5336061669321032D-02, 0.1348558818392840D+00,-0.1341941683782930D&
&+00, 0.1302193062137650D+00,-0.1290771596612950D+00, 0.4356556994248579D-01, 0.1114045377604900D+00,-0.1198257488487690D+00/
Data W(1,4,:)/-0.5049619634729990D+00, 0.6206683589459810D+01, 0.7547082247527130D+01,-0.1043982784871880D+00, 0.1564515723337460D&
&+00, 0.8022460709458774D-01,-0.8918452553920135D-01, 0.5037273437419098D-01, 0.1233869952610146D-01,-0.6304515930608312D-02/
Data W(1,5,:)/-0.1570739008062360D+00,-0.3359112305587240D-01, 0.2585771392852202D-01, 0.2712307505850869D-01, 0.8445428835016636D&
&-01,-0.1745044402293731D-01, 0.6625132038103604D-01, 0.9313732978336656D-01,-0.1938433288081942D-01,-0.9210029357869073D-01/
Data W(1,6,:)/ 0.1299965833386200D+00,-0.1517687577935229D-01,-0.2022751951286292D-02,-0.9124088788028764D-01,-0.6063618735293769D&
&-01,-0.7494948534785498D-01, 0.7978297408440610D-01, 0.1574642027101912D-01, 0.4323590656677449D-01, 0.4142911264404125D-01/
Data W(1,7,:)/ 0.2292123945215860D+00, 0.4008944000653230D+00,-0.6674319956329877D-01, 0.1103530562052453D-01,-0.9671601980590130D&
&-01, 0.1479646606148060D+00, 0.2821706774275322D-01,-0.1525408979016770D+00,-0.5870997946481357D-01, 0.1685589961979228D-01/
Data W(1,8,:)/ 0.5158189862269330D+00,-0.6208141379613160D+01,-0.7547434272161880D+01,-0.1237081555421269D-01, 0.1067110686805580D&
&+00,-0.8571256817315648D-01, 0.3905902772629295D-01,-0.1437392147084770D+00, 0.7343594709842007D-02, 0.9793066619565594D-01/
Data W(1,9,:)/ 0.4923619508303550D+00, 0.5375795623390080D+01, 0.7246833557153650D+01, 0.7780236164642972D-01,-0.7618807717297932D&
&-01, 0.5416979948700212D-01, 0.4900719015678941D-01, 0.1376998072406990D+00, 0.1490247746281990D+00, 0.3011298416621610D-03/
Data W(1,10,:)/-0.1657504231914950D+01,-0.1045839142121180D+01,-0.6192375490691695D-02,-0.1047635627080420D+00, 0.1348571491160950&
&D+00, 0.1124677032662943D-01, 0.1195053452376447D-01, 0.2051393875294429D-01,-0.4119920630666821D-01,-0.3765835044604780D-02/
Data W(2,1,:)/-0.3546981750716670D+01, 0.3257868155261280D+01, 0.2126256194412650D+01,-0.5944603110491130D+00, 0.5236625954313450D&
&+01, 0.2776263770706970D+01,-0.4697892756690880D+00,-0.6228981185015160D+00,-0.1517064087157112D-01,-0.5544946832775040D+00/
Data W(2,2,:)/ 0.6202959513963240D+00,-0.7178280519811137D-01,-0.1848264888845980D+00,-0.6172195351470527D-01,-0.7043813949467058D&
&-01,-0.1723175876568640D+00, 0.7789816381917325D-01,-0.3554975368590087D-01,-0.6722574245367134D-01,-0.1530533491519749D-01/
Data W(2,3,:)/ 0.2750727846643760D+00, 0.1133347432128560D+00,-0.4302824598026442D-01, 0.3955283384365840D-01,-0.1556604109034189D&
&-01,-0.1200039308376930D+00,-0.1239236125046760D+00, 0.4532343349154740D-01,-0.7204643738159540D-01,-0.4372653353428373D-01/
Data W(2,4,:)/ 0.4448619220854660D+00,-0.1178555404960620D+00,-0.6100283136394007D-01, 0.1123267323175920D+00,-0.3202053802067460D&
&+00,-0.2223625848929548D-01,-0.6547378725109941D-01, 0.1187854539974970D+00, 0.2108234209924075D-01, 0.1101819426264920D+00/
Data W(2,5,:)/ 0.1060713032378250D+01,-0.3435551853049400D+00, 0.1018131509340440D+01, 0.2517181236854950D+00, 0.5111101921558550D&
&+00,-0.1575845868727740D+00, 0.1597016310095700D+00, 0.1743315980635990D+00,-0.7349374150903401D-01,-0.5054474325479730D+00/
Data W(2,6,:)/ 0.1154766444551330D+00,-0.3936563224054863D-01, 0.7982665418565606D-01, 0.1703550617747442D-01, 0.1263560717463390D&
&+00, 0.1269132446541840D+00, 0.1018779090536100D+00,-0.1500261183477850D+00,-0.8947229189744429D-01, 0.4685795957569890D-01/
Data W(2,7,:)/-0.5626124464549874D-01,-0.1076177533393120D+00,-0.1016579014436626D-01,-0.8862109792462650D-01,-0.9945476505040614D&
&-01,-0.1458591114642860D+00,-0.1498016745211230D+00, 0.8592934580604865D-01, 0.1342389999010754D-01, 0.1528027519179490D+00/
Data W(2,8,:)/-0.8004790147507470D+00, 0.3623118995930529D-02, 0.3467964514677490D+00,-0.1620884410042560D+00, 0.2654944321588610D&
&+00, 0.1540955626567660D+00,-0.1154962272089800D+00,-0.1597530243649165D-01, 0.1188635387116300D+00,-0.1374894246352060D+00/
Data W(2,9,:)/ 0.6849987431371840D+00, 0.1173974617723610D+00,-0.2642450267441310D+00,-0.6430334857168389D-01,-0.3241961192815700D&
&+00, 0.4575469022989502D-01, 0.4131861364023875D-01,-0.7514318109064548D-01, 0.1059090686750930D+00, 0.8809620162565361D-01/
Data W(2,10,:)/-0.8059419912636180D+00,-0.6015798828586267D-01, 0.3369882606778430D+00, 0.4926023737817613D-01, 0.4282122552659320&
&D+00,-0.6825787910675615D-02, 0.1844841591553394D-01, 0.1191421463138620D+00, 0.1267261611630030D+00,-0.1377463279221480D+00/
Data W(3,1,:)/ 0.9444795719669150D+01,-0.1853048492347400D+01,-0.8319136013600730D+00,-0.4854113467531750D+00, 0.1516379207521760D&
&+01,-0.9002433144050060D+00,-0.3246558697061570D+00, 0.1658884347696270D+01,-0.3360570090427100D+01, 0.1740072533942260D+01/
Data W(3,2,:)/-0.9183009149065290D-01,-0.1163893164648400D+00,-0.7608013938130290D-01, 0.5915024285593593D-01,-0.8200488421457246D&
&-01, 0.1103290441369770D+00, 0.5543013292867688D-01,-0.1080027148741400D+00,-0.4802218165848392D-01, 0.3610738423770943D-01/
Data W(3,3,:)/-0.2629365961456552D-01, 0.9335674743927473D-01,-0.3117797430916614D-01, 0.1410796830160981D-01,-0.4982048559230980D&
&-01, 0.8471333380791063D-01,-0.9397039597408043D-01, 0.8265731692713091D-01, 0.1121232649096272D-01,-0.1447397907879551D-01/
Data W(3,4,:)/-0.9519410267148451D-01, 0.7986919823798827D-01,-0.6548846538989031D-01,-0.9410755608522087D-01, 0.4239556126528737D&
&-01,-0.5382995401480393D-01, 0.8371001974198586D-01,-0.2312654681926423D-01,-0.1350940372563320D+00, 0.5807214355462019D-01/
Data W(3,5,:)/ 0.1488615103229110D+00, 0.9868521791727634D-01,-0.1077638080146610D+00,-0.9476481611226024D-01,-0.1821521053166250D&
&-01, 0.1239882204041110D+00, 0.9250913981408743D-01, 0.1371422242925150D+00,-0.1450183863392240D+00,-0.8497621246141039D-01/
Data W(3,6,:)/-0.1166152119432653D-01,-0.6293737620581569D-01,-0.2810328849118730D-01, 0.2195437467112550D-01, 0.1201648795450390D&
&+00, 0.1224200270503890D+00, 0.6360218835445883D-01,-0.6415532773477875D-01, 0.4875455463698584D-02, 0.2207692502145673D-01/
Data W(3,7,:)/-0.1139665415612154D-01, 0.4261613398967163D-01, 0.2818471610659038D-01, 0.4551086237735123D-01,-0.4741724502592042D&
&-01, 0.1797346798201891D-01, 0.8456782036053312D-01, 0.5201700144483958D-01,-0.1569161092444520D+00,-0.2302337213887385D-01/
Data W(3,8,:)/ 0.1476330101796840D+00,-0.1368032190575330D+00, 0.7445714904306601D-01,-0.5130335452069901D-01,-0.1370401937837290D&
&+00, 0.1040514242644550D+00,-0.2712056701079326D-01,-0.1408072380130340D+00, 0.1274941424379460D+00,-0.6225292612601786D-01/
Data W(3,9,:)/-0.1205253660496750D+00,-0.3140318365276343D-01, 0.1417668442819320D+00,-0.2903640137088739D-01, 0.3103236264268124D&
&-01, 0.7554603050512732D-01, 0.1511261219092090D+00,-0.8557774396859891D-01,-0.4299295799841479D-01,-0.6078893278947863D-01/
Data W(3,10,:)/ 0.1469237672118040D+00,-0.8291887374583289D-02,-0.2814839771435870D-01,-0.9156859894877610D-01, 0.1249761314463650&
&D+00,-0.1387531107088330D+00, 0.1089234076753660D+00,-0.5586950410155769D-01,-0.4770298340343288D-01,-0.7276103097208692D-01/
Data W(4,1,:)/ 0.3356935704981390D+00, 0.1533727341035600D+00, 0.2134146468114480D+00,-0.1021572097273007D-01, 0.6614616801636075D&
&-01, 0.2089649502485490D+00, 0.2054235320177240D+00, 0.7299454171529360D-02,-0.8167701480263684D-01, 0.4166659108862859D-01/
Data W(4,2,:)/ 0.0000000000000000D+00, 0.0000000000000000D+00, 0.0000000000000000D+00, 0.0000000000000000D+00, 0.0000000000000000D&
&+00, 0.0000000000000000D+00, 0.0000000000000000D+00, 0.0000000000000000D+00, 0.0000000000000000D+00, 0.0000000000000000D+00/
Data W(4,3,:)/ 0.0000000000000000D+00, 0.0000000000000000D+00, 0.0000000000000000D+00, 0.0000000000000000D+00, 0.0000000000000000D&
&+00, 0.0000000000000000D+00, 0.0000000000000000D+00, 0.0000000000000000D+00, 0.0000000000000000D+00, 0.0000000000000000D+00/
Data W(4,4,:)/ 0.0000000000000000D+00, 0.0000000000000000D+00, 0.0000000000000000D+00, 0.0000000000000000D+00, 0.0000000000000000D&
&+00, 0.0000000000000000D+00, 0.0000000000000000D+00, 0.0000000000000000D+00, 0.0000000000000000D+00, 0.0000000000000000D+00/
Data W(4,5,:)/ 0.0000000000000000D+00, 0.0000000000000000D+00, 0.0000000000000000D+00, 0.0000000000000000D+00, 0.0000000000000000D&
&+00, 0.0000000000000000D+00, 0.0000000000000000D+00, 0.0000000000000000D+00, 0.0000000000000000D+00, 0.0000000000000000D+00/
Data W(4,6,:)/ 0.0000000000000000D+00, 0.0000000000000000D+00, 0.0000000000000000D+00, 0.0000000000000000D+00, 0.0000000000000000D&
&+00, 0.0000000000000000D+00, 0.0000000000000000D+00, 0.0000000000000000D+00, 0.0000000000000000D+00, 0.0000000000000000D+00/
Data W(4,7,:)/ 0.0000000000000000D+00, 0.0000000000000000D+00, 0.0000000000000000D+00, 0.0000000000000000D+00, 0.0000000000000000D&
&+00, 0.0000000000000000D+00, 0.0000000000000000D+00, 0.0000000000000000D+00, 0.0000000000000000D+00, 0.0000000000000000D+00/
Data W(4,8,:)/ 0.0000000000000000D+00, 0.0000000000000000D+00, 0.0000000000000000D+00, 0.0000000000000000D+00, 0.0000000000000000D&
&+00, 0.0000000000000000D+00, 0.0000000000000000D+00, 0.0000000000000000D+00, 0.0000000000000000D+00, 0.0000000000000000D+00/
Data W(4,9,:)/ 0.0000000000000000D+00, 0.0000000000000000D+00, 0.0000000000000000D+00, 0.0000000000000000D+00, 0.0000000000000000D&
&+00, 0.0000000000000000D+00, 0.0000000000000000D+00, 0.0000000000000000D+00, 0.0000000000000000D+00, 0.0000000000000000D+00/
Data W(4,10,:)/ 0.0000000000000000D+00, 0.0000000000000000D+00, 0.0000000000000000D+00, 0.0000000000000000D+00, 0.0000000000000000&
&D+00, 0.0000000000000000D+00, 0.0000000000000000D+00, 0.0000000000000000D+00, 0.0000000000000000D+00, 0.0000000000000000D+00/
Data Beta(1,:)/ -0.401398943424676, -9.393940956626474E-002, -1.517043595304603E-002,  2.260192181792463E-002, -0.124211767776242,&
& -5.188029773937435E-002, -2.773405352914589E-002, -2.006940403156185E-002,  1.557017605465208E-002,  0.208694530514950/
Data Beta(2,:)/ -0.262174095099535, -7.885358132605019E-003, -5.521794906314734E-003, -1.419019543144204E-002,  3.062187739214987E&
&-002,  2.643710504337955E-002,  1.668245250441644E-002,  3.540650442085743E-002,  3.632604972263958E-002,  4.687111141661029E-002/
Data Beta(3,:)/ -6.747080687112808E-004,  3.503483540801113E-002,  4.033895096259973E-002,  3.463544701335341E-002, -2.93375811923&
&7471E-002,  1.420348804062595E-002, -3.630032534577794E-002, -3.073028374716790E-002,  4.667018144876264E-002, -1.393652441006782E&
&-002/
Data Beta(4,:)/ -1.530938215719812E-002,  0.000000000000000E+000,  0.000000000000000E+000,  0.000000000000000E+000,  0.00000000000&
&0000E+000,  0.000000000000000E+000,  0.000000000000000E+000,  0.000000000000000E+000,  0.000000000000000E+000,  0.000000000000000E&
&+000/
 End Module HatomicfromPe
