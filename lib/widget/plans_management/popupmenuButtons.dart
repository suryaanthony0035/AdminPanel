import 'package:adminpanel/screens/Authentication/admin_login.dart';
import 'package:adminpanel/widget/plans_management/action_menu_items.dart';
import 'package:adminpanel/widget/plans_management/dialogBox.dart';
import 'package:flutter/material.dart';

class PlansManagementPopupButton extends StatelessWidget {
  const PlansManagementPopupButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //popupmenu
    PopupMenuItem<MenuItem> buildItem(MenuItem menuItem) =>
        PopupMenuItem<MenuItem>(
          value: menuItem,
          child: Row(
            children: [
              Icon(menuItem.icon, color: Colors.black, size: 20),
              const SizedBox(width: 12),
              Text(menuItem.text),
            ],
          ),
        );

//onselect
    void onSelected(BuildContext context, MenuItem items) {
      switch (items) {
        case MenuItems.itemView:
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AdminLogin()));
          break;
        case MenuItems.itemEdit:
          DialogBoxWidgets.deleteDialogBox(context);
          break;
        case MenuItems.itemDelete:
          break;
      }
    }

    return PopupMenuButton<MenuItem>(
      onSelected: (item) => onSelected(context, item),
      itemBuilder: (context) => [
        ...MenuItems.itemsFirst.map(buildItem).toList(),
      ],
    );
  }
}
