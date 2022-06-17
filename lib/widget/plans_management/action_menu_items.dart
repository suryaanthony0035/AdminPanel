import 'package:flutter/material.dart';

class MenuItem {
  String text;
  final IconData icon;
  MenuItem({
    required this.text,
    required this.icon,
  });
}

class MenuItems {
  static List<MenuItem> itemsFirst = [
    itemView,
    viewDiscription,
    itemDelete,
  ];

  static MenuItem itemView = MenuItem(
    icon: Icons.visibility_outlined,
    text: 'View',
  );
  static MenuItem viewDiscription = MenuItem(
    icon: Icons.delete_outline,
    text: 'Discription',
  );
  static MenuItem itemDelete = MenuItem(
    icon: Icons.delete_outline,
    text: 'Delete',
  );
}
