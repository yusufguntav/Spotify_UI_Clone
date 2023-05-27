import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify_ui_clone/app/style/colorTable.dart';
import 'package:spotify_ui_clone/app/widgets/contentCard.dart';
import 'package:spotify_ui_clone/app/widgets/customIcon.dart';
import 'package:spotify_ui_clone/app/widgets/customText.dart';
import 'package:spotify_ui_clone/app/widgets/scaffold/customScaffold.dart';
import 'package:spotify_ui_clone/app/widgets/searchBar.dart';
import '../../models/album.dart';
import '../../utils/utils.dart';

class AlbumPage extends StatelessWidget {
  const AlbumPage({super.key, required this.album});
  final Album album;

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      padding: const EdgeInsets.all(0),
      color: album.backgroundColor ?? Colors.orange,
      appbar: AppBar(backgroundColor: Colors.transparent, elevation: 0),
      child: [
        DecoratedBox(
          decoration: BoxDecoration(gradient: gradient),
          child: SizedBox(
            width: Get.width,
            height: Get.height * .6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                searchbarAndButton,
                image,
                albumInfo,
              ],
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(bottom: Utils.navBarHeight),
          color: Colors.black,
          constraints: BoxConstraints(minHeight: Get.height * .5, minWidth: Get.width),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              for (int i = 0; i < album.content.length; i++) ...[
                ContentCard(imagePath: album.content[i].imagePath, title: album.content[i].title, creator: album.content[i].creator)
              ]
            ],
          ),
        ),
      ],
    );
  }

  LinearGradient get gradient => LinearGradient(
        colors: [album.backgroundColor ?? Colors.orange, Colors.black],
        stops: const [0, 1],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      );

  Row get searchbarAndButton => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SearchBar(
            textColor: Colors.white,
            backgroundColor: Colors.white.withOpacity(.2),
            text: 'Find in playlist',
            width: Get.width * .7,
            height: null,
            bold: false,
          ),
          SizedBox(
            width: Utils.lowPadding,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white.withOpacity(.2),
              elevation: 0,
            ),
            onPressed: () {},
            child: CustomText('Sort'),
          )
        ],
      );

  Center get image => Center(
        child: Padding(
          padding: EdgeInsets.all(Utils.highPadding),
          child: DecoratedBox(
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  spreadRadius: 5,
                  blurRadius: 100,
                  offset: Offset(0, 5),
                ),
              ],
            ),
            child: SizedBox.square(
              dimension: Get.width * .55,
              child: getAlbumImage(album, false),
            ),
          ),
        ),
      );

  Padding get albumInfo => Padding(
        padding: EdgeInsets.all(Utils.normalPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText.extraHigh(album.title, bold: true),
            SizedBox(height: Utils.lowPadding),
            CustomText.low(album.creator),
            SizedBox(height: Utils.lowPadding),
            like,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                likeDownloadMore,
                playAndShuffle,
              ],
            ),
          ],
        ),
      );

  Row get like => Row(
        children: [
          Icon(CupertinoIcons.globe, color: ColorTable.greyTextColor, size: Utils.lowIconSize),
          SizedBox(width: Utils.lowPadding),
          CustomText.low('${album.likes} likes', textColor: ColorTable.greyTextColor)
        ],
      );

  Row get likeDownloadMore => Row(
        children: const [
          CustomIcon(icon: Icons.favorite_rounded, selected: true),
          CustomIcon(icon: Icons.downloading_outlined),
          CustomIcon(icon: Icons.more_vert_sharp),
        ],
      );

  Row get playAndShuffle => Row(
        children: [
          const CustomIcon(icon: Icons.shuffle_rounded),
          DecoratedBox(
            decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(Utils.extraHighRadius)),
            child: SizedBox(
              child: Padding(
                padding: EdgeInsets.all(Utils.normalPadding),
                child: const Icon(Icons.play_arrow),
              ),
            ),
          )
        ],
      );
}
