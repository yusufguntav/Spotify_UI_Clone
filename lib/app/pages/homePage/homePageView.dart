import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify_ui_clone/app/pages/homePage/homePageController.dart';
import 'package:spotify_ui_clone/app/style/colorTable.dart';
import 'package:spotify_ui_clone/app/widgets/card.dart';
import 'package:spotify_ui_clone/app/widgets/cardGrill.dart';
import 'package:spotify_ui_clone/app/widgets/customText.dart';
import 'package:spotify_ui_clone/app/widgets/filterSlider.dart';
import 'package:spotify_ui_clone/app/widgets/header.dart';
import 'package:spotify_ui_clone/variables/enums.dart';

import '../../utils/utils.dart';

class HomePage extends GetView<HomePageController> {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              children: [
                CustomHeader(title: 'Good afternoon', icons: controller.icons),
                FilterSlider(filterCount: controller.filterBubbles.length, filterBubbles: controller.filterBubbles),
                SizedBox(height: Utils.normalPadding),
                CardGrill(cards: controller.cards),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
