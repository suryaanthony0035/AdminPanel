import 'package:adminpanel/style/colors.dart';
import 'package:flutter/material.dart';

abstract class Textstyles {
  static TextStyle get title {
    return TextStyle(
      color: AppColors.textGrey,
      fontSize: 30,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle get rowTitle {
    return TextStyle(
      color: AppColors.mainColor,
      fontSize: 20,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle get rowText {
    return TextStyle(
      color: AppColors.textGrey,
      fontSize: 15,
    );
  }
}
