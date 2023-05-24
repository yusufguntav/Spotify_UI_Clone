import 'package:flutter/material.dart';

import 'content.dart';

class Album {
  String title;
  String? subTitle;
  List<Content> content;
  String? imagePath;
  Color? backgroundColor;
  Icon? icon;
  String type;
  bool pinned;
  bool active;

  Album(this.title, this.content, this.icon, this.imagePath, this.subTitle, this.backgroundColor, this.type,
      {this.pinned = false, this.active = false});
}
