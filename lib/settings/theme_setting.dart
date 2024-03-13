import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_language_theme/language/local.dart';

import 'theme_setting_controller.dart';

///主题设置页面
class ThemeSettingPage extends StatelessWidget {
  ThemeSettingPage({Key? key}) : super(key: key);

  final controller = Get.put(ThemeSettingsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          Local.themeSetting.tr,
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
                    controller.changeTheme(context,index);
                    Get.back(result: index);
                  },
                  child: Row(
                    children: [
                      Expanded(child: Text(controller.themeList[index])),
                      Visibility(
                          visible: controller.currentThemeIndex.value ==
                              index,
                          child: const Icon(Icons.check_rounded,
                              color: Colors.blue))
                    ],
                  ),
                ),
              ));
            },
            separatorBuilder: (context, index) {
              return const Divider();
            },
            itemCount: controller.themeList.length),
      ),
    );
  }
}
