import 'package:get/get.dart';
import 'package:healthcareapp/screens/health_tips_screen.dart';
import 'package:healthcareapp/screens/home_screen.dart';
import 'package:healthcareapp/screens/hospitals_screen.dart';
import 'package:healthcareapp/screens/result_screen.dart';
import 'package:healthcareapp/screens/splash_screen.dart';
import 'package:healthcareapp/screens/symptoms_select_screen.dart';

class AppRoutes {
  static const String splashScreen = '/';
  static const String homeScreen = '/homeScreen';
  static const String healthTipsScreen = '/aboutUsScreen';
  static const String symptomSelectorScreen = '/symptomSelectorScreen';
  static const String resultScreen = '/resultScreen';
  static const String hospitalScreen = '/hospitalScreen';

  static List<GetPage> getPages() {
    return [
      GetPage(
        name: splashScreen,
        page: () => SplashScreen(),
      ),
      GetPage(
        name: homeScreen,
        page: () => HomeScreen(),
      ),
      GetPage(
        name: healthTipsScreen,
        page: () => HealthTipsPage(),
      ),
      GetPage(
        name: symptomSelectorScreen,
        page: () => SymptomsSelectorScreen(),
      ),
      GetPage(
        name: resultScreen,
        page: () => ResultScreen(),
      ),
      GetPage(
        name: hospitalScreen,
        page: () => HospitalRecommendationPage(),
      ),
      // Add other routes here
    ];
  }
}
