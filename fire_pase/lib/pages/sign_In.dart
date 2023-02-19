import 'package:fire_pase/pages/homePage.dart';
import 'package:fire_pase/services/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../services/pref.dart';
import 'sign_Up.dart';

class Sign_In extends StatefulWidget {
  const Sign_In({super.key});

  @override
  State<Sign_In> createState() => _Sign_InState();
}

class _Sign_InState extends State<Sign_In> {
  bool isLoading = false;
  TextEditingController emailController = TextEditingController();
  TextEditingController parolController = TextEditingController();

  _signIn() {
    setState(() {
      isLoading = false;
    });
    String? email = emailController.text.trim();
    String? parol = parolController.text.trim();

    if (email.isEmpty || parol.isEmpty) {
      return;
    }

    AuthService.signIn(email, parol).then((user) {
      getUserId(user);
    });
  }

  getUserId(User? user) async {
    setState(() {
      isLoading = true;
    });
    if (user != null) {
      await Pref.saveUserId(user.uid);
      
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const HomePage()));
      print(user.uid);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("email yoke parol notug'ri"),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            margin: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(labelText: "Email"),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: parolController,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "parol",
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    _signIn();
                  },
                  child: const Text("Sign_In"),
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Ro'yxatdan utmagansizmi?"),
                    const SizedBox(
                      width: 5,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Sign_Up()));
                      },
                      child: const Text("Sing_Up"),
                    ),
                  ],
                ),
              ],
            ),
          ),
          isLoading
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : Container(),
        ],
      ),
    );
  }
}
