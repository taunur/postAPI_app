import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/screens/accounts/account_screen.dart';
import 'package:getx_app/screens/alerts/alerts_screen.dart';
import 'package:getx_app/screens/dashboard/dashboard_controller.dart';
import 'package:getx_app/screens/home/home_screen.dart';

import 'package:getx_app/screens/posts/posts_screen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
            child: Center(
              child: IndexedStack(
                index: controller.tabIndex,
                children: const [
                  HomeScreen(),
                  PostScreen(),
                  AlertScreen(),
                  AccountScreen(),
                ],
              ),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: Colors.black,
            selectedItemColor: Colors.redAccent,
            onTap: controller.changeTabIndex,
            currentIndex: controller.tabIndex,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            items: [
              _bottomNavigatonBarItem(icon: CupertinoIcons.home, label: "Home"),
              _bottomNavigatonBarItem(icon: CupertinoIcons.news, label: "News"),
              _bottomNavigatonBarItem(
                  icon: CupertinoIcons.bell, label: "Alert"),
              _bottomNavigatonBarItem(
                  icon: CupertinoIcons.person, label: "Account"),
            ],
          ),
        );
      },
    );
  }

  _bottomNavigatonBarItem({IconData? icon, required String label}) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: label,
    );
  }
}
