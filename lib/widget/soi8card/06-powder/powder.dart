import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../data/model.dart';
import '../card.dart';

class POWDERcardBODY extends StatelessWidget {
  POWDERcardBODY({
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
    this.ACOch,
    this.PHch,
    this.CR6ch,
    this.BABCOCKch,
    //
    this.COLORdata,
    this.APPEARANCEdata,
    this.SGdata,
    this.FAdata,
    this.TAdata,
    this.F_Aldata,
    this.T_Aldata,
    this.ACOdata,
    this.PHdata,
    this.CR6data,
    this.BABCOCKdata,
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
  bool? ACOch;
  bool? PHch;
  bool? CR6ch;
  bool? BABCOCKch;

  //--------------
  s8cardvalue? COLORdata;
  s8cardvalue? APPEARANCEdata;
  s8cardvalue? SGdata;
  s8cardvalue? FAdata;
  s8cardvalue? TAdata;
  s8cardvalue? F_Aldata;
  s8cardvalue? T_Aldata;
  s8cardvalue? ACOdata;
  s8cardvalue? PHdata;
  s8cardvalue? CR6data;
  s8cardvalue? BABCOCKdata;

  @override
  Widget build(BuildContext context) {
    String _PO = PO ?? 'XXXXXXXXXX';
    String _MATCP = MATCP ?? 'YYYYYYYYYY';
    return Column(
      children: [
        Container(
          // color: Colors.blueAccent,
          decoration: BoxDecoration(
            color: Colors.orange,
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
                style: TextStyle(fontSize: 15),
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
                    "POWDER",
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
                  ACOch ?? false
                      ? CardBody(
                          name: 'ACO',
                          value1: ACOdata?.value01,
                          colorValue1: ACOdata?.coValue01,
                          value2: ACOdata?.value02,
                          colorValue2: ACOdata?.coValue02,
                          value3: ACOdata?.value03,
                          colorValue3: ACOdata?.coValue03,
                          value4: ACOdata?.value04,
                          colorValue4: ACOdata?.coValue04,
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
                  BABCOCKch ?? false
                      ? CardBody(
                          name: 'BABCOCK',
                          value1: BABCOCKdata?.value01,
                          colorValue1: BABCOCKdata?.coValue01,
                          value2: BABCOCKdata?.value02,
                          colorValue2: BABCOCKdata?.coValue02,
                          value3: BABCOCKdata?.value03,
                          colorValue3: BABCOCKdata?.coValue03,
                          value4: BABCOCKdata?.value04,
                          colorValue4: BABCOCKdata?.coValue04,
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
            color: Colors.orange,
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
