import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DartPage extends StatefulWidget {
  const DartPage({super.key});

  @override
  State<DartPage> createState() => _DartPageState();
}

class _DartPageState extends State<DartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Dart",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontSize: 30),
          )),
      body: Center(
        child: Image(
          image: AssetImage("assets/images/3.jpg"),
        ),
      ),
      backgroundColor: Colors.blueAccent,
    );
  }
}
