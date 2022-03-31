import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/screens/alerts/alerts_controller.dart';

import '../../themes/font_themes.dart';

class AlertScreen extends GetView<AlertsController> {
  const AlertScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Alert Page",
          style: textPage,
        ),
      ),
    );
  }
}
