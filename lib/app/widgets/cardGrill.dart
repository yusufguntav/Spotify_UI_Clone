// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:spotify_ui_clone/app/models/content.dart';
import 'package:spotify_ui_clone/app/widgets/card.dart';

import '../utils/utils.dart';

class CardGrill extends StatelessWidget {
  const CardGrill({super.key, required this.content});
  final List<Content> content;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 0; i < content.length; i += 2) ...[
          (content.length - i > 1)
              ? Row(
                  children: [
                    Expanded(child: CustomCard(content: content[i])),
                    SizedBox(width: Utils.lowPadding),
                    Expanded(child: CustomCard(content: content[i + 1])),
                  ],
                )
              : Row(
                  children: [
                    Expanded(child: CustomCard(content: content[i])),
                  ],
                ),
          SizedBox(height: Utils.normalPadding)
        ],
      ],
    );
  }
}
