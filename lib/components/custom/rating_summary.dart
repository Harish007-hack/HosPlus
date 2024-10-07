import 'package:flutter/material.dart';
import 'package:hosplus/components/custom/rating_bar_progress.dart';

class RatingSummary extends StatelessWidget {
  const RatingSummary({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        RatingBarProgress(number: 5, value: 10, remark: "Excellant"),
        RatingBarProgress(number: 4, value: 10, remark: "Good"),
        RatingBarProgress(number: 3, value: 10, remark: "Avergae"),
        RatingBarProgress(number: 2, value: 10, remark: "Below"),
        RatingBarProgress(number: 1, value: 10, remark: "Poor"),
      ],
    );
  }
}
