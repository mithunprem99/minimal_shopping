import 'package:flutter/material.dart';
import 'package:minimal_shoppig_app/models/product_model.dart';

class Shop extends ChangeNotifier {
  //product for sale
  final List<ProductModel> _shop = [
    ProductModel(
        name: "Product 1 ",
        price: 99.99,
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ",
        imagePath: "assets/shirt.jpeg"),
    ProductModel(
        name: "Product 2 ",
        price: 99.99,
        description: "Product description 2........",
        imagePath: "assets/shoe.jpeg"),
    ProductModel(
        name: "Product 3 ",
        price: 99.99,
        description: "Product description 3........",
        imagePath: "assets/hoddiee.jpeg"),
    ProductModel(
        name: "Product 4 ",
        price: 99.99,
        description: "Product description 4........",
        imagePath: "assets/watch.jpeg"),
    ProductModel(
        name: "Product 5 ",
        price: 99.99,
        description: "Product description 5........",
        imagePath: "assets/specs.jpeg")
  ];

  //user cart
  List<ProductModel> _cart = [];

  //get product list
  List<ProductModel> get shop => _shop;

  //get user cart
  List<ProductModel> get cart => _cart;

  // add to cart
  void addToCart(ProductModel item) {
    _cart.add(item);
    notifyListeners();
  }

  //remove from cart

  void removeFromCart(ProductModel item) {
    _cart.remove(item);
    notifyListeners();
  }
}
