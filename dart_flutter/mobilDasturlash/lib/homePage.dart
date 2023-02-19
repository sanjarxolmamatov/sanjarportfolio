import 'package:flutter/material.dart' hide BoxShadow, BoxDecoration;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:mobil_dasturlash/dartPage.dart';
import 'package:mobil_dasturlash/flutterPage.dart';
import 'package:mobil_dasturlash/textlar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isPrassed = false;
  @override
  Widget build(BuildContext context) {
    Color ShadowColor = Color.fromARGB(255, 23, 139, 235);
    return Scaffold(
      appBar: AppBar(
          title: Text(
        "Flutter  Dart",
        style: TextStyle(
            color: Color.fromARGB(255, 51, 245, 151),
            fontWeight: FontWeight.bold,
            fontSize: 30),
      )),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => FlutterPage()));
            },
            child: Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Colors.greenAccent,
                ),
                borderRadius: BorderRadius.circular(20.0), //<-- SEE HERE
              ),
              color: Colors.black,
              child: Container(
                width: double.infinity,
                height: 300,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20), // Image border
                  child: SizedBox.fromSize(
                    size: Size.fromRadius(48), // Image radius
                    child: Image(
                      image: AssetImage("assets/images/1.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Listener(
              onPointerDown: (_) => setState(() {
                isPrassed = true;
              }),
              onPointerUp: (_) => setState(() {
                isPrassed = false;
              }),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    for (double i = 1; i < 5; i++)
                      BoxShadow(
                        color: Colors.white,
                        blurRadius: (isPrassed ? 5 : 3) * i,
                        inset: true,
                      ),
                    for (double i = 1; i < 5; i++)
                      BoxShadow(
                        spreadRadius: -1,
                        color: Colors.white,
                        blurRadius: (isPrassed ? 5 : 3) * i,
                        blurStyle: BlurStyle.outer,
                      ),
                  ],
                ),
                child: TextButton(
                  onHover: (hovered) => setState(() {
                    this.isPrassed = hovered;
                  }),
                  style: TextButton.styleFrom(
                    side: BorderSide(color: Colors.white, width: 4),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    showModalBottomSheet(
                        // isScrollControlled: true,
                        backgroundColor: Colors.blueAccent,
                        context: context,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(20),
                          ),
                        ),
                        builder: ((context) => SingleChildScrollView(
                              child: Column(
                                //   mainAxisSize: MainAxisSize.min,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Flutter",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 35),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    width: double.infinity,
                                    margin: EdgeInsets.all(10),
                                    child: Column(
                                      children: [
                                        Text(
                                          Matnlar.textlar[0],
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20),
                                        ),
                                        Text(
                                          Matnlar.textlar[1],
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20),
                                        ),
                                        Text(
                                          Matnlar.textlar[2],
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )));
                  },
                  child: Text(
                    "Ma'lumot",
                    style:
                        TextStyle(color: Colors.white, fontSize: 30, shadows: [
                      for (double i = 1; i < (isPrassed ? 8 : 4); i++)
                        Shadow(
                          color: ShadowColor,
                          blurRadius: 3 * i,
                        ),
                    ]),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => DartPage()));
            },
            child: Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Colors.greenAccent,
                ),
                borderRadius: BorderRadius.circular(20.0), //<-- SEE HERE
              ),
              color: Colors.black,
              child: Container(
                width: double.infinity,
                height: 300,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20), // Image border
                  child: SizedBox.fromSize(
                    size: Size.fromRadius(48), // Image radius
                    child: Image(
                      image: AssetImage("assets/images/3.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Listener(
              onPointerDown: (_) => setState(() {
                isPrassed = true;
              }),
              onPointerUp: (_) => setState(() {
                isPrassed = false;
              }),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    for (double i = 1; i < 5; i++)
                      BoxShadow(
                        color: Colors.white,
                        blurRadius: (isPrassed ? 5 : 3) * i,
                        inset: true,
                      ),
                    for (double i = 1; i < 5; i++)
                      BoxShadow(
                        spreadRadius: -1,
                        color: Colors.white,
                        blurRadius: (isPrassed ? 5 : 3) * i,
                        blurStyle: BlurStyle.outer,
                      ),
                  ],
                ),
                child: TextButton(
                  onHover: (hovered) => setState(() {
                    this.isPrassed = hovered;
                  }),
                  style: TextButton.styleFrom(
                    side: BorderSide(color: Colors.white, width: 4),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    showModalBottomSheet(
                        // isScrollControlled: true,
                        backgroundColor: Colors.blueAccent,
                        context: context,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(20),
                          ),
                        ),
                        builder: ((context) => SingleChildScrollView(
                              child: Column(
                                //   mainAxisSize: MainAxisSize.min,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Dart",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 35),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    width: double.infinity,
                                    margin: EdgeInsets.all(10),
                                    child: Column(
                                      children: [
                                        Text(
                                          Matnlar.textlar[3],
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 20),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )));
                  },
                  child: Text(
                    "Ma'lumot",
                    style:
                        TextStyle(color: Colors.white, fontSize: 30, shadows: [
                      for (double i = 1; i < (isPrassed ? 8 : 4); i++)
                        Shadow(
                          color: ShadowColor,
                          blurRadius: 3 * i,
                        ),
                    ]),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.blueAccent,
    );
  }
}
