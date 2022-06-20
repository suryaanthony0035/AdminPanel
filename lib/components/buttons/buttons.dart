import 'package:flutter/material.dart';

import 'package:adminpanel/style/colors.dart';

class TextColorButton extends StatelessWidget {
  String name;
  Color color;

  TextColorButton({
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

class IconsButtonWidget extends StatelessWidget {
  String text;
  IconData iconData;
   IconsButtonWidget({
    Key? key,
    required this.text,
    required this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
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
                iconData,
                color: AppColors.rubyReds,
                size: 18,
              ),
            ),
            const SizedBox(width: 10),
            Text(
              text,
              style: TextStyle(
                color: AppColors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
