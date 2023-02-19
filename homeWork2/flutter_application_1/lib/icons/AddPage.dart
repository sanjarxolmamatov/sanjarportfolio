import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AddPage extends StatelessWidget {
  const AddPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(scrollDirection: Axis.vertical, children: [
        Container(
          color: Color.fromARGB(255, 73, 54, 244),
          child: Center(child: Text("")),
        ),
        Container(
          color: Color.fromARGB(255, 248, 59, 255),
          child: Center(child: Text("")),
        ),
        Container(
          color: Color.fromARGB(255, 0, 0, 0),
          child: Center(child: Text("")),
        ),
      ]),
    );
  }
}
