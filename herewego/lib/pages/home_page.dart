import 'package:flutter/material.dart';

import '../model/post.dart';
import '../services/auth.dart';
import '../services/pref.dart';
import '../services/rtdb.dart';
import 'create_page.dart';
import 'sign_in.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isLoading = false;

  List<PostModel> posts = [];

  _getPost() async {
    setState(() {
      posts.clear();
    });
    RTDB.getPost(await Pref.getUserId()).then((value) {
      setState(() {
        posts = value;
        isLoading = true;
      });
    });
  }

  _updatePosts() async {
    setState(() {
      isLoading = true;
    });
    Map? map = await Navigator.push(
        context, MaterialPageRoute(builder: (context) => const CreatePage()));
    if (map != null) {
      _getPost();
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getPost();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrangeAccent,
          centerTitle: true,
          title: const Text("Posts"),
          actions: [
            IconButton(
                onPressed: () {
                  AuthService.logout().then((value) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignIn()));
                  });
                },
                icon: const Icon(Icons.exit_to_app))
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.deepOrangeAccent,
          onPressed: () async {
            _updatePosts();
          },
          child: const Icon(Icons.add),
        ),
        body: Stack(
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              child: ListView.builder(
                  itemCount: posts.length,
                  itemBuilder: ((context, index) => _postItem(posts[index]))),
            ),
            !isLoading
                ? const Center(
                    child: CircularProgressIndicator(
                      color: Colors.blue,
                    ),
                  )
                : Container(),
          ],
        ));
  }
}

Widget _postItem(PostModel post) {
  return Container(
    padding: const EdgeInsets.all(10),
    margin: const EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
            width: 100,
            height: 100,
            child: Image.network(
              post.imgUrl!,
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            )),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "${post.first!} ${post.last!}",
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              post.date!,
              style: const TextStyle(
                fontSize: 14,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              post.content!,
              style: const TextStyle(
                fontSize: 14,
              ),
            )
          ],
        ),
      ],
    ),
  );
}
