

import 'package:drosak_management/core/resources/assets_images_manager.dart';
import 'package:drosak_management/core/resources/color_manager.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.kBlack,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(AssetsImagesManager.topBorderImage),
          Image.asset(AssetsImagesManager.logo),
          Align(alignment: Alignment.centerRight, child: Image.asset(AssetsImagesManager.bottomBorderImage))
          
        ],
      ),
    );
  }
}