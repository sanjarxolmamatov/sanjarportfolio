import 'package:fire_pase/pages/sign_In.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Sign_Up extends StatefulWidget {
  const Sign_Up({super.key});

  @override
  State<Sign_Up> createState() => _Sign_UpState();
}

class _Sign_UpState extends State<Sign_Up> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Spacer(),
              TextField(
            decoration: InputDecoration(labelText: "Name"),
          ),SizedBox(height: 10,),
          TextField(
            decoration: InputDecoration(labelText: "Email"),
          ),SizedBox(height: 10,),
           TextField(
            obscureText: true,
            decoration: InputDecoration(labelText: "parol"),
          ),
          SizedBox(height: 10,),
           TextField(
            obscureText: true,
            decoration: InputDecoration(labelText: "Takroriy parol"),
          ),
          SizedBox(height: 30,),
          ElevatedButton(onPressed: () {}, child: Text("Sign_Up"),),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Ro'yxatdan utgansizmi?"),
              SizedBox(width: 5,),
              TextButton(onPressed: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => Sign_In()));
              }, child: Text("Sing_In"),),
            ],
          ),
          ],
        ),
      ),
    );
  }
}