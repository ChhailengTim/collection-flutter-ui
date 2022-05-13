import 'package:flutter/material.dart';
import 'package:flutter_ui/1_material_app_scaffold/lesson13_navigator_new_page.dart';

class SpacerIcon extends StatelessWidget {
  const SpacerIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.amber,
        child: Row(
          children: [
            const Spacer(),
            IconButton(
              icon: const Icon(
                Icons.home,
                size: 30,
              ),
              onPressed: () {},
            ),
            const Spacer(
              flex: 5,
            ),
            IconButton(
              icon: const Icon(
                Icons.alarm,
                size: 30,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const NewPage()));
              },
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
