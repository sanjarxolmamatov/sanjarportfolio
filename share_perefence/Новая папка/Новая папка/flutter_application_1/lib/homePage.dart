import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String? matn="A";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text("set"),
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {},
              child: Text("get"),
            ),
            Text(matn!),
          ],
        ),
      ),
    );
  }
}
