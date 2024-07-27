import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hosplus/components/constants/flavor_constant.dart';

class TabletLayout extends ConsumerStatefulWidget {
  const TabletLayout({super.key,required this.title});
  final String title;

  @override
  ConsumerState<TabletLayout> createState() => _TabletLayoutState();
}

class _TabletLayoutState extends ConsumerState<TabletLayout> {
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
