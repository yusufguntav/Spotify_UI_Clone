// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:spotify_ui_clone/app/widgets/card.dart';

import '../models/album.dart';
import '../utils/utils.dart';

class CardGrill extends StatelessWidget {
  const CardGrill({super.key, required this.albums});
  final List<Album> albums;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 0; i < albums.length; i += 2) ...[
          (albums.length - i > 1)
              ? Row(
                  children: [
                    Expanded(child: CustomCard(album: albums[i])),
                    SizedBox(width: Utils.lowPadding),
                    Expanded(child: CustomCard(album: albums[i + 1])),
                  ],
                )
              : Row(
                  children: [
                    Expanded(child: CustomCard(album: albums[i])),
                  ],
                ),
          SizedBox(height: Utils.normalPadding)
        ],
      ],
    );
  }
}
