import 'package:flutter/material.dart';
import 'page0.dart';
import '../data/global.dart';

class Page10 extends StatelessWidget {
  const Page10({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Page10Body();
  }
}

class Page10Body extends StatelessWidget {
  const Page10Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 100,
        width: 100,
        color: Colors.green,
      ),
    );
  }
}

// Timer timer = new Timer(new Duration(seconds: 3), () {
//   debugPrint("Print after 3 seconds");
// });

class timmerTEST extends StatefulWidget {
  const timmerTEST({Key? key}) : super(key: key);

  @override
  State<timmerTEST> createState() => _timmerTESTState();
}

int tic = 0;

class _timmerTESTState extends State<timmerTEST> {
  @override
  Widget build(BuildContext context) {
    // Timer.periodic(const Duration(seconds: 3), (timer) {
    //   tic++;
    //   print(tic);
    //   // setState(() {
    //   //   // debugPrint(timer.tick.toString());
    //   // });
    // });
    return Center(
      child: Container(
        height: 100,
        width: 100,
        color: Colors.green,
        child: Text('${tic}'),
      ),
    );
  }
}
