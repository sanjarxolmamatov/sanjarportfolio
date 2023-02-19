import 'package:flutter/material.dart';

class Login_in extends StatefulWidget {
  const Login_in({super.key});

  @override
  State<Login_in> createState() => _Login_inState();
}

class _Login_inState extends State<Login_in> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image(
            image: AssetImage("assets/images/1.png"),
          ),
          Container(
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),  
          )
        ],
      ),
    );
  }
}
