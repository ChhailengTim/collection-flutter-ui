import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_builder/change_colors/controller/change.dart';
import 'package:ui_builder/welcome/module/button.dart';

class ChangeColors extends StatelessWidget {
  const ChangeColors({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Change change = Get.put(Change());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Change Colors"),
      ),
      body: Obx(
        () => Column(
          children: [
            Button(
              color: change.color.value ? Colors.black : Colors.red,
              press: () {
                change.color.value = !change.color.value;
                debugPrint("${change.color.value}");
              },
            ),
            TextButton(
              child: Text(
                "Test",
                style: TextStyle(
                  fontSize: 150,
                  color: change.textcolor.value ? Colors.pink : Colors.purple,
                ),
              ),
              onPressed: () {
                change.textcolor.value = !change.textcolor.value;
              },
            ),
            IconButton(
              onPressed: () {
                change.iconcolor.value = !change.iconcolor.value;
              },
              icon: Icon(
                Icons.heart_broken,
                size: 60,
                color: change.iconcolor.value ? Colors.red : Colors.green,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                change.laptopmaccolor.value = !change.laptopmaccolor.value;
              },
              child: Row(
                children: [
                  Icon(
                    Icons.laptop_mac,
                    size: 150,
                    color: change.laptopmaccolor.value
                        ? Colors.brown
                        : Colors.orange,
                  ),
                  const Spacer(),
                  Icon(
                    Icons.laptop_mac,
                    size: 150,
                    color: change.laptopmaccolor.value
                        ? Colors.redAccent
                        : Colors.cyan,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
