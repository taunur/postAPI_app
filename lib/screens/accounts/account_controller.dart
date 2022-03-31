import 'package:get/get.dart';

class AccountController extends GetxController {
  // final String name = Get.arguments['name'];
  var count = 0.obs;

  void incrementCounter() {
    count.value += 1;
  }

  void decrementCounter() {
    count.value -= 1;
  }
}
