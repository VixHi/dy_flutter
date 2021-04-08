import 'dart:async';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:helloworld_flutter/view/state/dy_scpoed_model_demo.dart';

class DYCounterInherited extends InheritedWidget {
  DYCounterInherited({Key key, this.child, this.bloc}) : super(key: key, child: child);
  final DYCounterBloc bloc;
  final Widget child;

  static DYCounterInherited of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<DYCounterInherited>();
  }

  @override
  bool updateShouldNotify(DYCounterInherited oldWidget) {
    return true;
  }
}


class DYCountActionButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    DYCounterBloc _bloc = DYCounterInherited.of(context).bloc;
    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: () {
        // _bloc.log();
        _bloc.counter.add(1);
      },
    );
  }
}


class DYCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DYCounterBloc _bloc = DYCounterInherited.of(context).bloc;
    return StreamBuilder(
      stream: _bloc.count,
      initialData: 0,
      builder: (BuildContext context, AsyncSnapshot snapshot){
        return Container(
          child: Center(
            child: ActionChip( 
              backgroundColor: Colors.green,
              label: Text('${_bloc._count}'),
              onPressed: (){
                // _bloc.log();
                _bloc.counter.add(1);
              },
            ),
          ),
        );
      },
    );
  }
}

class DYCounterBloc {

  int _count = 0;

  final _streamController = StreamController<int>();
  StreamSink<int> get counter => _streamController.sink;

  final _counterController = StreamController<int>();
  Stream<int> get count => _counterController.stream;

  DYCounterBloc() {
    _streamController.stream.listen(onData);
  }

  void onData(int data) {
    _count = data + _count;
    _counterController.add(_count);
    print('$_count');
  }

  void dispose() { 
    _streamController.close();
    _counterController.close();
  }

  void log() {
    print("BloC");
  }
}