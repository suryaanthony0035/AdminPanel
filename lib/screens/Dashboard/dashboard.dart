
import 'package:adminpanel/models/recentfiles.dart';


import 'package:adminpanel/style/colors.dart';
import 'package:adminpanel/widget/dashboard/header.dart';
import 'package:adminpanel/widget/dashboard/my_field.dart';
import 'package:adminpanel/widget/dashboard/storage_detail.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';



class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Header(),
            SizedBox(height: defaultPadding),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      Myfield(),
                      SizedBox(
                        height: defaultPadding,
                      ),
                      Container(
                        padding: EdgeInsets.all(defaultPadding),
                        decoration: BoxDecoration(
                          color: secondaryColor,
                          // color: Colors.white,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Recent Files",
                                style: Theme.of(context).textTheme.subtitle1),
                            SizedBox(
                              width: double.infinity,
                              child: DataTable(
                                horizontalMargin: 0,
                                columnSpacing: defaultPadding,
                                columns: [
                                  DataColumn(
                                    label: Text("File Name"),
                                  ),
                                  DataColumn(
                                    label: Text("Data"),
                                  ),
                                  DataColumn(
                                    label: Text("Size"),
                                  ),
                                ],
                                rows: List.generate(
                                  demoRecentFiles.length,
                                  (index) => recentFileDataRow(
                                    demoRecentFiles[index],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(width: defaultPadding),
                Expanded(
                  flex: 2,
                  child: storageDetails(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  DataRow recentFileDataRow(RecentFile fileInfo) {
    return DataRow(
      cells: [
        DataCell(
          Row(
            children: [
              SvgPicture.asset(
                fileInfo.icon,
                height: 30,
                width: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                child: Text(fileInfo.title),
              )
            ],
          ),
        ),
        DataCell(
          Text(fileInfo.date),
        ),
        DataCell(
          Text(fileInfo.date),
        ),
      ],
    );
  }
}
