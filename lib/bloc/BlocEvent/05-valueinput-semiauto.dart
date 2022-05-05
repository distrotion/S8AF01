import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';
import '../../data/global.dart';
import '../../data/model.dart';
//-------------------------------------------------

String server = 'http://127.0.0.1:15000/';

abstract class SEMIAUTOVALUEINPUT_Event {}

class SEMIAUTOVALUEINPUTGET extends SEMIAUTOVALUEINPUT_Event {}

class SEMIAUTOVALUEINPUTGET_reset extends SEMIAUTOVALUEINPUT_Event {}

class SEMIAUTOVALUEINPUT_Bloc
    extends Bloc<SEMIAUTOVALUEINPUT_Event, semiautoinputvalue> {
  SEMIAUTOVALUEINPUT_Bloc()
      : super(semiautoinputvalue(checklist: [''], CO: [''], AP: [''])) {
    on<SEMIAUTOVALUEINPUTGET>((event, emit) {
      return _SEMIAUTOVALUEINPUT(
          semiautoinputvalue(checklist: [''], CO: [''], AP: ['']), emit);
    });
    on<SEMIAUTOVALUEINPUTGET_reset>((event, emit) {
      return _SEMIAUTOVALUEINPUT_CLEAR(
          semiautoinputvalue(checklist: [''], CO: [''], AP: ['']), emit);
    });
  }
  Future<void> _SEMIAUTOVALUEINPUT(
      semiautoinputvalue toAdd, Emitter<semiautoinputvalue> emit) async {
    final response = await Dio().post(
      server + "semiauto-valueinputget",
      data: {
        "poid": valueinput.poid,
      },
    );
    semiautoinputvalue output =
        semiautoinputvalue(checklist: [''], CO: [''], AP: ['']);
    if (response.statusCode == 200) {
      // var databuff = jsonDecode(response.body);
      var databuff = response.data;
      // print(databuff);

      if (databuff['return'] == 'OK') {
        output.stc = 'OK';
        output.POID = databuff['POID'].toString();
        output.PLANT = databuff['PLANT'].toString();
        output.PO = databuff['PO'].toString();
        output.MATNO = databuff['MATNO'].toString();

        for (int i = 0; i < databuff['checklist'].length; i++) {
          if (databuff['checklist'][i].toString() != 'COLOR' &&
              databuff['checklist'][i].toString() != 'APPEARANCE') {
            output.checklist.add(databuff['checklist'][i].toString());
          }
        }
        for (int i = 0; i < databuff["CO"].length; i++) {
          output.CO.add(databuff["CO"][i]['value'].toString());
        }
        for (int i = 0; i < databuff["AP"].length; i++) {
          output.AP.add((databuff["AP"][i]['value'].toString()));
        }
      }
    } else {
      //
    }
    emit(output);
  }

  Future<void> _SEMIAUTOVALUEINPUT_CLEAR(
      semiautoinputvalue toAdd, Emitter<semiautoinputvalue> emit) async {
    emit(semiautoinputvalue(stc: '', checklist: [''], CO: [''], AP: ['']));
  }
}
