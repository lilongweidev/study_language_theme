import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_language_theme/language/local.dart';

import 'language_setting_controller.dart';

///语言设置页面
class LanguageSettingPage extends StatelessWidget {
  LanguageSettingPage({Key? key}) : super(key: key);

  final controller = Get.put(LanguageSettingsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            Local.languageSetting.tr,
          ),),
      body: Container(
        padding: const EdgeInsets.only(
          top: 10,
        ),
        child: ListView.separated(
            itemBuilder: (context, index) {
              return Obx(() => Container(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    height: 50,
                    child: InkWell(
                      onTap: () {
                        controller.changeLanguage(index);
                        Get.back(result: index);
                      },
                      child: Row(
                        children: [
                          Expanded(child: Text(controller.languageList[index])),
                          Visibility(
                              visible: controller.currentLanguageIndex.value ==
                                  index,
                              child: const Icon(Icons.check_rounded,
                                  color: Colors.blue))
                        ],
                      ),
                    ),
                  ));
            },
            separatorBuilder: (context, index) {
              return Divider();
            },
            itemCount: controller.languageList.length),
      ),
    );
  }
}
