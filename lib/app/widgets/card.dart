import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify_ui_clone/app/pages/albumPage/albumPageView.dart';

import '../models/album.dart';
import '../style/colorTable.dart';
import '../utils/utils.dart';
import 'customText.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.album});
  final Album album;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.to(
        AlbumPage(album: album),
      ),
      child: DecoratedBox(
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
                  child: getAlbumImage(album, true),
                ),
              ),
              SizedBox(width: Utils.lowPadding),
              Flexible(
                child: CustomText(
                  album.title,
                  textOverflow: TextOverflow.fade,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
