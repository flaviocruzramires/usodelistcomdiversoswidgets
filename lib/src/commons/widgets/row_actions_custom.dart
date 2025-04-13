import 'package:flutter/widgets.dart';
import 'package:sliverexemple/src/commons/constants/constantes.dart';

class RowActionsCustom {
  static Row obterRowActions() {
    return Row(children: iconsUpdateAndDelete);
  }
}
