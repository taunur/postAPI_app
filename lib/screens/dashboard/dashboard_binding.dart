import 'package:get/get.dart';
import 'package:getx_app/screens/dashboard/dashboard_controller.dart';
import 'package:getx_app/screens/home/details/detail_controller.dart';
import 'package:getx_app/screens/home/home_controller.dart';
import 'package:getx_app/screens/posts/posts_controller.dart';

import '../accounts/account_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(
      () => DashboardController(),
    );
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<DetailController>(
      () => DetailController(),
    );
    Get.lazyPut<AccountController>(
      () => AccountController(),
    );
    Get.lazyPut<PostController>(
      () => PostController(),
    );
  }
}
