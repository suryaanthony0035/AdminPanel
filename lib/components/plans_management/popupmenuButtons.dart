import 'package:adminpanel/layout/screens/plansManagement/view_plansManagement.dart';
import 'package:adminpanel/models/plansManagement/action_menu_items.dart';
import 'package:adminpanel/layout/dialog/dialogBox.dart';
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
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ViewPlansManagement()));
          break;
        case MenuItems.itemEdit:
          break;
        case MenuItems.itemDelete:
          DialogBoxWidgets.deleteDialogBox(context);
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

class PlansManagementPopupViewButton extends StatelessWidget {
  const PlansManagementPopupViewButton({Key? key}) : super(key: key);

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
        case MenuItems.itemEdit:
          break;
        case MenuItems.itemDelete:
          DialogBoxWidgets.deleteDialogBox(context);
          break;
      }
    }

    return PopupMenuButton<MenuItem>(
      onSelected: (item) => onSelected(context, item),
      itemBuilder: (context) => [
        ...MenuItems.itemsSecond.map(buildItem).toList(),
      ],
    );
  }
}
