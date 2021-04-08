import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DYHttpDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HttpDemo'),
        elevation: 0.0,
      ),
      body: DYHttpHome(),
    );
  }
}

class DYHttpHome extends StatefulWidget {
  @override
  _DYHttpHomeState createState() => _DYHttpHomeState();
}

class _DYHttpHomeState extends State<DYHttpHome> {
  @override
  void initState() {
    super.initState();
    fetchData()
      .then((value) => print(value));

    // final jsonDemo = {'title': 'hello', 'description': 'nice to meet you'};

    // print(jsonDemo['title']);

    // //
    // final jsonStr = json.encode(jsonDemo);
    // print(jsonStr);

    // final jsonConvert = json.decode(jsonStr);
    // print(jsonConvert);
    // print(jsonConvert is Map);
  }

  Future<List<UserModel>> fetchData() async {
    var url = Uri.parse('https://resources.ninghao.net/demo/posts.json');
    final response = await http.get(url);
    // print('${response.statusCode}');
    // print('${response.body}');
    if (response.statusCode == 200) {
      final responseBody = json.decode(response.body);
      List<UserModel> dataSource = responseBody['posts']
        .map<UserModel>((model) => UserModel.fromJson(model))
        .toList();
        return dataSource;
    }else {
      throw Exception('Failed to fetch posts');
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: fetchData(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: Text('loading...'),
          );
        }
        return ListView(
          children: snapshot.data.map<Widget>((model) {
            return ListTile(
              title: Text(model.title),
              subtitle: Text(model.author),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(model.imageUrl)
              ),
            );
          }).toList(),
        );
      }
    );
  }
}

class UserModel {
  final int id;
  final String title;
  final String description;
  final String imageUrl;
  final String author;

  UserModel(
      {this.id, this.title, this.description, this.imageUrl, this.author});

  UserModel.fromJson(Map json)
      : title       = json['title'],
        description = json['description'],
        id          = json['id'],
        imageUrl    = json['imageUrl'],
        author      = json['author'];


  Map toJson() => {
    'title' : title,
    'id'    : id,
    'description' : description,
    'imageUrl' : imageUrl,
    'author' : author,
  };
}
