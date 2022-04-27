import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../data/model.dart';
import '../card.dart';

class LIQUIDcardBODY extends StatelessWidget {
  LIQUIDcardBODY({
    Key? key,
    this.PO,
    this.MATCP,
    this.status,
    this.SendToAPP,
    //
    this.COLORch,
    this.APPEARANCEch,
    this.SGch,
    this.FAch,
    this.TAch,
    this.F_Alch,
    this.T_Alch,
    this.PHch,
    this.ALch,
    this.CEch,
    this.CR6ch,
    this.TCrch,
    this.MNch,
    this.NIch,
    this.NVCch,
    this.Starchch,
    this.Vch,
    this.ZNch,
    this.ZRch,
    this.Viscositych,
    this.TIch,
    this.Surfactantch,
    this.FEch,
    this.RPch,
    //
    this.COLORdata,
    this.APPEARANCEdata,
    this.SGdata,
    this.FAdata,
    this.TAdata,
    this.F_Aldata,
    this.T_Aldata,
    this.PHdata,
    this.ALdata,
    this.CEdata,
    this.CR6data,
    this.TCrdata,
    this.MNdata,
    this.NIdata,
    this.NVCdata,
    this.Starchdata,
    this.Vdata,
    this.ZNdata,
    this.ZRdata,
    this.Viscositydata,
    this.TIdata,
    this.Surfactantdata,
    this.FEdata,
    this.RPdata,
  }) : super(key: key);
  String? PO;
  String? MATCP;
  String? status;
  Function? SendToAPP;
  //--------------
  bool? COLORch;
  bool? APPEARANCEch;
  bool? SGch;
  bool? FAch;
  bool? TAch;
  bool? F_Alch;
  bool? T_Alch;
  bool? PHch;
  bool? ALch;
  bool? CEch;
  bool? CR6ch;
  bool? TCrch;
  bool? MNch;
  bool? NIch;
  bool? NVCch;
  bool? Starchch;
  bool? Vch;
  bool? ZNch;
  bool? ZRch;
  bool? Viscositych;
  bool? TIch;
  bool? Surfactantch;
  bool? FEch;
  bool? RPch;

  //--------------
  s8cardvalue? COLORdata;
  s8cardvalue? APPEARANCEdata;
  s8cardvalue? SGdata;
  s8cardvalue? FAdata;
  s8cardvalue? TAdata;
  s8cardvalue? F_Aldata;
  s8cardvalue? T_Aldata;
  s8cardvalue? PHdata;
  s8cardvalue? ALdata;
  s8cardvalue? CEdata;
  s8cardvalue? CR6data;
  s8cardvalue? TCrdata;
  s8cardvalue? MNdata;
  s8cardvalue? NIdata;
  s8cardvalue? NVCdata;
  s8cardvalue? Starchdata;
  s8cardvalue? Vdata;
  s8cardvalue? ZNdata;
  s8cardvalue? ZRdata;
  s8cardvalue? Viscositydata;
  s8cardvalue? TIdata;
  s8cardvalue? Surfactantdata;
  s8cardvalue? FEdata;
  s8cardvalue? RPdata;

  @override
  Widget build(BuildContext context) {
    String _PO = PO ?? 'XXXXXXXXXX';
    String _MATCP = MATCP ?? 'YYYYYYYYYY';
    return Column(
      children: [
        Container(
          // color: Colors.blueAccent,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 116, 5, 136),
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(5), topRight: Radius.circular(5)),
            border: Border.all(color: Colors.black, width: 1),
          ),
          width: 700,
          height: 50,
          child: Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              Text(
                'PO : ${_PO}  MATCP : ${_MATCP}',
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
              const Spacer(),
              Container(
                height: 40,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(8),
                  ),
                  border: Border.all(color: Colors.black, width: 2),
                ),
                child: const Center(
                  child: Text(
                    "LIQUID",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                height: 40,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(8),
                  ),
                  border: Border.all(color: Colors.black, width: 2),
                ),
                child: const Center(
                  child: Text(
                    "Status",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () {
                  SendToAPP ?? () {};
                },
                child: Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(8),
                    ),
                    border: Border.all(color: Colors.black, width: 2),
                  ),
                  child: const Center(
                    child: Text(
                      "SEND FOR\nAPPROVE",
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
        ),
        Container(
          // color: Colors.grey,
          decoration: BoxDecoration(
            color: Colors.grey,
            border: Border.all(color: Colors.black, width: 1),
          ),
          width: 700,
          // height: 100,\
          child: Center(
            child: SizedBox(
              width: 660,
              child: Wrap(
                children: [
                  COLORch ?? false
                      ? CardBody(
                          name: 'COLOR',
                          value1: COLORdata?.value01,
                          colorValue1: COLORdata?.coValue01,
                          value2: COLORdata?.value02,
                          colorValue2: COLORdata?.coValue02,
                          value3: COLORdata?.value03,
                          colorValue3: COLORdata?.coValue03,
                          value4: COLORdata?.value04,
                          colorValue4: COLORdata?.coValue04,
                        )
                      : const SizedBox(),
                  APPEARANCEch ?? false
                      ? CardBody(
                          name: 'APPEARANCE',
                          value1: APPEARANCEdata?.value01,
                          colorValue1: APPEARANCEdata?.coValue01,
                          value2: APPEARANCEdata?.value02,
                          colorValue2: APPEARANCEdata?.coValue02,
                          value3: APPEARANCEdata?.value03,
                          colorValue3: APPEARANCEdata?.coValue03,
                          value4: APPEARANCEdata?.value04,
                          colorValue4: APPEARANCEdata?.coValue04,
                        )
                      : const SizedBox(),
                  SGch ?? false
                      ? CardBody(
                          name: 'SG',
                          value1: SGdata?.value01,
                          colorValue1: SGdata?.coValue01,
                          value2: SGdata?.value02,
                          colorValue2: SGdata?.coValue02,
                          value3: SGdata?.value03,
                          colorValue3: SGdata?.coValue03,
                          value4: SGdata?.value04,
                          colorValue4: SGdata?.coValue04,
                        )
                      : const SizedBox(),
                  FAch ?? false
                      ? CardBody(
                          name: 'FA',
                          value1: FAdata?.value01,
                          colorValue1: FAdata?.coValue01,
                          value2: FAdata?.value02,
                          colorValue2: FAdata?.coValue02,
                          value3: FAdata?.value03,
                          colorValue3: FAdata?.coValue03,
                          value4: FAdata?.value04,
                          colorValue4: FAdata?.coValue04,
                        )
                      : const SizedBox(),
                  TAch ?? false
                      ? CardBody(
                          name: 'TA',
                          value1: TAdata?.value01,
                          colorValue1: TAdata?.coValue01,
                          value2: TAdata?.value02,
                          colorValue2: TAdata?.coValue02,
                          value3: TAdata?.value03,
                          colorValue3: TAdata?.coValue03,
                          value4: TAdata?.value04,
                          colorValue4: TAdata?.coValue04,
                        )
                      : const SizedBox(),
                  F_Alch ?? false
                      ? CardBody(
                          name: 'F_Al',
                          value1: F_Aldata?.value01,
                          colorValue1: F_Aldata?.coValue01,
                          value2: F_Aldata?.value02,
                          colorValue2: F_Aldata?.coValue02,
                          value3: F_Aldata?.value03,
                          colorValue3: F_Aldata?.coValue03,
                          value4: F_Aldata?.value04,
                          colorValue4: F_Aldata?.coValue04,
                        )
                      : const SizedBox(),
                  T_Alch ?? false
                      ? CardBody(
                          name: 'T_Al',
                          value1: T_Aldata?.value01,
                          colorValue1: T_Aldata?.coValue01,
                          value2: T_Aldata?.value02,
                          colorValue2: T_Aldata?.coValue02,
                          value3: T_Aldata?.value03,
                          colorValue3: T_Aldata?.coValue03,
                          value4: T_Aldata?.value04,
                          colorValue4: T_Aldata?.coValue04,
                        )
                      : const SizedBox(),
                  PHch ?? false
                      ? CardBody(
                          name: 'PH',
                          value1: PHdata?.value01,
                          colorValue1: PHdata?.coValue01,
                          value2: PHdata?.value02,
                          colorValue2: PHdata?.coValue02,
                          value3: PHdata?.value03,
                          colorValue3: PHdata?.coValue03,
                          value4: PHdata?.value04,
                          colorValue4: PHdata?.coValue04,
                        )
                      : const SizedBox(),
                  ALch ?? false
                      ? CardBody(
                          name: 'AL',
                          value1: ALdata?.value01,
                          colorValue1: ALdata?.coValue01,
                          value2: ALdata?.value02,
                          colorValue2: ALdata?.coValue02,
                          value3: ALdata?.value03,
                          colorValue3: ALdata?.coValue03,
                          value4: ALdata?.value04,
                          colorValue4: ALdata?.coValue04,
                        )
                      : const SizedBox(),
                  CEch ?? false
                      ? CardBody(
                          name: 'CE',
                          value1: CEdata?.value01,
                          colorValue1: CEdata?.coValue01,
                          value2: CEdata?.value02,
                          colorValue2: CEdata?.coValue02,
                          value3: CEdata?.value03,
                          colorValue3: CEdata?.coValue03,
                          value4: CEdata?.value04,
                          colorValue4: CEdata?.coValue04,
                        )
                      : const SizedBox(),
                  CR6ch ?? false
                      ? CardBody(
                          name: 'CR6',
                          value1: CR6data?.value01,
                          colorValue1: CR6data?.coValue01,
                          value2: CR6data?.value02,
                          colorValue2: CR6data?.coValue02,
                          value3: CR6data?.value03,
                          colorValue3: CR6data?.coValue03,
                          value4: CR6data?.value04,
                          colorValue4: CR6data?.coValue04,
                        )
                      : const SizedBox(),
                  TCrch ?? false
                      ? CardBody(
                          name: 'TCr',
                          value1: TCrdata?.value01,
                          colorValue1: TCrdata?.coValue01,
                          value2: TCrdata?.value02,
                          colorValue2: TCrdata?.coValue02,
                          value3: TCrdata?.value03,
                          colorValue3: TCrdata?.coValue03,
                          value4: TCrdata?.value04,
                          colorValue4: TCrdata?.coValue04,
                        )
                      : const SizedBox(),
                  MNch ?? false
                      ? CardBody(
                          name: 'MN',
                          value1: MNdata?.value01,
                          colorValue1: MNdata?.coValue01,
                          value2: MNdata?.value02,
                          colorValue2: MNdata?.coValue02,
                          value3: MNdata?.value03,
                          colorValue3: MNdata?.coValue03,
                          value4: MNdata?.value04,
                          colorValue4: MNdata?.coValue04,
                        )
                      : const SizedBox(),
                  NIch ?? false
                      ? CardBody(
                          name: 'NI',
                          value1: NIdata?.value01,
                          colorValue1: NIdata?.coValue01,
                          value2: NIdata?.value02,
                          colorValue2: NIdata?.coValue02,
                          value3: NIdata?.value03,
                          colorValue3: NIdata?.coValue03,
                          value4: NIdata?.value04,
                          colorValue4: NIdata?.coValue04,
                        )
                      : const SizedBox(),
                  NVCch ?? false
                      ? CardBody(
                          name: 'NVC',
                          value1: NVCdata?.value01,
                          colorValue1: NVCdata?.coValue01,
                          value2: NVCdata?.value02,
                          colorValue2: NVCdata?.coValue02,
                          value3: NVCdata?.value03,
                          colorValue3: NVCdata?.coValue03,
                          value4: NVCdata?.value04,
                          colorValue4: NVCdata?.coValue04,
                        )
                      : const SizedBox(),
                  Starchch ?? false
                      ? CardBody(
                          name: 'Starch',
                          value1: Starchdata?.value01,
                          colorValue1: Starchdata?.coValue01,
                          value2: Starchdata?.value02,
                          colorValue2: Starchdata?.coValue02,
                          value3: Starchdata?.value03,
                          colorValue3: Starchdata?.coValue03,
                          value4: Starchdata?.value04,
                          colorValue4: Starchdata?.coValue04,
                        )
                      : const SizedBox(),
                  Vch ?? false
                      ? CardBody(
                          name: 'V',
                          value1: Vdata?.value01,
                          colorValue1: Vdata?.coValue01,
                          value2: Vdata?.value02,
                          colorValue2: Vdata?.coValue02,
                          value3: Vdata?.value03,
                          colorValue3: Vdata?.coValue03,
                          value4: Vdata?.value04,
                          colorValue4: Vdata?.coValue04,
                        )
                      : const SizedBox(),
                  ZNch ?? false
                      ? CardBody(
                          name: 'ZN',
                          value1: ZNdata?.value01,
                          colorValue1: ZNdata?.coValue01,
                          value2: ZNdata?.value02,
                          colorValue2: ZNdata?.coValue02,
                          value3: ZNdata?.value03,
                          colorValue3: ZNdata?.coValue03,
                          value4: ZNdata?.value04,
                          colorValue4: ZNdata?.coValue04,
                        )
                      : const SizedBox(),
                  ZRch ?? false
                      ? CardBody(
                          name: 'ZR',
                          value1: ZRdata?.value01,
                          colorValue1: ZRdata?.coValue01,
                          value2: ZRdata?.value02,
                          colorValue2: ZRdata?.coValue02,
                          value3: ZRdata?.value03,
                          colorValue3: ZRdata?.coValue03,
                          value4: ZRdata?.value04,
                          colorValue4: ZRdata?.coValue04,
                        )
                      : const SizedBox(),
                  Viscositych ?? false
                      ? CardBody(
                          name: 'Viscosity',
                          value1: Viscositydata?.value01,
                          colorValue1: Viscositydata?.coValue01,
                          value2: Viscositydata?.value02,
                          colorValue2: Viscositydata?.coValue02,
                          value3: Viscositydata?.value03,
                          colorValue3: Viscositydata?.coValue03,
                          value4: Viscositydata?.value04,
                          colorValue4: Viscositydata?.coValue04,
                        )
                      : const SizedBox(),
                  TIch ?? false
                      ? CardBody(
                          name: 'TI',
                          value1: TIdata?.value01,
                          colorValue1: TIdata?.coValue01,
                          value2: TIdata?.value02,
                          colorValue2: TIdata?.coValue02,
                          value3: TIdata?.value03,
                          colorValue3: TIdata?.coValue03,
                          value4: TIdata?.value04,
                          colorValue4: TIdata?.coValue04,
                        )
                      : const SizedBox(),
                  Surfactantch ?? false
                      ? CardBody(
                          name: 'Surfactant',
                          value1: Surfactantdata?.value01,
                          colorValue1: Surfactantdata?.coValue01,
                          value2: Surfactantdata?.value02,
                          colorValue2: Surfactantdata?.coValue02,
                          value3: Surfactantdata?.value03,
                          colorValue3: Surfactantdata?.coValue03,
                          value4: Surfactantdata?.value04,
                          colorValue4: Surfactantdata?.coValue04,
                        )
                      : const SizedBox(),
                  FEch ?? false
                      ? CardBody(
                          name: 'FE',
                          value1: FEdata?.value01,
                          colorValue1: FEdata?.coValue01,
                          value2: FEdata?.value02,
                          colorValue2: FEdata?.coValue02,
                          value3: FEdata?.value03,
                          colorValue3: FEdata?.coValue03,
                          value4: FEdata?.value04,
                          colorValue4: FEdata?.coValue04,
                        )
                      : const SizedBox(),
                  RPch ?? false
                      ? CardBody(
                          name: 'RP',
                          value1: RPdata?.value01,
                          colorValue1: RPdata?.coValue01,
                          value2: RPdata?.value02,
                          colorValue2: RPdata?.coValue02,
                          value3: RPdata?.value03,
                          colorValue3: RPdata?.coValue03,
                          value4: RPdata?.value04,
                          colorValue4: RPdata?.coValue04,
                        )
                      : const SizedBox(),
                ],
              ),
            ),
          ),
        ),
        Container(
          width: 700,
          height: 15,
          // color: Colors.blueAccent,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 116, 5, 136),
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(5),
                bottomRight: Radius.circular(5)),
            border: Border.all(color: Colors.black, width: 1),
          ),
        ),
        const SizedBox(
          height: 15,
        )
      ],
    );
  }
}
