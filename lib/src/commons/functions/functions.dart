import 'dart:math';

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
