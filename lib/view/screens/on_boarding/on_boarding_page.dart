import 'package:drosak_management/core/resources/color_manager.dart';
import 'package:drosak_management/view/screens/on_boarding/widgets/body/custom_page_view_onboarding_screen.dart';
import 'package:flutter/material.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.green,
        height: 39,
      ),
      backgroundColor: ColorManager.kBlack,
      body:const  SafeArea(
        child: CustomPageViewOnBoardingScreen(),
      ),
    );
  }
}

