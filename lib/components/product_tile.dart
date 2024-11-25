import 'package:flutter/material.dart';
import 'package:minimal_shoppig_app/main.dart';
import 'package:minimal_shoppig_app/models/product_model.dart';
import 'package:minimal_shoppig_app/models/shop.dart';
import 'package:provider/provider.dart';

class ProductTile extends StatelessWidget {
  final ProductModel product;
  ProductTile({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.inversePrimary,
          borderRadius: BorderRadius.circular(20)),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(20),
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // product image
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: Container(
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        borderRadius: BorderRadius.circular(10)),
                    width: double.infinity,
                    padding: const EdgeInsets.all(25),
                    child: const Icon(Icons.favorite)),
              ),
              const SizedBox(
                height: 10,
              ),
              // product name
              Text(
                product.name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              // product description
              Text(
                product.description,
                style:
                    TextStyle(color: Theme.of(context).colorScheme.secondary),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
          // button to add to cart + price
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('\$' + product.price.toStringAsFixed(2)),
              Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.circular(10)),
                  child: IconButton(
                      onPressed: () => addToCart(context),
                      icon: Icon(Icons.add)))
            ],
          )
        ],
      ),
    );
  }

  void addToCart(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              content: Text("Do you need to add this item to cart"),
              actions: [
                MaterialButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text("Cancel"),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.pop(context);

                    context.read<Shop>().addToCart(product);
                  },
                  child: Text("Add"),
                )
              ],
            ));
  }
}
