import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sliverexemple/src/commons/enumerators/enumerators.dart';
import 'package:sliverexemple/src/models/transaction.dart';

Future<List<Transaction>> onLoadMoreTransaction(
  int offset,
  DateTime baseDate,
) async {
  return List<Transaction>.generate(6, (index) {
    final tempDate = baseDate;
    baseDate = baseDate.subtract(const Duration(hours: 28));
    return Transaction(
      name: 'Transaction num #$index',
      dateTime: tempDate,
      amount: Random().nextDouble() * 1000,
      type: TransactionType.values[Random().nextInt(6)],
    );
  });
}

Icon aplicarEstilo(Icon icon) {
  return Icon(icon.icon, color: Colors.white60, size: 30);
}

obterIconeByCategoria(CategoriaAtividades categoria) {
  switch (categoria) {
    case CategoriaAtividades.estudo:
      return Icon(Icons.book);
    case CategoriaAtividades.trabalho:
      return Icon(Icons.work);
    case CategoriaAtividades.lazer:
      return Icon(Icons.local_activity);
    case CategoriaAtividades.exercicio:
      return Icon(Icons.fitness_center);
    case CategoriaAtividades.social:
      return Icon(Icons.people);
    case CategoriaAtividades.viagem:
      return Icon(Icons.flight);
    case CategoriaAtividades.alimentacao:
      return Icon(Icons.fastfood);
    case CategoriaAtividades.saude:
      return Icon(Icons.health_and_safety);
    case CategoriaAtividades.outros:
      return Icon(Icons.more_horiz);
  }
}

Icon obterIconByTransactiom(Transaction item) {
  Icon? icone;
  item.type == TransactionType.transport
      ? icone = const Icon(Icons.directions_bus)
      : item.type == TransactionType.food
      ? icone = const Icon(Icons.fastfood)
      : item.type == TransactionType.shopping
      ? icone = const Icon(Icons.shopping_bag)
      : item.type == TransactionType.entertainment
      ? icone = const Icon(Icons.movie)
      : item.type == TransactionType.health
      ? icone = const Icon(Icons.medical_services)
      : icone = const Icon(Icons.money);

  return aplicarEstilo(icone);
}
