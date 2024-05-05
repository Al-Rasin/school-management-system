import 'package:fems/app/routes/app_pages.dart';
import 'package:get/get.dart';

class SplashSecController extends GetxController {
  void navigateToSplashThird() {
    Get.offAllNamed(Routes.SPLASH_THIRD);
  }

  void navigateToHome() {
    Get.offAllNamed(Routes.HOME);
  }
}
