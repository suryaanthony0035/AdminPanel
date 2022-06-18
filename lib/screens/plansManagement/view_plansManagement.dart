import 'package:flutter/material.dart';

import 'package:adminpanel/style/colors.dart';
import 'package:adminpanel/style/textstyles.dart';
import 'package:adminpanel/widget/plans_management/popupmenuButtons.dart';

class ViewPlansManagement extends StatefulWidget {
  const ViewPlansManagement({Key? key}) : super(key: key);

  @override
  State<ViewPlansManagement> createState() => _ViewPlansManagementState();
}

class _ViewPlansManagementState extends State<ViewPlansManagement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset("assets/images/plansManagement.png"),
                    const SizedBox(width: 20),
                    Text(
                      "Plans Management - Enhanced  ",
                      style: Textstyles.title,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      CreatedDate(
                        date: '03/08/2012',
                        iconData: Icons.date_range_outlined,
                        text: 'Created Date : ',
                      ),
                      const SizedBox(width: 30),
                      CreatedDate(
                        date: '03/08/2012',
                        iconData: Icons.date_range_outlined,
                        text: 'Modify Date : ',
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),

//plan management Data

            FittedBox(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.textGrey.withOpacity(0.2),
                      blurRadius: 3,
                      offset: const Offset(1, 1),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Column(
                    children: [
                      const RowTitle(),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Expanded(
                            child: ListViewDetails(
                              text: Text(
                                "Enhanced",
                                style: Textstyles.rowText,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 5,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(right: 40, left: 20),
                              child: ListViewDetails(
                                // title: "Discription",
                                text: Text(
                                  "Busibeez is a service that connects small business owners to each other as well as social media and local advertising services, delivering simple solutions.",
                                  style: Textstyles.rowText,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: ListViewDetails(
                              text: Text(
                                "Monthly/Year",
                                style: Textstyles.rowText,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: ListViewDetails(
                              text: FittedBox(
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 15),
                                  decoration: BoxDecoration(
                                      color:
                                          Colors.greenAccent.withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Center(
                                    child: Text(
                                      "status",
                                      style: TextStyle(
                                        color: AppColors.statusColor,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: ListViewDetails(
                                text: Text(
                                  "1 month",
                                  style: Textstyles.rowText,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: ListViewDetails(
                                title: "Action",
                                text: const PlansManagementPopupViewButton()),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CreatedDate extends StatelessWidget {
  String text;
  String date;
  IconData iconData;

  CreatedDate({
    Key? key,
    required this.text,
    required this.date,
    required this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(fontSize: 12, color: AppColors.textGrey),
        ),
        const SizedBox(height: 5),
        FittedBox(
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: AppColors.mainColor,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(1, 1),
                    color: AppColors.textGrey.withOpacity(0.1),
                  )
                ]),
            child: Center(
              child: Text(
                date,
                style: TextStyle(color: AppColors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ListViewDetails extends StatelessWidget {
  String? title;
  Widget text;
  ListViewDetails({
    Key? key,
    this.title,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        text,
      ],
    );
  }
}

class RowTitle extends StatelessWidget {
  const RowTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            "Name",
            style: Textstyles.rowTitle,
          ),
        ),
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Description",
              style: Textstyles.rowTitle,
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Text(
            "Duration",
            style: Textstyles.rowTitle,
          ),
        ),
        Expanded(
          flex: 2,
          child: Text(
            "Free Trail",
            style: Textstyles.rowTitle,
          ),
        ),
        Expanded(
          flex: 2,
          child: Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Status",
              style: Textstyles.rowTitle,
            ),
          ),
        ),
        Expanded(
          child: Text(
            "Action",
            style: Textstyles.rowTitle,
          ),
        ),
      ],
    );
  }
}
