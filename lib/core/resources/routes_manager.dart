import 'package:drosak_management/view/screens/on_boarding/on_boarding_page.dart';
import 'package:drosak_management/view/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class RoutesManager {
  static Map<String, WidgetBuilder> routes = {
    RoutesName.kSplashScreen: (context) =>const SplashScreen(),
    RoutesName.kOnboardingScreen: (context) =>const OnBoardingPage()
    
  };
}

class RoutesName {
  static const String kSplashScreen = '/splashScreen';
  static const String kOnboardingScreen = '/OnBoardingPage';
}
