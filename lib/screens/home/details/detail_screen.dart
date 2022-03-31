import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/themes/font_themes.dart';

import 'detail_controller.dart';

class DetailScreen extends GetView<DetailController> {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Name Detail"),
      ),
      body: Center(
        child: Text(
          controller.name,
          style: textPage,
        ),
        // child: Text(controller.name),
      ),
    );
  }
}
