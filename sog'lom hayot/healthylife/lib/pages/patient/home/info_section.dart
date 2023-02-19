import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:healthylife/config/constants.dart';

class InfoSection extends StatelessWidget {
  const InfoSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Info",
            style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.w600,
                fontFamily: "Nunito"),
          ),
          const SizedBox(height: 12),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 27),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
              gradient: LinearGradient(
                colors: [
                  Color(0xFF39A2DB),
                  Color(0xFF36D2EA),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Column(
              children: [
                Image.asset("assets/images/gerb.png", width: 50, height: 50),
                const SizedBox(height: 12),
                Text(
                  "Qoraqalpog‘iston Respublikasi\n Sog‘liqni saqlash vazirligi",
                  style: textTheme.bodyText1!.copyWith(
                      color: Colors.white, fontWeight: FontWeight.w700),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                const InfoSectionItem(
                    "assets/icons/manager.svg", "Qurbanov Murad Ismailovich"),
                const SizedBox(height: 5),
                const InfoSectionItem("assets/icons/pin.svg",
                    "Nukus shahar, Doslik Guzari\nko‘chasi 152-uy"),
                const SizedBox(height: 5),
                const InfoSectionItem(
                    "assets/icons/telephone.svg", "+998 (61) 226-00-48 "),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class InfoSectionItem extends StatelessWidget {
  final String icon;
  final String text;
  const InfoSectionItem(this.icon, this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Row(
      children: [
        SvgPicture.asset(icon),
        const SizedBox(width: 4),
        Text(
          text,
          style: textTheme.subtitle2!.copyWith(color: Colors.white),
        ),
      ],
    );
  }
}
