import 'package:get/get.dart';
import 'package:tripmacha/core/bindings/splash_binding.dart';


class InitialBinding extends Bindings {
  @override
  void dependencies() {
    SplashBinding().dependencies();
  }
}