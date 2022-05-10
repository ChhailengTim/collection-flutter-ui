import 'package:flutter/material.dart';

class ButtonShow extends StatefulWidget {
  const ButtonShow({Key? key}) : super(key: key);

  @override
  State<ButtonShow> createState() => _ButtonShowState();
}

class _ButtonShowState extends State<ButtonShow> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Button Tap"),
        ),
        body: Stack(
          children: [
            Column(
              mainAxisAlignment: number == 0
                  ? MainAxisAlignment.start
                  : number == 1
                      ? MainAxisAlignment.center
                      : MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: number == 0
                      ? MainAxisAlignment.start
                      : number == 1
                          ? MainAxisAlignment.center
                          : MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          // if (number == 2) {
                          //   number = 0;
                          // } else {
                          //   number = number + 1;
                          // }
                          number == 2 ? number = 0 : number = number + 1;
                        });
                      },
                      child: const Icon(
                        Icons.heart_broken,
                        size: 50,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
