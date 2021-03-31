import 'package:flutter/material.dart';


class DYBasicDemo extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container( 
      // color: Colors.grey[100],
      
      decoration: BoxDecoration(
        image: DecorationImage( 
          // image: AssetImage(''),
          image: NetworkImage('https://gimg2.baidu.com/image_search/src=http%3A%2F%2F2c.zol-img.com.cn%2Fproduct%2F124_500x2000%2F984%2FceU7xYD3umwA.jpg&refer=http%3A%2F%2F2c.zol-img.com.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1619704527&t=8fb92ccdcf7e483aa32a5d3d60ce4797'),
          repeat: ImageRepeat.noRepeat,
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.red, 
            BlendMode.overlay,
          ),
        ),
      ),

      child: Row( 
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Icon(Icons.person_add, size: 50, color: Colors.purple),
            // padding: EdgeInsets.only(left: 10, top: 20),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            // color: Colors.green,
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.green,
              border: Border.all(
                color: Color.fromRGBO(249, 100, 24, 1.0),
                width: 5,
                style: BorderStyle.solid,
              ),
              // borderRadius: BorderRadius.circular(18),
              // borderRadius: BorderRadius.only(
              //   topLeft: Radius.circular(25),
              // ),

              boxShadow:[
                BoxShadow(
                  color: Colors.blue,
                  offset: Offset(10, 10),
                  blurRadius: 15,
                  spreadRadius: -10,
                ),
              ],

              shape: BoxShape.circle,
              // gradient:RadialGradient(
              //     colors:[
              //       Colors.red,
              //       Colors.blue,
              //     ],
              // ),

              gradient: LinearGradient( 
                colors: [
                  Colors.blue[50],
                  Colors.blue,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),

            ),
          ),
        ],
      ),
    );
  }
}

class DYRichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RichText(
      text: TextSpan(
        text: 'vix, hi',
        style: TextStyle(
          color: Colors.purple,
          fontSize: 36,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
        ),

        children: [
          TextSpan (
            text: '@dy',
            style: TextStyle( 
              fontSize: 16,
              color: Colors.blueGrey,
            ),
          ),
        ],
      ),

    );
  }
}

class DYTextDemo extends StatelessWidget {

  final TextStyle _textStyle = TextStyle(
    color: Colors.purple,
    fontSize: 18,
  );

  final String _author = '佚名';
  final String _title = '越人歌';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text( 
      '《$_title》\n今夕何夕兮， 搴舟中流。 今日何日兮， 得与王子同舟。 蒙羞被好兮， 不訾诟耻。 心几烦而不绝兮， 得知王子。 山有木兮木有枝， 心悦君兮君不知。---$_author ',
      textAlign: TextAlign.center,
      maxLines: 5,
      overflow: TextOverflow.ellipsis,
      style: _textStyle,
    );
  }
}