import 'package:flutter/material.dart';

class DYSliderDemo extends StatefulWidget {
  @override
  _DYSliderDemoState createState() => _DYSliderDemoState();
}

class _DYSliderDemoState extends State<DYSliderDemo> {

  double _sliderValue = 0;
  void _handleSliderValue (value) {
    setState(() {
      _sliderValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: Text('Slider'),
        elevation: 0,
      ),

      body: Container( 
        padding: EdgeInsets.all(8),
        child: Column( 
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            // SwitchListTile(
            //   value: _switchValue, 
            //   onChanged: _handleSwitchValue,
            //   title: Text('时间设置:'),
            //   subtitle: Text('time'),
            //   secondary: Icon(_switchValue ? Icons.visibility:Icons.visibility_off),
            //   selected: _switchValue,
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Slider(
                  value: _sliderValue, 
                  onChanged: _handleSliderValue,
                  min: 0.0,
                  max: 20.0,
                  activeColor: Colors.green,
                  divisions: 10,
                  label: '${_sliderValue.toInt()}m/s',

                )
              ],
            ),
            SizedBox(height:20),
            Text('${_sliderValue}m/s'),

          ],
        ),
      ),
    );
  }
}