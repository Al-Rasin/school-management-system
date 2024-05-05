import 'package:get/get.dart';

import '../controllers/splash_fourth_controller.dart';

class SplashFourthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashFourthController>(
      () => SplashFourthController(),
    );
  }
}
