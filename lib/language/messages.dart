import 'package:get/get.dart';
import 'local.dart';

class Messages extends Translations {

  @override
  Map<String, Map<String, String>> get keys => {
    'zh_CN': {
      Local.home: '主页',
      Local.mine: '我的',
      Local.languageSetting: '多语言设置',
      Local.followerSystemLanguage: '跟随系统语言',
      Local.simplifiedChinese: '简体中文',
      Local.themeSetting: '主题设置',
      Local.followerSystemTheme: '跟随系统主题',
      Local.lightMode: '浅色模式',
      Local.darkMode: '深色模式',
    },
    'en_US': {
      Local.home: 'Home',
      Local.mine: 'Mine',
      Local.languageSetting: 'Multilingual setup',
      Local.followerSystemLanguage: 'Follower system Language',
      Local.simplifiedChinese: 'Simplified Chinese',
      Local.themeSetting: 'Theme setting',
      Local.followerSystemTheme: 'Follow system theme',
      Local.lightMode: 'Light mode',
      Local.darkMode: 'Dark mode',
    },
  };

}