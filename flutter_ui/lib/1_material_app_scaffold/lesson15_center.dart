import 'package:flutter/material.dart';
import 'package:flutter_ui/1_material_app_scaffold/lesson13_navigator_new_page.dart';
import 'package:flutter_ui/1_material_app_scaffold/lesson16_centern_page.dart';

class CenterNote extends StatelessWidget {
  const CenterNote({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.amber,
        child: Row(
          children: [
            const Spacer(),
            IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const NewPage(),
                  ),
                );
              },
              icon: const Icon(
                Icons.home,
                size: 30,
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const ThirdPage(),
                  ),
                );
              },
              icon: const Icon(
                Icons.music_note,
                size: 30,
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
