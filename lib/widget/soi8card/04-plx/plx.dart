import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../data/model.dart';
import '../card.dart';

class PLXcardBODY extends StatelessWidget {
  PLXcardBODY({
    Key? key,
    this.PO,
    this.MATCP,
    this.status,
    required this.SendToAPP,
    //
    this.COLORch,
    this.APPEARANCEch,
    this.TCch,
    this.THOPch,
    this.FHOPch,
    this.FTch,
    this.Viscositych,
    this.PaticleSizech,
    this.NVCch,
    //
    this.COLORdata,
    this.APPEARANCEdata,
    this.TCdata,
    this.THOPdata,
    this.FHOPdata,
    this.FTdata,
    this.Viscositydata,
    this.PaticleSizedata,
    this.NVCdata,
  }) : super(key: key);
  String? PO;
  String? MATCP;
  String? status;
  Function SendToAPP;
  //--------------
  bool? COLORch;
  bool? APPEARANCEch;
  bool? TCch;
  bool? THOPch;
  bool? FHOPch;
  bool? FTch;
  bool? Viscositych;
  bool? PaticleSizech;
  bool? NVCch;

  //--------------
  s8cardvalue? COLORdata;
  s8cardvalue? APPEARANCEdata;
  s8cardvalue? TCdata;
  s8cardvalue? THOPdata;
  s8cardvalue? FHOPdata;
  s8cardvalue? FTdata;
  s8cardvalue? Viscositydata;
  s8cardvalue? PaticleSizedata;
  s8cardvalue? NVCdata;

  @override
  Widget build(BuildContext context) {
    String _PO = PO ?? 'XXXXXXXXXX';
    String _MATCP = MATCP ?? 'YYYYYYYYYY';
    return Column(
      children: [
        Container(
          // color: Colors.blueAccent,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 4, 82, 6),
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
                style: const TextStyle(fontSize: 15, color: Colors.white),
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
                    "PLX",
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
                  TCch ?? false
                      ? CardBody(
                          name: 'TC',
                          value1: TCdata?.value01,
                          colorValue1: TCdata?.coValue01,
                          value2: TCdata?.value02,
                          colorValue2: TCdata?.coValue02,
                          value3: TCdata?.value03,
                          colorValue3: TCdata?.coValue03,
                          value4: TCdata?.value04,
                          colorValue4: TCdata?.coValue04,
                        )
                      : const SizedBox(),
                  THOPch ?? false
                      ? CardBody(
                          name: 'THOP',
                          value1: THOPdata?.value01,
                          colorValue1: THOPdata?.coValue01,
                          value2: THOPdata?.value02,
                          colorValue2: THOPdata?.coValue02,
                          value3: THOPdata?.value03,
                          colorValue3: THOPdata?.coValue03,
                          value4: THOPdata?.value04,
                          colorValue4: THOPdata?.coValue04,
                        )
                      : const SizedBox(),
                  FHOPch ?? false
                      ? CardBody(
                          name: 'FHOP',
                          value1: FHOPdata?.value01,
                          colorValue1: FHOPdata?.coValue01,
                          value2: FHOPdata?.value02,
                          colorValue2: FHOPdata?.coValue02,
                          value3: FHOPdata?.value03,
                          colorValue3: FHOPdata?.coValue03,
                          value4: FHOPdata?.value04,
                          colorValue4: FHOPdata?.coValue04,
                        )
                      : const SizedBox(),
                  FTch ?? false
                      ? CardBody(
                          name: 'FT',
                          value1: FTdata?.value01,
                          colorValue1: FTdata?.coValue01,
                          value2: FTdata?.value02,
                          colorValue2: FTdata?.coValue02,
                          value3: FTdata?.value03,
                          colorValue3: FTdata?.coValue03,
                          value4: FTdata?.value04,
                          colorValue4: FTdata?.coValue04,
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
                  PaticleSizech ?? false
                      ? CardBody(
                          name: 'PaticleSize',
                          value1: PaticleSizedata?.value01,
                          colorValue1: PaticleSizedata?.coValue01,
                          value2: PaticleSizedata?.value02,
                          colorValue2: PaticleSizedata?.coValue02,
                          value3: PaticleSizedata?.value03,
                          colorValue3: PaticleSizedata?.coValue03,
                          value4: PaticleSizedata?.value04,
                          colorValue4: PaticleSizedata?.coValue04,
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
            color: const Color.fromARGB(255, 4, 82, 6),
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
