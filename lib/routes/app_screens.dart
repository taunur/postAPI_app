import 'package:get/route_manager.dart';
import 'package:getx_app/screens/accounts/account_binding.dart';
import 'package:getx_app/screens/accounts/account_screen.dart';
import 'package:getx_app/screens/dashboard/dashboard_binding.dart';
import 'package:getx_app/screens/dashboard/dashboard_screen.dart';
import 'package:getx_app/screens/home/details/detail_binding.dart';
import 'package:getx_app/screens/home/details/detail_screen.dart';
import 'package:getx_app/screens/home/home_binding.dart';
import 'package:getx_app/screens/home/home_screen.dart';

import 'app_routes.dart';

class AppScreens {
  static var list = [
    // home screen
    GetPage(
      name: AppRoutes.home,
      page: () => const HomeScreen(),
      binding: HomeBinding(),
    ),
    // home screen
    GetPage(
      name: AppRoutes.detail,
      page: () => const DetailScreen(),
      binding: DetailBinding(),
    ),
    // account screen
    GetPage(
      name: AppRoutes.account,
      page: () => const AccountScreen(),
      binding: AccountBinding(),
    ), // home screen
    // Dashboard
    GetPage(
      name: AppRoutes.dashboard,
      page: () => const DashboardScreen(),
      binding: DashboardBinding(),
    ),
  ];
}
