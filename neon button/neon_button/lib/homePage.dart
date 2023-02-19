import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isPrassed = false;

  @override
  Widget build(BuildContext context) {
    Color ShadowColor = Color.fromARGB(255, 255, 0, 0);
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      body: Center(
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
              onPressed: () {},
              child: Text(
                "I Love You",
                style: TextStyle(color: Colors.white, fontSize: 30, shadows: [
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
    );
  }
}
