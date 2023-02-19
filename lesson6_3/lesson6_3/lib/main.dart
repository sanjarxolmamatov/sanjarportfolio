import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lesson6_3/6_1.dart';
import 'package:lesson6_3/homeScren.dart';

import 'homePage.dart';

void main(List<String> args) {
  runApp(MyApp());

}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ContainerPage(),
    );
  }
}