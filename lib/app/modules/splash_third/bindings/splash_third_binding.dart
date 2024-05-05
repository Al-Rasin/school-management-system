import 'package:get/get.dart';

import '../controllers/splash_third_controller.dart';

class SplashThirdBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashThirdController>(
      () => SplashThirdController(),
    );
  }
}
