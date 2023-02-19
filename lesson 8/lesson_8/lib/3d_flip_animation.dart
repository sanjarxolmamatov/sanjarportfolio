import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class flip_animation extends StatefulWidget {
  const flip_animation({super.key});

  @override
  State<flip_animation> createState() => _flip_animationState();
}

class _flip_animationState extends State<flip_animation>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation? myAnimation;

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 3000),
    );
    super.initState();
    myAnimation = Tween(begin: 0.0, end: 1.0).animate(animationController!)
      ..addListener(() {
        setState(() {});
      });
    animationController!.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        animationController!.repeat();
      }
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Transform(
          alignment: FractionalOffset.center,
          transform: Matrix4.identity()
            ..setEntry(3, 2, 0.02)
            ..rotateX(3.14 * (myAnimation!.value)),
          child: Container(
            width: 200,
            height: 200,
            color: Colors.blue,
            child: Icon(
              Icons.accessibility_sharp,
              size: 100,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          animationController!.forward();
        },
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
