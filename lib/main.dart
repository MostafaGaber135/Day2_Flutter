import 'package:flutter/material.dart';
// import 'package:task_day2/screens/sign_in_screen.dart';
// import 'package:task_day2/screens/sign_up_screen.dart';
import 'package:task_day2/screens/on_boarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: OnBoarding());
  }
}
