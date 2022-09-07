import 'package:flutter/material.dart';
import 'package:infilearn/constans.dart';

class AppTheme {
  static ThemeData blue() {
    return ThemeData(
      fontFamily: 'Inter',
      primaryColor: primaryColor,
      textTheme: const TextTheme(
        headline1: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
        headline2: TextStyle(
            fontSize: 26.0, fontWeight: FontWeight.bold, color: Colors.white),
        headline3: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700),
        headline4: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700),
        headline5: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w700),
        headline6: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w700),
        bodyText1: TextStyle(fontSize: 10.0),
      ),
    );
  }
}
