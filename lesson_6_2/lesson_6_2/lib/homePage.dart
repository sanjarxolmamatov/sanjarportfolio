import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "PDP Onlinje",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        children:[ Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                   
                    decoration: const BoxDecoration(
                      image: DecorationImage(fit: BoxFit.cover,
                        image: AssetImage("assets/images/1.jpg"),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "item One",
                    style: TextStyle(color: Colors.black,fontSize: 20),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
             Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                   
                    decoration: BoxDecoration(
                      image: DecorationImage(fit: BoxFit.cover,
                        image: AssetImage("assets/images/1.jpg"),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "item One",
                    style: TextStyle(color: Colors.black,fontSize: 20),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
             Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                   
                    decoration: BoxDecoration(
                      image: DecorationImage(fit: BoxFit.cover,
                        image: AssetImage("assets/images/1.jpg"),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "item One",
                    style: TextStyle(color: Colors.black,fontSize: 20),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
             Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                   
                    decoration: BoxDecoration(
                      image: DecorationImage(fit: BoxFit.cover,
                        image: AssetImage("assets/images/1.jpg"),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "item One",
                    style: TextStyle(color: Colors.black,fontSize: 20),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
             Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                   
                    decoration: BoxDecoration(
                      image: DecorationImage(fit: BoxFit.cover,
                        image: AssetImage("assets/images/1.jpg"),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "item One",
                    style: TextStyle(color: Colors.black,fontSize: 20),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
             Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                   
                    decoration: BoxDecoration(
                      image: DecorationImage(fit: BoxFit.cover,
                        image: AssetImage("assets/images/1.jpg"),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "item One",
                    style: TextStyle(color: Colors.black,fontSize: 20),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
             Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                   
                    decoration: BoxDecoration(
                      image: DecorationImage(fit: BoxFit.cover,
                        image: AssetImage("assets/images/1.jpg"),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "item One",
                    style: TextStyle(color: Colors.black,fontSize: 20),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
             Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                   
                    decoration: BoxDecoration(
                      image: DecorationImage(fit: BoxFit.cover,
                        image: AssetImage("assets/images/1.jpg"),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "item One",
                    style: TextStyle(color: Colors.black,fontSize: 20),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
             Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  width: 100,
                  height: 100,
                 
                  decoration: BoxDecoration(
                    image: DecorationImage(fit: BoxFit.cover,
                      image: AssetImage("assets/images/1.jpg"),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "item One",
                  style: TextStyle(color: Colors.black,fontSize: 20),
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
           Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  width: 100,
                  height: 100,
                 
                  decoration: BoxDecoration(
                    image: DecorationImage(fit: BoxFit.cover,
                      image: AssetImage("assets/images/1.jpg"),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "item One",
                  style: TextStyle(color: Colors.black,fontSize: 20),
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
           Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  width: 100,
                  height: 100,
                 
                  decoration: BoxDecoration(
                    image: DecorationImage(fit: BoxFit.cover,
                      image: AssetImage("assets/images/1.jpg"),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "item One",
                  style: TextStyle(color: Colors.black,fontSize: 20),
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
           Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  width: 100,
                  height: 100,
                 
                  decoration: BoxDecoration(
                    image: DecorationImage(fit: BoxFit.cover,
                      image: AssetImage("assets/images/1.jpg"),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "item One",
                  style: TextStyle(color: Colors.black,fontSize: 20),
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
           Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  width: 100,
                  height: 100,
                 
                  decoration: BoxDecoration(
                    image: DecorationImage(fit: BoxFit.cover,
                      image: AssetImage("assets/images/1.jpg"),
                    ),
                  ), 
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "item One",
                  style: TextStyle(color: Colors.black,fontSize: 20),
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
          ],
        ),
        ]
      ),
    );
  }
}
