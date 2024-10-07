import 'package:flutter/material.dart';

//This tile is used in the listview as a tile to display the docs necessary info. 

class TopdoctorsTile extends StatelessWidget {
  const TopdoctorsTile({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.spealist,
  });
  final String imageUrl;
  final String name;
  final String spealist;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Image.network(
          imageUrl,
        ),
      ),
      title: Text(name),
      subtitle: Text(spealist),
      trailing: const Icon(Icons.arrow_forward_ios),
    );
  }
}
