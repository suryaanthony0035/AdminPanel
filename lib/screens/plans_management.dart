import 'dart:ui';

import 'package:adminpanel/style/colors.dart';
import 'package:adminpanel/style/textstyles.dart';

import 'package:adminpanel/widget/plans_management/plan_management_cards.dart';
import 'package:adminpanel/widget/drawer.dart';
import 'package:flutter/material.dart';

class PlansManageMent extends StatefulWidget {
  const PlansManageMent({Key? key}) : super(key: key);

  @override
  State<PlansManageMent> createState() => _PlansManageMentState();
}

class _PlansManageMentState extends State<PlansManageMent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: SideMenu(),
          ),
          Expanded(
            flex: 8,
            child: Padding(
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
                    children: [
                      Image.asset("assets/images/plansManagement.png"),
                      const SizedBox(width: 20),
                      Text(
                        "Plans Management - List",
                        style: Textstyles.title,
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  FittedBox(
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
                              Icons.add,
                              color: AppColors.rubyReds,
                              size: 18,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Text(
                            "Add Plans",
                            style: TextStyle(
                              color: AppColors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (context, index) =>
                          const PlanManagementCards(
                        name: 'Enhanced ',
                        duration: 'Monthly/Yearly',
                        freeTrail: 'Free Trial',
                        status: 'Public',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
