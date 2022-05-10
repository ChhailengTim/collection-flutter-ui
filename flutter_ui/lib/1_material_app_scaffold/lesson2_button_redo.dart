import 'package:flutter/material.dart';

class Tap extends StatefulWidget {
  const Tap({Key? key}) : super(key: key);

  @override
  State<Tap> createState() => _TapState();
}

class _TapState extends State<Tap> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          mainAxisAlignment: number == 0
              ? MainAxisAlignment.start
              : number == 1
                  ? MainAxisAlignment.center
                  : MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: number == 0
                  ? MainAxisAlignment.start
                  : number == 1
                      ? MainAxisAlignment.center
                      : MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      number == 2 ? number = 0 : number = number + 1;
                    });
                  },
                  child: const Icon(
                    Icons.heart_broken,
                    size: 50,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
