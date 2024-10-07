import 'package:flutter/material.dart';

class CustomerReview extends StatelessWidget {
  const CustomerReview({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.date,
    required this.rating,
    required this.finalReview,
  });
  final String imageUrl;
  final String name;
  final String date;
  final String rating;
  final String finalReview;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(
          bottom: 35.0,
          left: 10,
          right: 10,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(imageUrl),
                    ),
                    Column(
                      children: [
                        Text(
                          name,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          date,
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.primary),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      size: 15,
                    ),
                    Text(rating),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              finalReview,
              style: TextStyle(
                  color: Theme.of(context).colorScheme.primaryContainer),
            )
          ],
        ),
      ),
    );
  }
}
