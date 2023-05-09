import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify_ui_clone/app/pages/homePage/homePageBinding.dart';
import 'package:spotify_ui_clone/app/routes/pageRoutes.dart';
import 'package:spotify_ui_clone/app/routes/pages.dart';
import 'package:spotify_ui_clone/app/style/themes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: Pages.pages,
      initialBinding: HomePageBinding(),
      initialRoute: PageRoutes.homePage,
      title: 'Spotify Clone',
      theme: Themes.darkThemes,
    );
  }
}
