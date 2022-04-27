import 'package:flutter/material.dart';

//---------------------------------------------------------
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/BlocEvent/02-register.dart';
import '../bloc/cubit/NotificationEvent.dart';
import '../widget/common/ComInputText.dart';
import 'page0.dart';
import '../data/global.dart';

//---------------------------------------------------------

bool isPOINPUT = false;
String POINPUT = '';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Page1BlocBody();
  }
}

class Page1BlocBody extends StatelessWidget {
  /// {@macro counter_page}
  const Page1BlocBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => RegisterPOID_Bloc(),
        child: BlocBuilder<RegisterPOID_Bloc, int>(
          builder: (context, data) {
            return Page1Body(
              data: data,
            );
          },
        ));
  }
}

class Page1Body extends StatelessWidget {
  Page1Body({Key? key, this.data}) : super(key: key);
  int? data;
  @override
  Widget build(BuildContext context) {
    return RegisterBox(
      data: data,
    );
  }
}

class RegisterBox extends StatelessWidget {
  RegisterBox({Key? key, this.data}) : super(key: key);
  int? data;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 400,
        width: 350,
        child: SingleChildScrollView(
            child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Padding(
            padding: const EdgeInsetsDirectional.only(start: 50, end: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50,
                ),
                SizedBox(
                  height: 40,
                  width: 350,
                  child: ComInputText(
                    nLimitedChar: 18,
                    height: 40,
                    width: 350,
                    isContr: isPOINPUT,
                    fnContr: (input) {
                      isPOINPUT = input;
                    },
                    sValue: POINPUT,
                    returnfunc: (String s) {
                      POINPUT = s;
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                _RegisterButton(
                  data: data,
                ),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        )),
      ),
    );
  }
}

class _RegisterButton extends StatelessWidget {
  _RegisterButton({Key? key, this.data}) : super(key: key);
  int? data;
  @override
  Widget build(BuildContext context) {
    if (data == 2) {
      BlocProvider.of<BlocNotification>(contextGB).UpdateNotification(
          "Success", "Register Success", enumNotificationlist.Success);
    } else if (data == 1) {
      BlocProvider.of<BlocNotification>(contextGB).UpdateNotification(
          "Success", "POID have existed", enumNotificationlist.Warning);
    }
    return InkWell(
        onTap: () {
          if (POINPUT.length == 18) {
            //
            context.read<RegisterPOID_Bloc>().add(RegisterPOID_Pressed());
            //
          }
        },
        child: Container(
          height: 40,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Align(
            alignment: Alignment.center,
            child: Text(
              "Register",
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
        ));
  }
}
