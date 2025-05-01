import 'dart:async';
import 'package:flutter/animation.dart';
import 'package:get/get.dart';
import '../data/splash_repository.dart';

class SplashController extends GetxController with GetSingleTickerProviderStateMixin
{
  final repo = SplashRepository();
  late final AnimationController animation;

  @override
  void onInit()
  {
    super.onInit();
    animation=AnimationController(
        vsync:this,
        duration: Duration(seconds: 2),
    )..forward();
    repo.initializeApp().then((_){
      Timer(Duration(seconds: 2),(){
        Get.offNamed('/home');
      });
    });
  }
  @override
  void onClose() {
    animation.dispose();
    super.onClose();
  }
}