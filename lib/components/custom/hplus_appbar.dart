import 'package:flutter/material.dart';

//a custom silver app bar that extands and contracts according to the set params.

class HosplusAppBar extends StatefulWidget {
  const HosplusAppBar({
    super.key,
    required this.expandedHeight,
    required this.collapsedHeight,
    required this.nonCollapseableElement,
    required this.backgroundCollapsable,
  });
  final double expandedHeight;
  final double collapsedHeight;
  final Widget nonCollapseableElement;
  final Widget backgroundCollapsable;

  @override
  State<HosplusAppBar> createState() => _HosplusAppBarState();
}

class _HosplusAppBarState extends State<HosplusAppBar> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: widget.expandedHeight,
      collapsedHeight: widget.collapsedHeight,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        title: widget.nonCollapseableElement,
        background: widget.backgroundCollapsable,
        // title: Text("data"),
        titlePadding: const EdgeInsets.all(0),
        expandedTitleScale: 1,
      ),
    );
  }
}
