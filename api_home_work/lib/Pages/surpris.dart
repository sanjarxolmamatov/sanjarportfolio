import 'package:flutter/material.dart';

class surpris extends StatefulWidget {
  const surpris({super.key});

  @override
  State<surpris> createState() => _surprisState();
}

class _surprisState extends State<surpris> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: 850,
        decoration: BoxDecoration(
          image: DecorationImage(fit: BoxFit.cover,image: AssetImage("assets/images/1.jpg"))
        ),
      ),
    );
  }
}