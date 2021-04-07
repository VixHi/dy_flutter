import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:async';

class DYDateTimeDemo extends StatefulWidget {
  @override
  _DYDateTimeDemoState createState() => _DYDateTimeDemoState();
}

class _DYDateTimeDemoState extends State<DYDateTimeDemo> {
  DateTime _selectDateTime = DateTime.now();
  TimeOfDay _selectTime = TimeOfDay(hour: 9, minute: 30);

  Future<void> _selectDate() async {
    final DateTime date = await showDatePicker(
      context: context,
      initialDate: _selectDateTime,
      firstDate: DateTime(1900),
      lastDate: DateTime(200000)
    );

    if (date == null) {
      return;
    }
    setState(() {
      _selectDateTime = date;
    });
  }

  Future<void> _selectTimeAction() async {
    final TimeOfDay time = await showTimePicker(
      context: context, 
      initialTime: _selectTime,
    );

    if (time == null) {
      return;
    }
    setState(() {
      _selectTime = time;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('time'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: _selectDate,
                  child: Row(
                    children: [
                      Text(DateFormat.yMMMMd().format(_selectDateTime)),
                      Icon(Icons.arrow_drop_down),
                    ],
                  ),
                ),
                InkWell(
                  onTap: _selectTimeAction,
                  child: Row(
                    children: [
                      Text(_selectTime.format(context)),
                      Icon(Icons.arrow_drop_down),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
