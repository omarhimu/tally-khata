import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'models/person.dart';
import 'models/transaction.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(PersonAdapter());
  Hive.registerAdapter(TransactionAdapter());
  await Hive.openBox<Person>('people');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'টালিখাতা',
      theme: ThemeData(primarySwatch: Colors.teal),
      home: HomePage(),
    );
  }
}

//... rest of the HomePage code (same as previously provided)