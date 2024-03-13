import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:study_language_theme/app_box.dart';

import '../language/local.dart';

class LanguageSettingsController extends GetxController {

  final currentLanguageIndex = 0.obs;

  List<String> languageList = [
    Local.followerSystemLanguage.tr,
    '简体中文',
    'English',
  ];

  @override
  void onInit() {
    super.onInit();
    currentLanguageIndex.value = AppBox.shared.language;
  }

  ///切换语言
  void changeLanguage(int languageIndex) {
    Locale? appLocale;
    switch (languageIndex) {
      case 0: //跟隨系統
        appLocale = Get.deviceLocale;
        break;
      case 1: //简体中文
        appLocale = const Locale('zh', 'CN');
        break;
      case 2: //English
        appLocale = const Locale('en', 'US');
        break;
      default:
        appLocale = Get.deviceLocale;
        break;
    }
    //保存到本地
    AppBox.shared.language = languageIndex;
    Get.updateLocale(appLocale!);
  }
}
