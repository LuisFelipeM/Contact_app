import 'package:flutter/material.dart';

class CustomProfilePicture extends StatelessWidget {
  const CustomProfilePicture({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.amber),
      ),
    );
  }
}
