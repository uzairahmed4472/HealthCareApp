import 'package:get/get.dart';
import 'package:healthcareapp/screens/about_screen.dart';
import 'package:healthcareapp/screens/home_screen.dart';
import 'package:healthcareapp/screens/result.dart';
import 'package:healthcareapp/screens/splash.dart';
import 'package:healthcareapp/screens/symptoms_selector.dart';

class AppRoutes {
  static const String splashScreen = '/';
  static const String homeScreen = '/homeScreen';
  static const String aboutScreen = '/aboutUsScreen';
  static const String symptomSelectorScreen = '/symptomSelectorScreen';
  static const String resultScreen = '/resultScreen';

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
        name: aboutScreen,
        page: () => AboutUsPage(),
      ),
      GetPage(
        name: symptomSelectorScreen,
        page: () => SymptomsSelectorScreen(),
      ),
      GetPage(
        name: resultScreen,
        page: () => ResultScreen(symptomList: []),
      ),
      // Add other routes here
    ];
  }
}
