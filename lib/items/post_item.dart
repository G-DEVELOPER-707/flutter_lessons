import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:instagram_ui/models/post_Model.dart';

import '../states.dart';

Widget postItem(BuildContext context, PostModel post, void Function() liked,
    void Function() liked2) {
  return Container(
    color: Colors.black,
    margin: const EdgeInsets.symmetric(vertical: 5),
    child: Column(
      children: [
        Stack(
          children: [
            InkWell(
              onDoubleTap: () {
                liked();
              },
              child: post.imagePath.startsWith('assets')
                  ? FadeInImage(
                      image: AssetImage(post.imagePath!),
                      placeholder:
                          const AssetImage('assets/images/placeholder.jpg'),
                      width: MediaQuery.of(context).size.width,
                    )
                  : Image.file(File(post.imagePath)),
            ),
            Positioned(
              child: Container(
                width: double.infinity,
                height: 50,
                color: Colors.black.withOpacity(0.2),
              ),
            ),
            Positioned(
              child: Container(
                color: Colors.black,
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: Image(
                            image: AssetImage(post.userImage),
                            width: 40,
                            height: 40,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          post.userName,
                          style: const TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    IconButton(
                      onPressed: () {
                        showModalBottomSheet(
                            backgroundColor: Colors.transparent,
                            context: context,
                            builder: (context) {
                              return Container(
                                height: 400,
                                decoration: const BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(25),
                                    topLeft: Radius.circular(25),
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Column(
                                            children: [
                                              ElevatedButton(
                                                onPressed: () {},
                                                style: ElevatedButton.styleFrom(
                                                    shadowColor: Colors.white,
                                                    side: const BorderSide(
                                                        color: Colors.white),
                                                    minimumSize: const Size(
                                                        55, 57),
                                                    backgroundColor:
                                                        Colors.black,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        77))),
                                                child: const Icon(Icons.share),
                                              ),
                                              const SizedBox(
                                                height: 7,
                                              ),
                                               Text(
                                                "Share".tr(),
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            width: 15,
                                          ),
                                          Column(
                                            children: [
                                              ElevatedButton(
                                                onPressed: () {},
                                                style: ElevatedButton.styleFrom(
                                                    shadowColor: Colors.white,
                                                    side: const BorderSide(
                                                        color: Colors.white),
                                                    minimumSize: const Size(
                                                        55, 57),
                                                    backgroundColor:
                                                        Colors.black,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        77))),
                                                child: const Icon(
                                                    Icons.link_outlined),
                                              ),
                                              const SizedBox(
                                                height: 7,
                                              ),
                                               Text(
                                                "Link".tr(),
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            width: 15,
                                          ),
                                          Column(
                                            children: [
                                              ElevatedButton(
                                                onPressed: () {},
                                                style: ElevatedButton.styleFrom(
                                                    shadowColor: Colors.white,
                                                    side: const BorderSide(
                                                        color: Colors.white),
                                                    minimumSize: const Size(
                                                        55, 57),
                                                    backgroundColor:
                                                        Colors.black,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        77))),
                                                child: const Icon(Icons
                                                    .bookmark_border_outlined),
                                              ),
                                              const SizedBox(
                                                height: 7,
                                              ),
                                               Text(
                                                "Save".tr(),
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            width: 15,
                                          ),
                                          Column(
                                            children: [
                                              ElevatedButton(
                                                onPressed: () {},
                                                style: ElevatedButton.styleFrom(
                                                    shadowColor: Colors.white,
                                                    side: const BorderSide(
                                                        color: Colors.white),
                                                    minimumSize: const Size(
                                                      55,
                                                      57,
                                                    ),
                                                    backgroundColor:
                                                        Colors.black,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        77))),
                                                child: const Icon(
                                                    Icons.add_box_outlined),
                                              ),
                                              const SizedBox(
                                                height: 7,
                                              ),
                                               Text(
                                                "Remix".tr(),
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            width: 15,
                                          ),
                                          Column(mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              ElevatedButton(
                                                onPressed: () {},
                                                style: ElevatedButton.styleFrom(
                                                    shadowColor: Colors.white,
                                                    side: const BorderSide(
                                                        color: Colors.white),
                                                    minimumSize: const Size(
                                                        55, 57),
                                                    backgroundColor:
                                                        Colors.black,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        77))),
                                                child: const Icon(Icons
                                                    .qr_code_scanner_outlined),
                                              ),
                                              const SizedBox(
                                                height: 7,
                                              ),
                                               Text(
                                                "QR code".tr(),
                                                style: TextStyle(
                                                    color: Colors.white,),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 30,
                                    ),
                                    ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.transparent,
                                        minimumSize: Size(
                                            MediaQuery.of(context).size.width,
                                            15),
                                      ),
                                      child: Row(
                                        children:  [
                                          Icon(
                                            Icons.star_outline,
                                            color: Colors.white,
                                          ),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          Text(
                                            "Add to Favourites".tr(),
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 7,
                                    ),
                                    ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.transparent,
                                        minimumSize: Size(
                                            MediaQuery.of(context).size.width,
                                            25),
                                      ),
                                      child: Row(
                                        children:  [
                                          Icon(
                                            Icons.person_remove_outlined,
                                            color: Colors.white,
                                          ),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          Text(
                                            "Unfollow".tr(),
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 7,
                                    ),
                                    ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.transparent,
                                        minimumSize: Size(
                                            MediaQuery.of(context).size.width,
                                            15),
                                      ),
                                      child: Row(
                                        children:  [
                                          Icon(
                                            Icons.info_outline,
                                            color: Colors.white,
                                          ),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          Text(
                                            "Why you're seeing this post".tr(),
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 7,
                                    ),
                                    ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.transparent,
                                        minimumSize: Size(
                                            MediaQuery.of(context).size.width,
                                            15),
                                      ),
                                      child: Row(
                                        children:  [
                                          Icon(
                                            Icons.remove_red_eye_outlined,
                                            color: Colors.white,
                                          ),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          Text(
                                            "Hide".tr(),
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 7,
                                    ),
                                    ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.transparent,
                                        minimumSize: Size(
                                            MediaQuery.of(context).size.width,
                                            15),
                                      ),
                                      child: Row(
                                        children:  [
                                          Icon(
                                            Icons.report_gmailerrorred_outlined,
                                            color: Colors.red,
                                          ),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          Text(
                                            "Report".tr(),
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            });
                      },
                      icon: const Icon(
                        Icons.more_vert,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    liked();
                    liked2();
                  },
                  icon: post.isLiked == true
                      ? const Icon(
                          Icons.favorite,
                          color: Colors.redAccent,
                        )
                      : const Icon(
                          Icons.favorite_outline,
                          color: Colors.white,
                        ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.wechat,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.send,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.bookmark_border,
                color: Colors.white,
              ),
            ),
          ],
        ),
        // #tags
        Container(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.symmetric(horizontal: 14),
          child: RichText(
            softWrap: true,
            overflow: TextOverflow.visible,
            text:  TextSpan(
              children: [
                TextSpan(
                  text: "Liked By ".tr(),
                  style: TextStyle(color: Colors.white),
                ),
                TextSpan(
                  text: "Sigmund, Yessenina, Dayana ",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: " and".tr(),
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                TextSpan(
                  text: " 1263 others".tr(),
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),

        //#caption

        Container(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
          child: RichText(
            softWrap: true,
            overflow: TextOverflow.visible,
            text: TextSpan(
              children: [
                TextSpan(
                  text: post.userName,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                TextSpan(
                  text: " ${post.caption}",
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),

        // #postDate

        Container(
          margin: const EdgeInsets.symmetric(horizontal: 14),
          alignment: Alignment.topLeft,
          child:  Text(
            post.time,
            textAlign: TextAlign.start,
            style: TextStyle(color: Colors.grey),
          ),
        ),
      ],
    ),
  );
}
