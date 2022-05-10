import 'package:flutter/material.dart';

class HomeMe extends StatelessWidget {
  const HomeMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Flutter example"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: const [
                Text("Body Text"),
                Text("Body Text"),
                Text("Body Text"),
                Text("Body Text"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text("Body Text"),
                Text("Body Text"),
                Text("Body Text"),
                Text("Body Text"),
              ],
            )
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.blue,
          child: IconButton(
            icon: const Icon(
              Icons.home,
              color: Colors.white,
            ),
            onPressed: () {
              debugPrint("Done");
            },
          ),
        ),
      ),
    );
  }
}
