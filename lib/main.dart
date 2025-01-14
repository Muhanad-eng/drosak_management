import 'dart:io'; // لاستيراد Platform.isAndroid
import 'package:device_info_plus/device_info_plus.dart';
import 'package:drosak_management/app/my_app.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  String? androidVer = await getDeviceInfo();
  print("Android Version: $androidVer"); // طباعة الإصدار (للتأكد)
  runApp(const MyApp());
}

Future<String?> getDeviceInfo() async {
  if (Platform.isAndroid) { // تحقق من النظام الأساسي
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
    return androidInfo.version.release; // إرجاع الإصدار
  }
  return "Not an Android device"; // إذا لم يكن Android
}