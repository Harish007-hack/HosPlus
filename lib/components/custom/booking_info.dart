import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:hosplus/components/custom/booking_grid_tile.dart';
import 'package:hosplus/components/scripts/get_month.dart';

class BookingInfo extends StatelessWidget {
  const BookingInfo({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                      "https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-profiles/avatar-1.webp"),
                ),
              ),
              const Center(
                child: Text(
                  "Dr. Kevon Lane",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Center(
                child: Text(
                  "Neurosurgon",
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50.0),
                child: Center(
                  child: Text(
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    "Dr. Jane Smith, MD, is a board-certified internist with over 15 years of experience in preventive care and chronic disease management. She graduated from Harvard Medical School and is committed to patient education and community health",
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              // const SizedBox(
              //   height: 25,
              // ),

              Padding(
                padding: const EdgeInsets.only(left: 20.0, bottom: 15),
                child: GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  childAspectRatio: 2.5,
                  // crossAxisSpacing: 25,
                  children: [
                    const BookingGridTile(
                        fieldIcon: Icon(Icons.business_center),
                        title: "Total Experience",
                        subtitle: "05+ Years"),
                    const BookingGridTile(
                      fieldIcon: Icon(Icons.star),
                      title: "Rating",
                      subtitle: "4.9 (500)",
                      contentPadding: EdgeInsets.only(left: 30),
                    ),
                    BookingGridTile(
                      fieldIcon: const Icon(Icons.monetization_on),
                      title: "\$200",
                      subtitle: "Consultation fee",
                      titleStyle: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                      subTitleStyle: TextStyle(
                        fontSize: 13,
                        color: Colors.grey[600],
                      ),
                    ),
                    // const BookingGridTile(
                    //     fieldIcon: const Icon(Icons.business_center),
                    //     title: "Total Experience",
                    //     subtitle: "05+ Years"),
                  ],
                ),
              ),
              Text(
                "Available Time",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.inversePrimary),
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          const GetMonth().getMonth(DateTime.now().month - 1),
                          style: const TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 15.0),
                          child: Row(
                            children: [
                              Icon(Icons.arrow_back_ios_new),
                              SizedBox(
                                width: 50,
                              ),
                              Icon(Icons.arrow_forward_ios),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  DatePicker(
                    DateTime.now(),
                    height: 90,
                    initialSelectedDate: DateTime.now(),
                    // inactiveDates: [],
                    daysCount: 30,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GridView(
                    padding: const EdgeInsets.all(0),
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            childAspectRatio: 1.5,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 10),
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color.fromARGB(148, 0, 0, 0)),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(child: Text("06:00")),
                            Center(child: Text("PM")),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color.fromARGB(148, 0, 0, 0)),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(child: Text("06:00")),
                            Center(child: Text("PM")),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color.fromARGB(148, 0, 0, 0)),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(child: Text("06:00")),
                            Center(child: Text("PM")),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color.fromARGB(148, 0, 0, 0)),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(child: Text("06:00")),
                            Center(child: Text("PM")),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color.fromARGB(148, 0, 0, 0)),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(child: Text("06:00")),
                            Center(child: Text("PM")),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: const EdgeInsets.all(15),
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(36, 194, 193, 192),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("View all availability"),
                        Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
