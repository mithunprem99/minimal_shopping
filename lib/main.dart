import 'package:flutter/material.dart';
import 'package:minimal_shoppig_app/models/shop.dart';
import 'package:minimal_shoppig_app/pages/cart_page.dart';
import 'package:minimal_shoppig_app/pages/intro_page.dart';
import 'package:minimal_shoppig_app/pages/shope_page.dart';
import 'package:minimal_shoppig_app/themes/light_mode.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => Shop(),
    child: MyApp(),
  ));
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
        '/shop_page': (context) => ShopePage(),
        '/cart_page': (context) => CartPage()
      },
    );
  }
}
