import 'package:flutter/material.dart';

import 'content.dart';

class Album {
  String title;
  String creator;
  String? subTitle;
  List<Content> content;
  String? imagePath;
  Color? backgroundColor;
  Icon? icon;
  int likes;
  List<String>? tags;
  String type;
  bool pinned;
  bool active;

  Album(
      {required this.title,
      required this.creator,
      required this.content,
      this.icon,
      this.likes = 0,
      this.imagePath,
      this.subTitle,
      this.backgroundColor,
      required this.type,
      this.tags,
      this.pinned = false,
      this.active = false});
}
