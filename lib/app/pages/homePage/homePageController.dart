// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../variables/enums.dart';
import '../../models/content.dart';
import '../../style/colorTable.dart';
import '../../widgets/filterBubble.dart';

class HomePageController extends GetxController {
  List<Content> contents = [
    Content(Images.image1.getImagePath, [Type.comedy.getName, Type.fiction.getName], 'yusufguntav', 'Something Podcast!'),
    Content(Images.image5.getImagePath, [Type.art.getName, Type.business.getName], 'mack', 'Make Money'),
    Content(Images.image3.getImagePath, [], 'newguy', 'Radio?'),
    Content(Images.image2.getImagePath, [Type.sports.getName], 'fit man', 'True Way'),
    Content(Images.image4.getImagePath, [Type.art.getName, Type.educational.getName], 'reader', 'Book101'),
    Content(Images.image6.getImagePath, [Type.business.getName, Type.technology.getName], 'techguy', 'AI'),
  ];

  List<Content> getShuffledContent() {
    // We use toList method because we don't want reference list
    List<Content> shuffledContent = contents.toList();
    shuffledContent.shuffle();
    return shuffledContent;
  }

  final List<IconButton> icons = [
    IconButton(onPressed: () {}, icon: const Icon(Icons.notifications, color: ColorTable.darkThemeIconColor)),
    IconButton(onPressed: () {}, icon: const Icon(Icons.history, color: ColorTable.darkThemeIconColor)),
    IconButton(onPressed: () {}, icon: const Icon(Icons.settings, color: ColorTable.darkThemeIconColor)),
  ];
  List<FilterBubble> filterBubbles = const [
    FilterBubble(title: 'Music'),
    FilterBubble(title: 'Podcast & Shows'),
  ];
}
