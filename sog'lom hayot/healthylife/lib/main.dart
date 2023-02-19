import 'package:flutter/material.dart';
import 'package:healthylife/config/colors.dart';
import 'package:healthylife/pages/auth/sign_in/sign_in.dart';
import 'package:healthylife/pages/patient/patient_page.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // debugPaintSizeEnabled = true;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Sog'lom hayot",
      theme: ThemeData(
        primaryColor: primaryColor,
        brightness: Brightness.light,
        fontFamily: "Nunito",
      ),
      home: const Scaffold(
        body: SignIn(),
      ),
    );
  }
}
