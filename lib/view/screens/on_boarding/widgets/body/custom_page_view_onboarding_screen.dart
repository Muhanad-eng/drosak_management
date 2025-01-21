import 'package:drosak_management/core/resources/constants_values.dart';
import 'package:flutter/material.dart';

import 'custom_item_onboarding.dart';

class CustomPageViewOnBoardingScreen extends StatelessWidget {
  const CustomPageViewOnBoardingScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        itemCount:constList.listImages.length ,
        itemBuilder: (BuildContext context, int index) =>
            CustomItemOnBoardingScreen(onBoardingModel: constList.listImages[index],));
  }
}
