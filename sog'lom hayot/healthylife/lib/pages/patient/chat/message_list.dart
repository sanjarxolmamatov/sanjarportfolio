import 'package:flutter/material.dart';
import 'package:healthylife/config/colors.dart';
import 'package:healthylife/config/constants.dart';

const userId = "1";

List<MessageModel> msgList = [
  MessageModel("1", "Hi Doctor", "18:27"),
  MessageModel("2",
      "Hi, don’t worry! I am here. Let me know your situation now.", "18:27"),
  MessageModel("1",
      "Hi Doctor, I am cardio patient. I need your help imidiately.", "18:27"),
  MessageModel("1",
      "Hi Doctor, I am cardio patient. I need your help imidiately.", "18:27"),
  MessageModel("2",
      "Hi, don’t worry! I am here. Let me know your situation now.", "18:27"),
  MessageModel("1", "Hi Doctor", "18:27"),
  MessageModel("2",
      "Hi, don’t worry! I am here. Let me know your situation now.", "18:27"),
  MessageModel("1",
      "Hi Doctor, I am cardio patient. I need your help imidiately.", "18:27"),
  MessageModel("1",
      "Hi Doctor, I am cardio patient. I need your help imidiately.", "18:27"),
  MessageModel("2",
      "Hi, don’t worry! I am here. Let me know your situation now.", "18:27"),
];

class MessageList extends StatelessWidget {
  final List<MessageModel> items;

  const MessageList(this.items, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      reverse: true,
      padding: const EdgeInsets.all(defaultPadding),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return MessageCard(items[index].message, items[index].time,
            items[index].sender == "1");
      },
    );
  }
}

class MessageCard extends StatelessWidget {
  final String message;
  final String time;
  final bool outgoing;

  const MessageCard(this.message, this.time, this.outgoing, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    const cardRadius = Radius.circular(10);
    return Align(
      alignment: outgoing ? Alignment.centerRight : Alignment.centerLeft,
      child: Column(
        crossAxisAlignment:
            outgoing ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Container(
            constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.65),
            decoration: BoxDecoration(
              color: outgoing ? const Color(0xFFEEEEFB) : primaryColor,
              borderRadius: BorderRadius.only(
                topLeft: cardRadius,
                topRight: cardRadius,
                bottomRight: outgoing ? Radius.zero : cardRadius,
                bottomLeft: outgoing ? cardRadius : Radius.zero,
              ),
            ),
            padding: const EdgeInsets.all(16),
            child: Text(
              message,
              style: TextStyle(
                  color: outgoing ? const Color(0xFFA6A3B8) : Colors.white,
                  fontSize: 16,
                  height: 1.25),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            time,
            style: const TextStyle(
                fontSize: 13, height: 1.5, color: Color(0xFFA6A3B8)),
          ),
        ],
      ),
    );
  }
}

class MessageModel {
  final String sender;
  final String message;
  final String time;

  MessageModel(this.sender, this.message, this.time);
}
