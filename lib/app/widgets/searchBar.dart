import 'package:flutter/material.dart';

import '../style/colorTable.dart';
import '../utils/utils.dart';
import 'customText.dart';

class SearchBar extends StatelessWidget {
  const SearchBar(
      {super.key,
      required this.backgroundColor,
      required this.text,
      required this.width,
      required this.height,
      required this.textColor,
      this.bold = true});
  final Color backgroundColor;
  final Color textColor;
  final String text;
  final double? width;
  final double? height;
  final bool bold;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(color: backgroundColor),
      child: SizedBox(
        width: width,
        height: height,
        child: ListTile(
          dense: true,
          tileColor: Colors.transparent,
          leading: Icon(
            Icons.search,
            size: Utils.highIconSize,
            color: textColor,
          ),
          horizontalTitleGap: 0,
          title: CustomText(text, textColor: textColor, bold: bold),
        ),
      ),
    );
  }
}
