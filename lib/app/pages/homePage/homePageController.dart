import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../variables/enums.dart';
import '../../style/colorTable.dart';
import '../../widgets/card.dart';
import '../../widgets/filterBubble.dart';

class HomePageController extends GetxController {
  final List<CustomCard> cards = [
    CustomCard(
      title: 'Liked Songs',
      imagePath: Images.image2.getImagePath,
    ),
    CustomCard(
      title: 'Highway',
      imagePath: Images.image1.getImagePath,
    ),
    CustomCard(
      title: 'Sky',
      imagePath: Images.image3.getImagePath,
    ),
    CustomCard(
      title: 'RED',
      imagePath: Images.image4.getImagePath,
    ),
    CustomCard(
      title: 'Ocean',
      imagePath: Images.image5.getImagePath,
    ),
    CustomCard(
      title: 'Blue',
      imagePath: Images.image6.getImagePath,
    ),
  ];

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
