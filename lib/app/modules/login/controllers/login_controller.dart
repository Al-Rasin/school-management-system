import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
 late TextEditingController usernameController;
  late TextEditingController passwordController;

  @override
  void onInit() {
    super.onInit();
    usernameController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void onClose() {
    // Dispose the controllers when the controller is closed
    usernameController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
