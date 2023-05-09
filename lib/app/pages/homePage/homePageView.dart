import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify_ui_clone/app/pages/homePage/homePageController.dart';
import 'package:spotify_ui_clone/app/widgets/filterSlider.dart';
import 'package:spotify_ui_clone/app/widgets/header.dart';

class HomePage extends GetView<HomePageController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomHeader(title: 'Good afternoon', icons: controller.icons),
              FilterSlider(filterCount: controller.filterBubbles.length, filterBubbles: controller.filterBubbles)
            ],
          ),
        ),
      ),
    );
  }
}
