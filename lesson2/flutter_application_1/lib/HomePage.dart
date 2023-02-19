
import 'package:flutter/material.dart';
import 'lottie/lottie.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Lottie.network('https://assets3.lottiefiles.com/packages/lf20_jmejybvu.json'),),
    );
  }
}