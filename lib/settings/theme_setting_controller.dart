import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_language_theme/app_box.dart';
import 'package:study_language_theme/custom_theme.dart';

import '../language/local.dart';

class ThemeSettingsController extends GetxController {

  final currentThemeIndex = 0.obs;

  List<String> themeList = [
    Local.followerSystemTheme.tr,
    Local.lightMode.tr,
    Local.darkMode.tr,
  ];

  @override
  void onInit() {
    super.onInit();
    currentThemeIndex.value = AppBox.shared.theme;
  }

  ///切换主题
  void changeTheme(BuildContext context, int themeIndex) {
    ThemeData themeData;
    switch (themeIndex) {
      case 0: //跟隨系統
        themeData = MediaQuery.of(context).platformBrightness == Brightness.dark ? darkTheme : lightTheme;
        break;
      case 1: //浅色模式
        themeData = lightTheme;
        break;
      case 2: //深色模式
        themeData = darkTheme;
        break;
      default:
        themeData = MediaQuery.of(context).platformBrightness == Brightness.dark ? darkTheme : lightTheme;
        break;
    }
    //保存到本地
    AppBox.shared.theme = themeIndex;
    Get.changeTheme(themeData);
  }
}
