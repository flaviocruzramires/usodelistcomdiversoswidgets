import 'package:flutter/material.dart';

class TextCustom {
  String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;

  TextCustom(this.text, this.fontSize, this.fontWeight, this.color);

  Text getText() {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}
