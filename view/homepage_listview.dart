import 'package:flutter/material.dart';
import '../lib/model/post.dart';

class HomeListView extends StatelessWidget {

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
    return ListView.builder(
          itemBuilder: _listItemBuilder,
          itemCount: posts.length,
          );
  }
}