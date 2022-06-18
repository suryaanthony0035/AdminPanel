import 'package:flutter/material.dart';

class MenuItem {
  final String text;
  final IconData icon;
  const MenuItem({
    required this.text,
    required this.icon,
  });
}

class MenuItems {
  static const List<MenuItem> itemsFirst = [
    itemView,
    itemEdit,
    itemDelete,
  ];
  static const List<MenuItem> itemsSecond = [
    itemEdit,
    itemDelete,
  ];

  static const MenuItem itemView = MenuItem(
    icon: Icons.visibility_outlined,
    text: 'View',
  );
  static const MenuItem itemEdit = MenuItem(
    icon: Icons.edit,
    text: 'Edit',
  );

  static const MenuItem itemDelete = MenuItem(
    icon: Icons.delete_outline,
    text: 'Delete',
  );
}
