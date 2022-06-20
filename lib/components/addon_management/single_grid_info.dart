// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../models/addon_model.dart';
import '../../style/colors.dart';

import '../plans_management/list_carts.dart';
import '../plans_management/popupmenuButtons.dart';

class AddonInfoSingle extends StatelessWidget {
  final String title, description, price, addon, month;
  AddonInfoSingle({
    Key? key,
    required this.addon,
    required this.title,
    required this.description,
    required this.price,
    required this.month,
  }) : super(key: key);

  // final AddonModel addoninfo;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      margin: EdgeInsets.only(bottom: 30),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: Offset(1.0, 6.0),
            blurRadius: 40.0,
            color: Color.fromRGBO(0, 0, 0, 0.16),
          ),
        ],
        color: Colors.white,
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FittedBox(
                child: Container(
                  // padding: EdgeInsets.all(defaultPadding * 0.75),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Text(
                    title,
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Expanded(
                  child: ListViewDetails(
                    text: Row(
                      children: [
                        PlansManagementPopupButton(),
                      ],
                    ),
                  ),
                ),
              ),

              // Icon(Icons.more_vert, color: Colors.white54),
            ],
          ),
          Text(
            addon,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
          // ProgressLine(
          //   color: info.color,
          //   percentage: info.percentage,
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "${price}",
                style: TextStyle(fontSize: 50, color: Colors.black),
              ),
              Text(
                month,
                style: TextStyle(fontSize: 12, color: Colors.black),
              ),
            ],
          ),
          Text(
            description,
            maxLines: 3,
            style: Theme.of(context)
                .textTheme
                .caption!
                .copyWith(color: Colors.black87),
          ),
        ],
      ),
    );
    ;
  }
}
