import 'package:flutter/material.dart';
import 'package:sliverexemple/src/commons/constants/constantes.dart';

class IconCustom {
  static Icon getIcon(IconData icon) {
    return Icon(icon, color: defaultTextColor, size: defaultIconSize);
  }
}
