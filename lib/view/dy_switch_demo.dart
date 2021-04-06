import 'package:flutter/material.dart';

class DYSwitchDemo extends StatefulWidget {
  @override
  _DYSwitchDemoState createState() => _DYSwitchDemoState();
}

class _DYSwitchDemoState extends State<DYSwitchDemo> {

  bool _switchValue = true;
  void _handleSwitchValue (value) {
    setState(() {
      _switchValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: Text('Swithch'),
        elevation: 0,
      ),

      body: Container( 
        padding: EdgeInsets.all(8),
        child: Column( 
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            SwitchListTile(
              value: _switchValue, 
              onChanged: _handleSwitchValue,
              title: Text('时间设置:'),
              subtitle: Text('time'),
              secondary: Icon(_switchValue ? Icons.visibility:Icons.visibility_off),
              selected: _switchValue,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Text(_switchValue?'😊':'😭', style: TextStyle(fontSize: 30)),
                // Switch(
                //   value: _switchValue, 
                //   onChanged: _handleSwitchValue,
                //   activeColor: Colors.green,
                // )
              ],
            ),

          ],
        ),
      ),
    );
  }
}