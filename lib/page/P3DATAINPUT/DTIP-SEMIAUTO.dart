import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/BlocEvent/04-valueinput.dart';
import '../../bloc/BlocEvent/05-valueinput-semiauto.dart';

import '../../bloc/cubit/NotificationEvent.dart';
import '../../data/model.dart';
import '../../mainBody.dart';
import '../../widget/common/ComInputText.dart';
import '../../data/global.dart';
import '../../widget/common/Easydropdown.dart';

class INPUTSEMIAUTOBLOC extends StatelessWidget {
  const INPUTSEMIAUTOBLOC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _Page3BlocGETDATA();
  }
}

class _Page3BlocGETDATA extends StatelessWidget {
  /// {@macro counter_page}
  const _Page3BlocGETDATA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => SEMIAUTOVALUEINPUT_Bloc(),
        child: BlocBuilder<SEMIAUTOVALUEINPUT_Bloc, semiautoinputvalue>(
          builder: (context, dataget) {
            return _Page3BlocTableBodyINPUT(
              dataget: dataget,
            );
          },
        ));
  }
}

class _Page3BlocTableBodyINPUT extends StatelessWidget {
  /// {@macro counter_page}
  _Page3BlocTableBodyINPUT({Key? key, this.dataget}) : super(key: key);
  semiautoinputvalue? dataget;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => VALUEINPUT_Bloc(),
        child: BlocBuilder<VALUEINPUT_Bloc, String>(
          builder: (context, data) {
            return INPUTSEMIAUTObody(
              data: data,
              dataget: dataget,
            );
          },
        ));
  }
}

class INPUTSEMIAUTObody extends StatefulWidget {
  INPUTSEMIAUTObody({Key? key, this.data, this.dataget}) : super(key: key);
  String? data;
  semiautoinputvalue? dataget;
  @override
  State<INPUTSEMIAUTObody> createState() => _INPUTSEMIAUTObodyState();
}

class _INPUTSEMIAUTObodyState extends State<INPUTSEMIAUTObody> {
  @override
  Widget build(BuildContext context) {
    // print(widget.dataget?.PLANT ?? '');
    // print(widget.data);
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

    if (widget.dataget?.stc == 'OK') {
      // valueinput.isbool = true;
      valueinput.plant = widget.dataget?.PLANT ?? '';
      valueinput.value = '';
      valueinput.item = '';

      dropdown01.CO = widget.dataget?.CO ?? [''];
      dropdown01.AP = widget.dataget?.AP ?? [''];
      dropdown01.checklist = widget.dataget?.checklist ?? [''];

      context
          .read<SEMIAUTOVALUEINPUT_Bloc>()
          .add(SEMIAUTOVALUEINPUTGET_reset());
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
                  InkWell(
                    onTap: () {
                      context
                          .read<SEMIAUTOVALUEINPUT_Bloc>()
                          .add(SEMIAUTOVALUEINPUTGET());
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.black, width: 2),
                      ),
                      // color: Colors.red,
                      width: 50,
                      height: 40,
                      child: const Center(
                        child: Text("POID"),
                      ),
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
                        print(">>>>");
                        if (s.length == 18) {
                          context
                              .read<SEMIAUTOVALUEINPUT_Bloc>()
                              .add(SEMIAUTOVALUEINPUTGET());
                        }
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
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.black, width: 2),
                        ),
                        width: 200,
                        height: 40,
                        child: Center(
                          child: Text(valueinput.plant),
                        ),
                      )),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
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
                        listdropdown: dropdown01.checklist,
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
                            valueinput.item = 'COLOR';
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
                              valueinput.item = 'APPEARANCE';
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
