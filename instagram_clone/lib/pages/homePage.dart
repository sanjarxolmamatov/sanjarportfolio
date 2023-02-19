import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/pages/likePage.dart';
import 'package:instagram_clone/pages/postPage.dart';
import 'package:instagram_clone/pages/profilPage.dart';
import 'package:instagram_clone/pages/searchPage.dart';
import 'package:instagram_clone/pages/uploadPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController = PageController();

  int _hozirgiIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CupertinoTabBar(
          backgroundColor: Colors.black,
          onTap: (index) {
            setState(() {
              _hozirgiIndex = index;
            });
            _pageController.animateToPage(index,
                duration: Duration(milliseconds: 200), curve: Curves.linear);
          },
          currentIndex: _hozirgiIndex,
          activeColor: Color.fromARGB(255, 255, 255, 255),
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.add_box), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), label: ""),
          ],
        ),
        body: PageView(
          physics: NeverScrollableScrollPhysics(),
          onPageChanged: (index) {
            setState(() {
              _hozirgiIndex = index;
            });
          },
          controller: _pageController,
          children: [
            PostPage(pageController: _pageController,),
            SearchPage(),
            UploadPage(pageController: _pageController),
            LikePage(),
            profilPage(),
          ],
        ));
  }
}
