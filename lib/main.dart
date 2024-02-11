import 'package:flutter/material.dart';
import 'package:islami/My_theme.dart';
import 'package:islami/homeScreen/hadeth/Hadeath_details_screen.dart';
import 'package:islami/homeScreen/homeScreen.dart';
import 'package:islami/homeScreen/quran/sura_details_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraDetials.routeName: (context) => SuraDetials(),
        HadeathDetials.routeName: (context) => HadeathDetials(),
      },
      theme: MyTheme.lightmode,
    );
  }
}


