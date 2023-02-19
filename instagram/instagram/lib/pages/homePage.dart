import 'package:flutter/material.dart';
import 'package:instagram/pages/postPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int? currentIndex = 0;

   final List _pages = const [
    PostPage(),
    PostPage(),
    PostPage(),
    PostPage(),
    PostPage(),
  ];

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Divider(
            color: Colors.grey,
          ),
          BottomNavigationBar(
            currentIndex: currentIndex!,
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            unselectedIconTheme: IconThemeData(size: 28),
            selectedIconTheme: IconThemeData(size: 35),
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.black,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                  color: Colors.white,
                ),
                label: "h",
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  label: "h"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.live_tv_outlined,
                    color: Colors.white,
                  ),
                  label: "h"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.favorite_border_outlined,
                    color: Colors.white,
                  ),
                  label: "h"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                  label: "h"),
            ],
          ),
        ],
      ),
      body: _pages[currentIndex!],
    );
  }
}
