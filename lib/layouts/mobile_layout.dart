import 'package:flutter/material.dart';
import 'package:hosplus/components/constants/flavor_constant.dart';
import 'package:hosplus/screens/booking_screen.dart';
import 'package:hosplus/screens/search_results_screen.dart';
import 'package:hosplus/screens/search_screen.dart';

class MobileLayout extends StatefulWidget {
  const MobileLayout({super.key, required this.title});
  final String title;

  @override
  State<MobileLayout> createState() => _MobileLayoutState();
}

class _MobileLayoutState extends State<MobileLayout> {
  @override
  Widget build(BuildContext context) {
    Widget bodyContent = appFlavor != null && appFlavor == "client"
        ? Center(
            child: Text("$appFlavor"),
          )
        : Center(
            child: Text("$appFlavor"),
          );
    return Scaffold(
      body: SearchResultsScreen(),
    );
  }
}
