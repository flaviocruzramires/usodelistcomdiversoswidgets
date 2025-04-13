import 'package:flutter/material.dart';
import 'package:sliverexemple/src/commons/constants/constantes.dart';
import 'package:sliverexemple/src/commons/widgets/app_bar_custom.dart';
import 'package:sliverexemple/src/commons/widgets/box_decoration_custom.dart';
import 'package:sliverexemple/src/commons/widgets/data_column_custom.dart';
import 'package:sliverexemple/src/commons/widgets/drawer_custom.dart';
import 'package:sliverexemple/src/commons/widgets/row_actions_custom.dart';
import 'package:sliverexemple/src/commons/widgets/text_custom.dart';
import 'package:sliverexemple/src/models/empresa.dart';

class DataTableExample extends StatelessWidget {
  const DataTableExample({super.key});

  @override
  Widget build(BuildContext context) {
    final empresas = Empresa.obterEmpresas(quantidade: 10);
    return Scaffold(
      appBar: AppBarCustom.getAppBar(
        title: 'Gerenciador de Empresas',
        actions: [
          IconButton(
            icon: Icon(Icons.add, color: defaultTextColor),
            onPressed: () {
              // Lógica para adicionar uma nova empresa
              print('Adicionar nova empresa');
            },
          ),
        ],
      ),
      drawer: DrawerCustom.getDrawer(),
      body: obterDataTable(empresas),
    );
  }
}

SingleChildScrollView obterDataTable(List<Empresa> empresas) {
  var nomeColunas = ['Nome da Empresa', 'CNPJ', 'Telefone', 'Email', 'Ações'];
  return SingleChildScrollView(
    padding: EdgeInsets.all(16.0),
    child: DataTable(
      dataRowColor: WidgetStateProperty.all(paletaCor),
      decoration: BoxDecorationCustom.getBoxDecoration(),
      columns: DataColumnCustom.getColumns(nomeColunas),
      rows:
          empresas.map((empresa) {
            return DataRow(
              cells: [
                DataCell(
                  TextCustom(
                    empresa.nome,
                    defaultFonteSize,
                    FontWeight.bold,
                    defaultTextColor,
                  ).getText(),
                ),
                DataCell(
                  TextCustom(
                    empresa.cnpj,
                    defaultFonteSize,
                    FontWeight.normal,
                    defaultTextColor,
                  ).getText(),
                ),
                DataCell(
                  TextCustom(
                    empresa.telefone,
                    defaultFonteSize,
                    FontWeight.normal,
                    defaultTextColor,
                  ).getText(),
                ),
                DataCell(
                  TextCustom(
                    empresa.email,
                    defaultFonteSize,
                    FontWeight.normal,
                    defaultTextColor,
                  ).getText(),
                ),
                DataCell(RowActionsCustom.obterRowActions()),
              ],
            );
          }).toList(),
    ),
  );
}
