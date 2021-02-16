import 'package:anime_portal/controllers/auth_controller.dart';
import 'package:anime_portal/controllers/bindings/auth_binding.dart';
import 'package:anime_portal/views/home_page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';

import 'controllers/user_controller.dart';
import 'views/root_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: AuthBinding(),
      debugShowCheckedModeBanner: false,
      title: 'Anime Portal',
      theme: ThemeData(
        brightness: Brightness.dark,
        canvasColor: Color(0xFF171721),
        primaryColor: Color(0xFF171721),
        primarySwatch: Colors.blue,
        textTheme: TextTheme(),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF171721),
          shadowColor: Colors.blue,
          centerTitle: true,
        ),
      ),
      //home: RootApp(),
      home: GetX(
        initState: (_) async {
          Get.put<UserController>(UserController());
        },
        builder: (_) {
          if (Get.find<AuthController>().user != null) {
            return RootApp();
          } else {
            return HomePage();
          }
        },
      ),
    );
  }
}
