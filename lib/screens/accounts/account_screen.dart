// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/screens/accounts/account_controller.dart';
import 'package:getx_app/themes/font_themes.dart';

class AccountScreen extends GetView<AccountController> {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Account Page",
              // controller.name,
              style: textPage,
            ),
            const SizedBox(
              height: 10,
            ),
            Obx(() => Text(
                  "Counter ${controller.count.value}",
                  style: textPage,
                )),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  heroTag: "btn1",
                  onPressed: () => controller.incrementCounter(),
                  child: const Icon(Icons.add),
                ),
                const SizedBox(
                  height: 5,
                  width: 10,
                ),
                FloatingActionButton(
                  heroTag: "btn2",
                  onPressed: () => controller.decrementCounter(),
                  child: const Icon(Icons.remove),
                ),
              ],
            ),
          ],
        ),
        // child: Text(controller.name),
      ),
    );
  }
}
