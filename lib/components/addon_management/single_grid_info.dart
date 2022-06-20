import 'package:flutter/material.dart';

import '../../models/addon_model.dart';
import '../../style/colors.dart';

class AddonInfoSingle extends StatelessWidget {
  AddonInfoSingle({Key? key, required this.addoninfo}) : super(key: key);

  final AddonModel addoninfo;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      margin: EdgeInsets.only(bottom: 30),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      // child: Column(
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //   children: [
      //     Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //       children: [
      //         Container(
      //           padding: EdgeInsets.all(defaultPadding * 0.75),
      //           height: 40,
      //           width: 40,
      //           decoration: BoxDecoration(
      //             borderRadius: BorderRadius.all(
      //               Radius.circular(10),
      //             ),
      //           ),
      //           child: Text(
      //             addoninfo.title,
      //             style: TextStyle(color: Colors.white),
      //           ),
      //         ),
      //         Icon(Icons.more_vert, color: Colors.white54),
      //       ],
      //     ),
      //     Text(
      //       addoninfo.addon,
      //       maxLines: 3,
      //       overflow: TextOverflow.ellipsis,
      //     ),
      //     // ProgressLine(
      //     //   color: info.color,
      //     //   percentage: info.percentage,
      //     // ),
      //     Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //       children: [
      //         Text(
      //           "${addoninfo.price}/-",
      //           style: TextStyle(fontSize: 50, color: Colors.white),
      //         ),
      //         Text(
      //           addoninfo.description,
      //           maxLines: 3,
      //           style: Theme.of(context)
      //               .textTheme
      //               .caption!
      //               .copyWith(color: Colors.white70),
      //         ),
      //       ],
      //     ),
      //   ],
      // ),
    );
    ;
  }
}
