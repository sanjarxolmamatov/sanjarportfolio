import 'package:flutter/material.dart';
import 'pages/pageB.dart';
import 'pages/pageA.dart';

void main(List<String> args) {
  runApp(const MyApp());
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
      home: PageA(),
      routes: {
        // PageA.id: (context) => PageA(),
        // PageB.id: (context) => PageB(),
      },
    );
  }
}
