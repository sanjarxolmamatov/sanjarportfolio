import 'package:firebase2/pages/homePage.dart';
import 'package:firebase2/pages/sign_in.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'services/pref.dart';

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
  bool? isLogin = false;

  login() async {
    String? id = await Pref.getUserId();
    setState(() {
      if(id == null) {
        isLogin = false;
      }else {
        isLogin =true;
      }
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    login();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: isLogin! ? HomePage() : SignIn(),
    );
  }
}