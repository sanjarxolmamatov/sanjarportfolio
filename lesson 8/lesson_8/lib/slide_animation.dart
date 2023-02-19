import 'package:flutter/material.dart';

class slide_animation extends StatefulWidget {
  const slide_animation({super.key});

  @override
  State<slide_animation> createState() => _slide_animationState();
}

class _slide_animationState extends State<slide_animation>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<Offset>? myAnimation;
  @override
  void initState() {
    animationController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 3000));
    myAnimation = Tween<Offset>(begin: Offset.zero, end: Offset(1.5, 0.0))
        .animate(CurvedAnimation(
            parent: animationController!, curve: Curves.bounceIn));
    animationController!.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        animationController!.repeat();
      }
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SlideTransition(
          position: myAnimation!,
          child: Container(
            width: 200,
            height: 200,
            child: Image(
              image: AssetImage("assets/images/1.jpg"),
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
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
    );
  }
}
