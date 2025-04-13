import 'package:sliverexemple/src/commons/enumerators/enumerators.dart';

class Atividade {
  final int id;
  final String descricao;
  final String data;
  final String hora;
  final String local;
  final CategoriaAtividades categoria;
  final String? observacao;

  Atividade({
    required this.id,
    required this.descricao,
    required this.data,
    required this.hora,
    required this.local,
    required this.categoria,
    this.observacao,
  });
}
