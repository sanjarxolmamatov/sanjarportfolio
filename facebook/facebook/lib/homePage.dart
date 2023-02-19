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
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        elevation: 0,
        title: const Text(
          "facebook",
          style: TextStyle(
              color: Colors.blue, fontWeight: FontWeight.w600, fontSize: 30),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search, color: Colors.grey),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.camera_alt,
              color: Colors.grey,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            color: const Color.fromARGB(255, 0, 0, 0),
            width: double.infinity,
            height: 120,
            child: Column(
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      child: Image(
                        image: AssetImage("assets/images/1.png"),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.grey),
                        ),
                        child: const TextField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(left: 8, bottom: 8),
                            border: InputBorder.none,
                            hintText: "What's on your mind?",
                            hintStyle: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.live_tv_rounded,
                              color: Colors.red,
                            ),
                          ),
                          const Text(
                            "Live",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 1.2,
                      height: 18,
                      color: Colors.grey,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.photo,
                              color: Colors.green,
                            ),
                          ),
                          const Text(
                            "Photo",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 1.2,
                      height: 18,
                      color: Colors.grey,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.location_on,
                              color: Colors.red,
                            ),
                          ),
                          const Text(
                            "Chekn in",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
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
            height: 230,
            color: const Color.fromARGB(255, 0, 0, 0),
            child: ListView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: [
                storyItem(
                  storyimg: "assets/images/2.jpg",
                  image: const AssetImage("assets/images/3.jpg"),
                ),
                storyItem(
                  storyimg: "assets/images/3.jpg",
                  image: const AssetImage("assets/images/3.jpg"),
                ),
                storyItem(
                  storyimg: "assets/images/4.jpg",
                  image: const AssetImage("assets/images/3.jpg"),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            height: 320,
            color: Colors.black,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage("assets/images/2.jpg"),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "User Two",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "1 hr ago",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 200),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.more_horiz_rounded,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10),
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "All the Lorem ipsum generators on the internet",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 10,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "tend to repeat predefined.",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 10,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        height: 200,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              "assets/images/3.jpg",
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        height: 200,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              "assets/images/4.jpg",
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Stack(
                        children: [
                          Expanded(
                            child: Container(
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                  image: AssetImage("assets/images/5.png"),
                                ),
                              ),
                            ),
                          ),
                           Padding(
                             padding: const EdgeInsets.only(left: 16),
                             child: Expanded(
                              child: Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: const DecorationImage(
                                    image: AssetImage("assets/images/6.png"),
                                  ),
                                ),
                              ),
                          ),
                           ),
                        ],
                      ),
                    ),
                    const Text("2.5k",style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.bold),),
                    const Padding(
                      padding: EdgeInsets.only(left: 230),
                      child: Text("400 Comments",style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.bold),),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
      backgroundColor: Color.fromARGB(255, 102, 88, 88),
    );
  }
}

Widget storyItem({
  String? avatarimg,
  String? storyimg,
  String? text,
  required ImageProvider image,
}) {
  return AspectRatio(
    aspectRatio: 1.3 / 2,
    child: Container(
      margin: const EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(storyimg!),
        ),
      ),
      child: Container(
        margin: const EdgeInsets.only(bottom: 170, right: 90),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.blue, width: 2.5),
        ),
        child: CircleAvatar(
          radius: 100,
          backgroundColor: Colors.blue,
          child: CircleAvatar(
            radius: 90,
            backgroundImage: image,
          ),
        ),
      ),
    ),
  );
}
