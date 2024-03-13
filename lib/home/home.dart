import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_language_theme/language/local.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(Local.home.tr),
        ),
        body: Center(
          child: Text(Local.home.tr),
        ));
  }
}
