
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tripmacha/controller/home_controller.dart';
import 'package:tripmacha/data/home_model.dart';

class RecommendationsSection extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return SizedBox(
        height: 150,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: controller.recommendation.length,
          separatorBuilder: (_, __) => const SizedBox(width: 16),
          itemBuilder: (context, index) {
            final item = controller.recommendation[index];
            return Container(
              width: 140,
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(item.image, width: 60, height: 60),
                  const SizedBox(height: 8),
                  //Text(item.title, textAlign: TextAlign.center),
                ],
              ),
            );
          },
        ),
      );
    });
  }
}
