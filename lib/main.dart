
import 'package:bmi/app_colors.dart';
import 'package:bmi/info_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BmiApp());
}

class BmiApp extends StatefulWidget {
  const BmiApp({super.key});

  @override
  State<BmiApp> createState() => _BmiAppState();
}

class _BmiAppState extends State<BmiApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kscaffColor,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kactionColor,
            foregroundColor: Colors.white,
          ),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: kscaffColor,
          foregroundColor: Colors.white,
        ),
      ),
      home: InfoScreen(),
    );
  }
}
