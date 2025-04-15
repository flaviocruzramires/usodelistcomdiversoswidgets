import 'package:flutter/material.dart';
import 'package:sliverexemple/src/commons/constants/constantes.dart';
import 'package:sliverexemple/src/commons/widgets/box_decoration_custom.dart';

class DataTableCustom {
  static DataTable getDataTable(List<DataColumn> columns, List<DataRow> rows) {
    return DataTable(
      dataRowMaxHeight: 50.0,
      dataRowColor: WidgetStateProperty.all(paletaCor),
      headingRowColor: WidgetStateProperty.all(paletaCor),
      headingTextStyle: TextStyle(
        color: defaultTextColor,
        fontSize: defaultFonteSize,
        fontWeight: FontWeight.bold,
      ),
      dataTextStyle: TextStyle(
        color: defaultTextColor,
        fontSize: defaultFonteSize,
        fontWeight: FontWeight.normal,
      ),
      decoration: BoxDecorationCustom.getBoxDecoration(
        color: paletaCor,
        borderRadius: 8.0,
        borderWidth: 1.0,
      ),
      columns: columns,
      rows: rows,
    );
  }
}
