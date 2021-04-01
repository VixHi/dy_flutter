import 'package:flutter/material.dart';
import '../model/post.dart';

class DYSliverDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DYScaffooldDemo();
  }
}


class DYScaffooldDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            // title: Text('homepage'),
            // pinned: true,
            floating: true,
            expandedHeight: 178,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'Flutter',
                 style: TextStyle(fontSize: 30, )
              ),
              background: Image.network(
                posts[0].imageUlr,
                fit: BoxFit.cover,  
              ),
            ),
          ),
          SliverSafeArea(
              sliver: SliverPadding(
            padding: EdgeInsets.all(8),
            sliver: DYSliverListDemo(),
          )),
        ],
      ),
    );
  }
}

class DYSliverListDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.only(bottom: 32),
            child: Material(
              borderRadius: BorderRadius.circular(12.0),
              elevation: 14.0,
              shadowColor: Colors.grey.withOpacity(0.6),
              child: Stack(
                children: [
                  AspectRatio(
                    aspectRatio: 16/9,
                    child: Image.network(
                      posts[index].imageUlr,
                      fit:BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 16,
                    left: 16,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          posts[index].title,
                          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          posts[index].author,
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                                  ],
              ),
            ),
          );
        },
        childCount: posts.length,
      ),
    );
  }
}
class DYSliverGridDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SliverGrid(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Container(
            child: Image.network(
              posts[index].imageUlr,
              fit: BoxFit.cover,
            ),
          );
        },
        childCount: posts.length,
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 3 / 3,
        crossAxisCount: 2,
        mainAxisSpacing: 8.0,
        crossAxisSpacing: 8.0,
      ),
    );
  }
}
