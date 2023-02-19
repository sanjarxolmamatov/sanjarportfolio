import 'package:flutter/material.dart';
import 'package:healthylife/config/constants.dart';

const serviceImages = [
  "assets/images/news_service.png",
  "assets/images/medical_service.png",
  "assets/images/ambulance.png"
];
const serviceTitles = [
  "Yangiliklar",
  "Tibbiy ma'lumotnoma olish",
  "Tez tibbiy yordam"
];

class ServicesSection extends StatelessWidget {
  final void Function(String) onItemTap;
  const ServicesSection(this.onItemTap, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: defaultPadding, right: 4.0),
          child: Text(
            "Services",
            style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.w600,
                fontFamily: "Nunito"),
          ),
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 132,
          child: ListView.builder(
            itemCount: serviceImages.length,
            padding:
                const EdgeInsets.symmetric(horizontal: defaultPadding - 16),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return ServiceItem(
                serviceImages[index],
                serviceTitles[index],
                () => onItemTap(serviceTitles[index]),
              );
            },
          ),
        ),
      ],
    );
  }
}

class ServiceItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final Function onTap;

  const ServiceItem(this.imagePath, this.title, this.onTap, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Image.asset(imagePath,
                  width: 120, height: 86, fit: BoxFit.cover),
            ),
          ),
          const SizedBox(height: 5.0),
          Container(
            constraints: const BoxConstraints(maxWidth: 148),
            child: Text(
              title,
              maxLines: 2,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 14.0,
                  color: Color(0xFFA6A3B8),
                  fontFamily: "Nunito",
                  fontWeight: FontWeight.w600,
                  letterSpacing: -0.24),
            ),
          ),
        ],
      ),
    );
  }
}
