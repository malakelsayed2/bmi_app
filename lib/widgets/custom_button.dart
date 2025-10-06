import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.navigator, required this.label});

  final VoidCallback navigator ;
  final String label ;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(0)),
      child: ElevatedButton(
        onPressed: navigator ,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(),
        ),
        child: Text(label, style: TextStyle(fontSize: 25)),
      ),
    );
  }
}
