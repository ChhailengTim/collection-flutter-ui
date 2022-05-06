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
        // body: Column(
        //   children: const [
        //     Text("My body"),
        //     Text("My body"),
        //     Text("My body"),
        //     Text("My body"),
        //   ],
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("My body"),
            const Text("My body"),
            const Text("My body"),
            const Text("My body"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text("Row simple"),
                Text("Row simple"),
                Text("Row simple"),
                Text("Row simple"),
              ],
            ),
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
