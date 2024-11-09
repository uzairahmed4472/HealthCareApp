// lib/routes/app_routes.dart
import 'package:flutter/material.dart';
import 'package:healthcareapp/screens/about_screen.dart';
import 'package:healthcareapp/screens/home_screen.dart';
import 'package:healthcareapp/screens/result.dart';
import 'package:healthcareapp/screens/splash.dart';

class AppRoutes {
  static const String symptomChecker = '/symptomChecker';
  static const String homeScreen = '/homeScreen';
  static const String aboutScreen = '/aboutUsScreen';
  static const String resultScreen = '/resultScreen';


  static Map<String, WidgetBuilder> getRoutes() {
    return {
      symptomChecker: (context) => SymptomCheckerScreen(),
      homeScreen: (context) => HomeScreen(),
      aboutScreen: (context) => AboutUsPage(),
  // resultScreen: (context)=> ResultScreen(symptomList: selected,),
      // Add other routes here
    };
  }
}
