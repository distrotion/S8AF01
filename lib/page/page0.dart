import 'package:flutter/material.dart';
import 'package:tpk_soi8_staff/page/page2.dart';

import '../widget/common/Advancedropdown.dart';

class Page0 extends StatelessWidget {
  const Page0({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Page2();
  }
}

class Page0Body extends StatelessWidget {
  const Page0Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          height: 100,
          width: 200,
          color: Colors.orange,
          child: const Center(
              child: Text("initial Page \nor do something wrong"))),
    );
  }
}
