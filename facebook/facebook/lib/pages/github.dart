import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Color.fromARGB(255, 90, 90, 90),
              size: 35,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.photo_camera,
              color: Color.fromARGB(255, 90, 90, 90),
              size: 35,
            ),
          ),
        ],
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          "facebook",
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.w600, color: Colors.blue),
        ),
      ),
      body: ListView(
        children: [
          // search
          Container(
            padding: const EdgeInsets.all(16),
            width: double.infinity,
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage("assets/images/hojiboy.jpg"),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: Container(
                        height: 45,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: Colors.grey)),
                        child: const TextField(
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(8),
                              hintText: "What's on your mind?",
                              hintStyle:
                                  TextStyle(color: Colors.grey, fontSize: 16),
                              border: InputBorder.none),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 14,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: const [
                        Icon(
                          Icons.live_tv_rounded,
                          color: Colors.red,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text("Live"),
                      ],
                    ),
                    Container(
                      width: 1.2,
                      height: 18,
                      color: Colors.grey,
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.photo,
                          color: Colors.green,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text("Photo"),
                      ],
                    ),
                    Container(
                      width: 1,
                      height: 18,
                      color: Colors.grey,
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.location_on,
                          color: Colors.red,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text("Check in"),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            width: double.infinity,
            height: 200,
            color: Colors.white,
            child: ListView(
              physics: const FixedExtentScrollPhysics(),
              scrollDirection: Axis.horizontal, children: [
              
              storyItem(),
              storyItem(),
              storyItem(),
              storyItem(),
              storyItem(),
              storyItem(),

              Row(children: [
                const Icon(Icons.ac_unit_rounded),
                //Transform.translate(offset: const Offset(-10,1),child: const Icon(Icons.favorite),),
              ],)
            ]),
          )
        ],
      ),
    );
  }
}

Widget storyItem({String? avatarImg, String? storyImg, String? text}) {
  return AspectRatio(
    aspectRatio: 1.3 / 2,
    child: Container(
      
      margin: const EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: const DecorationImage(
         fit: BoxFit.cover,
          image: AssetImage("assets/images/part.jpg"),
        ),
      ),
      child: Container(
        margin: const EdgeInsets.only(left:8,bottom: 120,right: 50),
        decoration: BoxDecoration(
        image: const DecorationImage(image: AssetImage("assets/images/hojiboy.jpg")),
          shape: BoxShape.circle,
          border: Border.all(color: Colors.blue,width: 2.5),
        ),
       
      ),
    ),
  );
}