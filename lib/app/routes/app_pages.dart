import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';
import '../modules/splash_fourth/bindings/splash_fourth_binding.dart';
import '../modules/splash_fourth/views/splash_fourth_view.dart';
import '../modules/splash_sec/bindings/splash_sec_binding.dart';
import '../modules/splash_sec/views/splash_sec_view.dart';
import '../modules/splash_third/bindings/splash_third_binding.dart';
import '../modules/splash_third/views/splash_third_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SEC,
      page: () => const SplashSecView(),
      binding: SplashSecBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_THIRD,
      page: () => const SplashThirdView(),
      binding: SplashThirdBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_FOURTH,
      page: () => const SplashFourthView(),
      binding: SplashFourthBinding(),
    ),
  ];
}
