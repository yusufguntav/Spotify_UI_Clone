import 'package:flutter/material.dart';

import '../../variables/enums.dart';
import '../utils/utils.dart';
import 'card.dart';

class CardGrill extends StatelessWidget {
  const CardGrill({super.key, required this.cards});
  final List<CustomCard> cards;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 0; i < cards.length; i += 2) ...[
          (cards.length - i > 1)
              ? Column(
                  children: [
                    Row(
                      children: [
                        Expanded(child: cards[i]),
                        SizedBox(width: Utils.lowPadding),
                        Expanded(child: cards[i + 1]),
                      ],
                    ),
                    SizedBox(height: Utils.normalPadding)
                  ],
                )
              : Column(
                  children: [
                    Row(
                      children: [
                        Expanded(child: cards[i]),
                      ],
                    ),
                    SizedBox(height: Utils.normalPadding)
                  ],
                )
        ],
      ],
    );
  }
}
