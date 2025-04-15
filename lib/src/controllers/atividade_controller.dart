import 'package:flutter/material.dart';
import 'package:sliverexemple/src/commons/constants/constantes.dart';
import 'package:sliverexemple/src/commons/functions/functions.dart';
import 'package:sliverexemple/src/commons/models/data_source_list_tile.dart';
import 'package:sliverexemple/src/commons/widgets/box_decoration_custom.dart';
import 'package:sliverexemple/src/commons/widgets/data_column_custom.dart';
import 'package:sliverexemple/src/commons/widgets/data_table_custom.dart';
import 'package:sliverexemple/src/commons/widgets/row_actions_custom.dart';
import 'package:sliverexemple/src/commons/widgets/text_custom.dart';
import 'package:sliverexemple/src/models/atividade.dart';

class AtividadeController {
  List<DataSourceListTile> _toDataSourceListTile(List<Atividade> atividades) {
    List<DataSourceListTile> listTiles = [];
    for (var atividade in atividades) {
      DataSourceListTile dataSourceListTile = DataSourceListTile(
        title: Text(atividade.descricao),
        subtitle: Text(atividade.descricao),
        leading: aplicarEstilo(
          obterIconeByCategoria(atividade.categoria),
        ), // Text(atividade.categoria),
        trailing: aplicarEstilo(Icon(Icons.arrow_forward_ios)),
      );
      listTiles.add(dataSourceListTile);
    }
    return listTiles;
  }

  Widget toViewer(List<Atividade> atividades) {
    List<DataSourceListTile> dataSourceListTile = _toDataSourceListTile(
      atividades,
    );
    return ListView.builder(
      itemCount: dataSourceListTile.length,
      itemBuilder: (context, index) {
        return dataSourceListTile[index].toListTile();
      },
    );
  }

  SingleChildScrollView toDataTable(List<Atividade> atividades) {
    var nomeColunas = ['Atividade', 'Data', 'Categoria', 'Ações'];
    return SingleChildScrollView(
      padding: const EdgeInsets.only(bottom: BorderSide.strokeAlignOutside),
      // scrollDirection: Axis.horizontal,
      physics: const AlwaysScrollableScrollPhysics(),

      child: getAtividadeInDataTable(atividades),
      //  DataTableCustom.getDataTable(
      //   DataColumnCustom.getColumns(nomeColunas),
      //   getAtividadeDataRows(atividades),
      // ),
    );
  }
}

DataTable getAtividadeInDataTable(List<Atividade> atividades) {
  List<String> colunas = ['Atividade', 'Data', 'Categoria', 'Ações'];
  return DataTableCustom.getDataTable(
    DataColumnCustom.getColumns(colunas),
    getAtividadeDataRows(atividades),
  );
}

Widget aplicarEstilo(Widget widget) {
  return Container(
    decoration: BoxDecorationCustom.getBoxDecoration(
      color: paletaCor,
      borderRadius: 8.0,
      borderWidth: 1.0,
    ),
    child: Padding(padding: const EdgeInsets.all(8.0), child: widget),
  );
}

List<DataRow> getAtividadeDataRows(List<Atividade> atividades) {
  return atividades.map((atividade) {
    return DataRow(
      cells: [
        DataCell(
          TextCustom(
            atividade.descricao,
            defaultFonteSize,
            FontWeight.bold,
            defaultTextColor,
          ).getText(),
        ),
        DataCell(
          TextCustom(
            atividade.data.toString(),
            defaultFonteSize,
            FontWeight.normal,
            defaultTextColor,
          ).getText(),
        ),
        DataCell(aplicarEstilo(obterIconeByCategoria(atividade.categoria))),
        DataCell(RowActionsCustom.obterRowActions()),
      ],
    );
  }).toList();
}
