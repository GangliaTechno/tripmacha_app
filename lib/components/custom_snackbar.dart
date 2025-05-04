import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSnackbar {
  static void showSuccess({required String title, required String message}) {
    _showSnackbar(
      title: title,
      message: message,
      background: Colors.green,
      icon: Icons.check_circle,
    );
  }

  static void showError({required String title, required String message}) {
    _showSnackbar(
      title: title,
      message: message,
      background: Colors.red,
      icon: Icons.error,
    );
  }

  static void _showSnackbar({
    required String title,
    required String message,
    required Color background,
    required IconData icon,
  }) {
    Get.snackbar(
      title,
      message,
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: background.withOpacity(0.9),
      colorText: Colors.white,
      icon: Icon(icon, color: Colors.white),
      margin: const EdgeInsets.all(16),
      borderRadius: 8,
      duration: Duration(seconds: 3),
    );
  }
}
