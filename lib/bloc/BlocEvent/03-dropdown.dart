import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';

import '../../data/model.dart';
//-------------------------------------------------

String server = 'http://127.0.0.1:9210/';

abstract class DROPDOWN_Event {}

class DROPDOWN_GET extends DROPDOWN_Event {}

class DROPDOWN_BLOCK extends Bloc<DROPDOWN_Event, dropdown> {
  DROPDOWN_BLOCK()
      : super(dropdown(
            AP: [],
            CO: [],
            PREMIX: [],
            COILCOATING: [],
            HYDROPHILIC: [],
            PLX: [],
            TRITRATING: [],
            POWDER: [],
            LIQUID: [])) {
    on<DROPDOWN_GET>((event, emit) {
      return _GET_Function_01(
          dropdown(
              AP: [],
              CO: [],
              PREMIX: [],
              COILCOATING: [],
              HYDROPHILIC: [],
              PLX: [],
              TRITRATING: [],
              POWDER: [],
              LIQUID: []),
          emit);
    });
  }
  Future<void> _GET_Function_01(dropdown toAdd, Emitter<dropdown> emit) async {
    final response = await Dio().post(
      server + "selectdropdown",
      data: {},
    );
    List<String> output1 = [''];
    List<String> output2 = [''];
    List<String> output3 = [];
    List<String> output4 = [];
    List<String> output5 = [];
    List<String> output6 = [];
    List<String> output7 = [];
    List<String> output8 = [];
    List<String> output9 = [];

    if (response.statusCode == 200) {
      // var databuff = jsonDecode(response.body);
      var databuff = response.data;

      for (int i = 0; i < databuff["CO"].length; i++) {
        output1.add(databuff["CO"][i]['value'].toString());
      }
      for (int i = 0; i < databuff["AP"].length; i++) {
        output2.add((databuff["AP"][i]['value'].toString()));
      }
      //
      for (int i = 0; i < databuff["PREMIX"].length; i++) {
        output3.add((databuff["PREMIX"][i].toString()));
      }
      for (int i = 0; i < databuff["COILCOATING"].length; i++) {
        output4.add((databuff["COILCOATING"][i].toString()));
      }
      for (int i = 0; i < databuff["HYDROPHILIC"].length; i++) {
        output5.add((databuff["HYDROPHILIC"][i].toString()));
      }
      for (int i = 0; i < databuff["PLX"].length; i++) {
        output6.add((databuff["PLX"][i].toString()));
      }
      for (int i = 0; i < databuff["TRITRATING"].length; i++) {
        output7.add((databuff["TRITRATING"][i].toString()));
      }
      for (int i = 0; i < databuff["POWDER"].length; i++) {
        output8.add((databuff["POWDER"][i].toString()));
      }
      for (int i = 0; i < databuff["LIQUID"].length; i++) {
        output9.add((databuff["LIQUID"][i].toString()));
      }
    } else {}
    emit(dropdown(
      CO: output1,
      AP: output2,
      PREMIX: output3,
      COILCOATING: output4,
      HYDROPHILIC: output5,
      PLX: output6,
      TRITRATING: output7,
      POWDER: output8,
      LIQUID: output9,
    ));
  }
}
