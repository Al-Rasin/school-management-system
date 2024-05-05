import 'package:fems/app/routes/app_pages.dart';
import 'package:get/get.dart';

class SplashThirdController extends GetxController {
  void navigateToSplashFourth() {
    Get.offAllNamed(Routes.SPLASH_FOURTH);
  }

  void navigateToHome() {
    Get.offAllNamed(Routes.HOME);
  }
}
