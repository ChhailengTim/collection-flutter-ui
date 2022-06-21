import 'package:flutter/material.dart';
import 'package:getx_api/deatail_screen/screen/detail_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DetialScreen(),
    );
  }
}
