import 'package:get/get.dart';
import 'package:spotify_ui_clone/app/pages/homePage/homePageView.dart';
import 'package:spotify_ui_clone/app/pages/searchPage/searchPageBinding.dart';
import 'package:spotify_ui_clone/app/pages/searchPage/searchPageView.dart';
import 'package:spotify_ui_clone/app/pages/yourLib/yourLibBinding.dart';
import 'package:spotify_ui_clone/app/pages/yourLib/yourLibView.dart';
import 'package:spotify_ui_clone/app/routes/pageRoutes.dart';

class Pages {
  static final pages = [
    GetPage(
      name: PageRoutes.homePage,
      page: () => const HomePage(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: PageRoutes.searchPage,
      binding: SearchPageBinding(),
      page: () => const SearchPage(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: PageRoutes.yourLibPage,
      binding: YourLibBinding(),
      page: () => const YourLib(),
      transition: Transition.noTransition,
    ),
  ];
}
