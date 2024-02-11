import 'package:flutter/material.dart';

class MyTheme {
  static Color blackColor = Color(0xff242424);
  static Color primaryColor = Color(0xffB7935F);
  static Color whiteColor = Color(0xffF8F8F8);
  static ThemeData lightmode = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: blackColor,
        )),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: blackColor,
    ),
    textTheme: TextTheme(
        titleLarge: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
        titleMedium: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w600,
        ),
        titleSmall: TextStyle(
            color: blackColor, fontSize: 25, fontWeight: FontWeight.w400)),
  );
}
