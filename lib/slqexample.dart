import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

class SqlExample extends StatefulWidget {
  const SqlExample({Key? key}) : super(key: key);

  @override
  _SqlExampleState createState() => _SqlExampleState();
}

class _SqlExampleState extends State<SqlExample> {
  @override
  void initState() {
    super.initState();
    setUp();
  }

  setUp() {
    final db = openDatabase("test.db");
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(),
    );
  }
}
