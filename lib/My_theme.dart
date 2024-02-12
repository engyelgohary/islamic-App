import 'package:flutter/material.dart';

class MyTheme {
  static Color primaryDark = Color(0xff141A2E);
  static Color blackColor = Color(0xff242424);
  static Color primaryColor = Color(0xffB7935F);
  static Color whiteColor = Color(0xffF8F8F8);
  static Color yellowColor = Color(0xffFACC1D);
  static ThemeData lightmode = ThemeData(
    primaryColor: primaryColor,
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
  static ThemeData darkmode = ThemeData(
    primaryColor: primaryDark,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: whiteColor,
        )),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: yellowColor,
    ),
    textTheme: TextTheme(
        titleLarge: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: whiteColor,
        ),
        titleMedium: TextStyle(
          color: whiteColor,
          fontSize: 25,
          fontWeight: FontWeight.w600,
        ),
        titleSmall: TextStyle(
            color: whiteColor, fontSize: 25, fontWeight: FontWeight.w400)),
  );
}
