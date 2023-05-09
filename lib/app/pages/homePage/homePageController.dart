import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../style/colorTable.dart';
import '../../widgets/filterBubble.dart';

class HomePageController extends GetxController {
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
