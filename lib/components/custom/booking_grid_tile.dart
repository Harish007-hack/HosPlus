import 'package:flutter/material.dart';

class BookingGridTile extends StatelessWidget {
  const BookingGridTile({
    super.key,
    required this.fieldIcon,
    required this.title,
    required this.subtitle,
    this.titleStyle,
    this.subTitleStyle,
    this.contentPadding
  });
  final Icon fieldIcon;
  final String title;
  final String subtitle;
  final TextStyle? titleStyle;
  final TextStyle? subTitleStyle;
  final EdgeInsetsGeometry? contentPadding;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: contentPadding ?? const EdgeInsets.symmetric(horizontal: 16.0),
      // tileColor: Colors.amber,
      leading: fieldIcon,
      title: Text(
        title,
        style: titleStyle ?? TextStyle(
          fontSize: 13,
          color: Colors.grey[600],
          // fontWeight: FontWeight.w400,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: subTitleStyle ?? const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
