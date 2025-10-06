import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:bmi/app_colors.dart';
import 'package:bmi/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({super.key, required this.bmi});

  final double bmi;

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  String resultTitle = "";

  String resultDescription = "";
  bool isLoading = true;

  @override
  void initState() {
    // TODO: implement initState
    if (widget.bmi <= 18.5) {
      resultTitle = "UNDERWEIGHT";
      resultDescription =
          'You have a lower weight than normal. Try to eat more.';
    } else if (widget.bmi <= 24.99) {
      resultTitle = "Healthyweight";
      resultDescription = 'You have a normal weight. Good job!';
    } else if (widget.bmi <= 29.99) {
      resultTitle = "Overweight";
      resultDescription =
          'You have a higher weight than normal. Try to exercise more.';
    } else {
      resultTitle = "Obeseweight";
      resultDescription =
          'You have a higher weight than normal. Try to exercise more.';
    }

    Future.delayed(Duration(seconds: 7), () {
      isLoading = false;
      setState(() {});
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator(color: kactionColor),
                  SizedBox(height: 10,),
                  SizedBox(
                    height: 50,
                    child: AnimatedTextKit(
                      animatedTexts: [
                        FadeAnimatedText("Loading...", textStyle: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold)),
                        FadeAnimatedText("Calculating BMI", textStyle: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold)),
                        FadeAnimatedText("Finishing", textStyle: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        : Scaffold(
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
                              resultTitle,
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Spacer(flex: 2),
                          Text(
                            widget.bmi.toStringAsFixed(1),
                            style: TextStyle(
                              fontSize: 60,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Spacer(flex: 1),
                          AnimatedTextKit(
                            animatedTexts: [
                              TypewriterAnimatedText(
                                resultDescription,
                                textStyle: TextStyle(fontSize: 25),
                              ),
                            ],
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
