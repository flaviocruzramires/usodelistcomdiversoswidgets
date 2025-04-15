import 'package:flutter/material.dart';
import 'package:sliverexemple/src/commons/constants/constantes.dart';
import 'package:sliverexemple/src/commons/enumerators/enumerators.dart';
import 'package:sliverexemple/src/commons/widgets/text_custom.dart';
import 'package:sliverexemple/src/controllers/atividade_controller.dart';
import 'package:sliverexemple/src/models/atividade.dart';

class AtividadeViewer extends StatelessWidget {
  // AtividadeViewer({super.key});

  List<Atividade> atividades = [];

  AtividadeViewer({super.key}) {
    criarAtividades(50);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            TextCustom(
              'Atividade Viewer',
              LargeFonteSize,
              FontWeight.bold,
              defaultTextColor,
            ).getText(),
        centerTitle: true,
        backgroundColor: paletaCor,
      ),
      body: Container(
        // padding: const EdgeInsets.all(16.0),
        // margin: const EdgeInsets.all(16.0),
        height: MediaQuery.of(context).size.height * 0.92,
        width: MediaQuery.of(context).size.width * 1,
        decoration: BoxDecoration(
          color: paletaCor,
          borderRadius: BorderRadius.zero,
          border: Border.all(color: defaultTextColor, width: 1.0),
          boxShadow: [
            BoxShadow(
              color: defaultTextColor,
              blurRadius: 10.0,
              offset: const Offset(0, 5),
            ),
          ],
        ),

        child: AtividadeController().toDataTable(atividades),
        // child: AtividadeController().toViewer(atividades),
      ),
    );
  }

  void criarAtividades(int quantidade) {
    for (int i = 0; i < quantidade; i++) {
      atividades.add(
        Atividade(
          id: i + 1,
          descricao: 'Atividade ${i + 1}',
          data: '2023-01-01',
          hora: '08:00',
          local: 'Local ${i + 1}',
          categoria:
              CategoriaAtividades.values[i % CategoriaAtividades.values.length],
        ),
      );
    }
  }
}
