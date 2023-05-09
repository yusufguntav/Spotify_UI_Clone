import 'package:flutter/material.dart';
import 'package:spotify_ui_clone/app/style/colorTable.dart';

class Themes {
  static ThemeData darkThemes = ThemeData(
    scaffoldBackgroundColor: ColorTable.darkThemeBackgroundColor,
    textTheme: const TextTheme(
      displayLarge: TextStyle(color: ColorTable.darkThemeTextColor),
      displayMedium: TextStyle(color: ColorTable.darkThemeTextColor),
      bodyMedium: TextStyle(color: ColorTable.darkThemeTextColor),
      titleMedium: TextStyle(color: ColorTable.darkThemeTextColor),
    ),
    primarySwatch: Colors.blue,
  );
}
