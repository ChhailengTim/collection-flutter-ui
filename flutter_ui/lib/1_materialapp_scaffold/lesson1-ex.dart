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
        body: Column(
          children: const [
            Text("My body"),
            Text("My body"),
            Text("My body"),
            Text("My body"),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.blue,
          child: IconButton(
            onPressed: () {
              debugPrint('Hello fluter code');
            },
            icon: const Icon(
              Icons.home,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
