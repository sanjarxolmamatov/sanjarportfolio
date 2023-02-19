import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:healthylife/config/colors.dart';
import 'package:healthylife/config/constants.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Notification")),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
        children: [
          const SectionHeader("19 Sep, 2020"),
          ...List.generate(
              5,
              (i) => NotificationCard(
                  "Your have appointment with your personal doctor at 9:00 pm today",
                  "Just now",
                  Colors.blue)),
          const SectionHeader("19 Sep, 2020"),
          ...List.generate(
              5,
              (i) => NotificationCard(
                  "Your have appointment with your personal doctor at 9:00 pm today",
                  "Just now",
                  Colors.green)),
        ],
      ),
    );
  }
}

class SectionHeader extends StatelessWidget {
  final String text;
  const SectionHeader(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12, bottom: 8),
      child: Text(
        text,
        style: const TextStyle(
            fontSize: 17, height: 1.1, fontWeight: FontWeight.w700),
      ),
    );
  }
}

class NotificationCard extends StatelessWidget {
  final String title;
  final String time;
  final Color color;
  const NotificationCard(this.title, this.time, this.color, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: GestureDetector(
        onTap: () {},
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 30,
              height: 30,
              margin: const EdgeInsets.only(top: 4),
              decoration: BoxDecoration(
                color: color.withOpacity(0.15),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Align(
                alignment: Alignment.center,
                child: SvgPicture.asset("assets/icons/notification_badge.svg",
                    color: color),
              ),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        fontSize: 15, height: 1.33, color: Color(0xFFA6A3B8)),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    time,
                    style: const TextStyle(
                        fontSize: 12,
                        height: 1.66,
                        color: primaryColor,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
