import 'package:flutter/material.dart';
import 'package:spotify_ui_clone/app/widgets/customText.dart';

import '../utils/utils.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({super.key, required this.title, required this.icons, this.avatarImage});
  final String title;
  final String? avatarImage;
  final List<IconButton> icons;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Utils.navBarHeight,
      child: Padding(
        padding: EdgeInsets.all(Utils.lowPadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                (avatarImage != null)
                    ? Padding(
                        padding: EdgeInsets.only(right: Utils.highPadding),
                        child: CircleAvatar(backgroundImage: AssetImage(avatarImage!)),
                      )
                    : const SizedBox(),
                CustomText.extraHigh(title, bold: true),
              ],
            ),
            Row(children: icons),
          ],
        ),
      ),
    );
  }
}
