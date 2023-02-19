import 'package:flutter/material.dart';
import 'package:healthylife/config/colors.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final Function onTap;

  const PrimaryButton(
    this.text,
    this.onTap, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      borderRadius: BorderRadius.circular(30),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: primaryColor,
        ),
        padding: const EdgeInsets.symmetric(vertical: 17),
        alignment: Alignment.center,
        child: Text(
          text,
          style: const TextStyle(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.w700,
              height: 1.25),
        ),
      ),
    );
  }
}
