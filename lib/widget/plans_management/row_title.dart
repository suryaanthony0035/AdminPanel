import 'package:adminpanel/style/textstyles.dart';
import 'package:flutter/material.dart';

class RowTitle extends StatelessWidget {
  const RowTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 40, bottom: 20),
      child: Row(
        children: [
          Expanded(
            child: Text(
              "#",
              style: Textstyles.rowTitle,
            ),
          ),
          Expanded(
            child: Text(
              "Name",
              style: Textstyles.rowTitle,
            ),
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Discription",
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
      ),
    );
  }
}
