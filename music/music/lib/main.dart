import 'package:flutter/material.dart';
import 'package:music/containerPage.dart';
import 'package:music/pages/audios.dart';
import 'package:music/pages/newAudio.dart';
import 'package:music/pages/uyishi.dart';

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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MusicPlayer(),
    );
  }
}