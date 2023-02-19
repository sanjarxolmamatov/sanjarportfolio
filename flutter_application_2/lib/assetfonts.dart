import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class assetfonts extends StatefulWidget {
  const assetfonts({super.key});

  @override
  State<assetfonts> createState() => _assetfontsState();
}

class _assetfontsState extends State<assetfonts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Instagram",
        style: TextStyle(fontFamily: "Billabong            ",
        fontSize: 40),),
      ),
      body: Center(
        child: Text("HomePage",
        style: TextStyle(fontFamily: "Billabong",
        fontSize: 50),),
      ),
    );
  }
}