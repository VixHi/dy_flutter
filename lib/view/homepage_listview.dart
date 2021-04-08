import 'package:flutter/material.dart';
import 'package:helloworld_flutter/view/dy_push_show.dart';
import '../model/post.dart';
import './dy_push_show.dart';
class HomeListView extends StatelessWidget {
  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 16/9,
                child: Image.network(posts[index].imageUrl, fit: BoxFit.cover,),
              ),
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
          Positioned.fill(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                splashColor: Colors.white.withOpacity(0.3),
                highlightColor: Colors.white.withOpacity(0.1),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => DYPushShow(post: posts[index])),
                  );
                  // Navigator.pushNamed(context, '/about');
                  // Navigator.push(context, route)
                },
              ),
            ),
          ),
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
