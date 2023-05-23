// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:spotify_ui_clone/app/style/colorTable.dart';
import 'package:spotify_ui_clone/app/widgets/filterBubble.dart';

import '../utils/utils.dart';

class FilterSlider extends StatelessWidget {
  const FilterSlider({super.key, required this.filterCount, required this.filterBubbles});
  final int filterCount;
  final List<FilterBubble> filterBubbles;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(color: ColorTable.darkThemeBackgroundColor),
      child: SizedBox(
        height: Utils.appBarHeight,
        child: Padding(
          padding: EdgeInsets.all(Utils.lowPadding),
          child: ListView.separated(
            separatorBuilder: (context, index) => SizedBox(width: Utils.lowPadding),
            scrollDirection: Axis.horizontal,
            itemCount: filterCount,
            itemBuilder: (context, index) => filterBubbles[index],
          ),
        ),
      ),
    );
  }
}
