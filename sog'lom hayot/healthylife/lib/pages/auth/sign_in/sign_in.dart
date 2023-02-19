import 'package:flutter/material.dart';
import 'package:healthylife/config/colors.dart';
import 'package:healthylife/pages/patient/home/patient_home_page.dart';
import 'package:healthylife/pages/patient/patient_page.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _formKey = GlobalKey<FormState>();
  String? _email, _password, _name, _number;
  bool _isObscure = true;

  void _doSignIn() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      print('Saved');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.only(top: 55, right: 100, left: 100),
              child: const Text(
                "Sign In",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: "ProductSans"),
              ),
            ),
            Form(
              key: _formKey,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 20, top: 34, right: 20),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          labelText: 'Ism',
                          labelStyle: TextStyle(
                            color: blackColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            fontFamily: "ProductSans",
                          ),
                          hintText: 'Ismningizni kiriting',
                          hintStyle: TextStyle(
                            color: greyColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                            fontFamily: "ProductSans",
                          ),
                        ),
                        onSaved: (input) => _name = input,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20, top: 34, right: 20),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          labelText: 'Phone number',
                          labelStyle: TextStyle(
                            color: blackColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            fontFamily: "ProductSans",
                          ),
                          hintText: 'Enter your phone number',
                          hintStyle: TextStyle(
                            color: greyColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                            fontFamily: "ProductSans",
                          ),
                        ),
                        onSaved: (input) => _number = input,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20, top: 34, right: 20),
                      child: TextFormField(
                        obscureText: _isObscure,
                        decoration: InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            color: blackColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            fontFamily: "ProductSans",
                          ),
                          hintText: 'Enter your password',
                          hintStyle: TextStyle(
                            color: greyColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                            fontFamily: "ProductSans",
                          ),
                          suffixIcon: IconButton(
                              color: primaryColor,
                              icon: Icon(_isObscure
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                              onPressed: () {
                                setState(() {
                                  _isObscure = !_isObscure;
                                });
                              }),
                        ),
                        validator: (input) =>
                            input!.length < 6 ? 'qisqa parol' : null,
                        onSaved: (input) => _password = input,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 20, top: 20, left: 200),
              child: GestureDetector(
                child: Text(
                  'Forgot password',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontFamily: "ProductSans",
                    color: blackColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 240),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PatientPage()));
                },
                child: const Text(
                  'Sign in',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: "ProductSans"),
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(bottom: 57, left: 30, top: 20),
                  child: Text("Don't you have an account?"),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 57, left: 10, top: 20),
                  child: GestureDetector(
                    child: Text(
                      'Create account',
                      style: TextStyle(
                        fontFamily: "ProductSans",
                        color: primaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
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
