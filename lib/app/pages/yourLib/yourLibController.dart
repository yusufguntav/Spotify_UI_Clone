import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify_ui_clone/app/pages/homePage/homePageController.dart';

import '../../models/album.dart';
import '../../style/colorTable.dart';
import '../../variables/enums.dart';
import '../../widgets/filterBubble.dart';

class YourLibController extends GetxController {
  HomePageController homePageController = Get.find<HomePageController>();
  late Album likedSongsAlbum;
  late Album newEpisodes;
  @override
  void onInit() {
    likedSongsAlbum = Album(
        title: 'Liked Songs',
        creator: 'yusufguntav',
        content: homePageController.contents,
        icon: const Icon(Icons.favorite_rounded, color: Colors.white),
        type: Type.playlist.getName,
        tags: [Type.comedy.getName, Type.fiction.getName],
        active: true,
        pinned: true);
    newEpisodes = Album(
        title: 'New Episodes',
        creator: 'mack',
        content: homePageController.contents.sublist(3, 9),
        imagePath: Images.image3.getImagePath,
        type: Type.albums.getName,
        tags: [Type.art.getName, Type.business.getName]);
    super.onInit();
  }

  IconButton searchIcon = IconButton(onPressed: () {}, icon: const Icon(Icons.search, color: ColorTable.darkThemeIconColor));
  IconButton addIcon = IconButton(onPressed: () {}, icon: const Icon(Icons.add, color: ColorTable.darkThemeIconColor));

  List<FilterBubble> filterBubbles = [
    FilterBubble(title: Type.playlist.getName),
    FilterBubble(title: Type.podcasAndShows.getName),
    FilterBubble(title: Type.music.getName),
    FilterBubble(title: Type.albums.getName),
    FilterBubble(title: Type.artists.getName),
  ];
}
