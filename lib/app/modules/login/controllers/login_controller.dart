import 'package:fems/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  var obsecureText = true.obs;
  var checkBoxValue = true.obs;

  onChanged(bool value) {
    checkBoxValue.value = value;
  }

  void showPassword() {
    obsecureText.toggle();
  }

  @override
  void onClose() {
    usernameController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  void nevigateToBottomNavBar() {
    Get.offAllNamed(Routes.BOTTOM_NAV_BAR);
  }

  void nevigateToForgetPasswor() {
    Get.offAllNamed(Routes.FORGET);
  }
}
