import 'dart:ui';

import 'package:flutter/material.dart';


class DYLayoutDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // return Column(
    //   children:[
    //     IconBadge(Icons.pool),
    //     IconBadge(Icons.book),
    //     IconBadge(Icons.car_rental),

    //   ],
    // );

    return Container(
      child: Column(
        children: [
          // IconBadge(Icons.pool),
          // IconBadge(Icons.book, size: 64,),
          // IconBadge(Icons.car_rental),
          // StackDemo(),
          // AspectRationDemo(),
          ConstrainedBoxDemo(),

        ],

        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.end,
      ),
    );
  }
}

class ConstrainedBoxDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: 200,
        maxWidth: 200,
      ),
      child: Container(
        color: Color.fromRGBO(3, 54, 255, 1.0),
      ),
    );
  }
}


class AspectRationDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AspectRatio(
      aspectRatio: 16/9,
      child: Container(
        color: Color.fromRGBO(3, 54, 255, 1.0),
      ),
    );
  }
}

class StackDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
            children: [
              SizedBox(
                width: 200,
                height: 200,
                child: Container(
                  alignment: Alignment(1, -1),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(3, 54, 255, 1.0),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                
              ),

              SizedBox(height: 20,),

              SizedBox(
                width: 100,
                height: 100,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(3, 54, 255, 1.0),
                    // borderRadius: BorderRadius.circular(8),
                    shape: BoxShape.circle,
                    // boxShadow: [
                    //   BoxShadow(
                    //     color: Colors.white,
                    //   ),
                    // ],
                    gradient: RadialGradient(
                      colors: [
                        Color.fromRGBO(7, 102, 255, 1.0),
                        Color.fromRGBO(3, 54, 255, 1.0),
                      ],
                    ),
                  ),
                  child: Icon(Icons.brightness_1, color: Colors.white, size: 32,),
                ),
                
              ),
              Positioned(
                right: 20,
                top: 20,
                child: Icon(Icons.ac_unit, color: Colors.white, size: 16,),
              ),
              Positioned(
                right: 50,
                top: 50,
                child: Icon(Icons.ac_unit, color: Colors.white, size: 16,),
              ),

              Positioned(
                right: 30,
                top: 90,
                child: Icon(Icons.ac_unit, color: Colors.white, size: 16,),
              ),

              Positioned(
                right: 15,
                top: 125,
                child: Icon(Icons.ac_unit, color: Colors.white, size: 16,),
              ),
              Positioned(
                right: 48,
                top: 160,
                child: Icon(Icons.ac_unit, color: Colors.white, size: 16,),
              )
            ],
          );
  }

}

class IconBadge extends StatelessWidget {

  final IconData icon;
  final double size;

  IconBadge(this.icon, {
    this.size = 32.0,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Icon(icon, size: size, color: Colors.white,),
      width: size + 60,
      height: size + 60,
      color: Color.fromRGBO(3, 54, 255, 1.0),
    );
  }

}