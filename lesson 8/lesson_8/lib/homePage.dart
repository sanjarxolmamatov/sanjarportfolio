import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  AnimationController? _animationController;
  Animation<double>? myAnimation;
  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 600),
    );
    super.initState();
    myAnimation =
        CurvedAnimation(parent: _animationController!, curve: Curves.easeIn);
  }

  void dispose() {
    super.dispose();
    _animationController!.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FadeTransition(
          opacity: myAnimation!,
          child: Container(
            width: 200,
            height: 200,
            child: Image(
              image: AssetImage("assets/images/2.jpg"),
            ),
          ),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 54, 53, 53),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _animationController!.forward();
          });
        },
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
