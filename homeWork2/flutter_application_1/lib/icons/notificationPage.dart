import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'MyCustomWidget.dart';

class notificationPage extends StatelessWidget {
  const notificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 140,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Kiruvchi",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
                SizedBox(
                  width: 90,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.border_color_rounded),
                ),
              ],
            ),
            Drawer(
              backgroundColor: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}
