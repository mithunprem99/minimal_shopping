import 'package:flutter/material.dart';
import 'package:minimal_shoppig_app/components/my_button.dart';
import 'package:minimal_shoppig_app/models/product_model.dart';
import 'package:minimal_shoppig_app/models/shop.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = context.watch<Shop>().cart;
    return Scaffold(
      appBar: AppBar(
        title: Text("Shopping Cart"),
        backgroundColor: Colors.grey,
        elevation: 3,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Column(
        children: [
          Expanded(
            child: cart.isEmpty
                ? Center(child: Text("Your Cart is Empty"))
                : ListView.builder(
                    itemCount: cart.length,
                    itemBuilder: (context, index) {
                      //get individual item from cart

                      final item = cart[index];

                      //return a cart tile UI

                      return ListTile(
                        title: Text(item.name),
                        subtitle: Text(item.price.toStringAsFixed(2)),
                        trailing: IconButton(
                            onPressed: () => removeItemFromCart(context, item),
                            icon: Icon(Icons.delete)),
                      );
                    }),
          ),
          //pay button

          Padding(
            padding: const EdgeInsets.all(50.0),
            child: MyButton(
                onTap: () => payNowButton(context), child: Text("Pay Now!")),
          )
        ],
      ),
    );
  }

  void removeItemFromCart(BuildContext context, ProductModel products) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              content: Text("Do you need to remove this item to cart"),
              actions: [
                MaterialButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text("Cancel"),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.pop(context);

                    context.read<Shop>().removeFromCart(products);
                  },
                  child: Text("Remove"),
                )
              ],
            ));
  }

  void payNowButton(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              content: Text("Users wants to pay! Connect the app to backend"),
            ));
  }
}
