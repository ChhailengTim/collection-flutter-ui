import 'package:flutter/material.dart';

class Condition extends StatefulWidget {
  const Condition({Key? key}) : super(key: key);

  @override
  State<Condition> createState() => _ConditionState();
}

class _ConditionState extends State<Condition> {
  @override
  Widget build(BuildContext context) {
    int number = 0;
    return Scaffold(
      body: Container(
        alignment: number == 0 ? Alignment.topCenter : Alignment.center,
        child: ElevatedButton(
          onPressed: () {
            setState(() {
              number++;
            });
            debugPrint("Work");
          },
          child: const Text("Tap"),
        ),
      ),
    );
  }
}
