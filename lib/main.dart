import 'package:adminpanel/layout/screens/Dashboard/dashboard.dart';
import 'package:adminpanel/layout/screens/plansManagement/plans_management.dart';
import 'package:adminpanel/layout/screens/plansManagement/view_plansManagement.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Admin Panel',
      // theme: ThemeData.dark().copyWith(
      //   scaffoldBackgroundColor: bgColor,
      //   textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
      //       .apply(bodyColor: Colors.white),
      //   canvasColor: secondaryColor,
      // ),
      home: ViewPlansManagement(),
    );
  }
}
