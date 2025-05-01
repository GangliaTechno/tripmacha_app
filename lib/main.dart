import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'core/bindings/initial_binding.dart';
import 'core/constants/app_constants.dart';
import './screens/splash_screen.dart';
import './core/bindings/splash_binding.dart';


void main() {
  runApp(TripMachaApp());
}

class TripMachaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'TripMacha AI',
      debugShowCheckedModeBanner: false,
      initialBinding: InitialBinding(),
      theme: ThemeData(
        primaryColor: AppColors.primary,
        scaffoldBackgroundColor: Colors.white,
      ),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => SplashScreen(), binding: SplashBinding()),

      ],
    );
  }
}
