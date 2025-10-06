import 'package:flutter/material.dart';

import '../app_colors.dart';

class CustomGenderCard extends StatelessWidget {
  const CustomGenderCard({
    Key? key,
    required this.isSelected,
    required this.icon,
    required this.gender,
  }) : super(key: key);

  final bool isSelected;

  final IconData icon;

  final String gender;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsGeometry.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: kcardColor,
        border: isSelected ? Border.all(color: Colors.white) : null,
      ),
      child: Column(
        children: [
          Icon(icon, size: 90),
          Text(gender, style: TextStyle(fontSize: 20)),
        ],
      ),
    );
  }
}
