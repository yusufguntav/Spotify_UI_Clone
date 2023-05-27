// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../models/album.dart';
import '../utils/utils.dart';
import 'cardSlider.dart';
import 'customText.dart';

class SliderAndTitle extends StatelessWidget {
  const SliderAndTitle({super.key, required this.albums, required this.title});
  final List<Album> albums;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText.extraHigh(title, bold: true),
        SizedBox(height: Utils.normalPadding),
        CardSlider(albums: albums),
      ],
    );
  }
}
