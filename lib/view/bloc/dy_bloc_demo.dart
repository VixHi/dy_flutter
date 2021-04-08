import 'package:flutter/material.dart';

import 'dy_counter_bloc_demo.dart';

class DYBlocDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DYCounterInherited(
      bloc: DYCounterBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('DYBlocDemo'),
          elevation: 0,
        ),
        body: DYCounter(),
        floatingActionButton: DYCountActionButton(),
      ),
    );
  }
}
