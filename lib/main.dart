import 'package:flutter/material.dart';
import 'package:shop_app_v2/pages/HomePage.dart';
import 'package:shop_app_v2/pages/ItemPage.dart';
import 'package:shop_app_v2/pages/SplashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => const SplashScreen(),
        "homePage": (context) => HomePage(),
        "itemPage": (context) => const ItemPage(),
      },
    );
  }
}
