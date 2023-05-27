// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../models/album.dart';
import '../../variables/enums.dart';
import '../../models/content.dart';
import '../../style/colorTable.dart';
import '../../widgets/filterBubble.dart';

class HomePageController extends GetxController {
  List<Content> contents = [
    Content(Images.image1.getImagePath, 'yusufguntav', 'Something Podcast!'),
    Content(Images.image5.getImagePath, 'mack', 'Make Money'),
    Content(Images.image3.getImagePath, 'newguy', 'Radio?'),
    Content(Images.image2.getImagePath, 'fit man', 'True Way'),
    Content(Images.image4.getImagePath, 'reader', 'Book101'),
    Content(Images.image6.getImagePath, 'techguy', 'AI'),
    Content(Images.image1.getImagePath, 'yusufguntav', 'Something Podcast!'),
    Content(Images.image5.getImagePath, 'mack', 'Make Money'),
    Content(Images.image3.getImagePath, 'newguy', 'Radio?'),
    Content(Images.image2.getImagePath, 'fit man', 'True Way'),
    Content(Images.image4.getImagePath, 'reader', 'Book101'),
    Content(Images.image6.getImagePath, 'techguy', 'AI'),
  ];
  RxList<Album> albums = <Album>[].obs;

  @override
  void onReady() {
    albums.value = [
      Album(
        title: 'Dio',
        backgroundColor: Colors.green,
        creator: 'techguy',
        likes: 200,
        content: contents.sublist(3, 6),
        type: Type.artists.getName,
        imagePath: Images.image1.getImagePath,
      ),
      Album(
          title: 'Black Sabbath',
          creator: 'reader',
          backgroundColor: Colors.red,
          likes: 123,
          content: contents.sublist(6, 10),
          imagePath: Images.image4.getImagePath,
          type: Type.artists.getName,
          tags: [Type.sports.getName]),
      Album(
          title: 'Aurora',
          creator: 'newguy',
          backgroundColor: Colors.grey,
          likes: 842,
          content: contents.sublist(6, 12),
          imagePath: Images.image5.getImagePath,
          type: Type.artists.getName,
          tags: [Type.business.getName, Type.technology.getName]),
      Album(
          title: 'Dream Theater',
          backgroundColor: Colors.blue,
          creator: 'yusufguntav',
          content: contents.sublist(3, 10),
          imagePath: Images.image6.getImagePath,
          likes: 923,
          type: Type.artists.getName,
          tags: [Type.art.getName, Type.educational.getName]),
      Album(
          title: 'Metropolis, Pt.2',
          backgroundColor: Colors.brown,
          creator: 'Dream Theater',
          content: contents.sublist(3, 10),
          imagePath: Images.image2.getImagePath,
          type: Type.artists.getName,
          tags: [Type.art.getName, Type.educational.getName]),
      Album(
          title: 'Rammstein',
          creator: 'Rammstein',
          backgroundColor: Colors.yellow,
          content: contents.sublist(3, 10),
          likes: 1002,
          imagePath: Images.image3.getImagePath,
          type: Type.artists.getName,
          tags: [Type.art.getName, Type.educational.getName]),
    ];
    super.onReady();
  }

  List<Album> getShuffledAlbums() {
    // We use toList method because we don't want reference list
    List<Album> shuffledAlbums = albums.toList();
    shuffledAlbums.shuffle();
    return shuffledAlbums;
  }

  final List<IconButton> icons = [
    IconButton(onPressed: () {}, icon: const Icon(Icons.notifications, color: ColorTable.darkThemeIconColor)),
    IconButton(onPressed: () {}, icon: const Icon(Icons.history, color: ColorTable.darkThemeIconColor)),
    IconButton(onPressed: () {}, icon: const Icon(Icons.settings, color: ColorTable.darkThemeIconColor)),
  ];
  List<FilterBubble> filterBubbles = const [
    FilterBubble(title: 'Music'),
    FilterBubble(title: 'Podcast & Shows'),
  ];
}
