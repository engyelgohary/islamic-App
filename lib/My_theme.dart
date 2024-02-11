import 'package:flutter/material.dart';

class MyTheme {
  static Color blackColor = Color(0xff242424);
  static Color primaryColor = Color(0xffB7935F);
  static ThemeData lightmode = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: blackColor,
    ),
    textTheme: TextTheme(
        titleLarge: TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
    )),
  );
}
