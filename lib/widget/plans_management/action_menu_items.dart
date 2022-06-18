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
    itemEdit,
    itemDelete,
  ];

  static MenuItem itemView = MenuItem(
    icon: Icons.visibility_outlined,
    text: 'View',
  );
  static MenuItem itemEdit = MenuItem(
    icon: Icons.edit,
    text: 'Edit',
  );

  static MenuItem itemDelete = MenuItem(
    icon: Icons.delete_outline,
    text: 'Delete',
  );
}
