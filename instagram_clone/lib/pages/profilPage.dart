import 'dart:io';

import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

import 'package:image_picker/image_picker.dart';

class profilPage extends StatefulWidget {
  PageController? pageController;
  profilPage({this.pageController, super.key});

  @override
  State<profilPage> createState() => _profilPageState();
}

class _profilPageState extends State<profilPage> {
  final ImagePicker _picker = ImagePicker();

  File? _image;

  _showGallery() async {
    final XFile? file = await _picker.pickImage(source: ImageSource.gallery);
    if (file == null) return;
    setState(() {
      _image = File(file.path);
    });

    Navigator.pop(context);
  }

  _showCamera() async {
    final XFile? file = await _picker.pickImage(source: ImageSource.camera);
    if (file == null) return;
    setState(() {
      _image = File(file.path);
    });

    Navigator.pop(context);
  }

  addStory() {
    showModalBottomSheet(
      context: context,
      builder: ((context) => Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                onTap: () {
                  _showGallery();
                },
                leading: Icon(Icons.photo_library_outlined),
                title: Text("Take Photo"),
              ),
              ListTile(
                onTap: () {
                  _showCamera();
                },
                leading: Icon(Icons.camera_alt_outlined),
                title: Text("Pic Photo"),
              )
            ],
          )),
    );
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        endDrawer: menu(context),
        key: _scaffoldKey,
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          elevation: 0,
          title: const Text(
            "Profil",
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontWeight: FontWeight.bold,
              fontSize: 30,
              fontFamily: "Billabong",
            ),
          ),
          actions: [
            IconButton(
              onPressed: () => _scaffoldKey.currentState!.openEndDrawer(),
              icon: Icon(Icons.settings),
            ),
          ],
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromARGB(255, 63, 229, 69),
                Colors.black,
                Colors.black,
                Color.fromARGB(255, 63, 229, 69),
              ],
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Stack(
                children: [
                  InkWell(
                    onTap: () {
                      addStory();
                    },
                    child: Container(
                      padding: EdgeInsets.all(4),
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            Colors.red,
                            Colors.orange,
                            Colors.pink,
                          ],
                        ),
                      ),
                      child: Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            image: DecorationImage(
                              image: AssetImage("assets/images/2.png"),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50, top: 48),
                    child: CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.black,
                      child: Padding(
                        padding: EdgeInsets.only(),
                        child: InkWell(
                          onTap: () {
                            addStory();
                          },
                          child: Icon(
                            Icons.add,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Text(
                    "x_s_f_02",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "sxolmamatov16@gmail.com",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text(
                          "675",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "POSTS",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 1.2,
                      height: 45,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Text(
                          "675",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "FOLLOWERS",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 1.2,
                      height: 45,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Text(
                          "675",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "FOLLOWING",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              TabBar(
                isScrollable: false,
                tabs: [
                  Tab(
                    icon: Icon(
                      Icons.table_rows_sharp,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.apps_sharp,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget menu(context) {
  return Drawer(
    child: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color.fromARGB(255, 63, 229, 69),
            Colors.black,
            Colors.black,
            Color.fromARGB(255, 63, 229, 69),
          ],
        ),
      ),
      child: Column(
        children: [
          Container(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: GlassmorphicContainer(
                    width: MediaQuery.of(context).size.width,
                    height: 806,
                    borderRadius: 0,
                    linearGradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFFffffff).withOpacity(0.01),
                        Color.fromARGB(255, 255, 255, 255).withOpacity(0.05),
                      ],
                    ),
                    border: 2,
                    blur: 50,
                    borderGradient: LinearGradient(
                      colors: [
                        Color(0xFFffffff).withOpacity(0),
                        Color((0xFFFFFFFF)).withOpacity(0),
                      ],
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 100,
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          width: 300,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black,
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 4, 75, 6),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                "Malumot",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
