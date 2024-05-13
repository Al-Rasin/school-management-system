import 'package:fems/app/modules/bottom_nav_bar/components/nav_bar_item.dart';
import 'package:fems/app/utils/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/bottom_nav_bar_controller.dart';

class BottomNavBarView extends GetView<BottomNavBarController> {
  const BottomNavBarView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: Stack(
          children: [
            Obx(() => controller.pages[controller.selectedIndex.value]),
            Positioned(
              bottom: 0,
              child: Container(
                decoration: const BoxDecoration(
                  color: AppColors.whiteText,
                ),
                height: 85,
                width: Get.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Obx(
                      () => NavBarItem(
                        onTap: () {
                          return controller.onIconTap(index: 0);
                        },
                        isSelected: controller.selectedIndex.value == 0,
                        selectedIcon: 'assets/images/svg/homeSelected.svg',
                        unselecteIcon: 'assets/images/svg/homeUnselected.svg',
                        text: 'Home',
                      ),
                    ),
                    Obx(
                      () => NavBarItem(
                        onTap: () {
                          return controller.onIconTap(index: 1);
                        },
                        isSelected: controller.selectedIndex.value == 1,
                        selectedIcon: 'assets/images/svg/calendarSelected.svg',
                        unselecteIcon: 'assets/images/svg/calendarUnselected.svg',
                        text: 'Calendar',
                      ),
                    ),
                    Obx(
                      () => NavBarItem(
                        onTap: () {
                          return controller.onIconTap(index: 2);
                        },
                        isSelected: controller.selectedIndex.value == 2,
                        selectedIcon: 'assets/images/svg/feesSelected.svg',
                        unselecteIcon: 'assets/images/svg/feesUnselected.svg',
                        text: 'Fees',
                      ),
                    ),
                    Obx(
                      () => NavBarItem(
                        onTap: () {
                          return controller.onIconTap(index: 3);
                        },
                        isSelected: controller.selectedIndex.value == 3,
                        selectedIcon: 'assets/images/svg/menuSelected.svg',
                        unselecteIcon: 'assets/images/svg/menuUnselected.svg',
                        text: 'Menu',
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
