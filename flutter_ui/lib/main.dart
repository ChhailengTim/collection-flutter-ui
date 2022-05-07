import 'package:flutter/material.dart';
import 'package:flutter_ui/1_materialapp_scaffold/lesson1_redo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: HomeMe(),
      ),
    );
  }
}
