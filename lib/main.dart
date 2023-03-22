import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

const primaryColor = Color(0xFF0A0E21);

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: primaryColor,
        appBarTheme: AppBarTheme(
          color: primaryColor,
        ),
      ),
      home: InputPage(),
    );
  }
}

