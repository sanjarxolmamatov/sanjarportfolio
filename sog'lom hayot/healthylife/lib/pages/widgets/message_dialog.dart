import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:healthylife/config/constants.dart';
import 'package:healthylife/pages/widgets/confirm_dialog.dart';

class MessageDialog extends Dialog {
  final Widget content;
  final void Function()? onClose;
  final BuildContext context;
  MessageDialog(this.content, {Key? key, this.onClose, required this.context})
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
                    onPressed: () {
                      onClose?.call();
                      Navigator.pop(context);
                    },
                    icon: SvgPicture.asset("assets/icons/close.svg"),
                  ),
                ),
                const SizedBox(height: 22),
                content,
                const SizedBox(height: 20),
                DialogActionButton(
                  "Ok",
                  () {
                    onClose?.call();
                    Navigator.pop(context);
                  },
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        );
}
