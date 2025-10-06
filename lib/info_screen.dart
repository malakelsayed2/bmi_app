import 'package:bmi/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:bmi/app_colors.dart';
import 'package:bmi/widgets/custom_gender_card.dart';
import 'package:bmi/result_screen.dart';
import 'package:flutter/cupertino.dart';

class InfoScreen extends StatefulWidget {

 const InfoScreen({super.key});

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  bool isSelectedMale = false;

  bool isSelectedFemale = false;

  double height = 160;

  double weight = 60;

  int age = 90;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BMI Calculator"), centerTitle: true),
      body: Column(
        children: [
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      isSelectedMale = true;
                      isSelectedFemale = false;
                      setState(() {});
                    },
                    child: CustomGenderCard(
                      isSelected: isSelectedMale,
                      icon: Icons.male,
                      gender: 'MALE',
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      isSelectedMale = false;
                      isSelectedFemale = true;
                      setState(() {});
                    },
                    child: CustomGenderCard(
                      isSelected: isSelectedFemale,
                      icon: Icons.female,
                      gender: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsetsGeometry.symmetric(vertical: 60),
                    decoration: BoxDecoration(
                      color: kcardColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Text("HEIGHT", style: TextStyle(fontSize: 20)),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: height.toStringAsFixed(0),
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 60,
                                ),
                              ),
                              TextSpan(
                                text: "cm",
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                        Slider(
                          activeColor: kactionColor,
                          inactiveColor: Colors.grey,
                          min: 120,
                          max: 220,
                          value: height,
                          onChanged: (value) {
                            height = value;
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsetsGeometry.symmetric(vertical: 30),
                    decoration: BoxDecoration(
                      color: kcardColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Text("WEIGHT", style: TextStyle(fontSize: 20)),
                        Text(
                          weight.toStringAsFixed(0),
                          style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  weight++;
                                  setState(() {});
                                },
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundColor: kincrementDecrementColor,
                                  child: Icon(Icons.add),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  if (weight > 25) {
                                    weight--;
                                    setState(() {});
                                  }
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
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Container(
                    padding: EdgeInsetsGeometry.symmetric(vertical: 30),
                    decoration: BoxDecoration(
                      color: kcardColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Text("AGE", style: TextStyle(fontSize: 20)),
                        Text(
                          age.toString(),
                          style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  if (age < 100) {
                                    age++;
                                    setState(() {});
                                  }
                                },
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundColor: kincrementDecrementColor,
                                  child: Icon(Icons.add),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  if (age > 5) {
                                    age--;
                                    setState(() {});
                                  }
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
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          CustomButton(navigator: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ResultScreen()),
            );
          }, label: "CALCULATE")
        ],
      ),
    );
  }
}
