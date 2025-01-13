import 'package:drosak_management/core/resources/routes_manager.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RoutesName.kSplashScreen,
      routes: RoutesManager.routes,
      home: const Scaffold(
        body: Center(child: Text("data"),),
      ),
    );
  }
}