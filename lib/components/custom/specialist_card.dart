import 'package:flutter/material.dart';

//This Module is used to create a card that holds an image and three text in a column format.
//this is perticulary used for displaying the specialist on the search screen. 

class SpecialistCard extends StatelessWidget {
  const SpecialistCard({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.spealist,
    required this.rating,
  });
  final String imageUrl;
  final String name;
  final String spealist;
  final String rating;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.network(
              imageUrl,
              width: 150,
              height: 150,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Text(
            name,
          ),
          Text(spealist),
          Text(rating)
        ],
      ),
    );
  }
}
