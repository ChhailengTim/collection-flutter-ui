import 'package:flutter/material.dart';

class Taps extends StatefulWidget {
  const Taps({Key? key}) : super(key: key);

  @override
  State<Taps> createState() => _TapState();
}

class _TapState extends State<Taps> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("More Container"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
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
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          number == 2 ? number = 0 : number = number + 1;
                        });
                      },
                      child: const Icon(
                        Icons.emoji_emotions,
                        size: 50,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
