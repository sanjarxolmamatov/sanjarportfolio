import 'dart:io';

import 'package:flutter/material.dart';
import 'package:icons_launcher/utils/utils.dart';
import 'package:image_picker/image_picker.dart';

class UploadPage extends StatefulWidget {
  PageController? pageController;
  UploadPage({this.pageController, super.key});

  @override
  State<UploadPage> createState() => _UploadPageState();
}

class _UploadPageState extends State<UploadPage> {
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

  showPic() {
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

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [Color.fromARGB(255, 0, 0, 0), Color.fromARGB(255, 0, 0, 0)],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 0, 0, 0),
          title: Text(
            "Upload",
            style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontFamily: "Billabong",
                fontSize: 27,
                fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
              onPressed: () {
                widget.pageController!.animateToPage(
                  0,
                  duration: Duration(milliseconds: 200),
                  curve: Curves.linear,
                );
              },
              icon: Icon(
                Icons.add_photo_alternate_outlined,
                color: Color.fromARGB(255, 255, 255, 255),
                size: 27,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
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
                InkWell(
                  onTap: () {
                    showPic();
                  },
                  child: Stack(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                        ),
                        child: _image == null
                            ? Icon(
                                Icons.add_a_photo,
                                size: 50,
                                color: Color.fromARGB(255, 83, 83, 83),
                              )
                            : Image(
                                fit: BoxFit.cover, image: FileImage(_image!)),
                      ),
                      _image != null
                          ? Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  CircleAvatar(
                                    backgroundColor:
                                        Color.fromARGB(255, 0, 0, 0),
                                    child: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          _image = null;
                                        });
                                      },
                                      icon: Icon(Icons.close),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          : Container(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      //  borderRadius: BorderRadius.circular(50),
                    ),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 0, 0, 0),
                        // borderRadius: BorderRadius.circular(50),
                      ),
                      child: TextField(
                        style: TextStyle(color: Colors.white),
                        keyboardType: TextInputType.multiline,
                        minLines: 1,
                        maxLines: 10,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: "Caption",
                          labelStyle: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
