import 'package:flutter/material.dart';
import 'package:healthylife/pages/patient/consultation/doctor_list_page.dart';
import 'package:healthylife/pages/patient/home/online_consultation_section.dart';

class OnlineConsultationPage extends StatelessWidget {
  const OnlineConsultationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Online konsultatsiya"),
      ),
      body: GridView.extent(
        maxCrossAxisExtent: 140.0,
        children: consultationItems
            .map((item) => ConsultationItem(
                item.iconPath,
                item.title,
                () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DoctorListPage(item)))))
            .toList(),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
      ),
      backgroundColor: Colors.white,
    );
  }
}
