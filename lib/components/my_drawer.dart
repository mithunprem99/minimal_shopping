import 'package:flutter/material.dart';
import 'package:minimal_shoppig_app/components/my_list_tile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // drawer header : logo
          Column(
            children: [
              DrawerHeader(
                  child: Icon(
                Icons.shopping_bag,
                size: 72,
                color: Theme.of(context).colorScheme.inversePrimary,
              )),
              SizedBox(
                height: 25,
              ),

              // shop tile
              MyListTile(
                  icon: Icons.home,
                  textData: "Home",
                  onTap: () => Navigator.pop(context)),
              MyListTile(
                  icon: Icons.shopping_cart,
                  textData: "Cart",
                  onTap: () {
                    Navigator.pop(context);

                    Navigator.pushNamed(context, '/cart_page');
                  }),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: MyListTile(
                icon: Icons.logout,
                textData: "Exit",
                onTap: () => Navigator.pushNamed(context, '/intro_page')),
          )

          // cart tile

          //exit
        ],
      ),
    );
  }
}
