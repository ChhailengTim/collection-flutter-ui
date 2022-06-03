import 'package:flutter/material.dart';

class StreamScreen extends StatefulWidget {
  const StreamScreen({Key? key}) : super(key: key);

  @override
  State<StreamScreen> createState() => _StreamScreenState();
}

class _StreamScreenState extends State<StreamScreen> {
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
        title: const Text("StreamBuilder"),
      ),
      body: Center(
        child: StreamBuilder(
          stream: generatestream,
          initialData: 0,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            }
            if (snapshot.hasError) {
              return const Text("Error");
            } else {
              return Text(
                snapshot.data.toString(),
                style: const TextStyle(fontSize: 150),
              );
            }
          },
        ),
      ),
    );
  }
}
