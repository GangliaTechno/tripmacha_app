import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import 'package:tripmacha/controller/plan_controller.dart';
import 'package:intl/intl.dart';

class PlanScreen extends GetView<PlanController> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // ensure controller is available
    Get.put(PlanController());

    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Obx(() => TextFormField(
                decoration: InputDecoration(
                  labelText: 'Location',
                  border: OutlineInputBorder(),
                ),
                onChanged: controller.setLocation,
                validator: (v) => v == null || v.isEmpty ? 'Enter location' : null,
              )),
              const SizedBox(height: 16),
              Obx(() => TextFormField(
                decoration: InputDecoration(
                  labelText: 'Radius (km)',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                onChanged: controller.setRadius,
                validator: (v) => v == null || v.isEmpty ? 'Enter radius' : null,
              )),
              const SizedBox(height: 16),
              Obx(() => InkWell(
                onTap: () => controller.pickDate(context),
                child: InputDecorator(
                  decoration: InputDecoration(
                    labelText: 'Date',
                    border: OutlineInputBorder(),
                  ),
                  child: Text(DateFormat('yyyy-MM-dd').format(controller.date.value)),
                ),
              )),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: Obx(() => InkWell(
                      onTap: () => controller.pickFromTime(context),
                      child: InputDecorator(
                        decoration: InputDecoration(
                          labelText: 'From',
                          border: OutlineInputBorder(),
                        ),
                        child: Text(controller.fromTime.value.format(context)),
                      ),
                    )),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Obx(() => InkWell(
                      onTap: () => controller.pickToTime(context),
                      child: InputDecorator(
                        decoration: InputDecoration(
                          labelText: 'To',
                          border: OutlineInputBorder(),
                        ),
                        child: Text(controller.toTime.value.format(context)),
                      ),
                    )),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: Obx(() => TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Duration (hrs)',
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.number,
                      onChanged: controller.setHours,
                      validator: (v) => v == null || v.isEmpty ? 'Enter hours' : null,
                    )),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Obx(() => TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Duration (mins)',
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.number,
                      onChanged: controller.setMinutes,
                      validator: (v) => v == null || v.isEmpty ? 'Enter minutes' : null,
                    )),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    controller.locateNow();
                  }
                },
                child: Text('Locate Now'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
