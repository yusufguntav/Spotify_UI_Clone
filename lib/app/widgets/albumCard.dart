import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify_ui_clone/app/models/album.dart';
import 'package:spotify_ui_clone/app/utils/utils.dart';
import 'package:spotify_ui_clone/app/variables/enums.dart';

import '../style/colorTable.dart';
import 'customText.dart';

class AlbumCard extends StatelessWidget {
  const AlbumCard({super.key, required this.album});
  final Album album;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: Utils.lowPadding),
      leading: getAlbumImage(album, false),
      title: CustomText(
        album.title,
        textColor: album.active ? ColorTable.greenContentColor : Colors.white,
      ),
      subtitle: Row(
        children: [
          album.pinned
              ? Icon(
                  Icons.push_pin,
                  color: ColorTable.greenContentColor,
                  size: Utils.lowIconSize,
                )
              : const SizedBox(),
          SizedBox(width: Utils.extraLowPadding),
          CustomText.low(
            album.type == Type.playlist.getName || album.type == Type.albums.getName ? '${album.type} • ${album.content.length} songs' : album.type,
            textColor: ColorTable.greyTextColor,
          )
        ],
      ),
    );
  }
}
