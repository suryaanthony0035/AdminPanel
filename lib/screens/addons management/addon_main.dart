import 'package:flutter/material.dart';

import '../../models/addon_model.dart';
import '../../models/myfiles.dart';
import '../../style/colors.dart';
import '../../style/textstyles.dart';
import '../../widget/addon_management/single_grid_info.dart';
import '../../widget/dashboard/file_info_card.dart';
import '../../widget/drawer.dart';

class AddonMain extends StatelessWidget {
  const AddonMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: SideMenu(),
          ),
          Expanded(
            flex: 8,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 30,
                left: 30,
                right: 30,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset("assets/images/addon.png"),
                      const SizedBox(width: 20),
                      Text(
                        "Addon Management",
                        style: Textstyles.title,
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  FittedBox(
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: AppColors.rubyReds,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: BorderRadius.circular(5)),
                            child: Icon(
                              Icons.add,
                              color: AppColors.rubyReds,
                              size: 18,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Text(
                            "Add Addons",
                            style: TextStyle(
                              color: AppColors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: defaultPadding),
                  GridView.builder(
                    shrinkWrap: true,
                    itemCount: addonlist.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        crossAxisSpacing: defaultPadding,
                        childAspectRatio: 1.4),
                    itemBuilder: (context, index) => AddonInfoSingle(
                      addoninfo: addonlist[index],
                    ),
                  ),
                  // SizedBox(height: defaultPadding),
                  // GridView.builder(
                  //   shrinkWrap: true,
                  //   itemCount: addonlist.length,
                  //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  //       crossAxisCount: 4,
                  //       crossAxisSpacing: defaultPadding,
                  //       childAspectRatio: 1.4),
                  //   itemBuilder: (context, index) => AddonInfoSingle(
                  //     addoninfo: addonlist[index][3],
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
