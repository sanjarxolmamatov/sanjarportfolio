import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class bounce_Animation extends StatefulWidget {
  const bounce_Animation({super.key});

  @override
  State<bounce_Animation> createState() => _bounce_AnimationState();
}

class _bounce_AnimationState extends State<bounce_Animation>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? myAnimation;

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 3000),
    );
    super.initState();
    myAnimation = Tween<double>(begin: 100, end: 400).animate(
      CurvedAnimation(
        parent: animationController!,
        curve: Interval(0.0, 1.0, curve: Curves.linear),
      ),
    );
    animationController!.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        animationController!.repeat(reverse: true);
      }
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBuilder(
        animation: myAnimation!,
        builder: (context, child) => Container(
          margin: EdgeInsets.only(
            top: myAnimation!.value,
            bottom: myAnimation!.value,
          ),
          width: 200,
          height: 200,
          child: Image(
            image: AssetImage("assets/images/1.jpg"),
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
