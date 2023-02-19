import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 9999999999,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Tab Bar"),
          bottom: TabBar(isScrollable: true, tabs: [
            Tab(
              text: "home",
              icon: Icon(Icons.home),
            ),
            Tab(
              text: "school",
              icon: Icon(Icons.school),
            ),
            Tab(
              text: "apple",
              icon: Icon(Icons.apple),
            ),
          ]),
        ),
        body: TabBarView(
          children: [
            Container(
              color: Color.fromARGB(255, 255, 0, 0),
              child: Center(child: Text("home")),
            ),
            Container(
              color: Colors.blue,
              child: Center(child: Text("school")),
            ),
            Container(
              color: Color.fromARGB(255, 255, 2, 255),
              child: Center(child: Text("apple")),
            ),
          ],
        ),
      ),
    );
  }
}
