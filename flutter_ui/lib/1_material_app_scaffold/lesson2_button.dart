import 'package:flutter/material.dart';

class ShowMe extends StatefulWidget {
  const ShowMe({Key? key}) : super(key: key);

  @override
  State<ShowMe> createState() => _ShowMeState();
}

class _ShowMeState extends State<ShowMe> {
  bool myNewButton = false;
  String myText = "Hello";
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
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  myNewButton = !myNewButton;
                });
              },
              child: const Text("My tap"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(myNewButton ? "This is true" : myText),
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
