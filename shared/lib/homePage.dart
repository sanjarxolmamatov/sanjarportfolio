import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String? matn = "A";

void getPref()async{
  SharedPreferences pref = await SharedPreferences.getInstance();
  setState(() {
     matn = pref.getString("text")!;
  });
}


void setPref()async{
  SharedPreferences pref = await SharedPreferences.getInstance();
  pref.setString("text", "Husan");
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                setPref();
              },
              child: Text("set"),
            ),
            SizedBox(height: 20,),
             ElevatedButton(
              onPressed: () {
                getPref();
              },
              child: Text("get"),
            ),
            Text(matn!),
          ],
        ),
      ),
    );
  }
}
