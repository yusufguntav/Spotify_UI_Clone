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
      contentPadding: EdgeInsets.all(Utils.lowPadding),
      leading: album.imagePath != null
          ? SizedBox.square(
              dimension: Get.width * .15,
              child: Image.asset(album.imagePath!, fit: BoxFit.fill),
            )
          : album.icon != null
              ? DecoratedBox(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xff490ff2),
                        Color(0xffd8fffb),
                      ],
                      stops: [0.2, 0.9],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: SizedBox.square(
                    dimension: Get.width * .15,
                    child: Padding(
                      padding: EdgeInsets.all(Utils.highPadding),
                      child: album.icon,
                    ),
                  ),
                )
              : const SizedBox(),
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
