import 'package:flutter/material.dart';
import 'package:spotify_ui_clone/app/widgets/customText.dart';

import '../utils/utils.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({super.key, required this.title, required this.icons});
  final String title;
  final List<IconButton> icons;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Utils.lowPadding),
      height: Utils.appBarHeight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText.extraHigh(
            title,
            bold: true,
          ),
          Row(children: icons),
        ],
      ),
    );
  }
}
