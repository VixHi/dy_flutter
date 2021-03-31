import 'dart:ffi';
import 'package:flutter/material.dart';
import 'model/post.dart';

void main() {
  runApp(App());  
} 

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Home(),
      theme: ThemeData(
        primaryColor: Colors.yellow,
      ),
    );
  }
}

class Home extends StatelessWidget {

  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
      color:Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Image.network(posts[index].imageUlr),
          SizedBox(height: 16.0),

          Text(
            posts[index].title,
            style: TextStyle(
              fontSize: 40.0,
              color: Colors.blueGrey,
              decoration: TextDecoration.underline,
              // letterSpacing: 30.0,
              // wordSpacing: 30.0,
            ),
           
          ),

          Text(
            posts[index].author,
            // style: Theme.of(context).textTheme.subtitle1,
            textDirection: TextDirection.rtl,
          ),

          SizedBox(height: 16.0),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Text('homepage'),
        ),

        body: ListView.builder(
          itemBuilder: _listItemBuilder,
          itemCount: posts.length,
          ),
      );
  }
}
/*
class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Text(
        'hello flutter',
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 40.0,
          fontWeight: FontWeight.bold,
          color: Colors.red,
          backgroundColor: Colors.white,
        ),
      ),
 
    );
  }
}

*/