import 'package:get/get.dart';
import 'package:spotify_ui_clone/app/pages/yourLib/yourLibController.dart';

class YourLibBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => YourLibController());
  }
}
