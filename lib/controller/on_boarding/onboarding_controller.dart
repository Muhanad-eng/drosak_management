import 'dart:async';

import 'package:drosak_management/core/resources/constants_values.dart';
import 'package:drosak_management/core/resources/duration_values_manager.dart';
import 'package:drosak_management/core/resources/routes_manager.dart';
import 'package:flutter/material.dart';

class OnBoardingController {
  late StreamController<int> streamControllerDotIndicator;
  late Sink<int> inputDotIndicator;
  late Stream<int> outputDotIndicator;
  int currentIndex = 0;
  PageController pageControllerOnBoardingScreen =
      PageController(initialPage: 0);
  OnBoardingController() {
    initController();
  }
  void initController() {
    streamControllerDotIndicator = StreamController();
    inputDotIndicator = streamControllerDotIndicator.sink;
    outputDotIndicator = streamControllerDotIndicator.stream;
    inputDotIndicator.add(currentIndex);
  }

  void goNext() {
    if (currentIndex + 1 >= constList.listImages.length) {
      currentIndex = 0;
    } else {
      currentIndex++;
    }
    inputDotIndicator.add(currentIndex);
    pageControllerOnBoardingScreen.animateToPage(currentIndex,
        duration: const Duration(seconds: DurationValuesManager.s1),
        curve: Curves.easeInOut);
  }

  void skip(context) {
    Navigator.of(context).pushNamedAndRemoveUntil(RoutesName.kExploreScreen, (Route)=>false);
  }
}
