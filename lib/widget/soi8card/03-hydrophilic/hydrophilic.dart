import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../data/model.dart';
import '../card.dart';

class HYDROPHILICcardBODY extends StatelessWidget {
  HYDROPHILICcardBODY({
    Key? key,
    this.PO,
    this.MATCP,
    this.status,
    this.SendToAPP,
    //
    this.COLORch,
    this.APPEARANCEch,
    this.SGch,
    this.PHch,
    this.CR3ch,
    this.TCrch,
    this.BRIXCch,
    this.ZRch,
    //
    this.COLORdata,
    this.APPEARANCEdata,
    this.SGdata,
    this.PHdata,
    this.CR3data,
    this.TCrdata,
    this.BRIXCdata,
    this.ZRdata,
  }) : super(key: key);
  String? PO;
  String? MATCP;
  String? status;
  Function? SendToAPP;
  //--------------
  bool? COLORch;
  bool? APPEARANCEch;
  bool? SGch;
  bool? PHch;
  bool? CR3ch;
  bool? TCrch;
  bool? BRIXCch;
  bool? ZRch;

  //--------------
  s8cardvalue? COLORdata;
  s8cardvalue? APPEARANCEdata;
  s8cardvalue? SGdata;
  s8cardvalue? PHdata;
  s8cardvalue? CR3data;
  s8cardvalue? TCrdata;
  s8cardvalue? BRIXCdata;
  s8cardvalue? ZRdata;

  @override
  Widget build(BuildContext context) {
    String _PO = PO ?? 'XXXXXXXXXX';
    String _MATCP = MATCP ?? 'YYYYYYYYYY';
    return Column(
      children: [
        Container(
          // color: Colors.blueAccent,
          decoration: BoxDecoration(
            color: Colors.yellowAccent,
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
                    "HYDROPHILIC",
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
                  CR3ch ?? false
                      ? CardBody(
                          name: 'CR3',
                          value1: CR3data?.value01,
                          colorValue1: CR3data?.coValue01,
                          value2: CR3data?.value02,
                          colorValue2: CR3data?.coValue02,
                          value3: CR3data?.value03,
                          colorValue3: CR3data?.coValue03,
                          value4: CR3data?.value04,
                          colorValue4: CR3data?.coValue04,
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
                  BRIXCch ?? false
                      ? CardBody(
                          name: 'BRIXC',
                          value1: BRIXCdata?.value01,
                          colorValue1: BRIXCdata?.coValue01,
                          value2: BRIXCdata?.value02,
                          colorValue2: BRIXCdata?.coValue02,
                          value3: BRIXCdata?.value03,
                          colorValue3: BRIXCdata?.coValue03,
                          value4: BRIXCdata?.value04,
                          colorValue4: BRIXCdata?.coValue04,
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
            color: Colors.yellowAccent,
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
