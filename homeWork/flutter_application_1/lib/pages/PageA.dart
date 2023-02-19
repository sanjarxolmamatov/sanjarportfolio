import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/PageB.dart';

class PageA extends StatelessWidget {
  void openPageB(BuildContext ctx) {
    Navigator.push(
      ctx,
      MaterialPageRoute(builder: (_) {
        return PageB();
      }),
    );
  }

  const PageA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PageA"),
      ),
      body: Center(
        child: Container(
          child: ElevatedButton(
            onPressed: () => openPageB(context),
            child: Text("ikkinchi oyna"),
          ),
        ),
      ),
    );
  }
}
