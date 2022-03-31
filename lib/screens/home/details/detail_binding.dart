import 'package:get/get.dart';
import 'package:getx_app/screens/home/details/detail_controller.dart';

class DetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailController>(
      () => DetailController(),
    );
  }
}
