// ignore_for_file: invalid_use_of_protected_member

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify_ui_clone/app/pages/homePage/homePageController.dart';
import 'package:spotify_ui_clone/app/widgets/cardGrill.dart';
import 'package:spotify_ui_clone/app/widgets/cardSlider.dart';
import 'package:spotify_ui_clone/app/widgets/customText.dart';
import 'package:spotify_ui_clone/app/widgets/filterSlider.dart';
import 'package:spotify_ui_clone/app/widgets/header.dart';
import 'package:spotify_ui_clone/app/widgets/sliderAndTitle.dart';

import '../../models/content.dart';
import '../../utils/utils.dart';

class HomePage extends GetView<HomePageController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomHeader(title: 'Good afternoon', icons: controller.icons),
                FilterSlider(filterCount: controller.filterBubbles.length, filterBubbles: controller.filterBubbles),
                SizedBox(height: Utils.normalPadding),
                CardGrill(content: controller.contents),
                SizedBox(height: Utils.normalPadding),
                SliderAndTitle(content: controller.contents, title: 'Your shows'),
                SizedBox(height: Utils.highPadding),
                SliderAndTitle(content: controller.getShuffledContent(), title: 'Recently')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
