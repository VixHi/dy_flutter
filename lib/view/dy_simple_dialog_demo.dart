import 'package:flutter/material.dart';


enum Option {
  A, B, C
}


class DYSimpleDialogDemo extends StatefulWidget {
  @override
  _DYSimpleDialogDemoState createState() => _DYSimpleDialogDemoState();
}

class _DYSimpleDialogDemoState extends State<DYSimpleDialogDemo> {

  String choice = 'noting';
  Future _openSimpleDialog() async {
    final _choice = await showDialog(
      context: context, 
      builder: (BuildContext context){
        return SimpleDialog(
          titlePadding: EdgeInsets.all(10),
          title: Text('SimpleDialog'),
          children: [
            SimpleDialogOption(
              child:Text('Option A'),
              onPressed: () {
                Navigator.pop(context, Option.A);
              },
            ),
            SimpleDialogOption(
              child:Text('Option B'),
              onPressed: () {
                Navigator.pop(context, Option.B);
              },
            ),
            SimpleDialogOption(
              child:Text('Option C',),
              onPressed: () {
                Navigator.pop(context, Option.C);
              },
            ),
          ],
        );
      }
    );
  
    switch (_choice) {
      case Option.A:
        setState(() {
          choice = 'A';
        });
        break;
      case Option.B:
        setState(() {
          choice = 'B';
        });
        break;
      case Option.C:
        setState(() {
          choice = 'C';
        });
        break;

      default:
    }

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SimpleDialog'),
        elevation: 0.0,
      ),
      body: Container( 
        padding: EdgeInsets.all(10),
        child: Column( 
          mainAxisAlignment: MainAxisAlignment.center,
          
          // crossAxisAlignment: CrossAxisAlignment.center,
          children:[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('your choice is : ${choice}')
              ],
            ),

          ]
        ),
        
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _openSimpleDialog,
        child: Icon(Icons.add),
      ),
    );
  }
}