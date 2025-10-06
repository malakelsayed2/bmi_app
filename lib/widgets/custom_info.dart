import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../app_colors.dart';

class CustomInfo extends StatefulWidget {
  const CustomInfo({super.key, required this.type, required this.info});

  final String type;

  final double info;

  @override
  State<CustomInfo> createState() => _CustomInfoState();
}

class _CustomInfoState extends State<CustomInfo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsGeometry.symmetric(vertical: 30),
      decoration: BoxDecoration(
        color: kcardColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Text(widget.type, style: TextStyle(fontSize: 20)),
          Text(
            widget.info.toStringAsFixed(0),
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap : (){

                  },
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: kincrementDecrementColor,
                    child: Icon(Icons.add),
                  ),
                ),
                GestureDetector(
                  onTap: () {

                  },
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: kincrementDecrementColor,
                    child: Icon(CupertinoIcons.minus),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
