import 'package:bmi/app_colors.dart';
import 'package:bmi/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 15),
            child: Text(
              "Your Result",
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 45,
                horizontal: 15,
              ),
              child: Container(
                padding: EdgeInsetsGeometry.all(20),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: kcardColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Text(
                        "HEALTHYWEIGHT",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Spacer(flex: 2),
                    Text(
                      "22.3",
                      style: TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(flex: 1),
                    Text(
                      "You have a normal weight. Good job!",
                      style: TextStyle(fontSize: 25),
                    ),
                    Spacer(flex: 2),
                  ],
                ),
              ),
            ),
          ),
          CustomButton(
            navigator: () {
              Navigator.pop(context);
            },
            label: "RE-CALCULATE",
          ),
        ],
      ),
    );
  }
}
