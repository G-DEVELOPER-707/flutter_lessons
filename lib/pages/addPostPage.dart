import 'dart:io';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:instagram_ui/models/post_Model.dart';
import 'package:instagram_ui/pages/HomePage.dart';
import 'package:instagram_ui/pages/mainView.dart';
import 'package:instagram_ui/states.dart';

import '../storages.dart';

class AddPostPage extends StatefulWidget {
  const AddPostPage({Key? key}) : super(key: key);

  @override
  State<AddPostPage> createState() => _AddPostPageState();
}

class _AddPostPageState extends State<AddPostPage> {
  var descriptionCtr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Add post".tr(),
          style: const TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.w500,
              fontFamily: "Billabong"),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 500,
                margin: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: image.path == ""
                    ? Center(
                        child: Text(
                          "Choose image for new post".tr(),
                          style: const TextStyle(color: Colors.white),
                        ),
                      )
                    : Image.file(
                        image,
                        fit: BoxFit.cover,
                        filterQuality: FilterQuality.low,
                      ),
              ),
              image.path != ""
                  ? Container(
                      padding: const EdgeInsets.all(5),
                      decoration: const BoxDecoration(color: Colors.orange),
                      child: TextFormField(
                        keyboardType: TextInputType.name,
                        controller: descriptionCtr,
                        cursorColor: Colors.orange,
                        cursorHeight: 7,
                        decoration:  InputDecoration(
                          counterStyle: TextStyle(color: Colors.white),
                          hintText: "Enter description...".tr(),
                          border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.orange, width: 1)),
                          hintStyle: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.cyanAccent, width: 2),
                          ),
                        ),
                      ),
                    )
                  : Text(
                      "You can get image from camera or gallery".tr(),
                      style: TextStyle(color: Colors.white54),
                    ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        side: const BorderSide(color: Colors.orange, width: 4),
                        minimumSize: Size(120, 45)),
                    onPressed: () {
                      showModalBottomSheet(
                        backgroundColor: Colors.black,
                        context: context,
                        builder: (context) => Container(
                          color: Colors.transparent,
                          height: 150,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 35),
                            child: Column(
                              children: [
                                ListTile(
                                  leading: Icon(
                                    Icons.camera_alt,
                                    color: Colors.orange,
                                  ),
                                  title: Text(
                                    "Take a photo".tr(),
                                    style: TextStyle(
                                        color: Colors.orange,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  onTap: () async {
                                    await _pickImage(ImageSource.camera);
                                    Navigator.pop(context);
                                  },
                                ),
                                Divider(
                                  thickness: 2,
                                  color: Colors.orange,
                                ),
                                ListTile(
                                  leading: const Icon(
                                    Icons.image,
                                    color: Colors.orange,
                                  ),
                                  title: Text(
                                    "Open Gallery".tr(),
                                    style: TextStyle(
                                        color: Colors.orange,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  onTap: () async {
                                    await _pickImage(ImageSource.gallery);
                                    Navigator.pop(context);
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    child: Text(
                      "Choose Image".tr(),
                      style: const TextStyle(color: Colors.black),
                    ),
                  ),
                  image.path != ""
                      ? ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              side: const BorderSide(
                                  color: Colors.greenAccent, width: 4),
                              minimumSize: Size(120, 45)),
                          onPressed: () {
                            if (descriptionCtr.text.isNotEmpty &&
                                image.path != "") {
                              box!.add(PostModel(
                                userImage: 'assets/images/Super.jpg',
                                userName: "@muzikant_707",
                                imagePath: image.path,
                                caption: descriptionCtr.text,
                                time: "17:16"
                              ));
                              setState(() {

                              });


                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (BuildContext context) {
                                return const MainView();
                              }));
                              setState(() {});
                            }
                          },
                          child:  Text(
                            "Upload".tr(),
                            style: TextStyle(color: Colors.black),
                          ),
                        )
                      : const SizedBox()
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _pickImage(ImageSource source) async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: source);
    setState(() {
      image = File(pickedFile!.path);
    });
  }

  File image = File("");

}
