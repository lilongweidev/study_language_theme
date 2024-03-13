import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_language_theme/language/local.dart';
import 'package:study_language_theme/mine/mine_controller.dart';
import 'package:study_language_theme/settings/theme_setting.dart';

import '../settings/language_setting.dart';

class Mine extends StatelessWidget {
  Mine({super.key});

  final controller = Get.put(MineController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(Local.mine.tr),
        ),
        body: Container(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              padding: const EdgeInsets.all(16),
              child: Column(children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(Local.languageSetting.tr),
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(() => LanguageSettingPage())?.then((value) {
                          controller.getLanguage();
                        });
                      },
                      child: Row(
                        children: [
                          Obx(() => Text(controller.languageStr.value, style: const TextStyle(fontSize: 12),)),
                          const Icon(Icons.chevron_right)
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Expanded(
                      child: Text(Local.themeSetting.tr),
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(() => ThemeSettingPage())?.then((value) {
                          controller.getTheme();
                        });
                      },
                      child: Row(
                        children: [
                          Obx(() => Text(controller.themeStr.value, style: const TextStyle(fontSize: 12),),),
                          const Icon(Icons.chevron_right)
                        ],
                      ),
                    )
                  ],
                )
              ],),
            )));
  }
}
