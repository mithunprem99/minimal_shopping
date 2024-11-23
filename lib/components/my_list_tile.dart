import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final IconData? icon;
  final String textData;
  final void Function()? onTap;
  MyListTile(
      {super.key,
      required this.icon,
      required this.textData,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(9.0),
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.grey,
        ),
        title: Text(textData),
        onTap: onTap,
      ),
    );
  }
}
