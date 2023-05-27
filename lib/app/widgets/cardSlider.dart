// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify_ui_clone/app/models/album.dart';
import 'package:spotify_ui_clone/app/widgets/bigCard.dart';

import '../utils/utils.dart';

class CardSlider extends StatelessWidget {
  const CardSlider({super.key, required this.albums});
  final List<Album> albums;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      height: Get.height * .32,
      child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(width: Utils.normalPadding),
        scrollDirection: Axis.horizontal,
        itemCount: albums.length,
        itemBuilder: (context, index) => BigCustomCard(album: albums[index]),
      ),
    );
  }
}
