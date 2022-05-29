import 'package:flutter/material.dart';
import 'package:ui_builder/getx_test/module/getx_work.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Test Getx"),
        ),
        body: const WorkGetX(),
      ),
    );
  }
}
