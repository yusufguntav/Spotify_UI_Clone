// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify_ui_clone/app/pages/searchPage/searchPageController.dart';
import 'package:spotify_ui_clone/app/style/colorTable.dart';
import 'package:spotify_ui_clone/app/widgets/customText.dart';
import 'package:spotify_ui_clone/app/widgets/scaffold/customScaffold.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';

import '../../utils/utils.dart';
import '../../widgets/header.dart';

class SearchPage extends GetView<SearchPageController> {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: [
        CustomHeader(title: 'Search', icons: [controller.cameraIcon]),
        StickyHeader(
          header: searchBarButton,
          content: genreCards,
        )
      ],
    );
  }

  Column get genreCards => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: Utils.highPadding),
          CustomText('Browse all', bold: true),
          SizedBox(height: Utils.highPadding),
          Column(
            children: [
              for (int i = 0; i < controller.genreCards.length; i += 2) ...[
                Row(
                  children: [
                    Expanded(child: controller.genreCards[i]),
                    SizedBox(width: Utils.lowPadding),
                    Expanded(child: controller.genreCards[i + 1]),
                  ],
                ),
                SizedBox(height: Utils.normalPadding)
              ],
            ],
          ),
        ],
      );

  DecoratedBox get searchBarButton => DecoratedBox(
        decoration: const BoxDecoration(color: Colors.white),
        child: SizedBox(
          child: ListTile(
            tileColor: Colors.white,
            leading: Icon(
              Icons.search,
              size: Utils.highIconSize,
            ),
            horizontalTitleGap: 0,
            title: CustomText(
              'What do you want to listen to ?',
              textColor: ColorTable.greyTextColor,
              bold: true,
            ),
          ),
        ),
      );
}
