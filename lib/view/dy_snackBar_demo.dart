import 'package:flutter/material.dart';


class DYSnackBarDemo extends StatefulWidget {
  @override
  _DYSnackBarDemoState createState() => _DYSnackBarDemoState();
}

class _DYSnackBarDemoState extends State<DYSnackBarDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: Text('SnackBar'),
        elevation: 0,
      ),

      body: Container( 
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DYSnackBarButton(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class DYSnackBarButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton( 
      child: Text('button'),
      onPressed: () {
        // Scaffold.of(context).showSnackBar(snackbar)
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: Colors.yellow,
            content:Text('Loading...'),
            action: SnackBarAction(
              label: 'OK', 
              onPressed: (){

              },
            ),
          ),
        );
      },
    );
  }
}