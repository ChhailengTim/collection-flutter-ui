import 'package:flutter/material.dart';
import 'package:flutter_ui/1_material_app_scaffold/lesson19_page_exercise.dart';

class Solve extends StatelessWidget {
  const Solve({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Solve Exercise"),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        child: IconButton(
          icon: const Icon(
            Icons.home,
            size: 30,
          ),
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const PageExercise()));
          },
        ),
      ),
    );
  }
}
