// ignore_for_file: file_names

import 'package:get/get.dart';
import 'package:spotify_ui_clone/app/routes/pageRoutes.dart';

class BottomNavBarController extends GetxController {
  final Rx<bool> _showBottomNavBar = false.obs;
  bool get getShowBottomNavBarValue => _showBottomNavBar.value;
  set setShowBottomNavBarValue(bool val) => _showBottomNavBar.value = val;

  final Rx<int> _selectedIndex = 0.obs;
  int get getSelectedIndex => _selectedIndex.value;
  set setSelectedIndex(int val) => _selectedIndex.value = val;

  final List<String> _mainPageRoutes = [
    PageRoutes.homePage,
  ];

  changePage(index) {
    Get.offAllNamed(_mainPageRoutes[index]);
    setSelectedIndex = index;
  }
}
