// lib/features/home/presentation/components/carousel_section.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:tripmacha/controller/home_controller.dart' ;
import 'package:tripmacha/data/home_model.dart';

class CarouselSection extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return CarouselSlider(
        options: CarouselOptions(
          height: 200,
          autoPlay: true,
          enlargeCenterPage: true,
          viewportFraction: 0.8,
        ),
        items: controller.carouselItems.map((item) {
          return Column(
            children: [
              Expanded(
                child: Image.asset(
                  item.image,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
              const SizedBox(height: 8),
              //Text(item.title, style: const TextStyle(fontSize: 16)),
            ],
          );
        }).toList(),
      );
    });
  }
}
