import 'package:flutter/material.dart';
import 'package:projeto_final/home.dart';

void main() {
  runApp(Calculator());
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: ThemeData(
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        primaryColor: Color.fromRGBO(250, 250, 250, 1),
        primaryColorLight: Color.fromRGBO(233, 248, 243, 1),
        hintColor: Color.fromRGBO(248, 217, 221, 1),
        textTheme: TextTheme(
          headline4: TextStyle(
            color: Color.fromRGBO(0, 0, 0, 1),
            fontWeight: FontWeight.bold,
          ),
          headline5: TextStyle(
            color: Color.fromRGBO(0, 0, 0, 1),
          ),
          headline6: TextStyle(
            color: Color.fromRGBO(0, 0, 0, 0.6),
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
      darkTheme: ThemeData(
        backgroundColor: Color.fromRGBO(30, 30, 30, 1),
        primaryColor: Color.fromRGBO(36, 36, 36, 1),
        primaryColorLight: Color.fromRGBO(45, 45, 45, 1),
        hintColor: Color.fromRGBO(65, 65, 65, 1),
        textTheme: TextTheme(
          headline4: TextStyle(
            color: Color.fromRGBO(242, 242, 242, 1),
            fontWeight: FontWeight.bold,
          ),
          headline5: TextStyle(
            color: Color.fromRGBO(242, 242, 242, 1),
          ),
          headline6: TextStyle(
            color: Color.fromRGBO(242, 242, 242, 0.6),
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
      home: CalculatorHome(),
    );
  }
}
