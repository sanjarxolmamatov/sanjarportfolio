import 'dart:io';

import 'package:flutter/material.dart';
import 'package:herewego/services/storage.dart';
import 'package:image_picker/image_picker.dart';

import '../model/post.dart';
import '../services/pref.dart';
import '../services/rtdb.dart';

class CreatePage extends StatefulWidget {
  const CreatePage({super.key});

  @override
  State<CreatePage> createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  TextEditingController firstController = TextEditingController();
  TextEditingController contentController = TextEditingController();
  TextEditingController lastController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  bool isLoading = false;

  File? _image;

  final _picker = ImagePicker();

  _getImage() async {
    XFile? img = await _picker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = File(img!.path);
    });
  }

  _addPost(String imgUrl) async {
    
    String? first = firstController.text;
    String? last = lastController.text;

    String? content = contentController.text;
    String? date = dateController.text;

    PostModel post =
        PostModel(first, last, content, date, imgUrl, await Pref.getUserId());

    RTDB.addPost(post).then((value) {
        setState(() {
          isLoading = false;
        });
      Navigator.pop(context, {"info": "malumot yangillandi"});
    });
  }

  _getImgUrl() async {
    setState(() {
      isLoading = true;
    });
    Storage.uploadImage(_image!).then((value) async {
      _addPost(value!);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Add Post"),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
                margin: const EdgeInsets.all(30),
                child: Column(
                  //crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    InkWell(
                      onTap: () {
                        _getImage();
                      },
                      child: _image != null
                          ? Container(
                              width: 200,
                              height: 200,
                              margin: const EdgeInsets.all(30),
                              child: Image.file(
                                _image!,
                                fit: BoxFit.cover,
                              ),
                            )
                          : const Image(
                              width: 100,
                              height: 100,
                              image: AssetImage("assets/images/camera.png")),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text("Rasmni yuklash"),
                      ],
                    ),
                    TextField(
                      controller: firstController,
                      decoration: const InputDecoration(labelText: "Firstname"),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextField(
                      controller: lastController,
                      decoration: const InputDecoration(labelText: "Lastname"),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextField(
                      controller: contentController,
                      decoration: const InputDecoration(labelText: "Content"),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextField(
                      controller: dateController,
                      decoration: const InputDecoration(labelText: "date"),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                                Colors.deepOrangeAccent)),
                        onPressed: () async {
                          _getImgUrl();
                        },
                        child: const Text("Add Post"))
                  ],
                )),
          ),
          isLoading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : Container()
        ],
      ),
    );
  }
}
