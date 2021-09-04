import 'package:bmi_calculator/home_screen.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: ('BMI'),
        home: homescreen());
  }
}