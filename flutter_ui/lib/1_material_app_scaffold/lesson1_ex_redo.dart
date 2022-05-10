import 'package:flutter/material.dart';

class Show extends StatelessWidget {
  const Show({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Flutter Redo Coding"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Hello World"),
            const Text("Hello World"),
            const Text("Hello World"),
            const Text("Hello World"),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text("Welcome to flutter"),
                Text("Welcome to flutter"),
                Text("Welcome to flutter"),
                Text("Welcome to flutter"),
              ],
            )
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.blue,
          child: IconButton(
            onPressed: () {
              debugPrint("Work");
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
