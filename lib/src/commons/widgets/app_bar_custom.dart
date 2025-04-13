import 'package:flutter/material.dart';
import 'package:sliverexemple/src/commons/constants/constantes.dart';
import 'package:sliverexemple/src/commons/widgets/text_custom.dart';

class AppBarCustom {
  static AppBar getAppBar({required String title, List<Widget>? actions}) {
    return AppBar(
      title:
          TextCustom(
            title,
            LargeFonteSize,
            FontWeight.bold,
            defaultTextColor,
          ).getText(),
      titleSpacing: 0,
      centerTitle: true,
      backgroundColor: paletaCor,
      actions: actions,
    );
  }
}
