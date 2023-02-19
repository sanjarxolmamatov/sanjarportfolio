
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:weather_animation/weather_animation.dart';

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
      home: Home_Pages());
  }
}

class Home_Pages extends StatefulWidget {
  const Home_Pages({super.key});

  @override
  State<Home_Pages> createState() => _Home_PagesState();
}

class _Home_PagesState extends State<Home_Pages> {
  @override
  Widget build(BuildContext context) {
    return WrapperScene(
      children: [    
      const SunWidget(),
      const CloudWidget(),
      WindWidget(),
    Center(child: ElevatedButton(onPressed: (){
      Navigator.push(context,MaterialPageRoute(builder: ((context) => )))
    },
    style: ButtonStyle(
   backgroundColor: MaterialStatePropertyAll(Colors.orange)
    ),
     child: Text("Smart Oromgoh"))),

    ], 
    colors: [
      Color(0xff283593),
      Color(0xffff8a65),

    ]);
  }
}
