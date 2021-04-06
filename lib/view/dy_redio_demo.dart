import 'dart:ffi';

import 'package:flutter/material.dart';


class DYRedioDemo extends StatefulWidget {
  @override
  _DYRedioDemoState createState() => _DYRedioDemoState();
}

class _DYRedioDemoState extends State<DYRedioDemo> {

  int _groupValue = 0;
  // String _groupObject = '';
  void _handleGroupValueChanged(value) {
    setState(() {
      print(value);
      _groupValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RadioDemo'),
        elevation: 10,
      ),

      body: Container( 
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Option: ${_groupValue}'),
            SizedBox(height:30),
            RadioListTile(
              value: 0, 
              groupValue: _groupValue, 
              onChanged: _handleGroupValueChanged,
              title: Text('Option A'),
              subtitle: Text('Desc A'),
              secondary: Icon(Icons.opacity_outlined),
            ),
            RadioListTile(
              value: 1, 
              groupValue: _groupValue, 
              onChanged: _handleGroupValueChanged,
              title: Text('Option B'),
              subtitle: Text('Desc B'),
              secondary: Icon(Icons.opacity_outlined),

            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Radio(value: 0, groupValue: _groupValue, onChanged: _handleGroupValueChanged, activeColor: Colors.black),
                // Radio(value: 1, groupValue: _groupValue, onChanged: _handleGroupValueChanged, activeColor: Colors.black),
                // Radio(value: 2, groupValue: _groupValue, onChanged: _handleGroupValueChanged, activeColor: Colors.black)
              ],
            ),
          ],
        ),
      ),

    );
  }
}