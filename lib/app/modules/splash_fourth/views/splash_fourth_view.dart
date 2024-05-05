import 'package:fems/app/utils/appcolors.dart';
import 'package:fems/app/utils/appsizes.dart';
import 'package:fems/app/widgets/horizontal_bar.dart';
import 'package:fems/app/widgets/second_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/splash_fourth_controller.dart';

class SplashFourthView extends GetView<SplashFourthController> {
  const SplashFourthView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    controller.navigateToHome();
                  },
                  child: Text(
                    'Skip',
                    style: GoogleFonts.poppins(
                      fontSize: AppSize.size15,
                      fontWeight: FontWeight.w500,
                      color: AppColors.textColor,
                    ),
                  ),
                ),
                SizedBox(
                  height: 400,
                  width: 400,
                  child: SvgPicture.asset(
                    'assets/images/svg/youngman.svg',
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppSize.size50),
            Padding(
              padding: const EdgeInsets.only(
                left: AppSize.size24,
                right: AppSize.size24,
              ),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 29,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    AppSize.size30,
                  ),
                  color: const Color.fromRGBO(237, 28, 36, 0.10),
                ),
                child: Column(
                  children: [
                    Text(
                      'swift Operations',
                      style: GoogleFonts.poppins(
                        fontSize: AppSize.size20,
                        fontWeight: FontWeight.w600,
                        color: AppColors.textColor,
                      ),
                    ),
                    const SizedBox(height: AppSize.size30),
                    Text(
                      'Have Instant access to the school\ncalendar and upcoming events.',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: AppSize.size14,
                        fontWeight: FontWeight.w400,
                        color: AppColors.subTextColor,
                        wordSpacing: 5,
                        height: 1.5,
                      ),
                    ),
                    const SizedBox(height: 50),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        HorizontalBar(color: AppColors.subTextColor),
                        SizedBox(width: 5),
                        HorizontalBar(color: AppColors.subTextColor),
                        SizedBox(width: 5),
                        HorizontalBar(color: AppColors.primary),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: SecondButton(
                        text: 'Get Started',
                        color: AppColors.whiteText,
                        size: AppSize.size14,
                        fontWeight: FontWeight.w500,
                        onpressed: () {
                          controller.navigateToHome();
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}