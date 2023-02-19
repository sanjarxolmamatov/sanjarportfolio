import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_none, color: Colors.black),
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.shopping_cart_rounded, color: Colors.black))
        ],
        title: Text(
          "cars",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            width: double.infinity,
            height: 30,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _categoriyaItem(true, "All"),
                _categoriyaItem(false, "black"),
                _categoriyaItem(false, "white"),
                _categoriyaItem(false, "yellow"),
                _categoriyaItem(false, "red"),
                _categoriyaItem(false, "grey"),
                _categoriyaItem(false, "green"),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListView(
                children: [
                  _cardItem(
                      "Mustang", "13000\$", "Elictroc", "assets/images/1.jpg"),
                      _cardItem(
                      "Mustang", "13000\$", "Elictroc", "assets/images/1.jpg"),
                      _cardItem(
                      "Mustang", "13000\$", "Elictroc", "assets/images/1.jpg"),
                      _cardItem(
                      "Mustang", "13000\$", "Elictroc", "assets/images/1.jpg"),
                      _cardItem(
                      "Mustang", "13000\$", "Elictroc", "assets/images/1.jpg"),
                      _cardItem(
                      "Mustang", "13000\$", "Elictroc", "assets/images/1.jpg"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _categoriyaItem(bool isActive, String name) {
  return AspectRatio(
    aspectRatio: 3.6 / 1.4,
    child: Container(
      margin: EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: isActive ? Colors.grey.shade300 : Colors.white,
      ),
      child: Center(
        child: Text(
          name,
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 17),
        ),
      ),
    ),
  );
}

Widget _cardItem(String name, String price, tipe, String image) {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    child: Container(
      width: double.infinity,
      height: 300,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(image),
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black54,
              Colors.black45,
              Colors.black38,
            ],
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10,),
                   Text(
                    tipe,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                   Text(
                    price,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border_outlined,color:Colors.white))
          ],
        ),
      ),
    ),
  );
}
