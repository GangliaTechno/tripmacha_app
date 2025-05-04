import 'package:get/get.dart';

import '../components/custom_snackbar.dart';

class ContactController extends GetxController {
  final name = ''.obs;
  final email = ''.obs;
  final message = ''.obs;
  final isValid = false.obs;

  void setName(String val) => name.value = val;
  void setEmail(String val) => email.value = val;
  void setMessage(String val) => message.value = val;

  bool validate() {
    isValid.value = name.value.isNotEmpty &&
        GetUtils.isEmail(email.value) &&
        message.value.isNotEmpty;
    return isValid.value;
  }

  void submit() {
    if (validate()) {
      CustomSnackbar.showSuccess(
        title: 'Message Sent',
        message: 'Thank you, ${name.value}! Your message has been sent.',
      );
      name.value = '';
      email.value = '';
      message.value = '';
    } else {
      CustomSnackbar.showError(
        title: 'Validation Error',
        message: 'Please fill all fields with valid data.',
      );
    }
  }
}