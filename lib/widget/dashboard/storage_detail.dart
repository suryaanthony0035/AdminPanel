import 'package:adminpanel/style/colors.dart';
import 'package:adminpanel/widget/dashboard/storage_Info_card.dart';
import 'package:flutter/material.dart';


import 'chart.dart';

class storageDetails extends StatelessWidget {
  const storageDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      // height: 500,
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "User Data Details",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: defaultPadding,
          ),
          Chart(),
          StorageInfoCard(
            svgSrc: "assets/icons/Documents.svg",
            title: "Document Files",
            numOfFiles: 1328,
            amountOfFiles: "1.3GB",
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/media.svg",
            title: "Media Files",
            numOfFiles: 1328,
            amountOfFiles: "15.3GB",
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/folder.svg",
            title: "Other Files",
            numOfFiles: 1328,
            amountOfFiles: "1.3GB",
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/unknown.svg",
            title: "Unknown",
            numOfFiles: 1328,
            amountOfFiles: "15.3GB",
          ),
        ],
      ),
    );
  }
}
