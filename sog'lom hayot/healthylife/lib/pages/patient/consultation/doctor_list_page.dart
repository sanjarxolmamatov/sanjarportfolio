import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:healthylife/config/constants.dart';
import 'package:healthylife/pages/patient/consultation/doctor_profile.dart';
import 'package:healthylife/pages/patient/home/online_consultation_section.dart';

class DoctorListPage extends StatelessWidget {
  final OnlineConsultation consultation;

  const DoctorListPage(this.consultation, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(consultation.title)),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(
            horizontal: defaultPadding, vertical: defaultPadding / 2),
        itemCount: 10,
        itemBuilder: (context, index) {
          return DoctorCard(
            "Dr. Smith",
            "Jarroh - Nukus Medical Center",
            () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const DoctorProfile())),
          );
        },
      ),
    );
  }
}

class DoctorCard extends StatelessWidget {
  final String name;
  final String hospital;
  final Function onTap;

  const DoctorCard(this.name, this.hospital, this.onTap, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFFEEEEFB),
          borderRadius: BorderRadius.circular(10),
        ),
        margin: const EdgeInsets.symmetric(vertical: 4),
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: const LinearGradient(
                  colors: [
                    Color(0xFF39A2DB),
                    Color(0xFF36D2EA),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              padding: const EdgeInsets.all(18),
              child: SvgPicture.asset("assets/icons/doctor.svg"),
            ),
            const SizedBox(width: 18),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: Colors.black.withOpacity(0.6)),
                ),
                const SizedBox(height: 2),
                Text(
                  hospital,
                  style: const TextStyle(
                      fontSize: 12,
                      fontFamily: "Nunito",
                      fontWeight: FontWeight.w300,
                      color: Color(0xFFA6A3B8)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
