

import 'package:drosak_management/core/resources/assets_images_manager.dart';
import 'package:drosak_management/core/resources/color_manager.dart';
import 'package:drosak_management/core/resources/constants_values.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: ColorManager.kBlack,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
         Container(
          width: double.infinity,
          child: SvgPicture.asset(AssetsImagesManager.onBoardingImage2)),
          const SizedBox(height: 50,),
          const Text(ConstantsValues.konBoardingText1,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),

        ],
      ),
    );
  }
}