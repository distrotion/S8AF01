import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/BlocEvent/01-getstaffdata.dart';
import '../data/global.dart';
import '../data/model.dart';

import 'P2PROGRESS/PROGRESS.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Page2BlocTableBody();
  }
}

class Page2BlocTableBody extends StatelessWidget {
  /// {@macro counter_page}
  const Page2BlocTableBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => GETSTAFFDATABloc(),
        child: BlocBuilder<GETSTAFFDATABloc, List<unitdata>>(
          builder: (context, data) {
            return Page2Body(
              data: data,
            );
          },
        ));
  }
}

class Page2Body extends StatelessWidget {
  Page2Body({Key? key, this.data}) : super(key: key);
  List<unitdata>? data;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ProgressBody(
        data: data ?? [],
      ),
    );
  }
}
