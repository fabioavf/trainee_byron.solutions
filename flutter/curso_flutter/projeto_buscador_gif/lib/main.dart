import 'package:flutter/material.dart';
import './ui/home_page.dart';
import './ui/gif_page.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.black,
      accentColor: Colors.white,
      fontFamily: 'Arial',
      textTheme: TextTheme(
        headline4: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        bodyText1: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.normal,
          color: Colors.white,
        ),
        bodyText2: TextStyle(
          fontSize: 12,
          color: Colors.white,
        ),
      ),
    ),
    home: HomePage(),
  ));
}
