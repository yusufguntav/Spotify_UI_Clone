import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify_ui_clone/variables/enums.dart';

import '../style/colorTable.dart';
import '../utils/utils.dart';
import 'customText.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.title,
    required this.imagePath,
  });
  final String title;
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(color: ColorTable.darkThemeContentBackgroundColor, borderRadius: BorderRadius.circular(10)),
      child: SizedBox(
        height: Get.height * .075,
        child: Row(
          children: [
            DecoratedBox(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(Utils.lowRadius / 2)),
              child: SizedBox(
                height: Get.height * .08,
                width: Get.width * .15,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(Utils.lowRadius / 2), bottomLeft: Radius.circular(Utils.lowRadius / 2)),
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            SizedBox(width: Utils.lowPadding),
            CustomText(title)
          ],
        ),
      ),
    );
  }
}
