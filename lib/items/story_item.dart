import 'package:flutter/material.dart';

import '../models/story_Model.dart';

Widget StoryItem(StoryModel story) {
  return Column(
    children: [
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(70),
          border: Border.all(
            width: 2,
            color: story.isSeen ? Colors.grey : const Color(0xffb71c73),
          ),
        ),
        child: Container(
          padding: const EdgeInsets.all(2),
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
            style: const TextStyle(fontWeight: FontWeight.w400,color: Colors.white),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      )
    ],
  );
}
