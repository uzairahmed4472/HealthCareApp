// lib/routes/app_routes.dart
import 'package:flutter/material.dart';
import 'package:healthcareapp/screens/about_screen.dart';
import 'package:healthcareapp/screens/home_screen.dart';
import 'package:healthcareapp/screens/symptom_checker.dart';

class AppRoutes {
  static const String symptomChecker = '/symptomChecker';
  static const String homeScreen = '/homeScreen';
  static const String aboutScreen = '/aboutUsScreen';

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      symptomChecker: (context) => SymptomCheckerScreen(),
      homeScreen: (context) => HomeScreen(),
      aboutScreen: (context) => AboutUsPage(),

      // Add other routes here
    };
  }
}
