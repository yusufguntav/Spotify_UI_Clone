import 'package:get/get.dart';
import 'package:spotify_ui_clone/app/pages/homePage/homePageController.dart';

class HomePageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomePageController());
  }
}
