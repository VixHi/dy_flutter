import 'package:flutter/material.dart';

class DYNavitatorDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            TextButton(onPressed: null, child: Text('home')),
            TextButton(
              onPressed: (){
                Navigator.pushNamed(context, '/about');
                // Navigator.of(context).push(
                //   MaterialPageRoute(builder: (BuildContext context) => Page(title: "About"))
                // );
              }, 
            child: Text('about')),
          ],
        ),
      ),
    );
  }
}


class DYPage extends StatelessWidget {

  final String title;
  DYPage({
    this.title
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title), elevation: 0.0),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back_ios),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
    );
  }
}