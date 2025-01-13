import 'package:drosak_management/view/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class RoutesManager {
  static Map<String, WidgetBuilder> routes = {
    RoutesName.kSplashScreen: (context) =>const SplashScreen()
    
  };
}

class RoutesName {
  static const String kSplashScreen = '/splashScreen';
}
