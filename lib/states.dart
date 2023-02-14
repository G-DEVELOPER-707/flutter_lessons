import 'package:instagram_ui/models/story_Model.dart';

import 'models/post_Model.dart';
import 'models/started_following_model.dart';

List<StoryModel> stories = [
  StoryModel('assets/images/2tedf0gd14jjg7551d (1).jpg', "@muzikant_707"),
  StoryModel('assets/images/Holimni so_ramela (@UZmirvaMinoR)(1).jpg',
      "G'olibjon Mirzaakramov"),
  StoryModel('assets/images/Kelmaysan (@UZmirvaMinoR).jpg',
      "G'olib Mirzaakramov and Doston"),
  StoryModel('assets/images/Swiss.png', "Travel in Switzerland"),
  StoryModel('assets/images/Swiss.png', "Travel in Switzerland"),
  StoryModel('assets/images/Swiss.png', "Travel in Switzerland"),
];
List<PostModel> posts = [
  PostModel(
      userImage: 'assets/images/Super.jpg',
      userName: '@muzikant_707',
      imagePath: 'assets/images/Swiss.png',
      caption: "Tugadi...",time: "09:00"),
  PostModel(
      userImage: 'assets/images/Super.jpg',
      userName: '@muzikant_707',
      imagePath: 'assets/images/Jonimey (2021).jpg',
      caption: "Tugadi...",time:"07:07"),
  PostModel(
      userImage: 'assets/images/Super.jpg',
      userName: '@muzikant_707',
      imagePath: 'assets/images/UZmir ft. MajoR - Goodbye... (1).jpg',
      caption: "Tugadi...",time:"11:55"),
  PostModel(
      userImage: 'assets/images/Super.jpg',
      userName: '@muzikant_707',
      imagePath: 'assets/images/2tedf0gd14jjg7551d (1).jpg',
      caption: "Tugadi...",time:"22:55"),
  PostModel(
      userImage: 'assets/images/Super.jpg',
      userName: '@muzikant_707',
      imagePath: 'assets/images/uzmir_-_charchadik_sevgidan.jpg',
      caption: "Tugadi...",time:"22:55"),
  PostModel(
      userImage: 'assets/images/Super.jpg',
      userName: '@muzikant_707',
      imagePath: 'assets/images/Kelmaysan (@UZmirvaMinoR).jpg',
      caption: "Tugadi...",time:"22:55"),
  PostModel(
      userImage: 'assets/images/Super.jpg',
      userName: '@muzikant_707',
      imagePath: 'assets/images/UZmir - Chidadim (1).jpg',
      caption: "Tugadi...",time:"22:55"),
];
List<StartModel> startList = [
  StartModel("assets/images/placeholder.jpg", "viruscha_1806", '7d'),
  StartModel("assets/images/Kelmaysan (@UZmirvaMinoR).jpg", "doston_005", '7d'),
  StartModel("assets/images/placeholder.jpg", "akmalovna_12", '7d'),
  StartModel("assets/images/placeholder.jpg", "sevara_a", '7d'),
  StartModel("assets/images/placeholder.jpg", "marhabo__", '7d'),
  StartModel("assets/images/placeholder.jpg", "madina_05_06", '7d'),
  StartModel("assets/images/placeholder.jpg", "soliham_0607", '7d'),
  StartModel("assets/images/placeholder.jpg", "mushtariiiy_", '7d'),
  StartModel("assets/images/placeholder.jpg", "avazbek_0606", '7d'),
  StartModel("assets/images/placeholder.jpg", "abrorbek_abdulboriyev", '7d'),
  StartModel("assets/images/placeholder.jpg", "uzmirofficial", '7d'),
  StartModel("assets/images/placeholder.jpg", "akmalovna_12", '7d'),
  StartModel("assets/images/placeholder.jpg", "sevara_a", '7d'),
  StartModel("assets/images/placeholder.jpg", "marhabo__", '7d'),
  StartModel("assets/images/placeholder.jpg", "madina_05_06", '7d'),
  StartModel("assets/images/placeholder.jpg", "soliham_0607", '7d'),
  StartModel("assets/images/placeholder.jpg", "mushtariiiy_", '7d'),
  StartModel("assets/images/placeholder.jpg", "avazbek_0606", '7d'),
  StartModel("assets/images/placeholder.jpg", "abrorbek_abdulboriyev", '7d'),
  StartModel("assets/images/placeholder.jpg", "uzmirofficial", '7d'),
];
bool isClickedFollow = true;
bool isChecked=false;
var z;
String des="Enter description...";


