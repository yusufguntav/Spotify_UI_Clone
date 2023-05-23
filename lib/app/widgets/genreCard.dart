import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/utils.dart';
import 'customText.dart';

class GenreCard extends StatelessWidget {
  const GenreCard({super.key, required this.title, required this.imagePath, required this.color});
  final String title;
  final String imagePath;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(Utils.normalRadius),
      child: DecoratedBox(
        decoration: BoxDecoration(color: color),
        child: SizedBox(
          height: Get.height * .13,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 3,
                child: Padding(
                  padding: EdgeInsets.all(Utils.normalPadding),
                  child: CustomText.high(
                    title,
                    bold: true,
                    shadowColor: Colors.black45,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Transform.rotate(
                  alignment: Alignment.bottomLeft,
                  angle: 0.4,
                  child: SizedBox.square(
                    dimension: Get.width * .22,
                    child: Material(
                      color: Colors.transparent,
                      elevation: 10,
                      shadowColor: Colors.black,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(Utils.lowRadius),
                        child: Image.asset(
                          imagePath,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
