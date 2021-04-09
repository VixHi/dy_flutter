
import 'package:flutter/material.dart';

class DYAnimationDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('AnimationDemo'),
          elevation: 0.0,
        ),
        body: DYAnimationHome());
  }
}

class DYAnimationHome extends StatefulWidget {
  @override
  _DYAnimationHomeState createState() => _DYAnimationHomeState();
}

class _DYAnimationHomeState extends State<DYAnimationHome>
    with TickerProviderStateMixin {
  AnimationController _animationController;
  Animation _animation;
  Animation _animationColor;
  CurvedAnimation _curve;
  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      // value: 36,
      // lowerBound: 36,
      // upperBound: 88,
      duration: Duration(milliseconds: 1000),
      vsync: this,
    );

    _curve = CurvedAnimation(parent: _animationController, curve: Curves.bounceOut);

    _animation = Tween(begin: 32.0, end: 100.0).animate(_curve);
    _animationColor = 
      ColorTween(begin: Colors.red[100], end: Colors.red[900]).animate(_curve);
    
    _animationController.addListener(() {
      setState(() {});
    });

    _animationController.addStatusListener((status) {
      print(status);
    });

  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DYAnimationHeart(
        animationController: _animationController,
        animations: [_animation, _animationColor],
      ),
      
    );
    // Center(
    //     child: ActionChip(
    //   label: Text('${_animationController.value}'),
    //   onPressed: () {
    //     _animationController.forward();
    //   },
    // ));
  }
}


class DYAnimationHeart extends AnimatedWidget {

  final List animations;
  final AnimationController animationController;

  DYAnimationHeart({
    this.animations,
    this.animationController,
  }):super(listenable: animationController);

  @override
  Widget build(BuildContext context) {
    
    return IconButton( 
        icon: Icon(Icons.favorite_outline),
        // iconSize: _animationController.value,
        iconSize: animations[0].value,
        color: animations[1].value,
        onPressed: () {
          switch (animationController.status) {
            case AnimationStatus.completed:
              animationController.reverse();
              break;
            default:
              animationController.forward();
          }
        },
      );
  }

}