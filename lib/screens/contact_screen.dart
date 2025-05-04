
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tripmacha/controller/contact_controller.dart';

class ContactScreen extends GetView<ContactController> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Register the ContactController so GetView can find it
    Get.put(ContactController());

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Obx(() => TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Name',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: controller.setName,
                  validator: (v) => v == null || v.isEmpty ? 'Enter your name' : null,
                )),
                const SizedBox(height: 16),
                Obx(() => TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  onChanged: controller.setEmail,
                  validator: (v) => v == null || !GetUtils.isEmail(v) ? 'Enter valid email' : null,
                )),
                const SizedBox(height: 16),
                Obx(() => TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Message',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.multiline,
                  minLines: 4,
                  maxLines: null,
                  onChanged: controller.setMessage,
                  validator: (v) => v == null || v.isEmpty ? 'Enter a message' : null,
                )),
                const SizedBox(height: 24),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      controller.submit();
                    }
                  },
                  child: const Text('Send Message'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
