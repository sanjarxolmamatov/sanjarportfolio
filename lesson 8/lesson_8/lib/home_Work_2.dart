import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home_Work2 extends StatefulWidget {
  const Home_Work2({super.key});

  @override
  State<Home_Work2> createState() => _Home_Work2State();
}

class _Home_Work2State extends State<Home_Work2>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? myAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1000));

    myAnimation = Tween<double>(begin: 100, end: 400).animate(CurvedAnimation(
        parent: animationController!,
        curve: Interval(0.0, 1.0, curve: Curves.elasticIn)))
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          animationController!.repeat(reverse: true);
        }
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBuilder(
        animation: myAnimation!,
        builder: (context, child) => Container(
          margin: EdgeInsets.only(
            top: myAnimation!.value,
          ),
          width: 200,
          height: 400,
          child: Image(
            image: AssetImage("assets/images/5.png"),
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
