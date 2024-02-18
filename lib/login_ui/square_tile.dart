import 'package:flutter/material.dart';

class SquareTile extends StatelessWidget {

  final String imagepath;
  const SquareTile({super.key,required this.imagepath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
        ),
        borderRadius: BorderRadius.circular(16),
        color: Colors.grey[200],
      ),
      width: 100,
      height: 100,
      child: Image.asset(imagepath),
    );
  }
}