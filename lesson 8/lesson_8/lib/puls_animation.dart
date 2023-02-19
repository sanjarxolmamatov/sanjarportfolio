import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class puls_animation extends StatefulWidget {
  const puls_animation({super.key});

  @override
  State<puls_animation> createState() => _puls_animationState();
}

class _puls_animationState extends State<puls_animation>
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
    myAnimation =
        Tween<Size>(begin: Size(100, 100), end: Size(500, 500)).animate(
      CurvedAnimation(parent: animationController!, curve: Curves.bounceIn),
    );
    animationController!.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        animationController!.repeat();
      }
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedBuilder(
          animation: myAnimation!,
          builder: (context, child) => Container(
            width: myAnimation!.value.width,
            height: myAnimation!.value.height,
            child: Image(
              image: AssetImage("assets/images/2.jpg"),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          animationController!.forward();
          print(animationController!.status);
        },
        child: Icon(Icons.play_arrow),
      ),
      backgroundColor: Color.fromARGB(255, 44, 44, 44),
    );
  }
}
