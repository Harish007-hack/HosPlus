import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    super.key,
    required this.btntext,
    required this.btnColor,
    this.onTap,
    this.radius,
    this.icon,
  });
  final String btntext;
  final Color btnColor;
  final void Function()? onTap;
  final double? radius;
  final Icon? icon;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: btnColor,
          borderRadius: BorderRadius.circular(radius ?? 15),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                btntext,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.tertiary,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              icon != null
                  ? Icon(
                      Icons.arrow_forward_ios,
                      color: Theme.of(context).colorScheme.tertiary,
                      size: 18,
                    )
                  : Text(""),
            ],
          ),
        ),
      ),
    );
  }
}
