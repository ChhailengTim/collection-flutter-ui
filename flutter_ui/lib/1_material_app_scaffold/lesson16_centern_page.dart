import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  static const routeName = "third_page";
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Third Page"),
      ),
      body: const Center(
        child: Text("Hello World!"),
      ),
    );
  }
}
