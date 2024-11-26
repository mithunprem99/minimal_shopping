import 'package:flutter/material.dart';
import 'package:minimal_shoppig_app/components/product_tile.dart';
import 'package:provider/provider.dart';

import 'package:minimal_shoppig_app/components/my_drawer.dart';
import 'package:minimal_shoppig_app/main.dart';
import 'package:minimal_shoppig_app/models/shop.dart';

class ShopePage extends StatelessWidget {
  ShopePage({super.key});

  @override
  Widget build(BuildContext context) {
    final products = context.watch<Shop>().shop;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        elevation: 3,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Minimal Shopping"),
        actions: [
          IconButton(
              onPressed: () => Navigator.pushNamed(context, '/cart_page'),
              icon: Icon(Icons.shopping_cart_outlined))
        ],
      ),
      drawer: const MyDrawer(),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                "Pick from the premium quality products",
                style: TextStyle(fontSize: 15.0),
              ),
            ),
          ),
          SizedBox(
            height: 550,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(20),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];
                  return ProductTile(
                    product: product,
                  );
                }),
          ),
        ],
      ),
    );
  }
}
