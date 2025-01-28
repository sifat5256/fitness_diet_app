import 'package:firebase_core/firebase_core.dart';
import 'package:fitness_diet_app/app.dart';
import 'package:fitness_diet_app/on_boarding_section/view/on_boarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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

