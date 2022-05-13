import 'package:flutter/material.dart';
import 'package:flutter_ui/1_material_app_scaffold/lesson13_navigator_new_page.dart';

class TestNavigator extends StatelessWidget {
  const TestNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const NewPage()));
          debugPrint("Tap");
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.arrow_forward,
              size: 30,
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomAppBar(
        color: Colors.blue,
        child: Icon(
          Icons.home,
          size: 50,
        ),
      ),
    );
  }
}
