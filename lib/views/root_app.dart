import 'package:anime_portal/controllers/auth_controller.dart';
import 'package:anime_portal/views/home_page/home_page.dart';
import 'package:anime_portal/views/login_page/login_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RootApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Get.find<AuthController>().user != null ? HomePage() : LoginPage();
    });
  }
}
