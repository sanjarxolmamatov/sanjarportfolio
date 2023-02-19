import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class singinpage extends StatefulWidget {
  const singinpage({super.key});

  @override
  State<singinpage> createState() => _singinpageState();
}

class _singinpageState extends State<singinpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Container(
      child: Text("Instagram",),
    ),
     );
  }
}