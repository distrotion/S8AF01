import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';
import '../../data/global.dart';
//-------------------------------------------------

String server = 'http://127.0.0.1:15000/';

abstract class VALUEINPUT_Event {}

class VALUEINPUT_MANUAL extends VALUEINPUT_Event {}

class VALUEINPUT_AUTO extends VALUEINPUT_Event {}

class VALUEINPUT_CLEAR extends VALUEINPUT_Event {}

class VALUEINPUT_Bloc extends Bloc<VALUEINPUT_Event, String> {
  VALUEINPUT_Bloc() : super('') {
    on<VALUEINPUT_MANUAL>((event, emit) {
      return _VALUEINPUT_MANUAL('', emit);
    });
    on<VALUEINPUT_AUTO>((event, emit) {
      return _VALUEINPUT_AUTO('', emit);
    });
    on<VALUEINPUT_CLEAR>((event, emit) {
      return _VALUEINPUT_CLEAR('', emit);
    });
  }
  Future<void> _VALUEINPUT_MANUAL(String toAdd, Emitter<String> emit) async {
    final response = await Dio().post(
      server + "valueinput",
      data: {
        "poid": valueinput.poid,
        "plant": valueinput.plant,
        "item": valueinput.item,
        "value": valueinput.value,
      },
    );
    String output = '';
    if (response.statusCode == 200) {
      // var databuff = jsonDecode(response.body);
      var databuff = response.data;

      output = databuff['return'].toString();
    } else {
      //
    }
    emit(output);
  }

  Future<void> _VALUEINPUT_AUTO(String toAdd, Emitter<String> emit) async {
    emit('');
  }

  Future<void> _VALUEINPUT_CLEAR(String toAdd, Emitter<String> emit) async {
    emit('');
  }
}
