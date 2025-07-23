import 'package:hive/hive.dart';
import 'transaction.dart';

part 'person.g.dart';

@HiveType(typeId: 0)
class Person extends HiveObject {
  @HiveField(0)
  String name;

  @HiveField(1)
  List<Transaction> transactions;

  Person({required this.name, required this.transactions});
}
