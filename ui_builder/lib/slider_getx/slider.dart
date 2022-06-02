import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_builder/slider_getx/slider_controller.dart';

class SliderScreenGetX extends StatelessWidget {
  const SliderScreenGetX({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SliderController sliderController = Get.put(SliderController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Slider with GetX"),
      ),
      body: Obx(
        () => Column(
          children: [
            Text(
              sliderController.slider.value.round().toString(),
            ),
            Slider(
                value: sliderController.slider.value,
                min: 1,
                max: 100,
                divisions: 100,
                onChanged: (v) {
                  sliderController.setController(v);
                }),
          ],
        ),
      ),
    );
  }
}
