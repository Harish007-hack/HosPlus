import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:hosplus/components/custom/booking_grid_tile.dart';
import 'package:hosplus/components/custom/booking_info.dart';
import 'package:hosplus/components/custom/booking_reviews.dart';
import 'package:hosplus/components/scripts/get_month.dart';

class BookingScreen extends StatelessWidget {
  BookingScreen({super.key});
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(color: Colors.transparent),
        child: Container(
          margin: const EdgeInsets.all(25),
          height: 50,
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(25),
          ),
          child: const Center(child: Text("Book Appointment")),
        ),
      ),
      body: PageView(
        scrollDirection: Axis.vertical,
        controller: _controller,
        children: const [
          BookingInfo(),
          BookingReviews(),
        ],
      ),
    );
  }
}
