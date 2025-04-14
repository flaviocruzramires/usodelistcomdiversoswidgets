import 'package:flutter/material.dart';
import 'package:sliverexemple/src/commons/constants/constantes.dart';
import 'package:sliverexemple/src/commons/widgets/text_custom.dart';

class DataSourceListTile {
  Widget? title;
  Widget? subtitle;
  Widget? leading;
  Widget? trailing;
  DataSourceListTile({
    required this.title,
    required this.subtitle,
    required this.leading,
    required this.trailing,
  });

  ListTile setStyle(ListTile listTile) {
    title = title;
    subtitle = subtitle;
    leading = leading;
    trailing = trailing;

    return listTile;
  }

  ListTile toListTile() {
    return ListTile(
      title:
          TextCustom(
            title.toString(),
            defaultFonteSize,
            FontWeight.bold,
            defaultTextColor,
          ).getText(),

      subtitle:
          TextCustom(
            subtitle.toString(),
            defaultFonteSize,
            FontWeight.normal,
            defaultTextColor,
          ).getText(),
      leading: leading,
      trailing: trailing,
    );
  }
}
