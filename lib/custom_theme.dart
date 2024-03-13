import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

///浅色模式
ThemeData lightTheme = ThemeData.light().copyWith(
  primaryColor: Colors.blue,
  splashColor: Colors.white12,
  appBarTheme: AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle.dark,
    elevation: 0,
    backgroundColor: ThemeData.light().scaffoldBackgroundColor,
    iconTheme: const IconThemeData(color: Colors.black),
  ),
  dividerColor: Colors.white38,
  scaffoldBackgroundColor: ThemeData.light().scaffoldBackgroundColor,
  backgroundColor: Colors.white,
  iconTheme: const IconThemeData(
    color: Colors.black,
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey
  ),
);

///深色模式
ThemeData darkTheme = ThemeData.dark().copyWith(
  appBarTheme: AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle.light,
    elevation: 0,
    backgroundColor: ThemeData.dark().scaffoldBackgroundColor,
    iconTheme: const IconThemeData(color: Colors.white),
  ),
  dividerColor: Colors.black38,
  scaffoldBackgroundColor: ThemeData.dark().scaffoldBackgroundColor,
  backgroundColor: Colors.black,
  iconTheme: const IconThemeData(
    color: Colors.white,
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white24
  ),
);
