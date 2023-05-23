// ignore_for_file: file_names

import 'package:get/get.dart';
import 'package:spotify_ui_clone/app/pages/searchPage/searchPageController.dart';

class SearchPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchPageController());
  }
}
