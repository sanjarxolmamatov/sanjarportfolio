import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.camera_alt_outlined,
          color: Colors.white,
          size: 25,
        ),
        title: Text(
          "ℑ𝔫𝔰𝔱𝔞𝔤𝔯𝔞𝔪",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        actions: [
          Icon(
            Icons.live_tv_sharp,
            color: Colors.white,
            size: 25,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.telegram_outlined,
            color: Colors.white,
            size: 25,
          ),
          SizedBox(
            width: 10,
          ),
        ],
        elevation: 0,
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Column(
                children: [
                  Container(
                    width: 65,
                    height: 65,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Colors.red,
                          Colors.pink,
                          Colors.yellow,
                        ],
                      ),
                    ),
                    child: Container(
                      margin: EdgeInsets.all(3),
                      width: 60,
                      height: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.black,
                          image: DecorationImage(
                              image: AssetImage("assets/images/1.png"))),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Your Story",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  )
                ],
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  Container(
                    width: 65,
                    height: 65,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Colors.red,
                          Colors.pink,
                          Colors.yellow,
                        ],
                      ),
                    ),
                    child: Container(
                      margin: EdgeInsets.all(3),
                      width: 60,
                      height: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.black,
                          image: DecorationImage(
                              image: AssetImage("assets/images/1.png"))),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Your Story",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  )
                ],
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  Container(
                    width: 65,
                    height: 65,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Colors.red,
                          Colors.pink,
                          Colors.yellow,
                        ],
                      ),
                    ),
                    child: Container(
                      margin: EdgeInsets.all(3),
                      width: 60,
                      height: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.black,
                          image: DecorationImage(
                              image: AssetImage("assets/images/1.png"))),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Your Story",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  )
                ],
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  Container(
                    width: 65,
                    height: 65,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Colors.red,
                          Colors.pink,
                          Colors.yellow,
                        ],
                      ),
                    ),
                    child: Container(
                      margin: EdgeInsets.all(3),
                      width: 60,
                      height: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.black,
                          image: DecorationImage(
                              image: AssetImage("assets/images/1.png"))),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Your Story",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  )
                ],
              ),
              SizedBox(
                width: 20,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 20),
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    image: DecorationImage(
                      image: AssetImage("assets/images/1.png"),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Text(
                  "Phonebuff",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              SizedBox(
                width: 240,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            child: Image(
              image: AssetImage("assets/images/1.png"),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 10),
                child: Icon(
                  Icons.favorite_outline_rounded,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only( top: 10),
                child: Container(
                  width: 55,
                  height: 55,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/images/4.png",
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      backgroundColor: Colors.black,
    );
  }
}
