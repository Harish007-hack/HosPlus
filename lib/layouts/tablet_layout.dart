import 'package:flutter/material.dart';
import 'package:hosplus/components/constants/flavor_constant.dart';

class DesktopLayout extends StatefulWidget {
  const DesktopLayout({super.key,required this.title});
  final String title;

  @override
  State<DesktopLayout> createState() => _DesktopLayoutState();
}

class _DesktopLayoutState extends State<DesktopLayout> {
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
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: bodyContent,
    );
  }
}
