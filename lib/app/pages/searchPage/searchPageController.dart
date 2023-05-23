// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify_ui_clone/app/widgets/genreCard.dart';

import '../../style/colorTable.dart';
import '../../variables/enums.dart';

class SearchPageController extends GetxController {
  IconButton cameraIcon = IconButton(onPressed: () {}, icon: const Icon(Icons.camera_alt_outlined, color: ColorTable.darkThemeIconColor));
  List<GenreCard> genreCards = [
    GenreCard(
      title: 'Podcast',
      imagePath: Images.image1.getImagePath,
      color: Colors.red,
    ),
    GenreCard(
      title: 'Live Events',
      imagePath: Images.image2.getImagePath,
      color: Colors.purple,
    ),
    GenreCard(
      title: 'Made For You',
      imagePath: Images.image3.getImagePath,
      color: Colors.green,
    ),
    GenreCard(
      title: 'Hip-Hop',
      imagePath: Images.image4.getImagePath,
      color: Colors.orange,
    ),
    GenreCard(
      title: 'Mood',
      imagePath: Images.image5.getImagePath,
      color: Colors.pink,
    ),
    GenreCard(
      title: 'Trending',
      imagePath: Images.image6.getImagePath,
      color: Colors.lightBlue,
    ),
    GenreCard(
      title: 'Pop',
      imagePath: Images.image3.getImagePath,
      color: Colors.green,
    ),
    GenreCard(
      title: 'New Releases',
      imagePath: Images.image4.getImagePath,
      color: Colors.orange,
    ),
    GenreCard(
      title: 'Rock',
      imagePath: Images.image5.getImagePath,
      color: Colors.pink,
    ),
    GenreCard(
      title: 'Workout',
      imagePath: Images.image6.getImagePath,
      color: Colors.lightBlue,
    ),
    GenreCard(
      title: 'Indie',
      imagePath: Images.image1.getImagePath,
      color: Colors.red,
    ),
    GenreCard(
      title: 'Dance/Electronic',
      imagePath: Images.image2.getImagePath,
      color: Colors.purple,
    ),
  ];
}
