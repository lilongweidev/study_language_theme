import 'package:hive_flutter/hive_flutter.dart';

class AppBox {
  static final AppBox shared = AppBox();

  // 声明盒子
  final _box = Hive.box('appBox');

  // 语言
  int get language => _box.get('language') ?? 0;

  set language(int value) => _box.put('language', value);

  // 主题
  int get theme => _box.get('theme') ?? 0;

  set theme(int value) => _box.put('theme', value);
}
