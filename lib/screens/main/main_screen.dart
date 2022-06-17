import 'package:adminpanel/screens/Dashboard/dashboard.dart';
import 'package:adminpanel/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../widget/drawer.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
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
