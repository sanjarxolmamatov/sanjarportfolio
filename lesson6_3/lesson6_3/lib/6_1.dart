import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ContainerPage extends StatefulWidget {
  const ContainerPage({super.key});

  @override
  State<ContainerPage> createState() => _ContainerPageState();
}

class _ContainerPageState extends State<ContainerPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Telegram",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.person),
                text: "person",
              ),
              Tab(
                icon: Icon(Icons.group),
                text: "group",
              ),
              Tab(
                icon: Icon(Icons.bookmark_outline_sharp),
                text: "Сохраненной",
              ),
              Tab(
                icon: Icon(Icons.access_alarm_rounded),
                text: "budilnik",
              ),
            ],
          ),
        ),
        body: PageView(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 150,
              color: Colors.red,
            ),
            Container(
              width: double.infinity,
              height: 150,
              color: Colors.yellow,
            ),
            Container(
              width: double.infinity,
              height: 100,
              color: Colors.green,
            ),
            Container(
              width: double.infinity,
              height: 300,
              color: Colors.blue,
            ),
            Container(
              width: double.infinity,
              height: 300,
              color: Colors.red,
            ),
            Container(
              width: double.infinity,
              height: 300,
              color: Colors.blue,
            ),
            Container(
              width: double.infinity,
              height: 300,
              color: Colors.red,
            ),
            Container(
              width: double.infinity,
              height: 300,
              color: Colors.blue,
            ),
            Container(
              width: double.infinity,
              height: 300,
              color: Colors.red,
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_a_photo_rounded), label: "photo"),
          ],
        ),
        drawer: Drawer(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 200,
                color: Colors.grey,
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Fullname",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "emailaddress@gmail.com",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
