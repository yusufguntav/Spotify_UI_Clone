import 'package:flutter/material.dart';

import '../models/content.dart';
import '../utils/utils.dart';
import 'cardSlider.dart';
import 'customText.dart';

class SliderAndTitle extends StatelessWidget {
  const SliderAndTitle({super.key, required this.content, required this.title});
  final List<Content> content;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText.extraHigh(title, bold: true),
        SizedBox(height: Utils.normalPadding),
        CardSlider(content: content),
      ],
    );
  }
}
