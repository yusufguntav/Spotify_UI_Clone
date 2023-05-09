import 'package:flutter/material.dart';

import '../style/colorTable.dart';
import '../utils/utils.dart';
import 'customText.dart';

class FilterBubble extends StatelessWidget {
  const FilterBubble({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: ColorTable.filterBubbleBackgroundColor,
        borderRadius: BorderRadius.horizontal(
          left: Radius.circular(Utils.highRadius),
          right: Radius.circular(Utils.highRadius),
        ),
      ),
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: Utils.normalPadding),
        child: CustomText(title),
      ),
    );
  }
}
