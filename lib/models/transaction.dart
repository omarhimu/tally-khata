import 'package:hive/hive.dart';

part 'transaction.g.dart';

@HiveType(typeId: 1)
class Transaction extends HiveObject {
  @HiveField(0)
  double amount;

  @HiveField(1)
  bool isLent;

  @HiveField(2)
  DateTime date;

  Transaction({required this.amount, required this.isLent, required this.date});
}
