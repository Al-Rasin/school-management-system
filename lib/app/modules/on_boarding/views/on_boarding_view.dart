import 'package:fems/app/modules/on_boarding/controllers/on_boarding_controller.dart';
import 'package:fems/app/utils/appcolors.dart';
import 'package:fems/app/utils/appsizes.dart';
import 'package:fems/app/widgets/horizontal_bar.dart';
import 'package:fems/app/widgets/second_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardingView extends GetView<OnBoardingController> {
  const OnBoardingView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 23,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {
                  controller.navigateToLogin();
                },
                child: Text(
                  'Skip',
                  style: GoogleFonts.poppins(
                    fontSize: AppSize.size14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.textColor,
                  ),
                ),
              ),
              SizedBox(
                height: 360,
                width: 360,
                child: Obx(
                  () => Image.asset(
                    controller.onBoardingPages[controller.selectedIndex.value].image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: AppSize.size50),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    AppSize.size30,
                  ),
                  color: const Color.fromRGBO(237, 28, 36, 0.10),
                ),
                child: SizedBox(
                  height: 345,
                  width: 365,
                  child: Column(
                    children: [
                      const SizedBox(height: 40),
                      Obx(
                        () => Text(
                          controller.onBoardingPages[controller.selectedIndex.value].title,
                          style: GoogleFonts.poppins(
                            fontSize: AppSize.size20,
                            fontWeight: FontWeight.w600,
                            color: AppColors.textColor,
                          ),
                        ),
                      ),
                      const SizedBox(height: 29),
                      Obx(
                        () => Text(
                          controller.onBoardingPages[controller.selectedIndex.value].subTitle,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            fontSize: AppSize.size14,
                            fontWeight: FontWeight.w400,
                            color: AppColors.subTextColor,
                            wordSpacing: 5,
                            height: 1.5,
                          ),
                        ),
                      ),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          controller.onBoardingPages.length,
                          (index) => Obx(
                            () => HorizontalBar(
                              color: controller.selectedIndex.value == index ? AppColors.primary : AppColors.subTextColor,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      Obx(
                        () => SecondButton(
                          text: controller.selectedIndex.value == 2 ? 'Get Started' : 'Next',
                          color: AppColors.whiteText,
                          size: AppSize.size14,
                          fontWeight: FontWeight.w500,
                          onpressed: () {
                            controller.nextPage();
                          },
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
