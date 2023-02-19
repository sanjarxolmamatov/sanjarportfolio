import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:healthylife/config/colors.dart';
import 'package:healthylife/pages/patient/chat/chat_list_page.dart';
import 'package:healthylife/pages/patient/home/patient_home_page.dart';
import 'package:healthylife/pages/patient/hospital_list/hospital_list_page.dart';

const selectedItemColor = Color(0xFFADD8F3);
const unselectedItemColor = primaryColor;
const bottomNavIcons = ["home.svg", "list.svg", "chat.svg", "location.svg"];

class PatientPage extends StatefulWidget {
  const PatientPage({Key? key}) : super(key: key);

  @override
  State<PatientPage> createState() => _PatientPageState();
}

class _PatientPageState extends State<PatientPage> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: PatientBottomNav(
          pageIndex, (index) => setState(() => pageIndex = index)),
      body: IndexedStack(
        index: pageIndex,
        children: const [
          PatientHomePage(),
          HospitalListPage(),
          ChatListPage(),
          Center(child: Text("Location")),
        ],
      ),
    );
  }
}

class PatientBottomNav extends StatelessWidget {
  final int pageIndex;
  final Function(int) onTap;
  const PatientBottomNav(this.pageIndex, this.onTap, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: pageIndex,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      elevation: 16.0,
      type: BottomNavigationBarType.fixed,
      items: bottomNavIcons
          .map(
            (e) => BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/icons/$e",
                color: pageIndex == bottomNavIcons.indexOf(e)
                    ? selectedItemColor
                    : unselectedItemColor,
              ),
              label: "",
            ),
          )
          .toList(),
      onTap: onTap,
    );
  }
}
