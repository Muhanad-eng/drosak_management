import 'package:dots_indicator/dots_indicator.dart';
import 'package:drosak_management/controller/on_boarding/onboarding_controller.dart';
import 'package:drosak_management/core/resources/color_manager.dart';
import 'package:drosak_management/core/resources/constants_values.dart';
import 'package:drosak_management/core/resources/height_manager.dart';
import 'package:drosak_management/view/screens/on_boarding/widgets/body/custom_page_view_onboarding_screen.dart';
import 'package:flutter/material.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  late OnBoardingController _controller;
  @override
  void initState() {
    _controller = OnBoardingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: ColorManager.kPrimaryColor,
        height: HeightManager.height39,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                  onTap: () => _controller.goNext(),
                  child: const Text(
                    ConstantsValues.next,
                    style: TextStyle(
                        fontFamily: "ge-dinar-one",
                        fontSize: 12,
                        color: ColorManager.kWhiteColor),
                  )),
              StreamBuilder<int>(
                stream: _controller.outputDotIndicator,
                builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
                  return DotsIndicator(
                    dotsCount: constList.listImages.length,
                    position: _controller.currentIndex,
                    decorator: const DotsDecorator(
                      color: ColorManager.kBlack, // Inactive color
                      activeColor: ColorManager.kWhiteColor,
                    ),
                  );
                },
              ),
              InkWell(
                onTap: () => _controller.skip(context),
                child: const Text(
                  ConstantsValues.skip,
                  style: TextStyle(
                      fontFamily: "ge-dinar-one",
                      fontSize: 12,
                      color: ColorManager.kWhiteColor),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: ColorManager.kBlack,
      body: SafeArea(
        child: CustomPageViewOnBoardingScreen(
          controller: _controller.pageControllerOnBoardingScreen,
        ),
      ),
    );
  }
}
