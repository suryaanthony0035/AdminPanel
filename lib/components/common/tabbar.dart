import 'package:flutter/material.dart';

import 'package:adminpanel/style/colors.dart';
import 'package:adminpanel/style/textstyles.dart';

class TabbarHeader extends StatelessWidget {
  final TabController _tabController;
  final List<Widget> tabs;
  const TabbarHeader({
    Key? key,
    required TabController tabController,
    required this.tabs,
  })  : _tabController = tabController,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, top: 10),
      width: 400,
      child: TabBar(
        controller: _tabController,
        labelColor: AppColors.white,
        unselectedLabelColor: AppColors.mainColor,
        unselectedLabelStyle: Textstyles.rowText,
        labelStyle: Textstyles.rowText,
        indicator: BoxDecoration(
          color: AppColors.mainColor,
          borderRadius: BorderRadius.circular(8),
        ),
        labelPadding: const EdgeInsets.only(
          top: 10,
          bottom: 10,
        ),
        tabs: tabs,
      ),
    );
  }
}
