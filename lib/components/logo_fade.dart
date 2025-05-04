import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../core/constants/app_constants.dart';
import '../core/widgets/fade_animation.dart';
import 'package:tripmacha/controller/splash_controller.dart';

class LogoFade extends GetView<SplashController>
{
  @override
  Widget build(BuildContext context) {
    return FadeAnimation(
      animation: controller.animation,
      child: Image.asset(AppAssets.logo,width: 250,height:250,),
    );
  }
}
