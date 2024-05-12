import 'package:fems/app/utils/appcolors.dart';
import 'package:fems/app/utils/appsizes.dart';
import 'package:fems/app/utils/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.text,
    required this.onpressed,
  });

  final String text;
  final VoidCallback onpressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressed,
      child: Container(
        height: 50,
        width: Get.width,
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(
            AppSize.size30,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              text,
              style: AppTextStyles.primaryButtonText,
            ),
          ),
        ),
      ),
    );
  }
}
