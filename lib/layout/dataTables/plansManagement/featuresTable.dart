import 'package:adminpanel/style/colors.dart';
import 'package:adminpanel/style/textstyles.dart';
import 'package:flutter/material.dart';

Table tableRow1(
  Color? color,
) {
  List<String>? data = [
    "SI.No",
    "Name",
    "Type",
    "Qty",
    "Module",
    "Sub-Module",
    "Default",
    "Edit",
    "Delete",
  ];
  return Table(children: [
    TableRow(
      children: List.generate(
        9,
        (index) => Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 10, top: 30, right: 10, bottom: 20),
              child: Text(
                data[index],
                style: Textstyles.tablerowTitle(
                  color: color!,
                ),
              ),
            ),
          ],
        ),
      ),
    )
  ]);
}

Table tableListRow1({
  Color? color = AppColors.textGrey,
 List<Widget>? datas,
}) {
  List<Widget>? data = [
    Text(
      "0",
      style: Textstyles.tablerowTitle(color: AppColors.textGrey),
    ),
    Text(
      "Plans Management",
      style: Textstyles.tablerowTitle(color: AppColors.textGrey),
    ),
    Text(
      "type",
      style: Textstyles.tablerowTitle(color: AppColors.textGrey),
    ),
    Text(
      "Qty",
      style: Textstyles.tablerowTitle(color: AppColors.textGrey),
    ),
    Text(
      "Module",
      style: Textstyles.tablerowTitle(color: AppColors.textGrey),
    ),
    Text(
      "Sub-Module",
      style: Textstyles.tablerowTitle(color: AppColors.textGrey),
    ),
    Text(
      "Default",
      style: Textstyles.tablerowTitle(color: AppColors.textGrey),
    ),
    const InkWell(
      child: Icon(
        Icons.edit_outlined,
      ),
    ),
    const InkWell(
      child: Icon(
        Icons.delete_outline,
      ),
    ),
  ];
  return Table(children: [
    TableRow(
      children: List.generate(
        9,
        (index) => Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 50),
              child: datas![index],
            ),
          ],
        ),
      ),
    )
  ]);
}
