import 'package:flutter/material.dart';
import '../model/post.dart';

class DYCardDemo extends StatefulWidget {
  @override
  _DYCardDemoState createState() => _DYCardDemoState();
}

class _DYCardDemoState extends State<DYCardDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CardDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: ListView(
          children: posts.map((post) {
            return Card(
              child: Column(
                children: [
                  AspectRatio(
                      aspectRatio: 16 / 9,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(4),
                          topRight: Radius.circular(4),
                        ),
                        child: Image.network(
                          post.imageUlr,
                          fit: BoxFit.cover,
                        ),
                      )),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(post.imageUlr),
                    ),
                    title: Text(post.title),
                    subtitle: Text(post.author),
                  ),
                  Container(
                    child: Text(post.desc,
                        maxLines: 3, overflow: TextOverflow.ellipsis),
                    padding: EdgeInsets.all(16),
                  ),
                  Container(
                    child: ButtonBar(
                      children: [
                        TextButton(
                          child: Text('like'.toUpperCase()),
                          onPressed: () {},
                        ),
                        TextButton(
                          child: Text('read'.toUpperCase()),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
