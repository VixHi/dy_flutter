import 'package:flutter/material.dart';
import '../model/post.dart';

class DYPushShow extends StatelessWidget {

  final Post post;
  DYPushShow({
    @required this.post,
  });
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('${post.title}'),
      ),
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 16/9,
            child: Image.network(
              '${post.imageUrl}',
              fit: BoxFit.cover,
            ),
          ),
          
          Container(
            padding: EdgeInsets.all(32),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('${post.title}', style: Theme.of(context).textTheme.headline5),
                Text('${post.author}', style: Theme.of(context).textTheme.headline5),
                Text('${post.description}', style: Theme.of(context).textTheme.headline6),
              ],
            ),
          ),
        ],
      ),
    );
  }
}