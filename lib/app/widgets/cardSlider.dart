import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify_ui_clone/app/widgets/bigCard.dart';

import '../models/content.dart';
import '../utils/utils.dart';

class CardSlider extends StatelessWidget {
  const CardSlider({super.key, required this.content});
  final List<Content> content;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      height: Get.height * .3,
      child: ListView.separated(
          separatorBuilder: (context, index) => SizedBox(width: Utils.normalPadding),
          scrollDirection: Axis.horizontal,
          itemCount: content.length,
          itemBuilder: (context, index) => BigCustomCard(content: content[index])),
    );
  }
}
