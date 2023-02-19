import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;

import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  bool isPressed = true;
  bool isDarkMode = true;

  @override
  Widget build(BuildContext context) {
    final backgroundColor = isDarkMode ? Color(0xFF2E3239) : Colors.white;
    Offset distance = isPressed ? Offset(10, 10) : Offset(28, 28);
    double blur = isPressed ? 5.0 : 30.0;

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Listener(
          onPointerUp: (_) => setState(() {
            isPressed = false;
          }),
          onPointerDown: (_) => setState(() {
            isPressed = true;
          }),
          child: AnimatedContainer(
            duration: Duration(milliseconds: 100),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: backgroundColor,
              boxShadow: isPressed
                  ? []
                  : [
                      BoxShadow(
                        blurRadius: blur,
                        offset: -distance,
                        color: isDarkMode ? Color(0xFF35393F) : Colors.white,
                        inset: isPressed,
                      ),
                      BoxShadow(
                          blurRadius: blur,
                          offset: distance,
                          color: isDarkMode ? Color(0xFF23262A) : Colors.white,
                          inset: isPressed),
                    ],
            ),
            child: const SizedBox(
              width: 200,
              height: 200,
            ),
          ),
        ),
      ),
    );
  }
}
