import 'package:fems/app/modules/app_menu/views/app_menu_view.dart';
import 'package:fems/app/modules/calendar/views/calendar_view.dart';
import 'package:fems/app/modules/fees/views/fees_view.dart';
import 'package:fems/app/modules/home/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavBarController extends GetxController {
  List<Widget> pages = const <Widget>[
    HomeView(),
    CalendarView(),
    FeesView(),
    AppMenuView(),
  ];

  RxInt selectedIndex = 0.obs;

  Rx<Widget> get currentPage => pages[selectedIndex.value].obs;

  void onIconTap({required int index}) {
    selectedIndex.value = index;
  }
}
