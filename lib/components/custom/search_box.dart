import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    super.key,
    this.paddingHorizontal,
    this.paddingVertical,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    required this.textController,
  });
  final double? paddingVertical;
  final double? paddingHorizontal;
  final TextEditingController textController;
  final String? hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: paddingVertical ?? 25.0,
          horizontal: paddingHorizontal ?? 15),
      child: TextField(
        controller: textController,
        decoration: InputDecoration(
          hintFadeDuration: Durations.long1,
          hintText: hintText,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
        ),
      ),
    );
  }
}
