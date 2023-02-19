import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Container(
        width: double.infinity,
        height: 1000,
        color: Colors.white,
        child: Container(
          margin: EdgeInsets.all(5),
          width: double.infinity,
          height: 100,
          color: Color.fromARGB(255, 47, 85, 151),
          child: Container(
            margin: EdgeInsets.all(15),
            width: double.infinity,
            height: 100,
            color: Colors.blue,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 140,
                        height:80,
                        color: Colors.black,
                        child: Container(
                          margin: EdgeInsets.all(10),
                          color: Color.fromARGB(255, 48, 92, 49),
                        ),
                      ),
                    ),
                     Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 140,
                        height:80,
                        color: Colors.black,
                        child: Container(
                          margin: EdgeInsets.all(10),
                          color: Color.fromARGB(255, 48, 92, 49),
                        ),
                      ),
                    ),
                     Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 140,
                        height:80,
                        color: Colors.black,
                        child: Container(
                          margin: EdgeInsets.all(10),
                          color: Color.fromARGB(255, 48, 92, 49),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}
