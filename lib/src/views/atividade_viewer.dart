import 'package:flutter/material.dart';
import 'package:sliverexemple/src/commons/constants/constantes.dart';
import 'package:sliverexemple/src/commons/enumerators/enumerators.dart';
import 'package:sliverexemple/src/commons/widgets/text_custom.dart';
import 'package:sliverexemple/src/commons/widgets/text_field_custom.dart';
import 'package:sliverexemple/src/controllers/atividade_controller.dart';
import 'package:sliverexemple/src/models/atividade.dart';

class AtividadeViewer extends StatelessWidget {
  // AtividadeViewer({super.key});

  List<Atividade> atividades = [];

  AtividadeViewer({super.key}) {
    atividades.addAll([
      Atividade(
        id: 1,
        descricao: 'Atividade 1',
        data: '2023-01-01',
        hora: '08:00',
        local: 'Local 1',
        categoria: CategoriaAtividades.trabalho,
      ),
      Atividade(
        id: 2,
        descricao: 'Atividade 2',
        data: '2023-01-01',
        hora: '08:00',
        local: 'Local 1',
        categoria: CategoriaAtividades.alimentacao,
      ),
      Atividade(
        id: 3,
        descricao: 'Atividade 3',
        data: '2023-01-01',
        hora: '08:00',
        local: 'Local 1',
        categoria: CategoriaAtividades.viagem,
      ),
      Atividade(
        id: 4,
        descricao: 'Atividade 4',
        data: '2023-01-01',
        hora: '08:00',
        local: 'Local 2',
        categoria: CategoriaAtividades.exercicio,
      ),
      Atividade(
        id: 5,
        descricao: 'Atividade 5',
        data: '2023-01-01',
        hora: '08:00',
        local: 'Local 3',
        categoria: CategoriaAtividades.social,
      ),
    ]);
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
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        color: paletaCor,
        child: AtividadeController().toViewer(atividades),
      ),
    );
  }
}
