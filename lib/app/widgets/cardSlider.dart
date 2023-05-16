import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify_ui_clone/app/widgets/bigCard.dart';

import '../utils/utils.dart';

class CardSlider extends StatelessWidget {
  const CardSlider({super.key, required this.cards});
  final RxList<BigCustomCard> cards;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Obx(
          () => Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (int i = 0; i < cards.length; i++) ...[
                Padding(
                  padding: EdgeInsets.only(right: Utils.normalPadding),
                  child: cards[i],
                ),
              ]
            ],
          ),
        ));
  }
}
