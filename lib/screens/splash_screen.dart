import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tripmacha/controller/splash_controller.dart';
import '../components/logo_fade.dart';

class SplashScreen extends GetView<SplashController>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: LogoFade(),),
    );
  }
}