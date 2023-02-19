import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:healthylife/config/constants.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Yangiliklar")),
      body: StaggeredGridView.extentBuilder(
        itemCount: 10,
        maxCrossAxisExtent: 250,
        padding: const EdgeInsets.symmetric(
            horizontal: defaultPadding, vertical: defaultPadding / 2),
        itemBuilder: (context, index) => NewsCard(
            "assets/images/news_image.png",
            index.isEven
                ? "Amudaryoda yangi shifohona"
                : "In publishing and graphic design, Lorem ipsum is a placeholder."),
        staggeredTileBuilder: (index) => const StaggeredTile.fit(1),
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
      ),
    );
  }
}

class NewsCard extends StatelessWidget {
  final String image;
  final String title;

  const NewsCard(this.image, this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFEEEEFB),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 20),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Image.asset(image),
                Container(
                  height: 32,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.black.withOpacity(0.6),
                      Colors.transparent
                    ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8, top: 10),
                    child: Row(
                      children: [
                        SvgPicture.asset("assets/icons/eye.svg"),
                        const SizedBox(width: 2),
                        const Text("213",
                            style:
                                TextStyle(color: Colors.white, fontSize: 12)),
                        const Spacer(),
                        const Text("13:21",
                            style:
                                TextStyle(color: Colors.white, fontSize: 12)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black.withOpacity(0.6),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
