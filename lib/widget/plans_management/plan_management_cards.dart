import 'package:adminpanel/style/colors.dart';
import 'package:adminpanel/style/textstyles.dart';
import 'package:adminpanel/widget/plans_management/action_menu_items.dart';
import 'package:flutter/material.dart';

class PlanManagementCards extends StatefulWidget {
  final String name;
  final String duration;
  final String freeTrail;
  final String status;

  const PlanManagementCards({
    Key? key,
    required this.name,
    required this.duration,
    required this.freeTrail,
    required this.status,
  }) : super(key: key);

  @override
  State<PlanManagementCards> createState() => _PlanManagementCardsState();
}

class _PlanManagementCardsState extends State<PlanManagementCards> {
  PopupMenuItem<MenuItem> buildItem(MenuItem menuItem) => PopupMenuItem(
        child: Row(
          children: [
            Icon(menuItem.icon, color: Colors.black, size: 20),
            const SizedBox(width: 12),
            Text(menuItem.text),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: FittedBox(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: AppColors.white,
            boxShadow: [
              BoxShadow(
                  offset: const Offset(2, 2),
                  color: AppColors.textGrey.withOpacity(0.1))
            ],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                ListViewDetails(
                  title: '#',
                  text: Text(
                    "1",
                    style: Textstyles.rowText,
                  ),
                ),
                ListViewDetails(
                  title: 'Name',
                  text: Text(
                    widget.name,
                    style: Textstyles.rowText,
                  ),
                ),
                ListViewDetails(
                  title: 'Duration',
                  text: Text(
                    widget.duration,
                    style: Textstyles.rowText,
                  ),
                ),
                ListViewDetails(
                  title: widget.freeTrail,
                  text: Text(
                    '1 month',
                    style: Textstyles.rowText,
                  ),
                ),
                ListViewDetails(
                  title: widget.status,
                  text: FittedBox(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 15),
                      decoration: BoxDecoration(
                          color: Colors.greenAccent.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(5)),
                      child: const Center(
                        child: Text(
                          "public",
                          style: TextStyle(
                            color: Color(0xff015727),
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                ListViewDetails(
                  title: 'Actions',
                  text: Row(
                    children: [
                      FittedBox(
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 15),
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(5)),
                          child: Center(
                            child: Text(
                              "Edit",
                              style: Textstyles.rowText,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 30),
                      PopupMenuButton<MenuItem>(
                        itemBuilder: (context) => [
                          ...MenuItems.itemsFirst.map(buildItem).toList(),
                        ],
                      ),
                    ],
                  ),
                )
              ]),
              // Text(
              //   "Discription",
              //   style: Textstyles.rowTitle,
              // ),
              // Padding(
              //   padding: const EdgeInsets.only(top: 10),
              //   child: Text(
              //     "Busibeez is a service that connects small business owners to each other as well as social media and local advertising services, delivering simple solutions. ",
              //     style: Textstyles.rowText,
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

class ListViewDetails extends StatelessWidget {
  String title;
  Widget text;
  ListViewDetails({
    Key? key,
    required this.title,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Padding(
        //   padding: EdgeInsets.only(bottom: 20),
        //   child: Text(
        //     title,
        //     style: Textstyles.rowTitle,
        //   ),
        // ),
        Padding(
          padding: EdgeInsets.only(bottom: 15),
          child: text,
        ),
      ],
    );
  }
}
