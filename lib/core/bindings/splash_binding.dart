import 'package:get/get.dart';
import 'package:tripmacha/controller/splash_controller.dart';

class SplashBinding extends Bindings
{
  @override
  void dependencies()
  {
      Get.lazyPut<SplashController>(()=>SplashController());
  }
}