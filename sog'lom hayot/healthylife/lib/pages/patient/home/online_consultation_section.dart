import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:healthylife/config/constants.dart';

class OnlineConsultation {
  final String iconPath;
  final String title;

  OnlineConsultation(this.iconPath, this.title);
}

final consultationItems = [
  OnlineConsultation("assets/icons/scalpel.svg", "Jarrohlik"),
  OnlineConsultation("assets/icons/heart.svg", "Kardiologiya"),
  OnlineConsultation("assets/icons/gear.svg", "Endokrinologiya"),
  OnlineConsultation("assets/icons/joints.svg", "Travmatologiya"),
  OnlineConsultation("assets/icons/neurology.svg", "Nevropatologiya"),
  OnlineConsultation("assets/icons/therapy.svg", "Terapiya"),
  OnlineConsultation("assets/icons/newborn.svg", "Pediatriya"),
  OnlineConsultation("assets/icons/gynecology.svg", "Ginekologiya"),
  OnlineConsultation("assets/icons/cpr.svg", "Reanimatologiya"),
  OnlineConsultation("assets/icons/oncology.svg", "Ankologiya"),
  OnlineConsultation("assets/icons/kidneys.svg", "Urologiya"),
  OnlineConsultation("assets/icons/optometrist.svg", "Okulist"),
  OnlineConsultation("assets/icons/pharynx.svg", "Lor"),
  OnlineConsultation("assets/icons/scan.svg", "Uzi vrachi"),
  OnlineConsultation("assets/icons/x-ray.svg", "Rentgenolog"),
  OnlineConsultation("assets/icons/physiotherapist.svg", "Fizioterapiya"),
  OnlineConsultation("assets/icons/lungs.svg", "Pulmonolog"),
  OnlineConsultation("assets/icons/stomach.svg", "Gastroenterolog"),
];

class OnlineConsultationSection extends StatelessWidget {
  final Function onMoreTap;
  final void Function(OnlineConsultation) onItemTap;
  const OnlineConsultationSection(this.onMoreTap, this.onItemTap, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: defaultPadding, right: 4.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Online konsultatsiya",
                style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Nunito"),
              ),
              IconButton(
                splashRadius: 20.0,
                onPressed: () => onMoreTap(),
                icon: SvgPicture.asset("assets/icons/chevron-right.svg"),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 104,
          child: ListView.builder(
            itemCount: consultationItems.length,
            padding:
                const EdgeInsets.symmetric(horizontal: defaultPadding - 16),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final consultation = consultationItems[index];
              return ConsultationItem(consultation.iconPath, consultation.title,
                  () => onItemTap(consultation));
            },
          ),
        ),
      ],
    );
  }
}

class ConsultationItem extends StatelessWidget {
  final String iconPath;
  final String title;
  final Function onTap;
  const ConsultationItem(this.iconPath, this.title, this.onTap, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Column(
        children: [
          Container(
            width: 80,
            height: 80,
            margin: const EdgeInsets.symmetric(horizontal: 16),
            padding: const EdgeInsets.all(16.0),
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
            child: SvgPicture.asset(iconPath, width: 48, height: 48),
          ),
          const SizedBox(height: 5.0),
          Text(
            title,
            style: const TextStyle(
                fontSize: 14.0, color: Color(0xFFA6A3B8), fontFamily: "Nunito"),
          ),
        ],
      ),
    );
  }
}
