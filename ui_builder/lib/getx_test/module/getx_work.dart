import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_builder/getx_test/controller/increasment_get.dart';

class WorkGetX extends StatelessWidget {
  const WorkGetX({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final increasment = Get.put(Increasment());
    return Scaffold(
      body: Center(
        child: Obx(
          () => const Text("TEst"),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          increasment.counter();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
