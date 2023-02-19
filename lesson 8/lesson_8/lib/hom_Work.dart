import 'package:flutter/material.dart' hide BoxShadow, BoxDecoration;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

class Home_Work extends StatefulWidget {
  const Home_Work({super.key});

  @override
  State<Home_Work> createState() => _Home_WorkState();
}

class _Home_WorkState extends State<Home_Work>
    with SingleTickerProviderStateMixin {
  bool isPrassed = false;
  AnimationController? animationController;
  Animation? myAnimation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1000));

    myAnimation = Tween<Size>(begin: Size(100, 100), end: Size(400, 400))
        .animate(CurvedAnimation(
            parent: animationController!, curve: Curves.bounceIn));
    animationController!.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        animationController!.repeat();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Color ShadowColor = Color.fromARGB(255, 255, 0, 0);
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 600,
            child: Center(
              child: AnimatedBuilder(
                animation: myAnimation!,
                builder: ((context, child) => Container(
                      width: myAnimation!.value.width,
                      height: myAnimation!.value.height,
                      child: Image(
                        image: AssetImage("assets/images/4.png"),
                      ),
                    )),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 200,
            child: Center(
              child: Listener(
                onPointerDown: (_) => setState(() {
                  isPrassed = true;
                }),
                onPointerUp: (_) => setState(() {
                  isPrassed = false;
                }),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      for (double i = 1; i < 5; i++)
                        BoxShadow(
                          color: Colors.white,
                          blurRadius: (isPrassed ? 5 : 3) * i,
                          inset: true,
                        ),
                      for (double i = 1; i < 5; i++)
                        BoxShadow(
                          spreadRadius: -1,
                          color: Colors.white,
                          blurRadius: (isPrassed ? 5 : 3) * i,
                          blurStyle: BlurStyle.outer,
                        ),
                    ],
                  ),
                  child: TextButton(
                    onHover: (hovered) => setState(() {
                      this.isPrassed = hovered;
                    }),
                    style: TextButton.styleFrom(
                      side: BorderSide(color: Colors.white, width: 4),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      animationController!.forward();
                    },
                    child: Text(
                      "I Love You",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          shadows: [
                            for (double i = 1; i < (isPrassed ? 8 : 4); i++)
                              Shadow(
                                color: ShadowColor,
                                blurRadius: 3 * i,
                              ),
                          ]),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.black,
    );
  }
}
