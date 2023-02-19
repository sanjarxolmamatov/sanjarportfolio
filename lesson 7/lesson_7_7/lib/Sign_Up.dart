import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lesson_7_7/homePage.dart';

class Sign_Up extends StatefulWidget {
  const Sign_Up({super.key});

  @override
  State<Sign_Up> createState() => _Sign_UpState();
}

class _Sign_UpState extends State<Sign_Up> {
  final formKey = GlobalKey<FormState>();
  String? email;
  String? parol;
  String? name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(9),
              child: TextFormField(
                decoration: InputDecoration(labelText: "name"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(9),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (!value!.contains("@")) {
                    return "Yaroqli elektron pochta manzilini kiriting";
                  }
                },
                onSaved: (Value) {
                  email = Value;
                },
                decoration: InputDecoration(labelText: "Email"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(9),
              child: TextFormField(
                keyboardType: TextInputType.phone,
                onSaved: (Value) {
                  parol = Value;
                },
                validator: (value) {
                  if (value!.length < 8) {
                    return "Kamida 8 ta belgidan iborat bo'lishi kerak";
                  }
                },
                decoration: InputDecoration(labelText: "password"),
              ),
            ),
            InkWell(
              onTap: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomePage(),
                    ),
                  );
                }
              },
              child: Card(
                color: Colors.blue,
                elevation: 10,
                child: Container(
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
                SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
