import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:healthylife/config/colors.dart';
import 'package:healthylife/config/constants.dart';

class HospitalListPage extends StatelessWidget {
  const HospitalListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Shifoxonalar"),
          bottom: const TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white,
            labelStyle: TextStyle(
                fontSize: 16, height: 1.25, fontWeight: FontWeight.w700),
            unselectedLabelStyle:  TextStyle(
                fontSize: 16, height: 1.25, fontWeight: FontWeight.w400),
            indicator: const RoundedTabIndicator(4),
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            labelPadding: const EdgeInsets.symmetric(vertical: 8),
            tabs: const [
              Text("Respublika"),
              Text("Tuman"),
              Text("Xususiy"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView.separated(
              itemCount: 5,
              padding: const EdgeInsets.all(defaultPadding),
              itemBuilder: (context, index) {
                return HospitalCard();
              },
              separatorBuilder: (context, index) =>
                  const SizedBox(height: defaultPadding),
            ),
            Text("2"),
            Text("3"),
          ],
        ),
      ),
    );
  }
}

class HospitalCard extends StatelessWidget {
  const HospitalCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFEEEEFB),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Shifoxona nomi",
                  style: TextStyle(fontSize: 17, height: 1.1),
                ),
                const SizedBox(height: 20),
                Text(
                  "Qoraqalpog'iston Respublikasi ko'p tarmoqli bolalar tibbiyot markazi",
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.4),
                      fontSize: 14,
                      height: 1.4),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    SvgPicture.asset("assets/icons/pin_fill.svg"),
                    const SizedBox(width: 5),
                    const Text(
                      "Nukus, 55",
                      style: TextStyle(
                          color: primaryColor, fontSize: 14, height: 1.4),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: SvgPicture.asset("assets/icons/clock_fill.svg"),
                    ),
                    const SizedBox(width: 5),
                    const Text(
                      "8:30 - 21:00 ",
                      style: TextStyle(
                          color: primaryColor, fontSize: 14, height: 1.4),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            right: 32,
            bottom: 16,
            child: ClipOval(
              child: Container(color: primaryColor, width: 36, height: 8),
            ),
          ),
          Positioned(
            right: 20,
            bottom: 20,
            child: Image.asset(
              "assets/images/demo_map.png",
              width: 60,
              height: 60,
            ),
          ),
        ],
      ),
    );
  }
}

class RoundedTabIndicator extends Decoration {
  final double height;

  const RoundedTabIndicator(this.height);

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) =>
      RoundedPainter(height);
}

class RoundedPainter extends BoxPainter {
  final double height;

  RoundedPainter(this.height);

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    canvas.drawRRect(
      RRect.fromLTRBR(
          offset.dx,
          offset.dy + configuration.size!.height - height,
          offset.dx + configuration.size!.width,
          offset.dy + configuration.size!.height,
          Radius.circular(height / 2)),
      Paint()..color = primaryColor,
    );
  }
}
