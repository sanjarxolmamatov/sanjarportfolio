import 'package:flutter/material.dart' hide BoxShadow, BoxDecoration;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:lesson_7_7/Sign_Up.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();
  String? _email, _password;

  bool isPressed = true;
  bool isDarkMode = true;
  @override
  Widget build(BuildContext context) {
    final backgroundColor = isDarkMode ? Color(0xFF2E3239) : Colors.white;
    Offset distance = isPressed ? Offset(10, 10) : Offset(28, 28);
    double blur = isPressed ? 5.0 : 30.0;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Instagram",
            style: TextStyle(
                color: Colors.black, fontSize: 35, fontWeight: FontWeight.bold),
          ),
          Form(
            key: _formKey,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
                  child: TextFormField(
                    decoration: InputDecoration(labelText: "Email"),
                    validator: (input) => !input!.contains("@")
                        ? 'Yaroqli elektron pochta manzilini kiriting'
                        : null,
                    onSaved: (input) => _email = input,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                  child: TextFormField(
                    decoration: InputDecoration(labelText: "password"),
                    validator: (input) => input!.length < 8
                        ? "Kamida 8 ta belgidan iborat bo'lishi kerak"
                        : null,
                    onSaved: (input) => _password = input,
                    obscureText: true,
                  ),
                ),
                InkWell(
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState?.save();
                      print("Welcome");
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
                SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) => Sign_Up()));
                      },
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
        ],
      ),
    );
  }
}
