import 'package:flutter/material.dart';

class TheShow extends StatelessWidget {
  const TheShow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Flutter Coding Exercise"),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.blue,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.home),
          ),
        ),
      ),
    );
  }
}
