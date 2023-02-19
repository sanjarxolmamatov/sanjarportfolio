import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:healthylife/config/colors.dart';
import 'package:healthylife/config/constants.dart';
import 'package:healthylife/pages/widgets/flutter_switch.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/edit.svg"),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
        child: Column(
          children: [
            const SizedBox(height: 38),
            Stack(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  child: Image.asset(
                    "assets/images/avatar.png",
                    width: 120,
                    height: 120,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    width: 36,
                    height: 36,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      border: Border.all(width: 2, color: Colors.white),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    alignment: Alignment.center,
                    child: SvgPicture.asset("assets/icons/camera.svg"),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 34),
            Text(
              "Bobur Ahmedov",
              style:
                  TextStyle(fontSize: 20, color: Colors.black.withOpacity(0.6)),
            ),
            const SizedBox(height: 4),
            Text(
              "bobur.ahmed@gmail.com",
              style: TextStyle(
                  fontSize: 15,
                  height: 1.33,
                  color: Colors.black.withOpacity(0.3)),
            ),
            const SizedBox(height: 18),
            SettingsItem(
              "assets/icons/notification_fill.svg",
              "Notification",
              "On",
              FlutterSwitch(
                  value: true, onToggle: (v) {}, activeColor: primaryColor),
              () {},
            ),
            SettingsItem(
              "assets/icons/language.svg",
              "Language",
              "English",
              const Icon(Icons.chevron_right_rounded),
              () {},
            ),
            SettingsItem(
              "assets/icons/faq.svg",
              "FAQs",
              "",
              const Icon(Icons.chevron_right_rounded),
              () {},
            ),
            SettingsItem(
              "assets/icons/question.svg",
              "Help",
              "",
              const Icon(Icons.chevron_right_rounded),
              () {},
            ),
            SettingsItem(
              "assets/icons/logout.svg",
              "Log out",
              "",
              const Icon(Icons.chevron_right_rounded),
              () {},
            ),
          ],
        ),
      ),
    );
  }
}

class SettingsItem extends StatelessWidget {
  final String iconPath;
  final String title;
  final String statusText;
  final Widget trailing;
  final void Function() onTap;
  const SettingsItem(
      this.iconPath, this.title, this.statusText, this.trailing, this.onTap,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Row(
          children: [
            Container(
              width: 34,
              height: 34,
              decoration: BoxDecoration(
                color: const Color(0xFFE7E7F4),
                borderRadius: BorderRadius.circular(5),
              ),
              alignment: Alignment.center,
              child: SvgPicture.asset(iconPath),
            ),
            const SizedBox(width: 20),
            Text(
              title,
              style: TextStyle(
                fontSize: 17,
                color: Colors.black.withOpacity(0.5),
              ),
            ),
            const Spacer(),
            Container(
              width: 70,
              alignment: Alignment.centerLeft,
              child: Text(
                statusText,
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black.withOpacity(0.5),
                ),
              ),
            ),
            Container(
              width: 50,
              alignment: Alignment.centerRight,
              child: trailing,
            ),
          ],
        ),
      ),
    );
  }
}
