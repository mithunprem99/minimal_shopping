import 'package:flutter/material.dart';
import 'package:minimal_shoppig_app/components/my_drawer.dart';

class ShopePage extends StatelessWidget {
  const ShopePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        elevation: 3,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Minimal Shopping"),
      ),
      drawer: MyDrawer(),
    );
  }
}
