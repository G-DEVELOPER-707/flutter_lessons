import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/story_Model.dart';

Widget StoryItem(StoryModel story) {
  return Column(
    children: [
      Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(70),
          border: Border.all(
            width: 2,
            color: story.isSeen ? Colors.grey : Color(0xffb71c73),
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(2),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(70),
            child: Image(
              image: AssetImage(story.image),
              width: 70,
              height: 70,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      SizedBox(
        width: 80,
        child: Center(
          child: Text(
            story.name,
            style: const TextStyle(fontWeight: FontWeight.w400),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      )
    ],
  );
}
