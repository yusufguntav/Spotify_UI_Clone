// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify_ui_clone/app/models/content.dart';

import '../style/colorTable.dart';
import '../utils/utils.dart';
import 'customText.dart';

class BigCustomCard extends StatelessWidget {
  const BigCustomCard({super.key, required this.content});
  final Content content;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DecoratedBox(
          decoration: const BoxDecoration(color: Colors.transparent),
          child: SizedBox(
            height: Get.height * .22,
            width: Get.width * .42,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(Utils.lowRadius)),
              child: Image.asset(
                content.imagePath,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        SizedBox(height: Utils.lowPadding),
        (content.tags.isNotEmpty)
            ? Row(
                children: [
                  for (int i = 0; i < content.tags.length; i++) ...[
                    CustomText.extraLow(content.tags[i], textColor: ColorTable.greenContentColor),
                    (content.tags.length - i > 1)
                        ? CustomText.extraLow(
                            ' • ',
                            textColor: ColorTable.greenContentColor,
                          )
                        : const SizedBox()
                  ]
                ],
              )
            : const SizedBox(),
        SizedBox(height: Utils.lowPadding),
        CustomText.low(content.title),
        SizedBox(height: Utils.lowPadding),
        CustomText.low('Show • ${content.creator}', textColor: ColorTable.greyTextColor)
      ],
    );
  }
}
