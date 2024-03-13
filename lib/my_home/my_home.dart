import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_language_theme/language/local.dart';

import '../home/home.dart';
import '../mine/mine.dart';
import 'my_home_controller.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final controller = Get.put(MyHomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        switch (controller.currentIndex.value) {
          case 0:
            return const Home();
          case 1:
            return Mine();
          default:
            return const Home();
        }
      }),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
              currentIndex: controller.currentIndex.value,
              onTap: (index) => controller.changeIndex(index),
              items: [
                BottomNavigationBarItem(icon: const Icon(Icons.home), label: Local.home.tr),
                BottomNavigationBarItem(icon: const Icon(Icons.person), label: Local.mine.tr),
              ])),
    );
  }
}
