import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';

import '../../mainBody.dart';
import '../../page/page1.dart';
import '../Cubit/NotificationEvent.dart';

//-------------------------------------------------
String server = 'http://127.0.0.1:15000/';

abstract class RegisterPOID_Event {}

class RegisterPOID_Pressed extends RegisterPOID_Event {}

class RegisterPOID_Bloc extends Bloc<RegisterPOID_Event, int> {
  RegisterPOID_Bloc() : super(0) {
    on<RegisterPOID_Pressed>((event, emit) {
      return _RegisterPOID_Function(0, emit);
    });
  }
  Future<void> _RegisterPOID_Function(int toAdd, Emitter<int> emit) async {
    final response = await Dio().post(
      server + "RegisterPO",
      data: {
        "PO": POINPUT,
      },
    );
    int output = 0;

    if (response.statusCode == 200) {
      // var databuff = jsonDecode(response.body);
      var databuff = response.data;
      // print(databuff);
      if (databuff.toString() == 'The order have already had in DB') {
        output = 1;
      } else {
        output = 2;
      }
    } else {
      output = 3;
    }
    emit(output);
  }
}
