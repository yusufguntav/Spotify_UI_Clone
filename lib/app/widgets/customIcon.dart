import 'package:flutter/material.dart';

import '../style/colorTable.dart';
import '../utils/utils.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key, required this.icon, this.selected = false});
  final IconData icon;
  final bool? selected;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(Utils.lowPadding),
      child: Icon(
        icon,
        color: selected! ? Colors.green : ColorTable.greyTextColor,
        size: Utils.highIconSize,
      ),
    );
  }
}
