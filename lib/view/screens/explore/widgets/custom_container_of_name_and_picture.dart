import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/resources/assets_images_manager.dart';
import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/fonts_manager.dart';
import '../../../../core/resources/height_manager.dart';

class CustomContainerOfNameAndPicture extends StatelessWidget {
  const CustomContainerOfNameAndPicture({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
                
     height: 100,
     width: 100,
     decoration:const BoxDecoration(
       borderRadius: BorderRadius.all(Radius.circular(10)),
       color: ColorManager.kBlack,
       boxShadow: [BoxShadow(
         color: ColorManager.kPrimaryColor,
         offset: Offset(5, 5),
       blurStyle: BlurStyle.outer,
       blurRadius: 10,
       spreadRadius: 1
         )
       ]
       
     ),
      child:Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
           Container(
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(12)
             ),
             padding: const EdgeInsets.symmetric(horizontal: 3,vertical: 7),
             margin:const EdgeInsets.symmetric(horizontal: 5,vertical: 6),
               width: double.infinity,
               child:const Text("المراحل التعليمية",
               style: TextStyle(color: ColorManager.kWhiteColor,fontFamily: FontsName.geoneDiner,fontSize: FontsSize.s12),)),
       SvgPicture.asset(AssetsImagesManager.onBoardingImage1,height: HeightManager.height63,)    
       
       
       ],
     ),
    );
  }
}