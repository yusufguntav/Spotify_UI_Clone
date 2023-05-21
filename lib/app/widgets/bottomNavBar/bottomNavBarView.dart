import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify_ui_clone/app/widgets/bottomNavBar/bottomNavBarController.dart';

import '../../style/colorTable.dart';
import '../../utils/utils.dart';

class BottomNavBar extends GetView<BottomNavBarController> {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<BottomNavBarController>();
    return _bottomNavBar(controller);
  }
}

BottomNavigationBar _bottomNavBar(BottomNavBarController controller) => BottomNavigationBar(
    unselectedLabelStyle: TextStyle(fontSize: Utils.extraLowTextSize),
    selectedLabelStyle: TextStyle(fontSize: Utils.extraLowTextSize),
    onTap: (index) => controller.changePage(index),
    currentIndex: controller.getSelectedIndex,
    backgroundColor: Colors.transparent,
    type: BottomNavigationBarType.fixed,
    selectedItemColor: ColorTable.bottomNavBarSelectedMenuColor,
    unselectedItemColor: ColorTable.bottomNavBarUnselectedMenuColor,
    items: _bottomNavItems);

List<BottomNavigationBarItem> get _bottomNavItems => const <BottomNavigationBarItem>[
      BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
      BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
      BottomNavigationBarItem(icon: Icon(Icons.library_music_rounded), label: 'Your Library'),
    ];
