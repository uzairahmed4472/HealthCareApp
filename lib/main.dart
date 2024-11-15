import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healthcareapp/core/app_constant.dart';
import 'package:healthcareapp/firebase_options.dart';
import 'package:healthcareapp/routes.dart';
import 'package:healthcareapp/screens/home_screen.dart';
import 'package:healthcareapp/screens/splash_screen.dart';
import 'package:healthcareapp/screens/symptoms_select_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FirebaseFirestore.instance.settings = const Settings(
    // host: 'firestore.googleapis.com',
    // sslEnabled: true,
    persistenceEnabled: true,
    cacheSizeBytes: Settings.CACHE_SIZE_UNLIMITED,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        // scaffoldBackgroundColor: AppConstants.primaryColor,
        appBarTheme: AppBarTheme(
          backgroundColor: AppConstants.primaryColor,
          foregroundColor: Colors.white,
          elevation: 5,
        ),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.splashScreen,
      getPages: AppRoutes.getPages(),
    );
  }
}
