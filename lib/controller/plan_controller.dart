import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tripmacha/components/custom_snackbar.dart';
import "package:intl/intl.dart";

class PlanController extends GetxController {
  final location = ''.obs;
  final radius = ''.obs;
  final date = DateTime.now().obs;
  final fromTime = TimeOfDay.now().obs;
  final toTime = TimeOfDay.now().obs;
  final hours = ''.obs;
  final minutes = ''.obs;

  void setLocation(String v) => location.value = v;
  void setRadius(String v) => radius.value = v;
  void setHours(String v) => hours.value = v;
  void setMinutes(String v) => minutes.value = v;

  Future<void> pickDate(BuildContext context) async {
    final picked = await showDatePicker(
      context: context,
      initialDate: date.value,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null) date.value = picked;
  }

  Future<void> pickFromTime(BuildContext context) async {
    final picked = await showTimePicker(
      context: context,
      initialTime: fromTime.value,
    );
    if (picked != null) fromTime.value = picked;
  }

  Future<void> pickToTime(BuildContext context) async {
    final picked = await showTimePicker(
      context: context,
      initialTime: toTime.value,
    );
    if (picked != null) toTime.value = picked;
  }

  void locateNow() {
    if (location.value.isEmpty || radius.value.isEmpty) {
      CustomSnackbar.showError(
        title: 'Error',
        message: 'Please enter location and radius',
      );
    } else {
      final fmtDate = DateFormat('yyyy-MM-dd').format(date.value);
      CustomSnackbar.showSuccess(
        title: 'Locating',
        message: 'Searching near ${location.value} within ${radius.value}km on $fmtDate',
      );
    }
  }
}