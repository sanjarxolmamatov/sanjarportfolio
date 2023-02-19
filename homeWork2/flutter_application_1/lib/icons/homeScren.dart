import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/icons/AccountPage.dart';
import 'package:flutter_application_1/icons/homePage.dart';
import 'package:flutter_application_1/icons/notificationPage.dart';

import 'MyCustomWidget.dart';
import 'searchPage.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getPages(),
      bottomNavigationBar: _bottomNavigatorBar(),
    );
  }

  _bottomNavigatorBar() {
    return BottomNavigationBar(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      items: const [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            label: 'home',
            backgroundColor: Colors.black),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            label: 'search',
            backgroundColor: Colors.black),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.add,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            label: 'add',
            backgroundColor: Colors.black),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            label: 'Notification',
            backgroundColor: Colors.black),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            label: 'Account',
            backgroundColor: Colors.black),
      ],
      currentIndex: selectedPage,
      onTap: (tappedPage) {
        setState(() {
          selectedPage = tappedPage;
        });
      },
    );
  }

  _getPages() {
    switch (selectedPage) {
      case 0:
        return HomePage();
      case 1:
        return SearchPage();
      case 2:
        return MyCustomWidget();
      case 3:
        return notificationPage();
      case 4:
        return AccountPage();
    }
  }
}
