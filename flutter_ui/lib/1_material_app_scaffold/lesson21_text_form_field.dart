import 'package:flutter/material.dart';

class TextFieldTest extends StatefulWidget {
  const TextFieldTest({Key? key}) : super(key: key);

  @override
  State<TextFieldTest> createState() => _TextFieldTestState();
}

class _TextFieldTestState extends State<TextFieldTest> {
  final TextEditingController _controller = TextEditingController();
  String userInput = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Text Form Field"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.amber,
              child: Center(
                child: Text(
                  "Input your name here!",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          TextField(
            controller: _controller,
          ),
          Column(
            children: [
              MaterialButton(
                minWidth: double.infinity,
                child: Text(
                  "Display",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  setState(() {
                    userInput = _controller.text;
                  });
                },
              ),
            ],
          ),
          Expanded(
            flex: 4,
            child: Container(
              width: double.infinity,
              color: Colors.purple,
              child: Center(
                child: Text(
                  userInput,
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
