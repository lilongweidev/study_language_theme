import 'package:get/get.dart';
import 'package:study_language_theme/app_box.dart';
import 'package:study_language_theme/language/local.dart';
import 'package:flutter/widgets.dart';

class MineController extends GetxController with WidgetsBindingObserver  {

  final languageStr = Local.followerSystemLanguage.tr.obs;
  final themeStr = Local.followerSystemTheme.tr.obs;

  @override
  void onInit() {
    super.onInit();
    WidgetsBinding.instance.addObserver(this);
    getLanguage();
    getTheme();
  }

  @override
  onClose() {
    super.onClose();
    WidgetsBinding.instance.removeObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    getLanguage();
  }

  @override
  void didChangePlatformBrightness() {
    super.didChangePlatformBrightness();
    getTheme();
  }

  //获取语言
  void getLanguage() {
    switch (AppBox.shared.language) {
      case 0:
        languageStr.value = Local.followerSystemLanguage.tr;
        break;
      case 1:
        languageStr.value = Local.simplifiedChinese.tr;
        break;
      case 2:
        languageStr.value = 'English';
        break;
      default:
        languageStr.value = Local.followerSystemLanguage.tr;
        break;
    }
  }


  //获取主题
  void getTheme() {
    switch (AppBox.shared.theme) {
      case 0:
        themeStr.value = Local.followerSystemTheme.tr;
        break;
      case 1:
        themeStr.value = Local.lightMode.tr;
        break;
      case 2:
        themeStr.value = Local.darkMode.tr;
        break;
      default:
        themeStr.value = Local.followerSystemTheme.tr;
        break;
    }
  }
}