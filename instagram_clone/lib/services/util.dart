import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class util{

static void ToastMS(String msg) {
Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 2,
        backgroundColor: Color.fromARGB(255, 97, 97, 97),
        textColor: Colors.white,
        fontSize: 16.0
    );
 }

}