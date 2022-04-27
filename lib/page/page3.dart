import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/BlocEvent/03-dropdown.dart';
import '../bloc/BlocEvent/04-valueinput.dart';
import '../bloc/cubit/NotificationEvent.dart';
import '../data/model.dart';
import '../mainBody.dart';
import '../widget/common/ComInputText.dart';
import '../widget/common/Easydropdown.dart';
import 'page0.dart';
import '../data/global.dart';
import 'dart:async';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Page3BlocDROPDOWN();
  }
}

class Page3BlocDROPDOWN extends StatelessWidget {
  /// {@macro counter_page}
  const Page3BlocDROPDOWN({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => DROPDOWN_BLOCK(),
        child: BlocBuilder<DROPDOWN_BLOCK, dropdown>(
          builder: (context, DD) {
            dropdown01.CO = DD.CO;
            dropdown01.AP = DD.AP;
            dropdown01.PREMIX = DD.PREMIX;
            dropdown01.COILCOATING = DD.COILCOATING;
            dropdown01.HYDROPHILIC = DD.HYDROPHILIC;
            dropdown01.PLX = DD.PLX;
            dropdown01.TRITRATING = DD.TRITRATING;
            dropdown01.POWDER = DD.POWDER;
            dropdown01.LIQUID = DD.LIQUID;

            return Page3BlocTableBody();
          },
        ));
  }
}

class Page3BlocTableBody extends StatelessWidget {
  /// {@macro counter_page}
  const Page3BlocTableBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => VALUEINPUT_Bloc(),
        child: BlocBuilder<VALUEINPUT_Bloc, String>(
          builder: (context, data) {
            return Page3Body(
              data: data,
            );
          },
        ));
  }
}

class Page3Body extends StatelessWidget {
  Page3Body({Key? key, this.data}) : super(key: key);
  String? data;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DATAINPUTBox(
        data: data,
      ),
    );
  }
}

class DATAINPUTBox extends StatefulWidget {
  DATAINPUTBox({Key? key, this.data}) : super(key: key);
  String? data;
  @override
  State<DATAINPUTBox> createState() => _DATAINPUTBoxState();
}

class _DATAINPUTBoxState extends State<DATAINPUTBox> {
  @override
  void initState() {
    super.initState();
    context.read<DROPDOWN_BLOCK>().add(DROPDOWN_GET());
  }

  @override
  Widget build(BuildContext context) {
    print(widget.data);
    if (widget.data == 'OK') {
      valueinput.isbool = true;
      valueinput.poid = '';
      valueinput.plant = '';
      valueinput.textorvalue = 0;
      valueinput.value = '';
      valueinput.item = '';

      BlocProvider.of<BlocNotification>(MainBodyContext).UpdateNotification(
          "Success", "Success", enumNotificationlist.Success);
      context.read<VALUEINPUT_Bloc>().add(VALUEINPUT_CLEAR());
    } else if (widget.data == 'NOK') {
      BlocProvider.of<BlocNotification>(MainBodyContext)
          .UpdateNotification("Error", "Error", enumNotificationlist.Error);
      context.read<VALUEINPUT_Bloc>().add(VALUEINPUT_CLEAR());
    } else if (widget.data == 'WOK') {
      BlocProvider.of<BlocNotification>(MainBodyContext).UpdateNotification(
          "WARNING", "THE ITEM HAVE COMPLETED", enumNotificationlist.Warning);
      context.read<VALUEINPUT_Bloc>().add(VALUEINPUT_CLEAR());
    }

    return Center(
      child: Container(
        // color: Colors.red,
        height: 400,
        width: 350,
        child: SingleChildScrollView(
            child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    // color: Colors.red,
                    width: 50,
                    height: 40,
                    child: const Center(
                      child: Text("POID"),
                    ),
                  ),
                  SizedBox(
                    // width: 325,
                    child: ComInputText(
                      nLimitedChar: 18,
                      height: 40,
                      width: 250,
                      isContr: valueinput.isbool,
                      fnContr: (input) {
                        valueinput.isbool = input;
                      },
                      sValue: valueinput.poid,
                      returnfunc: (String s) {
                        valueinput.poid = s;
                      },
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    // color: Colors.red,
                    width: 50,
                    height: 40,
                    child: const Center(
                      child: Text("PLANT"),
                    ),
                  ),
                  SizedBox(
                    width: 250,
                    // child: ComInputText(
                    //   nLimitedChar: 18,
                    //   height: 40,
                    //   width: 250,
                    //   isContr: DATAINPUT.isbool,
                    //   fnContr: (input) {
                    //     DATAINPUT.isbool = input;
                    //   },
                    //   sValue: DATAINPUT.INSTRUMENT,
                    //   returnfunc: (String s) {
                    //     DATAINPUT.INSTRUMENT = s;
                    //   },
                    // ),
                    child: EasyDropDown(
                        listdropdown: const [
                          '',
                          'PREMIX',
                          'COILCOATING',
                          'HYDROPHILIC',
                          'PLX',
                          'TRITRATING',
                          'POWDER',
                          'LIQUID'
                        ],
                        onChangeinside: (input) {
                          setState(() {
                            valueinput.plant = input;
                          });
                        },
                        value: valueinput.plant,
                        width: 200,
                        height: 40),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              // InkWell(
              //   onTap: () {
              //     setState(() {
              //       if (valueinput.textorvalue < 2) {
              //         valueinput.textorvalue++;
              //       } else {
              //         valueinput.textorvalue = 0;
              //       }
              //     });
              //   },
              //   child: Container(
              //     height: 40,
              //     width: 300,
              //     decoration: BoxDecoration(
              //       color: Colors.white,
              //       borderRadius: const BorderRadius.all(
              //         Radius.circular(8),
              //       ),
              //       border: Border.all(color: Colors.black, width: 2),
              //     ),
              //     child: Center(
              //       child: Text(
              //         (valueinput.textorvalue == 0)
              //             ? "Value"
              //             : (valueinput.textorvalue == 1)
              //                 ? "Color"
              //                 : (valueinput.textorvalue == 2)
              //                     ? "Appearance"
              //                     : "",
              //         style: TextStyle(fontSize: 15),
              //       ),
              //     ),
              //   ),
              // ),
              if (valueinput.textorvalue == 0) ...[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          if (valueinput.textorvalue < 2) {
                            valueinput.textorvalue++;
                          } else {
                            valueinput.textorvalue = 0;
                          }
                        });
                      },
                      child: Container(
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
                            (valueinput.textorvalue == 0)
                                ? "Value"
                                : (valueinput.textorvalue == 1)
                                    ? "Color"
                                    : (valueinput.textorvalue == 2)
                                        ? "Appearance"
                                        : "",
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      // width: 325,
                      child: ComInputText(
                        isNumberOnly: true,
                        nLimitedChar: 18,
                        height: 40,
                        width: 100,
                        isContr: valueinput.isbool,
                        fnContr: (input) {
                          valueinput.isbool = input;
                        },
                        sValue: valueinput.value,
                        returnfunc: (String s) {
                          valueinput.value = s;
                        },
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 100,
                      // color: Colors.amber,
                      child: EasyDropDown(
                        listdropdown: valueinput.plant == 'PREMIX'
                            ? dropdown01.PREMIX
                            : valueinput.plant == 'COILCOATING'
                                ? dropdown01.COILCOATING
                                : valueinput.plant == 'HYDROPHILIC'
                                    ? dropdown01.HYDROPHILIC
                                    : valueinput.plant == 'PLX'
                                        ? dropdown01.PLX
                                        : valueinput.plant == 'TRITRATING'
                                            ? dropdown01.TRITRATING
                                            : valueinput.plant == 'POWDER'
                                                ? dropdown01.POWDER
                                                : valueinput.plant == 'LIQUID'
                                                    ? dropdown01.LIQUID
                                                    : [''],
                        onChangeinside: (input) {
                          setState(() {
                            valueinput.item = input;
                          });
                        },
                        value: valueinput.item,
                        height: 40,
                        width: 100,
                      ),
                    )
                  ],
                ),
              ] else if (valueinput.textorvalue == 1) ...[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          if (valueinput.textorvalue < 2) {
                            valueinput.textorvalue++;
                          } else {
                            valueinput.textorvalue = 0;
                          }
                        });
                      },
                      child: Container(
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
                            (valueinput.textorvalue == 0)
                                ? "Value"
                                : (valueinput.textorvalue == 1)
                                    ? "Color"
                                    : (valueinput.textorvalue == 2)
                                        ? "Appearance"
                                        : "",
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      // width: 325,
                      child: EasyDropDown(
                        listdropdown: dropdown01.CO,
                        onChangeinside: (input) {
                          setState(() {
                            valueinput.value = input;
                          });
                        },
                        value: valueinput.value,
                        width: 200,
                        height: 40,
                      ),
                    ),
                  ],
                ),
              ] else if (valueinput.textorvalue == 2) ...[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          if (valueinput.textorvalue < 2) {
                            valueinput.textorvalue++;
                          } else {
                            valueinput.textorvalue = 0;
                          }
                        });
                      },
                      child: Container(
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
                            (valueinput.textorvalue == 0)
                                ? "Value"
                                : (valueinput.textorvalue == 1)
                                    ? "Color"
                                    : (valueinput.textorvalue == 2)
                                        ? "Appearance"
                                        : "",
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      // width: 325,
                      child: EasyDropDown(
                          listdropdown: dropdown01.AP,
                          onChangeinside: (input) {
                            setState(() {
                              valueinput.value = input;
                            });
                          },
                          value: valueinput.value,
                          width: 200,
                          height: 40),
                    ),
                  ],
                ),
              ],
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // const SizedBox(
                  //   width: 10,
                  // ),
                  InkWell(
                      onTap: () {
                        if (valueinput.poid.length == 18) {
                          setState(() {
                            context
                                .read<VALUEINPUT_Bloc>()
                                .add(VALUEINPUT_MANUAL());
                          });
                        }
                      },
                      child: Container(
                        height: 40,
                        width: 300,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Align(
                          alignment: Alignment.center,
                          child: Text(
                            "SEND",
                            style: TextStyle(
                              fontFamily: 'Mitr',
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              fontStyle: FontStyle.normal,
                              letterSpacing: 0,
                            ),
                          ),
                        ),
                      )),
                  // const SizedBox(
                  //   width: 10,
                  // ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
            ],
          ),
        )),
      ),
    );
  }
}
