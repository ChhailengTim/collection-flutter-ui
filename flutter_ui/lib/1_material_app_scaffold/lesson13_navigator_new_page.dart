import 'package:flutter/material.dart';

class NewPage extends StatelessWidget {
  static const routeName = "new_page";
  const NewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Page"),
      ),
    );
  }
}
