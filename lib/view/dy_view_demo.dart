import 'package:flutter/material.dart';
import '../model/post.dart';


class DYViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DYGridViewBuilderDemo();
  }
}

//按需加载
class DYGridViewBuilderDemo extends StatelessWidget {

  Widget _dyGridItemBuilder(BuildContext context, int index) {
    return Container(
      child: Image.network(
        posts[index].imageUlr,
        fit: BoxFit.cover,
      ),

    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.builder(
      padding: EdgeInsets.all(10),
      itemCount: posts.length, 
      // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //   crossAxisCount: 2,
      //   crossAxisSpacing: 8,
      //   mainAxisSpacing: 8,
      // ),
      // 
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
        maxCrossAxisExtent: 200,
      ),
      itemBuilder: _dyGridItemBuilder,
    );
  }
}

class DYGridViewExtentDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    List <Widget> _dyBuildGridView(int itemCount){

      return List.generate(itemCount, (int index){
        return Container(
          color: Colors.grey[300],
          alignment: Alignment(0, 0),
          child: Text(
            'item',
            style: TextStyle(
              fontSize: 30,
              color: Colors.black12,
            ),
          ),
        );
      });
    }

    // TODO: implement build
    return GridView.extent(
      
      maxCrossAxisExtent: 150,
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
      // scrollDirection: Axis.vertical,

      children: _dyBuildGridView(100),
    );
  }
}

//网格视图
class DYGridViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    List <Widget> _dyBuildGridView(int itemCount){

      return List.generate(itemCount, (int index){
        return Container(
          color: Colors.grey[300],
          alignment: Alignment(0, 0),
          child: Text(
            'item',
            style: TextStyle(
              fontSize: 30,
              color: Colors.black12,
            ),
          ),
        );
      });
    }

    // TODO: implement build
    return GridView.count(
      crossAxisCount: 3,
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
      scrollDirection: Axis.vertical,

      children: _dyBuildGridView(100),
    );
  }
}

//轮播图，pageview
class DYPageViewBuilderDemo extends StatelessWidget {

  Widget _dyItemBuilder(BuildContext context, int index){
    return Stack(
      children: [
        SizedBox.expand( 
          child: Image.network(
            posts[index].imageUlr,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 8, 
          left: 10,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              Text(
                posts[index].title,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              Text(posts[index].author),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView.builder(
      itemCount: posts.length,
      itemBuilder: _dyItemBuilder,
      );
  }
}

//scrollerView
class DYPageViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView(
      scrollDirection: Axis.vertical,
      // onPageChanged: (currentPage) => print('page:$currentPage'),
      controller: PageController(
        initialPage: 1,
        viewportFraction: 0.86,
      ),
      children: [
        Container(
          color: Colors.green,
          alignment: Alignment(0, 0),
          child: Text(
            'ONE',
            style: TextStyle(fontSize: 40, color: Colors.white),
          ),
        ),
        Container(
          color: Colors.brown,
          alignment: Alignment(0, 0),
          child: Text(
            'TWO',
            style: TextStyle(fontSize: 40, color: Colors.white),
          ),
        ),
        Container(
          color: Colors.orange,
          alignment: Alignment(0, 0),
          child: Text(
            'THREE',
            style: TextStyle(fontSize: 40, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
