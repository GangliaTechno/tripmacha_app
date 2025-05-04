import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/constants/app_constants.dart';
import 'package:tripmacha/controller/home_controller.dart';

class BottomNavBar extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.bottom_nav_background, // off-white / light grey
        currentIndex: controller.currentIndex.value,
        onTap: controller.changeIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black54,
        selectedLabelStyle: TextStyle(
          fontWeight: FontWeight.w900, // bold when selected (hover/active)
        ),
        unselectedLabelStyle: TextStyle(
          fontWeight: FontWeight.w500,
        ),
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(AppAssets.homeIcon, width: 24),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(AppAssets.contactIcon, width: 24),
            label: 'Contact Us',
          ),

          BottomNavigationBarItem(
            icon: Image.asset(AppAssets.planIcon, width: 24),
            label: 'Plan',
          ),
        ],
      );
    });
  }
}
