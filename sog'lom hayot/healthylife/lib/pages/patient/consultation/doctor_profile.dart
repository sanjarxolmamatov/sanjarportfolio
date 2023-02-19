import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:healthylife/config/colors.dart';
import 'package:healthylife/config/constants.dart';
import 'package:healthylife/pages/widgets/confirm_dialog.dart';
import 'package:healthylife/pages/widgets/message_dialog.dart';
import 'package:healthylife/pages/widgets/primary_button.dart';

class DoctorProfile extends StatelessWidget {
  const DoctorProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBar(
              title: Text("Dr. Smith"),
              backgroundColor: const Color(0xFF39A2DB),
              foregroundColor: Colors.white,
              titleTextStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  fontFamily: "ProductSans"),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 48),
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF39A2DB),
                    Color(0xFF36D2EA),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(30)),
              ),
              child: Column(
                children: [
                  SvgPicture.asset(
                    "assets/icons/doctor.svg",
                    width: 81,
                    height: 81,
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    "Jarroh",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 3),
                  const Text(
                    "Oliy toifali shifokor",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        height: 1.33),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const RatingBar(5),
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: primaryColor, width: 1),
                        ),
                        child: SvgPicture.asset("assets/icons/chat_fill.svg"),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Text(
                    "About Doctor",
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.black.withOpacity(0.4),
                        fontWeight: FontWeight.w700,
                        height: 1.16),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may use often.",
                    style: TextStyle(
                        fontSize: 15.5, color: Color(0xFFA6A3B8), height: 1.3),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DoctorInfo("Patient", "5031"),
                      Container(
                          height: 33,
                          width: 1,
                          color: Colors.black.withOpacity(0.2)),
                      DoctorInfo("Experience", "9 year"),
                      Container(
                          height: 33,
                          width: 1,
                          color: Colors.black.withOpacity(0.2)),
                      DoctorInfo("Review", "3210"),
                    ],
                  ),
                  const SizedBox(height: 48),
                  PrimaryButton(
                    "Qabulga yozilish",
                    () => showDialog(
                      context: context,
                      builder: (context) =>
                          ConfirmDialog("Shifokor qabuliga yozilmoqchimisiz?",
                              onConfirm: () => showDialog(
                                    context: context,
                                    builder: (context) => MessageDialog(
                                        Text("Message"),
                                        context: context),
                                  ),
                              context: context),
                    ),
                  ),
                  const SizedBox(height: defaultPadding),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DoctorInfo extends StatelessWidget {
  final String title;
  final String data;

  const DoctorInfo(this.title, this.data, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
              color: Colors.black.withOpacity(0.4), fontSize: 12, height: 1.66),
        ),
        Text(
          data,
          style: const TextStyle(
              color: Color(0xFFA6A3B8),
              fontSize: 18,
              fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}

class RatingBar extends StatelessWidget {
  final int rating;

  const RatingBar(this.rating, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...List.generate(
          rating,
          (index) => const Padding(
            padding: EdgeInsets.only(right: 4),
            child: Icon(Icons.star, size: 15, color: Color(0xFFFDB441)),
          ),
        ),
        ...List.generate(
          (5 - rating),
          (index) => const Padding(
            padding: EdgeInsets.only(right: 4),
            child: Icon(Icons.star, size: 15, color: Colors.grey),
          ),
        ),
      ],
    );
  }
}
