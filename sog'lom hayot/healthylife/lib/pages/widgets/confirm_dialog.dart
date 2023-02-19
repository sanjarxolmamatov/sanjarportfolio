import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:healthylife/config/colors.dart';
import 'package:healthylife/config/constants.dart';

class ConfirmDialog extends Dialog {
  final String title;
  final void Function() onConfirm;
  final BuildContext context;
  ConfirmDialog(this.title,
      {Key? key, required this.onConfirm, required this.context})
      : super(
          key: key,
          backgroundColor: Colors.white,
          insetPadding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          child: Container(
            padding: const EdgeInsets.symmetric(
                horizontal: defaultPadding, vertical: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: SvgPicture.asset("assets/icons/close.svg"),
                  ),
                ),
                const SizedBox(height: 42),
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 24, height: 1.2, fontWeight: FontWeight.w700),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 98),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DialogActionButton("Yo'q", () => Navigator.pop(context)),
                    DialogActionButton("Ha", () {
                      Navigator.pop(context);
                      onConfirm();
                    }),
                  ],
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        );
}

class DialogActionButton extends StatelessWidget {
  final String text;
  final void Function() onPress;
  final bool fullWidth;

  const DialogActionButton(this.text, this.onPress,
      {Key? key, this.fullWidth = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      borderRadius: BorderRadius.circular(30),
      child: Container(
        width: fullWidth ? double.infinity : null,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: primaryColor),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 18),
        child: Text(
          text,
          style: const TextStyle(
              fontSize: 16,
              height: 1.25,
              fontWeight: FontWeight.w700,
              color: primaryColor),
        ),
      ),
    );
  }
}
