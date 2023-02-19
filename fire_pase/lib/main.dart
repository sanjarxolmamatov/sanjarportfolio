import 'package:fire_pase/pages/sign_In.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main(List<String> args) { 
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
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
      home: Sign_In(),
    );
  }
}