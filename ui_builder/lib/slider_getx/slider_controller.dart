import 'package:get/get.dart';

class SliderController extends GetxController {
  Rx<double> slider = 1.0.obs;

  void setController(double v) {
    slider.value = v;
  }
}
