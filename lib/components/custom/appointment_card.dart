import 'package:flutter/material.dart';
import 'package:hosplus/components/custom/rounded_button.dart';


//this card is used to display the Appointment status along with few other details 
//regardding the appointment like the date time and doctor's info

class AppointmentCard extends StatelessWidget {
  const AppointmentCard({
    super.key,
    required this.name,
    required this.specialisation,
    required this.docImageSrc,
    required this.date,
    required this.time,
    required this.btnText,
    required this.btnColor,
    this.onTap,
  });
  final String name;
  final String specialisation;
  final String docImageSrc;
  final String date;
  final String time;
  final String btnText;
  final Color btnColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card.outlined(
        margin: EdgeInsets.all(10),
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              // Text("data"),
              Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                      docImageSrc,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        specialisation,
                        style: const TextStyle(fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.calendar_month),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(date),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.alarm),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(time),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              RoundedButton(text: btnText, btnColor: btnColor)
            ],
          ),
        ),
      ),
    );
  }
}
