import 'package:drosak_management/core/resources/constants_values.dart';
import 'package:drosak_management/core/resources/routes_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(ConstantsValues.widthDesignScreen, ConstantsValues.heightDesignScreen),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: RoutesName.kSplashScreen,
        routes: RoutesManager.routes,
        home: const Scaffold(
          body: Center(child: Text("data"),),
        ),
      ),
    );
  }
}