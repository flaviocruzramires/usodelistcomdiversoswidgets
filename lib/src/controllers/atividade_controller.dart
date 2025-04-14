import 'package:flutter/material.dart';
import 'package:sliverexemple/src/commons/enumerators/enumerators.dart';
import 'package:sliverexemple/src/commons/functions/functions.dart';
import 'package:sliverexemple/src/commons/models/data_source_list_tile.dart';
import 'package:sliverexemple/src/models/atividade.dart';

class AtividadeController {
  // List<Atividade> atividades = []; // Lista de Atividade

  // void adicionarAtividade(Atividade atividade) {
  //   atividades.add(atividade); // Adiciona uma nova atividade à lista
  // }

  // void removerAtividade(Atividade atividade) {
  //   atividades.remove(atividade); // Remove uma atividade da lista
  // }

  // void atualizarAtividade(int index, Atividade atividade) {
  //   if (index >= 0 && index < atividades.length) {
  //     atividades[index] = atividade; // Atualiza uma atividade na lista
  //   }
  // }

  List<DataSourceListTile> toDataSourceListTile(List<Atividade> atividades) {
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
    List<DataSourceListTile> dataSourceListTile = toDataSourceListTile(
      atividades,
    );
    return ListView.builder(
      itemCount: dataSourceListTile.length,
      itemBuilder: (context, index) {
        return dataSourceListTile[index].toListTile();
      },
    );
  }
}
