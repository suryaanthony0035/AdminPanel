import 'package:adminpanel/screens/Dashboard/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../widget/side_menu.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: SideMenu()),
          Expanded(
            flex: 5,
            child: DashboardScreen(),
          ),
        ],
      )),
    );
  }
}
