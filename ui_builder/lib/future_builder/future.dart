import 'package:flutter/material.dart';

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
      body: Center(
        child: FutureBuilder(
          future: getData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            }
            if (snapshot.hasError) {
              return Text(
                snapshot.error.toString(),
              );
            } else {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    snapshot.data.toString(),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {});
                    },
                    child: const Text("Refresh"),
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
