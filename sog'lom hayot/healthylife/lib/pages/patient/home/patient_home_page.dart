import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:healthylife/config/colors.dart';
import 'package:healthylife/config/constants.dart';
import 'package:healthylife/pages/patient/consultation/doctor_list_page.dart';
import 'package:healthylife/pages/patient/consultation/online_consultation_page.dart';
import 'package:healthylife/pages/patient/home/info_section.dart';
import 'package:healthylife/pages/patient/home/online_consultation_section.dart';
import 'package:healthylife/pages/patient/home/services_section.dart';
import 'package:healthylife/pages/patient/news/news_page.dart';
import 'package:healthylife/pages/patient/notifications/notifications_page.dart';
import 'package:healthylife/pages/patient/profile/profile_page.dart';

class PatientHomePage extends StatelessWidget {
  const PatientHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const PatientHomeAppBar(),
          OnlineConsultationSection(
            () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const OnlineConsultationPage())),
            (item) => Navigator.push(context,
                MaterialPageRoute(builder: (context) => DoctorListPage(item))),
          ),
          const SizedBox(height: 20.0),
          ServicesSection((item) => Navigator.push(
              context, MaterialPageRoute(builder: (context) => NewsPage()))),
          const SizedBox(height: 12.0),
          const InfoSection(),
          const SizedBox(height: defaultPadding),
        ],
      ),
    );
  }
}

class PatientHomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const PatientHomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.only(
            left: defaultPadding, top: 12.0, bottom: 12.0, right: 12.0),
        child: Row(
          children: [
            GestureDetector(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfilePage())),
              child: const SizedBox(
                width: 40,
                height: 40,
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/avatar.png"),
                ),
              ),
            ),
            const SizedBox(width: 10.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Hi Bobur",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: greyColor,
                  ),
                ),
                Text(
                  "Your health is important to us",
                  style: TextStyle(fontSize: 13.0, color: greyColor),
                ),
              ],
            ),
            const Spacer(),
            InkWell(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => NotificationsPage())),
              borderRadius: BorderRadius.circular(16),
              child: SizedBox(
                height: 32,
                width: 32,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/icons/notification.svg",
                      width: 18,
                      height: 20,
                    ),
                    Positioned(
                      right: 7,
                      top: 4,
                      child: Container(
                        width: 7,
                        height: 7,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 64.0);
}
