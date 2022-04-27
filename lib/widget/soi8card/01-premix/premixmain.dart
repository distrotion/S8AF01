import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../data/model.dart';
import '../card.dart';

class PREMIXcardBODY extends StatelessWidget {
  PREMIXcardBODY({
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
    this.ZNch,
    this.NIch,
    this.MNch,
    //
    this.COLORdata,
    this.APPEARANCEdata,
    this.SGdata,
    this.FAdata,
    this.TAdata,
    this.ZNdata,
    this.NIdata,
    this.MNdata,
  }) : super(key: key);
  String? PO;
  String? MATCP;
  String? status;
  Function? SendToAPP;
  bool? COLORch;
  bool? APPEARANCEch;
  bool? SGch;
  bool? FAch;
  bool? TAch;
  bool? ZNch;
  bool? NIch;
  bool? MNch;
  s8cardvalue? COLORdata;
  s8cardvalue? APPEARANCEdata;
  s8cardvalue? SGdata;
  s8cardvalue? FAdata;
  s8cardvalue? TAdata;
  s8cardvalue? ZNdata;
  s8cardvalue? NIdata;
  s8cardvalue? MNdata;

  @override
  Widget build(BuildContext context) {
    String _PO = PO ?? 'XXXXXXXXXX';
    String _MATCP = MATCP ?? 'YYYYYYYYYY';
    return Column(
      children: [
        Container(
          // color: Colors.blueAccent,
          decoration: BoxDecoration(
            color: Colors.blueAccent,
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
                    "PREMIX",
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
            color: Colors.blueAccent,
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
