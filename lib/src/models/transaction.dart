import 'package:sliverexemple/src/commons/enumerators/enumerators.dart';

class Transaction {
  final String name;
  final DateTime dateTime;
  final double amount;
  final TransactionType type;

  Transaction({
    required this.name,
    required this.dateTime,
    required this.amount,
    required this.type,
  });

  @override
  String toString() {
    return '{name: $name, dateTime: $dateTime}';
  }
}
