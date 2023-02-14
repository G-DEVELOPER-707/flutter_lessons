import 'package:flutter/material.dart';
import 'package:instagram_ui/items/post_item.dart';
import 'package:instagram_ui/models/post_Model.dart';
import 'package:instagram_ui/states.dart';
import 'package:instagram_ui/storages.dart';

import '../items/story_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    stories.sort((a, b) => a.isSeen.toString().compareTo(b.isSeen.toString()));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        centerTitle: true,
        shadowColor: Colors.orange,
        foregroundColor: Colors.orange,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Text(
              "Instagram",
              style: TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  fontFamily: "Billabong"),
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.message_outlined,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //#stroyList
            Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Stack(children: [
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(70),
                            border: Border.all(width: 2, color: Colors.grey),
                          ),
                          child: Center(
                            child: Container(
                              padding: const EdgeInsets.all(2),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(70),
                                child: const Image(
                                  image: AssetImage('assets/images/Super.jpg'),
                                  width: 70,
                                  height: 70,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 60,
                          top: 60,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.blue),
                            child: InkWell(
                              onTap: () {},
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 16,
                              ),
                            ),
                          ),
                        )
                      ]),
                      const SizedBox(
                        width: 80,
                        child: Center(
                          child: Text(
                            "muzikant_707",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      )
                    ],
                  ),
                  // Expanded(
                  //child:
                  Container(
                    width: MediaQuery.of(context).size.width - 88,
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    height: 110,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      children: stories.map((story) {
                        return StoryItem(story);
                      }).toList(),
                    ),
                  )
                ]),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: box?.values.length,
                  itemBuilder: (ctx, i) {
                    return postItem(context, box!.getAt(box!.values.length-1-i)!, () {
                      setState(() {});
                    }, () {
                      // posts[i].isLiked2 = !posts[i].isLiked2;
                      setState(() {});
                    });
                  }),
            ),

            // #postList

            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: posts.length,
                  itemBuilder: (ctx, i) {
                    return postItem(context, posts[posts.length - 1 - i], () {
                      posts[i].isLiked = !posts[i].isLiked;
                      posts[i].isLiked2 = !posts[i].isLiked2;

                      setState(() {});
                    }, () {
                      posts[i].isLiked = !posts[i].isLiked;
                      // posts[i].isLiked2 = !posts[i].isLiked2;
                      setState(() {});
                    });
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
