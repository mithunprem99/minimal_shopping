import 'package:flutter/material.dart';
import 'package:minimal_shoppig_app/pages/intro_page.dart';
import 'package:minimal_shoppig_app/pages/shope_page.dart';
import 'package:minimal_shoppig_app/themes/light_mode.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
      theme: lightMode,
      routes: {
        '/intro_page': (context) => IntroPage(),
        '/shop_page': (context) => ShopePage()
      },
    );
  }
}
