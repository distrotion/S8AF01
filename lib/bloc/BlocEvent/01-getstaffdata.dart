import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:tpk_soi8_staff/data/model.dart';

//-------------------------------------------------

String server = 'http://127.0.0.1:9210/';

abstract class GETSTAFFDATAEvent {}

class GETSTAFFDATAget extends GETSTAFFDATAEvent {}

class GETSTAFFDATABloc extends Bloc<GETSTAFFDATAEvent, List<unitdata>> {
  GETSTAFFDATABloc() : super([]) {
    on<GETSTAFFDATAget>((event, emit) {
      return _GETSTAFFDATAFn([], emit);
    });
  }
  Future<void> _GETSTAFFDATAFn(
      List<unitdata> toAdd, Emitter<List<unitdata>> emit) async {
    final response = await Dio().post(
      server + "getliststaff",
      data: {},
    );

    List<unitdata> output = [];

    if (response.statusCode == 200) {
      // var databuff = jsonDecode(response.body);
      var databuff = response.data;
      // print(databuff);
      for (int i = 0; i < databuff.length; i++) {
        unitdata datainput = unitdata(
          COLOR: STRjude(),
          APPEARANCE: STRjude(),
          SG: DOUjude(SPEC: edgedata()),
          FA: DOUjude(SPEC: edgedata()),
          TA: DOUjude(SPEC: edgedata()),
          ZN: DOUjude(SPEC: edgedata()),
          NI: DOUjude(SPEC: edgedata()),
          MN: DOUjude(SPEC: edgedata()),
          T_Al: DOUjude(SPEC: edgedata()),
          PH: DOUjude(SPEC: edgedata()),
          NVC: DOUjude(SPEC: edgedata()),
          PURITY: DOUjude(SPEC: edgedata()),
          Brix: DOUjude(SPEC: edgedata()),
          CR3: DOUjude(SPEC: edgedata()),
          CECM: DOUjude(SPEC: edgedata()),
          CE: DOUjude(SPEC: edgedata()),
          TC: DOUjude(SPEC: edgedata()),
          THOP: DOUjude(SPEC: edgedata()),
          FHOP: DOUjude(SPEC: edgedata()),
          FT: DOUjude(SPEC: edgedata()),
          Viscosity: DOUjude(SPEC: edgedata()),
          PaticleSize: DOUjude(SPEC: edgedata()),
          FACTOR: DOUjude(SPEC: edgedata()),
          ACO: DOUjude(SPEC: edgedata()),
          //
          F_Al: DOUjude(SPEC: edgedata()),
          AL: DOUjude(SPEC: edgedata()),
          CR6: DOUjude(SPEC: edgedata()),
          TCr: DOUjude(SPEC: edgedata()),
          Starch: DOUjude(SPEC: edgedata()),
          V: DOUjude(SPEC: edgedata()),
          ZR: DOUjude(SPEC: edgedata()),
          TI: DOUjude(SPEC: edgedata()),
          Surfactant: DOUjude(SPEC: edgedata()),
          FE: DOUjude(SPEC: edgedata()),
          RP: DOUjude(SPEC: edgedata()),
          A_CO: DOUjude(SPEC: edgedata()),
          BABCOCK: DOUjude(SPEC: edgedata()),
        );

        datainput = unitdata(
          POID: databuff[i]['POID'].toString(),
          MATNO: databuff[i]['MATNO'].toString(),
          PO: databuff[i]['PO'].toString(),
          PLANT: databuff[i]['PLANT'].toString(),
          MASTERdb: databuff[i]['MASTERdb'].toString(),
          SumStatus: databuff[i]['SumStatus'].toString(),
          //----------------------------------------------------------------------------------------
          COLOR: ((databuff[i]['COLOR'] == null))
              ? STRjude(
                  active: false,
                )
              : STRjude(
                  active: true,
                  SPEC: databuff[i]['COLOR']['SPEC'].toString(),
                  T1: databuff[i]['COLOR']['T1'].toString(),
                  T1St: databuff[i]['COLOR']['T1Stc'].toString(),
                  T1Stc_comment:
                      databuff[i]['COLOR']['T1Stc_comment'].toString(),
                  T2: databuff[i]['COLOR']['T2'].toString(),
                  T2St: databuff[i]['COLOR']['T2Stc'].toString(),
                  T2Stc_comment:
                      databuff[i]['COLOR']['T2Stc_comment'].toString(),
                  T3: databuff[i]['COLOR']['T3'].toString(),
                  T3St: databuff[i]['COLOR']['T3Stc'].toString(),
                  T3Stc_comment:
                      databuff[i]['COLOR']['T3Stc_comment'].toString(),
                  AllSt: databuff[i]['COLOR']['AllSt'].toString(),
                ),

          //----------------------------------------------------------------------------------------
          // APPEARANCE: STRjude(),
          APPEARANCE: ((databuff[i]['APPEARANCE'] == null))
              ? STRjude(
                  active: false,
                )
              : STRjude(
                  active: true,
                  SPEC: databuff[i]['APPEARANCE']['SPEC'].toString(),
                  T1: databuff[i]['APPEARANCE']['T1'].toString(),
                  T1St: databuff[i]['APPEARANCE']['T1Stc'].toString(),
                  T1Stc_comment:
                      databuff[i]['APPEARANCE']['T1Stc_comment'].toString(),
                  T2: databuff[i]['APPEARANCE']['T2'].toString(),
                  T2St: databuff[i]['APPEARANCE']['T2Stc'].toString(),
                  T2Stc_comment:
                      databuff[i]['APPEARANCE']['T2Stc_comment'].toString(),
                  T3: databuff[i]['APPEARANCE']['T3'].toString(),
                  T3St: databuff[i]['APPEARANCE']['T3Stc'].toString(),
                  T3Stc_comment:
                      databuff[i]['APPEARANCE']['T3Stc_comment'].toString(),
                  AllSt: databuff[i]['APPEARANCE']['AllSt'].toString(),
                ),
          //----------------------------------------------------------------------------------------
          // SG: DOUjude(SPEC: edgedata()),
          SG: ((databuff[i]['SG'] == null))
              ? DOUjude(
                  active: false,
                  SPEC: edgedata(),
                )
              : DOUjude(
                  active: true,
                  SPEC: edgedata(
                    HI: databuff[i]['SG']['SPEC']['HI'].toString(),
                    LOW: databuff[i]['SG']['SPEC']['LOW'].toString(),
                  ),
                  T1: databuff[i]['SG']['T1'].toString(),
                  T1St: databuff[i]['SG']['T1Stc'].toString(),
                  T1Stc_comment: databuff[i]['SG']['T1Stc_comment'].toString(),
                  T2: databuff[i]['SG']['T2'].toString(),
                  T2St: databuff[i]['SG']['T2Stc'].toString(),
                  T2Stc_comment: databuff[i]['SG']['T2Stc_comment'].toString(),
                  T3: databuff[i]['SG']['T3'].toString(),
                  T3St: databuff[i]['SG']['T3Stc'].toString(),
                  T3Stc_comment: databuff[i]['SG']['T3Stc_comment'].toString(),
                  AllSt: databuff[i]['SG']['AllSt'].toString(),
                ),
          //----------------------------------------------------------------------------------------
          // FA: DOUjude(SPEC: edgedata()),
          FA: ((databuff[i]['FA'] == null))
              ? DOUjude(
                  active: false,
                  SPEC: edgedata(),
                )
              : DOUjude(
                  active: true,
                  SPEC: edgedata(
                    HI: databuff[i]['FA']['SPEC']['HI'].toString(),
                    LOW: databuff[i]['FA']['SPEC']['LOW'].toString(),
                  ),
                  T1: databuff[i]['FA']['T1'].toString(),
                  T1St: databuff[i]['FA']['T1Stc'].toString(),
                  T1Stc_comment: databuff[i]['FA']['T1Stc_comment'].toString(),
                  T2: databuff[i]['FA']['T2'].toString(),
                  T2St: databuff[i]['FA']['T2Stc'].toString(),
                  T2Stc_comment: databuff[i]['FA']['T2Stc_comment'].toString(),
                  T3: databuff[i]['FA']['T3'].toString(),
                  T3St: databuff[i]['FA']['T3Stc'].toString(),
                  T3Stc_comment: databuff[i]['FA']['T3Stc_comment'].toString(),
                  AllSt: databuff[i]['FA']['AllSt'].toString(),
                ),
          //----------------------------------------------------------------------------------------
          // TA: DOUjude(SPEC: edgedata()),
          TA: ((databuff[i]['TA'] == null))
              ? DOUjude(
                  active: false,
                  SPEC: edgedata(),
                )
              : DOUjude(
                  active: true,
                  SPEC: edgedata(
                    HI: databuff[i]['TA']['SPEC']['HI'].toString(),
                    LOW: databuff[i]['TA']['SPEC']['LOW'].toString(),
                  ),
                  T1: databuff[i]['TA']['T1'].toString(),
                  T1St: databuff[i]['TA']['T1Stc'].toString(),
                  T1Stc_comment: databuff[i]['TA']['T1Stc_comment'].toString(),
                  T2: databuff[i]['TA']['T2'].toString(),
                  T2St: databuff[i]['TA']['T2Stc'].toString(),
                  T2Stc_comment: databuff[i]['TA']['T2Stc_comment'].toString(),
                  T3: databuff[i]['TA']['T3'].toString(),
                  T3St: databuff[i]['TA']['T3Stc'].toString(),
                  T3Stc_comment: databuff[i]['TA']['T3Stc_comment'].toString(),
                  AllSt: databuff[i]['TA']['AllSt'].toString(),
                ),
          //----------------------------------------------------------------------------------------
          // ZN: DOUjude(SPEC: edgedata()),
          ZN: ((databuff[i]['ZN'] == null))
              ? DOUjude(
                  active: false,
                  SPEC: edgedata(),
                )
              : DOUjude(
                  active: true,
                  SPEC: edgedata(
                    HI: databuff[i]['ZN']['SPEC']['HI'].toString(),
                    LOW: databuff[i]['ZN']['SPEC']['LOW'].toString(),
                  ),
                  T1: databuff[i]['ZN']['T1'].toString(),
                  T1St: databuff[i]['ZN']['T1Stc'].toString(),
                  T1Stc_comment: databuff[i]['ZN']['T1Stc_comment'].toString(),
                  T2: databuff[i]['ZN']['T2'].toString(),
                  T2St: databuff[i]['ZN']['T2Stc'].toString(),
                  T2Stc_comment: databuff[i]['ZN']['T2Stc_comment'].toString(),
                  T3: databuff[i]['ZN']['T3'].toString(),
                  T3St: databuff[i]['ZN']['T3Stc'].toString(),
                  T3Stc_comment: databuff[i]['ZN']['T3Stc_comment'].toString(),
                  AllSt: databuff[i]['ZN']['AllSt'].toString(),
                ),
          //----------------------------------------------------------------------------------------
          // NI: DOUjude(SPEC: edgedata()),
          NI: ((databuff[i]['NI'] == null))
              ? DOUjude(
                  active: false,
                  SPEC: edgedata(),
                )
              : DOUjude(
                  active: true,
                  SPEC: edgedata(
                    HI: databuff[i]['NI']['SPEC']['HI'].toString(),
                    LOW: databuff[i]['NI']['SPEC']['LOW'].toString(),
                  ),
                  T1: databuff[i]['NI']['T1'].toString(),
                  T1St: databuff[i]['NI']['T1Stc'].toString(),
                  T1Stc_comment: databuff[i]['NI']['T1Stc_comment'].toString(),
                  T2: databuff[i]['NI']['T2'].toString(),
                  T2St: databuff[i]['NI']['T2Stc'].toString(),
                  T2Stc_comment: databuff[i]['NI']['T2Stc_comment'].toString(),
                  T3: databuff[i]['NI']['T3'].toString(),
                  T3St: databuff[i]['NI']['T3Stc'].toString(),
                  T3Stc_comment: databuff[i]['NI']['T3Stc_comment'].toString(),
                  AllSt: databuff[i]['NI']['AllSt'].toString(),
                ),
          //----------------------------------------------------------------------------------------
          // MN: DOUjude(SPEC: edgedata()),
          MN: ((databuff[i]['MN'] == null))
              ? DOUjude(
                  active: false,
                  SPEC: edgedata(),
                )
              : DOUjude(
                  active: true,
                  SPEC: edgedata(
                    HI: databuff[i]['MN']['SPEC']['HI'].toString(),
                    LOW: databuff[i]['MN']['SPEC']['LOW'].toString(),
                  ),
                  T1: databuff[i]['MN']['T1'].toString(),
                  T1St: databuff[i]['MN']['T1Stc'].toString(),
                  T1Stc_comment: databuff[i]['MN']['T1Stc_comment'].toString(),
                  T2: databuff[i]['MN']['T2'].toString(),
                  T2St: databuff[i]['MN']['T2Stc'].toString(),
                  T2Stc_comment: databuff[i]['MN']['T2Stc_comment'].toString(),
                  T3: databuff[i]['MN']['T3'].toString(),
                  T3St: databuff[i]['MN']['T3Stc'].toString(),
                  T3Stc_comment: databuff[i]['MN']['T3Stc_comment'].toString(),
                  AllSt: databuff[i]['MN']['AllSt'].toString(),
                ),
          //----------------------------------------------------------------------------------------
          // T_Al: DOUjude(SPEC: edgedata()),
          T_Al: ((databuff[i]['T_Al'] == null))
              ? DOUjude(
                  active: false,
                  SPEC: edgedata(),
                )
              : DOUjude(
                  active: true,
                  SPEC: edgedata(
                    HI: databuff[i]['T_Al']['SPEC']['HI'].toString(),
                    LOW: databuff[i]['T_Al']['SPEC']['LOW'].toString(),
                  ),
                  T1: databuff[i]['T_Al']['T1'].toString(),
                  T1St: databuff[i]['T_Al']['T1Stc'].toString(),
                  T1Stc_comment:
                      databuff[i]['T_Al']['T1Stc_comment'].toString(),
                  T2: databuff[i]['T_Al']['T2'].toString(),
                  T2St: databuff[i]['T_Al']['T2Stc'].toString(),
                  T2Stc_comment:
                      databuff[i]['T_Al']['T2Stc_comment'].toString(),
                  T3: databuff[i]['T_Al']['T3'].toString(),
                  T3St: databuff[i]['T_Al']['T3Stc'].toString(),
                  T3Stc_comment:
                      databuff[i]['T_Al']['T3Stc_comment'].toString(),
                  AllSt: databuff[i]['T_Al']['AllSt'].toString(),
                ),
          //----------------------------------------------------------------------------------------
          // PH: DOUjude(SPEC: edgedata()),
          PH: ((databuff[i]['PH'] == null))
              ? DOUjude(
                  active: false,
                  SPEC: edgedata(),
                )
              : DOUjude(
                  active: true,
                  SPEC: edgedata(
                    HI: databuff[i]['PH']['SPEC']['HI'].toString(),
                    LOW: databuff[i]['PH']['SPEC']['LOW'].toString(),
                  ),
                  T1: databuff[i]['PH']['T1'].toString(),
                  T1St: databuff[i]['PH']['T1Stc'].toString(),
                  T1Stc_comment: databuff[i]['PH']['T1Stc_comment'].toString(),
                  T2: databuff[i]['PH']['T2'].toString(),
                  T2St: databuff[i]['PH']['T2Stc'].toString(),
                  T2Stc_comment: databuff[i]['PH']['T2Stc_comment'].toString(),
                  T3: databuff[i]['PH']['T3'].toString(),
                  T3St: databuff[i]['PH']['T3Stc'].toString(),
                  T3Stc_comment: databuff[i]['PH']['T3Stc_comment'].toString(),
                  AllSt: databuff[i]['PH']['AllSt'].toString(),
                ),
          //----------------------------------------------------------------------------------------
          // NVC: DOUjude(SPEC: edgedata()),
          NVC: ((databuff[i]['NVC'] == null))
              ? DOUjude(
                  active: false,
                  SPEC: edgedata(),
                )
              : DOUjude(
                  active: true,
                  SPEC: edgedata(
                    HI: databuff[i]['NVC']['SPEC']['HI'].toString(),
                    LOW: databuff[i]['NVC']['SPEC']['LOW'].toString(),
                  ),
                  T1: databuff[i]['NVC']['T1'].toString(),
                  T1St: databuff[i]['NVC']['T1Stc'].toString(),
                  T1Stc_comment: databuff[i]['NVC']['T1Stc_comment'].toString(),
                  T2: databuff[i]['NVC']['T2'].toString(),
                  T2St: databuff[i]['NVC']['T2Stc'].toString(),
                  T2Stc_comment: databuff[i]['NVC']['T2Stc_comment'].toString(),
                  T3: databuff[i]['NVC']['T3'].toString(),
                  T3St: databuff[i]['NVC']['T3Stc'].toString(),
                  T3Stc_comment: databuff[i]['NVC']['T3Stc_comment'].toString(),
                  AllSt: databuff[i]['NVC']['AllSt'].toString(),
                ),

          //----------------------------------------------------------------------------------------
          // PURITY: DOUjude(SPEC: edgedata()),
          PURITY: ((databuff[i]['PURITY'] == null))
              ? DOUjude(
                  active: false,
                  SPEC: edgedata(),
                )
              : DOUjude(
                  active: true,
                  SPEC: edgedata(
                    HI: databuff[i]['PURITY']['SPEC']['HI'].toString(),
                    LOW: databuff[i]['PURITY']['SPEC']['LOW'].toString(),
                  ),
                  T1: databuff[i]['PURITY']['T1'].toString(),
                  T1St: databuff[i]['PURITY']['T1Stc'].toString(),
                  T1Stc_comment:
                      databuff[i]['PURITY']['T1Stc_comment'].toString(),
                  T2: databuff[i]['PURITY']['T2'].toString(),
                  T2St: databuff[i]['PURITY']['T2Stc'].toString(),
                  T2Stc_comment:
                      databuff[i]['PURITY']['T2Stc_comment'].toString(),
                  T3: databuff[i]['PURITY']['T3'].toString(),
                  T3St: databuff[i]['PURITY']['T3Stc'].toString(),
                  T3Stc_comment:
                      databuff[i]['PURITY']['T3Stc_comment'].toString(),
                  AllSt: databuff[i]['PURITY']['AllSt'].toString(),
                ),
          //----------------------------------------------------------------------------------------
          // Brix: DOUjude(SPEC: edgedata()),
          Brix: ((databuff[i]['Brix'] == null))
              ? DOUjude(
                  active: false,
                  SPEC: edgedata(),
                )
              : DOUjude(
                  active: true,
                  SPEC: edgedata(
                    HI: databuff[i]['Brix']['SPEC']['HI'].toString(),
                    LOW: databuff[i]['Brix']['SPEC']['LOW'].toString(),
                  ),
                  T1: databuff[i]['Brix']['T1'].toString(),
                  T1St: databuff[i]['Brix']['T1Stc'].toString(),
                  T1Stc_comment:
                      databuff[i]['Brix']['T1Stc_comment'].toString(),
                  T2: databuff[i]['Brix']['T2'].toString(),
                  T2St: databuff[i]['Brix']['T2Stc'].toString(),
                  T2Stc_comment:
                      databuff[i]['Brix']['T2Stc_comment'].toString(),
                  T3: databuff[i]['Brix']['T3'].toString(),
                  T3St: databuff[i]['Brix']['T3Stc'].toString(),
                  T3Stc_comment:
                      databuff[i]['Brix']['T3Stc_comment'].toString(),
                  AllSt: databuff[i]['Brix']['AllSt'].toString(),
                ),
          //----------------------------------------------------------------------------------------
          // CR3: DOUjude(SPEC: edgedata()),
          CR3: ((databuff[i]['CR3'] == null))
              ? DOUjude(
                  active: false,
                  SPEC: edgedata(),
                )
              : DOUjude(
                  active: true,
                  SPEC: edgedata(
                    HI: databuff[i]['CR3']['SPEC']['HI'].toString(),
                    LOW: databuff[i]['CR3']['SPEC']['LOW'].toString(),
                  ),
                  T1: databuff[i]['CR3']['T1'].toString(),
                  T1St: databuff[i]['CR3']['T1Stc'].toString(),
                  T1Stc_comment: databuff[i]['CR3']['T1Stc_comment'].toString(),
                  T2: databuff[i]['CR3']['T2'].toString(),
                  T2St: databuff[i]['CR3']['T2Stc'].toString(),
                  T2Stc_comment: databuff[i]['CR3']['T2Stc_comment'].toString(),
                  T3: databuff[i]['CR3']['T3'].toString(),
                  T3St: databuff[i]['CR3']['T3Stc'].toString(),
                  T3Stc_comment: databuff[i]['CR3']['T3Stc_comment'].toString(),
                  AllSt: databuff[i]['CR3']['AllSt'].toString(),
                ),
          //----------------------------------------------------------------------------------------
          // CECM: DOUjude(SPEC: edgedata()),
          CECM: ((databuff[i]['CECM'] == null))
              ? DOUjude(
                  active: false,
                  SPEC: edgedata(),
                )
              : DOUjude(
                  active: true,
                  SPEC: edgedata(
                    HI: databuff[i]['CECM']['SPEC']['HI'].toString(),
                    LOW: databuff[i]['CECM']['SPEC']['LOW'].toString(),
                  ),
                  T1: databuff[i]['CECM']['T1'].toString(),
                  T1St: databuff[i]['CECM']['T1Stc'].toString(),
                  T1Stc_comment:
                      databuff[i]['CECM']['T1Stc_comment'].toString(),
                  T2: databuff[i]['CECM']['T2'].toString(),
                  T2St: databuff[i]['CECM']['T2Stc'].toString(),
                  T2Stc_comment:
                      databuff[i]['CECM']['T2Stc_comment'].toString(),
                  T3: databuff[i]['CECM']['T3'].toString(),
                  T3St: databuff[i]['CECM']['T3Stc'].toString(),
                  T3Stc_comment:
                      databuff[i]['CECM']['T3Stc_comment'].toString(),
                  AllSt: databuff[i]['CECM']['AllSt'].toString(),
                ),
          //----------------------------------------------------------------------------------------
          // CE: DOUjude(SPEC: edgedata()),
          CE: ((databuff[i]['CE'] == null))
              ? DOUjude(
                  active: false,
                  SPEC: edgedata(),
                )
              : DOUjude(
                  active: true,
                  SPEC: edgedata(
                    HI: databuff[i]['CE']['SPEC']['HI'].toString(),
                    LOW: databuff[i]['CE']['SPEC']['LOW'].toString(),
                  ),
                  T1: databuff[i]['CE']['T1'].toString(),
                  T1St: databuff[i]['CE']['T1Stc'].toString(),
                  T1Stc_comment: databuff[i]['CE']['T1Stc_comment'].toString(),
                  T2: databuff[i]['CE']['T2'].toString(),
                  T2St: databuff[i]['CE']['T2Stc'].toString(),
                  T2Stc_comment: databuff[i]['CE']['T2Stc_comment'].toString(),
                  T3: databuff[i]['CE']['T3'].toString(),
                  T3St: databuff[i]['CE']['T3Stc'].toString(),
                  T3Stc_comment: databuff[i]['CE']['T3Stc_comment'].toString(),
                  AllSt: databuff[i]['CE']['AllSt'].toString(),
                ),
          //----------------------------------------------------------------------------------------
          // TC: DOUjude(SPEC: edgedata()),
          TC: ((databuff[i]['TC'] == null))
              ? DOUjude(
                  active: false,
                  SPEC: edgedata(),
                )
              : DOUjude(
                  active: true,
                  SPEC: edgedata(
                    HI: databuff[i]['TC']['SPEC']['HI'].toString(),
                    LOW: databuff[i]['TC']['SPEC']['LOW'].toString(),
                  ),
                  T1: databuff[i]['TC']['T1'].toString(),
                  T1St: databuff[i]['TC']['T1Stc'].toString(),
                  T1Stc_comment: databuff[i]['TC']['T1Stc_comment'].toString(),
                  T2: databuff[i]['TC']['T2'].toString(),
                  T2St: databuff[i]['TC']['T2Stc'].toString(),
                  T2Stc_comment: databuff[i]['TC']['T2Stc_comment'].toString(),
                  T3: databuff[i]['TC']['T3'].toString(),
                  T3St: databuff[i]['TC']['T3Stc'].toString(),
                  T3Stc_comment: databuff[i]['TC']['T3Stc_comment'].toString(),
                  AllSt: databuff[i]['TC']['AllSt'].toString(),
                ),
          //----------------------------------------------------------------------------------------
          // THOP: DOUjude(SPEC: edgedata()),
          THOP: ((databuff[i]['THOP'] == null))
              ? DOUjude(
                  active: false,
                  SPEC: edgedata(),
                )
              : DOUjude(
                  active: true,
                  SPEC: edgedata(
                    HI: databuff[i]['THOP']['SPEC']['HI'].toString(),
                    LOW: databuff[i]['THOP']['SPEC']['LOW'].toString(),
                  ),
                  T1: databuff[i]['THOP']['T1'].toString(),
                  T1St: databuff[i]['THOP']['T1Stc'].toString(),
                  T1Stc_comment:
                      databuff[i]['THOP']['T1Stc_comment'].toString(),
                  T2: databuff[i]['THOP']['T2'].toString(),
                  T2St: databuff[i]['THOP']['T2Stc'].toString(),
                  T2Stc_comment:
                      databuff[i]['THOP']['T2Stc_comment'].toString(),
                  T3: databuff[i]['THOP']['T3'].toString(),
                  T3St: databuff[i]['THOP']['T3Stc'].toString(),
                  T3Stc_comment:
                      databuff[i]['THOP']['T3Stc_comment'].toString(),
                  AllSt: databuff[i]['THOP']['AllSt'].toString(),
                ),
          //----------------------------------------------------------------------------------------
          // FHOP: DOUjude(SPEC: edgedata()),
          FHOP: ((databuff[i]['FHOP'] == null))
              ? DOUjude(
                  active: false,
                  SPEC: edgedata(),
                )
              : DOUjude(
                  active: true,
                  SPEC: edgedata(
                    HI: databuff[i]['FHOP']['SPEC']['HI'].toString(),
                    LOW: databuff[i]['FHOP']['SPEC']['LOW'].toString(),
                  ),
                  T1: databuff[i]['FHOP']['T1'].toString(),
                  T1St: databuff[i]['FHOP']['T1Stc'].toString(),
                  T1Stc_comment:
                      databuff[i]['FHOP']['T1Stc_comment'].toString(),
                  T2: databuff[i]['FHOP']['T2'].toString(),
                  T2St: databuff[i]['FHOP']['T2Stc'].toString(),
                  T2Stc_comment:
                      databuff[i]['FHOP']['T2Stc_comment'].toString(),
                  T3: databuff[i]['FHOP']['T3'].toString(),
                  T3St: databuff[i]['FHOP']['T3Stc'].toString(),
                  T3Stc_comment:
                      databuff[i]['FHOP']['T3Stc_comment'].toString(),
                  AllSt: databuff[i]['FHOP']['AllSt'].toString(),
                ),
          //----------------------------------------------------------------------------------------
          // FT: DOUjude(SPEC: edgedata()),
          FT: ((databuff[i]['FT'] == null))
              ? DOUjude(
                  active: false,
                  SPEC: edgedata(),
                )
              : DOUjude(
                  active: true,
                  SPEC: edgedata(
                    HI: databuff[i]['FT']['SPEC']['HI'].toString(),
                    LOW: databuff[i]['FT']['SPEC']['LOW'].toString(),
                  ),
                  T1: databuff[i]['FT']['T1'].toString(),
                  T1St: databuff[i]['FT']['T1Stc'].toString(),
                  T1Stc_comment: databuff[i]['FT']['T1Stc_comment'].toString(),
                  T2: databuff[i]['FT']['T2'].toString(),
                  T2St: databuff[i]['FT']['T2Stc'].toString(),
                  T2Stc_comment: databuff[i]['FT']['T2Stc_comment'].toString(),
                  T3: databuff[i]['FT']['T3'].toString(),
                  T3St: databuff[i]['FT']['T3Stc'].toString(),
                  T3Stc_comment: databuff[i]['FT']['T3Stc_comment'].toString(),
                  AllSt: databuff[i]['FT']['AllSt'].toString(),
                ),
          //----------------------------------------------------------------------------------------
          // Viscosity: DOUjude(SPEC: edgedata()),
          Viscosity: ((databuff[i]['Viscosity'] == null))
              ? DOUjude(
                  active: false,
                  SPEC: edgedata(),
                )
              : DOUjude(
                  active: true,
                  SPEC: edgedata(
                    HI: databuff[i]['Viscosity']['SPEC']['HI'].toString(),
                    LOW: databuff[i]['Viscosity']['SPEC']['LOW'].toString(),
                  ),
                  T1: databuff[i]['Viscosity']['T1'].toString(),
                  T1St: databuff[i]['Viscosity']['T1Stc'].toString(),
                  T1Stc_comment:
                      databuff[i]['Viscosity']['T1Stc_comment'].toString(),
                  T2: databuff[i]['Viscosity']['T2'].toString(),
                  T2St: databuff[i]['Viscosity']['T2Stc'].toString(),
                  T2Stc_comment:
                      databuff[i]['Viscosity']['T2Stc_comment'].toString(),
                  T3: databuff[i]['Viscosity']['T3'].toString(),
                  T3St: databuff[i]['Viscosity']['T3Stc'].toString(),
                  T3Stc_comment:
                      databuff[i]['Viscosity']['T3Stc_comment'].toString(),
                  AllSt: databuff[i]['Viscosity']['AllSt'].toString(),
                ),
          //----------------------------------------------------------------------------------------
          // PaticleSize: DOUjude(SPEC: edgedata()),
          PaticleSize: ((databuff[i]['PaticleSize'] == null))
              ? DOUjude(
                  active: false,
                  SPEC: edgedata(),
                )
              : DOUjude(
                  active: true,
                  SPEC: edgedata(
                    HI: databuff[i]['PaticleSize']['SPEC']['HI'].toString(),
                    LOW: databuff[i]['PaticleSize']['SPEC']['LOW'].toString(),
                  ),
                  T1: databuff[i]['PaticleSize']['T1'].toString(),
                  T1St: databuff[i]['PaticleSize']['T1Stc'].toString(),
                  T1Stc_comment:
                      databuff[i]['PaticleSize']['T1Stc_comment'].toString(),
                  T2: databuff[i]['PaticleSize']['T2'].toString(),
                  T2St: databuff[i]['PaticleSize']['T2Stc'].toString(),
                  T2Stc_comment:
                      databuff[i]['PaticleSize']['T2Stc_comment'].toString(),
                  T3: databuff[i]['PaticleSize']['T3'].toString(),
                  T3St: databuff[i]['PaticleSize']['T3Stc'].toString(),
                  T3Stc_comment:
                      databuff[i]['PaticleSize']['T3Stc_comment'].toString(),
                  AllSt: databuff[i]['PaticleSize']['AllSt'].toString(),
                ),
          //----------------------------------------------------------------------------------------
          // FACTOR: DOUjude(SPEC: edgedata()),
          FACTOR: ((databuff[i]['FACTOR'] == null))
              ? DOUjude(
                  active: false,
                  SPEC: edgedata(),
                )
              : DOUjude(
                  active: true,
                  SPEC: edgedata(
                    HI: databuff[i]['FACTOR']['SPEC']['HI'].toString(),
                    LOW: databuff[i]['FACTOR']['SPEC']['LOW'].toString(),
                  ),
                  T1: databuff[i]['FACTOR']['T1'].toString(),
                  T1St: databuff[i]['FACTOR']['T1Stc'].toString(),
                  T1Stc_comment:
                      databuff[i]['FACTOR']['T1Stc_comment'].toString(),
                  T2: databuff[i]['FACTOR']['T2'].toString(),
                  T2St: databuff[i]['FACTOR']['T2Stc'].toString(),
                  T2Stc_comment:
                      databuff[i]['FACTOR']['T2Stc_comment'].toString(),
                  T3: databuff[i]['FACTOR']['T3'].toString(),
                  T3St: databuff[i]['FACTOR']['T3Stc'].toString(),
                  T3Stc_comment:
                      databuff[i]['FACTOR']['T3Stc_comment'].toString(),
                  AllSt: databuff[i]['FACTOR']['AllSt'].toString(),
                ),
          //----------------------------------------------------------------------------------------
          // ACO: DOUjude(SPEC: edgedata()),
          ACO: ((databuff[i]['ACO'] == null))
              ? DOUjude(
                  active: false,
                  SPEC: edgedata(),
                )
              : DOUjude(
                  active: true,
                  SPEC: edgedata(
                    HI: databuff[i]['ACO']['SPEC']['HI'].toString(),
                    LOW: databuff[i]['ACO']['SPEC']['LOW'].toString(),
                  ),
                  T1: databuff[i]['ACO']['T1'].toString(),
                  T1St: databuff[i]['ACO']['T1Stc'].toString(),
                  T1Stc_comment: databuff[i]['ACO']['T1Stc_comment'].toString(),
                  T2: databuff[i]['ACO']['T2'].toString(),
                  T2St: databuff[i]['ACO']['T2Stc'].toString(),
                  T2Stc_comment: databuff[i]['ACO']['T2Stc_comment'].toString(),
                  T3: databuff[i]['ACO']['T3'].toString(),
                  T3St: databuff[i]['ACO']['T3Stc'].toString(),
                  T3Stc_comment: databuff[i]['ACO']['T3Stc_comment'].toString(),
                  AllSt: databuff[i]['ACO']['AllSt'].toString(),
                ),
          //----------------------------------------------------------------------------------------
          //
          // F_Al: DOUjude(SPEC: edgedata()),
          F_Al: ((databuff[i]['F_Al'] == null))
              ? DOUjude(
                  active: false,
                  SPEC: edgedata(),
                )
              : DOUjude(
                  active: true,
                  SPEC: edgedata(
                    HI: databuff[i]['F_Al']['SPEC']['HI'].toString(),
                    LOW: databuff[i]['F_Al']['SPEC']['LOW'].toString(),
                  ),
                  T1: databuff[i]['F_Al']['T1'].toString(),
                  T1St: databuff[i]['F_Al']['T1Stc'].toString(),
                  T1Stc_comment:
                      databuff[i]['F_Al']['T1Stc_comment'].toString(),
                  T2: databuff[i]['F_Al']['T2'].toString(),
                  T2St: databuff[i]['F_Al']['T2Stc'].toString(),
                  T2Stc_comment:
                      databuff[i]['F_Al']['T2Stc_comment'].toString(),
                  T3: databuff[i]['F_Al']['T3'].toString(),
                  T3St: databuff[i]['F_Al']['T3Stc'].toString(),
                  T3Stc_comment:
                      databuff[i]['F_Al']['T3Stc_comment'].toString(),
                  AllSt: databuff[i]['F_Al']['AllSt'].toString(),
                ),
          //----------------------------------------------------------------------------------------
          // AL: DOUjude(SPEC: edgedata()),
          AL: ((databuff[i]['AL'] == null))
              ? DOUjude(
                  active: false,
                  SPEC: edgedata(),
                )
              : DOUjude(
                  active: true,
                  SPEC: edgedata(
                    HI: databuff[i]['AL']['SPEC']['HI'].toString(),
                    LOW: databuff[i]['AL']['SPEC']['LOW'].toString(),
                  ),
                  T1: databuff[i]['AL']['T1'].toString(),
                  T1St: databuff[i]['AL']['T1Stc'].toString(),
                  T1Stc_comment: databuff[i]['AL']['T1Stc_comment'].toString(),
                  T2: databuff[i]['AL']['T2'].toString(),
                  T2St: databuff[i]['AL']['T2Stc'].toString(),
                  T2Stc_comment: databuff[i]['AL']['T2Stc_comment'].toString(),
                  T3: databuff[i]['AL']['T3'].toString(),
                  T3St: databuff[i]['AL']['T3Stc'].toString(),
                  T3Stc_comment: databuff[i]['AL']['T3Stc_comment'].toString(),
                  AllSt: databuff[i]['AL']['AllSt'].toString(),
                ),
          //----------------------------------------------------------------------------------------
          // CR6: DOUjude(SPEC: edgedata()),
          CR6: ((databuff[i]['CR6'] == null))
              ? DOUjude(
                  active: false,
                  SPEC: edgedata(),
                )
              : DOUjude(
                  active: true,
                  SPEC: edgedata(
                    HI: databuff[i]['CR6']['SPEC']['HI'].toString(),
                    LOW: databuff[i]['CR6']['SPEC']['LOW'].toString(),
                  ),
                  T1: databuff[i]['CR6']['T1'].toString(),
                  T1St: databuff[i]['CR6']['T1Stc'].toString(),
                  T1Stc_comment: databuff[i]['CR6']['T1Stc_comment'].toString(),
                  T2: databuff[i]['CR6']['T2'].toString(),
                  T2St: databuff[i]['CR6']['T2Stc'].toString(),
                  T2Stc_comment: databuff[i]['CR6']['T2Stc_comment'].toString(),
                  T3: databuff[i]['CR6']['T3'].toString(),
                  T3St: databuff[i]['CR6']['T3Stc'].toString(),
                  T3Stc_comment: databuff[i]['CR6']['T3Stc_comment'].toString(),
                  AllSt: databuff[i]['CR6']['AllSt'].toString(),
                ),
          //----------------------------------------------------------------------------------------
          // TCr: DOUjude(SPEC: edgedata()),
          TCr: ((databuff[i]['TCr'] == null))
              ? DOUjude(
                  active: false,
                  SPEC: edgedata(),
                )
              : DOUjude(
                  active: true,
                  SPEC: edgedata(
                    HI: databuff[i]['TCr']['SPEC']['HI'].toString(),
                    LOW: databuff[i]['TCr']['SPEC']['LOW'].toString(),
                  ),
                  T1: databuff[i]['TCr']['T1'].toString(),
                  T1St: databuff[i]['TCr']['T1Stc'].toString(),
                  T1Stc_comment: databuff[i]['TCr']['T1Stc_comment'].toString(),
                  T2: databuff[i]['TCr']['T2'].toString(),
                  T2St: databuff[i]['TCr']['T2Stc'].toString(),
                  T2Stc_comment: databuff[i]['TCr']['T2Stc_comment'].toString(),
                  T3: databuff[i]['TCr']['T3'].toString(),
                  T3St: databuff[i]['TCr']['T3Stc'].toString(),
                  T3Stc_comment: databuff[i]['TCr']['T3Stc_comment'].toString(),
                  AllSt: databuff[i]['TCr']['AllSt'].toString(),
                ),
          //----------------------------------------------------------------------------------------
          // Starch: DOUjude(SPEC: edgedata()),
          Starch: ((databuff[i]['Starch'] == null))
              ? DOUjude(
                  active: false,
                  SPEC: edgedata(),
                )
              : DOUjude(
                  active: true,
                  SPEC: edgedata(
                    HI: databuff[i]['Starch']['SPEC']['HI'].toString(),
                    LOW: databuff[i]['Starch']['SPEC']['LOW'].toString(),
                  ),
                  T1: databuff[i]['Starch']['T1'].toString(),
                  T1St: databuff[i]['Starch']['T1Stc'].toString(),
                  T1Stc_comment:
                      databuff[i]['Starch']['T1Stc_comment'].toString(),
                  T2: databuff[i]['Starch']['T2'].toString(),
                  T2St: databuff[i]['Starch']['T2Stc'].toString(),
                  T2Stc_comment:
                      databuff[i]['Starch']['T2Stc_comment'].toString(),
                  T3: databuff[i]['Starch']['T3'].toString(),
                  T3St: databuff[i]['Starch']['T3Stc'].toString(),
                  T3Stc_comment:
                      databuff[i]['Starch']['T3Stc_comment'].toString(),
                  AllSt: databuff[i]['Starch']['AllSt'].toString(),
                ),
          //----------------------------------------------------------------------------------------
          // V: DOUjude(SPEC: edgedata()),
          V: ((databuff[i]['V'] == null))
              ? DOUjude(
                  active: false,
                  SPEC: edgedata(),
                )
              : DOUjude(
                  active: true,
                  SPEC: edgedata(
                    HI: databuff[i]['V']['SPEC']['HI'].toString(),
                    LOW: databuff[i]['V']['SPEC']['LOW'].toString(),
                  ),
                  T1: databuff[i]['V']['T1'].toString(),
                  T1St: databuff[i]['V']['T1Stc'].toString(),
                  T1Stc_comment: databuff[i]['V']['T1Stc_comment'].toString(),
                  T2: databuff[i]['V']['T2'].toString(),
                  T2St: databuff[i]['V']['T2Stc'].toString(),
                  T2Stc_comment: databuff[i]['V']['T2Stc_comment'].toString(),
                  T3: databuff[i]['V']['T3'].toString(),
                  T3St: databuff[i]['V']['T3Stc'].toString(),
                  T3Stc_comment: databuff[i]['V']['T3Stc_comment'].toString(),
                  AllSt: databuff[i]['V']['AllSt'].toString(),
                ),
          //----------------------------------------------------------------------------------------
          // ZR: DOUjude(SPEC: edgedata()),
          ZR: ((databuff[i]['ZR'] == null))
              ? DOUjude(
                  active: false,
                  SPEC: edgedata(),
                )
              : DOUjude(
                  active: true,
                  SPEC: edgedata(
                    HI: databuff[i]['ZR']['SPEC']['HI'].toString(),
                    LOW: databuff[i]['ZR']['SPEC']['LOW'].toString(),
                  ),
                  T1: databuff[i]['ZR']['T1'].toString(),
                  T1St: databuff[i]['ZR']['T1Stc'].toString(),
                  T1Stc_comment: databuff[i]['ZR']['T1Stc_comment'].toString(),
                  T2: databuff[i]['ZR']['T2'].toString(),
                  T2St: databuff[i]['ZR']['T2Stc'].toString(),
                  T2Stc_comment: databuff[i]['ZR']['T2Stc_comment'].toString(),
                  T3: databuff[i]['ZR']['T3'].toString(),
                  T3St: databuff[i]['ZR']['T3Stc'].toString(),
                  T3Stc_comment: databuff[i]['ZR']['T3Stc_comment'].toString(),
                  AllSt: databuff[i]['ZR']['AllSt'].toString(),
                ),
          //----------------------------------------------------------------------------------------
          // TI: DOUjude(SPEC: edgedata()),
          TI: ((databuff[i]['TI'] == null))
              ? DOUjude(
                  active: false,
                  SPEC: edgedata(),
                )
              : DOUjude(
                  active: true,
                  SPEC: edgedata(
                    HI: databuff[i]['TI']['SPEC']['HI'].toString(),
                    LOW: databuff[i]['TI']['SPEC']['LOW'].toString(),
                  ),
                  T1: databuff[i]['TI']['T1'].toString(),
                  T1St: databuff[i]['TI']['T1Stc'].toString(),
                  T1Stc_comment: databuff[i]['TI']['T1Stc_comment'].toString(),
                  T2: databuff[i]['TI']['T2'].toString(),
                  T2St: databuff[i]['TI']['T2Stc'].toString(),
                  T2Stc_comment: databuff[i]['TI']['T2Stc_comment'].toString(),
                  T3: databuff[i]['TI']['T3'].toString(),
                  T3St: databuff[i]['TI']['T3Stc'].toString(),
                  T3Stc_comment: databuff[i]['TI']['T3Stc_comment'].toString(),
                  AllSt: databuff[i]['TI']['AllSt'].toString(),
                ),
          //----------------------------------------------------------------------------------------
          // Surfactant: DOUjude(SPEC: edgedata()),
          Surfactant: ((databuff[i]['Surfactant'] == null))
              ? DOUjude(
                  active: false,
                  SPEC: edgedata(),
                )
              : DOUjude(
                  active: true,
                  SPEC: edgedata(
                    HI: databuff[i]['Surfactant']['SPEC']['HI'].toString(),
                    LOW: databuff[i]['Surfactant']['SPEC']['LOW'].toString(),
                  ),
                  T1: databuff[i]['Surfactant']['T1'].toString(),
                  T1St: databuff[i]['Surfactant']['T1Stc'].toString(),
                  T1Stc_comment:
                      databuff[i]['Surfactant']['T1Stc_comment'].toString(),
                  T2: databuff[i]['Surfactant']['T2'].toString(),
                  T2St: databuff[i]['Surfactant']['T2Stc'].toString(),
                  T2Stc_comment:
                      databuff[i]['Surfactant']['T2Stc_comment'].toString(),
                  T3: databuff[i]['Surfactant']['T3'].toString(),
                  T3St: databuff[i]['Surfactant']['T3Stc'].toString(),
                  T3Stc_comment:
                      databuff[i]['Surfactant']['T3Stc_comment'].toString(),
                  AllSt: databuff[i]['Surfactant']['AllSt'].toString(),
                ),
          //----------------------------------------------------------------------------------------
          // FE: DOUjude(SPEC: edgedata()),
          FE: ((databuff[i]['FE'] == null))
              ? DOUjude(
                  active: false,
                  SPEC: edgedata(),
                )
              : DOUjude(
                  active: true,
                  SPEC: edgedata(
                    HI: databuff[i]['FE']['SPEC']['HI'].toString(),
                    LOW: databuff[i]['FE']['SPEC']['LOW'].toString(),
                  ),
                  T1: databuff[i]['FE']['T1'].toString(),
                  T1St: databuff[i]['FE']['T1Stc'].toString(),
                  T1Stc_comment: databuff[i]['FE']['T1Stc_comment'].toString(),
                  T2: databuff[i]['FE']['T2'].toString(),
                  T2St: databuff[i]['FE']['T2Stc'].toString(),
                  T2Stc_comment: databuff[i]['FE']['T2Stc_comment'].toString(),
                  T3: databuff[i]['FE']['T3'].toString(),
                  T3St: databuff[i]['FE']['T3Stc'].toString(),
                  T3Stc_comment: databuff[i]['FE']['T3Stc_comment'].toString(),
                  AllSt: databuff[i]['FE']['AllSt'].toString(),
                ),
          //----------------------------------------------------------------------------------------
          // RP: DOUjude(SPEC: edgedata()),
          RP: ((databuff[i]['RP'] == null))
              ? DOUjude(
                  active: false,
                  SPEC: edgedata(),
                )
              : DOUjude(
                  active: true,
                  SPEC: edgedata(
                    HI: databuff[i]['RP']['SPEC']['HI'].toString(),
                    LOW: databuff[i]['RP']['SPEC']['LOW'].toString(),
                  ),
                  T1: databuff[i]['RP']['T1'].toString(),
                  T1St: databuff[i]['RP']['T1Stc'].toString(),
                  T1Stc_comment: databuff[i]['RP']['T1Stc_comment'].toString(),
                  T2: databuff[i]['RP']['T2'].toString(),
                  T2St: databuff[i]['RP']['T2Stc'].toString(),
                  T2Stc_comment: databuff[i]['RP']['T2Stc_comment'].toString(),
                  T3: databuff[i]['RP']['T3'].toString(),
                  T3St: databuff[i]['RP']['T3Stc'].toString(),
                  T3Stc_comment: databuff[i]['RP']['T3Stc_comment'].toString(),
                  AllSt: databuff[i]['RP']['AllSt'].toString(),
                ),
          //----------------------------------------------------------------------------------------
          // A_CO: DOUjude(SPEC: edgedata()),
          A_CO: ((databuff[i]['A_CO'] == null))
              ? DOUjude(
                  active: false,
                  SPEC: edgedata(),
                )
              : DOUjude(
                  active: true,
                  SPEC: edgedata(
                    HI: databuff[i]['A_CO']['SPEC']['HI'].toString(),
                    LOW: databuff[i]['A_CO']['SPEC']['LOW'].toString(),
                  ),
                  T1: databuff[i]['A_CO']['T1'].toString(),
                  T1St: databuff[i]['A_CO']['T1Stc'].toString(),
                  T1Stc_comment:
                      databuff[i]['A_CO']['T1Stc_comment'].toString(),
                  T2: databuff[i]['A_CO']['T2'].toString(),
                  T2St: databuff[i]['A_CO']['T2Stc'].toString(),
                  T2Stc_comment:
                      databuff[i]['A_CO']['T2Stc_comment'].toString(),
                  T3: databuff[i]['A_CO']['T3'].toString(),
                  T3St: databuff[i]['A_CO']['T3Stc'].toString(),
                  T3Stc_comment:
                      databuff[i]['A_CO']['T3Stc_comment'].toString(),
                  AllSt: databuff[i]['A_CO']['AllSt'].toString(),
                ),
          //----------------------------------------------------------------------------------------
          // BABCOCK: DOUjude(SPEC: edgedata()),
          BABCOCK: ((databuff[i]['BABCOCK'] == null))
              ? DOUjude(
                  active: false,
                  SPEC: edgedata(),
                )
              : DOUjude(
                  active: true,
                  SPEC: edgedata(
                    HI: databuff[i]['BABCOCK']['SPEC']['HI'].toString(),
                    LOW: databuff[i]['BABCOCK']['SPEC']['LOW'].toString(),
                  ),
                  T1: databuff[i]['BABCOCK']['T1'].toString(),
                  T1St: databuff[i]['BABCOCK']['T1Stc'].toString(),
                  T1Stc_comment:
                      databuff[i]['BABCOCK']['T1Stc_comment'].toString(),
                  T2: databuff[i]['BABCOCK']['T2'].toString(),
                  T2St: databuff[i]['BABCOCK']['T2Stc'].toString(),
                  T2Stc_comment:
                      databuff[i]['BABCOCK']['T2Stc_comment'].toString(),
                  T3: databuff[i]['BABCOCK']['T3'].toString(),
                  T3St: databuff[i]['BABCOCK']['T3Stc'].toString(),
                  T3Stc_comment:
                      databuff[i]['BABCOCK']['T3Stc_comment'].toString(),
                  AllSt: databuff[i]['BABCOCK']['AllSt'].toString(),
                ),
          //----------------------------------------------------------------------------------------
        );
        //
        output.add(datainput);
        //
      }
    } else {
      //
    }

    emit(output);
  }
}

unitdata test = unitdata(
  COLOR: STRjude(),
  APPEARANCE: STRjude(),
  SG: DOUjude(SPEC: edgedata()),
  FA: DOUjude(SPEC: edgedata()),
  TA: DOUjude(SPEC: edgedata()),
  ZN: DOUjude(SPEC: edgedata()),
  NI: DOUjude(SPEC: edgedata()),
  MN: DOUjude(SPEC: edgedata()),
  T_Al: DOUjude(SPEC: edgedata()),
  PH: DOUjude(SPEC: edgedata()),
  NVC: DOUjude(SPEC: edgedata()),
  PURITY: DOUjude(SPEC: edgedata()),
  Brix: DOUjude(SPEC: edgedata()),
  CR3: DOUjude(SPEC: edgedata()),
  CECM: DOUjude(SPEC: edgedata()),
  CE: DOUjude(SPEC: edgedata()),
  TC: DOUjude(SPEC: edgedata()),
  THOP: DOUjude(SPEC: edgedata()),
  FHOP: DOUjude(SPEC: edgedata()),
  FT: DOUjude(SPEC: edgedata()),
  Viscosity: DOUjude(SPEC: edgedata()),
  PaticleSize: DOUjude(SPEC: edgedata()),
  FACTOR: DOUjude(SPEC: edgedata()),
  ACO: DOUjude(SPEC: edgedata()),
  //
  F_Al: DOUjude(SPEC: edgedata()),
  AL: DOUjude(SPEC: edgedata()),
  CR6: DOUjude(SPEC: edgedata()),
  TCr: DOUjude(SPEC: edgedata()),
  Starch: DOUjude(SPEC: edgedata()),
  V: DOUjude(SPEC: edgedata()),
  ZR: DOUjude(SPEC: edgedata()),
  TI: DOUjude(SPEC: edgedata()),
  Surfactant: DOUjude(SPEC: edgedata()),
  FE: DOUjude(SPEC: edgedata()),
  RP: DOUjude(SPEC: edgedata()),
  A_CO: DOUjude(SPEC: edgedata()),
  BABCOCK: DOUjude(SPEC: edgedata()),
);
