// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/album.dart';
import '../style/colorTable.dart';
import '../utils/utils.dart';
import 'customText.dart';

class BigCustomCard extends StatelessWidget {
  const BigCustomCard({super.key, required this.album});
  final Album album;
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
            child: getAlbumImage(album, true),
          ),
        ),
        SizedBox(height: Utils.lowPadding),
        (album.tags != null)
            ? Row(
                children: [
                  for (int i = 0; i < album.tags!.length; i++) ...[
                    CustomText.extraLow(album.tags![i], textColor: ColorTable.greenContentColor),
                    (album.tags!.length - i > 1)
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
        CustomText.low(album.title),
        SizedBox(height: Utils.lowPadding),
        CustomText.low('Show • ${album.creator}', textColor: ColorTable.greyTextColor)
      ],
    );
  }
}
