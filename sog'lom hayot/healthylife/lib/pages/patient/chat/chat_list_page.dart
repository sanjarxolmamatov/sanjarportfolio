import 'package:flutter/material.dart';
import 'package:healthylife/config/constants.dart';
import 'package:healthylife/pages/patient/chat/chat_page.dart';

class ChatListPage extends StatelessWidget {
  const ChatListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Chat")),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: defaultPadding),
        child: ListView(
          children: [
            ...List.generate(
                10,
                (i) => ChatCard(
                    "Name",
                    "How are you?",
                    "11.06",
                    i.isEven,
                    Colors.orange,
                    () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ChatPage())))),
          ],
        ),
      ),
    );
  }
}

class ChatCard extends StatelessWidget {
  final String name;
  final String lastMsg;
  final String time;
  final bool unread;
  final Color color;
  final void Function() onTap;

  const ChatCard(
      this.name, this.lastMsg, this.time, this.unread, this.color, this.onTap,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: unread ? Colors.white : const Color(0xFFFBFBFB),
          boxShadow: [
            if (unread)
              BoxShadow(
                  offset: Offset(0, 6),
                  color: Colors.black.withOpacity(0.04),
                  blurRadius: 20)
          ],
        ),
        child: Row(
          children: [
            Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(23),
              ),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  name.substring(0, 1),
                  style: const TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
            ),
            const SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name,
                        style: const TextStyle(fontSize: 16, height: 1.25)),
                    const SizedBox(width: 2),
                    if (unread)
                      Container(
                        width: 6,
                        height: 6,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(3),
                        ),
                      )
                  ],
                ),
                const SizedBox(height: 5),
                Text(
                  lastMsg,
                  style: TextStyle(
                      fontSize: 14,
                      height: 1.45,
                      color: Colors.black.withOpacity(0.4)),
                ),
              ],
            ),
            const Spacer(),
            Align(
              alignment: Alignment.bottomRight,
              child: Text(time,
                  style: TextStyle(
                      fontSize: 14,
                      height: 1.45,
                      color: Colors.black.withOpacity(0.4))),
            ),
          ],
        ),
      ),
    );
  }
}
