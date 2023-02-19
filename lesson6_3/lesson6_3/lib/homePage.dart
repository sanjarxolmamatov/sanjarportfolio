import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "PDP Online",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          bottom: const TabBar(
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
                icon: Icon(Icons.home),
                text: "home",
              ),
              Tab(
                icon: Icon(Icons.menu),
                text: "menu",
              ),
            ],
          ),
        ),
        body: PageView(
          children: [
            Container(
              color: Colors.red,
              child: const Center(
                child: Text(
                  "1 Page",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.purple,
              child: const Center(
                child: Text(
                  "2 Page",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.blue,
              child: const Center(
                child: Text(
                  "3 Page",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.yellow,
              child: const Center(
                child: Text(
                  "4 Page",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.accessibility,
              ),label: "mmmm"
            ),
             BottomNavigationBarItem(
              icon: Icon(
                Icons.accessibility,
              ),label: "mmmm"
            ),
             BottomNavigationBarItem(
              icon: Icon(
                Icons.accessibility,
              ),label: "mmmm"
            ),
          ],
        ),
      ),
    );
  }
}
