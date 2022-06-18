import 'package:adminpanel/style/colors.dart';
import 'package:adminpanel/style/textstyles.dart';
import 'package:adminpanel/widget/plans_management/buttons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DialogBoxWidgets {
  static void deleteDialogBox(BuildContext context) {
    String name;
    Color color;
    showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
          content: FittedBox(
        child: Container(
          padding: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
          child: Column(
            children: [
              Text(
                "Are you sure want to delete the features?",
                style: TextStyle(
                  color: AppColors.textGrey,
                ),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  DialogButton(
                    name: 'cancel',
                    color: AppColors.rubyReds,
                  ),
                  const SizedBox(width: 30),
                  DialogButton(
                    name: 'Delete',
                    color: AppColors.mainColor,
                  )
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
