import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lesson_8/3d_flip_animation.dart';
import 'package:lesson_8/bounce_animation.dart';
import 'package:lesson_8/hom_Work.dart';
import 'package:lesson_8/home_Work_2.dart';
import 'package:lesson_8/puls_animation.dart';
import 'package:lesson_8/slide_animation.dart';

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
      home: Home_Work(),
    );
  }
}
