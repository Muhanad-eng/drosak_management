import 'package:drosak_management/core/resources/color_manager.dart';
import 'package:drosak_management/core/resources/constants_values.dart';
import 'package:drosak_management/core/resources/height_manager.dart';
import 'package:drosak_management/view/screens/on_boarding/widgets/body/custom_page_view_onboarding_screen.dart';
import 'package:flutter/material.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: ColorManager.kPrimaryColor,
        height: HeightManager.height39,
        child: const Padding(
          padding:  EdgeInsets.symmetric(horizontal: 12,vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               Text(ConstantsValues.next,style: TextStyle(fontFamily: "ge-dinar-one",fontSize: 12,color:ColorManager.kWhiteColor ),),
              Text(ConstantsValues.skip,style: TextStyle(fontFamily: "ge-dinar-one",fontSize: 12,color:ColorManager.kWhiteColor ),),
             
              
          
          ],),
        ),
      ),
      backgroundColor: ColorManager.kBlack,
      body:const  SafeArea(
        child: CustomPageViewOnBoardingScreen(),
      ),
    );
  }
}

