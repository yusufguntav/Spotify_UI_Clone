// ignore: must_be_immutable
// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../style/colorTable.dart';
import '../utils/utils.dart';

class CustomText extends StatelessWidget {
  final String? text;
  double? textSize;
  final Color? textColor;
  final bool underlined;
  final bool lineThrough;
  final bool bold;
  final bool centerText;
  final TextOverflow? textOverflow;
  final double? wordSpacing;
  final int? maxlines;
  final Color? shadowColor;
  CustomText(this.text,
      {Key? key,
      this.textColor,
      this.underlined = false,
      this.bold = false,
      this.centerText = false,
      this.textOverflow,
      this.maxlines,
      this.lineThrough = false,
      this.wordSpacing,
      this.shadowColor})
      : super(key: key) {
    textSize = Utils.normalTextSize;
  }
  CustomText.extraLow(
    this.text, {
    Key? key,
    this.textColor,
    this.underlined = false,
    this.bold = false,
    this.centerText = false,
    this.textOverflow,
    this.maxlines,
    this.lineThrough = false,
    this.wordSpacing,
    this.shadowColor,
  }) : super(key: key) {
    textSize = Utils.extraLowTextSize;
  }
  CustomText.low(
    this.text, {
    Key? key,
    this.textColor,
    this.underlined = false,
    this.bold = false,
    this.centerText = false,
    this.textOverflow,
    this.maxlines,
    this.lineThrough = false,
    this.wordSpacing,
    this.shadowColor,
  }) : super(key: key) {
    textSize = Utils.lowTextSize;
  }
  CustomText.high(
    this.text, {
    Key? key,
    this.textColor,
    this.underlined = false,
    this.bold = false,
    this.centerText = false,
    this.textOverflow,
    this.maxlines,
    this.lineThrough = false,
    this.wordSpacing,
    this.shadowColor,
  }) : super(key: key) {
    textSize = Utils.highTextSize;
  }
  CustomText.extraHigh(
    this.text, {
    Key? key,
    this.textColor,
    this.underlined = false,
    this.bold = false,
    this.centerText = false,
    this.textOverflow,
    this.maxlines,
    this.lineThrough = false,
    this.wordSpacing,
    this.shadowColor,
  }) : super(key: key) {
    textSize = Utils.extraHighTextSize;
  }
  CustomText.custom(
    this.text, {
    Key? key,
    this.textColor,
    this.underlined = false,
    this.bold = false,
    this.centerText = false,
    this.textOverflow,
    this.textSize,
    this.maxlines,
    this.lineThrough = false,
    this.wordSpacing,
    this.shadowColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Text(
        text ?? '',
        style: TextStyle(
          shadows: shadowColor != null
              ? [
                  Shadow(
                    offset: const Offset(0, 1.4),
                    blurRadius: 8.0,
                    color: shadowColor!,
                  ),
                ]
              : [],
          wordSpacing: wordSpacing ?? 0,
          fontSize: textSize ?? Utils.normalTextSize,
          color: textColor ?? ColorTable.getTextColor,
          decoration: underlined
              ? TextDecoration.underline
              : lineThrough
                  ? TextDecoration.lineThrough
                  : null,
          fontWeight: bold ? FontWeight.bold : null,
        ),
        textAlign: centerText ? TextAlign.center : null,
        overflow: textOverflow,
        maxLines: maxlines,
      );
}
