import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_builder/getx_test/controller/increasment_get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final increasment = Get.put(Increasment());
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Test Getx"),
        ),
        body: Center(
          child: Obx(
            () => Text('${increasment.counter.value}'),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            increasment.counter.value++;
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
