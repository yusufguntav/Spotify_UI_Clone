import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify_ui_clone/app/routes/pageRoutes.dart';
import 'package:spotify_ui_clone/app/routes/pages.dart';
import 'package:spotify_ui_clone/app/style/themes.dart';
import 'package:spotify_ui_clone/app/widgets/bottomNavBar/bottomNavBarView.dart';

import 'app/pages/homePage/homePageController.dart';
import 'app/widgets/bottomNavBar/bottomNavBarController.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initApp();
}

initApp() {
  Get.put(HomePageController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(BottomNavBarController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: Pages.pages,
      initialRoute: PageRoutes.homePage,
      title: 'Spotify Clone',
      theme: Themes.darkThemes,
      builder: (context, child) {
        return Overlay(
          initialEntries: [
            OverlayEntry(
              builder: (context) => Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  child!,
                  const BottomNavBar(),
                ],
              ),
            )
          ],
        );
      },
    );
  }
}
