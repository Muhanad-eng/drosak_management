import 'package:drosak_management/core/resources/assets_images_manager.dart';
import 'package:drosak_management/core/resources/color_manager.dart';
import 'package:drosak_management/core/resources/routes_manager.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _topAnimation;
  late Animation<Offset> _bottomAnimation;
  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2))
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              Navigator.pushReplacementNamed(context, RoutesName.kOnboardingScreen);
            }
          });
    _topAnimation = Tween<Offset>(begin: const Offset(0, -1), end: Offset.zero)
        .animate(CurvedAnimation(
            parent: _animationController, curve: Curves.easeInOut));
    _animationController.forward();
    _bottomAnimation =
        Tween<Offset>(begin: const Offset(0, 1), end: Offset.zero).animate(
            CurvedAnimation(
                parent: _animationController, curve: Curves.easeInOut));
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.kBlack,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SlideTransition(
              position: _topAnimation,
              child: Image.asset(AssetsImagesManager.topBorderImage)),
          RotationTransition(
              turns: _animationController,
              child: Image.asset(AssetsImagesManager.logo)),
          Align(
              alignment: AlignmentDirectional.bottomEnd,
              child: SlideTransition(
                  position: _bottomAnimation,
                  child: Image.asset(AssetsImagesManager.bottomBorderImage)))
        ],
      ),
    );
  }
}
