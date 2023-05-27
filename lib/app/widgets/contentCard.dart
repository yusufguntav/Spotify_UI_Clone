import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'customIcon.dart';
import 'customText.dart';

class ContentCard extends StatelessWidget {
  const ContentCard({super.key, required this.imagePath, required this.title, required this.creator});
  final String imagePath;
  final String title;
  final String creator;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SizedBox.square(
        dimension: Get.width * .14,
        child: Image.asset(
          imagePath,
          fit: BoxFit.fill,
        ),
      ),
      title: CustomText(title),
      subtitle: CustomText.low(creator),
      trailing: IconButton(onPressed: () {}, icon: const CustomIcon(icon: Icons.more_vert_rounded)),
    );
  }
}
