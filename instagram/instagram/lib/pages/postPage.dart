import 'package:flutter/material.dart';
import 'package:instagram/model/story_model.dart';

class PostPage extends StatefulWidget {
  const PostPage({super.key});

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  List<StoryModel> _storys = [
    StoryModel(img: "assets/images/4.png", name: "NemNig"),
    StoryModel(img: "assets/images/4.png", name: "NemNig"),
    StoryModel(img: "assets/images/4.png", name: "NemNig"),
    StoryModel(img: "assets/images/4.png", name: "NemNig"),
  
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        shadowColor: Colors.white,
        backgroundColor: Colors.black,
        title: Text(
          "Instagram",
          style: TextStyle(
              color: Colors.white, fontFamily: "Billabong", fontSize: 40),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add_circle_outline_outlined,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.message,
            ),
          ),
        ],
      ),
      body: Column(
      children: [
          _StoryItem(img: "assets/images/4.png", name: "NemNig"),
            _StoryItem(img: "assets/images/4.png", name: "NemNig"),
              _StoryItem(img: "assets/images/4.png", name: "NemNig"),
                _StoryItem(img: "assets/images/4.png", name: "NemNig"),
      ],
      ),
      backgroundColor: Colors.black,
    );
  }
}

Widget _StoryItem({String? img, String? name}) {
  return Container(
    width: 100,
    height: 100,
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          Color.fromARGB(255, 241, 104, 94),
          Color.fromARGB(255, 211, 194, 45),
          Color.fromARGB(255, 159, 53, 178)
        ],
      ),
    ),
    child: Container(
      width: 95,
      height: 95,
      color: Colors.black,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(img!),
          ),
        ),
      ),
    ),
  );
}
