import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify_ui_clone/app/models/album.dart';

import '../../models/content.dart';
import '../../style/colorTable.dart';
import '../../variables/enums.dart';
import '../../widgets/filterBubble.dart';

class YourLibController extends GetxController {
  RxList<Album> albums = <Album>[].obs;
  @override
  void onReady() {
    albums.value = [
      Album('Liked Songs', contents, const Icon(Icons.favorite_rounded, color: Colors.white), null, null, null, Type.playlist.getName,
          active: true, pinned: true),
      Album('New Episodes', contents.sublist(3, 9), null, Images.image3.getImagePath, null, null, Type.albums.getName),
      Album('Dio', contents.sublist(3, 6), null, Images.image1.getImagePath, null, null, Type.artists.getName),
    ];
    super.onReady();
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

  List<Content> contents = [
    Content(Images.image1.getImagePath, [Type.comedy.getName, Type.fiction.getName], 'yusufguntav', 'Something Podcast!'),
    Content(Images.image5.getImagePath, [Type.art.getName, Type.business.getName], 'mack', 'Make Money'),
    Content(Images.image3.getImagePath, [], 'newguy', 'Radio?'),
    Content(Images.image2.getImagePath, [Type.sports.getName], 'fit man', 'True Way'),
    Content(Images.image4.getImagePath, [Type.art.getName, Type.educational.getName], 'reader', 'Book101'),
    Content(Images.image6.getImagePath, [Type.business.getName, Type.technology.getName], 'techguy', 'AI'),
    Content(Images.image1.getImagePath, [Type.comedy.getName, Type.fiction.getName], 'yusufguntav', 'Something Podcast!'),
    Content(Images.image5.getImagePath, [Type.art.getName, Type.business.getName], 'mack', 'Make Money'),
    Content(Images.image3.getImagePath, [], 'newguy', 'Radio?'),
    Content(Images.image2.getImagePath, [Type.sports.getName], 'fit man', 'True Way'),
    Content(Images.image4.getImagePath, [Type.art.getName, Type.educational.getName], 'reader', 'Book101'),
    Content(Images.image6.getImagePath, [Type.business.getName, Type.technology.getName], 'techguy', 'AI'),
  ];
}
