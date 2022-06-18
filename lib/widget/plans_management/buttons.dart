import 'package:flutter/material.dart';

import 'package:adminpanel/style/colors.dart';

class DialogButton extends StatelessWidget {
  String name;
  Color color;
  DialogButton({
    Key? key,
    required this.name,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: const EdgeInsets.only(top: 8, bottom: 8, left: 14, right: 14),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Text(
          name,
          style: TextStyle(
            color: AppColors.white,
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}
