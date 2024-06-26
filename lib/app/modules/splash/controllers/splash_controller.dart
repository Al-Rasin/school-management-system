import 'package:fems/app/routes/app_pages.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    navigateToOtherScreen();
  }

  navigateToOtherScreen() async {
    Future.delayed(
      const Duration(seconds: 2),
      () async {
        await Get.offAllNamed(Routes.ON_BOARDING);
      },
    );
  }
}
