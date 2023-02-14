
import 'package:hive/hive.dart';
part 'post_Model.g.dart';

@HiveType(typeId: 0)
class PostModel {
  @HiveField(0)
  final String userImage;
  @HiveField(1)
  final String userName;
  @HiveField(2)
  String imagePath;
  @HiveField(3)
  final String caption;

  String time;


  bool isLiked = false;
  bool isLiked2 = false;

  PostModel({
    required this.userImage,
    required this.userName,
    required this.imagePath,
    required this.caption,
    required this.time
  });
}

