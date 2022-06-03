import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class FutureData extends StatefulWidget {
  const FutureData({Key? key}) : super(key: key);

  @override
  State<FutureData> createState() => _FutureDataState();
}

class _FutureDataState extends State<FutureData> {
  Future<String> getData() async {
    await Future.delayed(
      const Duration(seconds: 1),
    );
    //throw "This is error";
    return "it's work";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Future Data"),
      ),
    );
  }
}
