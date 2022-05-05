import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/BlocEvent/03-dropdown.dart';
import '../bloc/BlocEvent/04-valueinput.dart';
import '../bloc/cubit/NotificationEvent.dart';
import '../data/model.dart';
import '../mainBody.dart';
import '../widget/common/ComInputText.dart';
import '../widget/common/Easydropdown.dart';
import 'P3DATAINPUT/DTIP-MANUAL.dart';
import 'P3DATAINPUT/DTIP-SEMIAUTO.dart';
import 'page0.dart';
import '../data/global.dart';
import 'dart:async';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Page3mainbody();
  }
}

class Page3mainbody extends StatelessWidget {
  const Page3mainbody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return INPUTSEMIAUTOBLOC();
  }
}
