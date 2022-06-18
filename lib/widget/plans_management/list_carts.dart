import 'package:adminpanel/widget/plans_management/popupmenuButtons.dart';

import 'package:flutter/material.dart';

import 'package:adminpanel/style/colors.dart';
import 'package:adminpanel/style/textstyles.dart';

class ListCards extends StatefulWidget {
  final String index;
  final String discription;
  final String name;
  final String duration;
  final String freeTrail;
  final String status;

  const ListCards({
    Key? key,
    required this.index,
    required this.discription,
    required this.name,
    required this.duration,
    required this.freeTrail,
    required this.status,
  }) : super(key: key);

  @override
  State<ListCards> createState() => _ListCardsState();
}

class _ListCardsState extends State<ListCards> {
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
              Row(children: [
                // const Spacer(flex: 1),
                Expanded(
                  child: ListViewDetails(
                    text: Text(
                      widget.index,
                      style: Textstyles.rowText,
                    ),
                  ),
                ),
                Expanded(
                  child: ListViewDetails(
                    text: Text(
                      widget.name,
                      style: Textstyles.rowText,
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 40, left: 20),
                    child: ListViewDetails(
                      text: Text(
                        widget.discription,
                        style: Textstyles.rowText,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: ListViewDetails(
                    text: Text(
                      widget.duration,
                      style: Textstyles.rowText,
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: ListViewDetails(
                    text: Text(
                      widget.freeTrail,
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
                            color: Colors.greenAccent.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(5)),
                        child: Center(
                          child: Text(
                            widget.status,
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
                  child: ListViewDetails(
                    text: Row(
                      children: const [
                        PlansManagementPopupButton(),
                      ],
                    ),
                  ),
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}

class ListViewDetails extends StatelessWidget {
  Widget text;
  ListViewDetails({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        
        Padding(
          padding: EdgeInsets.only(bottom: 15),
          child: text,
        ),
      ],
    );
  }
}
