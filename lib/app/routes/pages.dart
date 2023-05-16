import 'package:get/get.dart';
import 'package:spotify_ui_clone/app/pages/homePage/homePageBinding.dart';
import 'package:spotify_ui_clone/app/pages/homePage/homePageView.dart';
import 'package:spotify_ui_clone/app/routes/pageRoutes.dart';

class Pages {
  static final pages = [
    GetPage(
      name: PageRoutes.homePage,
      binding: HomePageBinding(),
      page: () => const HomePage(),
    ),
  ];
}
