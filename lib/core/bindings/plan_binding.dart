import 'package:get/get.dart';
import 'package:tripmacha/controller/plan_controller.dart';

class PlanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PlanController>(() => PlanController());
  }
}