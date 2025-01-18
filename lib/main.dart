import 'package:fitness_diet_app/app.dart';
import 'package:fitness_diet_app/on_boarding_section/view/on_boarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,

      home:  OnboardingScreen(),
    );
  }
}

