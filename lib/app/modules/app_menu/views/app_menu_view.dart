import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/app_menu_controller.dart';

class AppMenuView extends GetView<AppMenuController> {
  const AppMenuView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AppMenuView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'AppMenuView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
