import 'package:flutter/material.dart';

class HmwUpcomingAppointmentCard extends StatelessWidget {
  const HmwUpcomingAppointmentCard({
    super.key,
    required this.image,
    this.onTap,
    required this.name,
    required this.dateTime,
  });
  final String image;
  final void Function()? onTap;
  final String name;
  final String dateTime;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 300,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.15), BlendMode.darken),
              image: NetworkImage(image),
              // alignment: Alignment(1, -1),
            ),
            // border: Border.all(width: 1, color: Colors.black),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 10, bottom: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Text(
                  dateTime,
                  style: const TextStyle(fontSize: 15, color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
