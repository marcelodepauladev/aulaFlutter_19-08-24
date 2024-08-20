import 'package:flutter/material.dart';
import 'DataBaseHelp.dart';
import 'User.dart';

void main() {
  runApp(const MaterialApp(title: "Flutter", home: MyHomePage()));
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    dbHelper = DataBaseHelper();
    dbHelper.conectaDB().whenComplete(() async {
      setState(() {});
    });

    return Scaffold(
        appBar: AppBar(title: const Text('Flutter')),
        body: const Column(children: []));
  }
}

TextEditingController txtNome = TextEditingController();
TextEditingController txtEmail = TextEditingController();

late DataBaseHelper dbHelper;
