import 'package:flutter/material.dart';

class MakeHomeScreen extends StatelessWidget {
  const MakeHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Hello Flutter"),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.blue,
          child: IconButton(
            onPressed: () {
              debugPrint("Welcome to flutter");
            },
            icon: const Icon(Icons.home),
          ), //Icon(Icons.home),
        ),
      ),
    );
  }
}
