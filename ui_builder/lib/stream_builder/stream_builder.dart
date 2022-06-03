import 'package:flutter/material.dart';

class StreamBuilderScreen extends StatefulWidget {
  const StreamBuilderScreen({Key? key}) : super(key: key);

  @override
  State<StreamBuilderScreen> createState() => _StreamBuilderScreenState();
}

class _StreamBuilderScreenState extends State<StreamBuilderScreen> {
  Stream<int> generatestream = (() async* {
    await Future<void>.delayed(const Duration(seconds: 1));
    yield 1;
    //throw "Error";
    await Future<void>.delayed(const Duration(seconds: 1));
    yield 2;
    await Future<void>.delayed(const Duration(seconds: 1));
    yield 3;
    await Future<void>.delayed(const Duration(seconds: 1));
    yield 4;
    await Future<void>.delayed(const Duration(seconds: 1));
    yield 5;
  })();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stream Builder Screen"),
      ),
      body: Center(
        child: StreamBuilder(
          stream: generatestream,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator.adaptive();
            }
            if (snapshot.hasError) {
              return const Text("Data has an error");
            } else {
              return Text(
                snapshot.data.toString(),
                style: const TextStyle(
                  fontSize: 150,
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
