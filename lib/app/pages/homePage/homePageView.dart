// ignore_for_file: invalid_use_of_protected_member, file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify_ui_clone/app/pages/homePage/homePageController.dart';
import 'package:spotify_ui_clone/app/widgets/cardGrill.dart';
import 'package:spotify_ui_clone/app/widgets/filterSlider.dart';
import 'package:spotify_ui_clone/app/widgets/header.dart';
import 'package:spotify_ui_clone/app/widgets/scaffold/customScaffold.dart';
import 'package:spotify_ui_clone/app/widgets/sliderAndTitle.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';

import '../../utils/utils.dart';

class HomePage extends GetView<HomePageController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: [
        CustomHeader(title: 'Good afternoon', icons: controller.icons),
        StickyHeader(
          header: FilterSlider(filterBubbles: controller.filterBubbles),
          content: Column(
            children: [
              SizedBox(height: Utils.normalPadding),
              Obx(() => CardGrill(albums: controller.albums.value)),
              SizedBox(height: Utils.normalPadding),
              Obx(() => SliderAndTitle(albums: controller.albums.value, title: 'Your shows')),
              SizedBox(height: Utils.highPadding),
              Obx(() => SliderAndTitle(albums: controller.getShuffledAlbums(), title: 'Recently'))
            ],
          ),
        ),
      ],
    );
  }
}
