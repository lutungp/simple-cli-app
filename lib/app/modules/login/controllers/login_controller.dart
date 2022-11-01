import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController phoneController = TextEditingController();
  var privacyAgreementCheck = false.obs;

  @override
  void onClose() {
    phoneController.dispose();
    super.onClose();
  }
}
