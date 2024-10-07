import 'package:flutter/material.dart';

class RatingBarProgress extends StatelessWidget {
  const RatingBarProgress(
      {super.key,
      required this.number,
      required this.value,
      required this.remark});
  final int number;
  final double? value;
  final String remark;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      // mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("$number"),
                const SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.star,
                  size: 15,
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: 250,
                  child: LinearProgressIndicator(
                    minHeight: 5,
                    borderRadius: BorderRadius.circular(15),
                    value: 0.3,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Text(remark),
      ],
    );
  }
}
