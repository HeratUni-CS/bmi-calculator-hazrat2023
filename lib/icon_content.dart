import 'package:flutter/material.dart';

class iconContent extends StatelessWidget {
  final IconData iconData;
  final String label;

  iconContent({required this.iconData, required this.label});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(iconData,
          size: 65,
        ),
        SizedBox(height: 15.0),
        Text(
          label,
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
            color: Color(0xFF868892),
          ),
        )
      ],
    );
  }
}