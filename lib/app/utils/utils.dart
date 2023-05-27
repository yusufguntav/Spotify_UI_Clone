import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/album.dart';

Widget getAlbumImage(Album album, bool roundedCorner) {
  return album.imagePath != null
      ? roundedCorner
          ? ClipRRect(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(Utils.lowRadius / 2), bottomLeft: Radius.circular(Utils.lowRadius / 2)),
              child: Image.asset(
                album.imagePath!,
                fit: BoxFit.fill,
              ),
            )
          : SizedBox.square(
              dimension: Get.width * .15,
              child: Image.asset(album.imagePath!, fit: BoxFit.fill),
            )
      : album.icon != null
          ? DecoratedBox(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xff490ff2),
                    Color(0xffd8fffb),
                  ],
                  stops: [0.2, 0.9],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: SizedBox.square(
                dimension: Get.width * .15,
                child: Padding(
                  padding: EdgeInsets.all(Utils.highPadding),
                  child: album.icon,
                ),
              ),
            )
          : const SizedBox();
}

class Utils {
  //Size
  static double get extraLowTextSize => Get.height * 0.012;
  static double get lowTextSize => Get.height * 0.015;
  static double get normalTextSize => Get.height * 0.018;
  static double get highTextSize => Get.height * 0.022;
  static double get extraHighTextSize => Get.height * 0.025;

  //Padding
  static double get extraLowPadding => Get.height * 0.005;
  static double get lowPadding => Get.height * 0.01;
  static double get normalPadding => Get.height * 0.015;
  static double get highPadding => Get.height * 0.02;
  static double get extraHighPadding => Get.height * 0.025;

  //Radius
  static double get extraLowRadius => Get.height * 0.01;
  static double get lowRadius => Get.height * 0.015;
  static double get normalRadius => Get.height * 0.02;
  static double get highRadius => Get.height * 0.025;
  static double get extraHighRadius => Get.height * 0.035;

  //Icons
  static double get extraLowIconSize => Get.height * 0.015;
  static double get lowIconSize => Get.height * 0.02;
  static double get normalIconSize => Get.height * 0.025;
  static double get highIconSize => Get.height * 0.033;
  static double get extraHighIconSize => Get.height * 0.04;
  //navBar Height
  static double get navBarHeight => Get.height * 0.07;
}
