import 'dart:ffi';
import 'package:flutter/material.dart';
import '';

void main() {
  runApp(App());  
} 

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
        primaryColor: Colors.yellow,
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Text('homepage'),
        ),

        body: 
      );
  }
}


