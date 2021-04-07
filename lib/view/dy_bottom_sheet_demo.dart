import 'package:flutter/material.dart';
import 'package:async/async.dart';

enum Option {
  A, B, C
}

class DYBottomSheetDemo extends StatefulWidget {
  @override
  _DYBottomSheetDemoState createState() => _DYBottomSheetDemoState();
}

class _DYBottomSheetDemoState extends State<DYBottomSheetDemo> {

  String choice = 'noting';
  final _bottomSheetScaffoldKey = GlobalKey<ScaffoldState>();
  _showBottomSheet() {
    _bottomSheetScaffoldKey
    .currentState
    .showBottomSheet((context) {
      return BottomAppBar( 
        child: Container( 
          height: 60,
          width: double.infinity,
          padding: EdgeInsets.all(20),
          child: Row(
            children:[
              Icon(Icons.pause_circle_filled_outlined),
              Text('01:30 / 03:50'),
              SizedBox(width: 50.0),
              Expanded(child: Text('Fix you - Coldplay')),
            ],
          ),
        ),
      );
    });
    
  }

  Future _showModalBottomSheet() async {
    final _choice = await showModalBottomSheet(
      context: context, 
      builder: (BuildContext context) {
        return Container( 
          height: 200,
          child: Column(
            children: [
              ListTile(
                title:Text('Option A'),
                onTap: (){
                  Navigator.pop(context, Option.A);
                },
              ),
              ListTile(
                title:Text('Option B'),
                onTap: (){
                  Navigator.pop(context, Option.B);
                },
              ),
              ListTile(
                title:Text('Option C'),
                onTap: (){
                  Navigator.pop(context, Option.C);
                },
              ),
            ],
          ),
        );
      },
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
      key: _bottomSheetScaffoldKey,
      appBar: AppBar( 
        title: Text('BottomSheet'),
        elevation: 0,
      ),

      body: Container( 
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Your choice is : $choice'),
                
              ],
            ),
            SizedBox(height: 30),

            OutlinedButton(
              onPressed: _showBottomSheet, 
              child: Text('bottomSheet')
            ),
            OutlinedButton(
              onPressed: _showModalBottomSheet, 
              child: Text('modalBottomSheet')
            ),
        ],
      ),
      ),
      
      
    );
  }
}