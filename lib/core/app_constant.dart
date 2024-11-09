import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class AppConstants {
  //Colors
  static const Color primaryColor = Color(0xFF5081E2);

  //
  static const String baseUrl = 'http://127.0.0.1:5000/';
  static const String localbaseUrl = 'http://192.168.18.28:5000/';
  static const String localbaseUrl2 = 'http://192.168.18.120:5000/';
  static const String dataEndpoint = 'data';
  static const String predictEndpoint = 'predict';
}

Logger logger = Logger();
