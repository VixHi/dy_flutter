import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class DYStateManagementDemo extends StatefulWidget {
  @override
  _DYStateManagementDemoState createState() => _DYStateManagementDemoState();
}

class _DYStateManagementDemoState extends State<DYStateManagementDemo> {
  int _count = 0;
  void _increaseCount() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    print('123');
    return DYCounterProvider(
      count: _count,
      increaseCount: _increaseCount,
      child: Scaffold(
        appBar: AppBar(
          title: Text('StateManagement'),
          elevation: 0,
        ),
        body: Container(
          margin: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Counterwraper()
                ],
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: _increaseCount,
        ),
      ),
    );
  }
}

class Counterwraper extends StatelessWidget {
  // final int count;
  // final VoidCallback increaseCount;

  // Counterwraper({
  //   this.count,
  //   this.increaseCount,
  // });

  @override
  Widget build(BuildContext context) {
    print('object123');
    return Center(
      child: Counter(),
    );
  }
}

class Counter extends StatelessWidget {
  // final int count;
  // final VoidCallback increaseCount;

  // Counter({
  //   this.count,
  //   this.increaseCount,
  // });

  @override
  Widget build(BuildContext context) {
    final int count = DYCounterProvider.of(context).count;
    final VoidCallback increaseCount = DYCounterProvider.of(context).increaseCount;
    return ActionChip(
      label: Text('$count'),
      onPressed: increaseCount,
    );
  }
}

// class CounterProvider extends InheritedWidget

class DYCounterProvider extends InheritedWidget {
  final int count;
  final Widget child;
  final VoidCallback increaseCount;

  DYCounterProvider({Key key, this.count, this.increaseCount, this.child})
      : super(key: key, child: child);

  static DYCounterProvider of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<DYCounterProvider>();
  }

  @override
  bool updateShouldNotify(DYCounterProvider oldWidget) {
    return true;
  }
}


