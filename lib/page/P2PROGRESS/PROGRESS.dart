import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/BlocEvent/01-getstaffdata.dart';
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
    List<Widget> IPdata = [];

    if (_data.length > 0) {
      for (int i = 0; i < _data.length; i++) {
        if (_data[i].PLANT == 'PREMIX') {
          Widget inList = PREMIXcardBODY(
            PO: _data[i].PO,
            MATCP: _data[i].MATNO,
            status: _data[i].SumStatus,
            //-------------------------------------------
            COLORch: _data[i].COLOR.active,
            COLORdata: _data[i].COLOR.active
                ? s8cardvalue(
                    value01: _data[i].COLOR.T1,
                    value02: _data[i].COLOR.T2,
                    value03: _data[i].COLOR.T3,
                    value04: _data[i].COLOR.AllSt,
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
            PO: _data[i].PO,
            MATCP: _data[i].MATNO,
            //-------------------------------------------
            COLORch: _data[i].COLOR.active,
            COLORdata: _data[i].COLOR.active
                ? s8cardvalue(
                    value01: _data[i].COLOR.T1,
                    value02: _data[i].COLOR.T2,
                    value03: _data[i].COLOR.T3,
                    value04: _data[i].COLOR.AllSt,
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
            PO: _data[i].PO,
            MATCP: _data[i].MATNO,
            //-------------------------------------------
            COLORch: _data[i].COLOR.active,
            COLORdata: _data[i].COLOR.active
                ? s8cardvalue(
                    value01: _data[i].COLOR.T1,
                    value02: _data[i].COLOR.T2,
                    value03: _data[i].COLOR.T3,
                    value04: _data[i].COLOR.AllSt,
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
            PO: _data[i].PO,
            MATCP: _data[i].MATNO,
            //-------------------------------------------
            COLORch: _data[i].COLOR.active,
            COLORdata: _data[i].COLOR.active
                ? s8cardvalue(
                    value01: _data[i].COLOR.T1,
                    value02: _data[i].COLOR.T2,
                    value03: _data[i].COLOR.T3,
                    value04: _data[i].COLOR.AllSt,
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
            PO: _data[i].PO,
            MATCP: _data[i].MATNO,
            //-------------------------------------------
            COLORch: _data[i].COLOR.active,
            COLORdata: _data[i].COLOR.active
                ? s8cardvalue(
                    value01: _data[i].COLOR.T1,
                    value02: _data[i].COLOR.T2,
                    value03: _data[i].COLOR.T3,
                    value04: _data[i].COLOR.AllSt,
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
        } else if (_data[i].PLANT == 'TRITRATING') {
          Widget inList = TRITRATINGcardBODY(
            PO: _data[i].PO,
            MATCP: _data[i].MATNO,
            //-------------------------------------------
            COLORch: _data[i].COLOR.active,
            COLORdata: _data[i].COLOR.active
                ? s8cardvalue(
                    value01: _data[i].COLOR.T1,
                    value02: _data[i].COLOR.T2,
                    value03: _data[i].COLOR.T3,
                    value04: _data[i].COLOR.AllSt,
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
                    coValue04: _data[i].PH.AllSt == 'PASS'
                        ? Colors.green
                        : _data[i].PH.AllSt == 'REJECT'
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
            PO: _data[i].PO,
            MATCP: _data[i].MATNO,
            //-------------------------------------------
            COLORch: _data[i].COLOR.active,
            COLORdata: _data[i].COLOR.active
                ? s8cardvalue(
                    value01: _data[i].COLOR.T1,
                    value02: _data[i].COLOR.T2,
                    value03: _data[i].COLOR.T3,
                    value04: _data[i].COLOR.AllSt,
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
            PO: _data[i].PO,
            MATCP: _data[i].MATNO,
            //-------------------------------------------
            COLORch: _data[i].COLOR.active,
            COLORdata: _data[i].COLOR.active
                ? s8cardvalue(
                    value01: _data[i].COLOR.T1,
                    value02: _data[i].COLOR.T2,
                    value03: _data[i].COLOR.T3,
                    value04: _data[i].COLOR.AllSt,
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
