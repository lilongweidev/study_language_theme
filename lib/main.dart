import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:study_language_theme/app_box.dart';
import 'custom_theme.dart';
import 'language/messages.dart';
import 'my_home/my_home.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox('appBox');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Locale? getLocale() {
    Locale? appLocale;
    switch (AppBox.shared.language) {
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
    return appLocale;
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      translations: Messages(),
      locale: getLocale(),
      fallbackLocale: Locale("zh", "CN"),
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: AppBox.shared.theme == 0
          ? MediaQuery.of(context).platformBrightness == Brightness.dark ? ThemeMode.dark : ThemeMode.light
          : AppBox.shared.theme == 1
              ? ThemeMode.light
              : ThemeMode.dark,
      home: MyHomePage(),
    );
  }
}
