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
            //-------------------------------------------
            COLORch: _data[i].COLOR.active,
            COLORdata: _data[i].COLOR.active
                ? s8cardvalue(
                    value01: _data[i].COLOR.T1,
                    value02: _data[i].COLOR.T2,
                    value03: _data[i].COLOR.T3,
                    value04: _data[i].COLOR.AllSt,
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
