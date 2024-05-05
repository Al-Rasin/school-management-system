import 'package:get/get.dart';

import '../controllers/splash_sec_controller.dart';

class SplashSecBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashSecController>(
      () => SplashSecController(),
    );
  }
}
