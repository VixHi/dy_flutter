import 'package:flutter/material.dart';

class DYCheckboxDemo extends StatefulWidget {
  @override
  _DYCheckboxDemoState createState() => _DYCheckboxDemoState();
}

class _DYCheckboxDemoState extends State<DYCheckboxDemo> {
  bool _checkboxItem = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('_checkbox'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CheckboxListTile(
              value: _checkboxItem, 
              title: Text('CheckBox Item A'),
              subtitle: Text('desc'),
              secondary: Icon(Icons.book_online),
              selected: _checkboxItem,
              onChanged: (value) {
              setState(() {
                _checkboxItem = value;
              });
              
            }),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Checkbox(
                //   value: _checkboxItem,
                //   onChanged: (value) {
                //     print(value);
                //     setState(() {
                //       _checkboxItem = value;
                //     });
                //   },
                //   activeColor: Colors.black,
                // ),
                    
              ],
            ),
          ],
        ),
      ),
    );
  }
}
