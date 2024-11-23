import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          // drawer header : logo
          DrawerHeader(
              child: Icon(
            Icons.shopping_bag,
            size: 72,
            color: Theme.of(context).colorScheme.inversePrimary,
          )),
          SizedBox(
            height: 25,
          )

          // shop tile

          // cart tile

          //exit
        ],
      ),
    );
  }
}
