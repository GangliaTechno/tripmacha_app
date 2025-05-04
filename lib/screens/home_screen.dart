
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import 'package:tripmacha/controller/home_controller.dart';
import '../components/carousel_section.dart';
import '../components/recommendation_section.dart';
import '../components/bottom_nav_bar.dart';

class HomeScreen extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Obx(() {
        switch (controller.currentIndex.value) {
          case 1:
            return const Center(child: Text('Contact Us Page'));
          case 2:
            return const Center(child: Text('Plan Page'));
          default:
            return SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CarouselSection(),
                  const SizedBox(height: 24),
                  const Center(
                    child: Text(
                      'Recommendations',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(height: 12),
                  RecommendationsSection(),
                  const SizedBox(height: 12),
                  const Center(
                    child: Text(
                      'Recommendations',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(height: 12),
                  RecommendationsSection(),
                ],
              ),
            );
        }
      }),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
