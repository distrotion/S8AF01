import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../data/model.dart';
import '../card.dart';

class TRITRATINGcardBODY extends StatelessWidget {
  TRITRATINGcardBODY({
    Key? key,
    this.PO,
    this.MATCP,
    this.status,
    required this.SendToAPP,
    //
    this.COLORch,
    this.APPEARANCEch,
    this.SGch,
    this.TAch,
    this.T_Alch,
    this.PHch,
    this.FACTORch,
    this.ACOch,
    //
    this.COLORdata,
    this.APPEARANCEdata,
    this.SGdata,
    this.TAdata,
    this.T_Aldata,
    this.PHdata,
    this.FACTORdata,
    this.ACOdata,
  }) : super(key: key);
  String? PO;
  String? MATCP;
  String? status;
  Function SendToAPP;
  //--------------
  bool? COLORch;
  bool? APPEARANCEch;
  bool? SGch;
  bool? TAch;
  bool? T_Alch;
  bool? PHch;
  bool? FACTORch;
  bool? ACOch;

  //--------------
  s8cardvalue? COLORdata;
  s8cardvalue? APPEARANCEdata;
  s8cardvalue? SGdata;
  s8cardvalue? TAdata;
  s8cardvalue? T_Aldata;
  s8cardvalue? PHdata;
  s8cardvalue? FACTORdata;
  s8cardvalue? ACOdata;

  @override
  Widget build(BuildContext context) {
    String _PO = PO ?? 'XXXXXXXXXX';
    String _MATCP = MATCP ?? 'YYYYYYYYYY';
    return Column(
      children: [
        Container(
          // color: Colors.blueAccent,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 138, 226, 140),
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
                    "TRITRATING",
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
                child: Center(
                  child: Text(
                    status ?? '',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () {
                  SendToAPP('${PO}-${_MATCP}');
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
                  FACTORch ?? false
                      ? CardBody(
                          name: 'FACTOR',
                          value1: FACTORdata?.value01,
                          colorValue1: FACTORdata?.coValue01,
                          value2: FACTORdata?.value02,
                          colorValue2: FACTORdata?.coValue02,
                          value3: FACTORdata?.value03,
                          colorValue3: FACTORdata?.coValue03,
                          value4: FACTORdata?.value04,
                          colorValue4: FACTORdata?.coValue04,
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
            color: const Color.fromARGB(255, 138, 226, 140),
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
