import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ValidateEmail extends GetxController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  var email = '';


  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
  }

  String? validateEmailFunction(String value) {
    if (!GetUtils.isEmail(value)) {
      return 'Please enter a valid email adress';
    }
    return null;
  }

  void checkEmail() {
    final isValid = formKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    formKey.currentState!.save();
  }
}

class PhoneValidator extends GetxController {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late TextEditingController phoneNumberController;
  var number = '';
  @override
  void onInit() {
    super.onInit();
    phoneNumberController = TextEditingController();
  }


  @override
  void onClose() {
    super.onClose();
    phoneNumberController.dispose();
  }

  String? validatePhoneNumberFunction(String value) {
    if (!GetUtils.isPhoneNumber(value)) {
      return 'Please enter a valid phone number';
    }
    return null;
  }

  void checkFormKey() {
    final isValid = formKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    formKey.currentState!.save();
  }
}
