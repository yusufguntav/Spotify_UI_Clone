import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify_ui_clone/app/pages/yourLib/yourLibController.dart';
import 'package:spotify_ui_clone/app/variables/enums.dart';
import 'package:spotify_ui_clone/app/widgets/albumCard.dart';
import 'package:spotify_ui_clone/app/widgets/filterSlider.dart';
import 'package:spotify_ui_clone/app/widgets/header.dart';

import '../../utils/utils.dart';

class YourLib extends GetView<YourLibController> {
  const YourLib({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(8, 0, 8, Utils.navBarHeight),
          child: Column(
            children: [
              Column(
                children: [
                  CustomHeader(
                    avatarImage: Images.image1.getImagePath,
                    title: 'Your Library',
                    icons: [controller.searchIcon, controller.addIcon],
                  ),
                  FilterSlider(filterBubbles: controller.filterBubbles),
                ],
              ),
              SizedBox(height: Utils.normalPadding),
              Expanded(
                child: Obx(
                  () => ListView.builder(
                    itemCount: controller.albums.length,
                    itemBuilder: (context, index) => AlbumCard(
                      album: controller.albums[index],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
