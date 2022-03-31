import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:getx_app/routes/app_routes.dart';
import 'package:getx_app/routes/app_screens.dart';
import 'package:getx_app/themes/app_themes.dart';

void main() {
  runApp(const GetApp());
}

class GetApp extends StatelessWidget {
  const GetApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "GetX App",
      initialRoute: AppRoutes.dashboard,
      getPages: AppScreens.list,
      darkTheme: AppThemes.dark,
      theme: AppThemes.light,
      themeMode: ThemeMode.system,
    );
  }
}
