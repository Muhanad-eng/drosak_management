import 'package:drosak_management/core/resources/routes_manager.dart';
import 'package:flutter/material.dart';

class SplashScreenController {
  late AnimationController animationController;
  late Animation<Offset> topAnimation;
  late Animation<Offset> bottomAnimation;
  final TickerProvider vsync;
  final BuildContext context;
  SplashScreenController(this.vsync, this.context) {
    initController();
  }
  void initController() {
    startAnimation();
  }
  void disposeController(){
       animationController.dispose();
  }

  void startAnimation() {
    animationController =
        AnimationController(vsync: vsync, duration: const Duration(seconds: 2))
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              goToBoardingPage(context);
            }
          });
    topAnimation = Tween<Offset>(begin: const Offset(0, -1), end: Offset.zero)
        .animate(CurvedAnimation(
            parent: animationController, curve: Curves.easeInOut));
    animationController.forward();
    bottomAnimation =
        Tween<Offset>(begin: const Offset(0, 1), end: Offset.zero).animate(
            CurvedAnimation(
                parent: animationController, curve: Curves.easeInOut));
    animationController.forward();
  }

  Future<Object?> goToBoardingPage(BuildContext context) =>
      Navigator.pushReplacementNamed(context, RoutesName.kOnboardingScreen);
}
