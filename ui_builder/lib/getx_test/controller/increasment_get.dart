import 'package:get/get.dart';

class Increasment extends GetxController {
  final counter = RxInt(0);

  increasment() {
    counter.value++;
  }
}
