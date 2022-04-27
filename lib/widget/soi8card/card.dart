import 'package:flutter/material.dart';

class CardBody extends StatelessWidget {
  CardBody({
    Key? key,
    this.name,
    this.value1,
    this.value2,
    this.value3,
    this.value4,
    this.colorValue1,
    this.colorValue2,
    this.colorValue3,
    this.colorValue4,
    this.iSmanual,
    this.func,
  }) : super(key: key);
  String? name;
  String? value1;
  Color? colorValue1;
  String? value2;
  Color? colorValue2;
  String? value3;
  Color? colorValue3;
  String? value4;
  Color? colorValue4;
  bool? iSmanual;
  Function? func;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 220,
        height: 86,
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.black, width: 3),
            ),
            child: Column(
              children: [
                Container(
                  height: 40,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        name ?? "",
                        style: const TextStyle(fontSize: 12),
                      ),
                      const Spacer(),
                      iSmanual ?? false
                          ? ElevatedButton(
                              onPressed: () {
                                func;
                              },
                              child: const Text(
                                "MANUAL",
                                style: TextStyle(fontSize: 10),
                              ),
                            )
                          : const SizedBox(),
                      const SizedBox(
                        width: 5,
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5)),
                    border: Border.all(color: Colors.black, width: 1),
                  ),
                ),
                SizedBox(
                  // height: 40,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 40,
                          child: Center(
                            child: Text(
                              value1 ?? "",
                              style: const TextStyle(fontSize: 12),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: colorValue1 ?? Colors.white,
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(5),
                            ),
                            border: Border.all(color: Colors.black, width: 1),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 40,
                          child: Center(
                            child: Text(
                              value2 ?? "",
                              style: const TextStyle(fontSize: 12),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: colorValue2 ?? Colors.white,
                            // borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.black, width: 1),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 40,
                          child: Center(
                            child: Text(
                              value3 ?? "",
                              style: const TextStyle(fontSize: 12),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: colorValue3 ?? Colors.white,
                            // borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.black, width: 1),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 40,
                          child: Center(
                            child: Text(
                              value4 ?? "",
                              style: const TextStyle(fontSize: 12),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: colorValue4 ?? Colors.white,
                            borderRadius: const BorderRadius.only(
                              bottomRight: Radius.circular(5),
                            ),
                            border: Border.all(color: Colors.black, width: 1),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
