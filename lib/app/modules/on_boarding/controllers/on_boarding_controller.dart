import 'package:fems/app/models/on_boarding_model.dart';
import 'package:fems/app/routes/app_pages.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  var selectedIndex = 0.obs;

  void nextPage() {
    if (selectedIndex < onBoardingPages.length - 1) {
      selectedIndex++;
    } else {
      navigateToHome();
    }
  }

  void navigateToHome() {
    Get.offAllNamed(Routes.LOGIN);
  }

  List<OnBoardingModel> onBoardingPages = [
    OnBoardingModel(
      image: 'assets/images/png/cv_hiring.png',
      title: 'Enhance Your Journey',
      subTitle: 'Get a holistic view of your  performance\nand inspire yourself to reach even\ngreater heights.',
    ),
    OnBoardingModel(
      image: 'assets/images/png/businesswomen.png',
      title: 'Foster Parents Informed',
      subTitle: 'Be informed on your child’s 360-degree\nperformance effortlessly with the touch\nof your fingertips.',
    ),
    OnBoardingModel(
      image: 'assets/images/png/youngman.png',
      title: 'swift Operations',
      subTitle: 'Have Instant access to the school\ncalendar and upcoming events.',
    ),
  ];
}
