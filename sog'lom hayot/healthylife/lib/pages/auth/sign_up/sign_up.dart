import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healthylife/config/colors.dart';
import 'package:healthylife/pages/auth/sign_in/sign_in.dart';
import 'package:intl/intl.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKeyUp = GlobalKey<FormState>();
  static String? _email, _password, _name, _number, _gender;
  String gen = 'Erkak', region = 'Yunusabod';

  TextEditingController dateinput = TextEditingController();
  bool _isObscure = true;

  TextEditingController? _controller = TextEditingController();
  TextEditingController? _controller2 = TextEditingController();

  var items = ['Ayol', 'Erkak'];
  var regions = ['Yunusobod', 'Urganch', 'Narpay'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 10, top: 30),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      size: 28,
                    ),
                  ),
                ),
                SizedBox(width: 90),
                Container(
                  padding: EdgeInsets.only(top: 30),
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w800,
                        fontFamily: "ProductSans"),
                  ),
                ),
              ],
            ),
            Form(
              key: _formKeyUp,
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
                            fontSize: 22,
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
                          labelText: 'Surname',
                          labelStyle: TextStyle(
                            color: blackColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 22,
                            fontFamily: "ProductSans",
                          ),
                          hintText: 'Enter your surname',
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
                          labelText: 'Middle name',
                          labelStyle: TextStyle(
                            color: blackColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 22,
                            fontFamily: "ProductSans",
                          ),
                          hintText: 'Enter your middle name',
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
                        child: TextField(
                          controller:
                              dateinput, //editing controller of this TextField
                          decoration: const InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            labelText: 'Brithdate',
                            labelStyle: TextStyle(
                              color: blackColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 22,
                              fontFamily: "ProductSans",
                            ),
                            hintText: 'Enter your brithdate',
                            hintStyle: TextStyle(
                              color: greyColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              fontFamily: "ProductSans",
                            ),
                          ),
                          readOnly:
                              true, //set it true, so that user will not able to edit text
                          onTap: () async {
                            DateTime? pickedDate = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(
                                    1950), //DateTime.now() - not to allow to choose before today.
                                lastDate: DateTime(2101));

                            if (pickedDate != null) {
                              print(pickedDate);
                              String formattedDate =
                                  DateFormat('yyyy-MM-dd').format(pickedDate);
                              print(formattedDate);

                              setState(() {
                                dateinput.text =
                                    formattedDate; //set output date to TextField value.
                              });
                            } else {
                              print("Date is not selected");
                            }
                          },
                        )),
                    Container(
                      padding: EdgeInsets.only(left: 20, top: 34, right: 20),
                      child: TextFormField(
                        keyboardType: TextInputType.phone,
                        decoration: const InputDecoration(
                          isDense: true,
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          labelText: 'Phone number',
                          labelStyle: TextStyle(
                            color: blackColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 22,
                            fontFamily: "ProductSans",
                          ),
                          hintText: 'Enter your phone number',
                          prefixText: '+998 ',
                          prefixStyle: TextStyle(fontSize: 16),
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
                        readOnly: true,
                        decoration: InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          labelText: 'Choose your gender',
                          labelStyle: TextStyle(
                            color: blackColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 22,
                            fontFamily: "ProductSans",
                          ),
                          suffixIcon: PopupMenuButton<String>(
                            icon: const Icon(Icons.arrow_drop_down),
                            onSelected: (String value) {
                              _controller!.text = value;
                              setState(() {
                                gen = _controller!.text;
                              });
                            },
                            itemBuilder: (BuildContext context) {
                              return items
                                  .map<PopupMenuItem<String>>((String value) {
                                return new PopupMenuItem(
                                    child: new Text(value), value: value);
                              }).toList();
                            },
                          ),
                          hintText: gen,
                          hintStyle: TextStyle(
                            color: primaryColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 17,
                            fontFamily: "ProductSans",
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20, top: 34, right: 20),
                      child: TextFormField(
                        readOnly: true,
                        decoration: InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          labelText: 'Choose your region',
                          labelStyle: TextStyle(
                            color: blackColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 22,
                            fontFamily: "ProductSans",
                          ),
                          suffixIcon: PopupMenuButton<String>(
                            icon: const Icon(Icons.arrow_drop_down),
                            onSelected: (String value) {
                              _controller2!.text = value;
                              setState(() {
                                region = _controller2!.text;
                              });
                            },
                            itemBuilder: (BuildContext context) {
                              return regions
                                  .map<PopupMenuItem<String>>((String value) {
                                return new PopupMenuItem(
                                    child: new Text(value), value: value);
                              }).toList();
                            },
                          ),
                          hintText: region,
                          hintStyle: TextStyle(
                            color: primaryColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 17,
                            fontFamily: "ProductSans",
                          ),
                        ),
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
                            fontSize: 22,
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
                    Container(
                      padding: EdgeInsets.only(left: 20, top: 34, right: 20),
                      child: TextFormField(
                        obscureText: _isObscure,
                        decoration: InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          labelText: 'Confirm password',
                          labelStyle: TextStyle(
                            color: blackColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 22,
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
            SizedBox(height: 40),
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
                    )),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignIn()));
                },
                child: const Text(
                  'Sign up',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: "ProductSans"),
                ),
                // shape: RoundedRectangleBorder(
                //   borderRadius: BorderRadius.circular(20),
                // ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(bottom: 57, top: 20),
                  child: Text(
                    "Already have an account?",
                    style: TextStyle(
                      fontFamily: "ProductSans",
                      color: greyColor,
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 57, top: 20),
                  child: GestureDetector(
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                        fontFamily: "ProductSans",
                        color: primaryColor,
                        fontSize: 17,
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
