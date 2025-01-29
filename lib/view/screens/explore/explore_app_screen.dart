
import 'package:drosak_management/core/resources/color_manager.dart';
import 'package:drosak_management/core/resources/constants_values.dart';
import 'package:drosak_management/core/resources/fonts_manager.dart';
import 'package:flutter/material.dart';


import 'widgets/custom_container_of_name_and_picture.dart';

class ExploreApp extends StatelessWidget {
  const ExploreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: ColorManager.kBlack,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title:const Text(ConstantsValues.kAppbarTiteExploreScreen,
          style: TextStyle(color: ColorManager.kPrimaryColor,fontFamily: FontsName.geoneDiner,
          fontSize: 20),),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: Container(
            child: GridView.builder(
              itemCount: 5,
              gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
              
                crossAxisCount: 2,
                mainAxisSpacing: 34,
                crossAxisSpacing: 39),
             itemBuilder: (context,index)=>const CustomContainerOfNameAndPicture()),
          ),
        ),
      ),
    );
  }
}

