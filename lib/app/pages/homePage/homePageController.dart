import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify_ui_clone/app/widgets/bigCard.dart';

import '../../../variables/enums.dart';
import '../../models/content.dart';
import '../../style/colorTable.dart';
import '../../widgets/card.dart';
import '../../widgets/filterBubble.dart';

class HomePageController extends GetxController {
  List<Content> contents = [
    Content(Images.image1.getImagePath, ['Comedy', 'Fiction'], 'yusufguntav', 'Something Podcast!'),
    Content(Images.image5.getImagePath, ['Art', 'Business'], 'mack', 'Make Money'),
    Content(Images.image3.getImagePath, [], 'newguy', 'Radio?'),
    Content(Images.image2.getImagePath, ['Sports'], 'fit man', 'True Way'),
    Content(Images.image4.getImagePath, ['Arts', 'Educational'], 'reader', 'Book101'),
    Content(Images.image6.getImagePath, ['Business', 'Technology'], 'techguy', 'AI'),
  ];

  RxList<CustomCard> cards = <CustomCard>[].obs;
  RxList<BigCustomCard> bigCards = <BigCustomCard>[].obs;
  @override
  void onReady() {
    cards.value = [
      for (int i = 0; i < contents.length; i++) ...[CustomCard(content: contents[i])]
    ];
    bigCards.value = [
      for (int i = 0; i < 3; i++) ...[BigCustomCard(content: contents[i])]
    ];
    super.onReady();
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
