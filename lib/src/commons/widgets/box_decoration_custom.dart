import 'package:flutter/widgets.dart';
import 'package:sliverexemple/src/commons/constants/constantes.dart';

class BoxDecorationCustom {
  static BoxDecoration getBoxDecoration({
    Color? color,
    double borderRadius = 8.0,
    double borderWidth = 1.0,
    Color? borderColor,
  }) {
    return BoxDecoration(
      color: color ?? paletaCorRgb,
      borderRadius: BorderRadius.circular(borderRadius),
      border: Border.all(
        color: borderColor ?? defaultTextColorBlack,
        width: borderWidth,
      ),
    );
  }
}
