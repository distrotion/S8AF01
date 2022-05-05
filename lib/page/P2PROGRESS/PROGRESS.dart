import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tpk_soi8_staff/widget/common/Loading.dart';

import '../../bloc/BlocEvent/01-getstaffdata.dart';
import '../../data/global.dart';
import '../../data/model.dart';
import '../../widget/soi8card/01-premix/premixmain.dart';
import '../../widget/soi8card/02-coilcoating/coilcoating.dart';
import '../../widget/soi8card/03-hydrophilic/hydrophilic.dart';
import '../../widget/soi8card/04-plx/plx.dart';
import '../../widget/soi8card/05-tritrating/tritrating.dart';
import '../../widget/soi8card/06-powder/powder.dart';
import '../../widget/soi8card/07-liquid/liquid.dart';

class ProgressBody extends StatefulWidget {
  ProgressBody({Key? key, this.data}) : super(key: key);
  List<unitdata>? data;
  @override
  State<ProgressBody> createState() => _ProgressBodyState();
}

class _ProgressBodyState extends State<ProgressBody> {
  @override
  void initState() {
    super.initState();
    context.read<GETSTAFFDATABloc>().add(GETSTAFFDATAget());
  }

  @override
  Widget build(BuildContext context) {
    s8cardvalue datatest = s8cardvalue(
      value01: "Blue - pale yellowish green",
      coValue01: Colors.green,
      value04: "PASS",
      coValue04: Colors.green,
    );
    List<unitdata> _data = widget.data ?? [];
    List<Widget> IPdata = [
      //
      const SizedBox(
        height: 15,
      ),
      Container(
        width: 700,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.black, width: 2),
        ),
        child: Row(
          children: [
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                context.read<GETSTAFFDATABloc>().add(GETSTAFFDATAget());
                onLoadingFAKE(
                  context,
                );
              },
              child: const Icon(
                Icons.refresh,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
      ),
      const SizedBox(
        height: 15,
      ),
    ];

    if (_data.length > 0) {
      for (int i = 0; i < _data.length; i++) {
        if (_data[i].PLANT == 'PREMIX') {
          Widget inList = PREMIXcardBODY(
            SendToAPP: (input) {
              if (_data[i].SumStatus == 'ALL-PASS') {
                ACCEPTION.poid = _data[i].POID;
                ACCEPTION.plant = 'PREMIX';
                context.read<GETSTAFFDATABloc>().add(SENDTOMANA());
              }
            },
            PO: _data[i].PO,
            MATCP: _data[i].MATNO,
            status: _data[i].SumStatus,
            coAPPstr: _data[i].SumStatus == 'ALL-PASS'
                ? Colors.green
                : const Color.fromARGB(255, 230, 210, 33),
            //-------------------------------------------
            COLORch: _data[i].COLOR.active,
            COLORdata: _data[i].COLOR.active
                ? s8cardvalue(
                    value01: _data[i].COLOR.T1,
                    value02: _data[i].COLOR.T2,
                    value03: _data[i].COLOR.T3,
                    value04: _data[i].COLOR.AllSt,
                    coValue01: _data[i].COLOR.T1St == 'lightgreen'
                        ? Colors.green
                        : _data[i].COLOR.T1St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue02: _data[i].COLOR.T2St == 'lightgreen'
                        ? Colors.green
                        : _data[i].COLOR.T2St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue03: _data[i].COLOR.T3St == 'lightgreen'
                        ? Colors.green
                        : _data[i].COLOR.T3St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue04: _data[i].COLOR.AllSt == 'PASS'
                        ? Colors.green
                        : _data[i].COLOR.AllSt == 'REJECT'
                            ? Colors.red
                            : const Color.fromARGB(255, 163, 163, 10),
                  )
                : s8cardvalue(),
            //-------------------------------------------
            APPEARANCEch: _data[i].APPEARANCE.active,
            APPEARANCEdata: _data[i].COLOR.active
                ? s8cardvalue(
                    value01: _data[i].APPEARANCE.T1,
                    value02: _data[i].APPEARANCE.T2,
                    value03: _data[i].APPEARANCE.T3,
                    value04: _data[i].APPEARANCE.AllSt,
                    coValue01: _data[i].APPEARANCE.T1St == 'lightgreen'
                        ? Colors.green
                        : _data[i].APPEARANCE.T1St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue02: _data[i].APPEARANCE.T2St == 'lightgreen'
                        ? Colors.green
                        : _data[i].APPEARANCE.T2St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue03: _data[i].APPEARANCE.T3St == 'lightgreen'
                        ? Colors.green
                        : _data[i].APPEARANCE.T3St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue04: _data[i].APPEARANCE.AllSt == 'PASS'
                        ? Colors.green
                        : _data[i].APPEARANCE.AllSt == 'REJECT'
                            ? Colors.red
                            : const Color.fromARGB(255, 163, 163, 10),
                  )
                : s8cardvalue(),
            //-------------------------------------------
            SGch: _data[i].SG.active,
            SGdata: _data[i].COLOR.active
                ? s8cardvalue(
                    value01: _data[i].SG.T1,
                    value02: _data[i].SG.T2,
                    value03: _data[i].SG.T3,
                    value04: _data[i].SG.AllSt,
                    coValue01: _data[i].SG.T1St == 'lightgreen'
                        ? Colors.green
                        : _data[i].SG.T1St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue02: _data[i].SG.T2St == 'lightgreen'
                        ? Colors.green
                        : _data[i].SG.T2St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue03: _data[i].SG.T3St == 'lightgreen'
                        ? Colors.green
                        : _data[i].SG.T3St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue04: _data[i].SG.AllSt == 'PASS'
                        ? Colors.green
                        : _data[i].SG.AllSt == 'REJECT'
                            ? Colors.red
                            : const Color.fromARGB(255, 163, 163, 10),
                  )
                : s8cardvalue(),
            //-------------------------------------------
            FAch: _data[i].FA.active,
            FAdata: _data[i].COLOR.active
                ? s8cardvalue(
                    value01: _data[i].FA.T1,
                    value02: _data[i].FA.T2,
                    value03: _data[i].FA.T3,
                    value04: _data[i].FA.AllSt,
                    coValue01: _data[i].FA.T1St == 'lightgreen'
                        ? Colors.green
                        : _data[i].FA.T1St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue02: _data[i].FA.T2St == 'lightgreen'
                        ? Colors.green
                        : _data[i].FA.T2St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue03: _data[i].FA.T3St == 'lightgreen'
                        ? Colors.green
                        : _data[i].FA.T3St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue04: _data[i].FA.AllSt == 'PASS'
                        ? Colors.green
                        : _data[i].FA.AllSt == 'REJECT'
                            ? Colors.red
                            : const Color.fromARGB(255, 163, 163, 10),
                  )
                : s8cardvalue(),
            //-------------------------------------------
            TAch: _data[i].TA.active,
            TAdata: _data[i].COLOR.active
                ? s8cardvalue(
                    value01: _data[i].TA.T1,
                    value02: _data[i].TA.T2,
                    value03: _data[i].TA.T3,
                    value04: _data[i].TA.AllSt,
                    coValue01: _data[i].TA.T1St == 'lightgreen'
                        ? Colors.green
                        : _data[i].TA.T1St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue02: _data[i].TA.T2St == 'lightgreen'
                        ? Colors.green
                        : _data[i].TA.T2St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue03: _data[i].TA.T3St == 'lightgreen'
                        ? Colors.green
                        : _data[i].TA.T3St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue04: _data[i].TA.AllSt == 'PASS'
                        ? Colors.green
                        : _data[i].TA.AllSt == 'REJECT'
                            ? Colors.red
                            : const Color.fromARGB(255, 163, 163, 10),
                  )
                : s8cardvalue(),
            //-------------------------------------------
            ZNch: _data[i].ZN.active,
            ZNdata: _data[i].COLOR.active
                ? s8cardvalue(
                    value01: _data[i].ZN.T1,
                    value02: _data[i].ZN.T2,
                    value03: _data[i].ZN.T3,
                    value04: _data[i].ZN.AllSt,
                    coValue01: _data[i].ZN.T1St == 'lightgreen'
                        ? Colors.green
                        : _data[i].ZN.T1St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue02: _data[i].ZN.T2St == 'lightgreen'
                        ? Colors.green
                        : _data[i].ZN.T2St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue03: _data[i].ZN.T3St == 'lightgreen'
                        ? Colors.green
                        : _data[i].ZN.T3St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue04: _data[i].ZN.AllSt == 'PASS'
                        ? Colors.green
                        : _data[i].ZN.AllSt == 'REJECT'
                            ? Colors.red
                            : const Color.fromARGB(255, 163, 163, 10),
                  )
                : s8cardvalue(),
            //-------------------------------------------
            NIch: _data[i].NI.active,
            NIdata: _data[i].COLOR.active
                ? s8cardvalue(
                    value01: _data[i].NI.T1,
                    value02: _data[i].NI.T2,
                    value03: _data[i].NI.T3,
                    value04: _data[i].NI.AllSt,
                    coValue01: _data[i].NI.T1St == 'lightgreen'
                        ? Colors.green
                        : _data[i].NI.T1St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue02: _data[i].NI.T2St == 'lightgreen'
                        ? Colors.green
                        : _data[i].NI.T2St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue03: _data[i].NI.T3St == 'lightgreen'
                        ? Colors.green
                        : _data[i].NI.T3St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue04: _data[i].NI.AllSt == 'PASS'
                        ? Colors.green
                        : _data[i].NI.AllSt == 'REJECT'
                            ? Colors.red
                            : const Color.fromARGB(255, 163, 163, 10),
                  )
                : s8cardvalue(),
            //-------------------------------------------
            MNch: _data[i].MN.active,
            MNdata: _data[i].COLOR.active
                ? s8cardvalue(
                    value01: _data[i].MN.T1,
                    value02: _data[i].MN.T2,
                    value03: _data[i].MN.T3,
                    value04: _data[i].MN.AllSt,
                    coValue01: _data[i].MN.T1St == 'lightgreen'
                        ? Colors.green
                        : _data[i].MN.T1St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue02: _data[i].MN.T2St == 'lightgreen'
                        ? Colors.green
                        : _data[i].MN.T2St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue03: _data[i].MN.T3St == 'lightgreen'
                        ? Colors.green
                        : _data[i].MN.T3St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue04: _data[i].MN.AllSt == 'PASS'
                        ? Colors.green
                        : _data[i].MN.AllSt == 'REJECT'
                            ? Colors.red
                            : const Color.fromARGB(255, 163, 163, 10),
                  )
                : s8cardvalue(),
            //-------------------------------------------
          );
          IPdata.add(inList);
        } else if (_data[i].PLANT == 'COILCOATING') {
          Widget inList = COILCOATINGcardBODY(
            SendToAPP: (input) {
              if (_data[i].SumStatus == 'ALL-PASS') {
                ACCEPTION.poid = _data[i].POID;
                ACCEPTION.plant = 'COILCOATING';
                context.read<GETSTAFFDATABloc>().add(SENDTOMANA());
              }
            },
            PO: _data[i].PO,
            MATCP: _data[i].MATNO,
            status: _data[i].SumStatus,
            coAPPstr: _data[i].SumStatus == 'ALL-PASS'
                ? Colors.green
                : const Color.fromARGB(255, 230, 210, 33),
            //-------------------------------------------
            COLORch: _data[i].COLOR.active,
            COLORdata: _data[i].COLOR.active
                ? s8cardvalue(
                    value01: _data[i].COLOR.T1,
                    value02: _data[i].COLOR.T2,
                    value03: _data[i].COLOR.T3,
                    value04: _data[i].COLOR.AllSt,
                    coValue01: _data[i].COLOR.T1St == 'lightgreen'
                        ? Colors.green
                        : _data[i].COLOR.T1St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue02: _data[i].COLOR.T2St == 'lightgreen'
                        ? Colors.green
                        : _data[i].COLOR.T2St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue03: _data[i].COLOR.T3St == 'lightgreen'
                        ? Colors.green
                        : _data[i].COLOR.T3St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue04: _data[i].COLOR.AllSt == 'PASS'
                        ? Colors.green
                        : _data[i].COLOR.AllSt == 'REJECT'
                            ? Colors.red
                            : const Color.fromARGB(255, 163, 163, 10),
                  )
                : s8cardvalue(),
            //-------------------------------------------
            APPEARANCEch: _data[i].APPEARANCE.active,
            APPEARANCEdata: _data[i].APPEARANCE.active
                ? s8cardvalue(
                    value01: _data[i].APPEARANCE.T1,
                    value02: _data[i].APPEARANCE.T2,
                    value03: _data[i].APPEARANCE.T3,
                    value04: _data[i].APPEARANCE.AllSt,
                    coValue01: _data[i].APPEARANCE.T1St == 'lightgreen'
                        ? Colors.green
                        : _data[i].APPEARANCE.T1St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue02: _data[i].APPEARANCE.T2St == 'lightgreen'
                        ? Colors.green
                        : _data[i].APPEARANCE.T2St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue03: _data[i].APPEARANCE.T3St == 'lightgreen'
                        ? Colors.green
                        : _data[i].APPEARANCE.T3St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue04: _data[i].APPEARANCE.AllSt == 'PASS'
                        ? Colors.green
                        : _data[i].APPEARANCE.AllSt == 'REJECT'
                            ? Colors.red
                            : const Color.fromARGB(255, 163, 163, 10),
                  )
                : s8cardvalue(),
            //-------------------------------------------
            SGch: _data[i].SG.active,
            SGdata: _data[i].SG.active
                ? s8cardvalue(
                    value01: _data[i].SG.T1,
                    value02: _data[i].SG.T2,
                    value03: _data[i].SG.T3,
                    value04: _data[i].SG.AllSt,
                    coValue01: _data[i].SG.T1St == 'lightgreen'
                        ? Colors.green
                        : _data[i].SG.T1St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue02: _data[i].SG.T2St == 'lightgreen'
                        ? Colors.green
                        : _data[i].SG.T2St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue03: _data[i].SG.T3St == 'lightgreen'
                        ? Colors.green
                        : _data[i].SG.T3St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue04: _data[i].SG.AllSt == 'PASS'
                        ? Colors.green
                        : _data[i].SG.AllSt == 'REJECT'
                            ? Colors.red
                            : const Color.fromARGB(255, 163, 163, 10),
                  )
                : s8cardvalue(),
            //-------------------------------------------
            PHch: _data[i].PH.active,
            PHdata: _data[i].SG.active
                ? s8cardvalue(
                    value01: _data[i].PH.T1,
                    value02: _data[i].PH.T2,
                    value03: _data[i].PH.T3,
                    value04: _data[i].PH.AllSt,
                    coValue01: _data[i].PH.T1St == 'lightgreen'
                        ? Colors.green
                        : _data[i].PH.T1St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue02: _data[i].PH.T2St == 'lightgreen'
                        ? Colors.green
                        : _data[i].PH.T2St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue03: _data[i].PH.T3St == 'lightgreen'
                        ? Colors.green
                        : _data[i].PH.T3St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue04: _data[i].PH.AllSt == 'PASS'
                        ? Colors.green
                        : _data[i].PH.AllSt == 'REJECT'
                            ? Colors.red
                            : const Color.fromARGB(255, 163, 163, 10),
                  )
                : s8cardvalue(),
            //-------------------------------------------
            NVCch: _data[i].NVC.active,
            NVCdata: _data[i].NVC.active
                ? s8cardvalue(
                    value01: _data[i].NVC.T1,
                    value02: _data[i].NVC.T2,
                    value03: _data[i].NVC.T3,
                    value04: _data[i].NVC.AllSt,
                    coValue01: _data[i].NVC.T1St == 'lightgreen'
                        ? Colors.green
                        : _data[i].NVC.T1St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue02: _data[i].NVC.T2St == 'lightgreen'
                        ? Colors.green
                        : _data[i].NVC.T2St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue03: _data[i].NVC.T3St == 'lightgreen'
                        ? Colors.green
                        : _data[i].NVC.T3St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue04: _data[i].NVC.AllSt == 'PASS'
                        ? Colors.green
                        : _data[i].NVC.AllSt == 'REJECT'
                            ? Colors.red
                            : const Color.fromARGB(255, 163, 163, 10),
                  )
                : s8cardvalue(),
            //-------------------------------------------
            TALCch: _data[i].T_Al.active,
            TALdata: _data[i].T_Al.active
                ? s8cardvalue(
                    value01: _data[i].T_Al.T1,
                    value02: _data[i].T_Al.T2,
                    value03: _data[i].T_Al.T3,
                    value04: _data[i].T_Al.AllSt,
                    coValue01: _data[i].T_Al.T1St == 'lightgreen'
                        ? Colors.green
                        : _data[i].T_Al.T1St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue02: _data[i].T_Al.T2St == 'lightgreen'
                        ? Colors.green
                        : _data[i].T_Al.T2St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue03: _data[i].T_Al.T3St == 'lightgreen'
                        ? Colors.green
                        : _data[i].T_Al.T3St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue04: _data[i].T_Al.AllSt == 'PASS'
                        ? Colors.green
                        : _data[i].T_Al.AllSt == 'REJECT'
                            ? Colors.red
                            : const Color.fromARGB(255, 163, 163, 10),
                  )
                : s8cardvalue(),
            //-------------------------------------------
            TAch: _data[i].TA.active,
            TAdata: _data[i].TA.active
                ? s8cardvalue(
                    value01: _data[i].TA.T1,
                    value02: _data[i].TA.T2,
                    value03: _data[i].TA.T3,
                    value04: _data[i].TA.AllSt,
                    coValue01: _data[i].TA.T1St == 'lightgreen'
                        ? Colors.green
                        : _data[i].TA.T1St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue02: _data[i].TA.T2St == 'lightgreen'
                        ? Colors.green
                        : _data[i].TA.T2St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue03: _data[i].TA.T3St == 'lightgreen'
                        ? Colors.green
                        : _data[i].TA.T3St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue04: _data[i].TA.AllSt == 'PASS'
                        ? Colors.green
                        : _data[i].TA.AllSt == 'REJECT'
                            ? Colors.red
                            : const Color.fromARGB(255, 163, 163, 10),
                  )
                : s8cardvalue(),
            //-------------------------------------------
          );
          IPdata.add(inList);
        } else if (_data[i].PLANT == 'HYDROPHILIC') {
          Widget inList = HYDROPHILICcardBODY(
            SendToAPP: (input) {
              if (_data[i].SumStatus == 'ALL-PASS') {
                ACCEPTION.poid = _data[i].POID;
                ACCEPTION.plant = 'HYDROPHILIC';
                context.read<GETSTAFFDATABloc>().add(SENDTOMANA());
              }
            },
            PO: _data[i].PO,
            MATCP: _data[i].MATNO,
            status: _data[i].SumStatus,
            coAPPstr: _data[i].SumStatus == 'ALL-PASS'
                ? Colors.green
                : const Color.fromARGB(255, 230, 210, 33),
            //-------------------------------------------
            COLORch: _data[i].COLOR.active,
            COLORdata: _data[i].COLOR.active
                ? s8cardvalue(
                    value01: _data[i].COLOR.T1,
                    value02: _data[i].COLOR.T2,
                    value03: _data[i].COLOR.T3,
                    value04: _data[i].COLOR.AllSt,
                    coValue01: _data[i].COLOR.T1St == 'lightgreen'
                        ? Colors.green
                        : _data[i].COLOR.T1St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue02: _data[i].COLOR.T2St == 'lightgreen'
                        ? Colors.green
                        : _data[i].COLOR.T2St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue03: _data[i].COLOR.T3St == 'lightgreen'
                        ? Colors.green
                        : _data[i].COLOR.T3St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue04: _data[i].COLOR.AllSt == 'PASS'
                        ? Colors.green
                        : _data[i].COLOR.AllSt == 'REJECT'
                            ? Colors.red
                            : const Color.fromARGB(255, 163, 163, 10),
                  )
                : s8cardvalue(),
            //-------------------------------------------
            APPEARANCEch: _data[i].APPEARANCE.active,
            APPEARANCEdata: _data[i].APPEARANCE.active
                ? s8cardvalue(
                    value01: _data[i].APPEARANCE.T1,
                    value02: _data[i].APPEARANCE.T2,
                    value03: _data[i].APPEARANCE.T3,
                    value04: _data[i].APPEARANCE.AllSt,
                    coValue01: _data[i].APPEARANCE.T1St == 'lightgreen'
                        ? Colors.green
                        : _data[i].APPEARANCE.T1St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue02: _data[i].APPEARANCE.T2St == 'lightgreen'
                        ? Colors.green
                        : _data[i].APPEARANCE.T2St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue03: _data[i].APPEARANCE.T3St == 'lightgreen'
                        ? Colors.green
                        : _data[i].APPEARANCE.T3St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue04: _data[i].APPEARANCE.AllSt == 'PASS'
                        ? Colors.green
                        : _data[i].APPEARANCE.AllSt == 'REJECT'
                            ? Colors.red
                            : const Color.fromARGB(255, 163, 163, 10),
                  )
                : s8cardvalue(),
            //-------------------------------------------
            SGch: _data[i].SG.active,
            SGdata: _data[i].SG.active
                ? s8cardvalue(
                    value01: _data[i].SG.T1,
                    value02: _data[i].SG.T2,
                    value03: _data[i].SG.T3,
                    value04: _data[i].SG.AllSt,
                    coValue01: _data[i].SG.T1St == 'lightgreen'
                        ? Colors.green
                        : _data[i].SG.T1St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue02: _data[i].SG.T2St == 'lightgreen'
                        ? Colors.green
                        : _data[i].SG.T2St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue03: _data[i].SG.T3St == 'lightgreen'
                        ? Colors.green
                        : _data[i].SG.T3St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue04: _data[i].SG.AllSt == 'PASS'
                        ? Colors.green
                        : _data[i].SG.AllSt == 'REJECT'
                            ? Colors.red
                            : const Color.fromARGB(255, 163, 163, 10),
                  )
                : s8cardvalue(),
            //-------------------------------------------
            PHch: _data[i].PH.active,
            PHdata: _data[i].PH.active
                ? s8cardvalue(
                    value01: _data[i].PH.T1,
                    value02: _data[i].PH.T2,
                    value03: _data[i].PH.T3,
                    value04: _data[i].PH.AllSt,
                    coValue01: _data[i].PH.T1St == 'lightgreen'
                        ? Colors.green
                        : _data[i].PH.T1St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue02: _data[i].PH.T2St == 'lightgreen'
                        ? Colors.green
                        : _data[i].PH.T2St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue03: _data[i].PH.T3St == 'lightgreen'
                        ? Colors.green
                        : _data[i].PH.T3St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue04: _data[i].PH.AllSt == 'PASS'
                        ? Colors.green
                        : _data[i].PH.AllSt == 'REJECT'
                            ? Colors.red
                            : const Color.fromARGB(255, 163, 163, 10),
                  )
                : s8cardvalue(),
            //-------------------------------------------
            CR3ch: _data[i].CR3.active,
            CR3data: _data[i].CR3.active
                ? s8cardvalue(
                    value01: _data[i].CR3.T1,
                    value02: _data[i].CR3.T2,
                    value03: _data[i].CR3.T3,
                    value04: _data[i].CR3.AllSt,
                    coValue01: _data[i].CR3.T1St == 'lightgreen'
                        ? Colors.green
                        : _data[i].CR3.T1St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue02: _data[i].CR3.T2St == 'lightgreen'
                        ? Colors.green
                        : _data[i].CR3.T2St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue03: _data[i].CR3.T3St == 'lightgreen'
                        ? Colors.green
                        : _data[i].CR3.T3St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue04: _data[i].CR3.AllSt == 'PASS'
                        ? Colors.green
                        : _data[i].CR3.AllSt == 'REJECT'
                            ? Colors.red
                            : const Color.fromARGB(255, 163, 163, 10),
                  )
                : s8cardvalue(),
            //-------------------------------------------
            TCrch: _data[i].TCr.active,
            TCrdata: _data[i].CR3.active
                ? s8cardvalue(
                    value01: _data[i].TCr.T1,
                    value02: _data[i].TCr.T2,
                    value03: _data[i].TCr.T3,
                    value04: _data[i].TCr.AllSt,
                    coValue01: _data[i].TCr.T1St == 'lightgreen'
                        ? Colors.green
                        : _data[i].TCr.T1St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue02: _data[i].TCr.T2St == 'lightgreen'
                        ? Colors.green
                        : _data[i].TCr.T2St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue03: _data[i].TCr.T3St == 'lightgreen'
                        ? Colors.green
                        : _data[i].TCr.T3St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue04: _data[i].TCr.AllSt == 'PASS'
                        ? Colors.green
                        : _data[i].TCr.AllSt == 'REJECT'
                            ? Colors.red
                            : const Color.fromARGB(255, 163, 163, 10),
                  )
                : s8cardvalue(),
            //-------------------------------------------
            BRIXCch: _data[i].Brix.active,
            BRIXCdata: _data[i].CR3.active
                ? s8cardvalue(
                    value01: _data[i].Brix.T1,
                    value02: _data[i].Brix.T2,
                    value03: _data[i].Brix.T3,
                    value04: _data[i].Brix.AllSt,
                    coValue01: _data[i].Brix.T1St == 'lightgreen'
                        ? Colors.green
                        : _data[i].Brix.T1St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue02: _data[i].Brix.T2St == 'lightgreen'
                        ? Colors.green
                        : _data[i].Brix.T2St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue03: _data[i].Brix.T3St == 'lightgreen'
                        ? Colors.green
                        : _data[i].Brix.T3St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue04: _data[i].Brix.AllSt == 'PASS'
                        ? Colors.green
                        : _data[i].Brix.AllSt == 'REJECT'
                            ? Colors.red
                            : const Color.fromARGB(255, 163, 163, 10),
                  )
                : s8cardvalue(),
            //-------------------------------------------
            ZRch: _data[i].ZR.active,
            ZRdata: _data[i].CR3.active
                ? s8cardvalue(
                    value01: _data[i].ZR.T1,
                    value02: _data[i].ZR.T2,
                    value03: _data[i].ZR.T3,
                    value04: _data[i].ZR.AllSt,
                    coValue01: _data[i].ZR.T1St == 'lightgreen'
                        ? Colors.green
                        : _data[i].ZR.T1St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue02: _data[i].ZR.T2St == 'lightgreen'
                        ? Colors.green
                        : _data[i].ZR.T2St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue03: _data[i].ZR.T3St == 'lightgreen'
                        ? Colors.green
                        : _data[i].ZR.T3St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue04: _data[i].ZR.AllSt == 'PASS'
                        ? Colors.green
                        : _data[i].ZR.AllSt == 'REJECT'
                            ? Colors.red
                            : const Color.fromARGB(255, 163, 163, 10),
                  )
                : s8cardvalue(),
            //-------------------------------------------
          );
          IPdata.add(inList);
        } else if (_data[i].PLANT == 'PLX') {
          Widget inList = PLXcardBODY(
            SendToAPP: (input) {
              if (_data[i].SumStatus == 'ALL-PASS') {
                ACCEPTION.poid = _data[i].POID;
                ACCEPTION.plant = 'PLX';
                context.read<GETSTAFFDATABloc>().add(SENDTOMANA());
              }
            },
            PO: _data[i].PO,
            MATCP: _data[i].MATNO,
            status: _data[i].SumStatus,
            coAPPstr: _data[i].SumStatus == 'ALL-PASS'
                ? Colors.green
                : const Color.fromARGB(255, 230, 210, 33),
            //-------------------------------------------
            COLORch: _data[i].COLOR.active,
            COLORdata: _data[i].COLOR.active
                ? s8cardvalue(
                    value01: _data[i].COLOR.T1,
                    value02: _data[i].COLOR.T2,
                    value03: _data[i].COLOR.T3,
                    value04: _data[i].COLOR.AllSt,
                    coValue01: _data[i].COLOR.T1St == 'lightgreen'
                        ? Colors.green
                        : _data[i].COLOR.T1St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue02: _data[i].COLOR.T2St == 'lightgreen'
                        ? Colors.green
                        : _data[i].COLOR.T2St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue03: _data[i].COLOR.T3St == 'lightgreen'
                        ? Colors.green
                        : _data[i].COLOR.T3St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue04: _data[i].COLOR.AllSt == 'PASS'
                        ? Colors.green
                        : _data[i].COLOR.AllSt == 'REJECT'
                            ? Colors.red
                            : const Color.fromARGB(255, 163, 163, 10),
                  )
                : s8cardvalue(),
            //-------------------------------------------
            APPEARANCEch: _data[i].APPEARANCE.active,
            APPEARANCEdata: _data[i].APPEARANCE.active
                ? s8cardvalue(
                    value01: _data[i].APPEARANCE.T1,
                    value02: _data[i].APPEARANCE.T2,
                    value03: _data[i].APPEARANCE.T3,
                    value04: _data[i].APPEARANCE.AllSt,
                    coValue01: _data[i].APPEARANCE.T1St == 'lightgreen'
                        ? Colors.green
                        : _data[i].APPEARANCE.T1St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue02: _data[i].APPEARANCE.T2St == 'lightgreen'
                        ? Colors.green
                        : _data[i].APPEARANCE.T2St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue03: _data[i].APPEARANCE.T3St == 'lightgreen'
                        ? Colors.green
                        : _data[i].APPEARANCE.T3St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue04: _data[i].APPEARANCE.AllSt == 'PASS'
                        ? Colors.green
                        : _data[i].APPEARANCE.AllSt == 'REJECT'
                            ? Colors.red
                            : const Color.fromARGB(255, 163, 163, 10),
                  )
                : s8cardvalue(),
            //-------------------------------------------
            TCch: _data[i].TC.active,
            TCdata: _data[i].TC.active
                ? s8cardvalue(
                    value01: _data[i].TC.T1,
                    value02: _data[i].TC.T2,
                    value03: _data[i].TC.T3,
                    value04: _data[i].TC.AllSt,
                    coValue01: _data[i].TC.T1St == 'lightgreen'
                        ? Colors.green
                        : _data[i].TC.T1St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue02: _data[i].TC.T2St == 'lightgreen'
                        ? Colors.green
                        : _data[i].TC.T2St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue03: _data[i].TC.T3St == 'lightgreen'
                        ? Colors.green
                        : _data[i].TC.T3St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue04: _data[i].TC.AllSt == 'PASS'
                        ? Colors.green
                        : _data[i].TC.AllSt == 'REJECT'
                            ? Colors.red
                            : const Color.fromARGB(255, 163, 163, 10),
                  )
                : s8cardvalue(),
            //-------------------------------------------
            THOPch: _data[i].THOP.active,
            THOPdata: _data[i].THOP.active
                ? s8cardvalue(
                    value01: _data[i].THOP.T1,
                    value02: _data[i].THOP.T2,
                    value03: _data[i].THOP.T3,
                    value04: _data[i].THOP.AllSt,
                    coValue01: _data[i].THOP.T1St == 'lightgreen'
                        ? Colors.green
                        : _data[i].THOP.T1St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue02: _data[i].THOP.T2St == 'lightgreen'
                        ? Colors.green
                        : _data[i].THOP.T2St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue03: _data[i].THOP.T3St == 'lightgreen'
                        ? Colors.green
                        : _data[i].THOP.T3St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue04: _data[i].THOP.AllSt == 'PASS'
                        ? Colors.green
                        : _data[i].THOP.AllSt == 'REJECT'
                            ? Colors.red
                            : const Color.fromARGB(255, 163, 163, 10),
                  )
                : s8cardvalue(),
            //-------------------------------------------
            FHOPch: _data[i].FHOP.active,
            FHOPdata: _data[i].FHOP.active
                ? s8cardvalue(
                    value01: _data[i].FHOP.T1,
                    value02: _data[i].FHOP.T2,
                    value03: _data[i].FHOP.T3,
                    value04: _data[i].FHOP.AllSt,
                    coValue01: _data[i].FHOP.T1St == 'lightgreen'
                        ? Colors.green
                        : _data[i].FHOP.T1St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue02: _data[i].FHOP.T2St == 'lightgreen'
                        ? Colors.green
                        : _data[i].FHOP.T2St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue03: _data[i].FHOP.T3St == 'lightgreen'
                        ? Colors.green
                        : _data[i].FHOP.T3St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue04: _data[i].FHOP.AllSt == 'PASS'
                        ? Colors.green
                        : _data[i].FHOP.AllSt == 'REJECT'
                            ? Colors.red
                            : const Color.fromARGB(255, 163, 163, 10),
                  )
                : s8cardvalue(),
            //-------------------------------------------
            FTch: _data[i].FT.active,
            FTdata: _data[i].FT.active
                ? s8cardvalue(
                    value01: _data[i].FT.T1,
                    value02: _data[i].FT.T2,
                    value03: _data[i].FT.T3,
                    value04: _data[i].FT.AllSt,
                    coValue01: _data[i].FT.T1St == 'lightgreen'
                        ? Colors.green
                        : _data[i].FT.T1St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue02: _data[i].FT.T2St == 'lightgreen'
                        ? Colors.green
                        : _data[i].FT.T2St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue03: _data[i].FT.T3St == 'lightgreen'
                        ? Colors.green
                        : _data[i].FT.T3St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue04: _data[i].FA.AllSt == 'PASS'
                        ? Colors.green
                        : _data[i].FT.AllSt == 'REJECT'
                            ? Colors.red
                            : const Color.fromARGB(255, 163, 163, 10),
                  )
                : s8cardvalue(),
            //-------------------------------------------
            PaticleSizech: _data[i].PaticleSize.active,
            PaticleSizedata: _data[i].PaticleSize.active
                ? s8cardvalue(
                    value01: _data[i].PaticleSize.T1,
                    value02: _data[i].PaticleSize.T2,
                    value03: _data[i].PaticleSize.T3,
                    value04: _data[i].PaticleSize.AllSt,
                    coValue01: _data[i].PaticleSize.T1St == 'lightgreen'
                        ? Colors.green
                        : _data[i].PaticleSize.T1St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue02: _data[i].PaticleSize.T2St == 'lightgreen'
                        ? Colors.green
                        : _data[i].PaticleSize.T2St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue03: _data[i].PaticleSize.T3St == 'lightgreen'
                        ? Colors.green
                        : _data[i].PaticleSize.T3St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue04: _data[i].PaticleSize.AllSt == 'PASS'
                        ? Colors.green
                        : _data[i].PaticleSize.AllSt == 'REJECT'
                            ? Colors.red
                            : const Color.fromARGB(255, 163, 163, 10),
                  )
                : s8cardvalue(),
            //-------------------------------------------
            NVCch: _data[i].NVC.active,
            NVCdata: _data[i].NVC.active
                ? s8cardvalue(
                    value01: _data[i].NVC.T1,
                    value02: _data[i].NVC.T2,
                    value03: _data[i].NVC.T3,
                    value04: _data[i].NVC.AllSt,
                    coValue01: _data[i].NVC.T1St == 'lightgreen'
                        ? Colors.green
                        : _data[i].NVC.T1St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue02: _data[i].NVC.T2St == 'lightgreen'
                        ? Colors.green
                        : _data[i].NVC.T2St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue03: _data[i].NVC.T3St == 'lightgreen'
                        ? Colors.green
                        : _data[i].NVC.T3St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue04: _data[i].NVC.AllSt == 'PASS'
                        ? Colors.green
                        : _data[i].NVC.AllSt == 'REJECT'
                            ? Colors.red
                            : const Color.fromARGB(255, 163, 163, 10),
                  )
                : s8cardvalue(),
            //-------------------------------------------
          );
          IPdata.add(inList);
        } else if (_data[i].PLANT == 'TRITRATING') {
          Widget inList = TRITRATINGcardBODY(
            SendToAPP: (input) {
              if (_data[i].SumStatus == 'ALL-PASS') {
                ACCEPTION.poid = _data[i].POID;
                ACCEPTION.plant = 'TRITRATING';
                context.read<GETSTAFFDATABloc>().add(SENDTOMANA());
              }
            },
            PO: _data[i].PO,
            MATCP: _data[i].MATNO,
            status: _data[i].SumStatus,
            coAPPstr: _data[i].SumStatus == 'ALL-PASS'
                ? Colors.green
                : const Color.fromARGB(255, 230, 210, 33),
            //-------------------------------------------
            COLORch: _data[i].COLOR.active,
            COLORdata: _data[i].COLOR.active
                ? s8cardvalue(
                    value01: _data[i].COLOR.T1,
                    value02: _data[i].COLOR.T2,
                    value03: _data[i].COLOR.T3,
                    value04: _data[i].COLOR.AllSt,
                    coValue01: _data[i].COLOR.T1St == 'lightgreen'
                        ? Colors.green
                        : _data[i].COLOR.T1St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue02: _data[i].COLOR.T2St == 'lightgreen'
                        ? Colors.green
                        : _data[i].COLOR.T2St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue03: _data[i].COLOR.T3St == 'lightgreen'
                        ? Colors.green
                        : _data[i].COLOR.T3St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue04: _data[i].COLOR.AllSt == 'PASS'
                        ? Colors.green
                        : _data[i].COLOR.AllSt == 'REJECT'
                            ? Colors.red
                            : const Color.fromARGB(255, 163, 163, 10),
                  )
                : s8cardvalue(),
            //-------------------------------------------
            APPEARANCEch: _data[i].APPEARANCE.active,
            APPEARANCEdata: _data[i].APPEARANCE.active
                ? s8cardvalue(
                    value01: _data[i].APPEARANCE.T1,
                    value02: _data[i].APPEARANCE.T2,
                    value03: _data[i].APPEARANCE.T3,
                    value04: _data[i].APPEARANCE.AllSt,
                    coValue01: _data[i].APPEARANCE.T1St == 'lightgreen'
                        ? Colors.green
                        : _data[i].APPEARANCE.T1St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue02: _data[i].APPEARANCE.T2St == 'lightgreen'
                        ? Colors.green
                        : _data[i].APPEARANCE.T2St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue03: _data[i].APPEARANCE.T3St == 'lightgreen'
                        ? Colors.green
                        : _data[i].APPEARANCE.T3St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue04: _data[i].APPEARANCE.AllSt == 'PASS'
                        ? Colors.green
                        : _data[i].APPEARANCE.AllSt == 'REJECT'
                            ? Colors.red
                            : const Color.fromARGB(255, 163, 163, 10),
                  )
                : s8cardvalue(),
            //-------------------------------------------
            SGch: _data[i].SG.active,
            SGdata: _data[i].SG.active
                ? s8cardvalue(
                    value01: _data[i].SG.T1,
                    value02: _data[i].SG.T2,
                    value03: _data[i].SG.T3,
                    value04: _data[i].SG.AllSt,
                    coValue01: _data[i].SG.T1St == 'lightgreen'
                        ? Colors.green
                        : _data[i].SG.T1St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue02: _data[i].SG.T2St == 'lightgreen'
                        ? Colors.green
                        : _data[i].SG.T2St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue03: _data[i].SG.T3St == 'lightgreen'
                        ? Colors.green
                        : _data[i].SG.T3St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue04: _data[i].SG.AllSt == 'PASS'
                        ? Colors.green
                        : _data[i].SG.AllSt == 'REJECT'
                            ? Colors.red
                            : const Color.fromARGB(255, 163, 163, 10),
                  )
                : s8cardvalue(),
            //-------------------------------------------
            TAch: _data[i].TA.active,
            TAdata: _data[i].TA.active
                ? s8cardvalue(
                    value01: _data[i].TA.T1,
                    value02: _data[i].TA.T2,
                    value03: _data[i].TA.T3,
                    value04: _data[i].TA.AllSt,
                    coValue01: _data[i].TA.T1St == 'lightgreen'
                        ? Colors.green
                        : _data[i].TA.T1St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue02: _data[i].TA.T2St == 'lightgreen'
                        ? Colors.green
                        : _data[i].TA.T2St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue03: _data[i].TA.T3St == 'lightgreen'
                        ? Colors.green
                        : _data[i].TA.T3St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue04: _data[i].TA.AllSt == 'PASS'
                        ? Colors.green
                        : _data[i].TA.AllSt == 'REJECT'
                            ? Colors.red
                            : const Color.fromARGB(255, 163, 163, 10),
                  )
                : s8cardvalue(),
            //-------------------------------------------
            T_Alch: _data[i].T_Al.active,
            T_Aldata: _data[i].T_Al.active
                ? s8cardvalue(
                    value01: _data[i].T_Al.T1,
                    value02: _data[i].T_Al.T2,
                    value03: _data[i].T_Al.T3,
                    value04: _data[i].T_Al.AllSt,
                    coValue01: _data[i].T_Al.T1St == 'lightgreen'
                        ? Colors.green
                        : _data[i].T_Al.T1St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue02: _data[i].T_Al.T2St == 'lightgreen'
                        ? Colors.green
                        : _data[i].T_Al.T2St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue03: _data[i].T_Al.T3St == 'lightgreen'
                        ? Colors.green
                        : _data[i].T_Al.T3St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue04: _data[i].T_Al.AllSt == 'PASS'
                        ? Colors.green
                        : _data[i].T_Al.AllSt == 'REJECT'
                            ? Colors.red
                            : const Color.fromARGB(255, 163, 163, 10),
                  )
                : s8cardvalue(),
            //-------------------------------------------
            PHch: _data[i].PH.active,
            PHdata: _data[i].PH.active
                ? s8cardvalue(
                    value01: _data[i].PH.T1,
                    value02: _data[i].PH.T2,
                    value03: _data[i].PH.T3,
                    value04: _data[i].PH.AllSt,
                    coValue01: _data[i].PH.T1St == 'lightgreen'
                        ? Colors.green
                        : _data[i].PH.T1St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue02: _data[i].PH.T2St == 'lightgreen'
                        ? Colors.green
                        : _data[i].PH.T2St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue03: _data[i].PH.T3St == 'lightgreen'
                        ? Colors.green
                        : _data[i].PH.T3St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue04: _data[i].PH.AllSt == 'PASS'
                        ? Colors.green
                        : _data[i].COLOR.AllSt == 'REJECT'
                            ? Colors.red
                            : const Color.fromARGB(255, 163, 163, 10),
                  )
                : s8cardvalue(),
            //-------------------------------------------
            FACTORch: _data[i].FACTOR.active,
            FACTORdata: _data[i].FACTOR.active
                ? s8cardvalue(
                    value01: _data[i].FACTOR.T1,
                    value02: _data[i].FACTOR.T2,
                    value03: _data[i].FACTOR.T3,
                    value04: _data[i].FACTOR.AllSt,
                    coValue01: _data[i].FACTOR.T1St == 'lightgreen'
                        ? Colors.green
                        : _data[i].FACTOR.T1St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue02: _data[i].FACTOR.T2St == 'lightgreen'
                        ? Colors.green
                        : _data[i].FACTOR.T2St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue03: _data[i].FACTOR.T3St == 'lightgreen'
                        ? Colors.green
                        : _data[i].FACTOR.T3St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue04: _data[i].FACTOR.AllSt == 'PASS'
                        ? Colors.green
                        : _data[i].FACTOR.AllSt == 'REJECT'
                            ? Colors.red
                            : const Color.fromARGB(255, 163, 163, 10),
                  )
                : s8cardvalue(),
            //-------------------------------------------
            ACOch: _data[i].ACO.active,
            ACOdata: _data[i].ACO.active
                ? s8cardvalue(
                    value01: _data[i].ACO.T1,
                    value02: _data[i].ACO.T2,
                    value03: _data[i].ACO.T3,
                    value04: _data[i].ACO.AllSt,
                    coValue01: _data[i].ACO.T1St == 'lightgreen'
                        ? Colors.green
                        : _data[i].ACO.T1St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue02: _data[i].ACO.T2St == 'lightgreen'
                        ? Colors.green
                        : _data[i].ACO.T2St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue03: _data[i].ACO.T3St == 'lightgreen'
                        ? Colors.green
                        : _data[i].ACO.T3St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue04: _data[i].ACO.AllSt == 'PASS'
                        ? Colors.green
                        : _data[i].ACO.AllSt == 'REJECT'
                            ? Colors.red
                            : const Color.fromARGB(255, 163, 163, 10),
                  )
                : s8cardvalue(),
            //-------------------------------------------
          );
          IPdata.add(inList);
        } else if (_data[i].PLANT == 'POWDER') {
          Widget inList = POWDERcardBODY(
            SendToAPP: (input) {
              if (_data[i].SumStatus == 'ALL-PASS') {
                ACCEPTION.poid = _data[i].POID;
                ACCEPTION.plant = 'POWDER';
                context.read<GETSTAFFDATABloc>().add(SENDTOMANA());
              }
            },
            PO: _data[i].PO,
            MATCP: _data[i].MATNO,
            status: _data[i].SumStatus,
            coAPPstr: _data[i].SumStatus == 'ALL-PASS'
                ? Colors.green
                : const Color.fromARGB(255, 230, 210, 33),
            //-------------------------------------------
            COLORch: _data[i].COLOR.active,
            COLORdata: _data[i].COLOR.active
                ? s8cardvalue(
                    value01: _data[i].COLOR.T1,
                    value02: _data[i].COLOR.T2,
                    value03: _data[i].COLOR.T3,
                    value04: _data[i].COLOR.AllSt,
                    coValue01: _data[i].COLOR.T1St == 'lightgreen'
                        ? Colors.green
                        : _data[i].COLOR.T1St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue02: _data[i].COLOR.T2St == 'lightgreen'
                        ? Colors.green
                        : _data[i].COLOR.T2St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue03: _data[i].COLOR.T3St == 'lightgreen'
                        ? Colors.green
                        : _data[i].COLOR.T3St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue04: _data[i].COLOR.AllSt == 'PASS'
                        ? Colors.green
                        : _data[i].COLOR.AllSt == 'REJECT'
                            ? Colors.red
                            : const Color.fromARGB(255, 163, 163, 10),
                  )
                : s8cardvalue(),
            //-------------------------------------------
            APPEARANCEch: _data[i].APPEARANCE.active,
            APPEARANCEdata: _data[i].APPEARANCE.active
                ? s8cardvalue(
                    value01: _data[i].APPEARANCE.T1,
                    value02: _data[i].APPEARANCE.T2,
                    value03: _data[i].APPEARANCE.T3,
                    value04: _data[i].APPEARANCE.AllSt,
                    coValue01: _data[i].APPEARANCE.T1St == 'lightgreen'
                        ? Colors.green
                        : _data[i].APPEARANCE.T1St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue02: _data[i].APPEARANCE.T2St == 'lightgreen'
                        ? Colors.green
                        : _data[i].APPEARANCE.T2St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue03: _data[i].APPEARANCE.T3St == 'lightgreen'
                        ? Colors.green
                        : _data[i].APPEARANCE.T3St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue04: _data[i].APPEARANCE.AllSt == 'PASS'
                        ? Colors.green
                        : _data[i].APPEARANCE.AllSt == 'REJECT'
                            ? Colors.red
                            : const Color.fromARGB(255, 163, 163, 10),
                  )
                : s8cardvalue(),
            //-------------------------------------------
            SGch: _data[i].SG.active,
            SGdata: _data[i].SG.active
                ? s8cardvalue(
                    value01: _data[i].SG.T1,
                    value02: _data[i].SG.T2,
                    value03: _data[i].SG.T3,
                    value04: _data[i].SG.AllSt,
                    coValue01: _data[i].SG.T1St == 'lightgreen'
                        ? Colors.green
                        : _data[i].SG.T1St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue02: _data[i].SG.T2St == 'lightgreen'
                        ? Colors.green
                        : _data[i].SG.T2St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue03: _data[i].SG.T3St == 'lightgreen'
                        ? Colors.green
                        : _data[i].SG.T3St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue04: _data[i].SG.AllSt == 'PASS'
                        ? Colors.green
                        : _data[i].SG.AllSt == 'REJECT'
                            ? Colors.red
                            : const Color.fromARGB(255, 163, 163, 10),
                  )
                : s8cardvalue(),
            //-------------------------------------------
            FAch: _data[i].FA.active,
            FAdata: _data[i].FA.active
                ? s8cardvalue(
                    value01: _data[i].FA.T1,
                    value02: _data[i].FA.T2,
                    value03: _data[i].FA.T3,
                    value04: _data[i].FA.AllSt,
                    coValue01: _data[i].FA.T1St == 'lightgreen'
                        ? Colors.green
                        : _data[i].FA.T1St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue02: _data[i].FA.T2St == 'lightgreen'
                        ? Colors.green
                        : _data[i].FA.T2St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue03: _data[i].FA.T3St == 'lightgreen'
                        ? Colors.green
                        : _data[i].FA.T3St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue04: _data[i].FA.AllSt == 'PASS'
                        ? Colors.green
                        : _data[i].FA.AllSt == 'REJECT'
                            ? Colors.red
                            : const Color.fromARGB(255, 163, 163, 10),
                  )
                : s8cardvalue(),
            //-------------------------------------------
            TAch: _data[i].TA.active,
            TAdata: _data[i].TA.active
                ? s8cardvalue(
                    value01: _data[i].TA.T1,
                    value02: _data[i].TA.T2,
                    value03: _data[i].TA.T3,
                    value04: _data[i].TA.AllSt,
                    coValue01: _data[i].TA.T1St == 'lightgreen'
                        ? Colors.green
                        : _data[i].TA.T1St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue02: _data[i].TA.T2St == 'lightgreen'
                        ? Colors.green
                        : _data[i].TA.T2St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue03: _data[i].TA.T3St == 'lightgreen'
                        ? Colors.green
                        : _data[i].TA.T3St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue04: _data[i].TA.AllSt == 'PASS'
                        ? Colors.green
                        : _data[i].TA.AllSt == 'REJECT'
                            ? Colors.red
                            : const Color.fromARGB(255, 163, 163, 10),
                  )
                : s8cardvalue(),
            //-------------------------------------------
            F_Alch: _data[i].F_Al.active,
            F_Aldata: _data[i].F_Al.active
                ? s8cardvalue(
                    value01: _data[i].F_Al.T1,
                    value02: _data[i].F_Al.T2,
                    value03: _data[i].F_Al.T3,
                    value04: _data[i].F_Al.AllSt,
                    coValue01: _data[i].F_Al.T1St == 'lightgreen'
                        ? Colors.green
                        : _data[i].F_Al.T1St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue02: _data[i].F_Al.T2St == 'lightgreen'
                        ? Colors.green
                        : _data[i].F_Al.T2St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue03: _data[i].F_Al.T3St == 'lightgreen'
                        ? Colors.green
                        : _data[i].F_Al.T3St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue04: _data[i].F_Al.AllSt == 'PASS'
                        ? Colors.green
                        : _data[i].F_Al.AllSt == 'REJECT'
                            ? Colors.red
                            : const Color.fromARGB(255, 163, 163, 10),
                  )
                : s8cardvalue(),
            //-------------------------------------------
            T_Alch: _data[i].T_Al.active,
            T_Aldata: _data[i].T_Al.active
                ? s8cardvalue(
                    value01: _data[i].T_Al.T1,
                    value02: _data[i].T_Al.T2,
                    value03: _data[i].T_Al.T3,
                    value04: _data[i].T_Al.AllSt,
                    coValue01: _data[i].T_Al.T1St == 'lightgreen'
                        ? Colors.green
                        : _data[i].T_Al.T1St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue02: _data[i].T_Al.T2St == 'lightgreen'
                        ? Colors.green
                        : _data[i].T_Al.T2St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue03: _data[i].T_Al.T3St == 'lightgreen'
                        ? Colors.green
                        : _data[i].T_Al.T3St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue04: _data[i].T_Al.AllSt == 'PASS'
                        ? Colors.green
                        : _data[i].T_Al.AllSt == 'REJECT'
                            ? Colors.red
                            : const Color.fromARGB(255, 163, 163, 10),
                  )
                : s8cardvalue(),
            //-------------------------------------------
            ACOch: _data[i].ACO.active,
            ACOdata: _data[i].ACO.active
                ? s8cardvalue(
                    value01: _data[i].ACO.T1,
                    value02: _data[i].ACO.T2,
                    value03: _data[i].ACO.T3,
                    value04: _data[i].ACO.AllSt,
                    coValue01: _data[i].ACO.T1St == 'lightgreen'
                        ? Colors.green
                        : _data[i].ACO.T1St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue02: _data[i].ACO.T2St == 'lightgreen'
                        ? Colors.green
                        : _data[i].ACO.T2St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue03: _data[i].ACO.T3St == 'lightgreen'
                        ? Colors.green
                        : _data[i].ACO.T3St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue04: _data[i].ACO.AllSt == 'PASS'
                        ? Colors.green
                        : _data[i].ACO.AllSt == 'REJECT'
                            ? Colors.red
                            : const Color.fromARGB(255, 163, 163, 10),
                  )
                : s8cardvalue(),
            //-------------------------------------------
            PHch: _data[i].PH.active,
            PHdata: _data[i].PH.active
                ? s8cardvalue(
                    value01: _data[i].PH.T1,
                    value02: _data[i].PH.T2,
                    value03: _data[i].PH.T3,
                    value04: _data[i].PH.AllSt,
                    coValue01: _data[i].PH.T1St == 'lightgreen'
                        ? Colors.green
                        : _data[i].PH.T1St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue02: _data[i].PH.T2St == 'lightgreen'
                        ? Colors.green
                        : _data[i].PH.T2St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue03: _data[i].PH.T3St == 'lightgreen'
                        ? Colors.green
                        : _data[i].PH.T3St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue04: _data[i].PH.AllSt == 'PASS'
                        ? Colors.green
                        : _data[i].PH.AllSt == 'REJECT'
                            ? Colors.red
                            : const Color.fromARGB(255, 163, 163, 10),
                  )
                : s8cardvalue(),
            //-------------------------------------------
            CR6ch: _data[i].CR6.active,
            CR6data: _data[i].CR6.active
                ? s8cardvalue(
                    value01: _data[i].CR6.T1,
                    value02: _data[i].CR6.T2,
                    value03: _data[i].CR6.T3,
                    value04: _data[i].CR6.AllSt,
                    coValue01: _data[i].CR6.T1St == 'lightgreen'
                        ? Colors.green
                        : _data[i].CR6.T1St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue02: _data[i].CR6.T2St == 'lightgreen'
                        ? Colors.green
                        : _data[i].CR6.T2St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue03: _data[i].CR6.T3St == 'lightgreen'
                        ? Colors.green
                        : _data[i].CR6.T3St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue04: _data[i].CR6.AllSt == 'PASS'
                        ? Colors.green
                        : _data[i].CR6.AllSt == 'REJECT'
                            ? Colors.red
                            : const Color.fromARGB(255, 163, 163, 10),
                  )
                : s8cardvalue(),
            //-------------------------------------------
            BABCOCKch: _data[i].BABCOCK.active,
            BABCOCKdata: _data[i].BABCOCK.active
                ? s8cardvalue(
                    value01: _data[i].BABCOCK.T1,
                    value02: _data[i].BABCOCK.T2,
                    value03: _data[i].BABCOCK.T3,
                    value04: _data[i].BABCOCK.AllSt,
                    coValue01: _data[i].BABCOCK.T1St == 'lightgreen'
                        ? Colors.green
                        : _data[i].BABCOCK.T1St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue02: _data[i].BABCOCK.T2St == 'lightgreen'
                        ? Colors.green
                        : _data[i].BABCOCK.T2St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue03: _data[i].BABCOCK.T3St == 'lightgreen'
                        ? Colors.green
                        : _data[i].BABCOCK.T3St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue04: _data[i].BABCOCK.AllSt == 'PASS'
                        ? Colors.green
                        : _data[i].BABCOCK.AllSt == 'REJECT'
                            ? Colors.red
                            : const Color.fromARGB(255, 163, 163, 10),
                  )
                : s8cardvalue(),
            //-------------------------------------------
          );
          IPdata.add(inList);
        } else if (_data[i].PLANT == 'LIQUID') {
          Widget inList = LIQUIDcardBODY(
            SendToAPP: (input) {
              if (_data[i].SumStatus == 'ALL-PASS') {
                ACCEPTION.poid = _data[i].POID;
                ACCEPTION.plant = 'LIQUID';
                context.read<GETSTAFFDATABloc>().add(SENDTOMANA());
              }
            },
            PO: _data[i].PO,
            MATCP: _data[i].MATNO,
            status: _data[i].SumStatus,
            coAPPstr: _data[i].SumStatus == 'ALL-PASS'
                ? Colors.green
                : const Color.fromARGB(255, 230, 210, 33),
            //-------------------------------------------
            COLORch: _data[i].COLOR.active,
            COLORdata: _data[i].COLOR.active
                ? s8cardvalue(
                    value01: _data[i].COLOR.T1,
                    value02: _data[i].COLOR.T2,
                    value03: _data[i].COLOR.T3,
                    value04: _data[i].COLOR.AllSt,
                    coValue01: _data[i].COLOR.T1St == 'lightgreen'
                        ? Colors.green
                        : _data[i].COLOR.T1St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue02: _data[i].COLOR.T2St == 'lightgreen'
                        ? Colors.green
                        : _data[i].COLOR.T2St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue03: _data[i].COLOR.T3St == 'lightgreen'
                        ? Colors.green
                        : _data[i].COLOR.T3St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue04: _data[i].COLOR.AllSt == 'PASS'
                        ? Colors.green
                        : _data[i].COLOR.AllSt == 'REJECT'
                            ? Colors.red
                            : const Color.fromARGB(255, 163, 163, 10),
                  )
                : s8cardvalue(),
            //-------------------------------------------
            APPEARANCEch: _data[i].APPEARANCE.active,
            APPEARANCEdata: _data[i].APPEARANCE.active
                ? s8cardvalue(
                    value01: _data[i].APPEARANCE.T1,
                    value02: _data[i].APPEARANCE.T2,
                    value03: _data[i].APPEARANCE.T3,
                    value04: _data[i].APPEARANCE.AllSt,
                    coValue01: _data[i].APPEARANCE.T1St == 'lightgreen'
                        ? Colors.green
                        : _data[i].APPEARANCE.T1St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue02: _data[i].APPEARANCE.T2St == 'lightgreen'
                        ? Colors.green
                        : _data[i].APPEARANCE.T2St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue03: _data[i].APPEARANCE.T3St == 'lightgreen'
                        ? Colors.green
                        : _data[i].APPEARANCE.T3St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue04: _data[i].APPEARANCE.AllSt == 'PASS'
                        ? Colors.green
                        : _data[i].APPEARANCE.AllSt == 'REJECT'
                            ? Colors.red
                            : const Color.fromARGB(255, 163, 163, 10),
                  )
                : s8cardvalue(),
            //-------------------------------------------
            SGch: _data[i].SG.active,
            SGdata: _data[i].SG.active
                ? s8cardvalue(
                    value01: _data[i].SG.T1,
                    value02: _data[i].SG.T2,
                    value03: _data[i].SG.T3,
                    value04: _data[i].SG.AllSt,
                    coValue01: _data[i].SG.T1St == 'lightgreen'
                        ? Colors.green
                        : _data[i].SG.T1St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue02: _data[i].SG.T2St == 'lightgreen'
                        ? Colors.green
                        : _data[i].SG.T2St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue03: _data[i].SG.T3St == 'lightgreen'
                        ? Colors.green
                        : _data[i].SG.T3St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue04: _data[i].SG.AllSt == 'PASS'
                        ? Colors.green
                        : _data[i].SG.AllSt == 'REJECT'
                            ? Colors.red
                            : const Color.fromARGB(255, 163, 163, 10),
                  )
                : s8cardvalue(),
            //-------------------------------------------
            FAch: _data[i].FA.active,
            FAdata: _data[i].FA.active
                ? s8cardvalue(
                    value01: _data[i].FA.T1,
                    value02: _data[i].FA.T2,
                    value03: _data[i].FA.T3,
                    value04: _data[i].FA.AllSt,
                    coValue01: _data[i].FA.T1St == 'lightgreen'
                        ? Colors.green
                        : _data[i].FA.T1St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue02: _data[i].FA.T2St == 'lightgreen'
                        ? Colors.green
                        : _data[i].FA.T2St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue03: _data[i].FA.T3St == 'lightgreen'
                        ? Colors.green
                        : _data[i].FA.T3St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue04: _data[i].FA.AllSt == 'PASS'
                        ? Colors.green
                        : _data[i].FA.AllSt == 'REJECT'
                            ? Colors.red
                            : const Color.fromARGB(255, 163, 163, 10),
                  )
                : s8cardvalue(),
            //-------------------------------------------
            TAch: _data[i].TA.active,
            TAdata: _data[i].TA.active
                ? s8cardvalue(
                    value01: _data[i].TA.T1,
                    value02: _data[i].TA.T2,
                    value03: _data[i].TA.T3,
                    value04: _data[i].TA.AllSt,
                    coValue01: _data[i].TA.T1St == 'lightgreen'
                        ? Colors.green
                        : _data[i].TA.T1St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue02: _data[i].TA.T2St == 'lightgreen'
                        ? Colors.green
                        : _data[i].TA.T2St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue03: _data[i].TA.T3St == 'lightgreen'
                        ? Colors.green
                        : _data[i].TA.T3St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue04: _data[i].TA.AllSt == 'PASS'
                        ? Colors.green
                        : _data[i].TA.AllSt == 'REJECT'
                            ? Colors.red
                            : const Color.fromARGB(255, 163, 163, 10),
                  )
                : s8cardvalue(),
            //-------------------------------------------
            F_Alch: _data[i].F_Al.active,
            F_Aldata: _data[i].F_Al.active
                ? s8cardvalue(
                    value01: _data[i].F_Al.T1,
                    value02: _data[i].F_Al.T2,
                    value03: _data[i].F_Al.T3,
                    value04: _data[i].F_Al.AllSt,
                    coValue01: _data[i].F_Al.T1St == 'lightgreen'
                        ? Colors.green
                        : _data[i].F_Al.T1St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue02: _data[i].F_Al.T2St == 'lightgreen'
                        ? Colors.green
                        : _data[i].F_Al.T2St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue03: _data[i].F_Al.T3St == 'lightgreen'
                        ? Colors.green
                        : _data[i].F_Al.T3St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue04: _data[i].F_Al.AllSt == 'PASS'
                        ? Colors.green
                        : _data[i].F_Al.AllSt == 'REJECT'
                            ? Colors.red
                            : const Color.fromARGB(255, 163, 163, 10),
                  )
                : s8cardvalue(),
            //-------------------------------------------
            T_Alch: _data[i].T_Al.active,
            T_Aldata: _data[i].T_Al.active
                ? s8cardvalue(
                    value01: _data[i].T_Al.T1,
                    value02: _data[i].T_Al.T2,
                    value03: _data[i].T_Al.T3,
                    value04: _data[i].T_Al.AllSt,
                    coValue01: _data[i].T_Al.T1St == 'lightgreen'
                        ? Colors.green
                        : _data[i].T_Al.T1St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue02: _data[i].T_Al.T2St == 'lightgreen'
                        ? Colors.green
                        : _data[i].T_Al.T2St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue03: _data[i].T_Al.T3St == 'lightgreen'
                        ? Colors.green
                        : _data[i].T_Al.T3St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue04: _data[i].T_Al.AllSt == 'PASS'
                        ? Colors.green
                        : _data[i].T_Al.AllSt == 'REJECT'
                            ? Colors.red
                            : const Color.fromARGB(255, 163, 163, 10),
                  )
                : s8cardvalue(),
            //-------------------------------------------
            PHch: _data[i].PH.active,
            PHdata: _data[i].PH.active
                ? s8cardvalue(
                    value01: _data[i].PH.T1,
                    value02: _data[i].PH.T2,
                    value03: _data[i].PH.T3,
                    value04: _data[i].PH.AllSt,
                    coValue01: _data[i].PH.T1St == 'lightgreen'
                        ? Colors.green
                        : _data[i].PH.T1St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue02: _data[i].PH.T2St == 'lightgreen'
                        ? Colors.green
                        : _data[i].PH.T2St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue03: _data[i].PH.T3St == 'lightgreen'
                        ? Colors.green
                        : _data[i].PH.T3St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue04: _data[i].PH.AllSt == 'PASS'
                        ? Colors.green
                        : _data[i].PH.AllSt == 'REJECT'
                            ? Colors.red
                            : const Color.fromARGB(255, 163, 163, 10),
                  )
                : s8cardvalue(),
            //-------------------------------------------
            ALch: _data[i].AL.active,
            ALdata: _data[i].AL.active
                ? s8cardvalue(
                    value01: _data[i].AL.T1,
                    value02: _data[i].AL.T2,
                    value03: _data[i].AL.T3,
                    value04: _data[i].AL.AllSt,
                    coValue01: _data[i].AL.T1St == 'lightgreen'
                        ? Colors.green
                        : _data[i].AL.T1St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue02: _data[i].AL.T2St == 'lightgreen'
                        ? Colors.green
                        : _data[i].AL.T2St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue03: _data[i].AL.T3St == 'lightgreen'
                        ? Colors.green
                        : _data[i].AL.T3St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue04: _data[i].AL.AllSt == 'PASS'
                        ? Colors.green
                        : _data[i].AL.AllSt == 'REJECT'
                            ? Colors.red
                            : const Color.fromARGB(255, 163, 163, 10),
                  )
                : s8cardvalue(),
            //-------------------------------------------
            CEch: _data[i].CE.active,
            CEdata: _data[i].CE.active
                ? s8cardvalue(
                    value01: _data[i].CE.T1,
                    value02: _data[i].CE.T2,
                    value03: _data[i].CE.T3,
                    value04: _data[i].CE.AllSt,
                    coValue01: _data[i].CE.T1St == 'lightgreen'
                        ? Colors.green
                        : _data[i].CE.T1St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue02: _data[i].CE.T2St == 'lightgreen'
                        ? Colors.green
                        : _data[i].CE.T2St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue03: _data[i].CE.T3St == 'lightgreen'
                        ? Colors.green
                        : _data[i].CE.T3St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue04: _data[i].CE.AllSt == 'PASS'
                        ? Colors.green
                        : _data[i].CE.AllSt == 'REJECT'
                            ? Colors.red
                            : const Color.fromARGB(255, 163, 163, 10),
                  )
                : s8cardvalue(),
            //-------------------------------------------
            CR6ch: _data[i].CR6.active,
            CR6data: _data[i].CR6.active
                ? s8cardvalue(
                    value01: _data[i].CR6.T1,
                    value02: _data[i].CR6.T2,
                    value03: _data[i].CR6.T3,
                    value04: _data[i].CR6.AllSt,
                    coValue01: _data[i].CR6.T1St == 'lightgreen'
                        ? Colors.green
                        : _data[i].CR6.T1St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue02: _data[i].CR6.T2St == 'lightgreen'
                        ? Colors.green
                        : _data[i].CR6.T2St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue03: _data[i].CR6.T3St == 'lightgreen'
                        ? Colors.green
                        : _data[i].CR6.T3St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue04: _data[i].CR6.AllSt == 'PASS'
                        ? Colors.green
                        : _data[i].CR6.AllSt == 'REJECT'
                            ? Colors.red
                            : const Color.fromARGB(255, 163, 163, 10),
                  )
                : s8cardvalue(),
            //-------------------------------------------
            TCrch: _data[i].TCr.active,
            TCrdata: _data[i].TCr.active
                ? s8cardvalue(
                    value01: _data[i].TCr.T1,
                    value02: _data[i].TCr.T2,
                    value03: _data[i].TCr.T3,
                    value04: _data[i].TCr.AllSt,
                    coValue01: _data[i].TCr.T1St == 'lightgreen'
                        ? Colors.green
                        : _data[i].TCr.T1St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue02: _data[i].TCr.T2St == 'lightgreen'
                        ? Colors.green
                        : _data[i].TCr.T2St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue03: _data[i].TCr.T3St == 'lightgreen'
                        ? Colors.green
                        : _data[i].TCr.T3St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue04: _data[i].TCr.AllSt == 'PASS'
                        ? Colors.green
                        : _data[i].TCr.AllSt == 'REJECT'
                            ? Colors.red
                            : const Color.fromARGB(255, 163, 163, 10),
                  )
                : s8cardvalue(),
            //-------------------------------------------
            MNch: _data[i].MN.active,
            MNdata: _data[i].MN.active
                ? s8cardvalue(
                    value01: _data[i].MN.T1,
                    value02: _data[i].MN.T2,
                    value03: _data[i].MN.T3,
                    value04: _data[i].MN.AllSt,
                    coValue01: _data[i].MN.T1St == 'lightgreen'
                        ? Colors.green
                        : _data[i].MN.T1St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue02: _data[i].MN.T2St == 'lightgreen'
                        ? Colors.green
                        : _data[i].MN.T2St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue03: _data[i].MN.T3St == 'lightgreen'
                        ? Colors.green
                        : _data[i].MN.T3St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue04: _data[i].MN.AllSt == 'PASS'
                        ? Colors.green
                        : _data[i].MN.AllSt == 'REJECT'
                            ? Colors.red
                            : const Color.fromARGB(255, 163, 163, 10),
                  )
                : s8cardvalue(),
            //-------------------------------------------
            NIch: _data[i].NI.active,
            NIdata: _data[i].NI.active
                ? s8cardvalue(
                    value01: _data[i].NI.T1,
                    value02: _data[i].NI.T2,
                    value03: _data[i].NI.T3,
                    value04: _data[i].NI.AllSt,
                    coValue01: _data[i].NI.T1St == 'lightgreen'
                        ? Colors.green
                        : _data[i].NI.T1St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue02: _data[i].NI.T2St == 'lightgreen'
                        ? Colors.green
                        : _data[i].NI.T2St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue03: _data[i].NI.T3St == 'lightgreen'
                        ? Colors.green
                        : _data[i].NI.T3St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue04: _data[i].NI.AllSt == 'PASS'
                        ? Colors.green
                        : _data[i].NI.AllSt == 'REJECT'
                            ? Colors.red
                            : const Color.fromARGB(255, 163, 163, 10),
                  )
                : s8cardvalue(),
            //-------------------------------------------
            NVCch: _data[i].NVC.active,
            NVCdata: _data[i].NVC.active
                ? s8cardvalue(
                    value01: _data[i].NVC.T1,
                    value02: _data[i].NVC.T2,
                    value03: _data[i].NVC.T3,
                    value04: _data[i].NVC.AllSt,
                    coValue01: _data[i].NVC.T1St == 'lightgreen'
                        ? Colors.green
                        : _data[i].NVC.T1St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue02: _data[i].NVC.T2St == 'lightgreen'
                        ? Colors.green
                        : _data[i].NVC.T2St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue03: _data[i].NVC.T3St == 'lightgreen'
                        ? Colors.green
                        : _data[i].NVC.T3St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue04: _data[i].NVC.AllSt == 'PASS'
                        ? Colors.green
                        : _data[i].NVC.AllSt == 'REJECT'
                            ? Colors.red
                            : const Color.fromARGB(255, 163, 163, 10),
                  )
                : s8cardvalue(),
            //-------------------------------------------
            Starchch: _data[i].Starch.active,
            Starchdata: _data[i].Starch.active
                ? s8cardvalue(
                    value01: _data[i].Starch.T1,
                    value02: _data[i].Starch.T2,
                    value03: _data[i].Starch.T3,
                    value04: _data[i].Starch.AllSt,
                    coValue01: _data[i].Starch.T1St == 'lightgreen'
                        ? Colors.green
                        : _data[i].Starch.T1St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue02: _data[i].Starch.T2St == 'lightgreen'
                        ? Colors.green
                        : _data[i].Starch.T2St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue03: _data[i].Starch.T3St == 'lightgreen'
                        ? Colors.green
                        : _data[i].Starch.T3St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue04: _data[i].Starch.AllSt == 'PASS'
                        ? Colors.green
                        : _data[i].Starch.AllSt == 'REJECT'
                            ? Colors.red
                            : const Color.fromARGB(255, 163, 163, 10),
                  )
                : s8cardvalue(),
            //-------------------------------------------
            Vch: _data[i].V.active,
            Vdata: _data[i].V.active
                ? s8cardvalue(
                    value01: _data[i].V.T1,
                    value02: _data[i].V.T2,
                    value03: _data[i].V.T3,
                    value04: _data[i].V.AllSt,
                    coValue01: _data[i].V.T1St == 'lightgreen'
                        ? Colors.green
                        : _data[i].V.T1St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue02: _data[i].V.T2St == 'lightgreen'
                        ? Colors.green
                        : _data[i].V.T2St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue03: _data[i].V.T3St == 'lightgreen'
                        ? Colors.green
                        : _data[i].V.T3St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue04: _data[i].V.AllSt == 'PASS'
                        ? Colors.green
                        : _data[i].V.AllSt == 'REJECT'
                            ? Colors.red
                            : const Color.fromARGB(255, 163, 163, 10),
                  )
                : s8cardvalue(),
            //-------------------------------------------
            ZNch: _data[i].ZN.active,
            ZNdata: _data[i].ZN.active
                ? s8cardvalue(
                    value01: _data[i].ZN.T1,
                    value02: _data[i].ZN.T2,
                    value03: _data[i].ZN.T3,
                    value04: _data[i].ZN.AllSt,
                    coValue01: _data[i].ZN.T1St == 'lightgreen'
                        ? Colors.green
                        : _data[i].ZN.T1St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue02: _data[i].ZN.T2St == 'lightgreen'
                        ? Colors.green
                        : _data[i].ZN.T2St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue03: _data[i].ZN.T3St == 'lightgreen'
                        ? Colors.green
                        : _data[i].ZN.T3St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue04: _data[i].ZN.AllSt == 'PASS'
                        ? Colors.green
                        : _data[i].ZN.AllSt == 'REJECT'
                            ? Colors.red
                            : const Color.fromARGB(255, 163, 163, 10),
                  )
                : s8cardvalue(),
            //-------------------------------------------
            ZRch: _data[i].ZR.active,
            ZRdata: _data[i].ZR.active
                ? s8cardvalue(
                    value01: _data[i].ZR.T1,
                    value02: _data[i].ZR.T2,
                    value03: _data[i].ZR.T3,
                    value04: _data[i].ZR.AllSt,
                    coValue01: _data[i].ZR.T1St == 'lightgreen'
                        ? Colors.green
                        : _data[i].ZR.T1St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue02: _data[i].ZR.T2St == 'lightgreen'
                        ? Colors.green
                        : _data[i].ZR.T2St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue03: _data[i].ZR.T3St == 'lightgreen'
                        ? Colors.green
                        : _data[i].ZR.T3St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue04: _data[i].ZR.AllSt == 'PASS'
                        ? Colors.green
                        : _data[i].ZR.AllSt == 'REJECT'
                            ? Colors.red
                            : const Color.fromARGB(255, 163, 163, 10),
                  )
                : s8cardvalue(),
            //-------------------------------------------
            Viscositych: _data[i].Viscosity.active,
            Viscositydata: _data[i].Viscosity.active
                ? s8cardvalue(
                    value01: _data[i].Viscosity.T1,
                    value02: _data[i].Viscosity.T2,
                    value03: _data[i].Viscosity.T3,
                    value04: _data[i].Viscosity.AllSt,
                    coValue01: _data[i].Viscosity.T1St == 'lightgreen'
                        ? Colors.green
                        : _data[i].Viscosity.T1St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue02: _data[i].Viscosity.T2St == 'lightgreen'
                        ? Colors.green
                        : _data[i].Viscosity.T2St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue03: _data[i].Viscosity.T3St == 'lightgreen'
                        ? Colors.green
                        : _data[i].Viscosity.T3St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue04: _data[i].Viscosity.AllSt == 'PASS'
                        ? Colors.green
                        : _data[i].Viscosity.AllSt == 'REJECT'
                            ? Colors.red
                            : const Color.fromARGB(255, 163, 163, 10),
                  )
                : s8cardvalue(),
            //-------------------------------------------
            TIch: _data[i].TI.active,
            TIdata: _data[i].TI.active
                ? s8cardvalue(
                    value01: _data[i].TI.T1,
                    value02: _data[i].TI.T2,
                    value03: _data[i].TI.T3,
                    value04: _data[i].TI.AllSt,
                    coValue01: _data[i].TI.T1St == 'lightgreen'
                        ? Colors.green
                        : _data[i].TI.T1St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue02: _data[i].TI.T2St == 'lightgreen'
                        ? Colors.green
                        : _data[i].TI.T2St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue03: _data[i].TI.T3St == 'lightgreen'
                        ? Colors.green
                        : _data[i].TI.T3St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue04: _data[i].TI.AllSt == 'PASS'
                        ? Colors.green
                        : _data[i].TI.AllSt == 'REJECT'
                            ? Colors.red
                            : const Color.fromARGB(255, 163, 163, 10),
                  )
                : s8cardvalue(),
            //-------------------------------------------
            FEch: _data[i].FE.active,
            FEdata: _data[i].FE.active
                ? s8cardvalue(
                    value01: _data[i].FE.T1,
                    value02: _data[i].FE.T2,
                    value03: _data[i].FE.T3,
                    value04: _data[i].FE.AllSt,
                    coValue01: _data[i].FE.T1St == 'lightgreen'
                        ? Colors.green
                        : _data[i].FE.T1St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue02: _data[i].FE.T2St == 'lightgreen'
                        ? Colors.green
                        : _data[i].FE.T2St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue03: _data[i].FE.T3St == 'lightgreen'
                        ? Colors.green
                        : _data[i].FE.T3St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue04: _data[i].FE.AllSt == 'PASS'
                        ? Colors.green
                        : _data[i].FE.AllSt == 'REJECT'
                            ? Colors.red
                            : const Color.fromARGB(255, 163, 163, 10),
                  )
                : s8cardvalue(),
            //-------------------------------------------
            RPch: _data[i].RP.active,
            RPdata: _data[i].RP.active
                ? s8cardvalue(
                    value01: _data[i].RP.T1,
                    value02: _data[i].RP.T2,
                    value03: _data[i].RP.T3,
                    value04: _data[i].RP.AllSt,
                    coValue01: _data[i].RP.T1St == 'lightgreen'
                        ? Colors.green
                        : _data[i].RP.T1St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue02: _data[i].RP.T2St == 'lightgreen'
                        ? Colors.green
                        : _data[i].RP.T2St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue03: _data[i].RP.T3St == 'lightgreen'
                        ? Colors.green
                        : _data[i].RP.T3St == 'red'
                            ? Colors.red
                            : Colors.white,
                    coValue04: _data[i].RP.AllSt == 'PASS'
                        ? Colors.green
                        : _data[i].RP.AllSt == 'REJECT'
                            ? Colors.red
                            : const Color.fromARGB(255, 163, 163, 10),
                  )
                : s8cardvalue(),
            //-------------------------------------------
          );
          IPdata.add(inList);
        }
      }
    }
    return Container(
      height: 20000,
      // color: Colors.black,
      child: SingleChildScrollView(
        child: Column(
          children: IPdata,
        ),
      ),
    );
  }
}
