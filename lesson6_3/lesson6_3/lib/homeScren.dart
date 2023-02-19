import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScren extends StatefulWidget {
  const HomeScren({super.key});

  @override
  State<HomeScren> createState() => _HomeScrenState();
}

class _HomeScrenState extends State<HomeScren> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("jgkjgkjl")),
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/1.jpg"),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Text(
                                "Laurent",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                "20:18",
                                style: TextStyle(color: Colors.grey, fontSize: 15),
                              )
                            ],
                          ),
                        ),
                        Text(
                          "How about meeting tomorrow?",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                    SizedBox(width: 60,),
                    IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios_sharp,color: Colors.black,),),
                  ],
                ),
              ),
              Divider(color: Colors.grey,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/1.jpg"),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Text(
                                "Laurent",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                "20:18",
                                style: TextStyle(color: Colors.grey, fontSize: 15),
                              )
                            ],
                          ),
                        ),
                        Text(
                          "How about meeting tomorrow?",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                    SizedBox(width: 60,),
                    IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios_sharp,color: Colors.black,),),
                  ],
                ),
              ),
              Divider(color: Colors.grey,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/1.jpg"),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Text(
                                "Laurent",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                "20:18",
                                style: TextStyle(color: Colors.grey, fontSize: 15),
                              )
                            ],
                          ),
                        ),
                        Text(
                          "How about meeting tomorrow?",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                    SizedBox(width: 60,),
                    IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios_sharp,color: Colors.black,),),
                  ],
                ),
              ),
              Divider(color: Colors.grey,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/1.jpg"),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Text(
                                "Laurent",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                "20:18",
                                style: TextStyle(color: Colors.grey, fontSize: 15),
                              )
                            ],
                          ),
                        ),
                        Text(
                          "How about meeting tomorrow?",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                    SizedBox(width: 60,),
                    IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios_sharp,color: Colors.black,),),
                  ],
                ),
              ),
              Divider(color: Colors.grey,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/1.jpg"),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Text(
                                "Laurent",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                "20:18",
                                style: TextStyle(color: Colors.grey, fontSize: 15),
                              )
                            ],
                          ),
                        ),
                        Text(
                          "How about meeting tomorrow?",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                    SizedBox(width: 60,),
                    IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios_sharp,color: Colors.black,),),
                  ],
                ),
              ),
              Divider(color: Colors.grey,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/1.jpg"),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Text(
                                "Laurent",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                "20:18",
                                style: TextStyle(color: Colors.grey, fontSize: 15),
                              )
                            ],
                          ),
                        ),
                        Text(
                          "How about meeting tomorrow?",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                    SizedBox(width: 60,),
                    IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios_sharp,color: Colors.black,),),
                  ],
                ),
              ),
              Divider(color: Colors.grey,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/1.jpg"),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Text(
                                "Laurent",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                "20:18",
                                style: TextStyle(color: Colors.grey, fontSize: 15),
                              )
                            ],
                          ),
                        ),
                        Text(
                          "How about meeting tomorrow?",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                    SizedBox(width: 60,),
                    IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios_sharp,color: Colors.black,),),
                  ],
                ),
              ),
              Divider(color: Colors.grey,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/1.jpg"),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Text(
                                "Laurent",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                "20:18",
                                style: TextStyle(color: Colors.grey, fontSize: 15),
                              )
                            ],
                          ),
                        ),
                        Text(
                          "How about meeting tomorrow?",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                    SizedBox(width: 60,),
                    IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios_sharp,color: Colors.black,),),
                  ],
                ),
              ),
              Divider(color: Colors.grey,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/1.jpg"),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Text(
                                "Laurent",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                "20:18",
                                style: TextStyle(color: Colors.grey, fontSize: 15),
                              )
                            ],
                          ),
                        ),
                        Text(
                          "How about meeting tomorrow?",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                    SizedBox(width: 60,),
                    IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios_sharp,color: Colors.black,),),
                  ],
                ),
              ),
              Divider(color: Colors.grey,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/1.jpg"),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Text(
                                "Laurent",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                "20:18",
                                style: TextStyle(color: Colors.grey, fontSize: 15),
                              )
                            ],
                          ),
                        ),
                        Text(
                          "How about meeting tomorrow?",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                    SizedBox(width: 60,),
                    IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios_sharp,color: Colors.black,),),
                  ],
                ),
              ),
              Divider(color: Colors.grey,),
              
            ],
          ),
        ],
      ),
    );
  }
}
