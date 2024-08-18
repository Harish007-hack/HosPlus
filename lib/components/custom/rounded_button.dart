import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    super.key,
    required this.text,
    required this.btnColor,
    this.onTap,
  });
  final String text;
  final Color btnColor;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: const Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Container(
          //   padding: const EdgeInsets.all(10),
          //   decoration: BoxDecoration(
          //     color: btnColor,
          //     borderRadius: BorderRadius.circular(15),
          //   ),
          //   child: Center(
          //     child: Icon(Icons.ac_unit_sharp,size: 30,),
          //   ),
          // ),
          Icon(
            Icons.ac_unit_rounded,
            size: 30,
          ),
          const SizedBox(
            height: 15,
          ),
          const Text("Hello"),
        ],
      ),
    );
  }
}
