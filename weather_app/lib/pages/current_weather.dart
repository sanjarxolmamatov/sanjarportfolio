import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget currentWeather(IconData icon, String temp, String location) {
  return Center(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.orange,
          size: 64,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "$temp",
          style: TextStyle(fontSize: 46.0),
        ),
        SizedBox(height: 10,),
        Text("$location",style: TextStyle(color: Color(0xFF5a5a5a),fontSize: 18.0),)
      ],
    ),
  );
}
