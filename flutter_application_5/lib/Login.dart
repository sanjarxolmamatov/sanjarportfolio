import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(gradient:LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.topRight,
          colors: [
            Color.fromARGB(255, 6, 71, 8),
             Color.fromARGB(255, 40, 188, 45),
              Color.fromARGB(255, 12, 205, 19),
               Color.fromARGB(255, 94, 205, 97),
          ],
          
        ), 
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:const [
              SizedBox(height: 100,),
              Text("Login",style: TextStyle(color: Colors.white,fontSize: 40 ),),
              SizedBox(height: 16,),
                Text("welcome Back",style: TextStyle(color: Colors.white,fontSize: 20 ),),

            ],
          ),
        ),
      ),
    );
  }
}