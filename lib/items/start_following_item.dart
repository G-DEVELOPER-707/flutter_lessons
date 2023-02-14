import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:instagram_ui/models/started_following_model.dart';
import 'package:instagram_ui/states.dart';

Widget start(BuildContext context, StartModel model, void Function() follow) {
  return Container(
    color: Colors.transparent,
    child: Column(
      children: [
        Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Image(
                image: AssetImage(model.image),
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            SizedBox(
              width: 150,
              child: RichText(
                softWrap: true,
                overflow: TextOverflow.visible,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: model.name,
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: " started following you. ".tr(),
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    TextSpan(
                      text: model.time.tr(),
                      style: const TextStyle(
                        color: Colors.white54,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  model.isFollowing == true
                      ? ElevatedButton(
                          onPressed: () {
                            follow();
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7),
                            ),
                          ),
                          child: Text(
                            "Following".tr(),
                            style: const TextStyle(fontSize: 16),
                          ),
                        )
                      : ElevatedButton(
                          onPressed: () {
                            follow();
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7),
                            ),
                          ),
                          child: Text(
                            "Follow".tr(),
                            style: const TextStyle(fontSize: 16),
                          ),
                        )
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    ),
  );
}
