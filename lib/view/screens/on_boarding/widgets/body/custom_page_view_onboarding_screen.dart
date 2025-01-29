import 'package:drosak_management/core/resources/constants_values.dart';
import 'package:flutter/material.dart';

import 'custom_item_onboarding.dart';

class CustomPageViewOnBoardingScreen extends StatelessWidget {
  const CustomPageViewOnBoardingScreen({
    super.key, required this.controller,
  });
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: PageView.builder(
        controller:controller ,
          itemCount:constList.listImages.length ,
          itemBuilder: (BuildContext context, int index) =>
              CustomItemOnBoardingScreen(onBoardingModel: constList.listImages[index],)),
    );
  }
}
