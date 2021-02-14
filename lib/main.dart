import 'package:anime_portal/views/home_page/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
          ),),
      home: HomePage(),
    );
  }
}
