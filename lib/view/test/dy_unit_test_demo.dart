import 'package:flutter/material.dart';

class DYTestDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TestDemo'),
        elevation: 0.0,
      ),
      body: DYTestHomeDemo(),
    );
  }
}

class DYTestHomeDemo extends StatefulWidget {
  @override
  _DYTestHomeDemoState createState() => _DYTestHomeDemoState();
}

class _DYTestHomeDemoState extends State<DYTestHomeDemo> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Chip(label: Text('hello')),
        ActionChip(
            key: Key('actionChip'),
            label: Text('$_count', key: Key('actionChipLabelText')),
            onPressed: () {
              setState(() {
                _count++;
              });
            }),
      ],
    );
  }
}

class DYHelloDemo {
  static String greet(String name) {
    return 'hello,$name';
  }
}
