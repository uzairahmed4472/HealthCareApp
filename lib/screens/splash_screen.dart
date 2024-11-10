import 'package:flutter/material.dart';
import 'package:healthcareapp/core/app_constant.dart';
import 'package:healthcareapp/routes.dart';
import 'package:healthcareapp/screens/home_screen.dart';
import 'package:healthcareapp/widgets/masked_image.dart';
import 'package:healthcareapp/widgets/round_icon_button.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.sizeOf(context).width;
    double screenHeight = MediaQuery.sizeOf(context).height;
    return Scaffold(
      backgroundColor: AppConstants.primaryColor, // Simplified color definition
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Main heading for the app
              const SizedBox(height: 20),
              Column(
                children: [
                  Text(
                    "Health Care App",
                    style: TextStyle(
                      fontSize: (screenHeight * 0.05),
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10),
                  Divider(color: Colors.white, thickness: 1),
                ],
              ),
              // Image section

              Image.asset(
                'assets/images/A-man-wearing-medical-mask-clipart-PNG.png',
                height: 200,
                width: 200,
              ),
              // Subtitle and prompt
              const Text(
                'Are you feeling unwell?\nLet\'s check your symptoms!',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              // Button to navigate to home screen
              RoundIconButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, AppRoutes.homeScreen);
                },
              ),
              const SizedBox(height: 10),
              // Additional info
              const Text(
                'Stay at home!',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
