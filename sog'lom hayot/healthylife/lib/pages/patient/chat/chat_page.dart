import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:healthylife/config/colors.dart';
import 'package:healthylife/config/constants.dart';
import 'package:healthylife/pages/patient/chat/message_list.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ChatAppBar(),
      body: Column(
        children: [
          Expanded(child: MessageList(msgList)),
          Container(
            height: 50,
            margin: EdgeInsets.only(left: 25, right: 25, bottom: 20, top: 10),
            padding: EdgeInsets.only(left: 20, right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              border: Border.all(color: primaryColor),
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Type a message",
                      hintStyle: TextStyle(
                          fontSize: 16,
                          height: 1.25,
                          color: primaryColor.withOpacity(0.6)),
                      border: InputBorder.none,
                    ),
                    style: TextStyle(
                        fontSize: 16, height: 1.25, color: primaryColor),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset("assets/icons/send.svg"),
                  splashRadius: 25,
                  padding: const EdgeInsets.all(0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ChatAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ChatAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(15)),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
              left: defaultPadding - 10,
              right: defaultPadding,
              top: 10,
              bottom: 10),
          child: Row(
            children: [
              IconButton(
                  onPressed: () => print("Working"),
                  icon: const Icon(Icons.arrow_back_rounded,
                      color: Colors.white)),
              const SizedBox(width: 30),
              Text(
                "Dr. John",
                style: TextStyle(
                    fontSize: 16,
                    height: 1.25,
                    color: Colors.white,
                    fontWeight: FontWeight.w700),
              ),
              const Spacer(),
              Text(
                "Online",
                style: TextStyle(
                    fontSize: 14,
                    height: 1.45,
                    color: Colors.white.withOpacity(0.6)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, 64);
}
