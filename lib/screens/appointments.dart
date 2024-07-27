import 'package:flutter/material.dart';
import 'package:hosplus/components/custom/appointment_card.dart';

// This is the appointments page where you can keep track of the upcoming,
//Completed and cancelled appoitments.

class Appointments extends StatefulWidget {
  const Appointments({super.key});

  @override
  State<Appointments> createState() => _AppointmentsState();
}

class _AppointmentsState extends State<Appointments>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text("Appointment Schedule"),
        centerTitle: true,
        bottom: TabBar(
          dividerColor: Colors.transparent,
          labelColor: Colors.white,
          controller: _tabController,
          indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.redAccent,
          ),
          tabs: [
            Tab(
              // icon: Icon(Icons.abc),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  // border: Border.all(color: Colors.redAccent),
                ),
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Upcoming",
                  ),
                ),
              ),
            ),
            Tab(
              // icon: Icon(Icons.abc),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  // border: Border.all(color: Colors.redAccent),
                ),
                child: const Align(
                  alignment: Alignment.center,
                  child: Text("Complete"),
                ),
              ),
            ),
            Tab(
              // icon: Icon(Icons.abc),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  // border: Border.all(color: Colors.redAccent),
                ),
                child: const Align(
                  alignment: Alignment.center,
                  child: Text("Cancel"),
                ),
              ),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          ListView(
            children: const [
              AppointmentCard(
                name: "Dr. Blala Balala",
                specialisation: "Dr. Blala Balala",
                docImageSrc:
                    "https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-profiles/avatar-1.webp",
                date: "Wednesday 12/03/2024",
                time: "10:00 AM",
                btnText: "Cancel",
                btnColor: Colors.red,
              ),
            ],
          ),
          const Center(
            child: Text("No Completed Appointments"),
          ),
          const Center(
            child: Text("No Cancelled Appoitments"),
          ),
        ],
      ),
    );
  }
}
