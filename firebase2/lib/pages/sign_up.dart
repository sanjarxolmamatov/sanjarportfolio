import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../services/auth.dart';
import '../services/pref.dart';
import 'sign_in.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController? nameController = TextEditingController();
  TextEditingController? emailController = TextEditingController();

  TextEditingController? passController = TextEditingController();

  TextEditingController? rePassController = TextEditingController();

  bool isLoading = false;

  _signUp() {
    String? name = nameController!.text.trim();
    String? email = emailController!.text.trim();
    String? parol = passController!.text.trim();
    String? rePass = rePassController!.text.trim();

    if (name.isEmpty || email.isEmpty || parol.isEmpty || rePass.isEmpty) {
      return;
    }

    if (parol != rePass) {
      return;
    }
    setState(() {
      isLoading = true;
    });
    AuthService.signUp(email, parol).then((value) {
      _saveId(value);
      setState(() {
        isLoading = false;
      });
    });
  }

  _saveId(User? user) async {
    if (user != null) {
      await Pref.saveUserId(user.uid);
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SignIn(),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("xota bor chort"),
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
            width: double.infinity,
            height: 870,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.red,
                  Colors.pink,
                  Colors.yellow,
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                TextField(
                  controller: nameController,
                  decoration: InputDecoration(labelText: "Name"),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(labelText: "Email"),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: passController,
                  decoration: InputDecoration(labelText: "Parol"),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: rePassController,
                  decoration: InputDecoration(labelText: "Qayta parol"),
                ),
                const SizedBox(
                  height: 30,
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(50),
                  onTap: () {
                     _signUp();
                  },
                  child: Container(
                    width: 200,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        colors: [
                          Colors.red,
                          Colors.pink,
                          Colors.yellow,
                        ],
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Ruyhatdan utganmisiz?"),
                    const SizedBox(
                      width: 5,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignIn(),
                          ),
                        );
                      },
                      child: const Text(
                        "Sign In",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          isLoading
              ? Center(
                  child: CircularProgressIndicator(
                    color: Colors.black,
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
