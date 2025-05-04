import 'package:get/get.dart';
import '../data/home_repository.dart';
import '../data/home_model.dart';

class HomeController extends GetxController
{
  final repo=HomeRepository();
  var currentIndex = 0.obs;
  var carouselItems=<HomeModel>[].obs;
  var recommendation = <HomeModel>[].obs;

  @override
  void onInit()
  {
    super.onInit();
    carouselItems.value=repo.fetchCarouselItems();
    recommendation.value=repo.fetchRecommendations();
  }

  void changeIndex(int idx)=>currentIndex.value=idx;
}