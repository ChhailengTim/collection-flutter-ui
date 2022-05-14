import 'package:flutter/material.dart';

class TextExerciseField extends StatefulWidget {
  const TextExerciseField({Key? key}) : super(key: key);

  @override
  State<TextExerciseField> createState() => _TextExerciseFieldState();
}

class _TextExerciseFieldState extends State<TextExerciseField> {
  final TextEditingController _controller = TextEditingController();
  String userInput = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Exercise TextField"),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => TextField(
          controller: _controller,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: MaterialButton(
          child: Text(
            userInput,
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(fontWeight: FontWeight.bold, fontSize: 50),
          ),
          onPressed: () {
            setState(() {
              userInput = _controller.text;
            });
          },
        ),
      ),
    );
  }
}
