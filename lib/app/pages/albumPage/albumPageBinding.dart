import 'package:get/get.dart';
import 'package:spotify_ui_clone/app/pages/albumPage/albumPageController.dart';

class AlbumPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AlbumPageController());
  }
}
