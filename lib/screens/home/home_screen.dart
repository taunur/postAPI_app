// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/routes/app_routes.dart';
import 'package:getx_app/screens/home/home_controller.dart';
import 'package:getx_app/themes/font_themes.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(controller.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Home Page',
              style: textPage,
            ),
            const SizedBox(
              height: 10,
            ),
            RaisedButton(
              onPressed: () => Get.toNamed(
                AppRoutes.detail,
                arguments: {'name': "Taufik Nurrahman"},
              ),
              child: const Text("Account"),
            ),
          ],
        ),
      ),
    );
  }
}
