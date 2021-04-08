import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';



// class DYScopedModelDemo extends StatefulWidget {
//   @override
//   _DYScopedModelDemoState createState() => _DYScopedModelDemoState();
// }

// class _DYScopedModelDemoState extends State<DYScopedModelDemo> {
//   @override
//   Widget build(BuildContext context) {
//     return ScopedModel(
//       model:CounterModel(),
//       child:Scaffold( 
//         appBar: AppBar(  
//           title: Text('ScopedModel'),
//           elevation: 0,
//         ),
//         body: CounterWraper(),
//       ),
//     );
//   }
// }


class DYScopedModelDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('object2');

    return ScopedModel(
      model: CounterModel(),
      child: Scaffold(
        appBar: AppBar(  
          title: Text('ScopedModel'),
          elevation: 0,
        ),
        body: CounterWraper(),
        floatingActionButton: ScopedModelDescendant<CounterModel> ( 
          rebuildOnChange: false,
          builder: (context, _, model) => FloatingActionButton( 
            child: Icon(Icons.add),
            onPressed: model.increaseCount,
          ),
        ),
      ),
    );
  }
}

class CounterWraper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('object1');
    return Center(
      child: Counter(),
    );
  }
}

class Counter extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    print('object');
    return ScopedModelDescendant<CounterModel> ( 
      builder: (context, _, model) => ActionChip( 
        label: Text('${model._count}'),
        onPressed: model.increaseCount,
      ),
    );
  }
}


class CounterModel extends Model {
  int _count = 0;
  int get count => _count;
  void increaseCount() {
    _count++;
    notifyListeners();
  }
}


