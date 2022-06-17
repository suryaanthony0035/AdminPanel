import 'package:adminpanel/screens/addons%20management/addon_main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(
              child: Image.asset(
                "assets/images/BBLOG SVG.png",
                height: 250,
                width: 250,
              ),
            ),
            DrawerListMenu(
              title: "Application Management",
              svgSrc: "assets/icons/menu_dashbord.svg",
              press: () {},
            ),
            DrawerListMenu(
              title: "Plan Mangement",
              svgSrc: "assets/icons/menu_tran.svg",
              press: () {},
            ),
            DrawerListMenu(
              title: "Addon Management",
              svgSrc: "assets/icons/menu_task.svg",
              press: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => AddonMain()));
              },
            ),
            DrawerListMenu(
              title: "Package Management",
              svgSrc: "assets/icons/menu_doc.svg",
              press: () {},
            ),
            DrawerListMenu(
              title: "Menu Management",
              svgSrc: "assets/icons/menu_store.svg",
              press: () {},
            ),
            DrawerListMenu(
              title: "Mobile Menu",
              svgSrc: "assets/icons/menu_notification.svg",
              press: () {},
            ),
            DrawerListMenu(
              title: "Web Menu",
              svgSrc: "assets/icons/menu_profile.svg",
              press: () {},
            ),
            DrawerListMenu(
              title: "Feed Management",
              svgSrc: "assets/icons/menu_setting.svg",
              press: () {},
            ),
            DrawerListMenu(
              title: "Catagory Management",
              svgSrc: "assets/icons/menu_setting.svg",
              press: () {},
            ),
            DrawerListMenu(
              title: "Slider Management",
              svgSrc: "assets/icons/menu_setting.svg",
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerListMenu extends StatelessWidget {
  const DrawerListMenu({
    Key? key,
    required this.title,
    required this.svgSrc,
    required this.press,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        onTap: press,
        horizontalTitleGap: 0.0,
        leading: SvgPicture.asset(
          svgSrc,
          color: Colors.black,
          height: 16,
        ),
        title: Text(
          title,
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
