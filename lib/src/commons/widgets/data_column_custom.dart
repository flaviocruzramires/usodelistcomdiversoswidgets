import 'package:flutter/material.dart';
import 'package:sliverexemple/src/commons/constants/constantes.dart';
import 'package:sliverexemple/src/commons/widgets/text_custom.dart';

class DataColumnCustom {
  late final List<String> columns;

  static List<DataColumn> getColumns(List<String> columns) {
    return columns.map((column) {
      return DataColumn(
        label:
            TextCustom(
              column,
              defaultFonteSize,
              FontWeight.bold,
              defaultTextColor,
            ).getText(),
      );
    }).toList();
  }
}
