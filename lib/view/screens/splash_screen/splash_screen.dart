import 'package:drosak_management/controller/on_boarding/splash_screen_controller.dart';
import 'package:drosak_management/core/resources/assets_images_manager.dart';
import 'package:drosak_management/core/resources/color_manager.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late SplashScreenController _controller;
  @override
  void initState() {
    _controller = SplashScreenController(this,context);
    
  }

  @override
  void dispose() {
    _controller.disposeController();
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
              position: _controller.topAnimation,
              child: Image.asset(AssetsImagesManager.topBorderImage)),
          RotationTransition(
              turns:_controller.animationController,
              child: Image.asset(AssetsImagesManager.logo)),
          Align(
              alignment: AlignmentDirectional.bottomEnd,
              child: SlideTransition(
                  position: _controller.bottomAnimation,
                  child: Image.asset(AssetsImagesManager.bottomBorderImage)))
        ],
      ),
    );
  }
}
