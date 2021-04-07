import 'package:flutter/material.dart';
import 'package:async/async.dart';

enum AlertOption{
  cancel, ok
}

class DYAlertDialogDemo extends StatefulWidget {
  @override
  _DYAlertDialogDemoState createState() => _DYAlertDialogDemoState();
}

class _DYAlertDialogDemoState extends State<DYAlertDialogDemo> {

  String choice = 'noting';

  Future _openAlertDialog() async {
    final _choice = await showDialog(
      barrierDismissible: false,
      context: context, 
      builder: (BuildContext ctx) {
        return AlertDialog(
          title: Text('Alert Dialog'),
          content: Text('Are you sure ?'),
          actions: [
            TextButton(
              child: Text('Cancel'),
              onPressed: (){
                Navigator.pop(ctx, AlertOption.cancel);
              }, 
            ),
            TextButton(
              child: Text('OK'),
              onPressed: (){
                Navigator.pop(ctx, AlertOption.ok);
              }, 
            ),
          ],
        );
      },
    );
    switch (_choice) {
      case AlertOption.ok:
        setState(() {
          choice = 'OK';
        });
        break;

      case AlertOption.cancel:
        setState(() {
          choice = 'Cancel';
        });
        break;

      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: Text('AlertDialog'),
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
                Text('Your choice is: $choice'),
              ],
            ),

            SizedBox(height: 30),

            ElevatedButton(
              child: Text('Open AlertDialog'),
              onPressed: _openAlertDialog,
            ),
          ],
        ),
      ),
    );
  }
}