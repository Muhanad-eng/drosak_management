import 'package:drosak_management/core/resources/assets_images_manager.dart';
import 'package:drosak_management/core/resources/constants_values.dart';
import 'package:drosak_management/model/on_boarding/on_boarding_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomItemOnBoardingScreen extends StatelessWidget {
  const CustomItemOnBoardingScreen({
    super.key, required this.onBoardingModel,
  });
  final OnBoardingModel onBoardingModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            child: SvgPicture.asset(onBoardingModel.onBoardingImage),
          ),
          const SizedBox(
            height: 50,
          ),
          Text(
            textAlign: TextAlign.center,
            onBoardingModel.onBoardingText,
            style:const  TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
